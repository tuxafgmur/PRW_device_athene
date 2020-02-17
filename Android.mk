#
# Copyright (C) 2016 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(filter athene, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 \
    adsp.b06 adsp.b07 adsp.b08 adsp.b09 adsp.b10 adsp.b11 \
    adsp.b12 adsp.b13 adsp.b14 adsp.b15 adsp.mbn adsp.mdt
	
ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ADSP_IMAGES)))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)

CMN_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)

FIRMWARE_FINGERPRINT_IMAGES := \
    fingerprint.b00 fingerprint.b01 fingerprint.b02 fingerprint.b03 fingerprint.mdt \
	fpctzappfingerprint.b00 fpctzappfingerprint.b01 fpctzappfingerprint.b02 fpctzappfingerprint.b03 fpctzappfingerprint.mdt

FIRMWARE_FINGERPRINT_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_FINGERPRINT_IMAGES)))
$(FIRMWARE_FINGERPRINT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Fingerprint Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_FINGERPRINT_SYMLINKS)

FIRMWARE_ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt

FIRMWARE_ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_ISDB_IMAGES)))
$(FIRMWARE_ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_ISDB_SYMLINKS)

FIRMWARE_KEYMASTER_IMAGES := \
    keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 keymaster.mdt

FIRMWARE_KEYMASTER_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/keymaster/,$(notdir $(FIRMWARE_KEYMASTER_IMAGES)))
$(FIRMWARE_KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_KEYMASTER_SYMLINKS)

FIRMWARE_MBA_IMAGES := \
    mba.mbn

FIRMWARE_MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MBA_IMAGES)))
$(FIRMWARE_MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MBA_SYMLINKS)

FIRMWARE_MDTP_IMAGES := \
    mdtp.b00 mdtp.b01 mdtp.b02 mdtp.b03 mdtp.mdt

FIRMWARE_MDTP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MDTP_IMAGES)))
$(FIRMWARE_MDTP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDTP Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MDTP_SYMLINKS)

FIRMWARE_MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b04 modem.b05 modem.b06 \
    modem.b07 modem.b08 modem.b09 modem.b10 modem.b11 modem.b12 \
    modem.b13 modem.b16 modem.b17 modem.b18 modem.b19 modem.b20 \
    modem.mdt

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

PROV_IMAGES := \
    prov.b00 prov.b01 prov.b02 prov.b03 prov.mdt

PROV_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(PROV_IMAGES)))
$(PROV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Playready firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PROV_SYMLINKS)

QDSP_IMAGES := \
    qdsp6m.qdb

QDSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(QDSP_IMAGES)))
$(QDSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Playready firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QDSP_SYMLINKS)

FIRMWARE_WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 \
    wcnss.b06 wcnss.b09 wcnss.b10 wcnss.b11 \
    wcnss.b12 wcnss.mdt

FIRMWARE_WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_WCNSS_IMAGES)))
$(FIRMWARE_WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WCNSS_SYMLINKS)

FIRMWARE_WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

FIRMWARE_WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FIRMWARE_WIDEVINE_IMAGES)))
$(FIRMWARE_WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_WIDEVINE_SYMLINKS)

FIRMWARE_VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mbn venus.mdt

FIRMWARE_VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/etc/firmware/,$(notdir $(FIRMWARE_VENUS_IMAGES)))
$(FIRMWARE_VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/vendor/firmware/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_VENUS_SYMLINKS)

PARTITIONS_TO_LINK := dsp fsg

VENDOR_SUBPARTS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/, $(notdir $(PARTITIONS_TO_LINK)))
$(VENDOR_SUBPARTS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Vendor linked partition: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /$(notdir $@) $@

FIRMWARE_SYMLINK := $(TARGET_OUT_VENDOR)/firmware_mnt
$(FIRMWARE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Vendor linked partition: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENDOR_SUBPARTS_SYMLINKS) $(FIRMWARE_SYMLINK)

#########################################################################
# Create Folder Structure
#########################################################################

$(shell rm -rf $(TARGET_OUT_VENDOR)/rfs/)

#To be enabled when prepopulation support is needed for the read_write folder
# $(shell rm -rf  $(TARGET_OUT_DATA)/rfs/)
# $(shell mkdir -p $(TARGET_OUT_DATA)/rfs/msm/mpss/)
# $(shell mkdir -p $(TARGET_OUT_DATA)/rfs/msm/adsp/)
# $(shell mkdir -p $(TARGET_OUT_DATA)/rfs/mdm/mpss/)
# $(shell mkdir -p $(TARGET_OUT_DATA)/rfs/mdm/adsp/)

#########################################################################
# MSM Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readonly/vendor)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly/vendor)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/msm/slpi/readonly)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/adsp/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/lpass $(TARGET_OUT_VENDOR)/rfs/msm/adsp/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readonly/firmware)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readonly/vendor/firmware)
$(shell ln -s /persist/rfs/msm/adsp $(TARGET_OUT_VENDOR)/rfs/msm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/adsp/shared)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/mpss/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/modem $(TARGET_OUT_VENDOR)/rfs/msm/mpss/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly/firmware)
$(shell ln -s /fsg $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly/fsg)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readonly/vendor/firmware)
$(shell ln -s /persist/rfs/msm/mpss $(TARGET_OUT_VENDOR)/rfs/msm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/mpss/shared)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/slpi/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/slpi $(TARGET_OUT_VENDOR)/rfs/msm/slpi/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/msm/slpi/readonly/firmware)
$(shell ln -s /persist/rfs/msm/slpi $(TARGET_OUT_VENDOR)/rfs/msm/slpi/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/msm/slpi/shared)

#########################################################################
# MDM Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readonly/vendor)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readonly/vendor)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/readonly/vendor)
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/mdm/tn/readonly/vendor)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/lpass $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readonly/firmware)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readonly/vendor/firmware)
$(shell ln -s /persist/rfs/mdm/adsp $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/adsp/shared)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/modem $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readonly/firmware)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readonly/vendor/firmware)
$(shell ln -s /persist/rfs/mdm/mpss $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/mpss/shared)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/slpi $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/readonly/firmware)
$(shell ln -s /persist/rfs/mdm/slpi $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/slpi/shared)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/tn/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/tn $(TARGET_OUT_VENDOR)/rfs/mdm/tn/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/mdm/tn/readonly/firmware)
$(shell ln -s /persist/rfs/mdm/tn $(TARGET_OUT_VENDOR)/rfs/mdm/tn/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/mdm/tn/shared)

#########################################################################
# APQ Folders
#########################################################################
$(shell mkdir -p $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readonly/vendor)

$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT_VENDOR)/rfs/apq/gnss/hlos)
$(shell ln -s /data/vendor/tombstones/rfs/modem $(TARGET_OUT_VENDOR)/rfs/apq/gnss/ramdumps)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readonly/firmware)
$(shell ln -s /firmware $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readonly/vendor/firmware)
$(shell ln -s /persist/rfs/apq/gnss $(TARGET_OUT_VENDOR)/rfs/apq/gnss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT_VENDOR)/rfs/apq/gnss/shared)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
