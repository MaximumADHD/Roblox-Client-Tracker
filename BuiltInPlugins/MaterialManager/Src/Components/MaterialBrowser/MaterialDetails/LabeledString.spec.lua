local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local LabeledString = require(script.Parent.LabeledString)

return function()
	local name = "Material Pattern"
	local text = "Organic"

	local function createTestElement(props: LabeledString.Props?)
		props = props or {
			Name = name,
			Text = text,
		}

		return mockContext({
			LabeledString = Roact.createElement(LabeledString, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
