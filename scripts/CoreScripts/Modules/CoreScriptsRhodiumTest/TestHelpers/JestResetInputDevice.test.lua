--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)

local afterEach = JestGlobals.afterEach

afterEach(function()
	-- Making sure we switch back to keyboard input (which is the default) after running tests
	-- (so we prevent gamepad tests from influencing keyboard tests relying on that assumption)
	-- In gamepad tests we are already always sending an initial input
	Rhodium.VirtualInput.Keyboard.hitKey(Enum.KeyCode.RightSuper)
	Rhodium.VirtualInput.waitForInputEventsProcessed()
end)
