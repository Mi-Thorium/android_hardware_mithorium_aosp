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

sed -i 's|PRODUCT_SOONG_NAMESPACES|NO_PRODUCT_SOONG_NAMESPACES|g' BoardConfigQcom.mk
sed -i 's|PRODUCT_CFI_INCLUDE_PATHS|NO_PRODUCT_CFI_INCLUDE_PATHS|g' qcom_target.mk
