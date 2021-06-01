local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local IconWithTextCell = require(SocialLibraries.Components.Cells.IconWithTextCell)

local SAMPLE_ICON_PATH = "rbxasset://textures/ui/LuaChat/icons/ic-nametag.png"
local SAMPLE_ICON_PATH_2 = "rbxasset://textures/ui/LuaChat/icons/ic-add-friends.png"
local THREE_DOTS_PATH = "rbxasset://textures/ui/LuaChat/icons/ic-more.png"

return Roact.createElement("Frame", {
	Size = UDim2.new(0, 400, 0, 600),
	BackgroundColor3 = Color3.fromRGB(255,255,255),
}, {
	layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	}),
	cell = Roact.createElement(IconWithTextCell, {
		primaryIcon = SAMPLE_ICON_PATH,
		Text = string.rep("HELLO", 200),
		BackgroundColor3 = Color3.fromRGB(255,255,255),
		LayoutOrder = 1,
	}),
	cell2 = Roact.createElement(IconWithTextCell, {
		primaryIcon = SAMPLE_ICON_PATH_2,
		primaryIconSize = 36,
		Text = string.rep('W', 16),
		BackgroundColor3 = Color3.fromRGB(255,255,255),
		secondaryIcon = THREE_DOTS_PATH,
		LayoutOrder = 2,
	}),
})
