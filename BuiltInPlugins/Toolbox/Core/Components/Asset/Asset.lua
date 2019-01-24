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

		InsertToolPromise insertToolPromise
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Urls = require(Plugin.Core.Util.Urls)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local InsertAsset = require(Plugin.Core.Util.InsertAsset)

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local getNetwork = ContextGetter.getNetwork
local getPlugin = ContextGetter.getPlugin
local withTheme = ContextHelper.withTheme

local AssetCreatorName = require(Plugin.Core.Components.Asset.AssetCreatorName)
local AssetIcon = require(Plugin.Core.Components.Asset.AssetIcon)
local AssetName = require(Plugin.Core.Components.Asset.AssetName)
local DraggableButton = require(Plugin.Core.Components.DraggableButton)
local DropShadow = require(Plugin.Core.Components.DropShadow)
local Voting = require(Plugin.Core.Components.Asset.Voting.Voting)

local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")
local FFlagEnableCopyToClipboard = settings():GetFFlag("EnableCopyToClipboard")
local FFlagFixToolboxEventStream = settings():GetFFlag("FixToolboxEventStream")
local FFlagEnableMouseEnterForAllFix = settings():GetFFlag("EnableMouseEnterForAllFix")

local Asset = Roact.PureComponent:extend("Asset")

function getImageIdFromDecalId(decalId)
	local tbl = nil
	local success, errorMessage = pcall(function()
		local url = Urls.constructAssetIdString(decalId)
		if DebugFlags.shouldDebugUrls() then
			print(("Inserting decal %s"):format(url))
		end
		tbl = game:GetObjects(url)
	end)

	if success and tbl and tbl[1] then
		local decal = tbl[1]
		return decal.Texture:match("%d+")
	else
		return 0
	end
end

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

	local categoryIndex = props.categoryIndex or 1
	local searchTerm = props.searchTerm or ""
	local assetIndex = props.assetIndex or 0

	self.onMouseEntered = function(rbx, x, y)
		if FFlagEnableMouseEnterForAllFix then
			local myProps = self.props
			if (not myProps.isHovered) and myProps.hoveredAssetId ~= 0 and assetId ~= myProps.hoveredAssetId then
				return
			end

			onAssetHovered(assetId)
		else
			onAssetHovered(assetId)
		end
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
		-- We use this when mouseEnter event didn't trigger. 
		-- Let's keep it here just in case.
		if not FFlagEnableMouseEnterForAllFix then
			onAssetHovered(assetId)
		end
	end

	self.onMouseButton2Click = function(rbx, x, y)
		local menu = plugin:CreatePluginMenu("ToolboxAssetMenu")

		-- only add this action if we have access to copying to clipboard
		if FFlagEnableCopyToClipboard then
			local trueAssetId = assetId
			if assetTypeId == Enum.AssetType.Decal.Value then
				trueAssetId = getImageIdFromDecalId(assetId)
			end

			menu:AddNewAction("CopyIdToClipboard", "Copy Asset Id").Triggered:connect(function()
				StudioService:CopyToClipboard(trueAssetId)
			end)

			menu:AddNewAction("CopyURIToClipboard", "Copy Asset URI").Triggered:connect(function()
				StudioService:CopyToClipboard("rbxassetid://"..trueAssetId)
			end)
		end

		-- add an action to view an asset in browser
		menu:AddNewAction("OpenInBrowser", "View In Browser").Triggered:connect(function()
			local baseUrl = ContentProvider.BaseUrl
			local targetUrl = string.format("%s/library/%s/asset", baseUrl, HttpService:urlEncode(assetId))
			GuiService:OpenBrowserWindow(targetUrl)
		end)

		menu:ShowAsync()
		menu:Destroy()
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end

		--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
		if FFlagStudioLuaWidgetToolboxV2 then
			InsertAsset.dragInsertAsset({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = self.onAssetInsertionSuccesful,
				categoryIndex = categoryIndex,
				searchTerm = searchTerm,
				assetIndex = assetIndex,
				assetWasDragged = true,
			})
		elseif FFlagFixToolboxEventStream then
			InsertAsset.deprecatedDragInsertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful,
				categoryIndex, searchTerm, assetIndex)
		else
			InsertAsset.deprecatedDragInsertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful,
				categoryIndex)
		end
	end

	self.onClick = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end

		--TODO: CLIDEVSRVS-1691: Replacing category index with assetTypeId for package insertion in lua toolbox
		if FFlagStudioLuaWidgetToolboxV2 then
			InsertAsset.insertAsset({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = self.onAssetInsertionSuccesful,
				categoryIndex = categoryIndex,
				searchTerm = searchTerm,
				assetIndex = assetIndex,

				insertToolPromise = self.props.insertToolPromise,
			})
		elseif FFlagFixToolboxEventStream then
			InsertAsset.deprecatedInsertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful,
				categoryIndex, searchTerm, assetIndex)
		else
			InsertAsset.deprecatedInsertAsset(plugin, assetId, assetName, assetTypeId, self.onAssetInsertionSuccesful,
				categoryIndex)
		end
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
			}),

			InnerFrame = Roact.createElement(DraggableButton, {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, innerFrameHeight),

				[Roact.Event.MouseEnter] = self.onMouseEntered,
				[Roact.Event.MouseButton2Click] = self.onMouseButton2Click,
				[Roact.Event.MouseLeave] = self.onMouseLeave,
				[Roact.Event.InputEnded] = self.onInputEnded,
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

	local categoryIndex = nil
	local searchTerm = nil
	if FFlagStudioLuaWidgetToolboxV2 or FFlagFixToolboxEventStream then
		local pageInfo = state.pageInfo or {}
		categoryIndex = pageInfo.categoryIndex or 1
		searchTerm = pageInfo.searchTerm or ""
	end

	return {
		asset = idToAssetMap[assetId],
		voting = voting[assetId] or {},

		categoryIndex = categoryIndex,
		searchTerm = searchTerm,
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
