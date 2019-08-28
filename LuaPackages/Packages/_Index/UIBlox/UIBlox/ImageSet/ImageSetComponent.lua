local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local createImageSetComponent = require(script.Parent.createImageSetComponent)

local GuiService = game:GetService("GuiService")

local success, scale = pcall(GuiService.GetResolutionScale, GuiService)
if not success then
	scale = 1
end

return {
	Button = createImageSetComponent("ImageButton", scale),
	Label = createImageSetComponent("ImageLabel", scale),
}
