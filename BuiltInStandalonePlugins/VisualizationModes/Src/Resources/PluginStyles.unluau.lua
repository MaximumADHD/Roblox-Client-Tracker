-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("VisualizationModes").Packages.Framework)
local var1 = var0.Styling.createStyleRule
local var15 = {}
var15.Size = UDim2.new(1, 0, 0, 5)
var15.Position = UDim2.new(0.5, 0, 1, 0)
var15.AnchorPoint = Vector2.new(0.5, 1)
var15.BackgroundTransparency = 1
local var36 = {}
var36.Size = UDim2.new(1, 0, 0, 1)
var36.Position = UDim2.fromOffset(0, 2)
var36.BackgroundColor3 = "$VisualizationModesDivider"
var36.BorderSizePixel = 0
local var49 = var1("> #DividerRender", var36)
local var50 = var1(".VisualizationModes-Bottom-Divider", var15, {})
local var53 = {}
var53.BorderSizePixel = 0
var53.BackgroundTransparency = 1
var53.Size = UDim2.fromScale(0, 1)
var53.AutomaticSize = Enum.AutomaticSize.X
local var64 = {}
var64.BackgroundTransparency = 0
var64.BorderSizePixel = 0
var64.BackgroundColor3 = "$VisualizationModesHighlightColor"
var64.AnchorPoint = Vector2.new(0, 0.5)
var64.Position = UDim2.fromScale(0, 0.5)
local var79 = {}
var79.TextColor3 = "$VisualizationModesHighlightTextColor"
var79.AnchorPoint = Vector2.new(0, 0.5)
var79.Position = UDim2.fromScale(0, 0.5)
local var92 = {}
var92.TextColor3 = "$TextPrimary"
var92.BorderSizePixel = 0
var92.BackgroundTransparency = 1
var92.TextXAlignment = Enum.TextXAlignment.Left
var92.TextYAlignment = Enum.TextYAlignment.Center
var92.Size = UDim2.fromScale(0, 1)
var92.AutomaticSize = Enum.AutomaticSize.X
local var106 = {}
var106.TextColor3 = "$TextDisabled"
local var108 = var1(".VisualizationModes-Disabled", var106)
local var112 = {}
var112.BorderSizePixel = 0
var112.BackgroundColor3 = "$VisualizationModesBadgeBackground"
local var118 = {}
var118.CornerRadius = UDim.new(0.5, 0)
local var123 = var1("::UICorner", var118)
local var126 = {}
var126.PaddingLeft = UDim.new(0, 6)
var126.PaddingTop = UDim.new(0, 1)
var126.PaddingBottom = UDim.new(0, 1)
var126.PaddingRight = UDim.new(0, 6)
local var143 = var1("::UIPadding", var126)
local var146 = {}
var146.TextSize = 12
var146.TextColor3 = "$VisualizationModesBadgeText"
var146.TextYAlignment = Enum.TextYAlignment.Center
local var150 = var1(">> .Component-TextLabel", var146)
var143 = var1
local var158 = var143("::UIStroke", {})
local var162 = {}
var162.BackgroundTransparency = 1
var162.ImageColor3 = "$TextPrimary"
local var168 = {}
var168.Size = UDim2.fromOffset(16, 16)
var168.AnchorPoint = Vector2.new(0.5, 0.5)
var168.Position = UDim2.fromScale(0.5, 0.5)
local var181 = var1("ArrowImage", var168)
local var184 = {}
var184.ImageColor3 = "$TextSecondary"
local var186 = var1(":pressed", var184)
local var189 = {}
var189.ImageColor3 = "$TextSecondary"
local var191 = var1(":hover", var189)
local var195 = {}
var195.Image = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"
local var200 = {}
var200.Image = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"
local var205 = {}
var205.BackgroundTransparency = 1
var205.Size = UDim2.new(1, 0, 0, 32)
var205.AutoButtonColor = false
local var217 = {}
var217.BorderSizePixel = 0
var217.Size = UDim2.new(1, 0, 0, 28)
var217.AnchorPoint = Vector2.new(0.5, 0.5)
var217.Position = UDim2.fromScale(0.5, 0.5)
var217.BackgroundTransparency = 1
local var237 = {}
var237.CornerRadius = UDim.new(0, 4)
local var242 = var1("::UICorner", var237)
local var243 = var1("> #VisualizationModesEntryBacking", var217, {})
local var246 = {}
var246.BackgroundTransparency = 0
var246.BackgroundColor3 = "$ActionActivated"
local var249 = var1(".VisualizationModes-Active:pressed > #VisualizationModesEntryBacking", var246)
local var252 = {}
var252.BackgroundTransparency = 0
var252.BackgroundColor3 = "$VisualizationModesDimActionHover"
local var255 = var1(".VisualizationModes-Active:hover > #VisualizationModesEntryBacking", var252)
local var259 = {}
var259.AutomaticCanvasSize = Enum.AutomaticSize.Y
var259.CanvasSize = UDim2.new(1, 0, 0, 20)
local var270 = {}
var270.BorderSizePixel = 0
var270.Size = UDim2.new(1, 65516, 1, 0)
var270.BackgroundTransparency = 1
var270.AutoButtonColor = false
local var283 = {}
var283.BorderSizePixel = 0
var283.Size = UDim2.fromScale(1, 0)
var283.AutomaticSize = Enum.AutomaticSize.Y
var283.BackgroundTransparency = 1
var283.AutoButtonColor = false
local var26 = var1(".VisualizationModes-Group", var283)
local var295 = {}
var295.ScrollBarThickness = 3
local var300 = {}
var300.Size = UDim2.new(1, 65532, 0, 0)
local var307 = var1("> #Content", var300)
local var27 = var1(".VisualizationModes-MainScrollingFrame", var295, {})
local var315 = {}
var315.PaddingLeft = UDim.new(0, 5)
var315.PaddingBottom = UDim.new(0, 5)
var315.PaddingTop = UDim.new(0, 5)
var315.PaddingRight = UDim.new(0, 2)
local var28 = var1("::UIPadding", var315)
local var29 = var1(".VisualizationModes-Popup", {}, {})
var50 = var1
local var335 = {}
var335.Name = "UIStrokePane"
var335.BackgroundTransparency = 1
var335.Size = UDim2.new(1, 65534, 1, 65534)
var335.AnchorPoint = Vector2.new(0.5, 0.5)
var335.Position = UDim2.fromScale(0.5, 0.5)
local var355 = {}
var355.Color = "$Divider"
local var357 = var1("::UIStroke", var355)
local var358 = var50(".VisualizationModesStrokePane", var335, {})
local var361 = {}
var361.TextXAlignment = Enum.TextXAlignment.Center
var361.TextYAlignment = Enum.TextYAlignment.Center
var361.TextColor3 = "$TextSecondary"
var361.Size = UDim2.new(1, 0, 0, 28)
local var371 = 1
var361.BackgroundTransparency = var371
local var372 = var1(".VisualizationModes-HiddenCountLabel", var361)
var372 = var0.Styling.createStyleSheet
var371 = {}
return var372("VisualizationModes", { 
   var1(".VisualizationModes-Bottom-Divider", var15, {}), 
   var1(".VisualizationModes-TextLabel-Container", var53), 
   var1(".VisualizationModes-Highlight", var64), 
   var1(".VisualizationModes-Highlight-TextLabel", var79), 
   var1(".VisualizationModes-TextLabel", var92, {}), 
   var1(".VisualizationModes-Badge", var112, {}), 
   var1(".VisualizationModes-MainPane", {}, {}), 
   var1(".VisualizationModes-ExpandIcon", var162, {}), 
   var1(".VisualizationModes-ExpandIcon-Expanded", var195), 
   var1(".VisualizationModes-ExpandIcon-Collapsed", var200), 
   var1(".VisualizationModes-Entry", var205, {}), 
   var1(".ScrollingAutomaticSize", var259), 
   var1(".VisualizationModes-EntryButton", var270)
}, var371)
