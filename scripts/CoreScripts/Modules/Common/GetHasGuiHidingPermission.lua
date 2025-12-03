local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Packages.Promise)

local RobloxGui = CoreGui.RobloxGui
local GetFIntCanHideGuiGroupId = require(RobloxGui.Modules.Flags.GetFIntCanHideGuiGroupId)

-- This should not be used with any player other than the LocalPlayer to avoid
-- making unnecessary calls to player:IsInGroup()
return function(isStudio, localPlayer, permissionsModule)
	return Promise.new(function(resolve, reject)
		if not game:GetEngineFeature("GuiHidingApiSupport") then
			resolve(false)
			return
		end

		if not localPlayer then
			reject("Invalid local player")
			return
		end

		local inGroup = false
		local success, err = pcall(function()
			local group = GetFIntCanHideGuiGroupId()
			-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
			-- Will be removed when that PR is merged.
			if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
				inGroup = (localPlayer :: any):IsInGroupAsync(group)
			else
				inGroup = (localPlayer :: any):IsInGroup(group)
			end
		end)

		if success then
			resolve(inGroup)
		else
			reject(err)
		end
	end)
end
