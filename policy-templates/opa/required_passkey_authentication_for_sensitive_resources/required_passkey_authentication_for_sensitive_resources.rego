package required_passkey_authentication_for_sensitive_resources

import data.lib
import rego.v1

# METADATA
# title: Approved License Present
# description: |
#   Confirms that the license is within the Open Source approved Licenses.
# related_resources:
# - ref: https://opensource.org/licenses
#   description: Open Source Initiative Approved Licenses
# authors:
# - name: Hannah Braswell
#   email: hbraswel@redhat.com
# custom:
#   short_name: multi_factor_authentication
#   failure_msg: Multi-Factor authentication is not required for users to access private information.
#   solution: |
#       Create a user guide 'USER_GUIDE.md' that details how the user should leverage multi-factor
#       authentication to adjust project settings or when accessing privileged resources.
# collections:
# - osps
# - license_requirements
