--!nonstrict
return function()

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Root = script.Parent.Parent.Parent

	local getLocalizationContext = require(Root.Localization.getLocalizationContext)
	local Connection = script.Parent

	local NumberLocalizer = require(Connection.NumberLocalizer)
	local LocalizationContextProvider = require(Connection.LocalizationContextProvider)

	it("should create and destroy without errors", function()
		local textLabelRef = Roact.createRef()

		local testComponent = function(props)
			return Roact.createElement(NumberLocalizer, {
				number = 123456789,
				render = function(localizedNumber)
					props.testCallback(localizedNumber)
					return Roact.createElement("TextLabel", {
						Text = localizedNumber,
						[Roact.Ref] = textLabelRef
					})
				end,
			})
		end

		local testString = ""
		local element = Roact.createElement(LocalizationContextProvider, {
			localizationContext = getLocalizationContext("en-us")
		}, {
			Component = Roact.createElement(testComponent, {
				testCallback = function(string)
					testString = string
				end,
			})
		})

		local instance = Roact.mount(element)

		expect(testString).toBe("123,456,789")
		expect(textLabelRef.current).toMatchInstance({
			Text = testString,
		})

		Roact.unmount(instance)
	end)
end
