echo env
if [ "$AGENT_JOBSTATUS" == "Succeeded" ]; then
    # Example: Trigger Jenkins job to test and perform further orchestration. Failed build will be seen in pull request
        curl https://jenkins.dfx.pl/generic-webhook-trigger/invoke?token=testMobileApp&APPCENTER_BUILD_ID=$APPCENTER_BUILD_ID&APPCENTER_BRANCH=$APPCENTER_BRANCH&APPCENTER_SOURCE_DIRECTORY=$APPCENTER_SOURCE_DIRECTORY&APPCENTER_OUTPUT_DIRECTORY=$APPCENTER_OUTPUT_DIRECTORY
fi