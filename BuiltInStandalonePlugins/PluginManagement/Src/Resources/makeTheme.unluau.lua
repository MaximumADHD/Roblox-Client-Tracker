-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Style
local var1 = var0.StyleKey
local var2 = {}
var1.HttpOverviewTextColor = Color3.fromRGB(136, 136, 136)
var1.EmphasisTextColor = Color3.fromRGB(255, 255, 255)
var1.ScrollbarColor = Color3.fromRGB(204, 204, 204)
var1.SubTitleTextColor = Color3.fromRGB(170, 170, 170)
local var114 = {}
var114.Weight = 1
var114.StretchMargin = 7
var114.Color = Color3.fromRGB(170, 170, 170)
var2.Separator = var114
local var4 = {}
var1.HttpOverviewTextColor = Color3.fromRGB(46, 46, 46)
var1.EmphasisTextColor = Color3.fromRGB(0, 0, 0)
var1.ScrollbarColor = Color3.fromRGB(25, 25, 25)
var1.SubTitleTextColor = Color3.fromRGB(0, 0, 0)
local var147 = {}
var147.Weight = 1
var147.StretchMargin = 7
local var154 = Color3.fromRGB(0, 0, 0)
var147.Color = var154
var4.Separator = var147
var154 = var2
local var6 = var0.Themes.StudioTheme.new(var154, var4)
local var158 = {}
var158.BackgroundColor = var1.MainBackground
var158.ButtonColor = var1.Button
var158.HttpOverviewTextColor = var1.HttpOverviewTextColor
var158.ProgressBarColor = var1.DialogMainButtonSelected
var158.HoverColor = var1.ButtonHover
var158.BorderColor = var1.Border
var158.SubTextColor = var1.SubText
var158.InfoTextColor = var1.DimmedText
var158.SubTitleTextColor = var1.SubTitleTextColor
var158.EmphasisTextColor = var1.EmphasisTextColor
var158.TextColor = var1.MainText
var158.ErrorColor = var1.ErrorText
var158.LinkColor = var1.LinkText
var158.Green = Color3.fromRGB(64, 166, 81)
var158.White = Color3.fromRGB(255, 255, 255)
var158.DisabledColor = var1.MainTextDisabled
var158.ScrollbarColor = var1.ScrollbarColor
var158.ScrollbarTransparency = 0.7
var158.ScrollbarSize = 8
var158.Font = Enum.Font.SourceSans
var158.FontBold = Enum.Font.SourceSansSemibold
var6:extend(var158)
return var6
