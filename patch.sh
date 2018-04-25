ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/native'
    'frameworks/opt/telephony'
    'system/sepolicy'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
