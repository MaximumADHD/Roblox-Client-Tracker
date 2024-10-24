PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["getTargetFromChange"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Inspector"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R5 R1 K4 ["BridgeId"]
  GETTABLEKS R6 R1 K5 ["Id"]
  NAMECALL R3 R2 K6 ["attachRoactTree"]
  CALL R3 3 1
  NAMECALL R4 R3 K7 ["getRoot"]
  CALL R4 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K8 ["selectTarget"]
  MOVE R5 R1
  CALL R4 1 0
  GETUPVAL R4 1
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["MouseIconEnabled"]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onSelectTarget"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEN R2 R3 1
  GETTABLEKS R3 R2 K0 ["BridgeId"]
  JUMPIFNOT R3 [+1]
  RETURN R2 1
  LOADNIL R3
  RETURN R3 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K9 [{"Instances", "Expansion", "Selection", "OnExpansionChange", "OnSelectionChange", "Size", "Style"}]
  GETUPVAL R5 2
  GETTABLEKS R6 R1 K2 ["Instances"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["Instances"]
  GETTABLEKS R5 R1 K3 ["Expansion"]
  SETTABLEKS R5 R4 K3 ["Expansion"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["Selection"]
  GETTABLEKS R5 R1 K10 ["toggleTarget"]
  SETTABLEKS R5 R4 K5 ["OnExpansionChange"]
  GETTABLEKS R5 R0 K11 ["onSelectTarget"]
  SETTABLEKS R5 R4 K6 ["OnSelectionChange"]
  GETIMPORT R5 K14 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K7 ["Size"]
  LOADK R5 K15 ["BorderBox"]
  SETTABLEKS R5 R4 K8 ["Style"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  DUPTABLE R2 K2 [{"Instances", "Expansion"}]
  GETTABLEKS R4 R0 K3 ["Targets"]
  GETTABLEKS R3 R4 K4 ["targets"]
  SETTABLEKS R3 R2 K0 ["Instances"]
  GETTABLEKS R4 R0 K3 ["Targets"]
  GETTABLEKS R3 R4 K5 ["expandedTargets"]
  SETTABLEKS R3 R2 K1 ["Expansion"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"selectTarget", "toggleTarget"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectTarget"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["toggleTarget"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["InspectorContext"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["values"]
  GETTABLEKS R7 R5 K14 ["keys"]
  GETTABLEKS R8 R3 K15 ["ContextServices"]
  GETTABLEKS R9 R8 K16 ["withContext"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["InstanceTreeView"]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K19 ["Actions"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K20 ["SelectTarget"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K21 ["ToggleTarget"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K22 ["PureComponent"]
  LOADK R17 K23 ["TargetTree"]
  NAMECALL R15 R15 K24 ["extend"]
  CALL R15 2 1
  GETIMPORT R16 K26 [game]
  LOADK R18 K27 ["UserInputService"]
  NAMECALL R16 R16 K28 ["GetService"]
  CALL R16 2 1
  DUPCLOSURE R17 K29 [PROTO_1]
  CAPTURE VAL R16
  SETTABLEKS R17 R15 K30 ["init"]
  DUPCLOSURE R17 K31 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R17 R15 K32 ["getTargetFromChange"]
  DUPCLOSURE R17 K33 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R17 R15 K34 ["render"]
  MOVE R17 R9
  DUPTABLE R18 K36 [{"Inspector"}]
  SETTABLEKS R4 R18 K35 ["Inspector"]
  CALL R17 1 1
  MOVE R18 R15
  CALL R17 1 1
  MOVE R15 R17
  GETTABLEKS R17 R2 K37 ["connect"]
  DUPCLOSURE R18 K38 [PROTO_4]
  DUPCLOSURE R19 K39 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CALL R17 2 1
  MOVE R18 R15
  CALL R17 1 -1
  RETURN R17 -1
