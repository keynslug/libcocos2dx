#
# Cocos2dx prebuilt static C++ library
#

__WAS_PATH := $(LOCAL_PATH)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_prebuilt_shared
LOCAL_SRC_FILES := ../libs/$(TARGET_ARCH_ABI)/libcocos2dx.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.. $(LOCAL_PATH)/../include $(LOCAL_PATH)/../platform
LOCAL_EXPORT_LDLIBS := -llog -lz -lGLESv1_CM

include $(PREBUILT_SHARED_LIBRARY)

LOCAL_PATH := $(__WAS_PATH)
