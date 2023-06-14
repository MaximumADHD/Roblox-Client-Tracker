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
		-- The layout of the component in single panel portrait mode.
		portraitLayoutOrder = t.integer,
		-- The layout of the component in dual panel landscape mode.
		landscapeLayoutOrder = t.integer,
		-- The position of the component in dual panel landscape mode.
		landscapePosition = enumerateValidator(ContentPositionEnum),
		-- render function for the component.
		renderComponent = t.callback,
		-- 10ft UI only, hides the background gradient when set to false.
		showCornerGradient = t.optional(t.boolean),
		-- 10ft UI only, adds focus navigation bumpers to ensure consistent gamepad navigation
		useSelectionBumper = t.optional(t.boolean),
	})
)
