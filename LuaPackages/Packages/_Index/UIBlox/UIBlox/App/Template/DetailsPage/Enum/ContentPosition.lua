local DetailsPage = script.Parent.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate("ContentPosition", {
	"Left",
	"Right",
})
