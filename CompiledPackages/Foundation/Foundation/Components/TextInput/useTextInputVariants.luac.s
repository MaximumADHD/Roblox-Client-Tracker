PROTO_0:
  DUPTABLE R1 K5 [{"canvas", "outerContainer", "innerContainer", "textBox", "icon"}]
  DUPTABLE R2 K7 [{"tag"}]
  GETTABLEKS R3 R0 K8 ["canvasTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K0 ["canvas"]
  DUPTABLE R2 K10 [{"tag", "minHeight"}]
  GETTABLEKS R3 R0 K11 ["outerContainerTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETTABLEKS R3 R0 K12 ["minContainerHeight"]
  SETTABLEKS R3 R2 K9 ["minHeight"]
  SETTABLEKS R2 R1 K1 ["outerContainer"]
  DUPTABLE R2 K16 [{"tag", "horizontalPadding", "gap", "radius"}]
  GETTABLEKS R3 R0 K17 ["innerContainerTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETIMPORT R3 K20 [UDim.new]
  LOADN R4 0
  GETTABLEKS R5 R0 K13 ["horizontalPadding"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K13 ["horizontalPadding"]
  GETTABLEKS R3 R0 K14 ["gap"]
  SETTABLEKS R3 R2 K14 ["gap"]
  GETTABLEKS R3 R0 K15 ["radius"]
  SETTABLEKS R3 R2 K15 ["radius"]
  SETTABLEKS R2 R1 K2 ["innerContainer"]
  DUPTABLE R2 K24 [{"tag", "Font", "FontSize", "LineHeight"}]
  GETTABLEKS R3 R0 K25 ["textBoxTag"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETTABLEKS R4 R0 K26 ["typography"]
  GETTABLEKS R3 R4 K21 ["Font"]
  SETTABLEKS R3 R2 K21 ["Font"]
  GETTABLEKS R4 R0 K26 ["typography"]
  GETTABLEKS R3 R4 K22 ["FontSize"]
  SETTABLEKS R3 R2 K22 ["FontSize"]
  GETTABLEKS R4 R0 K26 ["typography"]
  GETTABLEKS R3 R4 K23 ["LineHeight"]
  SETTABLEKS R3 R2 K23 ["LineHeight"]
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
  DUPTABLE R2 K16 [{"canvas", "outerContainer"}]
  DUPTABLE R3 K6 [{"tag"}]
  LOADK R4 K17 ["auto-y size-full-0"]
  SETTABLEKS R4 R3 K5 ["tag"]
  SETTABLEKS R3 R2 K15 ["canvas"]
  DUPTABLE R3 K6 [{"tag"}]
  LOADK R4 K17 ["auto-y size-full-0"]
  SETTABLEKS R4 R3 K5 ["tag"]
  SETTABLEKS R3 R2 K0 ["outerContainer"]
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["XSmall"]
  GETUPVAL R5 1
  DUPTABLE R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
  LOADK R7 K30 ["size-full-600"]
  SETTABLEKS R7 R6 K19 ["canvasTag"]
  LOADK R7 K31 ["radius-small"]
  SETTABLEKS R7 R6 K20 ["outerContainerTag"]
  GETTABLEKS R8 R0 K32 ["Radius"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K21 ["radius"]
  LOADK R7 K34 ["gap-small"]
  SETTABLEKS R7 R6 K22 ["innerContainerTag"]
  GETTABLEKS R8 R0 K35 ["Padding"]
  GETTABLEKS R7 R8 K18 ["XSmall"]
  SETTABLEKS R7 R6 K23 ["horizontalPadding"]
  GETTABLEKS R8 R0 K36 ["Gap"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K24 ["gap"]
  LOADK R7 K37 ["text-body-small"]
  SETTABLEKS R7 R6 K25 ["textBoxTag"]
  GETTABLEKS R8 R0 K38 ["Typography"]
  GETTABLEKS R7 R8 K39 ["BodySmall"]
  SETTABLEKS R7 R6 K26 ["typography"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["XSmall"]
  SETTABLEKS R7 R6 K27 ["iconSize"]
  GETTABLEKS R8 R0 K40 ["Size"]
  GETTABLEKS R7 R8 K41 ["Size_600"]
  SETTABLEKS R7 R6 K28 ["minContainerHeight"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K33 ["Small"]
  GETUPVAL R5 1
  DUPTABLE R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
  LOADK R7 K42 ["size-full-800"]
  SETTABLEKS R7 R6 K19 ["canvasTag"]
  LOADK R7 K43 ["radius-medium"]
  SETTABLEKS R7 R6 K20 ["outerContainerTag"]
  GETTABLEKS R8 R0 K32 ["Radius"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K21 ["radius"]
  LOADK R7 K44 ["gap-medium"]
  SETTABLEKS R7 R6 K22 ["innerContainerTag"]
  GETTABLEKS R8 R0 K35 ["Padding"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K23 ["horizontalPadding"]
  GETTABLEKS R8 R0 K36 ["Gap"]
  GETTABLEKS R7 R8 K45 ["Medium"]
  SETTABLEKS R7 R6 K24 ["gap"]
  LOADK R7 K46 ["text-body-medium"]
  SETTABLEKS R7 R6 K25 ["textBoxTag"]
  GETTABLEKS R8 R0 K38 ["Typography"]
  GETTABLEKS R7 R8 K47 ["BodyMedium"]
  SETTABLEKS R7 R6 K26 ["typography"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["XSmall"]
  SETTABLEKS R7 R6 K27 ["iconSize"]
  GETTABLEKS R8 R0 K40 ["Size"]
  GETTABLEKS R7 R8 K48 ["Size_800"]
  SETTABLEKS R7 R6 K28 ["minContainerHeight"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K45 ["Medium"]
  GETUPVAL R5 1
  DUPTABLE R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
  LOADK R7 K49 ["size-full-1000"]
  SETTABLEKS R7 R6 K19 ["canvasTag"]
  LOADK R7 K43 ["radius-medium"]
  SETTABLEKS R7 R6 K20 ["outerContainerTag"]
  GETTABLEKS R8 R0 K32 ["Radius"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K21 ["radius"]
  LOADK R7 K50 ["gap-large"]
  SETTABLEKS R7 R6 K22 ["innerContainerTag"]
  GETTABLEKS R8 R0 K35 ["Padding"]
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K23 ["horizontalPadding"]
  GETTABLEKS R8 R0 K36 ["Gap"]
  GETTABLEKS R7 R8 K51 ["Large"]
  SETTABLEKS R7 R6 K24 ["gap"]
  LOADK R7 K46 ["text-body-medium"]
  SETTABLEKS R7 R6 K25 ["textBoxTag"]
  GETTABLEKS R8 R0 K38 ["Typography"]
  GETTABLEKS R7 R8 K47 ["BodyMedium"]
  SETTABLEKS R7 R6 K26 ["typography"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K27 ["iconSize"]
  GETTABLEKS R8 R0 K40 ["Size"]
  GETTABLEKS R7 R8 K52 ["Size_1000"]
  SETTABLEKS R7 R6 K28 ["minContainerHeight"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K51 ["Large"]
  GETUPVAL R5 1
  DUPTABLE R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
  LOADK R7 K53 ["size-full-1200"]
  SETTABLEKS R7 R6 K19 ["canvasTag"]
  LOADK R7 K43 ["radius-medium"]
  SETTABLEKS R7 R6 K20 ["outerContainerTag"]
  GETTABLEKS R8 R0 K32 ["Radius"]
  GETTABLEKS R7 R8 K45 ["Medium"]
  SETTABLEKS R7 R6 K21 ["radius"]
  LOADK R7 K50 ["gap-large"]
  SETTABLEKS R7 R6 K22 ["innerContainerTag"]
  GETTABLEKS R8 R0 K35 ["Padding"]
  GETTABLEKS R7 R8 K45 ["Medium"]
  SETTABLEKS R7 R6 K23 ["horizontalPadding"]
  GETTABLEKS R8 R0 K36 ["Gap"]
  GETTABLEKS R7 R8 K51 ["Large"]
  SETTABLEKS R7 R6 K24 ["gap"]
  LOADK R7 K54 ["text-body-large"]
  SETTABLEKS R7 R6 K25 ["textBoxTag"]
  GETTABLEKS R8 R0 K38 ["Typography"]
  GETTABLEKS R7 R8 K55 ["BodyLarge"]
  SETTABLEKS R7 R6 K26 ["typography"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K33 ["Small"]
  SETTABLEKS R7 R6 K27 ["iconSize"]
  GETTABLEKS R8 R0 K40 ["Size"]
  GETTABLEKS R7 R8 K56 ["Size_1200"]
  SETTABLEKS R7 R6 K28 ["minContainerHeight"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  DUPTABLE R4 K60 [{"common", "sizes", "multiline"}]
  SETTABLEKS R1 R4 K57 ["common"]
  SETTABLEKS R3 R4 K58 ["sizes"]
  SETTABLEKS R2 R4 K59 ["multiline"]
  RETURN R4 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["TextInput"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["FoundationInternalTextInputAutoSize"]
  JUMPIF R4 [+1]
  JUMPIFNOT R2 [+10]
  GETUPVAL R4 3
  GETTABLEKS R5 R3 K3 ["common"]
  GETTABLEKS R7 R3 K4 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R7 R3 K5 ["multiline"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R4 3
  GETTABLEKS R5 R3 K3 ["common"]
  GETTABLEKS R7 R3 K4 ["sizes"]
  GETTABLE R6 R7 R1
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R8 R0 K11 ["Utility"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Providers"]
  GETTABLEKS R9 R10 K14 ["Style"]
  GETTABLEKS R8 R9 K17 ["VariantsContext"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_0]
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  DUPCLOSURE R10 K20 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R10 1
