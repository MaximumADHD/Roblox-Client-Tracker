local Plugin = script.Parent.Parent.Parent.Parent -- Points to ./Client/RobloxStudio/BootcampPlugin
 
-- Import Roact and DevFramework
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
 
-- Import ContextServices
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
 
-- Import the button from DevFramework
local Button = Framework.UI.Button
 
-- Create your Roact Component
local RIDE4798 = Roact.PureComponent:extend("RIDE4798")
 
-- We define the function outside the render method to avoid recreating it on each change (hover, click, etc.)
local function onClick()
    local r = Random.new()
 
    local part = Instance.new("Part")
    part.Name = "My part"
    part.Color = Color3.fromRGB(27, 143, 143)
    part.Position = part.Position + Vector3.new(r:NextInteger(-10, 10), 0, r:NextInteger(-10, 10))
    part.Parent = workspace -- workspace is a Roblox global, you can get this with game:GetService("Workspace") as well
end
 
function RIDE4798:render()
    local localization = self.props.Localization
 
    return Roact.createElement(Button, {
        -- From Studio.BootcampPlugin.TutorialComponents.MYJIRATICKET in TranslationDevelopmentTable.csv
        Text = localization:getText("TutorialComponents", "RIDE4798"),
        OnClick = onClick,
    })
end

RIDE4798 = withContext({
	Localization = ContextServices.Localization,
})(RIDE4798)
 
-- Return your component
return RIDE4798