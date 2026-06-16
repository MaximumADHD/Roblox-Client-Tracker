# CurveAnimBonesHaveValidParents

## Purpose

Validates that every bone folder present in a CurveAnimation has its required parent bone also present.

## Constraint

The R15plus bone schema defines strict parent-child chains:
- UpperTorso: Spine -> Chest -> LeftClavicle / RightClavicle
- LeftHand / RightHand: Thumb1 -> Thumb2 -> Thumb3, Index1 -> Index2 -> Index3, etc.
- LeftFoot / RightFoot: ToeBase (root, no parent bone required)
- Head: HeadBase (root, no parent bone required)

Rules enforced:
1. Chest cannot exist without Spine.
2. LeftClavicle and RightClavicle cannot exist without Chest.
3. Any finger bone at position N cannot exist without the bone at position N-1.

A bone at the root of its chain (e.g. Spine, any Finger1, ToeBase, HeadBase) is always valid on its own.

## Data layer

- `conditionalData = { curveAnimBoneData }` — auto-passes when no bones exist in the animation.
- `requiredData = { curveAnimations }` — needs the actual CurveAnimation instances to inspect.

## Failure

**`CurveAnim_BoneRequiresParent`** — emitted when a bone folder is present but its required parent bone is missing.

## Related modules

- `CurveAnimBonesHaveValidNames` — validates bone folder names against schema.
- `CurveAnimBoneHierarchyUtils` (`src/util/`) — maps bone names to parent bones.
- `R15plusUtils.getAvatarBoneSchema()` — source of truth for bone schemas per body part.

## Feature flag

`getFFlagUGCValidateEmotesBonesAllowed` (shared across all bone modules)
