import React from 'react'
import { requireNativeComponent, processColor, HostComponent } from 'react-native'

interface IMDButton {
  title?: string,
  enable?: boolean,
  elevation?: number,
  textColor?: number,
  backgroundColor?: number,
  borderWidth?: number,
  borderColor?: number,
  borderRadius?: number
}

const MDButtonNative: HostComponent<IMDButton> = requireNativeComponent('MDButton')

const MDButton = (props: IMDButton) => {
  return <MDButtonNative
          {...props}
          textColor={props.textColor && processColor(props.textColor)}
          backgroundColor={props.backgroundColor && processColor(props.backgroundColor)}
          borderColor={props.borderColor && processColor(props.borderColor)}
        />
}
export default MDButton
