# CurveAnimBonesAllowed

## Purpose

User verification gate for HRD/DRD bone support in CurveAnimation emotes. When bones are detected in an animation, this module verifies the uploader is an authorized trusted creator via the ItemConfiguration permissions API.

## Behavior

- **`UGCValidateEmotesBonesAllowed` OFF** (default): module does not run (gated by `fflag`).
- **`UGCValidateEmotesBonesAllowed` ON, no bones in animation**: auto-passes via `conditionalData` (curveAnimBoneData is nil).
- **`UGCValidateEmotesBonesAllowed` ON, bones present, `UGCValidateEmotesBoneUserVerification` OFF**: passes (user verification not yet enabled).
- **`UGCValidateEmotesBonesAllowed` ON, bones present, `UGCValidateEmotesBoneUserVerification` ON**: calls the ItemConfiguration permissions API to check trusted creator status.

## User Verification API

Calls `GET /v1/permissions/action-allowed-for-item-type` on `itemconfiguration.{domain}` with:
- `trustedCreatorCheck=true`
- `action=1` (Upload)
- `assetType=61` (Emotes)

Auth is handled by `HttpRbxApiService` (implicit user session in both Studio and RCC). No explicit userId or cookie needed.

On API failure (network error, decode error): throws `error()` so the validation system retries.
On `isAllowed = false`: reports `CurveAnim_BonesNotAllowed` failure.

## Data layer

Uses `conditionalData = { curveAnimBoneData }`. The `curveAnimBoneData` shared data member is populated by `FetchCurveAnimBoneData`, which scans curve animations for recognized bone folders. When no bones exist, it returns nil, causing this module to auto-pass.

## Failure

**`CurveAnim_BonesNotAllowed`** — emitted when the user is not authorized as a trusted creator for bone emotes.

## Related modules

- `CurveAnimBonesRotationOnly` — enforces rotation-only on bone folders.
- `CurveAnimBonesHaveValidNames` — validates bone folder names against schema.
- `CurveAnimBonesHaveValidParents` — validates bone parent chains are complete.
- `CurveAnimBodyPartsWithBonesRotationOnly` — forbids body part translation when bones are present.

## Feature flags

| Flag | Default | Purpose |
|---|---|---|
| `UGCValidateEmotesBonesAllowed` | `false` | Master gate for all bone validation modules |
| `UGCValidateEmotesBoneUserVerification` | `false` | Enables the trusted creator API check |

## SystemTester

This module makes a network call when `UGCValidateEmotesBoneUserVerification` is ON. Since CI has no network and the flag defaults to `false` in `allTests.json`, no `TEMPORARY_IGNORE` entry is needed — the verification path is never reached in tests.
