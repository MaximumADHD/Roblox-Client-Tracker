-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2, arg3)
   game:SetFastFlagForTesting(arg1, game:SetFastFlagForTesting(arg1, arg2))
   assert(pcall(arg3), var16)
end
