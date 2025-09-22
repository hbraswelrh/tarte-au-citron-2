package license_validation

import data.lib
import rego.v1


# METADATA
# The license_validation is used to ensure that the Legal requirements
# are met for Open Source Initiative Licenses. The criteria will
# check whether the license of the project will conform to the requirements.

deny contains result if {
 not input.values
 result := lib.result_helper(rego.metadata.chain(), [])
}

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
#   short_name: license_requirement
#   failure_msg: An approved license type within the 'OSI' or 'FSF' was not found.
#   solution: |
#       Add a license approved by the Open Source Initiative (OSI) or the Free Software
#       Foundation (FSF) to support the software project.
# collections:
# - osps
# - license_requirements

_has_required_license_rule if {
    some rule in input.values
    rule.type == "license"
}
#
#