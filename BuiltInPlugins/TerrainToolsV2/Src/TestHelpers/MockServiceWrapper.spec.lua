-- This test fails under CLI, and will be removed with the dev framework migration
if require(script.Parent.Parent.Parent.Src.Util.DebugFlags).RunningUnderCLI() then
	return function()
	end
end

local MockServiceWrapper = require(script.Parent.MockServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local withLocalization = require(Plugin.Packages.UILibrary).Localizing.withLocalization
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

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
		it("should supply a functional localization object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(function()
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
		it("should supply a functional Rodux Store object to its children", function()
			local TestElement = Roact.Component:extend("Test")
			function TestElement:init()
			end
			function TestElement:render()
				return Roact.createElement("Frame")
			end
			TestElement = RoactRodux.connect(function(state, props)

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
		it("should supply a functional theme object to its children", function()
			local element = Roact.createElement(MockServiceWrapper, {}, {
				TestElement = Roact.createElement(function()
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
