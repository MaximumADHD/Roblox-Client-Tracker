PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_render"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_configureTransition"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_onTransitionStart"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_3:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_onTransitionEnd"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_4:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_onTransitionStep"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["_doRender"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["_doConfigureTransition"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["_doOnTransitionStart"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["_doOnTransitionEnd"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["_doOnTransitionStep"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["screenProps"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["navigation"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["descriptors"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K10 [{"render", "configureTransition", "screenProps", "navigation", "descriptors", "onTransitionStart", "onTransitionEnd", "onTransitionStep"}]
  GETTABLEKS R7 R0 K11 ["_doRender"]
  SETTABLEKS R7 R6 K5 ["render"]
  GETTABLEKS R7 R0 K12 ["_doConfigureTransition"]
  SETTABLEKS R7 R6 K6 ["configureTransition"]
  SETTABLEKS R1 R6 K1 ["screenProps"]
  SETTABLEKS R2 R6 K2 ["navigation"]
  SETTABLEKS R3 R6 K3 ["descriptors"]
  GETTABLEKS R7 R0 K13 ["_doOnTransitionStart"]
  SETTABLEKS R7 R6 K7 ["onTransitionStart"]
  GETTABLEKS R7 R0 K14 ["_doOnTransitionEnd"]
  SETTABLEKS R7 R6 K8 ["onTransitionEnd"]
  GETTABLEKS R7 R0 K15 ["_doOnTransitionStep"]
  SETTABLEKS R7 R6 K9 ["onTransitionStep"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["navigation"]
  GETTABLEKS R3 R1 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["isTransitioning"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R1 K4 ["dispatch"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["completeTransition"]
  DUPTABLE R4 K7 [{"key"}]
  GETTABLEKS R6 R1 K2 ["state"]
  GETTABLEKS R5 R6 K6 ["key"]
  SETTABLEKS R5 R4 K6 ["key"]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["screenProps"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  GETUPVAL R5 1
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K4 ["navigationConfig"]
  CALL R4 2 1
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["descriptors"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["Dictionary"]
  GETTABLEKS R8 R9 K3 ["join"]
  MOVE R9 R4
  DUPTABLE R10 K9 [{"screenProps", "descriptors", "transitionProps", "lastTransitionProps"}]
  SETTABLEKS R3 R10 K1 ["screenProps"]
  SETTABLEKS R5 R10 K5 ["descriptors"]
  SETTABLEKS R1 R10 K7 ["transitionProps"]
  SETTABLEKS R2 R10 K8 ["lastTransitionProps"]
  CALL R8 2 -1
  CALL R6 -1 -1
  RETURN R6 -1

PROTO_9:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getTransitionConfig"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K2 ["navigationConfig"]
  GETTABLEKS R5 R6 K3 ["transitionConfig"]
  MOVE R6 R1
  MOVE R7 R2
  GETTABLEKS R10 R0 K1 ["props"]
  GETTABLEKS R9 R10 K2 ["navigationConfig"]
  GETTABLEKS R8 R9 K4 ["mode"]
  CALL R4 4 1
  GETTABLEKS R3 R4 K5 ["transitionSpec"]
  RETURN R3 1

PROTO_10:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["onTransitionStart"]
  JUMPIF R3 [+6]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["navigationConfig"]
  GETTABLEKS R3 R4 K1 ["onTransitionStart"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R4 R1 K3 ["index"]
  GETTABLEKS R5 R2 K3 ["index"]
  JUMPIFEQ R4 R5 [+7]
  MOVE R4 R3
  GETTABLEKS R5 R1 K4 ["navigation"]
  GETTABLEKS R6 R2 K4 ["navigation"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["navigationConfig"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["navigation"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["onTransitionEnd"]
  JUMPIF R5 [+2]
  GETTABLEKS R5 R3 K3 ["onTransitionEnd"]
  GETTABLEKS R8 R1 K4 ["scene"]
  GETTABLEKS R7 R8 K5 ["route"]
  GETTABLEKS R6 R7 K6 ["key"]
  GETTABLEKS R11 R4 K7 ["state"]
  GETTABLEKS R10 R11 K8 ["routes"]
  GETTABLEKS R12 R4 K7 ["state"]
  GETTABLEKS R11 R12 K9 ["index"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K6 ["key"]
  JUMPIFEQ R8 R6 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETTABLEKS R10 R1 K2 ["navigation"]
  GETTABLEKS R9 R10 K7 ["state"]
  GETTABLEKS R8 R9 K10 ["isTransitioning"]
  JUMPIFNOT R8 [+17]
  JUMPIFNOT R7 [+16]
  GETTABLEKS R8 R4 K11 ["dispatch"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["completeTransition"]
  DUPTABLE R10 K14 [{"key", "toChildKey"}]
  GETTABLEKS R12 R4 K7 ["state"]
  GETTABLEKS R11 R12 K6 ["key"]
  SETTABLEKS R11 R10 K6 ["key"]
  SETTABLEKS R6 R10 K13 ["toChildKey"]
  CALL R9 1 -1
  CALL R8 -1 0
  JUMPIFNOT R5 [+12]
  GETTABLEKS R8 R1 K9 ["index"]
  GETTABLEKS R9 R2 K9 ["index"]
  JUMPIFEQ R8 R9 [+7]
  MOVE R8 R5
  GETTABLEKS R9 R1 K2 ["navigation"]
  GETTABLEKS R10 R2 K2 ["navigation"]
  CALL R8 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["onTransitionStep"]
  JUMPIF R4 [+6]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K2 ["navigationConfig"]
  GETTABLEKS R4 R5 K1 ["onTransitionStep"]
  JUMPIFNOT R4 [+13]
  GETTABLEKS R5 R1 K3 ["index"]
  GETTABLEKS R6 R2 K3 ["index"]
  JUMPIFEQ R5 R6 [+8]
  MOVE R5 R4
  GETTABLEKS R6 R1 K4 ["navigation"]
  GETTABLEKS R7 R2 K4 ["navigation"]
  MOVE R8 R3
  CALL R5 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Cryo"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["NavigationActions"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["StackViewLayout"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Transitioner"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K10 ["StackViewTransitionConfigs"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K11 ["StackPresentationStyle"]
  CALL R6 1 1
  DUPTABLE R7 K13 [{"mode"}]
  GETTABLEKS R8 R6 K14 ["Default"]
  SETTABLEKS R8 R7 K12 ["mode"]
  GETTABLEKS R8 R1 K15 ["Component"]
  LOADK R10 K16 ["StackView"]
  NAMECALL R8 R8 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_5]
  SETTABLEKS R9 R8 K19 ["init"]
  DUPCLOSURE R9 K20 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K21 ["render"]
  DUPCLOSURE R9 K22 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K23 ["didMount"]
  DUPCLOSURE R9 K24 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K25 ["_render"]
  DUPCLOSURE R9 K26 [PROTO_9]
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K27 ["_configureTransition"]
  DUPCLOSURE R9 K28 [PROTO_10]
  SETTABLEKS R9 R8 K29 ["_onTransitionStart"]
  DUPCLOSURE R9 K30 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K31 ["_onTransitionEnd"]
  DUPCLOSURE R9 K32 [PROTO_12]
  SETTABLEKS R9 R8 K33 ["_onTransitionStep"]
  RETURN R8 1
