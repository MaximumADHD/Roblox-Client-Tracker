return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)

	local FrameworkStyles = require(Framework.UI.FrameworkStyles)
	local ContextServices = require(Framework.ContextServices)

	local Mouse = ContextServices.Mouse
	local Theme = ContextServices.Theme
	local Focus = ContextServices.Focus
	local provide = ContextServices.provide

	local Tooltip = require(script.Parent)
	local Box = require(Framework.UI.Box)

	local DEFAULT_PROPS = {}
	local function createTooltip(props)
		local mouse = Mouse.new({})
		local target = container or Instance.new("ScreenGui")
		local focus = Focus.new(target)
		local theme = Theme.new(function()
			return {
				Framework = FrameworkStyles.new(),
			}
		end)
		return provide({theme, mouse, focus}, {
			Tooltip = Roact.createElement(Tooltip, props or DEFAULT_PROPS),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTooltip({
			Text = "An example tooltip"
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTooltip({
			Text = "An example tooltip"
		})
		local instance = Roact.mount(element, container)

		local frame = container:FindFirstChildOfClass("Frame")
		expect(frame).to.be.ok()
		Roact.unmount(instance)
	end)

end