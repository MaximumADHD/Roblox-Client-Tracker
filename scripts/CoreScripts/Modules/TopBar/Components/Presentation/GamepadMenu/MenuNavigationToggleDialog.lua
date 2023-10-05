--!strict
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local GetTextSize = require(CorePackages.Workspace.Packages.Style).GetTextSize
local useDesignTokens = require(CorePackages.Workspace.Packages.Style).useDesignTokens

local SELECT_ICON_ASSET_ID = "rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png"

type Props = {
  Position: UDim2
}

local function MenuNavigationToggleDialog(props: Props)
  local tokens = useDesignTokens()
  local font = tokens.Semantic.Typography.CaptionHeader
  local horizontalPadding = tokens.Global.Space_200
  local verticalPadding = tokens.Global.Space_75
  local cornerRadius = tokens.Semantic.Radius.Medium
  local iconSize = tokens.Global.Size_300
  local backgroundUiColor = tokens.Semantic.Color.BackgroundUi.Contrast
  local textColor = tokens.Semantic.Color.Text.Emphasis.Color3

  --[[
    TODO CLIPS-760: use localized strings instead of hard-coded English once
    the translations are complete.
  ]]
  -- local localizedStrings = useLocalization({
  --   VirtualCursorHintPostIcon = "CoreScripts.InGameMenu.VirtualCursorHintPostIcon",
  --   VirtualCursorHintPreIcon = "CoreScripts.InGameMenu.VirtualCursorHintPreIcon",
  -- })

  local localizedStrings = {
    VirtualCursorHintPreIcon = "Some experiences require pressing ",
    VirtualCursorHintPostIcon = " to toggle menu navigation",
  }

  local leftText = localizedStrings.VirtualCursorHintPreIcon
  local rightText = localizedStrings.VirtualCursorHintPostIcon

  local leftTextSize, rightTextSize = React.useMemo(function()
    local leftTextSize_ = GetTextSize(
      leftText,
      font.FontSize,
      font.Font,
      Vector2.new(math.huge, math.huge)
    )

    local rightTextSize_ = GetTextSize(
      rightText,
      font.FontSize,
      font.Font,
      Vector2.new(math.huge, math.huge)
    )

    return leftTextSize_, rightTextSize_
  end, { font.FontSize, font.Font, leftText, rightText })

  return React.createElement("Frame", {
    BackgroundColor3 = backgroundUiColor.Color3,
    BackgroundTransparency = backgroundUiColor.Transparency,
    AutomaticSize = Enum.AutomaticSize.XY,
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = props.Position,
  }, {
    Corner = React.createElement("UICorner", {
      CornerRadius = UDim.new(0, cornerRadius),
    }),
    Layout = React.createElement("UIListLayout", {
      FillDirection = Enum.FillDirection.Horizontal,
      SortOrder = Enum.SortOrder.LayoutOrder,
      HorizontalAlignment = Enum.HorizontalAlignment.Center,
      VerticalAlignment = Enum.VerticalAlignment.Center,
    }),
    LeftText = React.createElement("TextLabel", {
      Size = UDim2.fromOffset(leftTextSize.X, leftTextSize.Y),
      Text = leftText,
      TextXAlignment = Enum.TextXAlignment.Center,
      TextYAlignment = Enum.TextYAlignment.Center,
      TextColor3 = textColor,
      Font = font.Font,
      TextSize = font.FontSize,
      TextWrapped = false,
      BackgroundTransparency = 1,
      LayoutOrder = 0,
    }),
    Icon = React.createElement("ImageLabel", {
      Size = UDim2.fromOffset(iconSize, iconSize),
      BackgroundTransparency = 1,
      LayoutOrder = 100,
      Image = SELECT_ICON_ASSET_ID
    }),
    RightText = React.createElement("TextLabel", {
      Size = UDim2.fromOffset(rightTextSize.X, rightTextSize.Y),
      Text = rightText,
      TextXAlignment = Enum.TextXAlignment.Center,
      TextYAlignment = Enum.TextYAlignment.Center,
      TextColor3 = textColor,
      Font = font.Font,
      TextSize = font.FontSize,
      TextWrapped = false,
      BackgroundTransparency = 1,
      LayoutOrder = 200,
    }),
    Padding = React.createElement("UIPadding", {
      PaddingTop = UDim.new(0, verticalPadding),
      PaddingBottom = UDim.new(0, verticalPadding),
      PaddingLeft = UDim.new(0, horizontalPadding),
      PaddingRight = UDim.new(0, horizontalPadding),
    })
  })
end

return MenuNavigationToggleDialog
