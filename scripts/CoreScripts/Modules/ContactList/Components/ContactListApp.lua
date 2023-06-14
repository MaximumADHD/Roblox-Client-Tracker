--!strict
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local Components = script.Parent
local ContactListContainer = require(Components.ContactListContainer)
local CallBarContainer = require(Components.CallBarContainer)
local currentCamera = workspace.CurrentCamera :: Camera

export type Props = {}

return function(props: Props)
	return React.createElement("Folder", {}, {
		ContactListContainer = React.createElement(ContactListContainer, {
			camera = currentCamera,
		}),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
