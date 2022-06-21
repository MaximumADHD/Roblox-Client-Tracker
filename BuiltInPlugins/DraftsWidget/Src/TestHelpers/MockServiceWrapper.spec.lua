local MockServiceWrapper = require(script.Parent.MockServiceWrapper)
local FFlagUpdateDraftsWidgetToDFContextServices = game:GetFastFlag("UpdateDraftsWidgetToDFContextServices")
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local withLocalization = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Packages.UILibrary).Localizing.withLocalization
local withTheme = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Src.ContextServices.Theming).withTheme

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
			if FFlagUpdateDraftsWidgetToDFContextServices then
				local testElement = Roact.PureComponent:extend("TestElement")

				function testElement:render()
					local localization = self.props.Localization
					return Roact.createElement("TextLabel",{
						Text = localization:getText("test", "Hello World")
					})
				end

				testElement = withContext({
					Localization = ContextServices.Localization,
				})(testElement)

				return testElement
			else
				return
			end
		end

		it("should supply a functional localization object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(if FFlagUpdateDraftsWidgetToDFContextServices then createTestLocalizedElement() else function()
					return withLocalization(function(localization)
						return Roact.createElement("TextLabel", {
							Text = localization:getText("test", "Hello World")
						})
					end)
				end)
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
		itSKIP("should supply a functional Rodux Store object to its children", function()
			local TestElement = Roact.Component:extend("Test")
			function TestElement:init()
				-- check that our connection to the rodux store works
				assert(self.props.selectedBones ~= nil, "Expected a value for selectedBones")
				assert(type(self.props.selectedBones) == "table", "Unexpected value for selectedBones")
			end
			function TestElement:render()
				return Roact.createElement("Frame")
			end
			TestElement = RoactRodux.connect(function(state, props)
				return {
					selectedBones = state.Selection.Bones,
				}
			end)(TestElement)

			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(TestElement)
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)

	describe("Theme", function()
		local function createTestThemedElement()
			if FFlagUpdateDraftsWidgetToDFContextServices then
				local testElement = Roact.PureComponent:extend("TestElement")

				function testElement:render()
					local theme = self.props.Stylizer
					return Roact.createElement("Frame",{
						BackgroundColor3 = theme.backgroundColor
					})
				end

				testElement = withContext({
					Stylizer = ContextServices.Stylizer,
				})(testElement)

				return testElement
			else
				return
			end
		end

		it("should supply a functional theme object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(if FFlagUpdateDraftsWidgetToDFContextServices then createTestThemedElement() else function()
					return withTheme(function(theme)
						return Roact.createElement("Frame", {
							BackgroundColor3 = theme.backgroundColor
						})
					end)
				end)
			})
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end)
	end)
end