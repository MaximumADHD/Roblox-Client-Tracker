local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

local constructGameLinkUrl = require(script.Parent.constructGameLinkUrl)

it("should return the correct game link URL", function()
	local placeId = 123456789
	local expectedUrl = "roblox.com/games/123456789"
	local actualUrl = constructGameLinkUrl(placeId)
	expect(actualUrl).toEqual(expectedUrl)
end)
