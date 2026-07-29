--!strict

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local UniversalShareSheetScreenGui = require(CorePackages.Workspace.Packages.ShareSheet.UniversalShareSheetScreenGui)

UniversalShareSheetScreenGui.mount(CoreGui)
