local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton

local StarterGui = game:GetService('StarterGui')
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local StarterPlayer = game:GetService("StarterPlayer")

local ICON_SIZE = 36
local ICON_PADDING = 1

local ITEM_SIZE_X = ICON_SIZE + 2 * ICON_PADDING
local ITEM_SIZE_Y = ITEM_SIZE_X

local ICON_SIZE_X = ICON_SIZE
local ICON_SIZE_Y = ICON_SIZE_X

local ICON_POSITION_X = (ITEM_SIZE_X - ICON_SIZE_X) / 2
local ICON_POSITION_Y = (ITEM_SIZE_Y - ICON_SIZE_Y) / 2

local ICON_POSITION_HOVERED_X = ICON_POSITION_X
local ICON_POSITION_HOVERED_Y = ICON_POSITION_Y - ICON_PADDING

local validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),

	onActivated = t.callback,
	onSelectionGained = t.optional(t.callback),
	onSelectionLost = t.optional(t.callback),
	forwardRef = t.optional(t.table),
})

local function renderWithSelectionCursor(props, getSelectionCursor)
	return Roact.createElement(ImageSetButton, {
		Visible = true,
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/ui/MenuBar/divider.png",
		Position = UDim2.new(0, ICON_POSITION_X, 0, ICON_POSITION_Y),
		Size = UDim2.new(0, 28, 0, ICON_SIZE_Y),
		LayoutOrder = props.layoutOrder,
		SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),

		[Roact.Event.Activated] = function()
			-- do nothing
		end,
		[Roact.Event.SelectionGained] = props.onSelectionGained,
		[Roact.Event.SelectionLost] = props.onSelectionLost,
		[Roact.Ref] = props.forwardRef,
	})
end

local function VRBarSeparator(props)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return renderWithSelectionCursor(props, getSelectionCursor)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(VRBarSeparator, Cryo.Dictionary.join(props, {
		forwardRef = ref,
	}))
end)

