# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))




###############################
##       Trash Patch         ##


#include $(CLEAR_VARS)

#LOCAL_PACKAGE_NAME := SyncClient
#LOCAL_CERTIFICATE := platform

#LOCAL_SRC_FILES := $(call all-java-files-under, src)


#LOCAL_STATIC_JAVA_LIBRARIES := common syncml client pim
##LOCAL_STATIC_JAVA_LIBRARIES := hirr4

#include $(BUILD_PACKAGE)


#include $(CLEAR_VARS)  


#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := hirr7:*.jar 
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := common:libs/funambol-android-common.jar syncml:libs/funambol-android-syncml.jar client:libs/funambol-se-client.jar pim:libs/funambol-se-pim.jar

#include $(BUILD_MULTI_PREBUILT)

###############################
