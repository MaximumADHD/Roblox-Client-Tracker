# CurveAnimBonesRotationOnly

## Purpose

Validates that HRD/DRD bone folders within a CurveAnimation don't translate further than a threshold. Large bone translations cause joint separation.

## Constraint

Bone folders are identified by `CurveAnimBoneHierarchyUtils.isBoneFolderName`. For each bone folder with a `Position` track, the largest distance between the position at time 0 and the position at any keyframe must not exceed `FIntUGCValidateBoneTranslationMaxDistanceHundredths` / 100 studs. Live Portal values differ from the source default, so check Portal before quoting a number.

## Data layer

- `conditionalData = { curveAnimBoneData }`: auto-passes when no bones exist in the animation.
- `requiredData = { curveAnimations }`: needs the actual CurveAnimation instances to inspect.

## Failure

**`CurveAnim_BoneTranslationExceedsThreshold`**: a bone's translation exceeds the limit.

## Related modules

- `CurveAnimPartsRotateOnlyIfBones`: the same kind of limit on body part folders.
- `CurveAnimBoneHierarchyUtils` (`src/util/`): maps HRD/DRD bone names to body parts and parent bones.
- `CurveAnimTranslationUtils` (`src/util/`): computes the translation distance.
