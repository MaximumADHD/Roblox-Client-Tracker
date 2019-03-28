--[[
	Represents an asset in the grid view of the toolbox
	Takes in data from the endpoint as a prop
	Has events and callbacks for when it is hovered and clicked
	Shows asset icon, name, creator name and the voting details

	Props:
		Asset asset
		number LayoutOrder
		boolean isHovered

		callback onAssetHovered(number assetId)
		callback onAssetHoverEnded(number assetId)

		callback insertAsset(NetworkInterface networkInterface, number assetId)
		callback onAssetInserted()

		number currentSoundId
		boolean isPlaying
		callback onPreviewAudioButtonClicked
]]

local FFlagStudioToolboxFixMouseHover = settings():GetFFlag("StudioToolboxFixMouseHover")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local DebugFlags = require(Util.DebugFlags)

local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local Asset = Components.Asset
local DraggableButton = require(Components.DraggableButton)
local DropShadow = require(Components.DropShadow)
local AssetCreatorName = require(Asset.AssetCreatorName)
local AssetIcon = require(Asset.AssetIcon)
local AssetName = require(Asset.AssetName)
local Voting = require(Asset.Voting.Voting)

local Asset = Roact.PureComponent:extend("Asset")

function Asset:init(props)
	if not props.asset then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox asset id %s: asset not found"):format(tostring(props.assetId)))
		end
		return
	end

	local assetData = props.asset
	local asset = assetData.Asset
	local assetId = asset.Id

	local onAssetHovered = props.onAssetHovered
	local onAssetHoverEnded = props.onAssetHoverEnded
	local canInsertAsset = props.canInsertAsset

	self.onMouseEntered = function(rbx, x, y)
		onAssetHovered(assetId)
	end

	self.onMouseLeave = function(rbx, x, y)
		onAssetHoverEnded(assetId)
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			onAssetHoverEnded(assetId)
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		if FFlagStudioToolboxFixMouseHover then
			onAssetHovered(assetId)
		end
	end

	self.onMouseButton2Click = function(rbx, x, y)
		self.props.tryCreateContextMenu(assetData)
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end

		self.props.tryInsert(assetData, true)
	end

	self.onClick = function(rbx, x, y)
		if not self.props.canInsertAsset() then
			return
		end

		self.props.tryInsert(assetData, false)
	end

	self.onAssetPreviewButtonClicked = function()
		self.props.onAssetPreviewButtonClicked(assetData)
	end
end

function Asset:render()
	return withTheme(function(theme)
		local props = self.props

		if not props.asset then
			return
		end

		local assetData = props.asset

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetTypeId = asset.TypeId
		local isEndorsed = asset.IsEndorsed
		local assetName = asset.Name

		local creator = assetData.Creator
		local creatorName = creator.Name

		local votingProps = props.voting or {}
		local showVotes = votingProps.ShowVotes

		local layoutOrder = props.LayoutOrder
		local isHovered = props.isHovered

		local assetOutlineHeight = showVotes and Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING
			or Constants.ASSET_OUTLINE_EXTRA_HEIGHT

		local isDarkerTheme = theme.isDarkerTheme
		local outlineTheme = theme.asset.outline
		local dropShadowSize = Constants.DROP_SHADOW_SIZE
		local innerFrameHeight = isHovered and assetOutlineHeight - (2 * Constants.ASSET_OUTLINE_PADDING) or 0

		return Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = layoutOrder,
			BackgroundTransparency = 1,

			-- Need to raise the container up over the other assets to show the outline correctly
			ZIndex = isHovered and 2 or 1,
		}, {
			DropShadow = isHovered and isDarkerTheme and Roact.createElement(DropShadow, {
				-- Copy the size and position of the outline but add a few pixels extra
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, -(Constants.ASSET_OUTLINE_PADDING + dropShadowSize)),
				Size = UDim2.new(1, 2 * (Constants.ASSET_OUTLINE_PADDING + dropShadowSize),
					1, assetOutlineHeight + (2 * dropShadowSize)),
				ZIndex = -2, -- Ensure it's below the outline
			}),

			Outline = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = isHovered and (isDarkerTheme and 0 or Constants.ASSET_OUTLINE_HOVERED_TRANSPARENCY) or 1,

				BackgroundColor3 = outlineTheme.backgroundColor,
				BorderColor3 = outlineTheme.borderColor,

				BorderSizePixel = 1,
				Position = UDim2.new(0.5, 0, 0, -Constants.ASSET_OUTLINE_PADDING),
				Size = UDim2.new(1, 2 * Constants.ASSET_OUTLINE_PADDING, 1, assetOutlineHeight),
				ZIndex = -1,

				[Roact.Event.MouseLeave] = self.onMouseLeave,
				[Roact.Event.InputEnded] = self.onInputEnded,
			}),

			InnerFrame = Roact.createElement(DraggableButton, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, innerFrameHeight),

				[Roact.Event.MouseEnter] = self.onMouseEntered,
				[Roact.Event.MouseButton2Click] = self.onMouseButton2Click,
				onMouseMoved = self.onMouseMoved,

				onDragStart = self.onDragStart,
				onClick = self.onClick,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, Constants.ASSET_INNER_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),

				AssetIcon = Roact.createElement(AssetIcon, {
					Size = UDim2.new(1, 0, 1, 0),
					LayoutOrder = 0,

					assetId = assetId,
					assetName = assetName,
					isEndorsed = isEndorsed,
					typeId = assetTypeId,
					currentSoundId = props.currentSoundId,
					isPlaying = props.isPlaying,

					voting = votingProps,
					isHovered = isHovered,

					onPreviewAudioButtonClicked = props.onPreviewAudioButtonClicked,
					onAssetPreviewButtonClicked = self.onAssetPreviewButtonClicked,
				}),

				AssetName = Roact.createElement(AssetName, {
					Size = UDim2.new(1, 0, 0.45, 0),
					LayoutOrder = 1,

					assetId = assetId,
					assetName = assetName,
				}),

				CreatorName = isHovered and Roact.createElement(AssetCreatorName,{
					Size = UDim2.new(1, 0, 0.15, 0),
					LayoutOrder = 2,

					assetId = assetId,
					creatorName = creatorName,
				}),

				Voting = isHovered and showVotes and Roact.createElement(Voting, {
					LayoutOrder = 3,
					assetId = assetId,
					voting = votingProps,
				}),
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local voting = state.voting or {}

	local idToAssetMap = assets.idToAssetMap or {}

	local assetId = props.assetId

	local pageInfo = state.pageInfo or {}
	local categoryIndex = pageInfo.categoryIndex or 1
	local searchTerm = pageInfo.searchTerm or ""

	return {
		asset = idToAssetMap[assetId],
		voting = voting[assetId] or {},

		categoryIndex = categoryIndex,
		searchTerm = searchTerm,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps)(Asset)
