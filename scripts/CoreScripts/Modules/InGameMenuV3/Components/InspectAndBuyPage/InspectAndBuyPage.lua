--[[
	Landing page for the InspectAndBuyV2
	This page renders all of the item tiles and their footers
	for the user that is being inspected. It can be navigated to
	by selecting and inspecting a player from the Players page
	in the InGameMenuV3
]]
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local withStyle = UIBlox.Core.Style.withStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Page = require(InGameMenu.Components.Page)

local GetCharacterModelFromUserId = require(InGameMenu.Thunks.GetCharacterModelFromUserId)
local GetAssetsFromHumanoidDescription = require(InGameMenu.Thunks.GetAssetsFromHumanoidDescription)
local UpdateStoreId = require(InGameMenu.Actions.InspectAndBuy.UpdateStoreId)

local InspectAndBuyPage = Roact.PureComponent:extend("InspectAndBuyPage")

local AVATAR_HEADSHOT_SIZE = 48
local CELL_HEIGHT = 122
local CELL_WIDTH = 130
local CELL_PADDING_X = 12
local CELL_PADDING_Y = 72
local GRID_PADDING_TOP = 24
local LEAVE_BUTTON_HEIGHT = 84
local MAX_CELLS_PER_ROW = 2
local SHIMMER_CELLS = 10

InspectAndBuyPage.validateProps = t.strictInterface({
	pageTitle = t.optional(t.string),

	-- from mapStateToProps
	inspectedDisplayName = t.optional(t.string),
	inspectedUserId = t.optional(t.number),
	assets = t.table,

	-- from mapDispatchToProps
	getCharacterModelFromUserId = t.callback,
	getAssetsFromHumanoidDescription = t.callback,
	updateStoreId = t.callback,
})

function InspectAndBuyPage:init()
	-- When initializing the menu, update the storeId so calls to
	-- perform fetch aren't colliding
	self.props.updateStoreId()
end

function InspectAndBuyPage:getAvatarHeadshot(style)
	local headshotUrl = nil
	if self.props.inspectedUserId and self.props.inspectedUserId ~= "" then
		headshotUrl ="rbxthumb://type=AvatarHeadShot&id=" .. self.props.inspectedUserId
			.. "&w=" .. AVATAR_HEADSHOT_SIZE .. "&h=" .. AVATAR_HEADSHOT_SIZE
	else 
		return nil
	end

	return Roact.createElement("ImageLabel", {
		Size = UDim2.fromOffset(AVATAR_HEADSHOT_SIZE, AVATAR_HEADSHOT_SIZE),
		BackgroundColor3 = style.Theme.BackgroundContrast.Color,
		BorderSizePixel = 0,
		Image = headshotUrl,
		LayoutOrder = 1,
	}, {
		MaskFrame = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = "rbxasset://textures/ui/LuaApp/graphic/gr-avatar mask-90x90.png",
			ImageColor3 = style.Theme.BackgroundDefault.Color,
		}),
	})
end

function InspectAndBuyPage:renderWithProviders(style, localized, getSelectionCursor)
	local assetCards = {}
	assetCards["UIGridLayout"] = Roact.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, CELL_PADDING_X, 0, CELL_PADDING_Y),
		CellSize = UDim2.new(0, CELL_WIDTH, 0, CELL_HEIGHT),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirectionMaxCells = 2,
	})
	assetCards["UIPadding"] = Roact.createElement("UIPadding", {
		PaddingTop = UDim.new(0, GRID_PADDING_TOP),
	})

	local numAssets = 0
	for _, asset in pairs(self.props.assets) do
		numAssets += 1
		-- TODO: AVBURST-8596 Create New Item Tile
		assetCards[asset.assetId] = Roact.createElement("Frame", {
			Size = UDim2.fromOffset(CELL_WIDTH, CELL_HEIGHT),
			BackgroundTransparency = 0,
		})
	end
	if numAssets == 0 then
		for i = 1, SHIMMER_CELLS do
			numAssets += 1
			assetCards["Shimmer" .. i] = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0, CELL_WIDTH, 0, CELL_HEIGHT),
			})
		end
	end

	local numRows = math.ceil(numAssets / MAX_CELLS_PER_ROW)
	local canvasHeight = numRows * (CELL_HEIGHT + CELL_PADDING_Y) + GRID_PADDING_TOP + LEAVE_BUTTON_HEIGHT
	return Roact.createElement(Page, {
		useLeaveButton = true,
		pageTitle = self.props.inspectedDisplayName,
		titleChildren = self:getAvatarHeadshot(style),
	}, {
		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			CanvasSize = UDim2.fromOffset(0, canvasHeight),
		}, assetCards)
	})
end

function InspectAndBuyPage:render()
	return withStyle(function(style)
		return withLocalization({
		})(function(localized)
			return withSelectionCursorProvider(function(getSelectionCursor)
				return self:renderWithProviders(style, localized, getSelectionCursor)
			end)
		end)
	end)
end

function InspectAndBuyPage:onPlayerInspected()
	local playerId = self.props.inspectedUserId
	if playerId then
		self.props.getCharacterModelFromUserId(playerId, false, function(character)
			if self and self.isMounted then
				self.character = character
				local humanoidDescription = self.character.Humanoid.HumanoidDescription

				if humanoidDescription then
					self.props.getAssetsFromHumanoidDescription(humanoidDescription)
				end
			end
		end)
	end
end

function InspectAndBuyPage:didUpdate(prevProps, prevState)
	if self.props.inspectedUserId and self.props.inspectedUserId ~= prevProps.inspectedUserId then
		self:onPlayerInspected()
	end
end

function InspectAndBuyPage:didMount()
	self.isMounted = true
end

function InspectAndBuyPage:willUnmount()
	self.isMounted = false
end

return RoactRodux.connect(function(state, props)
	return {
		inspectedDisplayName = state.inspectAndBuy.DisplayName,
		inspectedUserId = state.inspectAndBuy.UserId,
		assets = state.inspectAndBuy.Assets,
	}
end, function(dispatch)
	return {
		getCharacterModelFromUserId = function(userId, isLocalPlayer, callback)
			dispatch(GetCharacterModelFromUserId(userId, isLocalPlayer, callback))
		end,
		getAssetsFromHumanoidDescription = function(humanoidDescription)
			dispatch(GetAssetsFromHumanoidDescription(humanoidDescription))
		end,
		updateStoreId = function()
			dispatch(UpdateStoreId())
		end,
	}
end)(InspectAndBuyPage)
