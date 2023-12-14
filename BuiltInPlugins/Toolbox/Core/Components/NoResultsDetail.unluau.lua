-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var1.Framework).Util.Typecheck.t
local var5 = require(var0.Core.Util.Constants)
local var6 = require(var1.Framework).UI.TextWithInlineLink
local var7 = require(var1.Framework).ContextServices
local var8 = var2.PureComponent:extend("NoResultsDetail")
function var8.init(arg1)
   local var125 = {}
   var125.maxChildWidth = 0
   arg1.state = var125
   function arg1.updateSize(arg1)
      local var131 = {}
      var131.maxChildWidth = arg1.AbsoluteSize.X
      arg1:setState(var131)
   end
   
end

local function fun7(arg1)
   local var0 = arg1.props
   local var137 = {}
   local var140 = {}
   var140.TextLine1 = var4.string
   var140.TextLine2 = var4.string
   var140.LinkText = var4.string
   var137.content = var4.interface(var140)
   local var3 = var4
   var137.onLinkClicked = var3.callback
   local var152 = var4.interface(var137)(var0)
   assert()
   local var5 = var0.content
   local var166 = var0.ZIndex
   if var0.Visible == "props" then
      if not var0.Visible then
         if var0.Visible == "props" then
            local var0 = false
         end
         local var0 = true
      end
   end
   if var0.Visible == "props" then
      local var0 = false
   end
   local var7 = {}
   local var177 = {}
   var177.TextColor = var0.Stylizer.infoBanner.textColor
   var177.BackgroundTransparency = 1
   var177.Font = var5.FONT
   var177.TextSize = var5.FONT_SIZE_MEDIUM
   var177.TextXAlignment = Enum.TextXAlignment.Center
   var177.TextYAlignment = Enum.TextYAlignment.Center
   var177.TextWrapped = true
   var177.ClipsDescendants = true
   var7.TextProps = var177
   var7.LinkPlaceholder = "{link}"
   var7.LinkText = var5.LinkText
   var7.OnLinkClicked = var0.onLinkClicked
   var7.MaxWidth = arg1.state.maxChildWidth
   local var194 = {}
   var194.Position = var0.Position or UDim2.new(0, 0, 0, 0)
   var194.Size = UDim2.new(1, 0, 1, 0)
   var194.BackgroundTransparency = 1
   var194.ZIndex = var3
   var194.Visible = true
   var2.Change.AbsoluteSize = arg1.updateSize
   local var206 = {}
   local var210 = {}
   var210.SortOrder = Enum.SortOrder.LayoutOrder
   var210.FillDirection = Enum.FillDirection.Vertical
   var210.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var206.Layout = var2.createElement("UIListLayout", var210)
   local var221 = {}
   var221.Text = var5.TextLine1
   local var223 = 1
   var221.LayoutOrder = var223
   var223 = var7
   var206.TextLine1 = var2.createElement(var6, var3.Dictionary.join(var221, var223))
   local var232 = {}
   var232.Text = var5.TextLine2
   local var234 = 2
   var232.LayoutOrder = var234
   var234 = var7
   var206.TextLine2 = var2.createElement(var6, var3.Dictionary.join(var232, var234))
   return var2.createElement("Frame", var194, var206)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var137 = {}
   local var140 = {}
   var140.TextLine1 = var4.string
   var140.TextLine2 = var4.string
   var140.LinkText = var4.string
   var137.content = var4.interface(var140)
   local var3 = var4
   var137.onLinkClicked = var3.callback
   local var152 = var4.interface(var137)(var0)
   assert()
   local var5 = var0.content
   local var166 = var0.ZIndex
   if var0.Visible == "props" then
      if not var0.Visible then
         if var0.Visible == "props" then
            local var0 = false
         end
         local var0 = true
      end
   end
   if var0.Visible == "props" then
      local var0 = false
   end
   local var7 = {}
   local var177 = {}
   var177.TextColor = var0.Stylizer.infoBanner.textColor
   var177.BackgroundTransparency = 1
   var177.Font = var5.FONT
   var177.TextSize = var5.FONT_SIZE_MEDIUM
   var177.TextXAlignment = Enum.TextXAlignment.Center
   var177.TextYAlignment = Enum.TextYAlignment.Center
   var177.TextWrapped = true
   var177.ClipsDescendants = true
   var7.TextProps = var177
   var7.LinkPlaceholder = "{link}"
   var7.LinkText = var5.LinkText
   var7.OnLinkClicked = var0.onLinkClicked
   var7.MaxWidth = arg1.state.maxChildWidth
   local var194 = {}
   var194.Position = var0.Position or UDim2.new(0, 0, 0, 0)
   var194.Size = UDim2.new(1, 0, 1, 0)
   var194.BackgroundTransparency = 1
   var194.ZIndex = var3
   var194.Visible = true
   var2.Change.AbsoluteSize = arg1.updateSize
   local var206 = {}
   local var210 = {}
   var210.SortOrder = Enum.SortOrder.LayoutOrder
   var210.FillDirection = Enum.FillDirection.Vertical
   var210.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var206.Layout = var2.createElement("UIListLayout", var210)
   local var221 = {}
   var221.Text = var5.TextLine1
   local var223 = 1
   var221.LayoutOrder = var223
   var223 = var7
   var206.TextLine1 = var2.createElement(var6, var3.Dictionary.join(var221, var223))
   local var232 = {}
   var232.Text = var5.TextLine2
   local var234 = 2
   var232.LayoutOrder = var234
   var234 = var7
   var206.TextLine2 = var2.createElement(var6, var3.Dictionary.join(var232, var234))
   return var2.createElement("Frame", var194, var206)
end

fun7 = var7.withContext
local var238 = {}
var238.Stylizer = var7.Stylizer
var8 = fun7(var238)(var8)
return var8
