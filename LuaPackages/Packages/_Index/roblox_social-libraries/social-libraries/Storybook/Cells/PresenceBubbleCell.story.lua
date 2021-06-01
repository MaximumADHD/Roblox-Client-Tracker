local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local PresenceBubbleCell = require(SocialLibraries.Components.Cells.PresenceBubbleCell)

local SAMPLE_ICON_PATH = "rbxasset://textures/ui/LuaChat/icons/ic-nametag.png"
local THREE_DOTS_PATH = "rbxasset://textures/ui/LuaChat/icons/ic-more.png"

return Roact.createElement("Frame", {
	Size = UDim2.new(0, 400, 0, 600),
	BackgroundColor3 = Color3.new(255, 255, 255),
}, {
	layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	}),
	cell = Roact.createElement(PresenceBubbleCell, {
		icon = SAMPLE_ICON_PATH,
		BackgroundColor3 = Color3.new(255, 255, 255),
		LayoutOrder = 1,
	}),
	cell2 = Roact.createElement(PresenceBubbleCell, {
		icon = SAMPLE_ICON_PATH,
		BackgroundColor3 = Color3.new(255, 255, 255),
		LayoutOrder = 2,
	}, {
		padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 12),
		}),
		moreOptions = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 24, 0, 24),
			Image = THREE_DOTS_PATH,
		})
	}),
})
