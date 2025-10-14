PROTO_0:
  DUPTABLE R1 K5 [{"canvas", "outerContainer", "innerContainer", "textBox", "icon"}]
  DUPTABLE R2 K7 [{"tag"}]
  GETTABLEKS R3 R0 K8 ["canvasTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K0 ["canvas"]
  DUPTABLE R2 K7 [{"tag"}]
  GETTABLEKS R3 R0 K9 ["outerContainerTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K1 ["outerContainer"]
  DUPTABLE R2 K13 [{"tag", "padding", "gap", "radius"}]
  GETTABLEKS R3 R0 K14 ["innerContainerTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  DUPTABLE R3 K17 [{"left", "right"}]
  GETIMPORT R4 K20 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K21 ["horizontalPadding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["left"]
  GETIMPORT R4 K20 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K21 ["horizontalPadding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["right"]
  SETTABLEKS R3 R2 K10 ["padding"]
  GETTABLEKS R3 R0 K11 ["gap"]
  SETTABLEKS R3 R2 K11 ["gap"]
  GETTABLEKS R3 R0 K12 ["radius"]
  SETTABLEKS R3 R2 K12 ["radius"]
  SETTABLEKS R2 R1 K2 ["innerContainer"]
  DUPTABLE R2 K24 [{"tag", "Font", "FontSize"}]
  GETTABLEKS R3 R0 K25 ["textBoxTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETTABLEKS R4 R0 K26 ["typography"]
  GETTABLEKS R3 R4 K22 ["Font"]
  SETTABLEKS R3 R2 K22 ["Font"]
  GETTABLEKS R4 R0 K26 ["typography"]
  GETTABLEKS R3 R4 K23 ["FontSize"]
  SETTABLEKS R3 R2 K23 ["FontSize"]
  SETTABLEKS R2 R1 K3 ["textBox"]
  DUPTABLE R2 K28 [{"size"}]
  GETTABLEKS R3 R0 K29 ["iconSize"]
  SETTABLEKS R3 R2 K27 ["size"]
  SETTABLEKS R2 R1 K4 ["icon"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K4 [{"outerContainer", "innerContainer", "textBox", "icon"}]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K7 ["bg-shift-100"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K0 ["outerContainer"]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K8 ["row align-y-center"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K1 ["innerContainer"]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K9 ["gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K2 ["textBox"]
  DUPTABLE R2 K11 [{"style"}]
  GETTABLEKS R5 R0 K12 ["Color"]
  GETTABLEKS R4 R5 K13 ["Content"]
  GETTABLEKS R3 R4 K14 ["Muted"]
  SETTABLEKS R3 R2 K10 ["style"]
  SETTABLEKS R2 R1 K3 ["icon"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K15 ["XSmall"]
  GETUPVAL R4 1
  DUPTABLE R5 K25 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize"}]
  LOADK R6 K26 ["size-full-600"]
  SETTABLEKS R6 R5 K16 ["canvasTag"]
  LOADK R6 K27 ["radius-small"]
  SETTABLEKS R6 R5 K17 ["outerContainerTag"]
  GETTABLEKS R7 R0 K28 ["Radius"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K18 ["radius"]
  LOADK R6 K30 ["gap-small"]
  SETTABLEKS R6 R5 K19 ["innerContainerTag"]
  GETTABLEKS R7 R0 K31 ["Padding"]
  GETTABLEKS R6 R7 K15 ["XSmall"]
  SETTABLEKS R6 R5 K20 ["horizontalPadding"]
  GETTABLEKS R7 R0 K32 ["Gap"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K21 ["gap"]
  LOADK R6 K33 ["text-body-small"]
  SETTABLEKS R6 R5 K22 ["textBoxTag"]
  GETTABLEKS R7 R0 K34 ["Typography"]
  GETTABLEKS R6 R7 K35 ["BodySmall"]
  SETTABLEKS R6 R5 K23 ["typography"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["XSmall"]
  SETTABLEKS R6 R5 K24 ["iconSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K29 ["Small"]
  GETUPVAL R4 1
  DUPTABLE R5 K25 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize"}]
  LOADK R6 K36 ["size-full-800"]
  SETTABLEKS R6 R5 K16 ["canvasTag"]
  LOADK R6 K27 ["radius-small"]
  SETTABLEKS R6 R5 K17 ["outerContainerTag"]
  GETTABLEKS R7 R0 K28 ["Radius"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K18 ["radius"]
  LOADK R6 K37 ["gap-medium"]
  SETTABLEKS R6 R5 K19 ["innerContainerTag"]
  GETTABLEKS R7 R0 K31 ["Padding"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K20 ["horizontalPadding"]
  GETTABLEKS R7 R0 K32 ["Gap"]
  GETTABLEKS R6 R7 K38 ["Medium"]
  SETTABLEKS R6 R5 K21 ["gap"]
  LOADK R6 K39 ["text-body-medium"]
  SETTABLEKS R6 R5 K22 ["textBoxTag"]
  GETTABLEKS R7 R0 K34 ["Typography"]
  GETTABLEKS R6 R7 K40 ["BodyMedium"]
  SETTABLEKS R6 R5 K23 ["typography"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["XSmall"]
  SETTABLEKS R6 R5 K24 ["iconSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K38 ["Medium"]
  GETUPVAL R4 1
  DUPTABLE R5 K25 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize"}]
  LOADK R6 K41 ["size-full-1000"]
  SETTABLEKS R6 R5 K16 ["canvasTag"]
  LOADK R6 K27 ["radius-small"]
  SETTABLEKS R6 R5 K17 ["outerContainerTag"]
  GETTABLEKS R7 R0 K28 ["Radius"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K18 ["radius"]
  LOADK R6 K42 ["gap-large"]
  SETTABLEKS R6 R5 K19 ["innerContainerTag"]
  GETTABLEKS R7 R0 K31 ["Padding"]
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K20 ["horizontalPadding"]
  GETTABLEKS R7 R0 K32 ["Gap"]
  GETTABLEKS R6 R7 K43 ["Large"]
  SETTABLEKS R6 R5 K21 ["gap"]
  LOADK R6 K39 ["text-body-medium"]
  SETTABLEKS R6 R5 K22 ["textBoxTag"]
  GETTABLEKS R7 R0 K34 ["Typography"]
  GETTABLEKS R6 R7 K40 ["BodyMedium"]
  SETTABLEKS R6 R5 K23 ["typography"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K24 ["iconSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K43 ["Large"]
  GETUPVAL R4 1
  DUPTABLE R5 K25 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize"}]
  LOADK R6 K44 ["size-full-1200"]
  SETTABLEKS R6 R5 K16 ["canvasTag"]
  LOADK R6 K45 ["radius-medium"]
  SETTABLEKS R6 R5 K17 ["outerContainerTag"]
  GETTABLEKS R7 R0 K28 ["Radius"]
  GETTABLEKS R6 R7 K38 ["Medium"]
  SETTABLEKS R6 R5 K18 ["radius"]
  LOADK R6 K42 ["gap-large"]
  SETTABLEKS R6 R5 K19 ["innerContainerTag"]
  GETTABLEKS R7 R0 K31 ["Padding"]
  GETTABLEKS R6 R7 K38 ["Medium"]
  SETTABLEKS R6 R5 K20 ["horizontalPadding"]
  GETTABLEKS R7 R0 K32 ["Gap"]
  GETTABLEKS R6 R7 K43 ["Large"]
  SETTABLEKS R6 R5 K21 ["gap"]
  LOADK R6 K46 ["text-body-large"]
  SETTABLEKS R6 R5 K22 ["textBoxTag"]
  GETTABLEKS R7 R0 K34 ["Typography"]
  GETTABLEKS R6 R7 K47 ["BodyLarge"]
  SETTABLEKS R6 R5 K23 ["typography"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K29 ["Small"]
  SETTABLEKS R6 R5 K24 ["iconSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  DUPTABLE R3 K50 [{"common", "sizes"}]
  SETTABLEKS R1 R3 K48 ["common"]
  SETTABLEKS R2 R3 K49 ["sizes"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["TextInput"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R2 3 1
  GETUPVAL R3 2
  GETTABLEKS R4 R2 K2 ["common"]
  GETTABLEKS R6 R2 K3 ["sizes"]
  GETTABLE R5 R6 R1
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["InputSize"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K10 ["IconSize"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Utility"]
  GETTABLEKS R5 R6 K12 ["composeStyleVariant"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K13 ["Providers"]
  GETTABLEKS R7 R8 K14 ["Style"]
  GETTABLEKS R6 R7 K15 ["Tokens"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Providers"]
  GETTABLEKS R8 R9 K14 ["Style"]
  GETTABLEKS R7 R8 K16 ["VariantsContext"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R4
  RETURN R9 1
