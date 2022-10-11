local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

return ContextItem:createSimple("Inspector")
