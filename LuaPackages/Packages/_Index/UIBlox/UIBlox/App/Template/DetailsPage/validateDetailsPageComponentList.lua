local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local ContentPositionEnum = require(DetailsPage.Enum.ContentPosition)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local t = require(Packages.t)

return t.map(
	t.string,
	t.strictInterface({
		portraitLayoutOrder = t.integer,
		landscapeLayoutOrder = t.integer,
		landscapePosition = enumerateValidator(ContentPositionEnum),
		renderComponent = t.callback,
	})
)
