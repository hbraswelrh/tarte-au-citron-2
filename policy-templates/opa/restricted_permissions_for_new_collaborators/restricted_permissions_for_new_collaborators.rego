package restricted_permissions_for_new_collaborators

import data.lib
import rego.v1

# METADATA
# title: Proper Restrictions for New Contributors Present
# description: |
#   Confirms that the project contributors have required privileges.
# related_resources:
# - ref: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors
#   description: Setting guidelines
# authors:
# - name: Hannah Braswell
#   email: hbraswel@redhat.com
# custom:
#   short_name: permissions_requirement
#   failure_msg: A new contributor has write access to the main branch of the repository.
#   solution: |
#       Add a license approved by the Open Source Initiative (OSI) or the Free Software
#       Foundation (FSF) to support the software project.
# collections:
# - osps
# - permissions_requirements
