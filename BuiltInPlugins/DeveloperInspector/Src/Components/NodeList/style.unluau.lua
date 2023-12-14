-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework)
local var1 = var0.Style.StyleKey
local var2 = var0.UIData
local var3 = require(var2.RoundBox.style)
local var4 = {}
var4.Background = var3
var4.BackgroundStyle = var3
var4.ScrollingFrame = require(var2.ScrollingFrame.style)
var4.BackgroundColor = var1.MainBackground
var4.Padding = 1
var4.RowHeight = 24
var4.IconPadding = 5
var4.HoverColor = var1.ButtonHover
var4.SelectedColor = var1.DialogMainButton
local var33 = var1.DialogMainButtonText
var4.SelectedTextColor = var33
var33 = var0.Util.deepCopy
var4.Link = var33(require(var2.LinkText.style))
return var4
