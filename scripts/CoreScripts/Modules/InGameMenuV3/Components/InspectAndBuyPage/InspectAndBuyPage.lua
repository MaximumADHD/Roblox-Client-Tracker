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

local InGameMenu = script.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Page = require(InGameMenu.Components.Page)

local InspectAndBuyPage = Roact.PureComponent:extend("InspectAndBuyPage")

local AVATAR_HEADSHOT_SIZE = 48

InspectAndBuyPage.validateProps = t.strictInterface({
	pageTitle = t.optional(t.string),

	-- from mapStateToProps
	inspectedDisplayName = t.optional(t.string),
	inspectedUserId = t.optional(t.number),
})

function InspectAndBuyPage:init()
	
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
	return Roact.createElement(Page, {
		useLeaveButton = true,
		pageTitle = self.props.inspectedDisplayName,
		titleChildren = self:getAvatarHeadshot(style),
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

function InspectAndBuyPage:didMount()
	self.isMounted = true
end

function InspectAndBuyPage:willUnmount()
	self.isMounted = false
end

return RoactRodux.connect(function(state, props)
	return {
		inspectedDisplayName = state.inspectAndBuy.DisplayName,
		inspectedUserId = state.inspectAndBuy.UserId
	}
end, function(dispatch)
	return {

	}
end)(InspectAndBuyPage)
