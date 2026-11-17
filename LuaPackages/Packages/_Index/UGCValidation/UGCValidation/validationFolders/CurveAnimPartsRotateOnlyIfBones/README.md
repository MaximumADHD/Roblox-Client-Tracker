# CurveAnimPartsRotateOnlyIfBones

## Purpose

Validates that body part folders in a CurveAnimation don't translate further than a threshold. The rule depends on the upload category:

- **ANIMATION**: every body part is checked, whether or not bones are present.
- **EMOTE_ANIMATION**: body parts are checked only when HRD/DRD bones exist in the animation.

## Constraint

For each body part folder with a `Position` track, the largest distance between the position at time 0 and the position at any keyframe must not exceed the limit:

- `LowerTorso`: `FIntUGCValidateLowerTorsoTranslationMaxDistanceHundredths` / 100 studs.
- Every other body part: `FIntUGCValidateBodyPartTranslationMaxDistanceHundredths` / 100 studs.

Live Portal values differ from the source defaults, so check Portal before quoting a number.

For EMOTE_ANIMATION uploads, if **any** HRD/DRD bone folder is found anywhere in the `CurveAnimation`, **all** body part folders are checked. Emotes with no bones are unaffected.

## Data layer

- `requiredData = { curveAnimations }`: needs the actual CurveAnimation instances to inspect.
- `conditionalData = {}`: no auto-pass. `run()` does the bones check itself for EMOTE_ANIMATION.

## Failures

- **`CurveAnim_BodyPartTranslationExceedsThreshold`**: a body part's translation exceeds its limit.

## Related modules

- `CurveAnimBonesRotationOnly`: the same translation limit on the bone folders themselves.
- `CurveAnimBonesHaveValidNames`: ensures all animation-track sub-folders use recognized bone names.
- `CurveAnimBoneHierarchyUtils` (`src/util/`): maps HRD/DRD bone names to body parts and parent bones.
- `CurveAnimTranslationUtils` (`src/util/`): computes the translation distance.
