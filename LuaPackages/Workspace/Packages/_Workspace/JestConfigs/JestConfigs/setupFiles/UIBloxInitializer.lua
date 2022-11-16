local Root = script:FindFirstAncestor("JestConfigs")
local Packages = Root.Parent

local UIBlox = require(Packages.UIBlox)
UIBlox.init(require(Packages.UIBloxRobloxAppConfig))
