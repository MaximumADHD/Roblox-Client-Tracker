-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetAccess").Src.Types)
local var1 = {}
var1.AssetMetadata = {}
local var12 = {}
var12.id = 123
var12.visibility = "Public"
var12.name = "Asset1"
var12.owner = "User1"
var12.type = Enum.AssetType.Audio
var1.AssetMetadata.PUBLIC = table.freeze(var12)
local var21 = {}
var21.id = 456
var21.visibility = "Private"
var1.AssetMetadata.PRIVATE = table.freeze(var21)
table.freeze(var1.AssetMetadata)
var1.AssetModel = {}
local var30 = {}
var30.state = "Loaded"
var30.metadata = table.freeze(table.clone(var1.AssetMetadata.PUBLIC))
var1.AssetModel.LOADED_PUBLIC = table.freeze(var30)
local var41 = {}
var41.state = "Loaded"
var41.metadata = table.freeze(table.clone(var1.AssetMetadata.PRIVATE))
var1.AssetModel.LOADED_PRIVATE = table.freeze(var41)
local var52 = {}
var52.state = "Loading"
var1.AssetModel.LOADING = table.freeze(var52)
local var57 = {}
var57.state = "Failed"
var1.AssetModel.FAILED = table.freeze(var57)
table.freeze(var1.AssetModel)
local var69 = table.freeze(table.clone(var1.AssetModel.LOADED_PUBLIC))
{}[456] = table.freeze(table.clone(var1.AssetModel.LOADED_PRIVATE))
{}[789] = table.freeze(table.clone(var1.AssetModel.LOADING))
local var90 = table.freeze(table.clone(var1.AssetModel.FAILED))
{}[101112] = var90
var1.INACCESSIBLE_ASSET_MODELS = table.freeze({})
var1.UNSHARABLE_ASSET_MODELS = {}
var1.INACCESSIBLE_ASSET_IDS = {}
var1.UNSHARABLE_ASSET_IDS = {}
local var95 = var1.INACCESSIBLE_ASSET_MODELS
local var96 = nil
local var97 = nil
table.insert(var1.INACCESSIBLE_ASSET_IDS, var90)
if var90 % 2 == 1 then
   table.insert(var1.UNSHARABLE_ASSET_IDS, var90)
   local var0 = var1.UNSHARABLE_ASSET_MODELS
   table.freeze(table.clone(var1.AssetModel.FAILED)) = table.freeze(table.clone(var108))
end
table.freeze(var1.UNSHARABLE_ASSET_MODELS)
table.freeze(var1.INACCESSIBLE_ASSET_IDS)
table.freeze(var1.UNSHARABLE_ASSET_IDS)
var1.ShareDialogModel = {}
local var120 = {}
var120.state = "Inactive"
var1.ShareDialogModel.INACTIVE = table.freeze(var120)
local var125 = {}
var125.state = "Prompt"
var125.assetModels = table.freeze(table.clone(var1.INACCESSIBLE_ASSET_MODELS))
var1.ShareDialogModel.PROMPT = table.freeze(var125)
local var135 = {}
var135.state = "Sharing"
var135.assetModels = table.freeze(table.clone(var1.INACCESSIBLE_ASSET_MODELS))
var1.ShareDialogModel.SHARING = table.freeze(var135)
local var145 = {}
var145.state = "CantShare"
var145.assetModels = table.freeze(table.clone(var1.UNSHARABLE_ASSET_MODELS))
var1.ShareDialogModel.CANT_SHARE = table.freeze(var145)
local var155 = {}
var155.state = "UnexpectedError"
var1.ShareDialogModel.UNEXPECTED_ERROR = table.freeze(var155)
table.freeze(var1.ShareDialogModel)
return table.freeze(var1)
