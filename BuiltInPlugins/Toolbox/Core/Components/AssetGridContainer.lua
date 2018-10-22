--[[
	A grid of assets. Use Layouter.calculateAssetsHeight() to know how tall it will be when the assets are rendered.

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)

		{number -> Asset} idToAssetMap
		[number] assetIds

		number currentSoundId
		boolean isPlaying

		callback onPreviewAudioButtonClicked()
]]

local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)

local getModal = require(Plugin.Core.Consumers.getModal)

local Asset = require(Plugin.Core.Components.Asset.Asset)

local PlayPreviewSound = require(Plugin.Core.Actions.PlayPreviewSound)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

function AssetGridContainer:init(props)
	self.state = {
		hoveredAssetId = 0,
	}

	-- Keep track of the timestamp an asset was last inserted
	-- Prevents double clicking on assets inserting 2 instead of just 1
	self.lastAssetInsertedTime = 0

	self.onAssetInserted = function()
		self.lastAssetInsertedTime = tick()
	end

	self.canInsertAsset = function()
		return tick() - self.lastAssetInsertedTime > Constants.TIME_BETWEEN_ASSET_INSERTION
	end

	self.onAssetHovered = function(assetId)
		if self.state.hoveredAssetId == 0 and self.state.hoveredAssetId ~= assetId and
			not getModal(self).isShowingModal() then
			self:setState({
				hoveredAssetId = assetId,
			})
		end
	end

	self.onAssetHoverEnded = function(assetId)
		self:setState({
			hoveredAssetId = 0,
		})
	end

	self.onFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.onAssetHoverEnded()
		end
	end

	self.onPreviewAudioButtonClicked = function(assetId)
		local currentSoundId = self.props.currentSoundId
		if currentSoundId == assetId then
			if self.props.isPlaying then
				self.props.pauseASound()

				Analytics.onSoundPaused()
				Analytics.onSoundPausedCounter()

			else
				self.props.resumeASound()

				Analytics.onSoundPlayed()
				Analytics.onSoundPlayedCounter()
			end
		else
			self.props.playASound(assetId)

			Analytics.onSoundPlayed()
			Analytics.onSoundPlayedCounter()
		end
	end
end

function AssetGridContainer.getDerivedStateFromProps(nextProps, lastState)
	if not nextProps.assetIds[lastState.hoveredAssetId] then
		return {
			hoveredAssetId = 0
		}
	end
end

function AssetGridContainer:render()
	local props = self.props
	local state = self.state

	local assetIds = props.assetIds

	local position = props.Position or UDim2.new(0, 0, 0, 0)
	local size = props.Size or UDim2.new(1, 0, 1, 0)

	local currentSoundId = props.currentSoundId
	local isPlaying = props.isPlaying

	local categoryIndex = props.categoryIndex

	local onPreviewAudioButtonClicked = self.onPreviewAudioButtonClicked

	local hoveredAssetId = state.hoveredAssetId

	local assetElements = {
		UIGridLayout = Roact.createElement("UIGridLayout", {
			CellPadding = UDim2.new(0, Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
				0, Constants.BETWEEN_ASSETS_VERTICAL_PADDING),
			CellSize = UDim2.new(0, Constants.ASSET_WIDTH, 0, Constants.ASSET_HEIGHT),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	for index, assetId in ipairs(assetIds) do
		assetElements[tostring(assetId)] = Roact.createElement(Asset, {
			assetId = assetId,
			LayoutOrder = index,

			isHovered = assetId == hoveredAssetId,

			currentSoundId = currentSoundId,
			isPlaying = isPlaying,

			categoryIndex = categoryIndex,

			onAssetHovered = self.onAssetHovered,
			onAssetHoverEnded = self.onAssetHoverEnded,

			onPreviewAudioButtonClicked = onPreviewAudioButtonClicked,

			onAssetInserted = self.onAssetInserted,
			canInsertAsset = self.canInsertAsset,
		})
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,

		[Roact.Event.InputEnded] = self.onFocusLost,
	}, assetElements)
end

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	local pageInfo = state.pageInfo or {}

	return {
		currentSoundId = sound.currentSoundId or 0,
		isPlaying = sound.isPlaying or false,
		categoryIndex = pageInfo.categoryIndex or 1,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		playASound = function(currentSoundId)
			dispatch(PlayPreviewSound(currentSoundId))
		end,

		pauseASound = function()
			dispatch(PausePreviewSound())
		end,

		resumeASound = function()
			dispatch(ResumePreviewSound())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
