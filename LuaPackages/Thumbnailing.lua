local CorePackages = game:GetService("CorePackages")

-- This covers all of the Packages folder, which is fairly defensive, but should
-- be okay even if it runs multiple times
local initify = require(CorePackages.initify)
initify(CorePackages.Packages)

local Thumbnailing = require(CorePackages.Packages.Thumbnailing)

export type KeyframesForPose = Thumbnailing.KeyframesForPose
export type MapAssetIdToFileNameType = Thumbnailing.MapAssetIdToFileNameType
export type CameraOptions = Thumbnailing.CameraOptions
export type LightDescType = Thumbnailing.LightDescType
export type JsonLightDescType = Thumbnailing.JsonLightDescType
export type LightExtraParamsType = Thumbnailing.LightExtraParamsType

return Thumbnailing
