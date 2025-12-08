local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)
local createStyleSheet = Framework.Styling.createStyleSheet

return createStyleSheet(Main.Name, {})
