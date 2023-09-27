LOCAL_PATH := $(call my-dir)

ifneq ($(BOARD_USES_QCOM_HARDWARE),true)
include $(call first-makefiles-under,$(LOCAL_PATH))
endif
