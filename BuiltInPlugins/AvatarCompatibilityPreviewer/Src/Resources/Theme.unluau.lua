-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Style
local var4 = var3.StyleKey
local var5 = var2.Util.StyleModifier
local var6 = var3.ComponentSymbols
local var7 = var2.UIData
local var8 = require(var7.Alert.style)
local var9 = require(var7.ScrollingFrame.style)
local var10 = require(var7.SelectInput.style)
local var11 = require(var0.Src.Flags.getFFlagAvatarPreviewerAutoSetup)
var6:add("AddItemButton")
local var74 = {}
var74.Height = 42
var74.Image = "rbxasset://textures/AvatarCompatibilityPreviewer/add.png"
var74.ImageColor = var4.TextSecondary
var74.ImageColorDisabled = var4.TextDisabled
var74.ImageSize = 20
var74.PaddingTop = 3
var74.PaddingBottom = 3
var74.FailureDialogSpacing = UDim.new(0, 4)
var6.AddItemButton = var74
var6:add("AnimationControllerDisplay")
local var89 = {}
var89.Padding = 30
var6.AnimationControllerDisplay = var89
var6:add("AnimationPlaybackSlider")
local var94 = {}
var94.PlayImage = var4.PlayImage
var94.PauseImage = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"
var94.PlayButtonWidth = 20
var94.PlayTimeLabelWidth = 60
var94.Padding = 12
var6.AnimationPlaybackSlider = var94
var6:add("AnimationPreview")
local var103 = {}
var103.PausedAnimationAlpha = 0.5
local var105 = {}
var105.FrontRightAngleLerp = 0.4
var103.&BodyPreview = var105
local var107 = {}
var107.FieldOfView = 30
var107.FrontRightAngleLerp = 0.08
var107.InitialDistance = 2.8
var103.&FacePreview = var107
var6.AnimationPreview = var103
var6:add("AssetPalettes")
local var114 = {}
local var115 = var1.Dictionary
var115 = var9
local var117 = {}
var117.BackgroundColor3 = var4.SubBackground2
var117.BackgroundTransparency = 0
var117.Padding = 0
var117.ScrollBarThickness = 0
var117.Spacing = UDim.new(0, 5)
var114.ScrollingFrame = var115.join(var115, var117)
var114.Size = UDim2.new(1, 0, 0, 24)
var6.AssetPalettes = var114
var6:add("AutoSetupScreen")
local var136 = {}
var136.AlertPaddingHorizontal = UDim.new(0, 20)
var136.AlertPaddingVertical = UDim.new(0, 8)
var136.ControlsPosition = UDim2.new(1, 65520, 1, 65520)
var136.SpinRate = -0.25
var6.AutoSetupScreen = var136
var6:add("AvatarScreen")
local var155 = {}
local var156 = {}
var156.BackgroundColor = var4.SubBackground2
var156.SeparatorColor = var4.SubBackground
var156.SeparatorWidth = 4
var156.Width = 122
var155.AssetPalettes = var156
local var161 = {}
var161.Height = 64
var161.VerticalOffset = 65532
var155.Tabs = var161
var6.AvatarScreen = var155
var6:add("Background")
local var166 = var6.Background
local var167 = {}
var167.Image = var4.PreviewerBackgroundImage
var6.Background = var167
var166 = require(var0.Src.Flags.getFFlagAvatarPreviewerEditingTools)
if var166() then
   var6:add("BodyPointsTool")
   local var0 = {}
   var0.ProjectionImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "projection.png"
   var0.SymmetricalImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "symmetry.png"
   var6.BodyPointsTool = var0
end
var6:add("Catalog")
local var183 = {}
local var184 = var1.Dictionary
var184 = var9
local var186 = {}
var186.BorderColor3 = var4.Border
var186.Padding = 10
var186.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
var183.ScrollingFrame = var184.join(var184, var186)
var183.ScrollingFrameHeight = UDim.new(1, 65494)
var183.CellSize = UDim2.fromOffset(90, 90)
var6.Catalog = var183
var6:add("CatalogItemButton")
local var202 = {}
local var203 = {}
var203.Color = var4.TextSecondary
var203.Image = "rbxasset://textures/AvatarCompatibilityPreviewer/user.png"
var203.AnchorPoint = Vector2.new(1, 0)
var203.Position = UDim2.new(1, 65532, 0, 4)
var203.Size = UDim2.fromOffset(13, 16)
var202.UserImage = var203
var202.ItemNamePaddingBottom = UDim.new(0, 12)
var6.CatalogItemButton = var202
var6:add("ContextualSurveyDialogButton")
local var226 = var6.ContextualSurveyDialogButton
local var227 = {}
var227.Image = var4.SendFeedback
var227.Position = UDim2.new(0, 17, 1, 65500)
var227.Size = UDim2.fromOffset(24, 24)
var6.ContextualSurveyDialogButton = var227
var226 = var11
if not var226() then
   var6:add("DummyPreview")
   local var0 = {}
   var0.Ambient = Color3.fromRGB(170, 185, 200)
   var0.LightColor = Color3.fromRGB(242, 236, 227)
   var0.LightDirection = Vector3.new(0.5, 65535, 0.1)
   var0.PanSpeedMultiplier = 0.25
   var0.PlatformHeight = 0.2
   var0.PlatformSize = 5
   var6.DummyPreview = var0
end
var6:add("EquippedItemsSidebar")
local var265 = {}
var265.CellSize = UDim2.fromOffset(50, 50)
var265.ItemSpacing = UDim.new(0, 2)
var265.PositionOffset = UDim2.fromOffset(5, 10)
var265.SidebarSpacing = 10
var265.Size = UDim2.new(0, 50, 1, 65516)
var6.EquippedItemsSidebar = var265
var6:add("EquippedItemPreview")
local var288 = {}
var288.StrokeColor = var4.Border
var288.StrokeThickness = 1
var6.EquippedItemPreview = var288
var6:add("ImportPage")
local var294 = {}
var294.ArrowImage = "rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"
var294.ArrowColor = var4.TextPrimary
local var297 = {}
var297.IconSize = 75
var297.InnerPadding = 2
var297.NameFontSize = 16
var297.NameLines = 2
var297.Padding = 4
var297.TitleColor = var4.TextLink
var297.PreviewAmbient = Color3.new(0.4, 0.4, 0.4)
var294.Avatar = var297
local var309 = {}
var309.Size = UDim2.fromOffset(24, 24)
var309.IconSize = 12
var294.BackButton = var309
var294.HeaderHeight = 35
var294.GridPadding = UDim2.fromOffset(5, 15)
var294.SearchBarHeight = UDim.new(0.8, 0)
var6.ImportPage = var294
var6:add("ItemDataPreviewModel")
local var327 = {}
var327.InstanceAmbient = Color3.new(0.4, 0.4, 0.4)
var6.ItemDataPreviewModel = var327
var6:add("ModelPreview")
local var336 = {}
var336.Ambient = Color3.fromRGB(170, 185, 200)
var336.LightColor = Color3.fromRGB(242, 236, 227)
var336.LightDirection = Vector3.new(0.5, 65535, 0.1)
var336.PanSpeedMultiplier = 0.25
var336.PlatformHeight = 0.2
var336.PlatformSize = 5
var6.ModelPreview = var336
var6:add("Notice")
local var357 = var6.Notice
local var358 = {}
var358.BackgroundColor = var4.SubBackground
var358.CornerRadius = UDim.new(0, 6)
var358.TextColor = var4.TextPrimary
var358.TextSize = 20
local var366 = {}
var366.Left = 8
var366.Right = 8
var366.Top = 4
var366.Bottom = 4
var358.Padding = var366
var6.Notice = var358
var357 = var11
if not var357() then
   var6:add("PrimaryDummyPreview")
   local var0 = {}
   var0.BackgroundImage = var4.PreviewerBackgroundImage
   var6.PrimaryDummyPreview = var0
end
var6:add("ResetCameraButton")
local var380 = {}
var380.Position = UDim2.new(1, 65526, 0, 15)
var380.Size = UDim2.fromOffset(32, 32)
var380.Spacing = 5
var380.Image = var4.ResetCameraImage
var6.ResetCameraButton = var380
var6:add("SelectScreen")
local var396 = {}
var396.ButtonHeight = 24
var396.Spacing = UDim.new(0, 18)
var6.SelectScreen = var396
var6:add("SkinPreview")
local var405 = {}
var405.HoveredBorderColor = var4.SecondaryStatesHoverOutlineBorder
var405.HoveredBorderThickness = 1
var405.SelectedBorderColor = var4.PrimaryMain
var405.SelectedBorderThickness = 2
var6.SkinPreview = var405
var6:add("StageSelector")
local var413 = {}
var413.BackgroundColor = var4.MainBackground
var413.ButtonSelectedBackgroundColor = var4.ButtonHover
var413.ButtonHeight = 32
var413.IconColor = var4.MainText
var413.IconSize = 18
var413.Width = 64
var6.StageSelector = var413
var6:add("Stars")
local var423 = {}
var423.StarColor = var4.MainText
var423.StarSize = UDim2.fromOffset(16, 16)
var423.StarFilled = var4.Star
var423.StarUnfilled = var4.StarUnfilled
var423.StarSpacing = 4
var423.RatingSpacing = 10
var6.Stars = var423
var6:add("SubmitDialog")
local var436 = {}
var436.Width = 500
var6.SubmitDialog = var436
var6:add("SubmitInner")
local var441 = {}
var441.CallToActionSpacing = UDim.new(0, 18)
var441.CheckboxSpacing = UDim.new(0, 4)
var441.ContentPadding = 40
var6.SubmitInner = var441
var6:add("Survey")
local var454 = {}
var454.HeadIndent = 22
var454.Spacing = 10
var454.MessageHeight = 96
var6.Survey = var454
var6:add("SurveyDialog")
local var460 = var6.SurveyDialog
local var461 = {}
var461.Width = 440
var461.FinishDialogSize = Vector2.new(250, 30)
var6.SurveyDialog = var461
var460 = require(var0.Src.Flags.getFFlagAvatarPreviewerTestingScreen)
if var460() then
   var6:add("TestingScreen")
   local var0 = {}
   var0.ButtonHeight = 24
   var0.Spacing = UDim.new(0, 18)
   var6.TestingScreen = var0
end
var6:add("UGCValidationErrorDialog")
local var480 = {}
var480.DetailsSpacing = 12
var480.IconTextSpacing = 4
var480.TitleDetailsSpacing = 26
var480.AlertMinContentSize = Vector2.new(500, 300)
var480.TextSize = 18
var480.WarningColor = var4.WarningText
var480.WarningFont = Enum.Font.SourceSansSemibold
var480.WarningImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var6.UGCValidationErrorDialog = var480
var6:add("UGCValidationNotice")
local var497 = {}
var497.Position = UDim2.fromOffset(8, 65532)
var497.Size = UDim2.new(1, 65472, 0, 48)
var497.ValidationIconSize = UDim2.fromOffset(24, 24)
var497.WarningColor = var4.WarningText
var497.WarningImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var6.UGCValidationNotice = var497
var6:add("UGCValidationStatusIcon")
local var52 = {}
var52.Color = Color3.new(1, 1, 1)
var52.Position = UDim2.fromOffset(4, 14)
var52.Size = UDim2.fromOffset(24, 24)
local var533 = {}
local var534 = var1.Dictionary
var534 = var52
local var536 = {}
var536.Color = var4.WarningText
var536.Image = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var533.&Failure = var534.join(var534, var536)
local var542 = var1.Dictionary
var542 = var52
local var544 = {}
var544.Image = var4.UGCValidationSuccessImage
var533.&Success = var542.join(var542, var544)
var6.UGCValidationStatusIcon = var533
var6:add("DisambiguationMenu")
local var550 = {}
var550.MinContentSize = Vector2.new(500, 300)
var550.ConfirmCancelContentSize = Vector2.new(200, 150)
var550.HorizontalSpacing = 8
var550.VerticalSpacing = 8
var550.TitleContentsSpacing = 24
var550.TextSpacing = 8
var550.DropdownWidth = 150
var550.AttachmentDropdownWidth = 120
var550.IconBackground = var4.SubBackground
var550.IconSize = UDim2.fromOffset(72, 72)
var6.DisambiguationMenu = var550
local var571 = var1.Dictionary
var571 = var8
local var573 = {}
local var577 = {}
var577.MaxWidth = 900
var573.&WarningLong = var1.Dictionary.join(var8.&Warning, var577)
var6.Alert = var571.join(var571, var573)
if game:DefineFastFlag("DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight", false) then
   local var582 = var1.Dictionary
   var582 = require(var7.DropdownMenu.style)
   local var584 = {}
   var584.MaxHeight = ∞
   var6.DropdownMenu = var582.join(var582, var584)
   local var588 = var1.Dictionary
   var588 = var10
   local var590 = {}
   local var594 = {}
   var594.MaxHeight = ∞
   var590.DropdownMenu = var1.Dictionary.join(var10.DropdownMenu, var594)
   var6.SelectInput = var588.join(var588, var590)
end
local var599 = var1.Dictionary
var599 = require(var7.Separator.style)
local var601 = {}
local var602 = {}
var602.StretchMargin = 5
var601.&SelectScreenSeparator = var602
var6.Separator = var599.join(var599, var601)
local var606 = var1.Dictionary
var606 = require(var7.Pane.style)
local var608 = {}
local var609 = {}
var609.Background = var4.Button
var609.CornerRadius = UDim.new(0, 4)
local var616 = {}
var616.Background = var4.ButtonHover
var5.Hover = var616
var608.&EquippedItemPreview = var609
local var618 = {}
var618.CornerRadius = UDim.new(0, 4)
var608.&EquippedItemPreviewInner = var618
local var623 = {}
var623.CornerRadius = UDim.new(0, 4)
var608.&SkinPreview = var623
var6.Pane = var606.join(var606, var608)
local var630 = var1.Dictionary
var630 = require(var7.SimpleTab.style)
local var632 = {}
local var633 = {}
var633.BackgroundColor = var4.SubBackground2
var633.BackgroundTransparency = 1
var633.BorderSize = 0
local var637 = {}
var637.Left = 12
var637.Top = 2
var637.Bottom = 0
var637.Right = 12
var633.Padding = var637
var633.TopLineHeight = 0
local var65 = {}
var65.BackgroundColor = var4.SubBackground2
var65.Font = Enum.Font.SourceSansBold
var5.Selected = var65
var632.&AssetPaletteTab = var633
var6.SimpleTab = var630.join(var630, var632)
local var649 = var1.Dictionary
var649 = require(var7.Tooltip.style)
local var651 = {}
local var66 = {}
var66.ShowDelay = 0
var651.&NoDelay = var66
var6.Tooltip = var649.join(var649, var651)
return {}
