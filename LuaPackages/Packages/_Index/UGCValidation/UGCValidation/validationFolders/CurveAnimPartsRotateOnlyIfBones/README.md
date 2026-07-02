# CurveAnimPartsRotateOnlyIfBones

## Purpose

Validates that body part folders in a CurveAnimation have no Position (translation) tracks with keyframes when translation is disallowed. The enforcement rule depends on the upload category:

- **ANIMATION**: Body parts must always be rotation-only, regardless of whether bones are present.
- **EMOTE_ANIMATION**: Body parts must be rotation-only only when HRD/DRD bones exist in the animation.

## Constraint

For ANIMATION uploads, every body part folder is required to be rotation-only unconditionally.

For EMOTE_ANIMATION uploads, if **any** HRD/DRD bone folder is found anywhere in the `CurveAnimation`, **all** body part folders are required to be rotation-only. Animations with no bones at all are unaffected.

## Data layer

- `requiredData = { curveAnimations }` — needs the actual CurveAnimation instances to inspect.
- When `UGCValidateAnimPartsRotationOnly` is ON: `conditionalData = {}` (no auto-pass; run() handles the bones check internally for EMOTE).
- When `UGCValidateAnimPartsRotationOnly` is OFF: `conditionalData = { curveAnimBoneData }` (auto-passes when no bones exist).

## Failures

- **`CurveAnim_BodyPartHasPosition`** — emitted for ANIMATION uploads when any body part folder has a Position track with keyframes.
- **`CurveAnim_BodyPartWithBoneHasPosition`** — emitted for EMOTE_ANIMATION uploads when bones are detected and any body part folder has a Position track with keyframes.

## Related modules

- `CurveAnimBonesRotationOnly` — enforces rotation-only on the bone folders themselves.
- `CurveAnimBonesHaveValidNames` — ensures all animation-track sub-folders use recognized bone names.
- `CurveAnimBoneHierarchyUtils` (`src/util/`) — maps HRD/DRD bone names to body parts and parent bones.

## Feature flags

- `getFFlagUGCValidateEmotesBonesAllowed` (shared across all bone modules)
- `getFFlagUGCValidateAnimPartsRotationOnly` (gates ANIMATION category support and unconditional enforcement)
- `getFFlagUGCValidationAnimationPackSupport` (gates ANIMATION category existence)
