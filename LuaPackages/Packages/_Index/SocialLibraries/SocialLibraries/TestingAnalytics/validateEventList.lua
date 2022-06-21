--! strict
local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local llama = dependencies.llama
local Enums = require(script.Parent.Parent.Analytics.Enums)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local SubPages = Enums.SubPages
local Pages = Enums.Pages
local Types = require(script.Parent.Parent.Analytics.FireEvent.Types)
local isEnum = require(script.Parent.Parent.Utils.isEnum)
local t = dependencies.t
local formatKeyValiationError = require(script.Parent.formatKeyValidationError)
local formatErrorForIncorrectKey = require(script.Parent.formatErrorForIncorrectKey)

local validateEvent = t.strictInterface({
	context = t.any,
	eventType = t.any,
	additionalInfo = t.optional(t.table),
	formatRulesForAdditionalInfo = t.optional(t.table),
})

return function(eventList: Types.EventStreamList, extraValidators: { [string]: (value: any) -> boolean }?)
	llama.Dictionary.map(eventList, function(value, key)
		local keyName = if isEnum(key) then key.rawValue() else key

		assert(Contexts.isEnumValue(value.context), formatKeyValiationError("context", "a Context enum", keyName))
		assert(
			EventTypes.isEnumValue(value.eventType),
			formatKeyValiationError("eventType", "an EventType enum", keyName)
		)
		assert(
			type(value.additionalInfo) == "table" or value.additionalInfo == nil,
			formatKeyValiationError("additionalInfo", "nil or a table", keyName)
		)
		assert(
			type(value.formatRulesForAdditionalInfo) == "table" or value.formatRulesForAdditionalInfo == nil,
			formatKeyValiationError("formatRulesForAdditionalInfo", "nil or a table", keyName)
		)
		assert(formatErrorForIncorrectKey(validateEvent)(value, keyName))

		if value.additionalInfo then
			assert(
				value.additionalInfo.subpage == nil or SubPages.isEnumValue(value.additionalInfo.subpage),
				formatKeyValiationError("subpage additional info", "SubPages enum", keyName)
			)

			assert(
				value.additionalInfo.page == nil or Pages.isEnumValue(value.additionalInfo.page),
				formatKeyValiationError("page additional info", "Pages enum", keyName)
			)

			llama.Dictionary.map(extraValidators or {}, function(validator, additionalInfoKey)
				local additionalInfoValue = value.additionalInfo[additionalInfoKey]
				assert(validator(additionalInfoValue), additionalInfoKey .. " key is invalid. Issue with: " .. keyName)
			end)
		end
	end)

	return true
end
