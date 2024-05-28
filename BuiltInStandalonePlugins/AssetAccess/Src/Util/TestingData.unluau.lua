-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetAccess").Src.Types)
local var1 = {}
var1.AssetMetadata = {}
local var78 = {}
var78.id = 123
var78.visibility = "Public"
var78.name = "Asset1"
var78.owner = "User1"
var78.type = Enum.AssetType.Audio
var1.AssetMetadata.PUBLIC = table.freeze(var78)
local var87 = {}
var87.id = 456
var87.visibility = "Private"
var1.AssetMetadata.PRIVATE = table.freeze(var87)
table.freeze(var1.AssetMetadata)
var1.AssetModel = {}
local var96 = {}
var96.state = "Loaded"
var96.metadata = table.freeze(table.clone(var1.AssetMetadata.PUBLIC))
var1.AssetModel.LOADED_PUBLIC = table.freeze(var96)
local var107 = {}
var107.state = "Loaded"
var107.metadata = table.freeze(table.clone(var1.AssetMetadata.PRIVATE))
var1.AssetModel.LOADED_PRIVATE = table.freeze(var107)
local var118 = {}
var118.state = "Loading"
var1.AssetModel.LOADING = table.freeze(var118)
local var123 = {}
var123.state = "Failed"
var1.AssetModel.FAILED = table.freeze(var123)
table.freeze(var1.AssetModel)
local var135 = table.freeze(table.clone(var1.AssetModel.LOADED_PUBLIC))
{}[456] = table.freeze(table.clone(var1.AssetModel.LOADED_PRIVATE))
{}[789] = table.freeze(table.clone(var1.AssetModel.LOADING))
{}[101112] = table.freeze(table.clone(var1.AssetModel.FAILED))
var1.ASSET_MODELS = table.freeze({})
var1.ShareDialogModel = {}
local var161 = {}
var161.state = "Inactive"
var1.ShareDialogModel.INACTIVE = table.freeze(var161)
local var166 = {}
var166.state = "Prompt"
var166.assetModels = table.freeze(table.clone(var1.ASSET_MODELS))
var1.ShareDialogModel.PROMPT = table.freeze(var166)
local var176 = {}
var176.state = "Sharing"
var176.assetModels = table.freeze(table.clone(var1.ASSET_MODELS))
var1.ShareDialogModel.SHARING = table.freeze(var176)
local var186 = {}
var186.state = "CantShare"
var186.assetModels = table.freeze(table.clone(var1.ASSET_MODELS))
var1.ShareDialogModel.CANT_SHARE = table.freeze(var186)
local var196 = {}
var196.state = "UnexpectedError"
var1.ShareDialogModel.UNEXPECTED_ERROR = table.freeze(var196)
table.freeze(var1.ShareDialogModel)
return table.freeze(var1)
