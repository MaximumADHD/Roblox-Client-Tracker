This validation checks that JointRotation instances adhere to schema. They may exist only in ShoulderRigAttachments so we will have a very specific validation for R15+ launch. 
We are validating instead of removing for two reasons:
1. We don't want creators to make local edits for ragdoll effects, then upload without being told its not allowed.
2. We may loosen this restriction in the future.