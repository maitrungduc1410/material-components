import React, { Component, useRef } from 'react';
import { Platform, StyleSheet, Text, View, SafeAreaView, processColor, requireNativeComponent } from 'react-native';
// import { MDButton } from 'react-native-material-design';
import { MDButton } from './lib'

const App = (props) => {
  onBtnClick = (event) => {
    console.log(event.nativeEvent)
  }

  const ref1 = useRef()
  const ref2 = useRef()
  return (
    <SafeAreaView>
      <Text>Hello world</Text>
      <MDButton
        style={{ width: 300, height: 50 }}
        title={"My Button Text1"}
        onPress={onBtnClick}
        textColor={'red'}
        rippleColor={'blue'}
        type={'text'}
      />

      <MDButton
        style={{ width: 300, height: 50, margin: 30 }}
        title={"My Button Text1"}
        onPress={onBtnClick}
        textColor={'whtie'}
        // backgroundColor={'green'}
        rippleColor={'blue'}
        type={'outline'}
      />

      <MDButton
        style={{ width: 300, height: 50, margin: 30 }}
        title={"My Button Text1"}
        onPress={onBtnClick}
        textColor={'whtie'}
        // backgroundColor={'green'}
        rippleColor={'blue'}
      />
    </SafeAreaView>
  )
}

export default App

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
