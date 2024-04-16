-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var753 = {}
   local var757 = {}
   function var757.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var757.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var757.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var765 = {}
   var765.Name = "Selected Username"
   var765.Id = 123
   var765.Type = Enum.CreatorType.User
   var757.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var757.SelectedGroups = {}
   var753.UserAndGroupFilter = var1.createElement(var2, var757)
   return var1.createElement(var3, {}, var753)
end

var4.stories = {}
return var4
