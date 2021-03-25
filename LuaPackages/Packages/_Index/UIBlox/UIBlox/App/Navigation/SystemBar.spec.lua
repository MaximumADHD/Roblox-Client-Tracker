return function()
	local Navigation = script.Parent
	local App = Navigation.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local t = require(UIBloxRoot.Parent.t)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(App.ImageSet.Images)
	local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

	local SystemBar = require(script.Parent.SystemBar)
	local Placement = require(script.Parent.Enum.Placement)

	it("should create and destroy with minimum props without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {},
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with all props without errors", function()
		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {{
					iconOn = Images["icons/actions/favoriteOn"],
					iconOff = Images["icons/actions/favoriteOff"],
					onActivated = function() end,
					badgeValue = 1,
				}},
				selection = 1,
				placement = Placement.Left,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(),
				position = UDim2.new(),
				layoutOrder = 1,
			}, {
				Contents = Roact.createElement("Frame", {}, {})
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with a custom icon component without errors", function()
		local CustomIconComponent = Roact.PureComponent:extend("CustomIconComponet")

		function CustomIconComponent:render()
			return Roact.createElement("Frame")
		end

		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {{
					iconComponent = CustomIconComponent,
					onActivated = function() end,
					badgeValue = 1,
				}},
				selection = 1,
				placement = Placement.Left,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(),
				position = UDim2.new(),
				layoutOrder = 1,
			}, {
				Contents = Roact.createElement("Frame", {}, {})
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should pass the expected props to custom icon components", function()
		local component1CorrectProps = false
		local component2CorrectProps = false

		local validateProps = t.strictInterface({
			placement = Placement.isEnumValue,
			hovered = t.boolean,
			selected = t.boolean,
			pressed = t.boolean,
			badgeValue = t.optional(t.string, t.number),
		})

		local CustomIconComponent1 = Roact.PureComponent:extend("CustomIconComponent1")

		function CustomIconComponent1:didMount()
			component1CorrectProps = validateProps(self.props) and (self.props.selected == false)
		end

		function CustomIconComponent1:render()
			return Roact.createElement("Frame")
		end

		local CustomIconComponent2 = Roact.PureComponent:extend("CustomIconComponent2")

		function CustomIconComponent2:didMount()
			component2CorrectProps = validateProps(self.props) and (self.props.selected == true)
		end

		function CustomIconComponent2:render()
			return Roact.createElement("Frame")
		end

		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {
					{
						iconComponent = CustomIconComponent1,
						onActivated = function() end,
						badgeValue = 1,
					},
					{
						iconComponent = CustomIconComponent2,
						onActivated = function() end,
					}
				},
				selection = 2,
			}, {
				Contents = Roact.createElement("Frame", {}, {})
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)

		expect(component1CorrectProps).to.be.ok()
		expect(component2CorrectProps).to.be.ok()
	end)

	it("should create and destroy with a string badge value without errors", function()
		local originalConfig = UIBloxConfig.allowSystemBarToAcceptString
		UIBloxConfig.allowSystemBarToAcceptString = true

		local element = mockStyleComponent({
			Roact.createElement(SystemBar, {
				itemList = {{
					iconOn = Images["icons/actions/favoriteOn"],
					iconOff = Images["icons/actions/favoriteOff"],
					onActivated = function() end,
					badgeValue = "Hi",
				}},
				selection = 1,
				placement = Placement.Left,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(),
				position = UDim2.new(),
				layoutOrder = 1,
			}, {
				Contents = Roact.createElement("Frame", {}, {})
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)

		UIBloxConfig.allowSystemBarToAcceptString = originalConfig
	end)
end
