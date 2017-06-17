GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-offline-ssid \
	gluon-legacy-https-stats \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-source-filter \
	gluon-web-admin \
	gluon-web-wifi-config \
	gluon-web-autoupdater \
	gluon-autoupdater \
	gluon-web-private-wifi \
	gluon-web-network \
	gluon-client-bridge \
	gluon-mesh-vpn-fastd \
	iwinfo \
	iptables \
	haveged \
	gluon-ebtables-segment-mld

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

