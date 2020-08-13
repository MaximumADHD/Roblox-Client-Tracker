local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)

local id = 0

local function createMockMessage(props)
	id = id + 1

	return Cryo.Dictionary.join({
		name = "Foo",
		id = tostring(id),
		userId = "1",
		text = "Hello, World!",
		timestamp = os.time()
	}, props)
end

return createMockMessage
