local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local mockContext = require(Plugin.Src.Util.mockContext)

local join = Framework.Dash.join

local ViewTypeButton = require(script.Parent.ViewTypeButton)

return function()
	local function createTestElement(props: {}?)
		local viewTypeButtonProps: ViewTypeButton.Props = join({
			OnClick = function() end,
			Text = "ViewTypeButton",
			ViewType = "Grid",
		}, props or {})

		return mockContext({
			ViewTypeButton = Roact.createElement(ViewTypeButton, viewTypeButtonProps)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render list correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			ViewType = "List"
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end
