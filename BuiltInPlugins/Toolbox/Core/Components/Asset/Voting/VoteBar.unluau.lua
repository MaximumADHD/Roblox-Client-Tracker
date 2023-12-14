-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).UI.Votes
local var5 = require(var0.Core.Util.ContextHelper).withLocalization
local var6 = require(var1.Framework).ContextServices
local var7 = var2.PureComponent:extend("VoteBar")
function var7.render(arg1)
   return var5(function(arg1)
      return arg1:renderContent(nil, arg1)
   end)
end

local function fun2(arg1, arg2, arg3)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var60 = {}
   var60.BackgroundTransparency = 1
   var60.Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, var3.ASSET_VOTING_HEIGHT)
   local var76 = {}
   local var80 = {}
   var80.SortOrder = Enum.SortOrder.LayoutOrder
   var80.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var80.FillDirection = Enum.FillDirection.Horizontal
   var80.Padding = UDim.new(0, var3.ASSET_INNER_PADDING)
   var76.UIListLayout = var2.createElement("UIListLayout", var80)
   local var93 = {}
   local var94 = {}
   var94.UpVotes = var0.voting.UpVotes
   var94.DownVotes = var0.voting.DownVotes
   var94.VoteCount = var0.voting.VoteCount
   var94.UpVotePercent = var0.voting.UpVotePercent
   var93.Voting = var94
   var93.TextSize = var3.ASSET_VOTE_COUNT_FONT_SIZE
   var93.AutomaticSize = Enum.AutomaticSize.X
   var93.Font = var3.FONT
   var93.Size = UDim2.new(0, 0, 0, 0)
   var93.VerticalAlignment = Enum.VerticalAlignment.Center
   var93.Padding = var3.ASSET_VOTE_COUNT_HORIZONTAL_PADDING
   var93.IncludeVoteCount = true
   var93.VoteCountHeight = var3.ASSET_VOTE_COUNT_HEIGHT
   var76.Votes = var2.createElement(var4, var93)
   return var2.createElement("Frame", var60, var76)
end

function var7.renderContent(arg1, arg2, arg3)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var60 = {}
   var60.BackgroundTransparency = 1
   var60.Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, var3.ASSET_VOTING_HEIGHT)
   local var76 = {}
   local var80 = {}
   var80.SortOrder = Enum.SortOrder.LayoutOrder
   var80.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var80.FillDirection = Enum.FillDirection.Horizontal
   var80.Padding = UDim.new(0, var3.ASSET_INNER_PADDING)
   var76.UIListLayout = var2.createElement("UIListLayout", var80)
   local var93 = {}
   local var94 = {}
   var94.UpVotes = var0.voting.UpVotes
   var94.DownVotes = var0.voting.DownVotes
   var94.VoteCount = var0.voting.VoteCount
   var94.UpVotePercent = var0.voting.UpVotePercent
   var93.Voting = var94
   var93.TextSize = var3.ASSET_VOTE_COUNT_FONT_SIZE
   var93.AutomaticSize = Enum.AutomaticSize.X
   var93.Font = var3.FONT
   var93.Size = UDim2.new(0, 0, 0, 0)
   var93.VerticalAlignment = Enum.VerticalAlignment.Center
   var93.Padding = var3.ASSET_VOTE_COUNT_HORIZONTAL_PADDING
   var93.IncludeVoteCount = true
   var93.VoteCountHeight = var3.ASSET_VOTE_COUNT_HEIGHT
   var76.Votes = var2.createElement(var4, var93)
   return var2.createElement("Frame", var60, var76)
end

fun2 = var6.withContext
local var114 = {}
var114.Stylizer = var6.Stylizer
var7 = fun2(var114)(var7)
return var7
