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
      local var167 = var9
      var167 = arg1.props.Analytics:get()
      var167.toggleTextScraperEnabled(var167)
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
   local var208 = {}
   var208.PaddingTop = UDim.new(0, var1.PaddingTop)
   var208.PaddingLeft = UDim.new(0, var1.LeftIndent)
   var6.Padding = var2.createElement("UIPadding", var208)
   local var221 = {}
   var221.Active = var4
   var221.ButtonText = var2:getText("EmbeddedTableSection", "TextCaptureButton")
   var221.ButtonImage = var1.TextCaptureButtonImage.Off
   var221.LabelText = var2:getText("EmbeddedTableSection", "TextCaptureStartText")
   var221.LayoutOrder = 1
   var221.OnButtonClick = arg1.toggleTextScraperEnabled
   var6.TextCapture = var2.createElement(var8, var221)
   local var232 = {}
   var232.Active = var4
   var232.ButtonText = var2:getText("EmbeddedTableSection", "ExportButton")
   var232.ButtonImage = var1.ExportButtonImage
   var232.LabelText = var2:getText("EmbeddedTableSection", "ExportTextLabel")
   var232.LayoutOrder = 2
   function var232.OnButtonClick()
      local var248 = var9
      var248 = arg1.props.Analytics:get()
      var248.toggleTextScraperEnabled(var248)
      arg1:setState({})
   end
   
   var6.Export = var2.createElement(var8, var232)
   local var257 = {}
   var257.Active = var4
   var257.ButtonText = var2:getText("EmbeddedTableSection", "ImportButton")
   var257.ButtonImage = var1.ImportButtonImage
   var257.LabelText = var2:getText("EmbeddedTableSection", "ImportTextLabel")
   var257.LayoutOrder = 3
   function var257.OnButtonClick(arg1)
      function arg1.toggleTextScraperEnabled()
         local var274 = var9
         var274 = arg1.props.Analytics:get()
         var274.toggleTextScraperEnabled(var274)
         arg1:setState({})
      end
      
   end
   
   var6.Import = var2.createElement(var8, var257)
   local var7 = {}
   local var284 = {}
   var284.PaddingTop = UDim.new(0, var1.PaddingTop * 2)
   var7.Padding = var2.createElement("UIPadding", var284)
   local var294 = {}
   var294.AutomaticSize = Enum.AutomaticSize.XY
   var294.LayoutOrder = 1
   var294.Text = var2:getText("EmbeddedTableSection", "SectionLabel")
   var294.Style = "Subtitle"
   var7.SectionLabel = var2.createElement(var7, var294)
   local var306 = {}
   var306.AutomaticSize = Enum.AutomaticSize.Y
   var306.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var306.Layout = Enum.FillDirection.Vertical
   local var310 = 2
   var306.LayoutOrder = var310
   var310 = var6
   var7.Container = var2.createElement(var6, var306, var310)
   local var315 = {}
   var315.AutomaticSize = Enum.AutomaticSize.Y
   var315.HorizontalAlignment = Enum.HorizontalAlignment.Left
   local var318 = Enum.FillDirection.Vertical
   var315.Layout = var318
   var315.LayoutOrder = var0.LayoutOrder
   var318 = var7
   return var2.createElement(var6, var315, var318)
end

local var326 = {}
var326.Plugin = var4.Plugin
var326.Stylizer = var4.Stylizer
var326.Localization = var4.Localization
var326.Analytics = require(var1.Src.ContextServices.AnalyticsContext)
var11 = var4.withContext(var326)(var11)
return require(var1.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.IsBusy = arg1.CloudTable.IsBusy
   return var0
end)(var11)
