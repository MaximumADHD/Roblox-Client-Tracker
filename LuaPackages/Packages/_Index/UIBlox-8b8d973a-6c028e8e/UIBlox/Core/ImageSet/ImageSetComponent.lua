local createImageSetComponent = require(script.Parent.createImageSetComponent)

local GuiService = game:GetService("GuiService")

local CorePackages = script:FindFirstAncestor("CorePackages")

local success, scale = pcall(GuiService.GetResolutionScale, GuiService)
if not success or not CorePackages then
	scale = 1
end

return {
	Button = createImageSetComponent("ImageButton", scale),
	Label = createImageSetComponent("ImageLabel", scale),
}
