local function getDefaultValue<T>(value: nil | T, defaultValue: T): T
	return if value == nil then defaultValue else value :: T
end

return getDefaultValue
