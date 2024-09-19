local UserInputService = game:GetService("UserInputService")

export type KeyVisual = {
	keyVisualType: "Image" | "String",
	size: UDim2,
	key: string,
}

local keyCodeMap = {}

return function(keyCode: Enum.KeyCode): KeyVisual
	if keyCodeMap[keyCode] then
		return keyCodeMap[keyCode]
	end

	local keyVisual: KeyVisual
	local key = UserInputService:GetImageForKeyCode(keyCode)
	if key and key ~= "" then
		keyVisual = {
			keyVisualType = "Image",
			size = UDim2.fromScale(0.7, 0.7),
			key = key,
		}
		return keyVisual
	else
		key = UserInputService:GetStringForKeyCode(keyCode)
		keyVisual = {
			keyVisualType = "String",
			size = UDim2.fromScale(0.8, 0.8),
			key = key or "",
		}
	end
	keyCodeMap[keyCode] = keyVisual
	return keyVisual
end
