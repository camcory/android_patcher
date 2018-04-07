ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'device/aosip/sepolicy'
    'external/selinux'
    'frameworks/native'
    'system/core'
    'system/libhidl'
    'system/sepolicy'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
