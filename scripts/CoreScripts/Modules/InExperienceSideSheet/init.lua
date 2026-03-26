--[[
	CoreScript entry point for the InExperienceSideSheet module.
]]

local CorePackages = game:GetService("CorePackages")

local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)

local InExperienceSideSheetApp = InExperienceSideSheet.SideSheet.createSideSheet()

return InExperienceSideSheetApp
