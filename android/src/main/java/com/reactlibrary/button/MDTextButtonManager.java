package com.reactlibrary.button;

import android.view.View;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.google.android.material.button.MaterialButton;
import com.reactlibrary.R;

public class MDTextButtonManager extends MDButton {
    @Override
    public String getName() {
        return "MDTextButton";
    }

    @Override
    protected MaterialButton createViewInstance(ThemedReactContext context) {
        final RCTEventEmitter emitter = context.getJSModule(RCTEventEmitter.class);
        MaterialButton button = new MaterialButton(context, null, R.style.Widget_MaterialComponents_Button_TextButton);
        button.setText(DEFAULT_TEXT);
        button.setOnClickListener((new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                WritableMap event = Arguments.createMap();
                emitter.receiveEvent(v.getId(), "onPress", event);
            }
        }));

        return button;
    }
}