local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe, it, expect = JestGlobals.describe, JestGlobals.it, JestGlobals.expect
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
jest.mock(CorePackages.Workspace.Packages.Chrome, function()
	local actual = table.clone(jest.requireActual(CorePackages.Workspace.Packages.Chrome))
	actual.Enabled = function()
		return true
	end
	return actual
end)
local ChromeService = script.Parent.Parent.Parent.Chrome.Service
jest.mock(ChromeService, function()
	local actual = table.clone(jest.requireActual(ChromeService))
	actual.onTriggerMenuIcon = function()
		return {
			connect = function()
				return { disconnect = function() end }
			end,
		}
	end
	return actual
end)
local renderWithStyle = require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
local MenuIcon = require(script.Parent.MenuIcon)

afterEach(RTL.cleanup)

describe("MenuIcon host sizing", function()
	it("keeps parent-relative sizing when the host supplies no button size", function()
		local ref = React.createRef()
		RTL.render(renderWithStyle({
			Host = React.createElement("Frame", { Size = UDim2.fromOffset(36, 36) }, {
				Icon = React.createElement(MenuIcon, { menuIconRef = ref }),
			}),
		}))
		expect(ref.current.Size).toBe(UDim2.fromScale(1, 1))
	end)

	it("uses the host's explicit size and updates it when the size changes", function()
		local ref = React.createRef()
		local function element(size: number)
			return renderWithStyle({
				Host = React.createElement("Frame", { Size = UDim2.fromOffset(200, size) }, {
					Icon = React.createElement(MenuIcon, { menuIconRef = ref, buttonSize = size }),
				}),
			})
		end
		local screen = RTL.render(element(44))
		expect(ref.current.Size).toBe(UDim2.fromOffset(44, 44))
		screen.rerender(element(66))
		expect(ref.current.Size).toBe(UDim2.fromOffset(66, 66))
	end)
end)
