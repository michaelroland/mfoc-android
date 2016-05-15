LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := mfoc

LOCAL_SRC_FILES := \
    src/crapto1.c \
	src/crypto1.c \
	src/mifare.c \
	src/nfc-utils.c \
	src/slre.c \
	src/mfoc.c

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/src \
    $(LIBNFC_ROOT)/include

LOCAL_CFLAGS := -O2 -g -std=gnu99 \
    -DHAVE_CONFIG_H

LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_SHARED_LIBRARIES += libnfc

include $(BUILD_EXECUTABLE)
