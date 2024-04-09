-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AssetImporter").Src.Components.Properties.Types.PathProperty)
local function fun0(arg1)
   return arg1.IsPbr
end

local var1 = {}
var1.Section = "ObjectGeneral"
local var2 = {}
var2.Name = "ImportName"
var2.Editable = true
local var3 = {}
var3.Name = "DiffuseFilePath"
var3.Editable = false
var3.AllowPickFile = true
var3.ComponentFactory = var0
local var4 = {}
var4.Name = "NormalFilePath"
var4.Editable = false
var4.AllowPickFile = true
var4.ComponentFactory = var0
function var4.ShouldHide(arg1)
   return arg1.IsPbr
end

local var5 = {}
var5.Name = "MetalnessFilePath"
var5.Editable = false
var5.AllowPickFile = true
var5.ComponentFactory = var0
function var5.ShouldHide(arg1)
   return arg1.IsPbr
end

local var6 = {}
var6.Name = "RoughnessFilePath"
var6.Editable = false
var6.AllowPickFile = true
var6.ComponentFactory = var0
function var6.ShouldHide(arg1)
   return arg1.IsPbr
end

var1.Properties = { {} }
return {}
