local CorePackages = game:GetService("CorePackages")
local Chrome = script:FindFirstAncestor("Chrome")

local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled
--[[ If you're hitting this assert, try the following:
        local CorePackages = game:GetService("CorePackages")
        local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled
        local Chrome = RobloxGui.Modules.Chrome
        local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil ]]
assert(ChromeEnabled(), "Chrome.Service should not be initialized when Chrome is not enabled")

local ChromeService = require(Chrome.ChromeShared.Service)
return ChromeService
