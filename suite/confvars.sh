#! /bin/sh
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

MOZ_APP_BASENAME=NetFusion
MOZ_APP_VENDOR=NetFusion
MOZ_APP_NAME=netfusion
MOZ_APP_DISPLAYNAME=NetFusion
MOZ_COMPOSER=1
MOZ_SUITE=1
MOZ_MAILNEWS=1
MOZ_CLASSIC_ACCOUNT_WIZARD=1
MOZ_BRANDING_DIRECTORY=suite/branding/unofficial
MOZ_OFFICIAL_BRANDING_DIRECTORY=suite/branding/official
MOZ_EXTENSIONS_DEFAULT=" gio"
MOZ_UPDATER=1
# This should usually be the same as the value MAR_CHANNEL_ID.
# If more than one ID is needed, then you should use a comma separated list
# of values.
ACCEPTED_MAR_CHANNEL_IDS=unofficial,release
# The MAR_CHANNEL_ID must not contain the following 3 characters: ",\t "
MAR_CHANNEL_ID=unofficial
MOZ_WEBGL_CONFORMANT=1
MOZ_WEBM_ENCODER=1

# Enable SQL storage format for NSS security
MOZ_SECURITY_SQLSTORE=1
# Explicitly disable the DBM format
NSS_DISABLE_DBM=1

# Set the chrome packaging format and compression algorithm
# Possible values are omni, jar, and flat
# Currently, only omni and flat are supported
MOZ_CHROME_FILE_FORMAT=omni
JAR_COMPRESSION=brotli
OMNIJAR_NAME=netfusion.res

MOZ_APP_VERSION_TXT=${_topsrcdir}/$MOZ_BUILD_APP/config/version.txt
MOZ_APP_VERSION=`cat $MOZ_APP_VERSION_TXT`
NETFUSION_VERSION=$MOZ_APP_VERSION

MOZ_UA_BUILDID=20100101

MOZ_APP_ID={79d3a440-eca6-4226-85df-2961012d1fe9}
MOZ_PROFILE_MIGRATOR=1
MOZ_APP_STATIC_INI=1
MOZ_SEPARATE_MANIFEST_FOR_THEME_OVERRIDES=1

if test "$MOZ_WIDGET_TOOLKIT" = "windows" -o \
        "$MOZ_WIDGET_TOOLKIT" = "gtk2" -o \
        "$MOZ_WIDGET_TOOLKIT" = "gtk3"; then
  MOZ_BUNDLED_FONTS=1
fi

# Don't include the DevTools client
MOZ_DEVTOOLS=

# Short-circuit Sync
MOZ_SERVICES_SYNC=
