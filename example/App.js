import React, { Component } from 'react';
import { Platform, StyleSheet, Text, View, SafeAreaView, processColor, requireNativeComponent } from 'react-native';
// import { MDButton } from 'react-native-material-design';
import { MDButton } from './lib'

export default class App extends Component<{}> {
  componentDidMount() {
  }

  onBtnClick = (event) => {
    console.log(event.nativeEvent)
  }

  render() {
    return (
      <SafeAreaView>
        <Text>Hello world</Text>
        <MDButton
          style={{ width: 300, height: 50 }}
          title={"My Button Text1"}
          // onPress={this.onBtnClick}
          // textColor={'white'}
          // backgroundColor={'black'}
          rippleColor={'gray'}
          // textSize={10}
          // type={'outline'}
        />
      </SafeAreaView>
    )
  }
}

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
