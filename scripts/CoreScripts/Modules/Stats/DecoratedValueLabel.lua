--[[
  Filename: DecoratedValueLabel.lua
  Written by: dbanks
  Description: Icon, text label, numeric value.
      Icon is set by creator/caller.
--]]

local CoreGuiService = game:GetService('CoreGui')

local StatsUtils = require(CoreGuiService.RobloxGui.Modules.Stats.StatsUtils)

local RobloxTranslator = require(CoreGuiService.RobloxGui.Modules.RobloxTranslator)

function LocalizedGetKey(key)
  local rtv = key
  pcall(function()
      rtv = RobloxTranslator:FormatByKey(key)
  end)

  return rtv
end

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

local DecoratedValueLabelClass = {}
DecoratedValueLabelClass.__index = DecoratedValueLabelClass

function DecoratedValueLabelClass.new(statType, valueName)
  local self = {}
  setmetatable(self, DecoratedValueLabelClass)

  self._frame = Instance.new("Frame")
  self._frame.Name = "PS_DecoratedValueLabel"
  self._frame.BackgroundTransparency = 1.0

  if FFlagUseNotificationsLocalization == true then
    self._valueName = LocalizedGetKey(valueName)
  else
    self._valueName = valueName
  end

  self._statType = statType

  self._decorationFrame = Instance.new("Frame")
  self._decorationFrame.Name = "PS_Decoration"
  self._decorationFrame.Parent = self._frame
  self._decorationFrame.Position = UDim2.new(0, 0, 0.5, -StatsUtils.DecorationSize/2)
  self._decorationFrame.Size = UDim2.new(0, StatsUtils.DecorationSize,
    0, StatsUtils.DecorationSize)
  self._decorationFrame.BackgroundTransparency = 1.0

  self._label =Instance.new("TextLabel")
  self._label.Name = "Label"
  self._label.Parent = self._frame
  self._label.Position = UDim2.new(0, StatsUtils.DecorationSize + StatsUtils.DecorationMargin,
    0, 0)
  self._label.Size = UDim2.new(1, -(StatsUtils.DecorationSize + StatsUtils.DecorationMargin),
    1, 0)
  self._label.FontSize = StatsUtils.PanelValueFontSize
  self._label.TextXAlignment = Enum.TextXAlignment.Left
  self._label.TextYAlignment = Enum.TextYAlignment.Center

  StatsUtils.StyleTextWidget(self._label)

  return self
end

function DecoratedValueLabelClass:SetZIndex(zIndex)
  self._frame.ZIndex = zIndex
  self._decorationFrame.ZIndex = zIndex
  self._label.ZIndex = zIndex
end


function DecoratedValueLabelClass:PlaceInParent(parent, size, position)
  self._frame.Parent = parent
  self._frame.Size = size
  self._frame.Position = position
end


function DecoratedValueLabelClass:GetDecorationFrame()
  return self._decorationFrame
end

function DecoratedValueLabelClass:SetValue(value)
  local formattedValue = StatsUtils.FormatTypedValue(value, self._statType)
  self._label.Text = string.format("%s: %s", self._valueName, formattedValue)
end


return DecoratedValueLabelClass