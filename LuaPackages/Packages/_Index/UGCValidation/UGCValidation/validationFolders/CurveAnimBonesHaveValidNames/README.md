# CurveAnimBonesHaveValidNames

## Purpose

Validates that every animation-track sub-folder inside a CurveAnimation has a name that is either a valid R15 body part or a recognized HRD/DRD bone. Rejects folders that appear to be custom joints or typo'd bone names.

## Constraint

A sub-folder is considered an "attempted bone" when it has a `Rotation` (`EulerRotationCurve` or `RotationCurve`) or `Position` (`Vector3Curve`) child. Any such folder whose name is neither a body part (`isBodyPartFolderNameValid`) nor a recognized HRD/DRD bone (`CurveAnimBoneHierarchyUtils.isBoneFolderName`) is rejected.

Folders without Rotation/Position children (e.g. `FaceControls`) are exempt.

## Data layer

- `conditionalData = { curveAnimBoneData }` — auto-passes when no bones exist in the animation.
- `requiredData = { curveAnimations }` — needs the actual CurveAnimation instances to inspect.

## Recognized bone names

| Body part | Root bone | Children |
|---|---|---|
| Head | HeadBase | — |
| UpperTorso | Spine | Chest -> LeftClavicle, RightClavicle |
| LeftFoot | LeftToeBase | — |
| RightFoot | RightToeBase | — |
| LeftHand | LeftHandIndex1-3, LeftHandMiddle1-3, LeftHandPinky1-3, LeftHandRing1-3, LeftHandThumb1-3 | (chained) |
| RightHand | RightHandIndex1-3, RightHandMiddle1-3, RightHandPinky1-3, RightHandRing1-3, RightHandThumb1-3 | (chained) |

## Failure

**`CurveAnim_InvalidBoneName`** — emitted when a folder has an animation track child but is not a recognized body part or HRD/DRD bone name.

## Related modules

- `CurveAnimBonesRotationOnly` — enforces rotation-only for recognized bone folders.
- `CurveAnimBonesHaveValidParents` — validates bone parent chains.
- `CurveAnimBoneHierarchyUtils` (`src/util/`) — maps HRD/DRD bone names to body parts and parent bones.

## Feature flag

`getFFlagUGCValidateEmotesBonesAllowed` (shared across all bone modules)
