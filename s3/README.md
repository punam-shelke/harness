# S3 bucket

This module will create S3 buckets needed for the demo project.

It takes list of buckets as a variable in locals called bucket_names and loops over the list to create all those buckets.

This module will have it's state stored in the state bucket created by [state-bucket module](../state_bucket)

Currently it is creating following buckets

1. demo-artifacts

   This bucket will be used for stroing artifact built by the demo harness pipeline.
