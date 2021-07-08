local Plugin = script.Parent.Parent.Parent.Parent -- Points to ./Client/RobloxStudio/BootcampPlugin

-- Import Roact and DevFramework
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

-- Import ContextServices
local ContextServices = Framework.ContextServices

-- Import the button from DevFramework
local Button = Framework.UI.Button

-- Create your Roact Component
local STM643 = Roact.PureComponent:extend("STM643")

-- We define the function outside the render method to avoid recreating it on each change (hover, click, etc.)
local function onClick()
	local r = Random.new()

	local part = Instance.new("Part")
	part.Name = "My part"
	part.Color = Color3.fromRGB(27, 143, 143)
	part.Position = part.Position + Vector3.new(r:NextInteger(-10, 10), 0, r:NextInteger(-10, 10))
	part.Parent = workspace -- workspace is a Roblox global, you can get this with game:GetService("Workspace") as well
end

function STM643:render()
	local localization = self.props.Localization

	return Roact.createElement(Button, {
		Text = localization:getText("TutorialComponents", "STM643"),
		OnClick = onClick,
	})
end

ContextServices.mapToProps(STM643, {
	Localization = ContextServices.Localization,
})

-- Return your component
return STM643