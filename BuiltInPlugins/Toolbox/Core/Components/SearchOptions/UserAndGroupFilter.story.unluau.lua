-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var781 = {}
   local var785 = {}
   function var785.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var785.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var785.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var793 = {}
   var793.Name = "Selected Username"
   var793.Id = 123
   var793.Type = Enum.CreatorType.User
   var785.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var785.SelectedGroups = {}
   var781.UserAndGroupFilter = var1.createElement(var2, var785)
   return var1.createElement(var3, {}, var781)
end

var4.stories = {}
return var4
