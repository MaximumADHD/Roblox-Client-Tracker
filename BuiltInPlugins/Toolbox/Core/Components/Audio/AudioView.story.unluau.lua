-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Types.AudioTypes)
local var4 = require(script.Parent.AudioView)
local var5 = require(script.Parent.AudioView.mocks)
local var6 = {}
function var6.story()
   local var316 = var5.createMockSwimlane("Categories", var5.MOCK_CATEGORIES)
   local var319 = var5.createMockContextualRecommendations()
   local var323 = var5.createMockList("Trending")
   local var327 = var5.createMockList("Essentials")
   local var332 = {}
   local var336 = {}
   var336.Sections = {}
   var336.PageSize = 10
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
   
   var336.AssetLogicWrapperProps = var1
   var332.AudioView = var1.createElement(var4, var336)
   return var1.createElement(var2, {}, var332)
end

return var6
