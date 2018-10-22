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

local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local MouseManager = require(Plugin.Core.Util.MouseManager)
local Images = require(Plugin.Core.Util.Images)
local InsertAsset = require(Plugin.Core.Util.InsertAsset)

local getNetwork = require(Plugin.Core.Consumers.getNetwork)
local getPlugin = require(Plugin.Core.Consumers.getPlugin)
local withTheme = require(Plugin.Core.Consumers.withTheme)

local AssetCreatorName = require(Plugin.Core.Components.Asset.AssetCreatorName)
local AssetIcon = require(Plugin.Core.Components.Asset.AssetIcon)
local AssetName = require(Plugin.Core.Components.Asset.AssetName)
local DraggableButton = require(Plugin.Core.Components.DraggableButton)
local DropShadow = require(Plugin.Core.Components.DropShadow)
local Voting = require(Plugin.Core.Components.Asset.Voting.Voting)

local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)

local Asset = Roact.PureComponent:extend("Asset")

function Asset:init(props)
	local plugin = getPlugin(self)

	if not props.asset then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox asset id %s: asset not found"):format(tostring(props.assetId)))
		end
		return
	end

	local assetData = props.asset
	local asset = assetData.Asset
	local assetId = asset.Id
	local assetName = asset.Name
	local assetTypeId = asset.TypeId

	local onAssetHovered = props.onAssetHovered
	local onAssetHoverEnded = props.onAssetHoverEnded
	local canInsertAsset = props.canInsertAsset
	local categoryIndex = props.categoryIndex

	self.onMouseEntered = function(rbx, x, y)
		MouseManager:pushIcon(Images.CURSOR_POINTING_HAND)
		onAssetHovered(assetId)
	end

	self.onMouseLeave = function(rbx, x, y)
		onAssetHoverEnded(assetId)
		MouseManager:clearIcons()
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			onAssetHoverEnded(assetId)
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		onAssetHovered(assetId)
	end

	self.onMouseButton2Click = function(rbx, x, y)
		-- TODO CLIDEVSRVS-1247 CLIDEVSRVS-1248 ben.cooper 2018/05/07: On right click, show a context menu
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() or not settings():GetFFlag("PluginDragApi") then
			return
		end

		InsertAsset.dragInsertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful)
	end

	self.onClick = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end

		--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
		InsertAsset.insertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful, categoryIndex)
	end

	self.onAssetInsertionSuccesful = function(assetId)
		self.props.insertAsset(getNetwork(self), assetId)
		self.props.onAssetInserted()
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

			Outline = isHovered and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = isDarkerTheme and 0 or Constants.ASSET_OUTLINE_HOVERED_TRANSPARENCY,

				BackgroundColor3 = outlineTheme.backgroundColor,
				BorderColor3 = outlineTheme.borderColor,

				BorderSizePixel = 1,
				Position = UDim2.new(0.5, 0, 0, -Constants.ASSET_OUTLINE_PADDING),
				Size = UDim2.new(1, 2 * Constants.ASSET_OUTLINE_PADDING, 1, assetOutlineHeight),
				ZIndex = -1,
				AutoButtonColor = false,

				[Roact.Event.MouseLeave] = self.onMouseLeave,
				[Roact.Event.InputEnded] = self.onInputEnded,
			}),

			InnerFrame = Roact.createElement(DraggableButton, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),

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

					onPreviewAudioButtonClicked = props.onPreviewAudioButtonClicked,
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

	return {
		asset = idToAssetMap[assetId],
		voting = voting[assetId] or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		insertAsset = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(Asset)
