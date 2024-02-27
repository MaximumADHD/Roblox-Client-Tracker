-- Flags
local FFlagFeedbackModuleEarlyFontInitialization = game:DefineFastFlag("FeedbackModuleEarlyFontInitialization", false)

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

-- Initialize and mount feedback application specifically
local FeedbackModule = require(RobloxGui.Modules.Feedback)
FeedbackModule.initialize()