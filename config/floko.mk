# Our versioning system

ifndef FLOKO_BUILD_TYPE
    FLOKO_BUILD_TYPE := UNOFFICIAL
endif

FLOKO_VERSION := 3.0
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
    ro.storage_manager.enabled=1 \
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

PRODUCT_PROPERTY_OVERRIDES += \
    ro.services.whitelist.packagelist=com.google.android.gms

# Extra packages
PRODUCT_PACKAGES += \
    crDroidThemesStub \
    Etar \
    ThemePicker \
    OmniJaws \
    OmniStyle \
    OmniSwitch \
    Updater

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    AccuratistFont \
    AclonicaFont \
    Amarante \
    BariolFont \
    CagliostroFont \
    ComfortaaFont \
    CoolstoryFont \
    ExotwoFont \
    GrandHotelFont \
    HackGenFont \
    KoruriFont \
    LatoFont \
    NunitoFont \
    OswaldFont \
    RedressedFont \
    ReemKufiFont \
    RobotoCondensedFont \
    RubikFont \
    StoropiaFont \
    SurferFont \
    UbuntuFont

# Accents
PRODUCT_PACKAGES += \
    Amber \
    Black \
    Blue \
    BlueGrey \
    Brown \
    Cyan \
    DeepOrange \
    DeepPurple \
    Green \
    Grey \
    Indigo \
    LightBlue \
    LightGreen \
    Lime \
    Orange \
    Pink \
    Purple \
    Red \
    Teal \
    UserOne \
    UserTwo \
    UserThree \
    UserFour \
    UserFive \
    UserSix \
    UserSeven \
    Yellow \
    White

# Brand Accents
PRODUCT_PACKAGES += \
    AospaGreen \
    AndroidOneGreen \
    CocaColaRed \
    DiscordPurple \
    FacebookBlue \
    InstagramCerise \
    JollibeeCrimson \
    MonsterEnergyGreen \
    NextbitMint \
    OneplusRed \
    PepsiBlue \
    PocophoneYellow \
    RazerGreen \
    SamsungBlue \
    SpotifyGreen \
    StarbucksGreen \
    TwitchPurple \
    TwitterBlue \
    XboxGreen \
    XiaomiOrange

# Dark Styles
PRODUCT_PACKAGES += \
    SystemAmoledBlack \
    SystemCharcoalBlack

# Switch Themes
PRODUCT_PACKAGES += \
    ContainedSwitch \
    MD2Switch \
    NarrowSwitch \
    OnePlusSwitch \
    RetroSwitch \
    StockSwitch \
    TelegramSwitch

# Notch city
PRODUCT_PACKAGES += \
    HideCutout \
    ImmersiveMode \
    StatusBarStock \
    StatusBarStockSysUI

# Navbar Themes
PRODUCT_PACKAGES += \
    StockAsusOverlay \
    NavbarAsusOverlay \
    NavbarOnePlusOverlay \
    NavbarOneUiOverlay \
    NavbarTecnoCamonOverlay
