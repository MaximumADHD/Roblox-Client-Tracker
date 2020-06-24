--[[
	ScreenSelect determines which screen to display for the asset configuration / uploading flow.
	Used inside of AssetConfigWrapper

	Necessary Props:
		currentScreen string, the current screen ID to display from Util/AssetConfigConstants.lua
		onClose callback, passed into each component

	Optional Props:
		assetId number, passed into AssetConfig
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Components = Plugin.Core.Components
local AssetConfig = require(Components.AssetConfiguration.AssetConfig)
local AssetTypeSelection = require(Components.AssetConfiguration.AssetTypeSelection)
local AssetValidation = require(Components.AssetConfiguration.AssetValidation)
local AssetUpload = require(Components.AssetConfiguration.AssetUpload)
local AssetUploadResult = require(Components.AssetConfiguration.AssetUploadResult)

local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local function showAssetConfig(currentScreen)
	return currentScreen == AssetConfigConstants.SCREENS.CONFIGURE_ASSET
end

local function showAssetTypeSelection(currentScreen)
	return currentScreen == AssetConfigConstants.SCREENS.ASSET_TYPE_SELECTION
end

local function showAssetValidation(currentScreen)
	return currentScreen == AssetConfigConstants.SCREENS.ASSET_VALIDATION
end

local function showAssetUpload(currentScreen)
	return currentScreen == AssetConfigConstants.SCREENS.UPLOADING_ASSET
end

local function showAssetUploadResult(currentScreen)
	return currentScreen == AssetConfigConstants.SCREENS.UPLOAD_ASSET_RESULT
end

local ScreenSelect = Roact.PureComponent:extend("ScreenSelect")

function ScreenSelect:render()
	local props = self.props

	local currentScreen = props.currentScreen

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		AssetConfig = showAssetConfig(currentScreen) and Roact.createElement(AssetConfig, {
			Size = UDim2.new(1, 0, 1, 0),

			assetId = props.assetId,
			assetTypeEnum = props.assetTypeEnum,
			onClose = props.onClose,

			pluginGui = props.pluginGui,
		}),

		AssetTypeSelection = showAssetTypeSelection(currentScreen) and Roact.createElement(AssetTypeSelection, {
			Size = UDim2.new(1, 0, 1, 0),
			onClose = props.onClose,
		}),

		AssetValidation = showAssetValidation(currentScreen) and Roact.createElement(AssetValidation, {
			Size = UDim2.new(1, 0, 1, 0),
			onClose = props.onClose,
		}),

		AssetUpload = showAssetUpload(currentScreen) and Roact.createElement(AssetUpload, {
			Size = UDim2.new(1, 0, 1, 0),
			onClose = props.onClose,
		}),

		AssetUploadResult = showAssetUploadResult(currentScreen) and Roact.createElement(AssetUploadResult, {
			Size = UDim2.new(1, 0, 1, 0),
			onClose = props.onClose,
		}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		currentScreen = state.currentScreen,
	}
end

return RoactRodux.connect(mapStateToProps)(ScreenSelect)