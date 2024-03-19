-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("LocalizationService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Pane
local var7 = var5.TextLabel
local var8 = require(var1.Src.Components.LabeledImageButton)
local var9 = require(var1.Src.Util.EmbeddedTableUtil)
local var10 = game:GetEngineFeature("EnableLocalizedLocalizationToolsErrorsApi")
local var11 = var2.PureComponent:extend("EmbeddedTableSection")
function var11.init(arg1)
   function arg1.toggleTextScraperEnabled()
      local var477 = var9
      var477 = arg1.props.Analytics:get()
      var477.toggleTextScraperEnabled(var477)
      arg1:setState({})
   end
   
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var3 = var0.Analytics:get()
   local var4 = var0.IsBusy
   local var5 = var0.IsTextScraperRunning
   if var5 then
      local var0 = var1.TextCaptureButtonImage.On or var1.TextCaptureButtonImage.Off
   end
   if var5 then
      local var0 = var2:getText("EmbeddedTableSection", "TextCaptureStopText") or var2:getText("EmbeddedTableSection", "TextCaptureStartText")
   end
   local var6 = {}
   local var518 = {}
   var518.PaddingTop = UDim.new(0, var1.PaddingTop)
   var518.PaddingLeft = UDim.new(0, var1.LeftIndent)
   var6.Padding = var2.createElement("UIPadding", var518)
   local var531 = {}
   var531.Active = var4
   var531.ButtonText = var2:getText("EmbeddedTableSection", "TextCaptureButton")
   var531.ButtonImage = var1.TextCaptureButtonImage.Off
   var531.LabelText = var2:getText("EmbeddedTableSection", "TextCaptureStartText")
   var531.LayoutOrder = 1
   var531.OnButtonClick = arg1.toggleTextScraperEnabled
   var6.TextCapture = var2.createElement(var8, var531)
   local var542 = {}
   var542.Active = var4
   var542.ButtonText = var2:getText("EmbeddedTableSection", "ExportButton")
   var542.ButtonImage = var1.ExportButtonImage
   var542.LabelText = var2:getText("EmbeddedTableSection", "ExportTextLabel")
   var542.LayoutOrder = 2
   function var542.OnButtonClick()
      local var558 = var9
      var558 = arg1.props.Analytics:get()
      var558.toggleTextScraperEnabled(var558)
      arg1:setState({})
   end
   
   var6.Export = var2.createElement(var8, var542)
   local var567 = {}
   var567.Active = var4
   var567.ButtonText = var2:getText("EmbeddedTableSection", "ImportButton")
   var567.ButtonImage = var1.ImportButtonImage
   var567.LabelText = var2:getText("EmbeddedTableSection", "ImportTextLabel")
   var567.LayoutOrder = 3
   function var567.OnButtonClick(arg1)
      function arg1.toggleTextScraperEnabled()
         local var584 = var9
         var584 = arg1.props.Analytics:get()
         var584.toggleTextScraperEnabled(var584)
         arg1:setState({})
      end
      
   end
   
   var6.Import = var2.createElement(var8, var567)
   local var7 = {}
   local var594 = {}
   var594.PaddingTop = UDim.new(0, var1.PaddingTop * 2)
   var7.Padding = var2.createElement("UIPadding", var594)
   local var604 = {}
   var604.AutomaticSize = Enum.AutomaticSize.XY
   var604.LayoutOrder = 1
   var604.Text = var2:getText("EmbeddedTableSection", "SectionLabel")
   var604.Style = "Subtitle"
   var7.SectionLabel = var2.createElement(var7, var604)
   local var616 = {}
   var616.AutomaticSize = Enum.AutomaticSize.Y
   var616.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var616.Layout = Enum.FillDirection.Vertical
   local var620 = 2
   var616.LayoutOrder = var620
   var620 = var6
   var7.Container = var2.createElement(var6, var616, var620)
   local var625 = {}
   var625.AutomaticSize = Enum.AutomaticSize.Y
   var625.HorizontalAlignment = Enum.HorizontalAlignment.Left
   local var628 = Enum.FillDirection.Vertical
   var625.Layout = var628
   var625.LayoutOrder = var0.LayoutOrder
   var628 = var7
   return var2.createElement(var6, var625, var628)
end

local var636 = {}
var636.Plugin = var4.Plugin
var636.Stylizer = var4.Stylizer
var636.Localization = var4.Localization
var636.Analytics = require(var1.Src.ContextServices.AnalyticsContext)
var11 = var4.withContext(var636)(var11)
return require(var1.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.IsBusy = arg1.CloudTable.IsBusy
   return var0
end)(var11)
