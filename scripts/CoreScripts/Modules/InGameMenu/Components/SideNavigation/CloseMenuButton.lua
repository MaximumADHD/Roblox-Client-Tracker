local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local GlobalConfig = require(InGameMenu.GlobalConfig)

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton

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
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement(ImageSetButton, {
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = 1,
		Image = Assets.Images.CloseButton,
		Position = props.Position,
		Size = UDim2.new(0, 32, 0, 32),
		LayoutOrder = props.layoutOrder,
		SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),

		[Roact.Event.Activated] = props.onActivated,
		[Roact.Event.SelectionGained] = props.onSelectionGained,
		[Roact.Event.SelectionLost] = props.onSelectionLost,
		[Roact.Ref] = props.forwardRef,
	})
end

local function CloseMenuButton(props)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return renderWithSelectionCursor(props, getSelectionCursor)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(CloseMenuButton, Cryo.Dictionary.join(props, {
		forwardRef = ref,
	}))
end)
