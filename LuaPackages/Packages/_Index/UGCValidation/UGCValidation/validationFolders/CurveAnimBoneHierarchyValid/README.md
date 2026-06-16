# CurveAnimBoneHierarchyValid

Validates that the bone hierarchy structure inside CurveAnimation body-part folders is correct when bone animation support is enabled (`UGCValidateEmotesBonesAllowed`).

Checks that each folder in the animation tree contains only children that are structurally valid according to the avatar bone schema: bone folders accept their schema child bones plus Position/Rotation tracks, body-part folders accept child body parts plus root bones plus tracks, and child body-part folders are only permitted at leaf bones in the chain.

Prereq: `CurveAnimDataAvailable` (ensures `curveAnimations` shared data is populated).
