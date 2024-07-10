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
  MOVE R3 R2
  LOADK R4 K10 [".Component-ThumbnailAndTextInfo"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K11 ["::UIListLayout"]
  DUPTABLE R9 K13 [{"Padding"}]
  GETIMPORT R10 K16 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Padding"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K17 [">> .ShimmerContainer"]
  DUPTABLE R10 K22 [{"Size", "BackgroundColor3", "ClipsDescendants", "BackgroundTransparency"}]
  LOADK R11 K23 ["$ThumbnailSize"]
  SETTABLEKS R11 R10 K18 ["Size"]
  GETIMPORT R11 K26 [Color3.fromHex]
  LOADK R12 K27 ["#25262C"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K19 ["BackgroundColor3"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["ClipsDescendants"]
  LOADK R11 K28 [0.5]
  SETTABLEKS R11 R10 K21 ["BackgroundTransparency"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K29 ["::UICorner"]
  DUPTABLE R14 K31 [{"CornerRadius"}]
  GETIMPORT R15 K16 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["CornerRadius"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K32 [">> .Shimmer"]
  DUPTABLE R11 K36 [{"Size", "Position", "BackgroundTransparency", "AnchorPoint", "ZIndex"}]
  LOADK R12 K37 ["$ShimmerSize"]
  SETTABLEKS R12 R11 K18 ["Size"]
  LOADK R12 K38 ["$ShimmerInitialPosition"]
  SETTABLEKS R12 R11 K33 ["Position"]
  LOADK R12 K28 [0.5]
  SETTABLEKS R12 R11 K21 ["BackgroundTransparency"]
  GETIMPORT R12 K40 [Vector2.new]
  LOADK R13 K28 [0.5]
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["AnchorPoint"]
  LOADN R12 241
  SETTABLEKS R12 R11 K35 ["ZIndex"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K41 ["::UIGradient"]
  DUPTABLE R15 K45 [{"Rotation", "Color", "Transparency"}]
  LOADK R16 K46 ["$ShimmerAngle"]
  SETTABLEKS R16 R15 K42 ["Rotation"]
  GETIMPORT R16 K48 [ColorSequence.new]
  NEWTABLE R17 0 3
  GETIMPORT R18 K50 [ColorSequenceKeypoint.new]
  LOADN R19 0
  GETIMPORT R20 K26 [Color3.fromHex]
  LOADK R21 K51 ["#DADADA"]
  CALL R20 1 -1
  CALL R18 -1 1
  GETIMPORT R19 K50 [ColorSequenceKeypoint.new]
  LOADK R20 K28 [0.5]
  GETIMPORT R21 K26 [Color3.fromHex]
  LOADK R22 K52 ["#EEEEEE"]
  CALL R21 1 -1
  CALL R19 -1 1
  GETIMPORT R20 K50 [ColorSequenceKeypoint.new]
  LOADN R21 1
  GETIMPORT R22 K26 [Color3.fromHex]
  LOADK R23 K52 ["#EEEEEE"]
  CALL R22 1 -1
  CALL R20 -1 -1
  SETLIST R17 R18 -1 [1]
  CALL R16 1 1
  SETTABLEKS R16 R15 K43 ["Color"]
  GETIMPORT R16 K54 [NumberSequence.new]
  NEWTABLE R17 0 3
  GETIMPORT R18 K56 [NumberSequenceKeypoint.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  GETIMPORT R19 K56 [NumberSequenceKeypoint.new]
  LOADK R20 K28 [0.5]
  LOADN R21 0
  CALL R19 2 1
  GETIMPORT R20 K56 [NumberSequenceKeypoint.new]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R16 1 1
  SETTABLEKS R16 R15 K44 ["Transparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K57 [">> .Thumbnail"]
  DUPTABLE R12 K58 [{"Size"}]
  LOADK R13 K23 ["$ThumbnailSize"]
  SETTABLEKS R13 R12 K18 ["Size"]
  CALL R10 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K65 [{"ThumbnailSize", "ThumbnailToContentPadding", "ShimmerSize", "ShimmerInitialPosition", "Transparent", "ShimmerAngle"}]
  GETIMPORT R8 K68 [UDim2.fromOffset]
  LOADN R9 50
  LOADN R10 50
  CALL R8 2 1
  SETTABLEKS R8 R7 K59 ["ThumbnailSize"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K60 ["ThumbnailToContentPadding"]
  GETIMPORT R8 K69 [UDim2.new]
  LOADN R9 2
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K61 ["ShimmerSize"]
  GETIMPORT R8 K69 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K62 ["ShimmerInitialPosition"]
  LOADN R8 1
  SETTABLEKS R8 R7 K63 ["Transparent"]
  LOADN R8 45
  SETTABLEKS R8 R7 K64 ["ShimmerAngle"]
  CALL R3 4 -1
  RETURN R3 -1
