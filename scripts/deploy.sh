#!/bin/bash
echo "deploying infrastructure"

set -e
npm i
npm i -g aws-cdk

cdk bootstrap
cdk synth
cdk diff

echo "deploying shared infrastructure"
cdk deploy IAMUser --require-approval never 

# echo "deploying shared infrastructure"
# cdk deploy SharedInfrastructureStack --require-approval never

# echo "deploying apploadbalancer infrastructure"
# cdk deploy AppLoadBalancerStack --require-approval never

# echo "deploying userphoto resize infrastructure"
# cdk deploy UserPhotoResizerStack --require-approval never

# echo "deploying brandimage resize infrastructure"
# cdk deploy CompanyBrandImagesResizerStack --require-approval never

# echo "deploying developer vpn infrastructure"
# cdk deploy DeveloperVpnStack --require-approval never

# echo "deploying notification infrastructure"
# cdk deploy NotificationStack --require-approval never

# echo "deploying reports infrastructure"
# cdk deploy ReportsInfrastructureStack --require-approval never

# echo "deploying employee data bucket infrastructure"
# cdk deploy EmployeeDataBucket --require-approval never

# echo "configuring employee data integration users"
# cdk deploy EmployeeDataIntegrationUser --require-approval never

# echo "deploying connectsDb stack"
# cdk deploy ConnectsDbStack --require-approval never

echo "Done!"
