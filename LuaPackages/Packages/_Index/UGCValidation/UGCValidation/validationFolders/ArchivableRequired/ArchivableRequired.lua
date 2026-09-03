local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidateInstanceTreesEquivalent =
	require(root.flags.getEngineFeatureEngineUGCValidateInstanceTreesEquivalent)

local ArchivableRequired = {}

ArchivableRequired.categories = Constants.AllUploadCategories
ArchivableRequired.requiredData = {
	ValidationEnums.SharedDataMember.entrypointInput,
}
-- Shares the R15Fixed-defense rollout: the engine tree-equivalence comparator now clones with
-- studioClone=false, so an Archivable=false instance is silently dropped from the diff. This check is
-- what re-closes that gap, so it must turn on together with the comparator.
ArchivableRequired.fflag = getEngineFeatureEngineUGCValidateInstanceTreesEquivalent

-- entrypointInput is either { Instance } (single-asset / folder-structure uploads) or FullBodyData
-- (bundles, where each entry carries allSelectedInstances). Flatten to every raw instance in either shape.
local function collectAllInstances(entrypointInput: any): { Instance }
	local instances: { Instance } = {}
	for _, entry in entrypointInput do
		local roots: { Instance } = {}
		if typeof(entry) == "Instance" then
			table.insert(roots, entry)
		elseif typeof(entry) == "table" and entry.allSelectedInstances ~= nil then
			roots = entry.allSelectedInstances
		end

		for _, rootInstance in roots do
			table.insert(instances, rootInstance)
			for _, descendant in rootInstance:GetDescendants() do
				table.insert(instances, descendant)
			end
		end
	end

	return instances
end

ArchivableRequired.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Enforce Archivable=true on the RAW entrypoint input, before any :Clone(). :Clone() is dangerous: it
	-- drops Archivable=false instances, so it stays confined to the bundle root synthesis and must never
	-- reach asset-level routes. A serializer drops such an instance too, but we block here to surface the
	-- attempt rather than let a bypass slip by unnoticed.
	for _, object in collectAllInstances(data.entrypointInput) do
		if object.Archivable == false then
			reporter:fail(ErrorSourceStrings.Keys.PropertyValueInvalid, {
				PropertyName = "Archivable",
				InstancePath = object:GetFullName(),
				ComparisonMethod = Constants.COMPARISON_METHODS.EXACT_EQ,
				ExpectedValue = "true",
			})
		end
	end
end

return ArchivableRequired :: Types.ValidationModule
