-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.Roact)
local var2 = require(script.Parent.UserAndGroupFilter)
local var3 = require(var0.Stories.ToolboxStoryWrapper)
local var4 = {}
var4.name = "UserAndGroupFilter"
var4.summary = "A live Search Bar for users and groups"
function {}.story()
   local var853 = {}
   local var857 = {}
   function var857.OnDeleteCreatorPill()
      print("onDeleteCreatorPill")
   end
   
   function var857.OnSearchUpdate()
      print("onDeleteCreatorPill")
   end
   
   function var857.OnSelectCreator()
      print("onDeleteCreatorPill")
   end
   
   local var865 = {}
   var865.Name = "Selected Username"
   var865.Id = 123
   var865.Type = Enum.CreatorType.User
   var857.SelectedUsers = {}
   local var1 = {}
   var1.Name = "Selected Group name"
   var1.Id = 123
   var1.Type = Enum.CreatorType.Group
   var857.SelectedGroups = {}
   var853.UserAndGroupFilter = var1.createElement(var2, var857)
   return var1.createElement(var3, {}, var853)
end

var4.stories = {}
return var4
