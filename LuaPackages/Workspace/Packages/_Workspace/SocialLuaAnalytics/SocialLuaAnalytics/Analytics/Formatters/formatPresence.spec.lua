local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect
local formatPresence = require(script.Parent.formatPresence)
local Enums = require(SocialLuaAnalytics.Analytics.Enums)
local PresenceTypes = Enums.PresenceTypes
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

return function()
	describe("formatPresence", function()
		it("SHOULD return nil if given nil", function()
			jestExpect(formatPresence(nil)).toBeNil()
		end)

		it("SHOULD return Offline for type Offline", function()
			jestExpect(formatPresence(PresenceType.Offline)).toBe(PresenceTypes.Offline.rawValue())
		end)

		it("SHOULD return Online for type Online", function()
			jestExpect(formatPresence(PresenceType.Online)).toBe(PresenceTypes.Online.rawValue())
		end)

		it("SHOULD return InGame for type InGame", function()
			jestExpect(formatPresence(PresenceType.InGame)).toBe(PresenceTypes.InGame.rawValue())
		end)

		it("SHOULD return InStudio for type InStudio", function()
			jestExpect(formatPresence(PresenceType.InStudio)).toBe(PresenceTypes.InStudio.rawValue())
		end)
	end)
end
