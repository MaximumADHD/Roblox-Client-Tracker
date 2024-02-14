-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("CompositorDebugger").Packages.Framework)
local var1 = var0.Style.StyleKey
local var2 = var0.Util.StyleModifier
local var3 = {}
local var13 = {}
var13.Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"
var13.Size = 12
var13.ExpandedOffset = Vector2.new(24, 0)
var13.CollapsedOffset = Vector2.new(12, 0)
var13.Color = var1.MainText
var3.Arrow = var13
local var25 = {}
var25.Image = "rbxasset://textures/CompositorDebugger/eye.png"
var25.Size = UDim2.fromOffset(12, 12)
var25.ActiveColor = var1.MainText
var25.ActiveTransparency = 0
var25.InactiveColor = var1.MainText
var25.InactiveTransparency = 1
var3.Filter = var25
local var35 = {}
var35.Image = "rbxasset://textures/CompositorDebugger/clear.png"
var35.Size = UDim2.fromOffset(12, 12)
var3.Detach = var35
var3.Border = var1.SubBackground
var3.Background = var1.MainBackground
var3.Indent = 17
local var45 = {}
var45.Background = var1.ButtonHover
local var47 = {}
var47.Image = "rbxasset://textures/CompositorDebugger/eye.png"
var47.Size = UDim2.fromOffset(12, 12)
var47.ActiveColor = var1.MainText
var47.ActiveTransparency = 0
var47.InactiveColor = var1.MainTextDisabled
var47.InactiveTransparency = 0
var45.Filter = var47
var2.Hover = var45
local var58 = {}
var58.Background = var1.ActionSelected
local var60 = {}
var60.Image = "rbxasset://textures/CompositorDebugger/eye.png"
var60.Size = UDim2.fromOffset(12, 12)
var60.ActiveColor = var1.MainText
var60.ActiveTransparency = 0
var60.InactiveColor = var1.MainTextDisabled
var60.InactiveTransparency = 0
var58.Filter = var60
var2.Selected = var58
local var70 = {}
var70.Tree = 250
var70.Weight = 40
var70.Timestamp = 100
var3.ColumnWidths = var70
var3.Spacing = 5
local var75 = {}
var75.Top = 1
var75.Bottom = 1
var75.Left = 0
var75.Right = 0
var3.Padding = var75
var3.ActiveLayer = var1.MainText
var3.InactiveLayer = var1.MainTextDisabled
local var82 = {}
var82.Active = var1.DialogMainButtonSelected
var82.Inactive = var1.MainTextDisabled
var82.Background = var1.Button
var82.Border = var1.Border
var3.TimeBar = var82
local var87 = {}
var87.TopLayer = Enum.Font.SourceSansBold
var87.RegularLayer = Enum.Font.SourceSans
var3.Font = var87
local var90 = {}
var90.Client = Color3.fromHex("349AD5")
var90.Server = Color3.fromHex("00CC67")
var3.Colors = var90
local var16 = {}
local var98 = {}
var98.Image = "rbxasset://textures/CompositorDebugger/blend1d.png"
var98.Size = UDim2.fromOffset(12, 12)
var16.Blend1D = var98
local var104 = {}
var104.Image = "rbxasset://textures/CompositorDebugger/blend2d.png"
var104.Size = UDim2.fromOffset(12, 12)
var16.Blend2D = var104
local var110 = {}
var110.Image = "rbxasset://textures/CompositorDebugger/clip.png"
var110.Size = UDim2.fromOffset(12, 12)
var16.ClipLayer = var110
local var116 = {}
var116.Image = "rbxasset://textures/CompositorDebugger/default.png"
var116.Size = UDim2.fromOffset(12, 12)
var16.Default = var116
local var122 = {}
var122.Image = "rbxasset://textures/CompositorDebugger/select.png"
var122.Size = UDim2.fromOffset(12, 12)
var16.SelectLayer = var122
local var22 = {}
var22.Image = "rbxasset://textures/CompositorDebugger/sequence.png"
var22.Size = UDim2.fromOffset(12, 12)
var16.SequenceLayer = var22
var3.Icons = var16
return var3
