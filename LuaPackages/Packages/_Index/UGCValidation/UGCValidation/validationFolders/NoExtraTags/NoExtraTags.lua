local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CollectionService = game:GetService("CollectionService")
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local NoExtraTags = {}

NoExtraTags.categories = Constants.AllAssetUploadCategories
NoExtraTags.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
NoExtraTags.expectedFailures = { "Asset_EF_TaggedJacket", "Bundle_EF_BodyWithLLLTagged.LeftLeg" }

local function collectTaggedPaths(rootInstance: Instance, taggedPaths: { string })
	local objects = rootInstance:GetDescendants()
	table.insert(objects, rootInstance)
	for _, obj in objects do
		if #CollectionService:GetTags(obj) > 0 then
			table.insert(taggedPaths, obj:GetFullName())
		end
	end
end

NoExtraTags.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local taggedPaths: { string } = {}
	collectTaggedPaths(data.rootInstance, taggedPaths)

	if getFFlagUGCValidateMigrateSchemaProperties() then
		-- Flag-on only: FetchHSRAssets populates a map of candidate arrays
		-- keyed by parsed asset id. Walk it so tagged Instances baked into
		-- hidden HSR assets surface here too.
		local hsrAssets = data.hsrAssets
		if type(hsrAssets) == "table" then
			for _, hsrCandidates in hsrAssets do
				if type(hsrCandidates) == "table" then
					for _, hsrAsset in hsrCandidates do
						collectTaggedPaths(hsrAsset, taggedPaths)
					end
				end
			end
		end
	end

	if #taggedPaths > 0 then
		reporter:fail(ErrorSourceStrings.Keys.InstanceTagsFound, {
			ProblematicDescendantPaths = table.concat(taggedPaths, ", "),
		})
	end
end

return NoExtraTags :: Types.ValidationModule
