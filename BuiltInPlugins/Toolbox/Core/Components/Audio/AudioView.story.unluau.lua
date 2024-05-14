-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Core.Util.MockWrapper)
local var3 = require(var0.Core.Types.AudioTypes)
local var4 = require(script.Parent.AudioView)
local var5 = require(script.Parent.AudioView.mocks)
local var6 = {}
function var6.story()
   local var322 = var5.createMockSwimlane("Categories", var5.MOCK_CATEGORIES)
   local var325 = var5.createMockContextualRecommendations()
   local var329 = var5.createMockList("Trending")
   local var333 = var5.createMockList("Essentials")
   local var338 = {}
   local var342 = {}
   var342.Sections = {}
   var342.PageSize = 10
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
   
   var342.AssetLogicWrapperProps = var1
   var338.AudioView = var1.createElement(var4, var342)
   return var1.createElement(var2, {}, var338)
end

return var6
