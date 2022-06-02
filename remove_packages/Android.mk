LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    Chrome \
    Chrome-Stub \
    Drive \
    GoogleCamera \
    GoogleContacts \
    GoogleTTS \
    Maps \
    Music \
    MusicFX \
    Photos \
    PixelLiveWallpaperPrebuilt \
    PrebuiltBugle \
    PrebuiltDeskClockGoogle \
    PrebuiltGmail \
    RecorderPrebuilt \
    talkback \
    YouTube \
    YouTubeMusicPrebuilt

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
