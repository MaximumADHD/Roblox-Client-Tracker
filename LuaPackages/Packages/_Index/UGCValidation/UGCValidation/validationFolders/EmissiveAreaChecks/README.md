# EmissiveAreaChecks

The validation runner gates this module with `UGCValidateEmissiveAreaChecks`
(default: false). Limits are read from FastInts on each run:

- `UGCValidateMaxEmissivePercentageBody`: 100, expressed as a whole percentage
  for torso and limb uploads.
- `UGCValidateMaxEmissivePercentageDynamicHead`: 100, expressed as a whole
  percentage for dynamic-head uploads.
- `UGCValidateMaxEmissiveAreaRigidAccessory`: 1000 square studs for rigid
  accessory uploads.
- `UGCValidateMaxEmissiveAreaLayeredClothing`: 1000 square studs for layered
  clothing uploads.

These replace the shared `UGCValidateMaxEmissivePercentage` and
`UGCValidateMaxEmissiveArea` limits. Each category can be configured independently.

`getTotalEmissiveSurfaceArea(meshData, image)` returns two values: the absolute
emissive surface area (`sum(triangleArea * R / 255)`) and total mesh surface area,
both in scaled square studs. It does not apply `EmissiveStrength`.

Checks body-part and accessory render meshes independently. Meshes without an
emissive mask are skipped. The mask comes from the shared texture data's
`EmissiveMask.editable`, populated from `SurfaceAppearance.EmissiveMaskContent`.

Each nondegenerate triangle samples the red channel at its UV centroid using
nearest-pixel lookup and repeating UV coordinates. Its emissive fraction is
`R / 255`, weighted by its scaled 3D surface area. For torso/limb and dynamic-head
uploads, validation fails when the area-weighted emissive fraction, multiplied
by `EmissiveStrength / 40`, exceeds the category's percentage limit divided by
100. At the default limit, exactly 100% passes.

For layered clothing and rigid accessories, validation fails when the absolute
weighted emissive area exceeds the category's area limit (default: 1000 square
studs for each category). Equality with the limit passes. This check does not apply
`EmissiveStrength`.

Both checks use a centroid-sampled estimate, not an integration over every pixel
covered by the triangle.
