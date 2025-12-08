PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  DUPTABLE R2 K2 [{"TransitionType"}]
  SETTABLEKS R0 R2 K1 ["TransitionType"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  DUPTABLE R2 K2 [{"Duration"}]
  SETTABLEKS R0 R2 K1 ["Duration"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  DUPTABLE R2 K2 [{"CurveType"}]
  SETTABLEKS R0 R2 K1 ["CurveType"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Collapsed"]
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["chevron-large-right"]
  RETURN R0 1
  LOADK R0 K2 ["chevron-large-down"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K1 ["OnChanged"]
  GETTABLEKS R6 R0 K2 ["Value"]
  GETTABLEKS R5 R6 K3 ["Duration"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useCallback"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["OnChanged"]
  GETTABLEKS R7 R0 K2 ["Value"]
  GETTABLEKS R6 R7 K4 ["TransitionType"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useCallback"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NEWTABLE R5 0 3
  GETTABLEKS R6 R0 K1 ["OnChanged"]
  GETTABLEKS R8 R0 K2 ["Value"]
  GETTABLEKS R7 R8 K4 ["TransitionType"]
  GETTABLEKS R9 R0 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["Duration"]
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["useMemo"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K6 ["Collapsed"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["View"]
  DUPTABLE R7 K11 [{"tag", "LayoutOrder"}]
  LOADK R8 K12 ["col auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R8 R7 K9 ["tag"]
  GETTABLEKS R8 R0 K10 ["LayoutOrder"]
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  DUPTABLE R8 K17 [{"Header", "Property_TransitionType", "Property_TransitionDuration", "Property_TransitionCurve"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["View"]
  DUPTABLE R11 K11 [{"tag", "LayoutOrder"}]
  LOADK R12 K18 ["row auto-y gap-small padding-x-xxsmall size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R12 R11 K9 ["tag"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  DUPTABLE R12 K21 [{"CompositorNodeInputLabel", "CollapseToggle"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K22 ["Text"]
  DUPTABLE R15 K23 [{"tag", "Text", "LayoutOrder"}]
  LOADK R16 K24 ["text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R16 R15 K9 ["tag"]
  GETTABLEKS R16 R0 K25 ["Label"]
  SETTABLEKS R16 R15 K22 ["Text"]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["CompositorNodeInputLabel"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K26 ["Button"]
  DUPTABLE R15 K32 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
  SETTABLEKS R4 R15 K27 ["icon"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K33 ["Enums"]
  GETTABLEKS R17 R18 K34 ["ButtonVariant"]
  GETTABLEKS R16 R17 K22 ["Text"]
  SETTABLEKS R16 R15 K28 ["variant"]
  GETTABLEKS R16 R0 K35 ["OnCollapseToggle"]
  SETTABLEKS R16 R15 K29 ["onActivated"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K33 ["Enums"]
  GETTABLEKS R17 R18 K36 ["InputSize"]
  GETTABLEKS R16 R17 K37 ["XSmall"]
  SETTABLEKS R16 R15 K30 ["size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K33 ["Enums"]
  GETTABLEKS R17 R18 K38 ["FillBehavior"]
  GETTABLEKS R16 R17 K39 ["Fit"]
  SETTABLEKS R16 R15 K31 ["fillBehavior"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["CollapseToggle"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Header"]
  GETTABLEKS R10 R0 K6 ["Collapsed"]
  JUMPIF R10 [+24]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K41 [{"Label", "Type", "Value", "OnChanged", "LayoutOrder"}]
  LOADK R12 K42 ["Transition Type"]
  SETTABLEKS R12 R11 K25 ["Label"]
  LOADK R12 K43 ["Enum.AnimationNodeTransitionType"]
  SETTABLEKS R12 R11 K40 ["Type"]
  GETTABLEKS R13 R0 K2 ["Value"]
  GETTABLEKS R12 R13 K4 ["TransitionType"]
  SETTABLEKS R12 R11 K2 ["Value"]
  SETTABLEKS R1 R11 K1 ["OnChanged"]
  LOADN R12 2
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K14 ["Property_TransitionType"]
  GETTABLEKS R10 R0 K6 ["Collapsed"]
  JUMPIF R10 [+24]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K41 [{"Label", "Type", "Value", "OnChanged", "LayoutOrder"}]
  LOADK R12 K44 ["Length"]
  SETTABLEKS R12 R11 K25 ["Label"]
  LOADK R12 K45 ["Timestamp"]
  SETTABLEKS R12 R11 K40 ["Type"]
  GETTABLEKS R13 R0 K2 ["Value"]
  GETTABLEKS R12 R13 K3 ["Duration"]
  SETTABLEKS R12 R11 K2 ["Value"]
  SETTABLEKS R2 R11 K1 ["OnChanged"]
  LOADN R12 3
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["Property_TransitionDuration"]
  GETTABLEKS R10 R0 K6 ["Collapsed"]
  JUMPIF R10 [+32]
  GETTABLEKS R11 R0 K2 ["Value"]
  GETTABLEKS R10 R11 K4 ["TransitionType"]
  GETIMPORT R11 K49 [Enum.AnimationNodeTransitionType.CrossFade]
  JUMPIFNOTEQ R10 R11 [+25]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K41 [{"Label", "Type", "Value", "OnChanged", "LayoutOrder"}]
  LOADK R12 K50 ["Curve"]
  SETTABLEKS R12 R11 K25 ["Label"]
  LOADK R12 K51 ["Enum.PoseEasingDirection"]
  SETTABLEKS R12 R11 K40 ["Type"]
  GETTABLEKS R13 R0 K2 ["Value"]
  GETTABLEKS R12 R13 K52 ["CurveType"]
  SETTABLEKS R12 R11 K2 ["Value"]
  SETTABLEKS R3 R11 K1 ["OnChanged"]
  LOADN R12 4
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K16 ["Property_TransitionCurve"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["NodeView"]
  GETTABLEKS R3 R4 K8 ["CompositorNodeProperty"]
  GETTABLEKS R2 R3 K9 ["EnumProperty"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Components"]
  GETTABLEKS R6 R7 K7 ["NodeView"]
  GETTABLEKS R5 R6 K8 ["CompositorNodeProperty"]
  GETTABLEKS R4 R5 K12 ["NumberProperty"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Parent"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
