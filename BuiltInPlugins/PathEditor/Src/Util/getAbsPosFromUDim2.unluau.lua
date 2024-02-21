-- Generated with Unluau (https://github.com/valencefun/unluau)
function getAbsPosFromUDim2(arg1, arg2, arg3)
   return Vector2.new(arg1.X.Offset + arg1.X.Scale * arg3.X, arg1.Y.Offset + arg1.Y.Scale * arg3.Y) + arg2
end

return getAbsPosFromUDim2
