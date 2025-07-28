#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_log.cpp
LOCAL_MODULE := libshim_log
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    gui/ISensorServer.cpp \
    gui/SensorManager.cpp
LOCAL_SHARED_LIBRARIES := libbase libbinder libsensor libcutils libhardware libhidlbase libsync libui libnativeloader libgui libutils liblog
LOCAL_MODULE := libshim_gui
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_memtrack.cpp
LOCAL_SHARED_LIBRARIES := libhardware liblog
LOCAL_MODULE := libshim_memtrack
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_fence.cpp
LOCAL_MODULE := libshim_fence
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_camera_metadata.cpp
LOCAL_SHARED_LIBRARIES := libcamera_client
LOCAL_MODULE := libshim_camera_metadata
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    ui/GraphicBufferAllocator.cpp \
    ui/GraphicBuffer.cpp \
    ui/GraphicBufferMapper.cpp
LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware libui libutils libsync
LOCAL_MODULE := libshim_ui
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_exif.cpp
LOCAL_SHARED_LIBRARIES := libexif
LOCAL_MODULE := libshim_exif
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libshim_camera_algo.cpp
LOCAL_SHARED_LIBRARIES := libgui libsensor
LOCAL_MODULE := libshim_camera_algo
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
