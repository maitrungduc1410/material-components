import React from 'react'
import {
  requireNativeComponent,
  processColor,
  HostComponent,
  Platform,
} from 'react-native'
import {
  IMDButtonProps,
} from './types'

/*
  TODO:
  - elevation on Android
  - textSize on iOS
*/

const MDButtonNative: HostComponent<IMDButtonProps> = requireNativeComponent('MDButton')
const MDTextButtonNative: HostComponent<IMDButtonProps> = requireNativeComponent('MDTextButton')
const MDOutlineButtonNative: HostComponent<IMDButtonProps> = requireNativeComponent('MDOutlineButton')

const MDButton = (props: IMDButtonProps) => {
  return (
    Platform.OS === 'ios' || (Platform.OS === 'android' && !props.type ) ? (
      AbstractButton(MDButtonNative, props)
    ) : (
      props.type === 'text' ? (
        AbstractButton(MDTextButtonNative, props)
      ) : (
        AbstractButton(MDOutlineButtonNative, props)
      )
    )
  )
}

function AbstractButton(Button: HostComponent<IMDButtonProps>, props: IMDButtonProps) {
  return <Button
          {...props}
          textColor={props.textColor && processColor(props.textColor)}
          backgroundColor={props.backgroundColor && processColor(props.backgroundColor)}
          borderColor={props.borderColor && processColor(props.borderColor)}
          rippleColor={props.rippleColor && processColor(props.rippleColor)}
        />
}

export {
  MDButton,
}
