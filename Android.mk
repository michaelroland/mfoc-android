##
## Copyright (C) 2016  Michael Roland <mi.roland@gmail.com>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
##

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
