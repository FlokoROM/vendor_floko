# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=$(shell date +"%s")

AICP_BRANCH=p

# RELEASE VERSION
AICP_VERSION_MAJOR = 9
AICP_VERSION_MINOR = 0
AICP_VERSION_MAINTENANCE = 0

PRODUCT_VERSION_MAJOR := $(AICP_VERSION_MAJOR)
PRODUCT_VERSION_MINOR := $(AICP_VERSION_MINOR)
PRODUCT_VERSION_MAINTENANCE := $(AICP_VERSION_MAINTENANCE)

VERSION := $(AICP_VERSION_MAJOR).$(AICP_VERSION_MINOR)

ifndef AICP_BUILDTYPE
    ifdef RELEASE_TYPE
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^AICP_||g')
        AICP_BUILDTYPE := $(RELEASE_TYPE)
    else
        AICP_BUILDTYPE := UNOFFICIAL
    endif
endif

ifdef AICP_BUILDTYPE
    ifeq ($(AICP_BUILDTYPE), OFFICIAL)
        AICP_VERSION := floko_$(AICP_BUILD)_$(AICP_BRANCH)-$(VERSION)-OFFICIAL-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(AICP_BUILDTYPE), EXPERIMENTAL)
        AICP_VERSION := floko_$(AICP_BUILD)_$(AICP_BRANCH)-$(VERSION)-EXPERIMENTAL-$(shell date -u +%Y%m%d)
    endif
    ifeq ($(AICP_BUILDTYPE), UNOFFICIAL)
        AICP_VERSION := floko_$(AICP_BUILD)_$(AICP_BRANCH)-$(VERSION)-UNOFFICIAL-$(shell date -u +%Y%m%d)
    endif
else
#We reset back to UNOFFICIAL
        AICP_VERSION := floko_$(AICP_BUILD)_$(AICP_BRANCH)-$(VERSION)-UNOFFICIAL-$(shell date -u +%Y%m%d)
endif

# AICP System Version
PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    aicp.ota.version=$(AICP_VERSION_MAJOR).$(AICP_VERSION_MINOR).$(AICP_VERSION_MAINTENANCE) \
    ro.modversion=$(VERSION)-$(AICP_BUILDTYPE) \
    ro.aicp.releasetype=$(AICP_BUILDTYPE) \
    ro.aicp.version=$(VERSION)-$(AICP_BUILDTYPE) \
    ro.aicp.version.update=$(AICP_BRANCH)-$(VERSION) \
    ro.aicp.build.version=$(VERSION) \
    ro.aicp.display.version=$(AICP_VERSION) \
    ro.aicp.buildtype=$(AICP_BUILDTYPE)

