local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local GlobalConfig = require(InGameMenu.GlobalConfig)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),

	onActivated = t.callback,
	layoutOrder = t.optional(t.integer),
})

local function CloseMenuButton(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement(ImageSetButton, {
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = 1,
		Image = Assets.Images.CloseButton,
		Position = props.Position,
		Size = UDim2.new(0, 32, 0, 32),
		[Roact.Event.Activated] = props.onActivated,
		LayoutOrder = props.layoutOrder,
	})
end

return CloseMenuButton