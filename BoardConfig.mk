HW_MITHORIUM_AOSP_PATH := hardware/mithorium/aosp

include $(HW_MITHORIUM_AOSP_PATH)/utils.mk
include $(HW_MITHORIUM_AOSP_PATH)/pathmap.mk

include $(HW_MITHORIUM_AOSP_PATH)/qcom_boards.mk
include $(HW_MITHORIUM_AOSP_PATH)/qcom_target.mk

include $(HW_MITHORIUM_AOSP_PATH)/BoardConfigQcom.mk

# Soong config
SOONG_CONFIG_NAMESPACES += lineageGlobalVars lineageQcomVars
SOONG_CONFIG_lineageGlobalVars := \
    gralloc_handle_has_custom_content_md_reserved_size \
    gralloc_handle_has_reserved_size
SOONG_CONFIG_lineageQcomVars += \
    qti_vibrator_effect_lib \
    qti_vibrator_use_effect_stream

# Set default values
TARGET_QTI_VIBRATOR_EFFECT_LIB ?= libqtivibratoreffect

# Soong bool variables
SOONG_CONFIG_lineageGlobalVars_gralloc_handle_has_custom_content_md_reserved_size := $(TARGET_GRALLOC_HANDLE_HAS_CUSTOM_CONTENT_MD_RESERVED_SIZE)
SOONG_CONFIG_lineageGlobalVars_gralloc_handle_has_reserved_size := $(TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE)
SOONG_CONFIG_lineageQcomVars_qti_vibrator_use_effect_stream := $(TARGET_QTI_VIBRATOR_USE_EFFECT_STREAM)

# Soong value variables
SOONG_CONFIG_lineageQcomVars_qti_vibrator_effect_lib := $(TARGET_QTI_VIBRATOR_EFFECT_LIB)
