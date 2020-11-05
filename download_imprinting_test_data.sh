#!/bin/bash
#
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
set -ex

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly DOWNLOAD=${SCRIPT_DIR}/download.sh
readonly OUTPUT_DIR="${1:-"${SCRIPT_DIR}"}/open_image_v4_subset"
mkdir -p "${OUTPUT_DIR}"

failures=0
while IFS=',' read -r url label sha256; do
  "${DOWNLOAD}" "${url}" "${OUTPUT_DIR}/${label}/$(basename "${url}")" "${sha256}" || failures=$((failures+1))
done < <(sed 1d "${SCRIPT_DIR}/open_image_v4_subset.csv")

# The missing images wouldn't affect the test results a lot.
echo "$failures images failed to be downloaded."
if [[ "$failures" -gt 5 ]]; then
  echo "Too many images failed to be downloaded. Please check open_image_v4_subset.csv."
  exit 1
fi
