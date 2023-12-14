-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.id = "StudioTour"
local var1 = {}
var1.id = "welcome"
var1.kind = "Dialog"
local var2 = {}
var2.id = "parts"
var2.kind = "Insert"
local var9 = {}
var9.target = "placePartAction"
var9.anchorPoint = Vector2.new(0.5, 0)
var2.callout = var9
var2.className = "Part"
var2.widgets = "Ribbon-Home"
local var4 = {}
var4.id = "focus"
var4.kind = "Focus"
function var4.onBind()
   game:GetService("TutorialService"):SetTutorialCompletionStatus(true)
end

local var5 = {}
var5.id = "color"
var5.kind = "Edit"
local var29 = {}
var29.target = "actionColorSelector"
var29.anchorPoint = Vector2.new(0.5, 0)
var5.callout = var29
var5.className = "Part"
local var36 = {}
var36.Color = true
var5.changes = var36
var5.widgets = "Ribbon-Home"
local var8 = {}
var8.id = "moveCamera"
var8.kind = "Input"
local var43 = Enum.KeyCode.W
local var44 = Enum.KeyCode.A
local var45 = Enum.KeyCode.S
local var46 = Enum.KeyCode.D
var8.keys = {}
local var13 = {}
var13.id = "panCamera"
var13.kind = "Input"
local var51 = Enum.KeyCode.E
local var52 = Enum.KeyCode.Q
var13.keys = {}
local var16 = {}
var16.id = "zoomCamera"
var16.kind = "Input"
local var57 = Enum.UserInputType.MouseWheel
var16.inputs = {}
local var18 = {}
var18.id = "rotateCamera"
var18.kind = "Input"
local var62 = Enum.UserInputType.MouseButton2
var18.inputs = {}
local var64 = Enum.KeyCode.LeftControl
var18.keys = {}
local var21 = {}
var21.id = "explorer"
local var67 = {}
var67.target = "explorerWidgetPanel"
var67.hideArrow = true
var21.callout = var67
var21.showNext = true
var21.widgets = "Ribbon-Home,Explorer"
local var23 = {}
var23.id = "workspace"
var23.path = "Workspace"
local var75 = {}
var75.target = "explorerWidgetPanel"
var75.rowName = "Workspace"
var75.hideArrow = true
var23.callout = var75
var23.showNext = true
function var23.onBind(arg1)
   local var0 = arg1.dataModel
   local var1 = var0:GetService("Workspace")
   var0:GetService("Selection"):Set({})
end

var23.widgets = "Ribbon-Home,Explorer"
local var25 = {}
var25.id = "select"
var25.kind = "Select"
var25.path = "Part"
local var95 = {}
var95.target = "explorerWidgetPanel"
var95.rowName = "Part"
var95.hideArrow = true
var25.callout = var95
var25.widgets = "Ribbon-Home,Explorer"
local var27 = {}
var27.id = "properties"
local var102 = {}
var102.target = "propertiesWidgetPanel"
var102.hideArrow = true
var27.callout = var102
var27.showNext = true
var27.widgets = "Ribbon-Home,Explorer,Properties"
local var29 = {}
var29.id = "material"
var29.kind = "Edit"
local var110 = {}
var110.target = "propertiesWidgetPanel"
var110.hideArrow = true
var29.callout = var110
var29.className = "Part"
local var114 = {}
var114.Material = true
var29.changes = var114
var29.widgets = "Ribbon-Home,Explorer,Properties"
local var32 = {}
var32.id = "playtest"
var32.kind = "Playtest"
var32.widgets = "Ribbon-Home"
var0.steps = { 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}, 
   {}
}
return var0
