-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ContentProvider")
local var1 = game:GetService("GuiService")
local var2 = game:GetService("HttpService")
local var3 = game:GetService("MemStorageService")
local var4 = game:GetService("StudioService")
local var5 = {}
function var5.openItemInBrowser(arg1)
   var1:OpenBrowserWindow(`{var0.BaseUrl}`)
end

function var5.copyAssetId(arg1)
   var4:CopyToClipboard(arg1)
end

function var5.openAssetConfig(arg1)
   var3:Fire("OpenAssetConfig", arg1)
end

return var5
