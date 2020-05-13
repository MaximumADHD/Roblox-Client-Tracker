local Validator = script.Parent
local ImageSet = Validator.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

local validateImageSetData = require(Validator.validateImageSetData)

return t.union(t.string, validateImageSetData)