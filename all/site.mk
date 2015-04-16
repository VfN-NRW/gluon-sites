GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-autoupdater \
	gluon-offline-ssid \
	gluon-legacy-https-stats \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-private-wifi \
	gluon-luci-portconfig \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged


DEFAULT_GLUON_RELEASE := 0.6.3-beta3

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
