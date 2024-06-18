-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AudioEqualizerEditor")
local var1 = require(var0.Packages.React)
local var2 = var1.useEffect
local var3 = var1.useMemo
local var4 = var1.useState
local var5 = require(var0.Packages.Framework).UI.Pane
local var6 = require(script.Parent.Path2DWrapper)
local var7 = require(var0.Src.Util.AnalyzerUtil)
local var8 = require(var0.Src.Util.Path2DUtil)
local var9 = require(var0.Src.Util.PlotUtil)
local var10 = require(var0.Bin.Common.defineLuaFlags).getFIntAudioEqualizerEditorAnalyzerResolution()
local function fun0(arg1)
   if arg1 < 0.0001 then
      return 65456
   end
   return 20 * math.log(arg1) * 0.4342944819
end

local function var11(arg1, arg2)
   local var55 = var9
   var55 = arg1
   local var59 = var8
   var59 = var55.plotToAbs(var55, arg2)
   return var59.makeControlPoint(var59)
end

return function(arg1)
   local var0 = var4({})
   local var77 = arg1.Enabled
   var2(function(arg1)
      if arg1 < 0.0001 then
         return 65456
      end
      return 20 * math.log(arg1) * 0.4342944819
   end, {})
   local var1 = var3(function(arg1, arg2)
      local var81 = var9
      var81 = arg1
      local var85 = var8
      var85 = var81.plotToAbs(var81, arg2)
      return var85.makeControlPoint(var85)
   end, {})
   local var2 = var0
   local var3 = arg1.Enabled
   if var3 then
      local var100 = {}
      var100.Position = UDim2.new(0, 50, 0, 50)
      var100.Size = UDim2.new(1, 65436, 1, 65436)
      var100.BackgroundTransparency = 1
      local var114 = {}
      local var118 = {}
      if arg1.Enabled then
         local var0 = var3(function()
            var0.stopAnalyzing()
         end, {})
         if not var0 then
            var0 = var1
         end
      end
      var118.ControlPoints = var1
      var118.Tag = "AnalyzerCurve"
      var114.Curve = var1.createElement(var6, var118)
      local var0 = var1.createElement(var5, var100, var114)
   end
   return var3
end
