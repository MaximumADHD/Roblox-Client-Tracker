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
		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local Util = Plugin.Core.Util
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)
local ContextMenuHelper = require(Util.ContextMenuHelper)
local PageInfoHelper = require(Util.PageInfoHelper)

local getModal = ContextGetter.getModal
local getPlugin = ContextGetter.getPlugin
local getNetwork = ContextGetter.getNetwork
local withModal = ContextHelper.withModal

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)

local PlayPreviewSound = require(Plugin.Core.Actions.PlayPreviewSound)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)
local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)
local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local withLocalization = ContextHelper.withLocalization

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

function AssetGridContainer:init(props)
	self.state = {
		hoveredAssetId = 0,
		isShowingToolMessageBox = false,
	}

	-- Keep track of the timestamp an asset was last inserted
	-- Prevents double clicking on assets inserting 2 instead of just 1
	self.lastAssetInsertedTime = 0

	self.onAssetInserted = function()
		self.lastAssetInsertedTime = tick()
	end

	self.canInsertAsset = function()
		return (tick() - self.lastAssetInsertedTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
			and not self.insertToolPromise:isWaiting()
	end

	self.openAssetPreview = function(assetData)
		local modal = getModal(self)
		modal.onAssetPreviewToggled(true)
		self.props.onPreviewToggled(true)
		self:setState({
			previewAssetData = assetData,
		})
	end

	self.closeAssetPreview = function()
		local modal = getModal(self)
		modal.onAssetPreviewToggled(false)
		self.props.onPreviewToggled(false)
		self:setState({
			previewAssetData = Roact.None,
		})
	end

	self.onAssetHovered = function(assetId)
		local modal = getModal(self)
		if self.state.hoveredAssetId == 0 and modal.canHoverAsset() then
			self:setState({
				hoveredAssetId = assetId,
			})
		end
	end

	self.onAssetHoverEnded = function(assetId)
		if self.state.hoveredAssetId == assetId then
			self:setState({
				hoveredAssetId = 0,
			})
		end
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

	self.onMessageBoxClosed = function()
		self:setState({
			isShowingToolMessageBox = false,
		})

		self.insertToolPromise:insertToWorkspace()
	end

	self.onMessageBoxButtonClicked = function(index, action)
		self:setState({
			isShowingToolMessageBox = false,
		})

		if action == "yes" then
			self.insertToolPromise:insertToStarterPack()
		elseif action == "no" then
			self.insertToolPromise:insertToWorkspace()
		end
	end

	self.onInsertToolPrompt = function()
		self:setState({
			isShowingToolMessageBox = true,
		})
	end

	self.onAssetGridContainerChanged = function()
		if self.props.onAssetGridContainerChanged then
			self.props.onAssetGridContainerChanged()
		end
	end

	self.insertToolPromise = InsertToolPromise.new(self.onInsertToolPrompt)

	self.onAssetInsertionSuccesful = function(assetId)
		self.props.onAssetInserted(getNetwork(self), assetId)
		self.onAssetInserted()
	end

	self.tryCreateContextMenu = function(assetData, showEditOption, localizedContent)
		local asset = assetData.Asset
		local assetId = asset.Id
		local assetTypeId = asset.TypeId
		local plugin = getPlugin(self)
		ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId, showEditOption, localizedContent, props.tryOpenAssetConfig)
	end

	self.tryInsert = function(assetData, assetWasDragged)
		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local currentProps = self.props
		local categoryIndex = currentProps.categoryIndex or 1
		local searchTerm = currentProps.searchTerm or ""
		local assetIndex = currentProps.assetIndex
		local categories = currentProps.categories

		local plugin = getPlugin(self)
		InsertAsset.tryInsert({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = self.onAssetInsertionSuccesful,
				categoryIndex = categoryIndex,
				currentCategoryName = PageInfoHelper.getCategory(categories, categoryIndex),
				searchTerm = searchTerm,
				assetIndex = assetIndex,
			},
			self.insertToolPromise,
			assetWasDragged
		)
	end
end

function AssetGridContainer:willUnmount()
	self.insertToolPromise:destroy()
end

function AssetGridContainer.getDerivedStateFromProps(nextProps, lastState)
	local lastHoveredAssetStillVisible = false
	for _, assetTable in ipairs(nextProps.assetIds) do
		local assetId = assetTable[1]
		if lastState.hoveredAssetId == assetId then
			lastHoveredAssetStillVisible = true
			break
		end
	end

	if not lastHoveredAssetStillVisible then
		return {
			hoveredAssetId = 0
		}
	end
end

function AssetGridContainer:render()
	return withModal(function(_, modalStatus)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state

			local assetIds = props.assetIds

			local position = props.Position or UDim2.new(0, 0, 0, 0)
			local size = props.Size or UDim2.new(1, 0, 1, 0)

			local currentSoundId = props.currentSoundId
			local isPlaying = props.isPlaying

			local previewAssetData = state.previewAssetData

			local categoryIndex = props.categoryIndex

			local onPreviewAudioButtonClicked = self.onPreviewAudioButtonClicked

			local hoveredAssetId = modalStatus:canHoverAsset() and state.hoveredAssetId or 0
			local isShowingToolMessageBox = state.isShowingToolMessageBox

			local assetElements = {
				UIGridLayout = Roact.createElement("UIGridLayout", {
					CellPadding = UDim2.new(0, Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
						0, Constants.BETWEEN_ASSETS_VERTICAL_PADDING),
					CellSize = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT),
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Event.Changed] = self.onAssetGridContainerChanged,
				})
			}

			local function tryCreateLocalizedContextMenu(assetData, showEditOption)
				self.tryCreateContextMenu(assetData, showEditOption, localizedContent)
			end

			for index, asset in ipairs(assetIds) do
				local assetId = asset[1]
				local assetIndex = asset[2]

				assetElements[tostring(assetId)] = Roact.createElement(Asset, {
					assetId = assetId,
					LayoutOrder = index,
					assetIndex = assetIndex,

					isHovered = assetId == hoveredAssetId,
					hoveredAssetId = hoveredAssetId,

					currentSoundId = currentSoundId,
					isPlaying = isPlaying,

					categoryIndex = categoryIndex,

					onAssetHovered = self.onAssetHovered,
					onAssetHoverEnded = self.onAssetHoverEnded,

					onPreviewAudioButtonClicked = onPreviewAudioButtonClicked,
					onAssetPreviewButtonClicked = self.openAssetPreview,

					onAssetInserted = self.onAssetInserted,
					canInsertAsset = self.canInsertAsset,
					tryInsert = self.tryInsert,
					tryCreateContextMenu = tryCreateLocalizedContextMenu,
				})
			end

			assetElements.ToolMessageBox = isShowingToolMessageBox and Roact.createElement(MessageBox, {
				Name = "ToolboxToolMessageBox",

				Title = "Insert Tool",
				Text = "Put this tool into the starter pack?",
				Icon = Images.INFO_ICON,

				onClose = self.onMessageBoxClosed,
				onButtonClicked = self.onMessageBoxButtonClicked,

				buttons = {
					{
						Text = "Yes",
						action = "yes",
					}, {
						Text = "No",
						action = "no",
					}
				}
			})

			assetElements.AssetPreview = previewAssetData and Roact.createElement(AssetPreviewWrapper, {
				assetData = previewAssetData,

				canInsertAsset = self.canInsertAsset,
				tryInsert = self.tryInsert,
				tryCreateContextMenu = tryCreateLocalizedContextMenu,
				onClose = self.closeAssetPreview
			})

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,

				[Roact.Event.InputEnded] = self.onFocusLost,
			}, assetElements)
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	local pageInfo = state.pageInfo or {}

	local categoryIndex = pageInfo.categoryIndex or 1

	return {
		currentSoundId = sound.currentSoundId or 0,
		isPlaying = sound.isPlaying or false,
		categoryIndex = categoryIndex or 1,
		categories = pageInfo.categories or {},
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

		onAssetInserted = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,

		onPreviewToggled = function(isPreviewing)
			dispatch(SetAssetPreview(isPreviewing))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
