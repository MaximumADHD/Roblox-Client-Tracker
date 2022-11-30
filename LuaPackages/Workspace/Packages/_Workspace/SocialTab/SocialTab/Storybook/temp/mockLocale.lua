local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Mock = dependencies.Mock
local LocalizationProvider = dependencies.LocalizationProvider
local Roact = dependencies.Roact

local mockLocalization = Mock.MagicMock.new({ name = "Localization" })
mockLocalization.Format = function(_, key, _)
	return key
end

return function(element)
	return Roact.createElement(LocalizationProvider, {
		localization = mockLocalization,
	}, {
		TestElement1 = element,
	})
end
