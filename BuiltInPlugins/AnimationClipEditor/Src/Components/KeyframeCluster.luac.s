PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["keyframeTheme"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["Size"]
  GETTABLEKS R6 R1 K5 ["ZIndex"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 0
  GETTABLEKS R11 R5 K10 ["Y"]
  GETTABLEKS R10 R11 K11 ["Offset"]
  SUBK R9 R10 K9 [4]
  LOADN R10 0
  GETTABLEKS R13 R5 K10 ["Y"]
  GETTABLEKS R12 R13 K11 ["Offset"]
  SUBK R11 R12 K9 [4]
  CALL R7 4 1
  GETTABLEKS R8 R1 K12 ["Primary"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R9 R3 K13 ["primaryClusterColor"]
  JUMPIF R9 [+2]
  GETTABLEKS R9 R3 K14 ["clusterColor"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K16 ["Frame"]
  DUPTABLE R12 K20 [{"BackgroundColor3", "ZIndex", "Position", "AnchorPoint", "BorderSizePixel", "Size"}]
  SETTABLEKS R9 R12 K17 ["BackgroundColor3"]
  SETTABLEKS R6 R12 K5 ["ZIndex"]
  SETTABLEKS R4 R12 K3 ["Position"]
  GETIMPORT R13 K22 [Vector2.new]
  LOADN R14 0
  LOADK R15 K23 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["AnchorPoint"]
  LOADN R13 0
  SETTABLEKS R13 R12 K19 ["BorderSizePixel"]
  SETTABLEKS R5 R12 K4 ["Size"]
  DUPTABLE R13 K26 [{"LeftDiamond", "RightDiamond"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K16 ["Frame"]
  DUPTABLE R16 K28 [{"BackgroundColor3", "Position", "ZIndex", "Size", "BorderSizePixel", "AnchorPoint", "Rotation"}]
  SETTABLEKS R9 R16 K17 ["BackgroundColor3"]
  GETIMPORT R17 K8 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADK R20 K23 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K3 ["Position"]
  SETTABLEKS R6 R16 K5 ["ZIndex"]
  SETTABLEKS R7 R16 K4 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K19 ["BorderSizePixel"]
  GETIMPORT R17 K22 [Vector2.new]
  LOADK R18 K23 [0.5]
  LOADK R19 K23 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["AnchorPoint"]
  LOADN R17 45
  SETTABLEKS R17 R16 K27 ["Rotation"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["LeftDiamond"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K16 ["Frame"]
  DUPTABLE R16 K28 [{"BackgroundColor3", "Position", "ZIndex", "Size", "BorderSizePixel", "AnchorPoint", "Rotation"}]
  SETTABLEKS R9 R16 K17 ["BackgroundColor3"]
  GETIMPORT R17 K8 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADK R20 K23 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K3 ["Position"]
  SETTABLEKS R6 R16 K5 ["ZIndex"]
  SETTABLEKS R7 R16 K4 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K19 ["BorderSizePixel"]
  GETIMPORT R17 K22 [Vector2.new]
  LOADK R18 K23 [0.5]
  LOADK R19 K23 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["AnchorPoint"]
  LOADN R17 45
  SETTABLEKS R17 R16 K27 ["Rotation"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["RightDiamond"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R1 K11 ["PureComponent"]
  LOADK R7 K12 ["KeyframeCluster"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K15 ["render"]
  MOVE R6 R4
  DUPTABLE R7 K17 [{"Stylizer"}]
  GETTABLEKS R8 R3 K16 ["Stylizer"]
  SETTABLEKS R8 R7 K16 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
