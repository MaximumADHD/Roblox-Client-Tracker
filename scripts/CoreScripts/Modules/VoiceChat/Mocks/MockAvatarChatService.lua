local MockAvatarChatService = {}
MockAvatarChatService.__index = MockAvatarChatService

function MockAvatarChatService.new(mockIsEnabled, mockEnableVoice, mockGetPropertyChangedSignal, mockGetClientFeaturesAsync)
	local self = setmetatable({
		IsEnabled = mockIsEnabled,
        EnableVoice = mockEnableVoice,
        GetPropertyChangedSignal = mockGetPropertyChangedSignal,
        GetClientFeaturesAsync = mockGetClientFeaturesAsync,
	}, MockAvatarChatService)

	return self
end

return MockAvatarChatService