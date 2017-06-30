##	GLUON_SITE_PACKAGES
#		specify Gluon/LEDE packages to include here

GLUON_SITE_PACKAGES := \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-segment-mld \
	gluon-ebtables-source-filter \
	gluon-ebtables-limit-arp \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-mesh-vpn-fastd \
	gluon-web-network \
	gluon-web-private-wifi \
	gluon-web-wifi-config \
	gluon-mesh-batman-adv-15 \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	haveged \
	iwinfo \
	gluon-legacy-https-stats \
	gluon-offline-ssid

# Additional Modules for USB gadgets
USB_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb3 \
	kmod-usb-hid

USB_NIC := \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-rtl8150 \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-smsc95xx \
	kmod-usb-net-sr9700

USB_WIFI := \
	kmod-rtl8192cu

# Additional packages for x86-generic builds
ifeq ($(GLUON_TARGET),x86-generic)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		kmod-usb-ohci-pci \
		$(USB_NIC)
endif

# Additional packages for x86-64 builds
ifeq ($(GLUON_TARGET),x86-64)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		kmod-igb # APU2
endif

ifeq ($(GLUON_TARGET),ar71xx-tiny)
	GLUON_SITE_PACKAGES += hostapd-mini
else
	GLUON_SITE_PACKAGES += hostapd
endif

# Variables set with ?= can be overwritten from the command line

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

BROKEN=1
