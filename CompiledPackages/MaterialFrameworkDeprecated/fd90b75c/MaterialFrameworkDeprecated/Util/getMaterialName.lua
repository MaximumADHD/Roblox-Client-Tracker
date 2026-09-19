local main = script.Parent.Parent
local Types = require(main.Types)

local Resources = require(main.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local parseMaterial = require(main.Util.parseMaterial)

return function(material: Types.Material, localization: any?): string
	local baseMaterial, materialVariant = parseMaterial(material)
	if materialVariant then
		return materialVariant.Name
	elseif localization then
		return localization:getProjectText(LOCALIZATION_PROJECT_NAME, "Materials", baseMaterial.Name)
	else
		return baseMaterial.Name
	end
end
