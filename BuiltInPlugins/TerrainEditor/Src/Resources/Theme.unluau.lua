-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Packages.Framework)
local var1 = var0.Style
local var2 = var1.StyleKey
local var3 = var0.Util.StyleModifier
local var4 = var1.ComponentSymbols
var4:add("Toolbar")
local var17 = {}
var17.CellSize = UDim2.fromOffset(70, 70)
var17.CellPadding = UDim2.fromOffset(2, 2)
var17.IconSize = UDim2.fromOffset(28, 28)
var17.StudioTheme = var2.StudioTheme
var17.TabBackgroundColor = var2.SubBackground
var4.Toolbar = var17
var4:add("ToolSettings")
local var35 = {}
var35.BackgroundColor = var2.MainBackground
var4.ToolSettings = var35
var4:add("ImageRenderer")
local var40 = {}
var40.ClearIcon = "rbxasset://textures/StudioSharedUI/preview_clear.png"
var40.ExpandIcon = "rbxasset://textures/StudioSharedUI/preview_expand.png"
var40.IconPadding = 3
var40.ImportIcon = "rbxasset://textures/StudioSharedUI/import@2x.png"
var40.PreviewSize = UDim2.fromOffset(100, 100)
var40.ToolbarTransparency = 0.4
var40.ToolbarBackgroundColor = var2.ToolbarBackgroundColor
var40.ToolbarButtonBackgroundColor = var2.ToolbarButtonBackgroundColor
var40.ToolbarHeight = 32
var4.ImageRenderer = var40
var4:add("MetadataDialog")
local var56 = {}
var56.ImageBackgroundColor = Color3.new(0, 0, 0)
var56.MetadataLineHeight = 16
var56.MinSize = Vector2.new(100, 100)
var56.Padding = 4
var56.Size = Vector2.new(400, 400)
var56.Spacing = 4
var4.MetadataDialog = var56
var4:add("MaterialRenderer")
local var76 = {}
var76.GridItemSize = 48
var76.InitialDistance = 6.2
var4.MaterialRenderer = var76
var4:add("ProgressDialog")
local var82 = {}
var82.DescriptionHeight = 20
var82.MinContentSize = Vector2.new(320, 60)
var82.Padding = 5
var82.ProgressHeight = 20
var82.Spacing = 5
var4.ProgressDialog = var82
var4:add("PlaneLockRenderer")
local var94 = {}
var94.Height = 32
var94.Icon = "rbxasset://textures/StudioToolbox/AssetConfig/restore.png"
var94.Spacing = 6
var4.PlaneLockRenderer = var94
var4:add("UpgradeRenderer")
local var101 = {}
var101.Font = Enum.Font.SourceSans
var101.MaxWidth = 300
var101.Spacing = 12
var101.TextSize = 16
var4.UpgradeRenderer = var101
var4:add("Line")
local var109 = {}
var109.Color = BrickColor.White()
var109.TransparencyActive = 0.8
var109.Transparency = 0.3
var4.Line = var109
var4:add("Brush")
local var117 = {}
var117.CenterRadiusMultiplier = 0.015
var117.CenterTransparency = 0.25
var117.Color = BrickColor.White()
var117.MainTransparency = 0.95
var4.Brush = var117
local var124 = {}
var124.BorderSize = 1
var124.Spacing = 5
local var127 = {}
var127.Left = 20
var127.Top = 4
var127.Bottom = 0
var127.Right = 20
var124.Padding = var127
var124.TopLineHeight = 3
var124.Color = var2.ButtonText
var124.BackgroundColor = var2.SubBackground
var124.BorderColor = var2.SubBackground
var124.TopLineColor = var2.DialogMainButton
var124.BottomLineColor = var2.SubBackground
local var139 = {}
var139.Color = var2.DialogMainButton
var3.Hover = var139
local var142 = {}
var142.BottomLineColor = var2.MainBackground
var142.BackgroundColor = var2.MainBackground
var142.BorderColor = var2.Border
var3.Selected = var142
local var147 = {}
var147.Color = var2.ButtonTextDisabled
var3.Disabled = var147
var4.SimpleTab = var124
local var20 = UDim.new(0, 6)
var4:add("MaterialGrid")
local var21 = {}
var21.BackgroundColor = var2.MainBackground
var21.GridItemBackgroundColor = var2.Button
var21.GridItemBackgroundColorHovered = var2.ButtonHover
var21.GridItemBorderColor = var2.Border
var21.GridItemBorderColorSelected = var2.InputFieldBorderSelected
var21.GridItemCornerRadius = UDim.new(0, 6)
var21.GridItemPadding = 2
var21.GridItemSize = 128
local var168 = {}
var168.PaddingBottom = var20
var168.PaddingLeft = var20
var168.PaddingRight = var20
var21.GridItemLabelPadding = var168
var21.ListItemHeight = 40
var21.ListItemSpacing = 4
var21.MaterialPreviewStyle = "CornerBox"
var21.Padding = 0
var21.ShimmerSizeOffset = 2
var21.TextSize = 20
var4.MaterialGrid = var21
return {}
