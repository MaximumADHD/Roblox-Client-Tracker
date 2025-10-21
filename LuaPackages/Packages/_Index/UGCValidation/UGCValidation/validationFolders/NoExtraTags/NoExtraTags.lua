local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CollectionService = game:GetService("CollectionService")
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local NoExtraTags = {}

NoExtraTags.categories = Constants.AllAssetUploadCategories
NoExtraTags.required_data = { ValidationEnums.SharedDataMember.rootInstance }
NoExtraTags.expected_failures = { "Asset_EF_TaggedJacket", "Bundle_EF_BodyWithLLLTagged.LeftLeg" }

NoExtraTags.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local inst = data.rootInstance :: Instance
	local objects = (inst :: Instance):GetDescendants()
	table.insert(objects, inst)

	local unauthorizedDescendantPaths = {}
	for _, obj in objects do
		if #CollectionService:GetTags(obj) > 0 then
			table.insert(unauthorizedDescendantPaths, obj:GetFullName())
		end
	end

	if #unauthorizedDescendantPaths > 0 then
		reporter:fail(ErrorSourceStrings.Keys.InstanceTagsFound, {
			ProblematicDescendantPaths = table.concat(unauthorizedDescendantPaths, ", "),
		})
	end
end

return NoExtraTags :: Types.ValidationModule
