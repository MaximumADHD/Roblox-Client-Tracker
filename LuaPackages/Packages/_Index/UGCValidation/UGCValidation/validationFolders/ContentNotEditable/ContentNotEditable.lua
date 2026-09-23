local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateBackendContentNotEditable = require(root.flags.getFFlagUGCValidateBackendContentNotEditable)

local ContentNotEditable = {}

ContentNotEditable.categories = Constants.AllAssetUploadCategoriesIncludingMakeup
ContentNotEditable.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.consumerConfig,
}
ContentNotEditable.fflag = getFFlagUGCValidateBackendContentNotEditable
ContentNotEditable.expectedFailures = {}

ContentNotEditable.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	-- Lifecycle-gated on consumerEnv: a live editable is legitimate only for IEC-origin uploads (bytes inspected pre-upload);
	-- elsewhere it's an unmoderated bypass vector. IEC-origin keeps skipping under VaaS.
	if data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC then
		return
	end

	local descendantsAndRoot = data.rootInstance:GetDescendants()
	table.insert(descendantsAndRoot, data.rootInstance)

	for _, instance in descendantsAndRoot do
		local contentProperties = Constants.CONTENT_TYPED_PROPERTIES_BY_CLASS[instance.ClassName]
		if not contentProperties then
			continue
		end

		for _, contentProperty in contentProperties do
			if (instance :: any)[contentProperty].Object ~= nil then
				reporter:fail(ErrorSourceStrings.Keys.ContentNotEditable, {
					InstanceFullName = instance:GetFullName(),
					FieldName = contentProperty,
				})
			end
		end
	end
end

return ContentNotEditable :: Types.ValidationModule
