package com.reactlibrary;

import android.content.res.ColorStateList;
import android.view.View;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.google.android.material.button.MaterialButton;

import java.util.Map;

public class MDButtonManager extends SimpleViewManager<MaterialButton> {
    private static final String DEFAULT_TEXT = "My button";

    @Override
    public String getName() {
        return "MDButton";
    }

    @Override
    protected MaterialButton createViewInstance(ThemedReactContext context) {
        final RCTEventEmitter emitter = context.getJSModule(RCTEventEmitter.class);
        MaterialButton button = new MaterialButton(context);
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

    public Map getExportedCustomBubblingEventTypeConstants() {
        return MapBuilder.builder()
                .put(
                        "onPress",
                        MapBuilder.of(
                                "phasedRegistrationNames",
                                MapBuilder.of("bubbled", "onPress")))
                .build();
    }

    @ReactProp(name = "title")
    public void setTitle(MaterialButton view, String title) {
        view.setText(title);
    }

    @ReactProp(name = "enabled")
    public void setEnabled(MaterialButton view, boolean enabled) {
        view.setEnabled(enabled);
    }

    @ReactProp(name = "elevation")
    public void setElevation(MaterialButton view, float elevation) {
        view.setElevation(elevation);
    }

    @ReactProp(name = "textColor")
    public void setTextColor(MaterialButton view, int color) {
        view.setTextColor(color);
    }

    @ReactProp(name = "backgroundColor")
    public void setBackgroundColor(MaterialButton view, int color) {
        view.setBackgroundColor(color);
    }

    @ReactProp(name = "borderWidth")
    public void setBorderWidth(MaterialButton view, int width) {
        view.setStrokeWidth(width);
    }

    @ReactProp(name = "borderColor")
    public void setBorderColor(MaterialButton view, int color) {
        view.setStrokeColor(ColorStateList.valueOf(color));
    }

    @ReactProp(name = "borderRadius")
    public void setBorderRadius(MaterialButton view, int radius) {
        view.setCornerRadius(radius);
    }
}