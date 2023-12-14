-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.DebugFlags)
local function var1(arg1, arg2)
   spawn(function()
      local var0 = game:GetService("Workspace").CurrentCamera
      var0.CameraType = Enum.CameraType.Scriptable
      wait()
      var0.CFrame = CFrame.new(arg1, arg2)
      wait()
      var0.CameraType = Enum.CameraType.Fixed
   end)
   print(`local pos = Vector3.new(%.2f, {arg1.x}{arg1.y}lookAt = Vector3.new(%.2f, {arg1.z}{arg2.x}cf = CFrame.new(pos, lookAt)\nlocal cam = game:GetService(\\"Workspace\\").CurrentCamera\ncam.CameraType = Enum.CameraType.Scriptable\nwait()\ncam.CFrame = cf\nwait()\ncam.CameraType = Enum.CameraType.Fixed\n\t`)
end

local function fun0(arg1)
   assert(arg1, "getCameraDetailsForRegion requires a Region3")
   local var0 = arg1.CFrame.p
   local var1 = arg1.Size
   local var2 = Vector3.new(0, math.max(var1.x, var1.z) / 2 / 0.473814720414451, 0)
   var2 = var0 + var2
   return var2var0,
end

local function fun1(arg1)
   local var0 = arg1:match("://(%d+)")
   return tonumber()
end

local var2 = {}
var2.__index = var2
function var2.new(arg1, arg2, arg3)
   local var65 = {}
   var65._imageUploader = arg1
   local var71 = arg2 or game:GetService("UnvalidatedAssetService")
   var65._unvalidatedAssetService = var71
   var71 = arg3
   var65._userId = var71 or game:GetService("StudioService"):GetUserId()
   var65._seenAssets = {}
   local var0 = setmetatable(var65, var2)
   assert(var0._imageUploader, "ImportAssetHandler expects an ImageUploader")
   return var0
end

function var2.handleAsset(arg1, arg2, arg3, arg4)
   assert(arg2, "ImportAssetHandler:handleAsset() requires an assetFile")
   assert(arg3, "ImportAssetHandler:handleAsset() requires a Region3")
   assert(arg3, "getCameraDetailsForRegion requires a Region3")
   local var100 = arg3.CFrame.p
   local var101 = arg3.Size
   local var105 = math.max(var101.x, var101.z)
   local var2 = var105 / 2 / 0.473814720414451
   local var112 = Vector3.new(0, var2, 0)
   local var3 = var100 + var112
   local var4 = var100
   local var116 = var0
   if var116.SetCameraOnRegionImport() then
      var116 = var3
      var105 = var4
      var1(var116, var105)
   end
   local var6 = arg2:GetTemporaryId()
   if arg1._seenAssets[var6] then
      var112 = arg1._seenAssets[var6]
      arg1._unvalidatedAssetService:AppendVantagePoint(arg1._userId, var112, var4, var3)
   end
   local var133 = var6:match("://(%d+)")
   local var7 = tonumber()
   if not var7 then
      local var0 = `Temp id \\"%s\\" could not be cast to an integer`
      warn(var0)
      var112 = var0
      assert(var7, var112)
   end
   local var144 = arg1._seenAssets
   arg2:GetTemporaryId() = var7
   var112 = var7
   arg1._unvalidatedAssetService:AppendTempAssetId(arg1._userId, var112, var4, var3, "TerrainToolsV2Import")
   local var152 = var6
   local var153 = arg2.Name
   local var8 = ""
   local var9 = arg2:GetBinaryContents()
   arg1._imageUploader:upload():andThen(function()
      local var0 = game:GetService("Workspace").CurrentCamera
      var0.CameraType = Enum.CameraType.Scriptable
      wait()
      var0.CFrame = CFrame.new(arg1, arg2)
      wait()
      var0.CameraType = Enum.CameraType.Fixed
   end, function(arg1, arg2)
      spawn(function()
         local var0 = game:GetService("Workspace").CurrentCamera
         var0.CameraType = Enum.CameraType.Scriptable
         wait()
         var0.CFrame = CFrame.new(arg1, arg2)
         wait()
         var0.CameraType = Enum.CameraType.Fixed
      end)
      print(`local pos = Vector3.new(%.2f, {arg1.x}{arg1.y}lookAt = Vector3.new(%.2f, {arg1.z}{arg2.x}cf = CFrame.new(pos, lookAt)\nlocal cam = game:GetService(\\"Workspace\\").CurrentCamera\ncam.CameraType = Enum.CameraType.Scriptable\nwait()\ncam.CFrame = cf\nwait()\ncam.CameraType = Enum.CameraType.Fixed\n\t`)
   end)
end

return var2
