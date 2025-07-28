/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <log/log.h>

#include <errno.h>
#include <malloc.h>
#include <string.h>

#include <hardware/memtrack.h>

static const memtrack_module_t *module;

extern "C" int memtrack_init(void) {
    int err;

    if (module) {
        return 0;
    }

    err = hw_get_module(MEMTRACK_HARDWARE_MODULE_ID,
            (hw_module_t const**)&module);
    if (err) {
        ALOGE("Couldn't load %s module (%s)", MEMTRACK_HARDWARE_MODULE_ID,
                strerror(-err));
        return err;
    }

    return module->init(module);
}
