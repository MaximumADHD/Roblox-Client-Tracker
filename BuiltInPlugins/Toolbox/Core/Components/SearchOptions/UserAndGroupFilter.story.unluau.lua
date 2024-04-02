-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var831 = {}
   local var835 = {}
   function var835.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var835.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var835.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var843 = {}
   var843.Name = "Selected Username"
   var843.Id = 123
   var843.Type = Enum.CreatorType.User
   var835.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var835.SelectedGroups = {}
   var831.UserAndGroupFilter = var1.createElement(var2, var835)
   return var1.createElement(var3, {}, var831)
end

var4.stories = {}
return var4
