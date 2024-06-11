-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(512, 256)
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework).ContextServices
local var4 = require(var1.Src.Actions.SetScreen)
local var5 = require(var1.Src.Components.ButtonBar)
local var6 = require(var1.Src.Util.Analytics)
local var7 = var2.PureComponent:extend("Footer")
local function fun9(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var480 = {}
   var480.BackgroundColor3 = var1.backgroundColor
   var480.BorderSizePixel = 0
   var480.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var480.AnchorPoint = Vector2.new(0, 1)
   var480.Position = UDim2.new(0, 0, 1, 0)
   var480.ZIndex = 2
   local var500 = {}
   local var504 = {}
   var504.Size = UDim2.new(1, 0, 0, 3)
   var504.AnchorPoint = Vector2.new(0, 1)
   var504.Image = "rbxasset://textures/gradient.png"
   var504.ImageRectSize = var0
   var504.BorderSizePixel = 0
   var504.BackgroundTransparency = 1
   var504.ImageColor3 = var1.footer.gradient
   var504.ImageTransparency = 0.9
   var504.ZIndex = 1
   var500.Gradient = var2.createElement("ImageLabel", var504)
   local var527 = {}
   var527.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var527.Buttons = {}
   var527.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun7(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var527.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun7 = var0[var2.Children]
   var500.SaveSettings = var2.createElement(var5, var527, fun7)
   if var4 == "props" then
      local var552 = {}
      var552.Size = UDim2.new(0.15, 0, 0.5, 0)
      var552.Position = UDim2.new(0.13, 0, 0.5, 0)
      var552.AnchorPoint = Vector2.new(0.5, 0.5)
      var552.BorderSizePixel = 3
      var552.TextColor3 = var1.defaultButton.ButtonColor
      var552.BackgroundTransparency = 1
      var552.TextXAlignment = Enum.TextXAlignment.Left
      var552.TextSize = 20
      var552.Font = var1.footer.textbutton.font
      var552.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var552)
   end
   var500.GotoNextScreen = false
   return var2.createElement("Frame", var480, var500)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.OnClose
   local var3 = var0.MainButton
   local var4 = var0.NextScreen
   local var5 = var0.OpenNextScreen
   local var6 = var0.IsPublish
   local var480 = {}
   var480.BackgroundColor3 = var1.backgroundColor
   var480.BorderSizePixel = 0
   var480.Size = UDim2.new(1, 0, 0, var1.FOOTER_HEIGHT)
   var480.AnchorPoint = Vector2.new(0, 1)
   var480.Position = UDim2.new(0, 0, 1, 0)
   var480.ZIndex = 2
   local var500 = {}
   local var504 = {}
   var504.Size = UDim2.new(1, 0, 0, 3)
   var504.AnchorPoint = Vector2.new(0, 1)
   var504.Image = "rbxasset://textures/gradient.png"
   var504.ImageRectSize = var0
   var504.BorderSizePixel = 0
   var504.BackgroundTransparency = 1
   var504.ImageColor3 = var1.footer.gradient
   var504.ImageTransparency = 0.9
   var504.ZIndex = 1
   var500.Gradient = var2.createElement("ImageLabel", var504)
   local var527 = {}
   var527.ZIndex = 2
   local var7 = {}
   var7.Name = "Cancel"
   var7.Active = true
   var7.Value = false
   local var8 = {}
   var8.Name = var3.Name
   var8.Default = true
   var8.Active = var3.Active
   var8.Value = true
   var527.Buttons = {}
   var527.HorizontalAlignment = Enum.HorizontalAlignment.Right
   local function fun7(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   function var527.buttonActivated(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   fun7 = var0[var2.Children]
   var500.SaveSettings = var2.createElement(var5, var527, fun7)
   if var4 == "props" then
      local var552 = {}
      var552.Size = UDim2.new(0.15, 0, 0.5, 0)
      var552.Position = UDim2.new(0.13, 0, 0.5, 0)
      var552.AnchorPoint = Vector2.new(0.5, 0.5)
      var552.BorderSizePixel = 3
      var552.TextColor3 = var1.defaultButton.ButtonColor
      var552.BackgroundTransparency = 1
      var552.TextXAlignment = Enum.TextXAlignment.Left
      var552.TextSize = 20
      var552.Font = var1.footer.textbutton.font
      var552.Text = var0.Localization:getText("FooterButton", var0.NextScreenText)
      function var2.Event.Activated()
         var5(var4)
      end
      
      local var0 = var2.createElement("TextButton", var552)
   end
   var500.GotoNextScreen = false
   return var2.createElement("Frame", var480, var500)
end

fun9 = var3.withContext
local var589 = {}
var589.Stylizer = var3.Stylizer
var589.Localization = var3.Localization
var7 = fun9(var589)(var7)
return require(var1.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.OpenNextScreen(arg1)
      if arg1 then
         var3.OnActivated()
      end
      var6.reportSaveCancel(var6)
      var2()
   end
   
   return var0
end)(var7)
