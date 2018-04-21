ROOT="${PWD}"
REPOSITORIES=(
    'external/selinux'
    'frameworks/native'
    'frameworks/opt/telephony'
    'system/core'
    'system/sepolicy'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patches/${repository}"/*

    cd "${ROOT}"
done
