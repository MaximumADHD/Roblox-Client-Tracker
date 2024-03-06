-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var840 = {}
   local var844 = {}
   function var844.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var844.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var844.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var852 = {}
   var852.Name = "Selected Username"
   var852.Id = 123
   var852.Type = Enum.CreatorType.User
   var844.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var844.SelectedGroups = {}
   var840.UserAndGroupFilter = var1.createElement(var2, var844)
   return var1.createElement(var3, {}, var840)
end

var4.stories = {}
return var4
