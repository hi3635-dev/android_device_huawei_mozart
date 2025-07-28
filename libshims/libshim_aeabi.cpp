/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <cstdint>
#include <cmath>
#include <limits.h>

extern "C" int64_t __aeabi_d2lz(double d) {
    if (std::isnan(d)) return 0;
    if (d >= static_cast<double>(LLONG_MAX)) return LLONG_MAX;
    if (d <= static_cast<double>(LLONG_MIN)) return LLONG_MIN;
    return static_cast<int64_t>(d);
}

extern "C" uint64_t __aeabi_d2ulz(double d) {
    if (d < 0.0) return 0;
    if (d > static_cast<double>(ULLONG_MAX)) return ULLONG_MAX;
    return static_cast<uint64_t>(d);
}
