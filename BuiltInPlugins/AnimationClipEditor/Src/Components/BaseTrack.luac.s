PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["trackTheme"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["Width"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["ZIndex"]
  GETTABLEKS R8 R1 K7 ["Primary"]
  GETTABLEKS R9 R1 K8 ["ShowBackground"]
  LOADNIL R10
  JUMPIFNOT R8 [+3]
  GETTABLEKS R10 R3 K9 ["primaryBackgroundColor"]
  JUMP [+3]
  JUMPIFNOT R9 [+2]
  GETTABLEKS R10 R3 K10 ["titleBackgroundColor"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K12 ["Frame"]
  DUPTABLE R13 K16 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ZIndex", "LayoutOrder"}]
  SETTABLEKS R4 R13 K3 ["Size"]
  SETTABLEKS R10 R13 K13 ["BackgroundColor3"]
  JUMPIFNOT R10 [+2]
  LOADN R14 0
  JUMP [+1]
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K15 ["BorderSizePixel"]
  SETTABLEKS R7 R13 K6 ["ZIndex"]
  SETTABLEKS R6 R13 K5 ["LayoutOrder"]
  DUPTABLE R14 K18 [{"KeyframeDisplayArea"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K12 ["Frame"]
  DUPTABLE R17 K21 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "ZIndex"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["BackgroundTransparency"]
  GETIMPORT R18 K24 [Vector2.new]
  LOADK R19 K25 [0.5]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["AnchorPoint"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K25 [0.5]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K20 ["Position"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADN R19 0
  MOVE R20 R5
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K3 ["Size"]
  SETTABLEKS R7 R17 K6 ["ZIndex"]
  GETTABLEKS R19 R0 K0 ["props"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K28 ["Children"]
  GETTABLE R18 R19 R20
  CALL R15 3 1
  SETTABLEKS R15 R14 K17 ["KeyframeDisplayArea"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["withContext"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["PureComponent"]
  LOADK R7 K12 ["BaseTrack"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K15 ["render"]
  MOVE R6 R3
  DUPTABLE R7 K17 [{"Stylizer"}]
  GETTABLEKS R8 R2 K16 ["Stylizer"]
  SETTABLEKS R8 R7 K16 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
