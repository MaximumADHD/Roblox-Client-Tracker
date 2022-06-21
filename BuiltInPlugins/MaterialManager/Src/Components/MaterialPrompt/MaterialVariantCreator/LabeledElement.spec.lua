local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local LabeledElement = require(script.Parent.LabeledElement)

return function()
	local absoluteSize = Vector2.new(1, 1)

	local function createTestElement(props: LabeledElement.Props?)
		props = props or {
			AbsoluteSize = absoluteSize,
		}

		return mockContext({
			LabeledElement = Roact.createElement(LabeledElement, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
