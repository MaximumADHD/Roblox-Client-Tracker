-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = require(var1.Roact)
local var4 = var2.ContextServices
local var5 = var2.UI.ScrollingFrame
local var6 = var0.Src.Util
local var7 = require(var6.LayoutOrderIterator)
local var8 = require(var6.Constants)
local var9 = var0.Src.Components.ConvertToPackageWindow
local var10 = require(var9.ConfigTextField)
local var11 = require(var9.ConfigAccess)
local var12 = require(var9.ConfigComment)
local var13 = var3.PureComponent:extend("PublishAsset")
function var13.init(arg1, arg2)
   arg1.state = {}
   arg1.baseFrameRef = var3.createRef()
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var7.new()
   local var66 = {}
   var66.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var66.LayoutOrder = var0.LayoutOrder
   var66.Size = var0.Size
   var3.Ref = arg1.baseFrameRef
   local var71 = {}
   local var75 = {}
   var75.PaddingTop = UDim.new(0, 24)
   var75.PaddingBottom = UDim.new(0, 24)
   var75.PaddingLeft = UDim.new(0, 24)
   var75.PaddingRight = UDim.new(0, 24)
   var71.Padding = var3.createElement("UIPadding", var75)
   local var96 = {}
   var96.FillDirection = Enum.FillDirection.Vertical
   var96.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var96.VerticalAlignment = Enum.VerticalAlignment.Top
   var96.SortOrder = Enum.SortOrder.LayoutOrder
   var96.Padding = UDim.new(0, 5)
   function var3.Change.AbsoluteContentSize(arg1, arg2)
      arg1.state = {}
      arg1.baseFrameRef = var3.createRef()
   end
   
   var71.UIListLayout = var3.createElement("UIListLayout", var96)
   local var118 = {}
   var118.Title = var1:getText("General", "Title")
   var118.TotalHeight = 100
   var118.MaxCount = var8.NAME_CHARACTER_LIMIT
   var118.TextChangeCallBack = var0.onNameChange
   var118.TextContent = var0.name
   var118.LayoutOrder = var2:getNextOrder()
   var71.Title = var3.createElement(var10, var118)
   local var132 = {}
   var132.Title = var1:getText("General", "Description")
   var132.TotalHeight = 320
   var132.MaxCount = var8.DESCRIPTION_CHARACTER_LIMIT
   var132.TextChangeCallBack = var0.onDescChange
   var132.TextContent = var0.description
   var132.LayoutOrder = var2:getNextOrder()
   var71.Description = var3.createElement(var10, var132)
   local var146 = {}
   var146.Title = var1:getText("General", "Ownership")
   var146.owner = var0.owner
   var146.TotalHeight = 70
   var146.onDropDownSelect = var0.onOwnerSelected
   var146.LayoutOrder = var2:getNextOrder()
   var71.Ownership = var3.createElement(var11, var146)
   local var158 = {}
   var158.Title = var1:getText("General", "Comments")
   var158.TotalHeight = 80
   var158.CommentEnabled = var0.allowComment
   var158.CommentOn = var0.commentOn
   var158.ToggleCallback = var0.toggleComment
   var158.LayoutOrder = var2:getNextOrder()
   var71.Comment = var3.createElement(var12, var158)
   return var3.createElement(var5, var66, var71)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var7.new()
   local var66 = {}
   var66.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var66.LayoutOrder = var0.LayoutOrder
   var66.Size = var0.Size
   var3.Ref = arg1.baseFrameRef
   local var71 = {}
   local var75 = {}
   var75.PaddingTop = UDim.new(0, 24)
   var75.PaddingBottom = UDim.new(0, 24)
   var75.PaddingLeft = UDim.new(0, 24)
   var75.PaddingRight = UDim.new(0, 24)
   var71.Padding = var3.createElement("UIPadding", var75)
   local var96 = {}
   var96.FillDirection = Enum.FillDirection.Vertical
   var96.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var96.VerticalAlignment = Enum.VerticalAlignment.Top
   var96.SortOrder = Enum.SortOrder.LayoutOrder
   var96.Padding = UDim.new(0, 5)
   function var3.Change.AbsoluteContentSize(arg1, arg2)
      arg1.state = {}
      arg1.baseFrameRef = var3.createRef()
   end
   
   var71.UIListLayout = var3.createElement("UIListLayout", var96)
   local var118 = {}
   var118.Title = var1:getText("General", "Title")
   var118.TotalHeight = 100
   var118.MaxCount = var8.NAME_CHARACTER_LIMIT
   var118.TextChangeCallBack = var0.onNameChange
   var118.TextContent = var0.name
   var118.LayoutOrder = var2:getNextOrder()
   var71.Title = var3.createElement(var10, var118)
   local var132 = {}
   var132.Title = var1:getText("General", "Description")
   var132.TotalHeight = 320
   var132.MaxCount = var8.DESCRIPTION_CHARACTER_LIMIT
   var132.TextChangeCallBack = var0.onDescChange
   var132.TextContent = var0.description
   var132.LayoutOrder = var2:getNextOrder()
   var71.Description = var3.createElement(var10, var132)
   local var146 = {}
   var146.Title = var1:getText("General", "Ownership")
   var146.owner = var0.owner
   var146.TotalHeight = 70
   var146.onDropDownSelect = var0.onOwnerSelected
   var146.LayoutOrder = var2:getNextOrder()
   var71.Ownership = var3.createElement(var11, var146)
   local var158 = {}
   var158.Title = var1:getText("General", "Comments")
   var158.TotalHeight = 80
   var158.CommentEnabled = var0.allowComment
   var158.CommentOn = var0.commentOn
   var158.ToggleCallback = var0.toggleComment
   var158.LayoutOrder = var2:getNextOrder()
   var71.Comment = var3.createElement(var12, var158)
   return var3.createElement(var5, var66, var71)
end

fun2 = var4.withContext
local var168 = {}
var168.Localization = var4.Localization
var168.Stylizer = var4.Stylizer
var13 = fun2(var168)(var13)
return var13
