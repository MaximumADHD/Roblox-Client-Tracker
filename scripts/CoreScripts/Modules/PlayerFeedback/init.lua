--!strict

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local createPlayerFeedbackApp: (() -> any)? = nil
local workspaceFolder = CorePackages:FindFirstChild("Workspace")
if workspaceFolder then
	local packages = workspaceFolder:FindFirstChild("Packages")
	if packages then
		local feedbackPkg = packages:FindFirstChild("CoreScriptsPlayerFeedback")
		if feedbackPkg then
			local ok, mod = pcall(require, feedbackPkg)
			if ok and mod and typeof(mod) == "table" and typeof(mod.createApp) == "function" then
				createPlayerFeedbackApp = mod.createApp
			end
		end
	end
end

local appInstance = nil
if createPlayerFeedbackApp then
	appInstance = createPlayerFeedbackApp()
	if appInstance and appInstance.instance then
		appInstance.instance.Parent = RobloxGui
	end
end

return appInstance
