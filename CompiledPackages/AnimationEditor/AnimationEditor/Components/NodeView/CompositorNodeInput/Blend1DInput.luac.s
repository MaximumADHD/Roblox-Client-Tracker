PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  JUMPIFEQKNIL R1 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnChanged"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Input"]
  GETTABLEKS R3 R4 K3 ["Value"]
  DUPTABLE R4 K5 [{"Position"}]
  SETTABLEKS R0 R4 K4 ["Position"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K1 ["OnChanged"]
  GETTABLEKS R5 R0 K2 ["Input"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["View"]
  DUPTABLE R4 K7 [{"tag", "LayoutOrder"}]
  LOADK R5 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R5 R4 K5 ["tag"]
  GETTABLEKS R5 R0 K6 ["LayoutOrder"]
  SETTABLEKS R5 R4 K6 ["LayoutOrder"]
  DUPTABLE R5 K12 [{"InputLabelWeight", "Position", "PinChildren"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K15 [{"Name", "Weight", "LayoutOrder"}]
  GETTABLEKS R10 R0 K2 ["Input"]
  GETTABLEKS R9 R10 K13 ["Name"]
  SETTABLEKS R9 R8 K13 ["Name"]
  GETTABLEKS R10 R0 K2 ["Input"]
  GETTABLEKS R9 R10 K14 ["Weight"]
  SETTABLEKS R9 R8 K14 ["Weight"]
  LOADN R9 1
  SETTABLEKS R9 R8 K6 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["InputLabelWeight"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["NumberInput"]
  DUPTABLE R8 K26 [{"size", "width", "label", "value", "step", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K27 ["Enums"]
  GETTABLEKS R10 R11 K28 ["InputSize"]
  GETTABLEKS R9 R10 K29 ["XSmall"]
  SETTABLEKS R9 R8 K17 ["size"]
  GETIMPORT R9 K32 [UDim.new]
  LOADN R10 0
  LOADN R11 90
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["width"]
  LOADK R9 K33 [""]
  SETTABLEKS R9 R8 K19 ["label"]
  GETTABLEKS R11 R0 K2 ["Input"]
  GETTABLEKS R10 R11 K34 ["Value"]
  GETTABLEKS R9 R10 K10 ["Position"]
  SETTABLEKS R9 R8 K20 ["value"]
  LOADN R9 1
  SETTABLEKS R9 R8 K21 ["step"]
  LOADN R9 2
  SETTABLEKS R9 R8 K6 ["LayoutOrder"]
  LOADN R9 2
  SETTABLEKS R9 R8 K22 ["precision"]
  SETTABLEKS R1 R8 K23 ["onChanged"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K27 ["Enums"]
  GETTABLEKS R10 R11 K35 ["NumberInputControlsVariant"]
  GETTABLEKS R9 R10 K36 ["None"]
  SETTABLEKS R9 R8 K24 ["controlsVariant"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["isScrubbable"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Position"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K37 ["Folder"]
  NEWTABLE R8 0 0
  DUPTABLE R9 K39 [{"RenderedPinInput"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K44 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
  GETIMPORT R13 K46 [UDim2.new]
  LOADN R14 0
  LOADN R15 247
  LOADK R16 K47 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K10 ["Position"]
  LOADK R13 K2 ["Input"]
  SETTABLEKS R13 R12 K40 ["pinSide"]
  LOADK R13 K48 ["Animation"]
  SETTABLEKS R13 R12 K41 ["pinDataType"]
  GETTABLEKS R13 R0 K49 ["NodeId"]
  SETTABLEKS R13 R12 K42 ["pinNodeId"]
  GETTABLEKS R14 R0 K2 ["Input"]
  GETTABLEKS R13 R14 K13 ["Name"]
  SETTABLEKS R13 R12 K43 ["pinName"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["RenderedPinInput"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["PinChildren"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["NodeView"]
  GETTABLEKS R5 R6 K11 ["CompositorNodeInput"]
  GETTABLEKS R4 R5 K12 ["InputLabelWeight"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["NodeView"]
  GETTABLEKS R6 R7 K11 ["CompositorNodeInput"]
  GETTABLEKS R5 R6 K13 ["InputPanelTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K10 ["NodeView"]
  GETTABLEKS R8 R9 K15 ["CompositorNodes"]
  GETTABLEKS R7 R8 K16 ["RenderedCompositorPin"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1
