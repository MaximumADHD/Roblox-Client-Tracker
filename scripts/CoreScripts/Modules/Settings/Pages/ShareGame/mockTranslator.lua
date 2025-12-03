local mockTranslator = {}

function mockTranslator:FormatByKey(key: any?, args: any?)
	return tostring(key)
end

return mockTranslator
