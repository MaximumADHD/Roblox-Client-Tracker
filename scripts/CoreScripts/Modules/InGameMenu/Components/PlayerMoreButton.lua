local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local FFlagLuaMenuPerfImprovements = require(InGameMenu.Flags.FFlagLuaMenuPerfImprovements)

local Assets = require(InGameMenu.Resources.Assets)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local MoreButton = Roact.PureComponent:extend("MoreButton")

MoreButton.validateProps = t.strictInterface({
	onActivated = t.callback,
	LayoutOrder = t.integer,
	userId = FFlagLuaMenuPerfImprovements and t.number or nil,
})

function MoreButton:init()
	if FFlagLuaMenuPerfImprovements then
		self.onActivated = function ()
			self.props.onActivated(self.props.userId)
		end
	end
end

function MoreButton:render()
	return withStyle(function(style)
		local activated = self.props.onActivated
		if FFlagLuaMenuPerfImprovements then
			activated = self.props.onActivated and self.onActivated or nil
		end
		return Roact.createElement(ImageSetButton, {
			Size = UDim2.new(0, 36, 0, 36),
			BackgroundTransparency = 1,
			Image = Assets.Images.MoreActions,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			LayoutOrder = self.props.LayoutOrder,

			[Roact.Event.Activated] = activated
		})
	end)
end

return MoreButton