local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

return t.strictInterface({
	RelativeSize = t.numberMinExclusive(0),
	RelativeMinSize = t.numberMinExclusive(0),
	Font = t.EnumItem,
})