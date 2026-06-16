# CurveAnimBodyPartsWithBonesRotationOnly

## Purpose

Validates that when HRD/DRD bones exist in a CurveAnimation, no body part folder has a Position (translation) track with keyframes. Body parts must be rotation-only when bones are present to prevent joint separation.

## Constraint

If **any** HRD/DRD bone folder is found anywhere in the `CurveAnimation`, **all** body part folders are required to be rotation-only — none may carry a `Position` (`Vector3Curve`) track with keyframes. This is a global switch: the presence of even a single bone removes translation rights from every body part in that animation.

Animations with no bones at all are unaffected (auto-pass via conditionalData).

## Data layer

- `conditionalData = { curveAnimBoneData }` — auto-passes when no bones exist in the animation.
- `requiredData = { curveAnimations }` — needs the actual CurveAnimation instances to inspect.

## Failure

**`CurveAnim_BodyPartWithBoneHasPosition`** — emitted when bones are detected in the animation and any body part folder has a Position track with keyframes.

## Related modules

- `CurveAnimBonesRotationOnly` — enforces rotation-only on the bone folders themselves.
- `CurveAnimBonesHaveValidNames` — ensures all animation-track sub-folders use recognized bone names.
- `CurveAnimBoneHierarchyUtils` (`src/util/`) — maps HRD/DRD bone names to body parts and parent bones.

## Feature flag

`getFFlagUGCValidateEmotesBonesAllowed` (shared across all bone modules)
