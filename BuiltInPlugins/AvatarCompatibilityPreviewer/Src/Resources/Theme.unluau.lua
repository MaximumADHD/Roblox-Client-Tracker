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
local var69 = {}
var69.Height = 42
var69.Image = "rbxasset://textures/AvatarCompatibilityPreviewer/add.png"
var69.ImageColor = var4.TextSecondary
var69.ImageSize = 20
var69.PaddingTop = 3
var69.PaddingBottom = 3
var69.FailureDialogSpacing = UDim.new(0, 4)
var6.AddItemButton = var69
var6:add("AnimationControllerDisplay")
local var83 = {}
var83.Padding = 30
var6.AnimationControllerDisplay = var83
var6:add("AnimationPlaybackSlider")
local var88 = {}
var88.PlayImage = var4.PlayImage
var88.PauseImage = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"
var88.PlayButtonWidth = 20
var88.PlayTimeLabelWidth = 60
var88.Padding = 12
var6.AnimationPlaybackSlider = var88
var6:add("AnimationPreview")
local var97 = {}
var97.PausedAnimationAlpha = 0.5
local var99 = {}
var99.FrontRightAngleLerp = 0.4
var97.&BodyPreview = var99
local var101 = {}
var101.FieldOfView = 30
var101.FrontRightAngleLerp = 0.08
var101.InitialDistance = 2.8
var97.&FacePreview = var101
var6.AnimationPreview = var97
var6:add("AssetPalettes")
local var108 = {}
local var109 = var1.Dictionary
var109 = var9
local var111 = {}
var111.BackgroundColor3 = var4.SubBackground2
var111.BackgroundTransparency = 0
var111.Padding = 0
var111.ScrollBarThickness = 0
var111.Spacing = UDim.new(0, 5)
var108.ScrollingFrame = var109.join(var109, var111)
var108.Size = UDim2.new(1, 0, 0, 24)
var6.AssetPalettes = var108
var6:add("AutoSetupScreen")
local var130 = {}
var130.AlertPaddingHorizontal = UDim.new(0, 20)
var130.AlertPaddingVertical = UDim.new(0, 8)
var130.ControlsPosition = UDim2.new(1, 65520, 1, 65520)
var130.SpinRate = -0.25
var6.AutoSetupScreen = var130
var6:add("AvatarScreen")
local var149 = {}
local var150 = {}
var150.BackgroundColor = var4.SubBackground2
var150.SeparatorColor = var4.SubBackground
var150.SeparatorWidth = 4
var150.Width = 122
var149.AssetPalettes = var150
local var155 = {}
var155.Height = 64
var155.VerticalOffset = 65532
var149.Tabs = var155
var6.AvatarScreen = var149
var6:add("Background")
local var161 = {}
var161.Image = var4.PreviewerBackgroundImage
var6.Background = var161
var6:add("Catalog")
local var166 = {}
local var167 = var1.Dictionary
var167 = var9
local var169 = {}
var169.BorderColor3 = var4.Border
var169.Padding = 10
var169.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
var166.ScrollingFrame = var167.join(var167, var169)
var166.ScrollingFrameHeight = UDim.new(1, 65494)
var166.CellSize = UDim2.fromOffset(90, 90)
var6.Catalog = var166
var6:add("CatalogItemButton")
local var185 = {}
local var186 = {}
var186.Color = var4.TextSecondary
var186.Image = "rbxasset://textures/AvatarCompatibilityPreviewer/user.png"
var186.AnchorPoint = Vector2.new(1, 0)
var186.Position = UDim2.new(1, 65532, 0, 4)
var186.Size = UDim2.fromOffset(13, 16)
var185.UserImage = var186
var185.ItemNamePaddingBottom = UDim.new(0, 12)
var6.CatalogItemButton = var185
var6:add("ContextualSurveyDialogButton")
local var209 = var6.ContextualSurveyDialogButton
local var210 = {}
var210.Image = var4.SendFeedback
var210.Position = UDim2.new(0, 17, 1, 65500)
var210.Size = UDim2.fromOffset(24, 24)
var6.ContextualSurveyDialogButton = var210
var209 = var11
if not var209() then
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
local var248 = {}
var248.CellSize = UDim2.fromOffset(50, 50)
var248.ItemSpacing = UDim.new(0, 2)
var248.PositionOffset = UDim2.fromOffset(5, 10)
var248.SidebarSpacing = 10
var248.Size = UDim2.new(0, 50, 1, 65516)
var6.EquippedItemsSidebar = var248
var6:add("EquippedItemPreview")
local var271 = {}
var271.StrokeColor = var4.Border
var271.StrokeThickness = 1
var6.EquippedItemPreview = var271
var6:add("ImportPage")
local var277 = {}
var277.ArrowImage = "rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"
var277.ArrowColor = var4.TextPrimary
local var280 = {}
var280.IconSize = 75
var280.InnerPadding = 2
var280.NameFontSize = 16
var280.NameLines = 2
var280.Padding = 4
var280.TitleColor = var4.TextLink
var280.PreviewAmbient = Color3.new(0.4, 0.4, 0.4)
var277.Avatar = var280
local var292 = {}
var292.Size = UDim2.fromOffset(24, 24)
var292.IconSize = 12
var277.BackButton = var292
var277.HeaderHeight = 35
var277.GridPadding = UDim2.fromOffset(5, 15)
var277.SearchBarHeight = UDim.new(0.8, 0)
var6.ImportPage = var277
var6:add("ItemDataPreviewModel")
local var310 = {}
var310.InstanceAmbient = Color3.new(0.4, 0.4, 0.4)
var6.ItemDataPreviewModel = var310
var6:add("ModelPreview")
local var319 = {}
var319.Ambient = Color3.fromRGB(170, 185, 200)
var319.LightColor = Color3.fromRGB(242, 236, 227)
var319.LightDirection = Vector3.new(0.5, 65535, 0.1)
var319.PanSpeedMultiplier = 0.25
var319.PlatformHeight = 0.2
var319.PlatformSize = 5
var6.ModelPreview = var319
var6:add("Notice")
local var340 = var6.Notice
local var341 = {}
var341.BackgroundColor = var4.SubBackground
var341.CornerRadius = UDim.new(0, 6)
var341.TextColor = var4.TextPrimary
var341.TextSize = 20
local var349 = {}
var349.Left = 8
var349.Right = 8
var349.Top = 4
var349.Bottom = 4
var341.Padding = var349
var6.Notice = var341
var340 = var11
if not var340() then
   var6:add("PrimaryDummyPreview")
   local var0 = {}
   var0.BackgroundImage = var4.PreviewerBackgroundImage
   var6.PrimaryDummyPreview = var0
end
var6:add("ResetCameraButton")
local var363 = {}
var363.Position = UDim2.new(1, 65526, 0, 15)
var363.Size = UDim2.fromOffset(32, 32)
var363.Spacing = 5
var363.Image = var4.ResetCameraImage
var6.ResetCameraButton = var363
var6:add("SelectScreen")
local var379 = {}
var379.ButtonHeight = 24
var379.Spacing = UDim.new(0, 18)
var6.SelectScreen = var379
var6:add("SkinPreview")
local var388 = {}
var388.HoveredBorderColor = var4.SecondaryStatesHoverOutlineBorder
var388.HoveredBorderThickness = 1
var388.SelectedBorderColor = var4.PrimaryMain
var388.SelectedBorderThickness = 2
var6.SkinPreview = var388
var6:add("StageSelector")
local var396 = {}
var396.BackgroundColor = var4.MainBackground
var396.ButtonSelectedBackgroundColor = var4.ButtonHover
var396.ButtonHeight = 32
var396.IconColor = var4.MainText
var396.IconSize = 18
var396.Width = 64
var6.StageSelector = var396
var6:add("Stars")
local var406 = {}
var406.StarColor = var4.MainText
var406.StarSize = UDim2.fromOffset(16, 16)
var406.StarFilled = var4.Star
var406.StarUnfilled = var4.StarUnfilled
var406.StarSpacing = 4
var406.RatingSpacing = 10
var6.Stars = var406
var6:add("SubmitDialog")
local var419 = {}
var419.Width = 500
var6.SubmitDialog = var419
var6:add("SubmitInner")
local var424 = {}
var424.CallToActionSpacing = UDim.new(0, 18)
var424.CheckboxSpacing = UDim.new(0, 4)
var424.ContentPadding = 40
var6.SubmitInner = var424
var6:add("Survey")
local var437 = {}
var437.HeadIndent = 22
var437.Spacing = 10
var437.MessageHeight = 96
var6.Survey = var437
var6:add("SurveyDialog")
local var443 = var6.SurveyDialog
local var444 = {}
var444.Width = 440
var444.FinishDialogSize = Vector2.new(250, 30)
var6.SurveyDialog = var444
var443 = require(var0.Src.Flags.getFFlagAvatarPreviewerTestingScreen)
if var443() then
   var6:add("TestingScreen")
   local var0 = {}
   var0.ButtonHeight = 24
   var0.Spacing = UDim.new(0, 18)
   var6.TestingScreen = var0
end
var6:add("UGCValidationErrorDialog")
local var463 = {}
var463.DetailsSpacing = 12
var463.IconTextSpacing = 4
var463.TitleDetailsSpacing = 26
var463.AlertMinContentSize = Vector2.new(500, 300)
var463.TextSize = 18
var463.WarningColor = var4.WarningText
var463.WarningFont = Enum.Font.SourceSansSemibold
var463.WarningImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var6.UGCValidationErrorDialog = var463
var6:add("UGCValidationNotice")
local var480 = {}
var480.Position = UDim2.fromOffset(8, 65532)
var480.Size = UDim2.new(1, 65472, 0, 48)
var480.ValidationIconSize = UDim2.fromOffset(24, 24)
var480.WarningColor = var4.WarningText
var480.WarningImage = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var6.UGCValidationNotice = var480
var6:add("UGCValidationStatusIcon")
local var51 = {}
var51.Color = Color3.new(1, 1, 1)
var51.Position = UDim2.fromOffset(4, 14)
var51.Size = UDim2.fromOffset(24, 24)
local var516 = {}
local var517 = var1.Dictionary
var517 = var51
local var519 = {}
var519.Color = var4.WarningText
var519.Image = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/" ... "warning.png"
var516.&Failure = var517.join(var517, var519)
local var525 = var1.Dictionary
var525 = var51
local var527 = {}
var527.Image = var4.UGCValidationSuccessImage
var516.&Success = var525.join(var525, var527)
var6.UGCValidationStatusIcon = var516
var6:add("DisambiguationMenu")
local var533 = {}
var533.MinContentSize = Vector2.new(500, 300)
var533.ConfirmCancelContentSize = Vector2.new(200, 150)
var533.HorizontalSpacing = 8
var533.VerticalSpacing = 8
var533.TitleContentsSpacing = 24
var533.TextSpacing = 8
var533.DropdownWidth = 150
var533.AttachmentDropdownWidth = 120
var533.IconBackground = var4.SubBackground
var533.IconSize = UDim2.fromOffset(72, 72)
var6.DisambiguationMenu = var533
local var554 = var1.Dictionary
var554 = var8
local var556 = {}
local var560 = {}
var560.MaxWidth = 900
var556.&WarningLong = var1.Dictionary.join(var8.&Warning, var560)
var6.Alert = var554.join(var554, var556)
if game:DefineFastFlag("DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight", false) then
   local var565 = var1.Dictionary
   var565 = require(var7.DropdownMenu.style)
   local var567 = {}
   var567.MaxHeight = ∞
   var6.DropdownMenu = var565.join(var565, var567)
   local var571 = var1.Dictionary
   var571 = var10
   local var573 = {}
   local var577 = {}
   var577.MaxHeight = ∞
   var573.DropdownMenu = var1.Dictionary.join(var10.DropdownMenu, var577)
   var6.SelectInput = var571.join(var571, var573)
end
local var582 = var1.Dictionary
var582 = require(var7.Separator.style)
local var584 = {}
local var585 = {}
var585.StretchMargin = 5
var584.&SelectScreenSeparator = var585
var6.Separator = var582.join(var582, var584)
local var589 = var1.Dictionary
var589 = require(var7.Pane.style)
local var591 = {}
local var592 = {}
var592.Background = var4.Button
var592.CornerRadius = UDim.new(0, 4)
local var599 = {}
var599.Background = var4.ButtonHover
var5.Hover = var599
var591.&EquippedItemPreview = var592
local var601 = {}
var601.CornerRadius = UDim.new(0, 4)
var591.&EquippedItemPreviewInner = var601
local var606 = {}
var606.CornerRadius = UDim.new(0, 4)
var591.&SkinPreview = var606
var6.Pane = var589.join(var589, var591)
local var613 = var1.Dictionary
var613 = require(var7.SimpleTab.style)
local var615 = {}
local var616 = {}
var616.BackgroundColor = var4.SubBackground2
var616.BackgroundTransparency = 1
var616.BorderSize = 0
local var620 = {}
var620.Left = 12
var620.Top = 2
var620.Bottom = 0
var620.Right = 12
var616.Padding = var620
var616.TopLineHeight = 0
local var64 = {}
var64.BackgroundColor = var4.SubBackground2
var64.Font = Enum.Font.SourceSansBold
var5.Selected = var64
var615.&AssetPaletteTab = var616
var6.SimpleTab = var613.join(var613, var615)
local var632 = var1.Dictionary
var632 = require(var7.Tooltip.style)
local var634 = {}
local var65 = {}
var65.ShowDelay = 0
var634.&NoDelay = var65
var6.Tooltip = var632.join(var632, var634)
return {}
