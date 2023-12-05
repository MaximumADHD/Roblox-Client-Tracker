local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local initify = require(CorePackages.initify)

initify(CorePackages)
initify(CoreGuiModules)

local UIBlox = require(CorePackages.UIBlox)
local uiBloxConfig = require(CoreGuiModules.UIBloxInGameConfig)
UIBlox.init(uiBloxConfig)

-- Initialize and mount feedback application specifically
local FeedbackModule = require(RobloxGui.Modules.Feedback)
FeedbackModule.initialize()