--[=[
	Checks if the current thread has access to internal APIs.

	@within SceneUnderstanding
	@private
]=]
local function hasInternalPermission()
	local success, result = pcall(function()
		return game:GetService("StudioService"):HasInternalPermission()
	end)

	return if success then result else false
end

return hasInternalPermission
