local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)

local isBuilderIcon = require(Foundation.Utility.isBuilderIcon)

local function getBuilderIconVariant(guiObject: GuiObject): BuilderIcons.IconVariant?
	local hasText = pcall(function()
		return (guiObject :: any).Text
	end)

	if not hasText then
		return nil
	end

	local textGui: TextLabel | TextBox | TextButton = guiObject :: any

	if not isBuilderIcon(textGui.Text) then
		return nil
	end

	if textGui.FontFace.Weight == Enum.FontWeight.Bold then
		return BuilderIcons.IconVariant.Filled
	else
		return BuilderIcons.IconVariant.Regular
	end
end

return getBuilderIconVariant
