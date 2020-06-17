local RoactStudioWidgetsDirectory = script.Parent.Parent
local RoactStudioWidgetsPathSelectionDirectory = RoactStudioWidgetsDirectory.Parent:FindFirstChild("RoactStudioWidgetsPathSelection")
-- look in the directory that the RoactStudioWidgets directory is placed in
-- first look for a script called RequireRoact.lua which is in RoactPathSelectionDirectory, which is a sibling directory of the RoactStudioWidgets directory, if the script exists, require it
-- alternately fall back to assuming roact will be a sibling directory of the RoactStudioWidgets directory, and require the directory
return require((RoactStudioWidgetsPathSelectionDirectory and RoactStudioWidgetsPathSelectionDirectory.RequireRoact) or RoactStudioWidgetsDirectory.Parent.Roact)