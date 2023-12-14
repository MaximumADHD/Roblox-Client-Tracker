-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var763 = {}
   local var767 = {}
   function var767.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var767.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var767.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var775 = {}
   var775.Name = "Selected Username"
   var775.Id = 123
   var775.Type = Enum.CreatorType.User
   var767.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var767.SelectedGroups = {}
   var763.UserAndGroupFilter = var1.createElement(var2, var767)
   return var1.createElement(var3, {}, var763)
end

var4.stories = {}
return var4
