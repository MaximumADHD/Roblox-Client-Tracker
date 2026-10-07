local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local UIBlox = require(CorePackages.Packages.UIBlox)
local uiBloxConfig = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).UIBloxInGameConfig
UIBlox.init(uiBloxConfig)

-- Flags
local FFlagFeedbackModuleEarlyFontInitialization = game:DefineFastFlag("FeedbackModuleEarlyFontInitialization", false)
local FFlagBuildExperienceInstanceSelection =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagBuildExperienceInstanceSelection
local InstanceSelectionProtocol = if FFlagBuildExperienceInstanceSelection
	then require(CorePackages.Workspace.Packages.BuildExperience.InstanceSelectionProtocol)
	else nil :: never

local function isSelectingInstance(): boolean
	return FFlagBuildExperienceInstanceSelection and InstanceSelectionProtocol.getActiveRequest() ~= nil
end

if FFlagFeedbackModuleEarlyFontInitialization then
	-- Early load font to prevent feedback module components from initially rendering with incorrect underlying text widths that cause unexpected text wrapping issues.
	-- Remove when underlying issue is fixed; test this by changing the flag to false and verifying that text wrap issues in the module no longer occur
	local TextService = game:GetService("TextService")
	local params = Instance.new("GetTextBoundsParams")
	params.Text = "random text"
	params.Font = Font.fromEnum(Enum.Font.Gotham)
	params.Size = 19
	params.Width = 0
	local _unused = TextService:GetTextBoundsAsync(params)
end
	local MessageBusService = game:GetService("MessageBusService")
	local SCENE_EXIT_MID = MessageBusService:GetMessageId("CaptureMode", "sceneSelectionExitReason")

	local function handleNativeExit()
		if isSelectingInstance() then
			InstanceSelectionProtocol.finishSelection({ status = "cancelled" })
			return
		end
			MessageBusService:Publish(SCENE_EXIT_MID, { reason = "nativeExit" })
		game:GetService("ExperienceStateCaptureService"):ToggleCaptureMode()
	end

	game:GetService("GuiService").NativeClose:Connect(handleNativeExit)

	game:WaitForChild("SafetyService")
	local SafetyService = game:GetService("SafetyService")

	if isSelectingInstance() then
		require(CorePackages.Workspace.Packages.BuildExperience.mountInstanceSelection)()
	elseif SafetyService.IsCaptureModeForReport then
		-- Initialize and mount In-Game Asset Reporting application specifically
		local InGameAssetReporting = require(CorePackages.Workspace.Packages.InGameAssetReporting)
		InGameAssetReporting.initialize()
	else
		-- Initialize and mount feedback application specifically
		local FeedbackModule = require(RobloxGui.Modules.Feedback)
		FeedbackModule.initialize()
	end

