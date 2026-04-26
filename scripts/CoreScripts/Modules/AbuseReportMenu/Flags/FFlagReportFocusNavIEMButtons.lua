local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMFocusNavToButtons = SharedFlags.FFlagIEMFocusNavToButtons
local FFlagReportFocusNavIEMButtons = game:DefineFastFlag("ReportFocusNavIEMButtons2", false)

return FFlagIEMFocusNavToButtons and FFlagReportFocusNavIEMButtons
