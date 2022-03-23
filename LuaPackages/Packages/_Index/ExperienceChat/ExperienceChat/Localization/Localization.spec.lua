local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local Roact = require(ExperienceChat.Roact)
local Rodux = require(ExperienceChat.Rodux)
local RoactRodux = require(ExperienceChat.RoactRodux)
local Localization = require(script.Parent.Localization)

return function()
	beforeAll(function(c)
		local mockTranslator = {
			FormatByKey = jest.fn(function(_, key)
				return key
			end),
		}

		c.mockTranslator = mockTranslator
		c.stringValueComponent = function(props)
			return Roact.createElement("StringValue", {
				Value = props.text,
			})
		end
	end)

	it("SHOULD work in simple case", function(c)
		local localizationContext = Localization(c.mockTranslator)
		local component = localizationContext.connect(function()
			return {
				text = "localized",
			}
		end)(c.stringValueComponent)

		local tree = Roact.createElement(component)
		local folder = Instance.new("Folder")
		Roact.mount(tree, folder)

		local stringValue = folder:FindFirstChildOfClass("StringValue")
		assert(stringValue, "StringValue was missing")
		expect(stringValue).toHaveProperty("Value", "localized")
	end)

	it("SHOULD work with passed in props from above", function(c)
		local localizationContext = Localization(c.mockTranslator)
		local component = localizationContext.connect(function(props)
			return {
				text = if props.wasPassedIn then "localized" else "shouldNeverBeThis",
			}
		end)(c.stringValueComponent)

		local tree = Roact.createElement(component, {
			wasPassedIn = true,
		})
		local folder = Instance.new("Folder")
		Roact.mount(tree, folder)

		local stringValue = folder:FindFirstChildOfClass("StringValue")
		assert(stringValue, "StringValue was missing")
		expect(stringValue).toHaveProperty("Value", "localized")
	end)

	it("SHOULD work with passed in props from store", function(c)
		local localizationContext = Localization(c.mockTranslator)
		local component = RoactRodux.connect(function()
			return {
				wasPassedIn = true,
			}
		end)(localizationContext.connect(function(props)
			return {
				text = if props.wasPassedIn then "localized" else "shouldNeverBeThis",
			}
		end)(c.stringValueComponent))

		local tree = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(function() end),
		}, {
			component = Roact.createElement(component),
		})
		local folder = Instance.new("Folder")
		Roact.mount(tree, folder)

		local stringValue = folder:FindFirstChildOfClass("StringValue")
		assert(stringValue, "StringValue was missing")
		expect(stringValue).toHaveProperty("Value", "localized")
	end)
end
