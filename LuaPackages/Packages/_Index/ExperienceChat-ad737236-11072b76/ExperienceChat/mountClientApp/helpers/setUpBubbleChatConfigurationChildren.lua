local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local BubbleChatChildSettingChanged = require(Actions.BubbleChatChildSettingChanged)
local BubbleChatChildRemoved = require(Actions.BubbleChatChildRemoved)

local Config = require(ExperienceChat.Config)

local Flags = ExperienceChat.Flags
local getSetUpBubbleChatConfigurationChildProperties = require(Flags.getSetUpBubbleChatConfigurationChildProperties)

local DefaultBubbleChatChildrenCustomizationProperties = Config.DefaultBubbleChatChildrenCustomizationProperties
local validClassTypes = { "ImageLabel", "UIGradient", "UICorner", "UIPadding" }

local function getSettingsFromInstance(instance: any)
	local availableProperties = DefaultBubbleChatChildrenCustomizationProperties[instance.ClassName]
	local initialInstanceSettings = {}

	for property, _ in pairs(availableProperties) do
		if instance[property] ~= nil then
			local value = (instance)[property]
			initialInstanceSettings[property] = value
		end
	end

	return initialInstanceSettings
end

local function connectPropertyChangedSignalsToInstance(store, instance: any)
	local availableProperties = DefaultBubbleChatChildrenCustomizationProperties[instance.ClassName]
	local propertyChangedConnections = {}

	for property, _ in pairs(availableProperties) do
		if instance[property] ~= nil then
			local connection = instance:GetPropertyChangedSignal(property):Connect(function()
				store:dispatch(BubbleChatChildSettingChanged(instance.ClassName, property, instance[property]))
			end)
			table.insert(propertyChangedConnections, connection)
		end
	end

	return propertyChangedConnections
end

local function disconnectPropertyChangedSignalsToInstance(connections)
	if connections then
		for _, connection in ipairs(connections) do
			connection:Disconnect()
		end
	end
end

local function isValidBubbleChatChild(child: Instance)
	for _, className in ipairs(validClassTypes) do
		if className == child.ClassName then
			return true
		end
	end

	return false
end

return function(store)
	local bubbleChatConfiguration = TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")
	if bubbleChatConfiguration == nil or getSetUpBubbleChatConfigurationChildProperties() == false then
		return DefaultBubbleChatChildrenCustomizationProperties
	end

	local allInitialSettings = {}
	local allPropertyChangedSignalConnections = {}

	assert(bubbleChatConfiguration ~= nil, "BubbleChatConfiguration cannot be nil.")
	local bubbleChatImageLabel: any = bubbleChatConfiguration:FindFirstChildOfClass("ImageLabel")
	local bubbleChatUIGradient: any = bubbleChatConfiguration:FindFirstChildOfClass("UIGradient")
	local bubbleChatUICorner: any = bubbleChatConfiguration:FindFirstChildOfClass("UICorner")
	local bubbleChatUIPadding: any = bubbleChatConfiguration:FindFirstChildOfClass("UIPadding")

	for _, bubbleChatChild: any in ipairs({
		bubbleChatImageLabel,
		bubbleChatUIGradient,
		bubbleChatUICorner,
		bubbleChatUIPadding,
	}) do
		if bubbleChatChild then
			local initialSettings = getSettingsFromInstance(bubbleChatChild)
			allInitialSettings[bubbleChatChild.ClassName] = initialSettings

			local connections = connectPropertyChangedSignalsToInstance(store, bubbleChatChild)
			allPropertyChangedSignalConnections[bubbleChatChild.ClassName] = connections
		end
	end

	bubbleChatConfiguration.ChildRemoved:Connect(function(child)
		if isValidBubbleChatChild(child) then
			disconnectPropertyChangedSignalsToInstance(allPropertyChangedSignalConnections[child.ClassName])
			allPropertyChangedSignalConnections[child.ClassName] = nil
			store:dispatch(BubbleChatChildRemoved(child.ClassName))

			local replacementChild: any = bubbleChatConfiguration:FindFirstChildOfClass(child.ClassName)
			if replacementChild then
				local initialSettings = getSettingsFromInstance(replacementChild)
				store:dispatch(BubbleChatSettingsChanged(child.ClassName, initialSettings))

				local connections = connectPropertyChangedSignalsToInstance(store, replacementChild)
				allPropertyChangedSignalConnections[replacementChild.ClassName] = connections
			end
		end
	end)

	bubbleChatConfiguration.ChildAdded:Connect(function(child)
		if isValidBubbleChatChild(child) then
			if store:getState().BubbleChatSettings[child.ClassName] == nil then
				-- Only update settings when a valid child of the same class does not exist
				local initialSettings = getSettingsFromInstance(child)
				store:dispatch(BubbleChatSettingsChanged(child.ClassName, initialSettings))

				local connections = connectPropertyChangedSignalsToInstance(store, child)
				allPropertyChangedSignalConnections[child.ClassName] = connections
			end
		end
	end)

	return allInitialSettings
end
