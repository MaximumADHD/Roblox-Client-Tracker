--!nonstrict
return function()
    local CorePackages = game:GetService("CorePackages")
    local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
    local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

    describe("IsVRAppBuild", function()
        it("returns false when not in VR", function()
            expect(IsVRAppBuild()).toBe(false)
        end)
    end)
end
