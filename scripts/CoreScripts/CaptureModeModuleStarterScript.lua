local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local UIBlox = require(CorePackages.Packages.UIBlox)
local uiBloxConfig = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).UIBloxInGameConfig
UIBlox.init(uiBloxConfig)

-- Flags
local FFlagFeedbackModuleEarlyFontInitialization = game:DefineFastFlag("FeedbackModuleEarlyFontInitialization", false)
local FFlagCaptureModeNativeExitSupport = game:DefineFastFlag("CaptureModeNativeExitSupport", false)

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

if FFlagCaptureModeNativeExitSupport then
	-- TODO: Show exit modal in capture mode rather than just exiting to UGC game.
	local function handleNativeExit()
		game:GetService("ExperienceStateCaptureService"):ToggleCaptureMode()
	end

	game:GetService("GuiService").NativeClose:Connect(handleNativeExit)
end

	game:WaitForChild("SafetyService")
	local SafetyService = game:GetService("SafetyService")

	if SafetyService.IsCaptureModeForReport then
		-- Initialize and mount In-Game Asset Reporting application specifically
		local InGameAssetReporting = require(CorePackages.Workspace.Packages.InGameAssetReporting)
		InGameAssetReporting.initialize()
	else
		-- Initialize and mount feedback application specifically
		local FeedbackModule = require(RobloxGui.Modules.Feedback)
		FeedbackModule.initialize()
	end

