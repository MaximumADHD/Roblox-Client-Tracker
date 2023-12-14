-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Types.AudioTypes)
local var4 = require(script.Parent.AudioView)
local var5 = require(script.Parent.AudioView.mocks)
local var6 = {}
function var6.story()
   local var294 = var5.createMockSwimlane("Genres", var5.MOCK_GENRES)
   local var300 = var5.createMockSwimlane("Vibes", var5.MOCK_VIBES)
   local var304 = var5.createMockList("Trending")
   local var308 = var5.createMockList("Essentials")
   local var313 = {}
   local var317 = {}
   var317.Sections = {}
   var317.PageSize = 10
   local var1 = {}
   function var1.CanInsertAsset()
      return true
   end
   
   function var1.LogAssetImpression()
      return nil
   end
   
   function var1.OnAssetPreviewButtonClicked()
      return nil
   end
   
   function var1.TryInsert()
      return nil
   end
   
   function var1.TryOpenAssetConfig()
      return nil
   end
   
   var317.AssetLogicWrapperProps = var1
   var313.AudioView = var1.createElement(var4, var317)
   return var1.createElement(var2, {}, var313)
end

return var6
