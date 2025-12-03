PROTO_0:
  GETTABLEKS R3 R0 K0 ["size"]
  GETTABLEKS R2 R3 K1 ["X"]
  GETTABLEKS R1 R2 K2 ["Offset"]
  GETTABLEKS R4 R0 K4 ["shadowPadding"]
  MULK R3 R4 K3 [2]
  ADD R2 R1 R3
  DUPTABLE R3 K7 [{"knob", "knobShadow"}]
  DUPTABLE R4 K9 [{"size", "iconSize"}]
  GETTABLEKS R5 R0 K0 ["size"]
  SETTABLEKS R5 R4 K0 ["size"]
  GETTABLEKS R5 R0 K8 ["iconSize"]
  SETTABLEKS R5 R4 K8 ["iconSize"]
  SETTABLEKS R4 R3 K5 ["knob"]
  DUPTABLE R4 K11 [{"size", "padding"}]
  GETIMPORT R5 K14 [UDim2.fromOffset]
  MOVE R6 R2
  MOVE R7 R2
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["size"]
  GETTABLEKS R5 R0 K4 ["shadowPadding"]
  SETTABLEKS R5 R4 K10 ["padding"]
  SETTABLEKS R4 R3 K6 ["knobShadow"]
  RETURN R3 1

PROTO_1:
  DUPTABLE R1 K2 [{"knob", "knobShadow"}]
  DUPTABLE R2 K4 [{"tag"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K6 ["auto-xy radius-circle anchor-center-center position-center-center"]
  JUMP [+1]
  LOADK R3 K7 ["radius-circle anchor-center-center position-center-center"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["knob"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K8 ["anchor-center-center position-center-center"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["knobShadow"]
  NEWTABLE R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["XSmall"]
  GETUPVAL R4 2
  DUPTABLE R5 K13 [{"iconSize", "size", "shadowPadding"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["XSmall"]
  SETTABLEKS R6 R5 K10 ["iconSize"]
  GETUPVAL R6 4
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["XSmall"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["size"]
  GETTABLEKS R7 R0 K14 ["Padding"]
  GETTABLEKS R6 R7 K15 ["XXSmall"]
  SETTABLEKS R6 R5 K12 ["shadowPadding"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["Small"]
  GETUPVAL R4 2
  DUPTABLE R5 K13 [{"iconSize", "size", "shadowPadding"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K16 ["Small"]
  SETTABLEKS R6 R5 K10 ["iconSize"]
  GETUPVAL R6 4
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["Small"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["size"]
  GETTABLEKS R7 R0 K14 ["Padding"]
  GETTABLEKS R6 R7 K9 ["XSmall"]
  SETTABLEKS R6 R5 K12 ["shadowPadding"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K17 ["Medium"]
  GETUPVAL R4 2
  DUPTABLE R5 K13 [{"iconSize", "size", "shadowPadding"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K17 ["Medium"]
  SETTABLEKS R6 R5 K10 ["iconSize"]
  GETUPVAL R6 4
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K17 ["Medium"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["size"]
  GETTABLEKS R7 R0 K14 ["Padding"]
  GETTABLEKS R6 R7 K16 ["Small"]
  SETTABLEKS R6 R5 K12 ["shadowPadding"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K18 ["Large"]
  GETUPVAL R4 2
  DUPTABLE R5 K13 [{"iconSize", "size", "shadowPadding"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K18 ["Large"]
  SETTABLEKS R6 R5 K10 ["iconSize"]
  GETUPVAL R6 4
  MOVE R7 R0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Large"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["size"]
  GETTABLEKS R7 R0 K14 ["Padding"]
  GETTABLEKS R6 R7 K16 ["Small"]
  SETTABLEKS R6 R5 K12 ["shadowPadding"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R4 [+53]
  NEWTABLE R3 2 0
  LOADB R4 0
  DUPTABLE R5 K20 [{"knob", "iconContainer"}]
  DUPTABLE R6 K22 [{"style"}]
  GETTABLEKS R9 R0 K23 ["Color"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K21 ["style"]
  SETTABLEKS R6 R5 K0 ["knob"]
  DUPTABLE R6 K27 [{"backgroundStyle"}]
  GETTABLEKS R9 R0 K28 ["Inverse"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K26 ["backgroundStyle"]
  SETTABLEKS R6 R5 K19 ["iconContainer"]
  SETTABLE R5 R3 R4
  LOADB R4 1
  DUPTABLE R5 K20 [{"knob", "iconContainer"}]
  DUPTABLE R6 K22 [{"style"}]
  GETTABLEKS R9 R0 K28 ["Inverse"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K21 ["style"]
  SETTABLEKS R6 R5 K0 ["knob"]
  DUPTABLE R6 K27 [{"backgroundStyle"}]
  GETTABLEKS R9 R0 K23 ["Color"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K26 ["backgroundStyle"]
  SETTABLEKS R6 R5 K19 ["iconContainer"]
  SETTABLE R5 R3 R4
  JUMP [+56]
  NEWTABLE R3 2 0
  LOADB R4 0
  DUPTABLE R5 K20 [{"knob", "iconContainer"}]
  DUPTABLE R6 K22 [{"style"}]
  GETTABLEKS R10 R0 K23 ["Color"]
  GETTABLEKS R9 R10 K29 ["Extended"]
  GETTABLEKS R8 R9 K30 ["White"]
  GETTABLEKS R7 R8 K31 ["White_100"]
  SETTABLEKS R7 R6 K21 ["style"]
  SETTABLEKS R6 R5 K0 ["knob"]
  DUPTABLE R6 K27 [{"backgroundStyle"}]
  GETTABLEKS R9 R0 K28 ["Inverse"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K26 ["backgroundStyle"]
  SETTABLEKS R6 R5 K19 ["iconContainer"]
  SETTABLE R5 R3 R4
  LOADB R4 1
  DUPTABLE R5 K20 [{"knob", "iconContainer"}]
  DUPTABLE R6 K22 [{"style"}]
  GETTABLEKS R10 R0 K23 ["Color"]
  GETTABLEKS R9 R10 K29 ["Extended"]
  GETTABLEKS R8 R9 K30 ["White"]
  GETTABLEKS R7 R8 K31 ["White_100"]
  SETTABLEKS R7 R6 K21 ["style"]
  SETTABLEKS R6 R5 K0 ["knob"]
  DUPTABLE R6 K27 [{"backgroundStyle"}]
  GETTABLEKS R9 R0 K23 ["Color"]
  GETTABLEKS R8 R9 K24 ["Content"]
  GETTABLEKS R7 R8 K25 ["Emphasis"]
  SETTABLEKS R7 R6 K26 ["backgroundStyle"]
  SETTABLEKS R6 R5 K19 ["iconContainer"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K35 [{"common", "sizes", "isInverse"}]
  SETTABLEKS R1 R4 K32 ["common"]
  SETTABLEKS R2 R4 K33 ["sizes"]
  SETTABLEKS R3 R4 K34 ["isInverse"]
  RETURN R4 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Knob"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K4 ["isInverse"]
  GETTABLE R7 R8 R2
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["InputSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["composeStyleVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Providers"]
  GETTABLEKS R6 R7 K13 ["Style"]
  GETTABLEKS R5 R6 K14 ["Tokens"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K16 ["getKnobSize"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K17 ["VariantsContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K8 ["Utility"]
  GETTABLEKS R8 R9 K18 ["Flags"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Enums"]
  GETTABLEKS R9 R10 K19 ["IconSize"]
  CALL R8 1 1
  DUPCLOSURE R9 K20 [PROTO_0]
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  DUPCLOSURE R11 K22 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R2
  RETURN R11 1
