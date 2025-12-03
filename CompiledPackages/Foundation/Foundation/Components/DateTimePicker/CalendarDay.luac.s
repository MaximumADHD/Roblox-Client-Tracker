PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R0 K0 ["isSelected"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R5 R1 K1 ["Inverse"]
  GETTABLEKS R4 R5 K2 ["Content"]
  GETTABLEKS R3 R4 K3 ["Emphasis"]
  GETTABLEKS R2 R3 K4 ["Color3"]
  JUMP [+23]
  GETTABLEKS R3 R0 K5 ["isSelectable"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R3 R0 K6 ["emphasizeText"]
  JUMPIF R3 [+9]
  GETTABLEKS R5 R1 K7 ["Color"]
  GETTABLEKS R4 R5 K2 ["Content"]
  GETTABLEKS R3 R4 K8 ["Muted"]
  GETTABLEKS R2 R3 K4 ["Color3"]
  JUMP [+8]
  GETTABLEKS R5 R1 K7 ["Color"]
  GETTABLEKS R4 R5 K2 ["Content"]
  GETTABLEKS R3 R4 K3 ["Emphasis"]
  GETTABLEKS R2 R3 K4 ["Color3"]
  GETTABLEKS R4 R0 K0 ["isSelected"]
  JUMPIF R4 [+8]
  GETTABLEKS R4 R0 K5 ["isSelectable"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R0 K6 ["emphasizeText"]
  JUMPIF R4 [+2]
  LOADK R3 K9 [0.5]
  JUMP [+1]
  LOADN R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K20 [{"textStyle", "backgroundStyle", "LayoutOrder", "onActivated", "RichText", "stateLayer", "Text", "tag", "testId"}]
  DUPTABLE R7 K22 [{"Color3", "Transparency"}]
  SETTABLEKS R2 R7 K4 ["Color3"]
  SETTABLEKS R3 R7 K21 ["Transparency"]
  SETTABLEKS R7 R6 K11 ["textStyle"]
  GETTABLEKS R8 R0 K0 ["isSelected"]
  JUMPIFNOT R8 [+7]
  GETTABLEKS R9 R1 K7 ["Color"]
  GETTABLEKS R8 R9 K23 ["System"]
  GETTABLEKS R7 R8 K24 ["Contrast"]
  JUMP [+11]
  GETTABLEKS R8 R0 K25 ["highlight"]
  JUMPIFNOT R8 [+7]
  GETTABLEKS R9 R1 K7 ["Color"]
  GETTABLEKS R8 R9 K26 ["ActionStandard"]
  GETTABLEKS R7 R8 K27 ["Background"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K12 ["backgroundStyle"]
  GETTABLEKS R7 R0 K13 ["LayoutOrder"]
  SETTABLEKS R7 R6 K13 ["LayoutOrder"]
  GETTABLEKS R8 R0 K5 ["isSelectable"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R0 K14 ["onActivated"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K14 ["onActivated"]
  GETTABLEKS R8 R0 K5 ["isSelectable"]
  NOT R7 R8
  SETTABLEKS R7 R6 K15 ["RichText"]
  DUPTABLE R7 K29 [{"mode"}]
  GETTABLEKS R9 R0 K0 ["isSelected"]
  JUMPIFNOT R9 [+4]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["Inverse"]
  JUMP [+3]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K30 ["Default"]
  SETTABLEKS R8 R7 K28 ["mode"]
  SETTABLEKS R7 R6 K16 ["stateLayer"]
  GETTABLEKS R8 R0 K5 ["isSelectable"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R0 K17 ["Text"]
  JUMP [+7]
  LOADK R8 K31 ["<s>%*</s>"]
  GETTABLEKS R10 R0 K17 ["Text"]
  NAMECALL R8 R8 K32 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  SETTABLEKS R7 R6 K17 ["Text"]
  LOADK R7 K33 ["text-align-x-center text-align-y-center text-title-small auto-xy"]
  SETTABLEKS R7 R6 K18 ["tag"]
  GETTABLEKS R7 R0 K19 ["testId"]
  SETTABLEKS R7 R6 K19 ["testId"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["StateLayerMode"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Text"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K12 ["Providers"]
  GETTABLEKS R7 R8 K13 ["Style"]
  GETTABLEKS R6 R7 K14 ["useTokens"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
