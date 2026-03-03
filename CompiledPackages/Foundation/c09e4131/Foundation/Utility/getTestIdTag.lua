--[[
	Returns a formatted data-testid tag string, or nil if testId is nil.
	
	Usage:
		getTestIdTag("button") --> "data-testid=button"
		getTestIdTag("button", "icon") --> "data-testid=button--icon"
		getTestIdTag(nil) --> nil
]]
local function getTestIdTag(testId: string?, suffix: string?): string?
	if testId == nil then
		return nil
	end

	if suffix then
		return `data-testid={testId}--{suffix}`
	end

	return `data-testid={testId}`
end

return getTestIdTag
