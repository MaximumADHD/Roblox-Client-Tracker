return function()
	local RoactLocalization = require(script.parent.RoactLocalization)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Localization = require(Modules.LuaApp.Localization)
	local Roact = require(Modules.Common.Roact)
	local RoactServices = require(Modules.LuaApp.RoactServices)

	local testServiceProps = {
		services = {
			[RoactLocalization] = Localization.new("en-us"),
		},
	}

	describe("connect()", function()
		it("should throw if instantiated without a ServiceProvider", function()
			local testComponent = function() end
			local localizedTestComponent = RoactLocalization.connect({})(testComponent)
			local element = Roact.createElement(localizedTestComponent)

			expect(function()
				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end).to.throw()
		end)

		it("should pass a localized string to the wrapped component", function()
			local localizedString
			local testComponent = function(props)
				localizedString = props.Text
			end

			local localizedTestComponent = RoactLocalization.connect({ "Text" })(testComponent)
			local element = Roact.createElement(RoactServices.ServiceProvider,
				testServiceProps, {
				test = Roact.createElement(localizedTestComponent, {
					Text = "Common.Presence.Label.Online",
				})
			})

			local instance = Roact.reify(element)
			Roact.teardown(instance)

			expect(localizedString).to.equal("Online")
		end)

		it("should replace arguments when a localized table is used", function()
			local localizedString
			local testComponent = function(props)
				localizedString = props.Text
			end

			local localizedTestComponent = RoactLocalization.connect({ "Text" })(testComponent)
			local element = Roact.createElement(RoactServices.ServiceProvider,
				testServiceProps, {
				test = Roact.createElement(localizedTestComponent, {
					Text = {
						"Feature.Home.HeadingFriends",
						friendCount = 20,
					}
				})
			})

			local instance = Roact.reify(element)
			Roact.teardown(instance)

			expect(localizedString).to.equal("Friends (20)")
		end)

		it("should throw if localized field is not a table", function()
			local testComponent = function() end
			local localizedTestComponent = RoactLocalization.connect({ "Text" })(testComponent)

			local element = Roact.createElement(RoactServices.ServiceProvider,
				testServiceProps, {
				test = Roact.createElement(localizedTestComponent, {
					Text = "WRONG THING!"
				})
			})

			expect(function()
				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end).to.throw()
		end)

		it("should throw if localized field table's first element isn't a string", function()
			local testComponent = function() end
			local localizedTestComponent = RoactLocalization.connect({ "Text" })(testComponent)

			local element = Roact.createElement(RoactServices.ServiceProvider,
				testServiceProps, {
					test = Roact.createElement(localizedTestComponent, {
						Text = { true }
				})
			})

			expect(function()
				local instance = Roact.reify(element)
				Roact.teardown(instance)
			end).to.throw()
		end)


		it("should not re-render if passed a new but identical value for a localized field", function()
			local rendered = 0
			local testComponent = function() rendered = rendered + 1 end
			local connector = RoactLocalization.connect({ "Text" })
			local localizedTestComponent = connector(testComponent)

			local outerComponent = Roact.Component:extend("OuterComponent")
			local update
			function outerComponent:init()
				update = function()
					self:setState(self.state)
				end
			end
			function outerComponent:render()
				return Roact.createElement(localizedTestComponent, {
					Text = "Common.Presence.Label.Online",
				})
			end

			local element = Roact.createElement(RoactServices.ServiceProvider, testServiceProps, {
				test = Roact.createElement(outerComponent)
			})

			Roact.reify(element, nil, "localization-test")

			expect(rendered).to.equal(1)
			update()
			expect(rendered).to.equal(1)
		end)
	end)
end