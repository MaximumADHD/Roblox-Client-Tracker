-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = require(var0.Src.Contexts.ScriptConversionContext)
local var6 = require(var0.Packages.Dash)
local var7 = var6.join
local var8 = var6.map
local var9 = var3.UI
local var10 = var9.ExpandablePane
local var11 = var9.Pane
local var12 = var9.TextLabel
local var13 = var9.TreeTable
local var14 = var0.Src.Actions
local var15 = require(var0.Src.Components.ScriptPaneTreeTable)
local var16 = var0.Src.Util
local var17 = require(var16.ScriptAnalysis.R6Info)
local var18 = require(var16.ScriptAnalysis.Constants)
local var19 = require(var16.findAllInServices)
local var20 = require(var0.Src.Types)
local var21 = var1.PureComponent:extend("ScriptPane")
function var21.init(arg1)
   local var700 = {}
   var700.expanded = true
   arg1.state = var700
   function arg1.expandedChanged()
      local var703 = {}
      var703.expanded = arg1.state.expanded
      arg1:setState(var703)
   end
   
end

local function fun43(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var715 = {}
   var715.Size = UDim2.fromScale(1, 1)
   local var720 = {}
   local var724 = {}
   var724.Expanded = arg1.state.expanded
   var724.HeaderComponent = var12
   local var728 = {}
   var728.Text = "Scripts"
   var728.TextXAlignment = Enum.TextXAlignment.Left
   var728.TextYAlignment = Enum.TextYAlignment.Center
   var724.HeaderComponentProps = var728
   var724.OnExpandedChanged = arg1.expandedChanged
   var720.ExpandablePane = var1.createElement(var10, var724)
   local var737 = {}
   var737.Position = UDim2.new(0, 0, 0, 32)
   var737.Size = UDim2.new(1, 0, 1, 65456)
   var737.Visible = arg1.state.expanded
   var737.Layout = Enum.FillDirection.Vertical
   local var753 = {}
   local var757 = {}
   var757.LayoutOrder = 0
   var757.BackgroundColor = Color3.new(0, 0.5, 0)
   var757.Size = UDim2.new(1, 0, 0, 32)
   local var770 = {}
   local var774 = {}
   var774.Text = "Search"
   var774.TextXAlignment = Enum.TextXAlignment.Center
   var774.TextYAlignment = Enum.TextYAlignment.Center
   var770.TextLabel = var1.createElement(var12, var774)
   var753.Search = var1.createElement(var11, var757, var770)
   local var783 = {}
   var783.LayoutOrder = 1
   var783.BackgroundColor = Color3.new(0, 0.25, 0)
   var783.Size = UDim2.new(1, 0, 0, 24)
   local var796 = {}
   local var800 = {}
   var800.Text = "Toolbar"
   var800.TextXAlignment = Enum.TextXAlignment.Center
   var800.TextYAlignment = Enum.TextYAlignment.Center
   var796.TextLabel = var1.createElement(var12, var800)
   var753.Toolbar = var1.createElement(var11, var783, var796)
   local var809 = {}
   var809.LayoutOrder = 2
   var809.Size = UDim2.new(1, 0, 1, 65480)
   var753.ScriptTree = var1.createElement(var15, var809)
   var720.Contents = var1.createElement(var11, var737, var753)
   local var822 = {}
   var822.AnchorPoint = Vector2.new(0, 1)
   var822.BackgroundColor = Color3.new(0, 0, 0.5)
   var822.Size = UDim2.new(1, 0, 0, 48)
   var822.Position = UDim2.fromScale(0, 1)
   local var842 = {}
   local var846 = {}
   var846.Text = "Footer"
   var842.TextLabel = var1.createElement(var12, var846)
   var720.Footer = var1.createElement(var11, var822, var842)
   return var1.createElement(var11, var715, var720)
end

function var21.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var715 = {}
   var715.Size = UDim2.fromScale(1, 1)
   local var720 = {}
   local var724 = {}
   var724.Expanded = arg1.state.expanded
   var724.HeaderComponent = var12
   local var728 = {}
   var728.Text = "Scripts"
   var728.TextXAlignment = Enum.TextXAlignment.Left
   var728.TextYAlignment = Enum.TextYAlignment.Center
   var724.HeaderComponentProps = var728
   var724.OnExpandedChanged = arg1.expandedChanged
   var720.ExpandablePane = var1.createElement(var10, var724)
   local var737 = {}
   var737.Position = UDim2.new(0, 0, 0, 32)
   var737.Size = UDim2.new(1, 0, 1, 65456)
   var737.Visible = arg1.state.expanded
   var737.Layout = Enum.FillDirection.Vertical
   local var753 = {}
   local var757 = {}
   var757.LayoutOrder = 0
   var757.BackgroundColor = Color3.new(0, 0.5, 0)
   var757.Size = UDim2.new(1, 0, 0, 32)
   local var770 = {}
   local var774 = {}
   var774.Text = "Search"
   var774.TextXAlignment = Enum.TextXAlignment.Center
   var774.TextYAlignment = Enum.TextYAlignment.Center
   var770.TextLabel = var1.createElement(var12, var774)
   var753.Search = var1.createElement(var11, var757, var770)
   local var783 = {}
   var783.LayoutOrder = 1
   var783.BackgroundColor = Color3.new(0, 0.25, 0)
   var783.Size = UDim2.new(1, 0, 0, 24)
   local var796 = {}
   local var800 = {}
   var800.Text = "Toolbar"
   var800.TextXAlignment = Enum.TextXAlignment.Center
   var800.TextYAlignment = Enum.TextYAlignment.Center
   var796.TextLabel = var1.createElement(var12, var800)
   var753.Toolbar = var1.createElement(var11, var783, var796)
   local var809 = {}
   var809.LayoutOrder = 2
   var809.Size = UDim2.new(1, 0, 1, 65480)
   var753.ScriptTree = var1.createElement(var15, var809)
   var720.Contents = var1.createElement(var11, var737, var753)
   local var822 = {}
   var822.AnchorPoint = Vector2.new(0, 1)
   var822.BackgroundColor = Color3.new(0, 0, 0.5)
   var822.Size = UDim2.new(1, 0, 0, 48)
   var822.Position = UDim2.fromScale(0, 1)
   local var842 = {}
   local var846 = {}
   var846.Text = "Footer"
   var842.TextLabel = var1.createElement(var12, var846)
   var720.Footer = var1.createElement(var11, var822, var842)
   return var1.createElement(var11, var715, var720)
end

fun43 = var4.withContext
local var851 = {}
var851.Analytics = var4.Analytics
var851.Localization = var4.Localization
var851.Stylizer = var4.Stylizer
var21 = fun43(var851)(var21)
return var21
