/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libexif/exif-entry.h>

extern "C" void exif_entry_gps_initialize(ExifEntry * e, ExifTag tag) {
    exif_entry_initialize(e,tag);
}
