# Our versioning system

ifndef FLOKO_BUILD_TYPE
    FLOKO_BUILD_TYPE := UNOFFICIAL
endif

FLOKO_VERSION := 5.0
CR_VERSION := $(FLOKO_VERSION)


LINEAGE_VERSION := Floko-v$(FLOKO_VERSION)-$(LINEAGE_BUILD)-$(shell date -u +%Y%m%d)-$(FLOKO_BUILD_TYPE)
LINEAGE_DISPLAY_VERSION := Floko-v$(FLOKO_VERSION)-$(LINEAGE_BUILD)

# Additional props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.com.google.ime.theme_id=5 \
    ro.opa.eligible_device=true \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.setupwizard.mode=OPTIONAL \
    setupwizard.feature.predeferred_enabled=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    keyguard.no_require_sim=true \
    persist.sys.disable_rescue=true

# Enable IORap I/O Prefetching
PRODUCT_SYSTEM_PROPERTIES += \
    persist.device_config.runtime_native_boot.iorap_perfetto_enable=true

# Blur
ifneq ($(TARGET_DISABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Extra packages
PRODUCT_PACKAGES += \
    MatLog
