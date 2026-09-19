-- ROBLOX upstream: no upstream
local exports = {}

local function _getElementByName(container: Instance, id: string, includeContainer: boolean?): Instance?
	local children = container:GetChildren()
	if #children == 0 then
		return nil
	end
	for i = 1, #children do
		if includeContainer and container.Name then
			return container :: Instance
		end
		local found = _getElementByName(children[i], id, true)
		if found then
			return found
		end
	end
	return nil
end

--[[
    ROBLOX comment:
    utility function to resemble Document.getByTestId
    deviations:
        * container must be set (instead of being the document)
        * Looking for Name property to match
        * Instance Names are not unique, but the first result will be returned
]]
local function getElementByName(container: Instance, id: string, includeContainer: boolean?): Instance?
	return _getElementByName(container, id)
end

exports.getElementByName = getElementByName

return exports
