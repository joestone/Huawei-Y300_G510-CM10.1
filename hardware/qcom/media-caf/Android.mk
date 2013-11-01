ifeq ($(TARGET_QCOM_MEDIA_VARIANT),caf)
media_files := mm-core libstagefrighthw 

ifneq ($(filter msm8960 msm8660 msm7x30,$(TARGET_BOARD_PLATFORM)),)
media_files += mm-video
endif

include $(call all-named-subdir-makefiles,$(media_files)) 

endif
