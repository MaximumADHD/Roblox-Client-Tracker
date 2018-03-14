local testStringsLocale = {
	Keys = {
		HELLO = "HELLO",
	},

	Languages = {
		EN_US = "en-us",
	},

	DefaultLanguage = "en-us",

	Content = {
		{
			key = "HELLO",
			values = {
				["en-us"] = "Hello in American English",
			},
		},
	},
}

return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Localization = require(Modules.LuaApp.Localization)

	local RoactLocalization = require(script.parent.RoactLocalization)

	describe("LocalizationProvider", function()
		it("should render the provided children", function()
			local testComponentRendered = false
			local testComponent = function()
				testComponentRendered = true
			end

			local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(testStringsLocale, "en-us"),
			}, {
				test = Roact.createElement(testComponent),
			})

			Roact.reify(element, nil, "localization-test")

			expect(testComponentRendered).to.equal(true)
		end)

		it("should throw if no localization provided", function()
			expect(function()
				local element = Roact.createElement(RoactLocalization.LocalizationProvider)
				Roact.reify(element, nil, "localization-test")
			end).to.throw()
		end)
	end)

	describe("connect", function()
		it("should throw if instantiated without a LocalizationProvider", function()
			local testComponent = function() end
			local connector = RoactLocalization.connect({})
			local localizedTestComponent = connector(testComponent)
			local element = Roact.createElement(localizedTestComponent)
			expect(function()
				Roact.reify(element, nil, "localization-test")
			end).to.throw()
		end)

		it("should pass a localized string to the wrapped component", function()
			local localizedString
			local testComponent = function(props)
				localizedString = props.Text
			end
			local connector = RoactLocalization.connect({ "Text" })
			local localizedTestComponent = connector(testComponent)

			local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(testStringsLocale, "en-us")
			}, {
				test = Roact.createElement(localizedTestComponent, {
					Text = { testStringsLocale.Keys.HELLO },
					locale = "en-us",
				})
			})

			Roact.reify(element, nil, "localization-test")

			expect(localizedString).to.equal("Hello in American English")
		end)

		it("should throw if localized field is not a table", function()
			local testComponent = function() end
			local connector = RoactLocalization.connect({ "Text" })
			local localizedTestComponent = connector(testComponent)

			local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(testStringsLocale, "en-us")
			}, {
				test = Roact.createElement(localizedTestComponent, {
					Text = "WRONG THING!"
				})
			})

			expect(function()
				Roact.reify(element, nil, "localization-test")
			end).to.throw()
		end)

		it("should throw if localized field table's first element isn't a string", function()
			local testComponent = function() end
			local connector = RoactLocalization.connect({ "Text" })
			local localizedTestComponent = connector(testComponent)

			local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = Localization.new(testStringsLocale, "en-us")
			}, {
				test = Roact.createElement(localizedTestComponent, {
					Text = { true }
				})
			})

			expect(function()
				Roact.reify(element, nil, "localization-test")
			end).to.throw()
		end)
	end)
end