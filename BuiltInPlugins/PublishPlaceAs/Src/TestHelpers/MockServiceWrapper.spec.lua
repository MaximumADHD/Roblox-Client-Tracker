local MockServiceWrapper = require(script.Parent.MockServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

return function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			TestElement = Roact.createElement("Frame"),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)

	it("should error if you do not provide an element to wrap", function()
		expect(function()
			local element = Roact.createElement(MockServiceWrapper)
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end).to.throw()
	end)

	describe("Localization", function()
		local function createTestLocalizedElement()
			local testElement = Roact.PureComponent:extend("TestElement")

			function testElement:render()
				local localization = self.props.Localization
				return Roact.createElement("TextLabel", {
					Text = localization:getText("test", "Hello World"),
				})
			end

			testElement = withContext({
				Localization = ContextServices.Localization,
			})(testElement)

			return testElement
		end

		it("should supply a functional localization object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(createTestLocalizedElement()),
			})

			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)

	--[[describe("Plugin", function()
		it("should supply a functional plugin object to its children", function()
			expect(true).to.equal(true)
		end)
	end)]]

	describe("Store", function()
		it("should supply a functional Rodux Store object to its children", function()
			local TestElement = Roact.Component:extend("Test")
			function TestElement:init()
				local errmsg = "Expected table from Rodux Store, got %s"
				assert(type(self.props.S) == "table", string.format(errmsg, type(self.props.S)))
			end
			function TestElement:render()
				return Roact.createElement("Frame")
			end
			local function mapStateToProps(state, props)
				return { S = state }
			end
			TestElement = RoactRodux.connect(mapStateToProps)(TestElement)

			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(TestElement),
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)

	describe("Theme", function()
		it("should supply a functional theme object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(function()
					return withTheme(function(theme)
						local errmsg = "Expected table from Theme Provider, got %s"
						assert(type(theme) == "table", string.format(errmsg, type(theme)))

						return Roact.createElement("Frame", {
							BackgroundColor3 = theme.backgroundColor,
						})
					end)
				end),
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)
end
