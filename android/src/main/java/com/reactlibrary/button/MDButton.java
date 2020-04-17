package com.reactlibrary.button;

import android.content.res.ColorStateList;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.uimanager.SimpleViewManager;
import com.google.android.material.button.MaterialButton;

import java.util.Map;

public abstract class MDButton extends SimpleViewManager<MaterialButton> {
    protected final String DEFAULT_TEXT = "My button";

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

    @ReactProp(name = "textSize")
    public void setTextSize(MaterialButton view, float size) {
        view.setTextSize(size);
    }

    @ReactProp(name = "rippleColor")
    public void setRippleColor(MaterialButton view, int color) {
        view.setRippleColor(ColorStateList.valueOf(color));
    }
}