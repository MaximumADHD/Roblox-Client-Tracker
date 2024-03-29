PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["KeyframeStyle"]
  GETTABLEKS R4 R1 K3 ["Selected"]
  GETTABLEKS R5 R1 K4 ["Named"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R7 R2 K5 ["keyframe"]
  GETTABLE R6 R7 R3
  JUMPIF R6 [+4]
  GETTABLEKS R7 R2 K5 ["keyframe"]
  GETTABLEKS R6 R7 K6 ["Default"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R7 R6 K7 ["selected"]
  JUMPIF R7 [+1]
  MOVE R7 R6
  GETTABLEKS R8 R1 K8 ["Position"]
  GETTABLEKS R10 R1 K10 ["BorderSizePixel"]
  ORK R9 R10 K9 [2]
  GETTABLEKS R11 R1 K12 ["Width"]
  ORK R10 R11 K11 [10]
  GETTABLEKS R11 R1 K13 ["ZIndex"]
  GETTABLEKS R12 R1 K14 ["OnActivated"]
  GETTABLEKS R13 R1 K15 ["OnRightClick"]
  GETTABLEKS R14 R1 K16 ["OnInputBegan"]
  GETTABLEKS R15 R1 K17 ["OnInputEnded"]
  GETTABLEKS R17 R1 K18 ["Filled"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R7 K19 ["backgroundColor"]
  JUMPIF R16 [+2]
  GETTABLEKS R16 R2 K19 ["backgroundColor"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K20 ["createElement"]
  LOADK R18 K21 ["ImageButton"]
  NEWTABLE R19 16 0
  GETIMPORT R20 K24 [UDim2.new]
  LOADN R21 0
  MOVE R22 R10
  LOADN R23 0
  MOVE R24 R10
  CALL R20 4 1
  SETTABLEKS R20 R19 K25 ["Size"]
  GETIMPORT R20 K27 [Vector2.new]
  LOADK R21 K28 [0.5]
  LOADK R22 K28 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["AnchorPoint"]
  SETTABLEKS R8 R19 K8 ["Position"]
  JUMPIFNOT R5 [+2]
  LOADNIL R20
  JUMP [+1]
  LOADN R20 45
  SETTABLEKS R20 R19 K30 ["Rotation"]
  SETTABLEKS R11 R19 K13 ["ZIndex"]
  LOADN R20 1
  SETTABLEKS R20 R19 K31 ["ImageTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K32 ["BackgroundTransparency"]
  LOADB R20 0
  SETTABLEKS R20 R19 K33 ["AutoButtonColor"]
  SETTABLEKS R9 R19 K10 ["BorderSizePixel"]
  GETTABLEKS R20 R7 K34 ["borderColor"]
  SETTABLEKS R20 R19 K35 ["BorderColor3"]
  SETTABLEKS R16 R19 K36 ["BackgroundColor3"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K37 ["Event"]
  GETTABLEKS R20 R21 K38 ["Activated"]
  SETTABLE R12 R19 R20
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K37 ["Event"]
  GETTABLEKS R20 R21 K39 ["MouseButton2Click"]
  SETTABLE R13 R19 R20
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K37 ["Event"]
  GETTABLEKS R20 R21 K40 ["InputBegan"]
  SETTABLE R14 R19 R20
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K37 ["Event"]
  GETTABLEKS R20 R21 K41 ["InputEnded"]
  SETTABLE R15 R19 R20
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K42 ["Children"]
  GETTABLE R20 R1 R21
  CALL R17 3 -1
  RETURN R17 -1

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
  LOADK R7 K12 ["Keyframe"]
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
