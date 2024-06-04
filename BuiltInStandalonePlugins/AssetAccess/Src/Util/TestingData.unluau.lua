-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetAccess").Src.Types)
local var1 = {}
var1.AssetMetadata = {}
local var166 = {}
var166.id = 123
var166.visibility = "Public"
var166.name = "Asset1"
var166.owner = "User1"
var166.type = Enum.AssetType.Audio
var1.AssetMetadata.PUBLIC = table.freeze(var166)
local var175 = {}
var175.id = 456
var175.visibility = "Private"
var1.AssetMetadata.PRIVATE = table.freeze(var175)
table.freeze(var1.AssetMetadata)
var1.AssetModel = {}
local var184 = {}
var184.state = "Loaded"
var184.metadata = table.freeze(table.clone(var1.AssetMetadata.PUBLIC))
var1.AssetModel.LOADED_PUBLIC = table.freeze(var184)
local var195 = {}
var195.state = "Loaded"
var195.metadata = table.freeze(table.clone(var1.AssetMetadata.PRIVATE))
var1.AssetModel.LOADED_PRIVATE = table.freeze(var195)
local var206 = {}
var206.state = "Loading"
var1.AssetModel.LOADING = table.freeze(var206)
local var211 = {}
var211.state = "Failed"
var1.AssetModel.FAILED = table.freeze(var211)
table.freeze(var1.AssetModel)
local var223 = table.freeze(table.clone(var1.AssetModel.LOADED_PUBLIC))
{}[456] = table.freeze(table.clone(var1.AssetModel.LOADED_PRIVATE))
{}[789] = table.freeze(table.clone(var1.AssetModel.LOADING))
local var244 = table.freeze(table.clone(var1.AssetModel.FAILED))
{}[101112] = var244
var1.INACCESSIBLE_ASSET_MODELS = table.freeze({})
var1.UNSHARABLE_ASSET_MODELS = {}
var1.INACCESSIBLE_ASSET_IDS = {}
var1.UNSHARABLE_ASSET_IDS = {}
local var249 = var1.INACCESSIBLE_ASSET_MODELS
local var250 = nil
local var251 = nil
table.insert(var1.INACCESSIBLE_ASSET_IDS, var244)
if var244 % 2 == 1 then
   table.insert(var1.UNSHARABLE_ASSET_IDS, var244)
   local var0 = var1.UNSHARABLE_ASSET_MODELS
   table.freeze(table.clone(var1.AssetModel.FAILED)) = table.freeze(table.clone(var262))
end
table.freeze(var1.UNSHARABLE_ASSET_MODELS)
table.freeze(var1.INACCESSIBLE_ASSET_IDS)
table.freeze(var1.UNSHARABLE_ASSET_IDS)
var1.ShareDialogModel = {}
local var274 = {}
var274.state = "Inactive"
var1.ShareDialogModel.INACTIVE = table.freeze(var274)
local var279 = {}
var279.state = "Prompt"
var279.assetModels = table.freeze(table.clone(var1.INACCESSIBLE_ASSET_MODELS))
var1.ShareDialogModel.PROMPT = table.freeze(var279)
local var289 = {}
var289.state = "Sharing"
var289.assetModels = table.freeze(table.clone(var1.INACCESSIBLE_ASSET_MODELS))
var1.ShareDialogModel.SHARING = table.freeze(var289)
local var299 = {}
var299.state = "CantShare"
var299.assetModels = table.freeze(table.clone(var1.UNSHARABLE_ASSET_MODELS))
var1.ShareDialogModel.CANT_SHARE = table.freeze(var299)
local var309 = {}
var309.state = "UnexpectedError"
var1.ShareDialogModel.UNEXPECTED_ERROR = table.freeze(var309)
table.freeze(var1.ShareDialogModel)
return table.freeze(var1)
