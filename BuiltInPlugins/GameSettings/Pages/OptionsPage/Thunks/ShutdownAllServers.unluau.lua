-- Generated with Unluau (https://github.com/valencefun/unluau)
return function()
   return function(arg1, arg2)
      arg2.gameOptionsController:shutdownAllServers(arg1:getState().Metadata.gameId)
   end
end
