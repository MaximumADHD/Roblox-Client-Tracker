# CurveAnimBonesAllowed

## Purpose

User verification gate for HRD/DRD bone support in CurveAnimation emotes and animations. When bones are detected in an animation, this module verifies the uploader is an authorized trusted creator via the ItemConfiguration permissions API.

## Behavior

- **No bones in animation**: auto-passes via `conditionalData` (curveAnimBoneData is nil).
- **Bones present, IEC**: always fails.
- **Bones present, Backend**: checks `backendConfigs.isUserInTrustedCreatorProgram`.
- **Bones present, Studio/Client**: calls the ItemConfiguration permissions API to check trusted creator status.

## User Verification API

Calls `GET /v1/permissions/action-allowed-for-item-type` on `itemconfiguration.{domain}` with:
- `trustedCreatorCheck=true`
- `action=1` (Upload)
- `assetType=61` (Emotes)

Auth is handled by `HttpRbxApiService` (implicit user session in both Studio and RCC). No explicit userId or cookie needed.

On API failure (network error, decode error): reports via `reporter:forceError()`.
On `isAllowed = false`: reports `CurveAnim_BonesNotAllowed` failure.

## Data layer

Uses `conditionalData = { curveAnimBoneData }`. The `curveAnimBoneData` shared data member is populated by `FetchCurveAnimBoneData`, which scans curve animations for recognized bone folders. When no bones exist, it returns nil, causing this module to auto-pass.

## Failure

**`CurveAnim_BonesNotAllowed`** — emitted when the user is not authorized as a trusted creator for bone emotes.

## Related modules

- `CurveAnimBonesRotationOnly` — enforces rotation-only on bone folders.
- `CurveAnimBonesHaveValidNames` — validates bone folder names against schema.
- `CurveAnimBonesHaveValidParents` — validates bone parent chains are complete.
- `CurveAnimPartsRotateOnlyIfBones` — forbids body part translation when bones are present.

## SystemTester

This module makes a network call in Studio/Client environments. CI has no network, so the module is listed in `TEMPORARY_IGNORE`.
