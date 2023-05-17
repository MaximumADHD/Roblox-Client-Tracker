local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = Root.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local GlobalNavDisplayOption = TenFootUiCommon.TenFootUiRNTypes.GlobalNavDisplayOption
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local useGlobalNavDisplayOptions = require(script.Parent.useGlobalNavDisplayOptions)

it("should return GlobalNavDisplayOption.ShowAll by default", function()
	local mockNavigation = nil
	local mockGetActiveChildNavigationOptionsRecursively = jest.fn().mockImplementation(function()
		return {}
	end)

	local displayOption
	local element = React.createElement(function()
		displayOption = useGlobalNavDisplayOptions(mockNavigation, mockGetActiveChildNavigationOptionsRecursively)
		return
	end)
	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	ReactRoblox.act(function()
		root:render(element)
	end)
	expect(displayOption).toEqual(GlobalNavDisplayOption.ShowAll)

	root:unmount()
end)

it("should return display option according to globalNavDisplayOption", function()
	local mockNavigation = nil
	local mockGetActiveChildNavigationOptionsRecursively = jest.fn().mockImplementation(function()
		return {
			globalNavDisplayOption = GlobalNavDisplayOption.HideAll,
		}
	end)

	local displayOption
	local element = React.createElement(function()
		displayOption = useGlobalNavDisplayOptions(mockNavigation, mockGetActiveChildNavigationOptionsRecursively)
		return
	end)
	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	ReactRoblox.act(function()
		root:render(element)
	end)
	expect(displayOption).toEqual(GlobalNavDisplayOption.HideAll)

	root:unmount()
end)
