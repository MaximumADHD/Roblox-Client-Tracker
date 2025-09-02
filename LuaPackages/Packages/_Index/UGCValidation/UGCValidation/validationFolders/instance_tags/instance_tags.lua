local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CollectionService = game:GetService("CollectionService")
local instance_tags = {}

instance_tags.categories = Constants.AllAssetValidationEnums
instance_tags.required_data = { ValidationEnums.SharedDataMember.ROOT_INSTANCE }

instance_tags.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local inst = data.root_instance :: Instance
	local objects = (inst :: Instance):GetDescendants()
	table.insert(objects, inst)

	for _, obj in objects do
		if #CollectionService:GetTags(obj) > 0 then
			reporter:fail({
				["pathName"] = obj:GetFullName(),
			})
		end
	end
end

return instance_tags :: Types.ValidationModule
