#
# Cocos2dx prebuilt static C++ library
#

__WAS_PATH := $(LOCAL_PATH)

PWD_PATH := $(call my-dir)

include $(PWD_PATH)/../platform/third_party/android/prebuilt/libjpeg/Android.mk
include $(PWD_PATH)/../platform/third_party/android/prebuilt/libpng/Android.mk
include $(PWD_PATH)/../platform/third_party/android/prebuilt/libxml2/Android.mk

LOCAL_PATH := $(PWD_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_prebuilt_static
LOCAL_SRC_FILES := ../obj/local/$(TARGET_ARCH_ABI)/libcocos2dx.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.. $(LOCAL_PATH)/../include $(LOCAL_PATH)/../platform
LOCAL_EXPORT_LDLIBS := -llog -lz -lGLESv1_CM

LOCAL_WHOLE_STATIC_LIBRARIES := \
    cocos_libpng_static \
    cocos_jpeg_static \
    cocos_libxml2_static

include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(__WAS_PATH)
