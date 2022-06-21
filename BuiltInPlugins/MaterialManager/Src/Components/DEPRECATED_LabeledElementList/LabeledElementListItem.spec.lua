
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local LabeledElementListItem = require(script.Parent.LabeledElementListItem)

return function()
	local absoluteSize = Vector2.new(1, 1)

	local function createTestElement(props: LabeledElementListItem.Props?)
		props = props or {
			AbsoluteSize = absoluteSize,
		}

		return mockContext({
			LabeledElementListItem = Roact.createElement(LabeledElementListItem, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
