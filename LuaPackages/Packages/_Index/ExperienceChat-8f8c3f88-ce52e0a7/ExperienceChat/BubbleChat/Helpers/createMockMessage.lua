local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary

local id = 0

local function createMockMessage(props)
	id = id + 1

	return Dictionary.join({
		name = "Foo",
		id = tostring(id),
		userId = "1",
		text = "Hello, World!",
		timestamp = id,
	}, props)
end

return createMockMessage
