#!/bin/bash
# Copyright 2020-2022 RRSim

if [ -z "${UE5_DIR}" ]; then
    printf "Please set UE5_DIR to path of UE5 UnrealEngine folder\n"
    exit 1
fi
CURRENT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
UE_PROJ_DIR=${2:-"${CURRENT_DIR}"}
UE_EDITOR="${UE5_DIR}/Engine/Binaries/Linux/UnrealEditor"
(exec "$UE_EDITOR" "${UE_PROJ_DIR}/ToolsFrameworkDemo.uproject")

pkill -P $$
