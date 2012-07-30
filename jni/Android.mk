#
# Cocos2dx static and shared libraries
#

PWD_PATH := $(call my-dir)

include platform/third_party/android/prebuilt/libjpeg/Android.mk
include platform/third_party/android/prebuilt/libpng/Android.mk
include platform/third_party/android/prebuilt/libxml2/Android.mk

LOCAL_PATH := $(PWD_PATH)

## Static Library

COCOS2DX_SRC_ROOT := ..

COCOS2DX_C_INCLUDES := $(LOCAL_PATH)/.. \
    $(LOCAL_PATH)/../include \
    $(LOCAL_PATH)/../platform

COCOS2DX_LDLIBS := -llog -lz -lGLESv1_CM

COCOS2DX_SRC_FILES := \
    $(COCOS2DX_SRC_ROOT)/CCConfiguration.cpp \
    $(COCOS2DX_SRC_ROOT)/CCDrawingPrimitives.cpp \
    $(COCOS2DX_SRC_ROOT)/CCScheduler.cpp \
    $(COCOS2DX_SRC_ROOT)/CCCamera.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCAction.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionCamera.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionEase.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionGrid.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionGrid3D.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionInstant.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionInterval.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionManager.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionPageTurn3D.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionProgressTimer.cpp \
    $(COCOS2DX_SRC_ROOT)/actions/CCActionTiledGrid.cpp \
    $(COCOS2DX_SRC_ROOT)/base_nodes/CCAtlasNode.cpp \
    $(COCOS2DX_SRC_ROOT)/base_nodes/CCNode.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCAffineTransform.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCGeometry.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCAutoreleasePool.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCData.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCNS.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCObject.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCSet.cpp \
    $(COCOS2DX_SRC_ROOT)/cocoa/CCZone.cpp \
    $(COCOS2DX_SRC_ROOT)/cocos2d.cpp \
    $(COCOS2DX_SRC_ROOT)/CCDirector.cpp \
    $(COCOS2DX_SRC_ROOT)/effects/CCGrabber.cpp \
    $(COCOS2DX_SRC_ROOT)/effects/CCGrid.cpp \
    $(COCOS2DX_SRC_ROOT)/extensions/CCNotificationCenter.cpp \
    $(COCOS2DX_SRC_ROOT)/keypad_dispatcher/CCKeypadDelegate.cpp \
    $(COCOS2DX_SRC_ROOT)/keypad_dispatcher/CCKeypadDispatcher.cpp \
    $(COCOS2DX_SRC_ROOT)/label_nodes/CCLabelAtlas.cpp \
    $(COCOS2DX_SRC_ROOT)/label_nodes/CCLabelBMFont.cpp \
    $(COCOS2DX_SRC_ROOT)/label_nodes/CCLabelTTF.cpp \
    $(COCOS2DX_SRC_ROOT)/layers_scenes_transitions_nodes/CCLayer.cpp \
    $(COCOS2DX_SRC_ROOT)/layers_scenes_transitions_nodes/CCScene.cpp \
    $(COCOS2DX_SRC_ROOT)/layers_scenes_transitions_nodes/CCTransitionPageTurn.cpp \
    $(COCOS2DX_SRC_ROOT)/layers_scenes_transitions_nodes/CCTransitionRadial.cpp \
    $(COCOS2DX_SRC_ROOT)/layers_scenes_transitions_nodes/CCTransition.cpp \
    $(COCOS2DX_SRC_ROOT)/menu_nodes/CCMenu.cpp \
    $(COCOS2DX_SRC_ROOT)/menu_nodes/CCMenuItem.cpp \
    $(COCOS2DX_SRC_ROOT)/misc_nodes/CCMotionStreak.cpp \
    $(COCOS2DX_SRC_ROOT)/misc_nodes/CCProgressTimer.cpp \
    $(COCOS2DX_SRC_ROOT)/misc_nodes/CCRenderTexture.cpp \
    $(COCOS2DX_SRC_ROOT)/misc_nodes/CCRibbon.cpp \
    $(COCOS2DX_SRC_ROOT)/particle_nodes/CCParticleExamples.cpp \
    $(COCOS2DX_SRC_ROOT)/particle_nodes/CCParticleSystem.cpp \
    $(COCOS2DX_SRC_ROOT)/particle_nodes/CCParticleSystemPoint.cpp \
    $(COCOS2DX_SRC_ROOT)/particle_nodes/CCParticleSystemQuad.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCFileUtils.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCGL.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCImage.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCStdC.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCSAXParser.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCThread.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/CCCommon.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/platform.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/CCEGLView_android.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/CCAccelerometer_android.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/CCApplication_android.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/JniHelper.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/IMEJni.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/MessageJni.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/SensorJni.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/SystemInfoJni.cpp \
    $(COCOS2DX_SRC_ROOT)/platform/android/jni/TouchesJni.cpp \
    $(COCOS2DX_SRC_ROOT)/script_support/CCScriptSupport.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCAnimation.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCAnimationCache.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCSprite.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCSpriteBatchNode.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCSpriteFrame.cpp \
    $(COCOS2DX_SRC_ROOT)/sprite_nodes/CCSpriteFrameCache.cpp \
    $(COCOS2DX_SRC_ROOT)/support/CCArray.cpp \
    $(COCOS2DX_SRC_ROOT)/support/CCProfiling.cpp \
    $(COCOS2DX_SRC_ROOT)/support/CCPointExtension.cpp \
    $(COCOS2DX_SRC_ROOT)/support/TransformUtils.cpp \
    $(COCOS2DX_SRC_ROOT)/support/CCUserDefault.cpp \
    $(COCOS2DX_SRC_ROOT)/support/base64.cpp \
    $(COCOS2DX_SRC_ROOT)/support/ccUtils.cpp \
    $(COCOS2DX_SRC_ROOT)/support/image_support/TGAlib.cpp \
    $(COCOS2DX_SRC_ROOT)/support/zip_support/ZipUtils.cpp \
    $(COCOS2DX_SRC_ROOT)/support/zip_support/ioapi.cpp \
    $(COCOS2DX_SRC_ROOT)/support/zip_support/unzip.cpp \
    $(COCOS2DX_SRC_ROOT)/text_input_node/CCIMEDispatcher.cpp \
    $(COCOS2DX_SRC_ROOT)/text_input_node/CCTextFieldTTF.cpp \
    $(COCOS2DX_SRC_ROOT)/textures/CCTexture2D.cpp \
    $(COCOS2DX_SRC_ROOT)/textures/CCTextureAtlas.cpp \
    $(COCOS2DX_SRC_ROOT)/textures/CCTextureCache.cpp \
    $(COCOS2DX_SRC_ROOT)/textures/CCTexturePVR.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCParallaxNode.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCTMXLayer.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCTMXObjectGroup.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCTMXTiledMap.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCTMXXMLParser.cpp \
    $(COCOS2DX_SRC_ROOT)/tileMap_parallax_nodes/CCTileMapAtlas.cpp \
    $(COCOS2DX_SRC_ROOT)/touch_dispatcher/CCTouchDispatcher.cpp \
    $(COCOS2DX_SRC_ROOT)/touch_dispatcher/CCTouchHandler.cpp 

# Static library

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_static

LOCAL_MODULE_FILENAME := libcocos2dx
LOCAL_SRC_FILES := $(COCOS2DX_SRC_FILES)
LOCAL_EXPORT_C_INCLUDES := $(COCOS2DX_C_INCLUDES)
LOCAL_EXPORT_LDLIBS := $(COCOS2DX_LDLIBS)
LOCAL_C_INCLUDES := $(COCOS2DX_C_INCLUDES)
LOCAL_LDLIBS := $(COCOS2DX_LDLIBS)

LOCAL_WHOLE_STATIC_LIBRARIES := \
    cocos_libpng_static \
    cocos_jpeg_static \
    cocos_libxml2_static

# define the macro to compile through support/zip_support/ioapi.c                

LOCAL_CFLAGS := -DUSE_FILE32API

include $(BUILD_STATIC_LIBRARY)

## Shared Library

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dx_shared

LOCAL_MODULE_FILENAME := libcocos2dx
LOCAL_SRC_FILES := $(COCOS2DX_SRC_FILES)
LOCAL_EXPORT_C_INCLUDES := $(COCOS2DX_C_INCLUDES)
LOCAL_EXPORT_LDLIBS := $(COCOS2DX_LDLIBS)
LOCAL_C_INCLUDES := $(COCOS2DX_C_INCLUDES)
LOCAL_LDLIBS := $(COCOS2DX_LDLIBS)

LOCAL_WHOLE_STATIC_LIBRARIES := \
    cocos_libpng_static \
    cocos_jpeg_static \
    cocos_libxml2_static

# define the macro to compile through support/zip_support/ioapi.c                

LOCAL_CFLAGS := -DUSE_FILE32API

include $(BUILD_SHARED_LIBRARY)
