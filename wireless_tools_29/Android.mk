LOCAL_PATH:= $(call my-dir)
INCLUDES = $(LOCAL_PATH)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= iwlib.c
LOCAL_MODULE:= libiwlib
LOCAL_MODULE_TAGS := debug
include $(BUILD_STATIC_LIBRARY)  

include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwpriv.c  
LOCAL_STATIC_LIBRARIES := libiwlib  
LOCAL_MODULE := iwpriv  
include $(BUILD_EXECUTABLE)  

include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwlist.c  
LOCAL_STATIC_LIBRARIES := libiwlib  
#LOCAL_SHARED_LIBRARIES := libiwlib  
LOCAL_C_INCLUDES := $(INCLUDES)
LOCAL_MODULE := iwlist  
include $(BUILD_EXECUTABLE)  

include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwconfig.c  
LOCAL_STATIC_LIBRARIES := libiwlib  
#LOCAL_SHARED_LIBRARIES := libiwlib  
LOCAL_MODULE := iwconfig  
include $(BUILD_EXECUTABLE)  

include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwspy.c  
      
LOCAL_STATIC_LIBRARIES := libiwlib  
#LOCAL_SHARED_LIBRARIES := libiwlib  
LOCAL_MODULE := iwspy  
include $(BUILD_EXECUTABLE)  
    #================================================  
      
    #================================================  
include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwgetid.c  
      
LOCAL_STATIC_LIBRARIES := libiwlib  
#LOCAL_SHARED_LIBRARIES := libiwlib  
LOCAL_MODULE := iwgetid  
include $(BUILD_EXECUTABLE)  
    #================================================  
      
    #================================================  
include $(CLEAR_VARS)  
LOCAL_MODULE_TAGS := debug
LOCAL_SRC_FILES := iwevent.c  
      
LOCAL_STATIC_LIBRARIES := libiwlib  
#LOCAL_SHARED_LIBRARIES := libiwlib  
LOCAL_MODULE := iwevent  
include $(BUILD_EXECUTABLE)  
    #================================================  
      
