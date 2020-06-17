--[[
	These comments are used with WrapTestComponent to help test the wrap function.

	Required Props:
		UDim2 Size: The size of the component.
		Theme Theme: The Theme ContextItem from mapToProps.

	Style Values:
		Color3 Color: The color of the component.
]]

return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local wrap = require(Framework.Util.Typecheck.wrap)

	local WrapTestComponent = Roact.PureComponent:extend("WrapTestComponent")
	wrap(WrapTestComponent, script)

	function WrapTestComponent:render()
		local props = self.props
		local size = props.Size
		local style = props.Theme:getStyle("Framework", self)
		local color = style.Color

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundColor3 = color,
		})
	end

	ContextServices.mapToProps(WrapTestComponent, {
		Theme = ContextServices.Theme,
	})

	local function createWrapTestComponent(props, styleTable)
		local theme = ContextServices.Theme.new(function()
			return {
				Framework = {
					WrapTestComponent = {
						Default = styleTable,
					},
				},
			}
		end)

		return ContextServices.provide({theme}, {
			Test = Roact.createElement(WrapTestComponent, props),
		})
	end

	it("should mount and unmount the wrapped component", function()
		local element = createWrapTestComponent({
			Size = UDim2.new(),
		}, {
			Color = Color3.new(),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render the wrapped component", function()
		local container = Instance.new("Folder")
		local element = createWrapTestComponent({
			Size = UDim2.new(),
		}, {
			Color = Color3.new(),
		})
		local instance = Roact.mount(element, container)

		expect(container:FindFirstChildOfClass("Frame")).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should include the injected ContextItems when rendering the component", function()
		local container = Instance.new("Folder")
		local red = Color3.new(1, 0, 0)
		local element = createWrapTestComponent({
			Size = UDim2.new(),
		}, {
			Color = red,
		})
		local instance = Roact.mount(element, container)
		expect(container:FindFirstChildOfClass("Frame").BackgroundColor3).to.equal(red)
		Roact.unmount(instance)
	end)

	it("should perform typechecks on the wrapped component's props", function()
		local element = createWrapTestComponent({
			Size = "Some string",
		}, {
			Color = Color3.new(),
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should perform typechecks on the wrapped component's style", function()
		local element = createWrapTestComponent({
			Size = UDim2.new(),
		}, {
			Color = "Some string",
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)
end
