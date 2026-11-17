local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local EFFECT_ID = 9700
local MAKEUP_ID = 9600

-- Engines older than spawn effects can't create the class.
-- selene: allow(incorrect_standard_library_use) | AvatarEffectDescription is missing from the selene std
local canCreateEffect = pcall(Instance.new, "AvatarEffectDescription")
local itIfCanCreateEffect = (if canCreateEffect then it else it.skip) :: typeof(it)

-- Loads the module in an isolated graph so the flag is pinned regardless of the run's flag config.
local function getIdsWithFlag(roundTrip: boolean, description: HumanoidDescription): { number }
	local ids
	jest.isolateModules(function()
		jest.resetModules()
		jest.mock(CorePackages.Workspace.Packages.AvatarExperienceFlags, function()
			local actual = jest.requireActual(CorePackages.Workspace.Packages.AvatarExperienceFlags)
			return setmetatable({ FFlagAXSpawnEffectSaveRoundTrip = roundTrip }, { __index = actual })
		end)
		ids = require(script.Parent.GetAssetIdsFromDescription)(description)
	end)
	return ids
end

describe("GetAssetIdsFromDescription", function()
	for _, roundTrip in { true, false } do
		itIfCanCreateEffect(`lists makeup, and a spawn effect only with the flag (flag {roundTrip})`, function()
			local description = Instance.new("HumanoidDescription")
			local effect = Instance.new("AvatarEffectDescription")
			effect.AssetId = EFFECT_ID
			effect.Parent = description
			local makeup = Instance.new("MakeupDescription")
			makeup.AssetId = MAKEUP_ID
			makeup.Parent = description

			local ids = getIdsWithFlag(roundTrip, description)
			expect(table.find(ids, EFFECT_ID) ~= nil).toBe(roundTrip)
			expect(table.find(ids, MAKEUP_ID)).never.toBeNil()
			description:Destroy()
		end)
	end
end)
