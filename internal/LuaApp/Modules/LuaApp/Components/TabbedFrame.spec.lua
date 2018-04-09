return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local TabbedFrame = require(Modules.LuaApp.Components.TabbedFrame)
	local StringsLocale = require(Modules.LuaApp.StringsLocale)
	local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
	local LocalizationService = game:GetService("LocalizationService")
	local Localization = require(Modules.LuaApp.Localization)

	it("should create and destroy without errors if it has tabs", function()
		local element = Roact.createElement(TabbedFrame, {
			tabs = {
				{
					label = "test",
					content = function () return {} end,
				}
			}
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)

	it("should throw when created without tabs", function()
		local element = Roact.createElement(TabbedFrame)
		expect(function () return Roact.reify(element) end).to.throw()
	end)

	it("should display all given tab buttons", function()
		local tabButtons = {"tab 1 name", "tab 2 name"}

		local element = Roact.createElement(TabbedFrame, {
			tabs = {
				{
					label = "test1",
					content = function () return {} end,
				}, {
					label = "test2",
					content = function () return {} end,
				}
			}
		})

		local container = Instance.new("Folder")
		local instance = Roact.reify(element, container, "TabbedFrame")

		local tabbedFrame = container:FindFirstChild("TabbedFrame")
		expect(tabbedFrame).to.be.ok()

		local tabBar = tabbedFrame:FindFirstChild("TabBar")
		expect(tabBar).to.be.ok()

		expect(tabBar:FindFirstChild("test1")).to.be.ok()
		expect(tabBar:FindFirstChild("test2")).to.be.ok()
		expect(#tabBar:GetChildren()).to.equal(#tabButtons + 1)

		Roact.teardown(instance)
	end)

	it("should throw if the wrong number of tab buttons to tabs was given", function()
		local element = Roact.createElement(TabbedFrame, {
			tabButtons = {"tab 1 name", "tab 2 name"},
			tabContents = {
				{},
			},
		})
		expect(function () return Roact.reify(element) end).to.throw()
	end)

	it("should only render the contents of the selected tab", function ()
		local element = Roact.createElement(TabbedFrame, {
			tabs = {
				{
					label = "test1",
					content = function () return {
						Decoy = Roact.createElement("Frame")
					}
					end,
				}, {
					label = "test2",
					content = function () return {
						Secret = Roact.createElement("Frame")
					}
					end,
				}
			},
		})
		local container = Instance.new("Folder")
		local instance = Roact.reify(element, container, "TabbedFrame")

		local decoy = container.TabbedFrame:FindFirstChild("Decoy")
		local secret = container.TabbedFrame:FindFirstChild("Secret")

		expect(decoy).to.be.ok()
		expect(secret).to.never.be.ok()

		Roact.teardown(instance)
	end)

	it("should display localized text when provided", function ()
		local text = StringsLocale.Keys.ABOUT
		local localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
		local element = Roact.createElement(RoactLocalization.LocalizationProvider, {
			localization = localization,
		}, {
			Roact.createElement(TabbedFrame, {
				tabs = {
					{
						label = {text},
						content = function () return {
							Decoy = Roact.createElement("Frame")
						}
						end,
					}
				},
			}),
		})

		local container = Instance.new("Folder")
		local instance = Roact.reify(element, container, "TabbedFrame")

		expect(container.TabbedFrame.TabBar[text]).to.be.ok()

		Roact.teardown(instance)
	end)
end