#!/bin/bash

echo "building infrastructure"

set -e
npm i
npm i -g aws-cdk

cdk bootstrap

echo "building shared infrastructure"
cdk synth IAMUser
cdk diff IAMUser

# echo "building shared infrastructure"
# cdk synth SharedInfrastructureStack
# cdk diff SharedInfrastructureStack

# echo "building apploadbalancer infrastructure"
# cdk synth AppLoadBalancerStack
# cdk diff AppLoadBalancerStack

# echo "building userphoto resize infrastructure"
# cdk synth UserPhotoResizerStack
# cdk diff UserPhotoResizerStack

# echo "building brandimage resize infrastructure"
# cdk synth CompanyBrandImagesResizerStack
# cdk diff CompanyBrandImagesResizerStack

# echo "building developer vpn infrastructure"
# cdk synth DeveloperVpnStack
# cdk diff DeveloperVpnStack

# echo "building notification infrastructure"
# cdk synth NotificationStack
# cdk diff NotificationStack

# echo "building reports infrastructure"
# cdk synth ReportsInfrastructureStack
# cdk diff ReportsInfrastructureStack

# echo "employee data bucket infrastructure"
# cdk synth EmployeeDataBucket
# cdk diff EmployeeDataBucket

echo "Done!"
