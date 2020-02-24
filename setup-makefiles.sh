#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=perseus
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

POTATO_ROOT="${MY_DIR}/../../.."

HELPER="${POTATO_ROOT}/vendor/potato/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper for device
setup_vendor "${DEVICE}" "${VENDOR}" "${POTATO_ROOT}" true

# Copyright headers and guards
write_headers "perseus"

# The standard common blobs
write_makefiles "${MY_DIR}/proprietary-files.txt" true

# Finish
write_footers
