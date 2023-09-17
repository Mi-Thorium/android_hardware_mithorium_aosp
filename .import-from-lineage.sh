#!/bin/bash

VENDOR_LINEAGE_DIR="$1"

MK_FILES="build/core/pathmap.mk
build/core/qcom_target.mk
build/core/utils.mk
build/core/vendor/qcom_boards.mk
config/BoardConfigQcom.mk"

for f in $MK_FILES; do
    cp $VENDOR_LINEAGE_DIR/$f .
done
