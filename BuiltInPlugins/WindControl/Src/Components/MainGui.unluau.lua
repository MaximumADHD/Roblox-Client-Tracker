-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("CoreGui")
local var1 = game:GetService("InsertService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.React)
local var4 = require(var2.Packages.ReactRoblox)
local var5 = require(var2.Packages.Framework)
local var6 = var5.ContextServices
local var7 = var5.UI.Pane
local var8 = require(script.Parent.Windhose)
local var9 = require(script.Parent.WindspeedDisplay)
local var10 = var3.PureComponent:extend("MainGui")
function var10.init(arg1)
   arg1.cameraRef = var3.createRef()
   arg1.viewportRef = var3.createRef()
   arg1.textLabelRef = var3.createRef()
   arg1.windhose = var8()
   local var56 = {}
   var56.windspeed = workspace.GlobalWind.Magnitude
   var56.windDirection = workspace.GlobalWind.Unit
   var56.isChangingPitch = false
   var56.isChangingYaw = false
   arg1:setState(var56)
   function arg1.onWindChanged()
      if arg1.windhose then
         if arg1.windhose.selectStick then
            local var72 = {}
            var72.windspeed = workspace.GlobalWind.Magnitude
            var72.windDirection = arg1.windhose.selectStick.CFrame.LookVector
            arg1:setState(var72)
         end
      end
   end
   
   function arg1.onisChangingPitchChanged(arg1)
      local var84 = {}
      var84.isChangingPitch = arg1
      arg1:setState(var84)
   end
   
   function arg1.onisChangingYawChanged(arg1)
      local var88 = {}
      var88.isChangingYaw = arg1
      arg1:setState(var88)
   end
   
   function arg1.onYawStateRequested()
      local var91 = {}
      var91.isChangingYaw = false
      var91.isChangingPitch = true
      arg1:setState(var91)
   end
   
   function arg1.onPitchStateRequested()
      local var96 = {}
      var96.isChangingYaw = true
      var96.isChangingPitch = false
      arg1:setState(var96)
   end
   
   function arg1.onSpeedStateRequested()
      local var101 = {}
      var101.isChangingYaw = false
      var101.isChangingPitch = false
      arg1:setState(var101)
   end
   
end

function var10.loadPosition(arg1)
   local var0 = arg1.props.Plugin:get()
   local var1 = arg1.viewportRef:getValue()
   if var0 then
      if var1 then
         local var0 = var1.AbsoluteSize.X
         local function fun0()
            if arg1.windhose then
               if arg1.windhose.selectStick then
                  local var121 = {}
                  var121.windspeed = workspace.GlobalWind.Magnitude
                  var121.windDirection = arg1.windhose.selectStick.CFrame.LookVector
                  arg1:setState(var121)
               end
            end
         end
         
         local var1 = game.Workspace.CurrentCamera.ViewportSize.X
         local var2 = 0.5
         if var0 < var1 then
            local var142 = var0:GetSetting("WindControl_Position" ... "X")
            local var1 = (var2 * (var1 - var0) + var2 * var0) / var1
         end
         local var154 = game.Workspace.CurrentCamera.ViewportSize.Y
         local var155 = 0.5
         local var156 = 0.5
         if var0 < var154 then
            local var161 = var0:GetSetting("WindControl_Position" ... "Y")
            local var1 = (var155 * (var154 - var0) + var155 * var0) / var154
         end
         var1 = var155
         var2 = var156
         var155 = var2
         var156 = var1
         var1.AnchorPoint = Vector2.new(var155, var156)
         var1.Position = UDim2.fromScale(0.5, var2)
      end
   end
end

function var10.clampAndSavePosition(arg1)
   local var0 = arg1.props.Plugin:get()
   local var1 = arg1.viewportRef:getValue()
   if var0 then
      if var1 then
         local var0 = var1.AbsoluteSize.X
         local function fun0()
            if arg1.windhose then
               if arg1.windhose.selectStick then
                  local var189 = {}
                  var189.windspeed = workspace.GlobalWind.Magnitude
                  var189.windDirection = arg1.windhose.selectStick.CFrame.LookVector
                  arg1:setState(var189)
               end
            end
         end
         
         local var1 = game.Workspace.CurrentCamera.ViewportSize.X
         local var2 = 0.5
         if var0 < var1 then
            local var0 = math.clamp(var1.AbsolutePosition.X, 0, var1 - var0)
            local var1 = (var0 + var0 / (var1 - var0) * var0) / var1
         end
         local var217 = "WindControl_Position"
         var217 = var2
         var0:SetSetting(var217 ... "X", var217)
         local var227 = game.Workspace.CurrentCamera.ViewportSize.Y
         local var228 = 0.5
         local var229 = 0.5
         if var0 < var227 then
            local var0 = math.clamp(var1.AbsolutePosition.Y, 0, var227 - var0)
            local var1 = (var0 + var0 / (var227 - var0) * var0) / var227
         end
         local var241 = "WindControl_Position"
         var241 = var228
         var0:SetSetting(var241 ... "Y", var241)
         var1 = var228
         var2 = var229
         var228 = var2
         var229 = var1
         var1.AnchorPoint = Vector2.new(var228, var229)
         var1.Position = UDim2.fromScale(0.5, var2)
      end
   end
end

function var10.loadWindControl(arg1)
   coroutine.wrap(function()
      if arg1.windhose then
         if arg1.windhose.selectStick then
            local var259 = {}
            var259.windspeed = workspace.GlobalWind.Magnitude
            var259.windDirection = arg1.windhose.selectStick.CFrame.LookVector
            arg1:setState(var259)
         end
      end
   end)()
end

function var10.unloadWindControl(arg1)
   if arg1.mounted then
      arg1.windhose:setEnabled(false)
      if arg1.windControlModel == "mounted" then
         arg1.windControlModel:Destroy()
         arg1.windControlModel = nil
      end
   end
end

function var10.render(arg1)
   local var0 = arg1.props.Stylizer.MainGui
   local var285 = {}
   local var290 = {}
   local var295 = {}
   local var299 = {}
   var299.ZIndex = 1
   var299.Size = var0.ViewportFrame.Size
   var299.Position = var0.ViewportFrame.Position
   var299.CurrentCamera = arg1.cameraRef
   var299.BackgroundTransparency = 1
   var299.ref = arg1.viewportRef
   local var308 = {}
   var308.Background = var3.createElement(var7, var0.BackgroundPane)
   local var317 = {}
   var317.CameraType = Enum.CameraType.Scriptable
   var317.CFrame = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
   var317.FieldOfView = var0.CameraFOV
   var317.ref = arg1.cameraRef
   var308.Camera = var3.createElement("Camera", var317)
   local var337 = {}
   var337.Size = UDim2.fromScale(1, 1)
   var337.BackgroundTransparency = 1
   function var3.Event.MouseEnter()
      if arg1.windhose then
         if arg1.windhose.selectStick then
            local var352 = {}
            var352.windspeed = workspace.GlobalWind.Magnitude
            var352.windDirection = arg1.windhose.selectStick.CFrame.LookVector
            arg1:setState(var352)
         end
      end
   end
   
   function var3.Event.MouseLeave(arg1)
      local var367 = {}
      var367.isChangingPitch = arg1
      arg1:setState(var367)
   end
   
   function var3.Event.MouseButton1Down(arg1)
      local var374 = {}
      var374.isChangingYaw = arg1
      arg1:setState(var374)
   end
   
   function var3.Event.MouseMoved()
      local var380 = {}
      var380.isChangingYaw = false
      var380.isChangingPitch = true
      arg1:setState(var380)
   end
   
   var308.ImageButton = var3.createElement("ImageButton", var337)
   local var388 = {}
   var388.Windspeed = arg1.state.windspeed
   var388.WindDirection = arg1.state.windDirection
   var388.isChangingPitch = arg1.state.isChangingPitch
   var388.isChangingYaw = arg1.state.isChangingYaw
   var388.yawStateRequested = arg1.onYawStateRequested
   var388.pitchStateRequested = arg1.onPitchStateRequested
   var388.speedStateRequested = arg1.onSpeedStateRequested
   var308.WindspeedDisplay = var3.createElement(var9, var388)
   var295.ViewportFrame = var3.createElement("ViewportFrame", var299, var308)
   var290.Screengui = var3.createElement("ScreenGui", {}, var295)
   var285.WindControl = var3.createElement("Folder", {}, var290)
   return var4.createPortal(var285, var0)
end

function var10.didMount(arg1)
   arg1.mounted = true
   arg1:loadWindControl()
   arg1:loadPosition()
end

local function fun20(arg1)
   arg1:unloadWindControl()
   arg1:clampAndSavePosition()
end

function var10.willUnmount(arg1)
   arg1:unloadWindControl()
   arg1:clampAndSavePosition()
end

fun20 = var6.withContext
local var413 = {}
var413.Plugin = var6.Plugin
var413.Stylizer = var5.Style.Stylizer
var10 = fun20(var413)(var10)
return var10
