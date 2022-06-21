local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local LabeledString = require(script.Parent.LabeledString)

return function()
	local name = "Material Pattern"
	local text = "Organic"

	local function createTestElement(props: {}?)
		local labeledStringProps: LabeledString.Props = join({
			Name = name,
			Text = text,
		}, props or {})

		return mockContext({
			LabeledString = Roact.createElement(LabeledString, labeledStringProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
