local mockTranslator = {}

function mockTranslator:FormatByKey(key, args)
	return tostring(key)
end

return mockTranslator