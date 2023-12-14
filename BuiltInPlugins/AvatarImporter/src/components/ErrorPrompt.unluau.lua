-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("GuiService")
local var2 = game:GetService("HttpRbxApiService")
local var3 = require(var0.Packages.Roact)
local var4 = require(var0.src.Assets)
local var5 = require(var0.src.Constants)
local var6 = require(var0.src.components.CustomTextButton)
local var7 = require(var0.src.utils.themeConfig)
local var8 = var0.src.actions
local var9 = require(var8.SetScreen)
local var10 = require(var8.ClosePlugin)
local var11 = settings().Studio
local var12 = var3.Component:extend("ErrorPrompt")
function var12.render(arg1)
   local var57 = {}
   var57.Name = "ErrorPrompt"
   var57.Size = UDim2.new(1, 0, 1, 0)
   var57.BackgroundColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground, Enum.StudioStyleGuideModifier.Default)
   local var71 = {}
   local var75 = {}
   var75.BackgroundTransparency = 1
   var75.Image = var4.ERROR_ICON
   var75.Size = UDim2.new(0, 22, 0, 22)
   var75.Position = UDim2.new(0, 30, 0, 20)
   var71.errorIcon = var3.createElement("ImageLabel", var75)
   local var95 = {}
   var95.BackgroundTransparency = 1
   var95.Font = var5.FONT
   var95.Position = UDim2.new(0, 62, 0, 20)
   var95.Size = UDim2.new(1, 65474, 0, 20)
   var95.Text = arg1.props.name
   var95.TextSize = var5.FONT_SIZE_TITLE
   var95.TextXAlignment = Enum.TextXAlignment.Left
   var95.TextYAlignment = Enum.TextYAlignment.Center
   var95.ClipsDescendants = true
   var95.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var71.errorTitle = var3.createElement("TextLabel", var95)
   local var128 = {}
   var128.BackgroundTransparency = 1
   var128.Font = var5.FONT_BOLD
   var128.Position = UDim2.new(0, 62, 0, 60)
   var128.Size = UDim2.new(0, 302, 0, var5.FONT_SIZE_MEDIUM)
   var128.Text = "The file failed to meet the import requirement(s):"
   var128.TextSize = var5.FONT_SIZE_MEDIUM
   var128.TextXAlignment = Enum.TextXAlignment.Left
   var128.TextYAlignment = Enum.TextYAlignment.Center
   var128.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var71.requirementsHeader = var3.createElement("TextLabel", var128)
   local var160 = {}
   var160.BackgroundTransparency = 1
   var160.Font = var5.FONT
   var160.Position = UDim2.new(0, 62, 0, 86)
   var160.Size = UDim2.new(0, 302, 0, var5.FONT_SIZE_MEDIUM)
   var160.Text = arg1.props.message
   var160.TextSize = var5.FONT_SIZE_MEDIUM
   var160.TextXAlignment = Enum.TextXAlignment.Left
   var160.TextYAlignment = Enum.TextYAlignment.Top
   var160.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var71.requirements = var3.createElement("TextLabel", var160)
   local var193 = {}
   var193.BackgroundTransparency = 1
   var193.Font = var5.FONT
   var193.Position = UDim2.new(0, 62, 1, 65387)
   var193.Size = UDim2.new(0, 210, 0, var5.FONT_SIZE_MEDIUM)
   var193.Text = "Please update the file and try again"
   var193.TextSize = var5.FONT_SIZE_MEDIUM
   var193.TextXAlignment = Enum.TextXAlignment.Left
   var193.TextYAlignment = Enum.TextYAlignment.Top
   var193.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
   var71.bottomDescription = var3.createElement("TextLabel", var193)
   local var225 = {}
   var225.BackgroundTransparency = 1
   var225.Font = var5.FONT
   var225.Position = UDim2.new(0, 62, 1, 65413)
   var225.Size = UDim2.new(0, 210, 0, var5.FONT_SIZE_MEDIUM)
   var225.Text = "What are import requirements?"
   var225.TextSize = var5.FONT_SIZE_MEDIUM
   var225.TextXAlignment = Enum.TextXAlignment.Left
   var225.TextYAlignment = Enum.TextYAlignment.Top
   local var248 = {}
   var248.Light = Color3.fromRGB(0, 162, 255)
   var248.Dark = Color3.fromRGB(255, 255, 255)
   var225.TextColor3 = var7(var248)
   function var3.Event.MouseButton1Click()
      local var0 = var2:GetDocumentationUrl(var5.AVATAR_IMPORTER_DEVHUB)
      var1:OpenBrowserWindow()
   end
   
   var71.infoLink = var3.createElement("TextButton", var225)
   local var274 = {}
   var274.BackgroundTransparency = 1
   var274.Position = UDim2.new(0, 0, 1, 65472)
   var274.Size = UDim2.new(1, 0, 0, 34)
   local var288 = {}
   local var292 = {}
   var292.Padding = UDim.new(0, 21)
   var292.FillDirection = Enum.FillDirection.Horizontal
   var292.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var292.SortOrder = Enum.SortOrder.LayoutOrder
   var288.buttonsListLayout = var3.createElement("UIListLayout", var292)
   local var304 = {}
   var304.name = "CancelButton"
   var304.labelText = "Cancel"
   var304.layoutOrder = 0
   var3.Event.MouseButton1Click = arg1.props.doClose
   var288.cancelButton = var3.createElement(var6, var304)
   local var317 = {}
   var317.name = "RetryButton"
   var317.labelText = "Try Again"
   var317.layoutOrder = 1
   var317.isMain = true
   var3.Event.MouseButton1Click = arg1.props.doRetry
   var288.retryButton = var3.createElement(var6, var317)
   var71.buttons = var3.createElement("Frame", var274, var288)
   return var3.createElement("Frame", var57, var71)
end

return require(var0.Packages.RoactRodux).connect(function(arg1)
   arg1 = arg1 or {}
   local var0 = {}
   var0.name = arg1.error.name
   var0.message = arg1.error.message
   return var0
end, function(arg1)
   local var0 = {}
   function var0.doRetry()
      local var0 = var2:GetDocumentationUrl(var5.AVATAR_IMPORTER_DEVHUB)
      var1:OpenBrowserWindow()
   end
   
   function var0.doClose(arg1)
      local var352 = {}
      var352.Name = "ErrorPrompt"
      var352.Size = UDim2.new(1, 0, 1, 0)
      var352.BackgroundColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground, Enum.StudioStyleGuideModifier.Default)
      local var366 = {}
      local var370 = {}
      var370.BackgroundTransparency = 1
      var370.Image = var4.ERROR_ICON
      var370.Size = UDim2.new(0, 22, 0, 22)
      var370.Position = UDim2.new(0, 30, 0, 20)
      var366.errorIcon = var3.createElement("ImageLabel", var370)
      local var390 = {}
      var390.BackgroundTransparency = 1
      var390.Font = var5.FONT
      var390.Position = UDim2.new(0, 62, 0, 20)
      var390.Size = UDim2.new(1, 65474, 0, 20)
      var390.Text = arg1.props.name
      var390.TextSize = var5.FONT_SIZE_TITLE
      var390.TextXAlignment = Enum.TextXAlignment.Left
      var390.TextYAlignment = Enum.TextYAlignment.Center
      var390.ClipsDescendants = true
      var390.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
      var366.errorTitle = var3.createElement("TextLabel", var390)
      local var423 = {}
      var423.BackgroundTransparency = 1
      var423.Font = var5.FONT_BOLD
      var423.Position = UDim2.new(0, 62, 0, 60)
      var423.Size = UDim2.new(0, 302, 0, var5.FONT_SIZE_MEDIUM)
      var423.Text = "The file failed to meet the import requirement(s):"
      var423.TextSize = var5.FONT_SIZE_MEDIUM
      var423.TextXAlignment = Enum.TextXAlignment.Left
      var423.TextYAlignment = Enum.TextYAlignment.Center
      var423.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
      var366.requirementsHeader = var3.createElement("TextLabel", var423)
      local var455 = {}
      var455.BackgroundTransparency = 1
      var455.Font = var5.FONT
      var455.Position = UDim2.new(0, 62, 0, 86)
      var455.Size = UDim2.new(0, 302, 0, var5.FONT_SIZE_MEDIUM)
      var455.Text = arg1.props.message
      var455.TextSize = var5.FONT_SIZE_MEDIUM
      var455.TextXAlignment = Enum.TextXAlignment.Left
      var455.TextYAlignment = Enum.TextYAlignment.Top
      var455.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
      var366.requirements = var3.createElement("TextLabel", var455)
      local var488 = {}
      var488.BackgroundTransparency = 1
      var488.Font = var5.FONT
      var488.Position = UDim2.new(0, 62, 1, 65387)
      var488.Size = UDim2.new(0, 210, 0, var5.FONT_SIZE_MEDIUM)
      var488.Text = "Please update the file and try again"
      var488.TextSize = var5.FONT_SIZE_MEDIUM
      var488.TextXAlignment = Enum.TextXAlignment.Left
      var488.TextYAlignment = Enum.TextYAlignment.Top
      var488.TextColor3 = var11.Theme:GetColor(Enum.StudioStyleGuideColor.MainText, Enum.StudioStyleGuideModifier.Default)
      var366.bottomDescription = var3.createElement("TextLabel", var488)
      local var520 = {}
      var520.BackgroundTransparency = 1
      var520.Font = var5.FONT
      var520.Position = UDim2.new(0, 62, 1, 65413)
      var520.Size = UDim2.new(0, 210, 0, var5.FONT_SIZE_MEDIUM)
      var520.Text = "What are import requirements?"
      var520.TextSize = var5.FONT_SIZE_MEDIUM
      var520.TextXAlignment = Enum.TextXAlignment.Left
      var520.TextYAlignment = Enum.TextYAlignment.Top
      local var543 = {}
      var543.Light = Color3.fromRGB(0, 162, 255)
      var543.Dark = Color3.fromRGB(255, 255, 255)
      var520.TextColor3 = var7(var543)
      function var3.Event.MouseButton1Click()
         local var0 = var2:GetDocumentationUrl(var5.AVATAR_IMPORTER_DEVHUB)
         var1:OpenBrowserWindow()
      end
      
      var366.infoLink = var3.createElement("TextButton", var520)
      local var569 = {}
      var569.BackgroundTransparency = 1
      var569.Position = UDim2.new(0, 0, 1, 65472)
      var569.Size = UDim2.new(1, 0, 0, 34)
      local var583 = {}
      local var587 = {}
      var587.Padding = UDim.new(0, 21)
      var587.FillDirection = Enum.FillDirection.Horizontal
      var587.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var587.SortOrder = Enum.SortOrder.LayoutOrder
      var583.buttonsListLayout = var3.createElement("UIListLayout", var587)
      local var599 = {}
      var599.name = "CancelButton"
      var599.labelText = "Cancel"
      var599.layoutOrder = 0
      var3.Event.MouseButton1Click = arg1.props.doClose
      var583.cancelButton = var3.createElement(var6, var599)
      local var612 = {}
      var612.name = "RetryButton"
      var612.labelText = "Try Again"
      var612.layoutOrder = 1
      var612.isMain = true
      var3.Event.MouseButton1Click = arg1.props.doRetry
      var583.retryButton = var3.createElement(var6, var612)
      var366.buttons = var3.createElement("Frame", var569, var583)
      return var3.createElement("Frame", var352, var366)
   end
   
   return var0
end)(var12)
