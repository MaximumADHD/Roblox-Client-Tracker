MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Bin"]
  GETTABLEKS R5 R6 K11 ["Common"]
  GETTABLEKS R4 R5 K12 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-ThumbnailAndTextInfo"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K14 ["::UIListLayout"]
  DUPTABLE R10 K16 [{"Padding"}]
  GETIMPORT R11 K19 [UDim.new]
  LOADN R12 0
  LOADN R13 16
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Padding"]
  CALL R8 2 1
  GETTABLEKS R10 R3 K20 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+34]
  MOVE R9 R2
  LOADK R10 K21 [">> .ShimmerContainer"]
  DUPTABLE R11 K26 [{"Size", "BackgroundColor3", "ClipsDescendants", "BackgroundTransparency"}]
  LOADK R12 K27 ["$ThumbnailSize"]
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K30 [Color3.fromHex]
  LOADK R13 K31 ["#25262C"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K23 ["BackgroundColor3"]
  LOADB R12 1
  SETTABLEKS R12 R11 K24 ["ClipsDescendants"]
  LOADK R12 K32 [0.5]
  SETTABLEKS R12 R11 K25 ["BackgroundTransparency"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K33 ["::UICorner"]
  DUPTABLE R15 K35 [{"CornerRadius"}]
  GETIMPORT R16 K19 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  GETTABLEKS R11 R3 K20 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADNIL R10
  JUMP [+91]
  MOVE R10 R2
  LOADK R11 K36 [">> .Shimmer"]
  DUPTABLE R12 K40 [{"Size", "Position", "BackgroundTransparency", "AnchorPoint", "ZIndex"}]
  LOADK R13 K41 ["$ShimmerSize"]
  SETTABLEKS R13 R12 K22 ["Size"]
  LOADK R13 K42 ["$ShimmerInitialPosition"]
  SETTABLEKS R13 R12 K37 ["Position"]
  LOADK R13 K32 [0.5]
  SETTABLEKS R13 R12 K25 ["BackgroundTransparency"]
  GETIMPORT R13 K44 [Vector2.new]
  LOADK R14 K32 [0.5]
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["AnchorPoint"]
  LOADN R13 241
  SETTABLEKS R13 R12 K39 ["ZIndex"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K45 ["::UIGradient"]
  DUPTABLE R16 K49 [{"Rotation", "Color", "Transparency"}]
  LOADK R17 K50 ["$ShimmerAngle"]
  SETTABLEKS R17 R16 K46 ["Rotation"]
  GETIMPORT R17 K52 [ColorSequence.new]
  NEWTABLE R18 0 3
  GETIMPORT R19 K54 [ColorSequenceKeypoint.new]
  LOADN R20 0
  GETIMPORT R21 K30 [Color3.fromHex]
  LOADK R22 K55 ["#DADADA"]
  CALL R21 1 -1
  CALL R19 -1 1
  GETIMPORT R20 K54 [ColorSequenceKeypoint.new]
  LOADK R21 K32 [0.5]
  GETIMPORT R22 K30 [Color3.fromHex]
  LOADK R23 K56 ["#EEEEEE"]
  CALL R22 1 -1
  CALL R20 -1 1
  GETIMPORT R21 K54 [ColorSequenceKeypoint.new]
  LOADN R22 1
  GETIMPORT R23 K30 [Color3.fromHex]
  LOADK R24 K56 ["#EEEEEE"]
  CALL R23 1 -1
  CALL R21 -1 -1
  SETLIST R18 R19 -1 [1]
  CALL R17 1 1
  SETTABLEKS R17 R16 K47 ["Color"]
  GETIMPORT R17 K58 [NumberSequence.new]
  NEWTABLE R18 0 3
  GETIMPORT R19 K60 [NumberSequenceKeypoint.new]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  GETIMPORT R20 K60 [NumberSequenceKeypoint.new]
  LOADK R21 K32 [0.5]
  LOADN R22 0
  CALL R20 2 1
  GETIMPORT R21 K60 [NumberSequenceKeypoint.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R17 1 1
  SETTABLEKS R17 R16 K48 ["Transparency"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K61 [">> .Thumbnail"]
  DUPTABLE R13 K62 [{"Size"}]
  LOADK R14 K27 ["$ThumbnailSize"]
  SETTABLEKS R14 R13 K22 ["Size"]
  CALL R11 2 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K69 [{"ThumbnailSize", "ThumbnailToContentPadding", "ShimmerSize", "ShimmerInitialPosition", "Transparent", "ShimmerAngle"}]
  GETIMPORT R9 K72 [UDim2.fromOffset]
  LOADN R10 50
  LOADN R11 50
  CALL R9 2 1
  SETTABLEKS R9 R8 K63 ["ThumbnailSize"]
  GETIMPORT R9 K19 [UDim.new]
  LOADN R10 0
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K64 ["ThumbnailToContentPadding"]
  GETIMPORT R9 K73 [UDim2.new]
  LOADN R10 2
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K65 ["ShimmerSize"]
  GETIMPORT R9 K73 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K66 ["ShimmerInitialPosition"]
  LOADN R9 1
  SETTABLEKS R9 R8 K67 ["Transparent"]
  LOADN R9 45
  SETTABLEKS R9 R8 K68 ["ShimmerAngle"]
  CALL R4 4 -1
  RETURN R4 -1
