--[[
  Filename: StyleWidgets.lua
  Written by: dbanks
  Version 1.0
  Description: Widgets with common style elements that can be shared across
      different GUIS.
--]]
----------------- SERVICES ------------------------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)

----------- CLASS DECLARATION --------------
--[[ Classes ]]--
local StyleWidgets = {}

----------- CONSTANTS --------------
StyleWidgets.TabSelectionHeight = 6

function StyleWidgets.MakeTabSelectionWidget(parent)
  local tabSelection = utility:Create'ImageLabel'
  {
    Name = "TabSelection",
    Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuSelection.png",
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(3,1,4,5),
    Visible = false,
    BackgroundTransparency = 1,
    Size = UDim2.new(1,0,0,StyleWidgets.TabSelectionHeight ),
    Position = UDim2.new(0,0,1,-StyleWidgets.TabSelectionHeight ),
    Parent = parent
  };

  return tabSelection
end


return StyleWidgets