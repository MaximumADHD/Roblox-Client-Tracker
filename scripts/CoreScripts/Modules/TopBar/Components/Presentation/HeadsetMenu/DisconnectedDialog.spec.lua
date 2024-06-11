--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Cryo = require(CorePackages.Cryo)
	local UIBlox = require(CorePackages.UIBlox)

	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local act = Roact.act

	local MockGuiService = require(Modules.TestHelpers.MockGuiService)

	local Reducer = require(Modules.TopBar.Reducer)


	local DisconnectedDialog = require(script.Parent.DisconnectedDialog)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				DisconnectedDialog = Roact.createElement(DisconnectedDialog, props or {})
			})
		})

		return element, store
	end

	local requiredProps = {
		visible = false,
		onConfirm = function() end,
		screenSize = Vector2.new(800, 600),
	}

	it("should mount and unmount with required props", function()
		local element = getMountableTreeAndStore(requiredProps)

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should mount and unmount with all props", function()
		local element = getMountableTreeAndStore(Cryo.Dictionary.join(requiredProps, {
			guiService = MockGuiService.new(),
		}))

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should set MenuIsOpen if props.visible is true", function()
		local mockGuiService = MockGuiService.new()
		local fullProps = Cryo.Dictionary.join(requiredProps, {
			guiService = mockGuiService,
		})
		local element = getMountableTreeAndStore(fullProps)

		local instance = Roact.mount(element)
		jestExpect(mockGuiService.MenuIsOpen).toBe(false)

		act(function()
			Roact.update(instance, getMountableTreeAndStore(Cryo.Dictionary.join(fullProps, {
				visible = true,
			})))
		end)
		jestExpect(mockGuiService.MenuIsOpen).toBe(true)

		Roact.unmount(instance)
	end)
end
