--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/__tests__/version-test.js

return function()
	local srcWorkspace = script.Parent.Parent

	local Object = require(srcWorkspace.Parent.LuauPolyfill).Object

	local versionModule = require(script.Parent.Parent.version)
	local version = versionModule.version
	local versionInfo = versionModule.versionInfo

	describe("Version", function()
		it("version", function()
			expect(version).to.be.a("string")
			-- ROBLOX deviation: skip complicated regex
		end)

		it("versionInfo", function()
			local expect: any = expect

			expect(versionInfo).to.be.a("table")
			expect(Object.keys(versionInfo)).toHaveSameMembers({
				"major",
				"minor",
				"patch",
				"preReleaseTag",
			})

			local major = versionInfo.major
			local minor = versionInfo.minor
			local patch = versionInfo.patch
			local preReleaseTag = versionInfo.preReleaseTag

			expect(major).to.be.a("number")
			expect(minor).to.be.a("number")
			expect(patch).to.be.a("number")

			if preReleaseTag ~= "" then
				expect(preReleaseTag).to.be.a("string")
			end

			expect(("%d.%d.%d"):format(major, minor, patch) .. (function()
				if preReleaseTag ~= "" then
					return "-" .. preReleaseTag
				end

				return ""
			end)()).to.equal(version)
		end)
	end)
end
