local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local t = require(Packages.t)

local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)

if UIBloxConfig.enableReactTag then
	return t.optional(t.string)
end

return nil
