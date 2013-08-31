#
#   Copyright © 2013 by Jeremy Reichman <jaharmi@jaharmi.com>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

include /usr/local/share/luggage/luggage.make

${PACKAGE_PLIST}: prototype.plist
# override prototype property list with custom local template
	@cat prototype.plist > ${PACKAGE_PLIST}

TITLE=AdminAuthorizationAndSudoExample
REVERSE_DOMAIN=com.bitbucket.pkg
PACKAGE_VERSION=1.0.0
PACKAGE_FILE=${TITLE}.pkg
PAYLOAD=\
    pack-script-postflight
