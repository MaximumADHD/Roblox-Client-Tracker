local CorePackages = game:GetService("CorePackages")

local GameInvite = require(CorePackages.Workspace.Packages.GameInvite)
local GetCanSendAndCanCustomizeInvites = GameInvite.GetCanSendAndCanCustomizeInvites

local HttpRbxApiService = game:GetService("HttpRbxApiService")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local httpRequest: any = require(RobloxGui.Modules.Common.httpRequest)

return function(trigger: string, inviteUserId: number?)
	local requestImpl = httpRequest(HttpRbxApiService :: any)

	local success, result = GetCanSendAndCanCustomizeInvites(requestImpl :: any, trigger, inviteUserId):await()
	if success and result and result.responseBody then
		return result.responseBody.canPrompt, result.responseBody.canCustomize
	end
	return false, false
end
