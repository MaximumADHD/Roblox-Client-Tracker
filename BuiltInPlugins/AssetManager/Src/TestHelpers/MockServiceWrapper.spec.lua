local MockServiceWrapper = require(script.Parent.MockServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Rodux = require(Plugin.Packages.Rodux)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

return function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			TestElement = Roact.createElement("Frame")
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
				return Roact.createElement("TextLabel",{
					Text = localization:getText("namespace", "stringkey")
				})
			end
			
			testElement = withContext({
				Localization = ContextServices.Localization,
			})(testElement)

			return testElement
		end
		it("should supply a functional localization object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(createTestLocalizedElement())
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

			local element = Roact.createElement(MockServiceWrapper, {
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
				local theme = self.props.Stylizer
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

			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(testThemedElement)
			})

			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)
end
