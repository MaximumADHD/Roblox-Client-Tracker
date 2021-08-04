local Plugin = script.Parent.Parent.Parent.Parent -- Points to ./Client/RobloxStudio/BootcampPlugin

-- Import Roact and DevFramework
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

-- Import the button from DevFramework
local Button = Framework.UI.Button

-- Create your Roact Component
local RIDE4799 = Roact.PureComponent:extend("RIDE4799")

-- Create new Part
local function onClick()
	local r = Random.new()

	local part = Instance.new("Part")
	part.Name = "My part"
	part.Color = Color3.fromRGB(27, 143, 143)
	part.Position = part.Position + Vector3.new(r:NextInteger(-10, 10), 0, r:NextInteger(-10, 10))
	part.Parent = workspace
end

function RIDE4799:render()
	local localization = self.props.Localization
	return Roact.createElement(Button, {
		Text = localization:getText("TutorialComponents", "RIDE4799"),
		OnClick = onClick,
	})
end

-- Return your component
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

-- Rest of your code

RIDE4799 = withContext({
	Localization = ContextServices.Localization,
})(RIDE4799)

return RIDE4799
