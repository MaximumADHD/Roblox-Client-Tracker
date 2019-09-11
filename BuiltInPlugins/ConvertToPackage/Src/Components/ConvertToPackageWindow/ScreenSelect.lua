--[[
	ScreenSelect determines which screen to display for the converting to package

	Necessary Props:
		currentScreen string, the current screen ID to display from Util/Constants.lua
		onClose callback, passed into each component
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Components = Plugin.Src.Components
local AssetConfig = require(Components.ConvertToPackageWindow.AssetConfig)
local AssetUpload = require(Components.ConvertToPackageWindow.AssetUpload)
local AssetUploadResult = require(Components.ConvertToPackageWindow.AssetUploadResult)

local Constants = require(Plugin.Src.Util.Constants)

local function showAssetConfig(currentScreen)
	return currentScreen == Constants.SCREENS.CONFIGURE_ASSET
end

local function showAssetUpload(currentScreen)
	return currentScreen == Constants.SCREENS.UPLOADING_ASSET
end

local function showAssetUploadResult(currentScreen)
	return currentScreen == Constants.SCREENS.UPLOAD_ASSET_RESULT
end

local ScreenSelect = Roact.PureComponent:extend("ScreenSelect")

function ScreenSelect:render()
	local props = self.props
	local currentScreen = props.currentScreen
	local size = UDim2.new(1, 0, 1, 0)
	local onClose = props.onClose
	local instances = props.instances
	local assetName =  props.assetName
	local pluginGui = props.pluginGui
	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
	}, {
		AssetConfig = showAssetConfig(currentScreen) and Roact.createElement(AssetConfig, {
			Size = size,
			assetName = assetName,
			onClose = onClose,
			pluginGui = pluginGui,
			instances = instances
		}),

		AssetUpload = showAssetUpload(currentScreen) and Roact.createElement(AssetUpload, {
			Size = size,
			onClose = onClose,
			instances = instances
		}),

		AssetUploadResult = showAssetUploadResult(currentScreen) and Roact.createElement(AssetUploadResult, {
			Size = size,
			onClose = onClose,
			instances = instances
		}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		currentScreen = state.AssetConfigReducer.currentScreen,
	}
end

return RoactRodux.connect(mapStateToProps)(ScreenSelect)