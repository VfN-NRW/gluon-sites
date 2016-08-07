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
	gluon-luci-admin \
	gluon-luci-wifi-config \
	gluon-luci-autoupdater \
	gluon-luci-private-wifi \
	gluon-luci-portconfig \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	iwinfo \
	iptables \
	haveged \
	gluon-radv-filterd



# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
