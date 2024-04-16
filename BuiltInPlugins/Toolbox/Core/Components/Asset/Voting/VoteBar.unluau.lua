-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).UI.Votes
local var5 = require(var1.Framework).ContextServices
local var6 = var2.PureComponent:extend("VoteBar")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var43 = {}
   var43.BackgroundTransparency = 1
   var43.Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, var3.ASSET_VOTING_HEIGHT)
   local var59 = {}
   local var63 = {}
   var63.SortOrder = Enum.SortOrder.LayoutOrder
   var63.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var63.FillDirection = Enum.FillDirection.Horizontal
   var63.Padding = UDim.new(0, var3.ASSET_INNER_PADDING)
   var59.UIListLayout = var2.createElement("UIListLayout", var63)
   local var76 = {}
   local var77 = {}
   var77.UpVotes = var0.voting.UpVotes
   var77.DownVotes = var0.voting.DownVotes
   var77.VoteCount = var0.voting.VoteCount
   var77.UpVotePercent = var0.voting.UpVotePercent
   var76.Voting = var77
   var76.TextSize = var3.ASSET_VOTE_COUNT_FONT_SIZE
   var76.AutomaticSize = Enum.AutomaticSize.X
   var76.Font = var3.FONT
   var76.Size = UDim2.new(0, 0, 0, 0)
   var76.VerticalAlignment = Enum.VerticalAlignment.Center
   var76.Padding = var3.ASSET_VOTE_COUNT_HORIZONTAL_PADDING
   var76.IncludeVoteCount = true
   var76.VoteCountHeight = var3.ASSET_VOTE_COUNT_HEIGHT
   var59.Votes = var2.createElement(var4, var76)
   return var2.createElement("Frame", var43, var59)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var43 = {}
   var43.BackgroundTransparency = 1
   var43.Size = UDim2.new(1, 0, 1, 0) or UDim2.new(1, 0, 0, var3.ASSET_VOTING_HEIGHT)
   local var59 = {}
   local var63 = {}
   var63.SortOrder = Enum.SortOrder.LayoutOrder
   var63.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var63.FillDirection = Enum.FillDirection.Horizontal
   var63.Padding = UDim.new(0, var3.ASSET_INNER_PADDING)
   var59.UIListLayout = var2.createElement("UIListLayout", var63)
   local var76 = {}
   local var77 = {}
   var77.UpVotes = var0.voting.UpVotes
   var77.DownVotes = var0.voting.DownVotes
   var77.VoteCount = var0.voting.VoteCount
   var77.UpVotePercent = var0.voting.UpVotePercent
   var76.Voting = var77
   var76.TextSize = var3.ASSET_VOTE_COUNT_FONT_SIZE
   var76.AutomaticSize = Enum.AutomaticSize.X
   var76.Font = var3.FONT
   var76.Size = UDim2.new(0, 0, 0, 0)
   var76.VerticalAlignment = Enum.VerticalAlignment.Center
   var76.Padding = var3.ASSET_VOTE_COUNT_HORIZONTAL_PADDING
   var76.IncludeVoteCount = true
   var76.VoteCountHeight = var3.ASSET_VOTE_COUNT_HEIGHT
   var59.Votes = var2.createElement(var4, var76)
   return var2.createElement("Frame", var43, var59)
end

fun0 = var5.withContext
local var97 = {}
var97.Stylizer = var5.Stylizer
var6 = fun0(var97)(var6)
return var6
