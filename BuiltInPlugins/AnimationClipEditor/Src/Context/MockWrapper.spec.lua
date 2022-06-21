local MockWrapper = require(script.Parent.MockWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

return function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			TestElement = Roact.createElement("Frame")
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)

	it("should error if you do not provide an element to wrap", function()
		expect(function()
			local element = Roact.createElement(MockWrapper)
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end).to.throw()
	end)

	describe("Store", function()
		it("should supply a functional Rodux Store object to its children", function()
			local function createTestElementWithStore()
				local TestElement = Roact.Component:extend("TestElement")
				function TestElement:render()
					local abcVal = self.props.abc
					return Roact.createElement("TextLabel", {
						Text = abcVal,
					})
				end
				TestElement = RoactRodux.connect(function(store)
					return {
						abc = store.abc
					}
				end)(TestElement)

				return TestElement
			end

			local TestElement = createTestElementWithStore()

			local testReducer = Rodux.createReducer({
				abc = "123"
			},{
				["TestAction"] = function(state, action)
					return {
						abc = action.abc
					}
				end,
			})
			local roduxStore = Rodux.Store.new(testReducer)

			local element = Roact.createElement(MockWrapper, {
				store = roduxStore,
			}, {
				TestElement = Roact.createElement(TestElement)
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)

	describe("Theme", function()
		local function createTestThemedElement()
			local testThemedElement = Roact.PureComponent:extend("testThemedElement")

			function testThemedElement:render()
				local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
				return Roact.createElement("Frame",{
					BackgroundColor3 = theme.BackgroundColor
				})
			end

			testThemedElement = withContext({
				Stylizer = ContextServices.Stylizer,
			})(testThemedElement)

			return testThemedElement
		end

		it("should supply a functional theme object to its children", function()
			local testThemedElement = createTestThemedElement()

			local element = Roact.createElement(MockWrapper, {}, {
				TestElement = Roact.createElement(testThemedElement)
			})

			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)
end
