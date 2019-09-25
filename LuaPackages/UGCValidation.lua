-- Shared code used by Toolbox and RCC for validating UGC catalog uploads

local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.UGCValidationImpl)

return require(CorePackages.UGCValidationImpl)