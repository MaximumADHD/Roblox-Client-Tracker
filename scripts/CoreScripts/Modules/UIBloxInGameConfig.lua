local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget() or EnableInGameMenuV3(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
	usePillGroupSelectedPills = UIBloxFlags.GetFFlagUIBloxPillGroupUseSelectedPills(),
}
