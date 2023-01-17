local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local getAvatarThumbnail = require(script.Parent.getAvatarThumbnail)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD work when given a valid user id", function()
	expect(getAvatarThumbnail("1234")).toBe("rbxthumb://type=AvatarHeadShot&id=1234&w=150&h=150")
end)

it("SHOULD return nil if given no user id", function()
	expect(getAvatarThumbnail()).toBeNil()
end)
