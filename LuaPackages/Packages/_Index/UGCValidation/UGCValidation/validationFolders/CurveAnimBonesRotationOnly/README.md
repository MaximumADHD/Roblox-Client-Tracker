# CurveAnimBonesRotationOnly

## Purpose

Validates that HRD/DRD bone folders within a CurveAnimation emote do not contain Position (translation) tracks with keyframes. Only Rotation tracks are permitted on bones. This prevents joint separation.

## Constraint

Bone folders (identified by `CurveAnimBoneHierarchyUtils.isBoneFolderName`) may have a `Vector3Curve` named "Position" structurally present, but it must not contain any keyframes. A Position track with keyframes on any bone folder triggers failure.

## Data layer

- `conditionalData = { curveAnimBoneData }` — auto-passes when no bones exist in the animation.
- `requiredData = { curveAnimations }` — needs the actual CurveAnimation instances to inspect.

## Failure

**`CurveAnim_BonePositionNotAllowed`** — emitted when a bone folder has a Position track containing keyframes.

## Related modules

- `CurveAnimBodyPartsWithBonesRotationOnly` — enforces rotation-only on body part folders when bones exist.
- `CurveAnimBoneHierarchyUtils` (`src/util/`) — maps HRD/DRD bone names to body parts and parent bones.

## Feature flag

`getFFlagUGCValidateEmotesBonesAllowed` (shared across all bone modules)
