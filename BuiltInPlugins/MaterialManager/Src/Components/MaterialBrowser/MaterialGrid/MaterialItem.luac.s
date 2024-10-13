PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["dispatchSetMaterial"]
  GETTABLEKS R2 R0 K2 ["MaterialItem"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hover"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["hover"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hover"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hover"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["MaterialItem"]
  GETTABLEKS R2 R0 K2 ["GeneralServiceController"]
  GETTABLEKS R4 R1 K3 ["Material"]
  GETTABLEKS R6 R1 K4 ["MaterialVariant"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R1 K4 ["MaterialVariant"]
  GETTABLEKS R5 R6 K5 ["Name"]
  JUMP [+1]
  LOADNIL R5
  NAMECALL R2 R2 K6 ["ApplyToSelection"]
  CALL R2 3 0
  GETTABLEKS R2 R0 K7 ["Analytics"]
  LOADK R4 K8 ["applyToSelectionAction"]
  NAMECALL R2 R2 K9 ["report"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClick"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onMouseEnter"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onMouseLeave"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["applyToSelection"]
  DUPTABLE R1 K5 [{"hover"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["hover"]
  SETTABLEKS R1 R0 K6 ["state"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["MaterialItem"]
  GETUPVAL R4 0
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 1
  GETTABLEKS R5 R3 K3 ["MaterialVariant"]
  JUMPIF R5 [+9]
  LOADK R8 K4 ["Materials"]
  GETUPVAL R9 1
  GETTABLEKS R10 R3 K5 ["Material"]
  CALL R9 1 -1
  NAMECALL R6 R2 K6 ["getText"]
  CALL R6 -1 1
  JUMP [+2]
  GETTABLEKS R6 R5 K7 ["Name"]
  GETTABLEKS R7 R1 K8 ["ViewType"]
  JUMPIFNOTEQKS R7 K9 ["List"] [+56]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K22 [{"ApplyToSelection", "Hover", "LayoutOrder", "Material", "MaterialDescription", "MaterialName", "MenuHover", "OnClick", "OnMouseEnter", "OnMouseLeave", "Selected", "Status"}]
  GETTABLEKS R11 R0 K23 ["applyToSelection"]
  SETTABLEKS R11 R10 K11 ["ApplyToSelection"]
  GETTABLEKS R12 R0 K24 ["state"]
  GETTABLEKS R11 R12 K25 ["hover"]
  SETTABLEKS R11 R10 K12 ["Hover"]
  GETTABLEKS R11 R1 K13 ["LayoutOrder"]
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  SETTABLEKS R3 R10 K5 ["Material"]
  SETTABLEKS R4 R10 K14 ["MaterialDescription"]
  SETTABLEKS R6 R10 K15 ["MaterialName"]
  GETTABLEKS R11 R1 K16 ["MenuHover"]
  SETTABLEKS R11 R10 K16 ["MenuHover"]
  GETTABLEKS R11 R0 K26 ["onClick"]
  SETTABLEKS R11 R10 K17 ["OnClick"]
  GETTABLEKS R11 R0 K27 ["onMouseEnter"]
  SETTABLEKS R11 R10 K18 ["OnMouseEnter"]
  GETTABLEKS R11 R0 K28 ["onMouseLeave"]
  SETTABLEKS R11 R10 K19 ["OnMouseLeave"]
  GETTABLEKS R12 R1 K5 ["Material"]
  JUMPIFEQ R12 R3 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["Selected"]
  GETTABLEKS R11 R1 K29 ["MaterialStatus"]
  SETTABLEKS R11 R10 K21 ["Status"]
  CALL R8 2 -1
  RETURN R8 -1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K31 [{"ApplyToSelection", "Hover", "LayoutOrder", "Material", "MaterialDescription", "MaterialName", "MaterialTileSize", "MenuHover", "OnClick", "OnMouseEnter", "OnMouseLeave", "Selected", "Status"}]
  GETTABLEKS R11 R0 K23 ["applyToSelection"]
  SETTABLEKS R11 R10 K11 ["ApplyToSelection"]
  GETTABLEKS R12 R0 K24 ["state"]
  GETTABLEKS R11 R12 K25 ["hover"]
  SETTABLEKS R11 R10 K12 ["Hover"]
  GETTABLEKS R11 R1 K13 ["LayoutOrder"]
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  SETTABLEKS R3 R10 K5 ["Material"]
  SETTABLEKS R4 R10 K14 ["MaterialDescription"]
  SETTABLEKS R6 R10 K15 ["MaterialName"]
  GETTABLEKS R11 R1 K30 ["MaterialTileSize"]
  SETTABLEKS R11 R10 K30 ["MaterialTileSize"]
  GETTABLEKS R11 R1 K16 ["MenuHover"]
  SETTABLEKS R11 R10 K16 ["MenuHover"]
  GETTABLEKS R11 R0 K26 ["onClick"]
  SETTABLEKS R11 R10 K17 ["OnClick"]
  GETTABLEKS R11 R0 K27 ["onMouseEnter"]
  SETTABLEKS R11 R10 K18 ["OnMouseEnter"]
  GETTABLEKS R11 R0 K28 ["onMouseLeave"]
  SETTABLEKS R11 R10 K19 ["OnMouseLeave"]
  GETTABLEKS R12 R1 K5 ["Material"]
  JUMPIFEQ R12 R3 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["Selected"]
  GETTABLEKS R11 R1 K29 ["MaterialStatus"]
  SETTABLEKS R11 R10 K21 ["Status"]
  CALL R8 2 -1
  RETURN R8 -1

PROTO_6:
  DUPTABLE R2 K5 [{"Material", "MaterialStatus", "MaterialTileSize", "MenuHover", "ViewType"}]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K0 ["Material"]
  SETTABLEKS R3 R2 K0 ["Material"]
  GETTABLEKS R5 R1 K7 ["MaterialItem"]
  GETTABLEKS R4 R5 K8 ["MaterialVariant"]
  JUMPIF R4 [+10]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K1 ["MaterialStatus"]
  GETTABLEKS R6 R1 K7 ["MaterialItem"]
  GETTABLEKS R5 R6 K0 ["Material"]
  GETTABLE R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["MaterialStatus"]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K2 ["MaterialTileSize"]
  SETTABLEKS R3 R2 K2 ["MaterialTileSize"]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K3 ["MenuHover"]
  SETTABLEKS R3 R2 K3 ["MenuHover"]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K4 ["ViewType"]
  SETTABLEKS R3 R2 K4 ["ViewType"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"dispatchSetMaterial"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetMaterial"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K5 ["Src"]
  GETTABLEKS R11 R12 K15 ["Controllers"]
  GETTABLEKS R10 R11 K16 ["GeneralServiceController"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K5 ["Src"]
  GETTABLEKS R12 R13 K17 ["Reducers"]
  GETTABLEKS R11 R12 K18 ["MainReducer"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Src"]
  GETTABLEKS R13 R14 K19 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SetMaterial"]
  CALL R11 1 1
  GETTABLEKS R14 R0 K5 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["Constants"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K23 ["getFullMaterialType"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K24 ["getMaterialName"]
  CALL R14 1 1
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K25 ["Components"]
  GETTABLEKS R16 R17 K26 ["MaterialBrowser"]
  GETTABLEKS R15 R16 K27 ["MaterialGrid"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R15 K28 ["MaterialListItem"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R15 K29 ["MaterialTileItem"]
  CALL R17 1 1
  GETTABLEKS R18 R2 K30 ["PureComponent"]
  LOADK R20 K31 ["MaterialItem"]
  NAMECALL R18 R18 K32 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K33 [PROTO_4]
  SETTABLEKS R19 R18 K34 ["init"]
  DUPCLOSURE R19 K35 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R19 R18 K36 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K37 [{"Analytics", "GeneralServiceController", "Localization"}]
  SETTABLEKS R7 R20 K13 ["Analytics"]
  SETTABLEKS R9 R20 K16 ["GeneralServiceController"]
  SETTABLEKS R8 R20 K14 ["Localization"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  GETTABLEKS R19 R3 K38 ["connect"]
  DUPCLOSURE R20 K39 [PROTO_6]
  DUPCLOSURE R21 K40 [PROTO_8]
  CAPTURE VAL R11
  CALL R19 2 1
  MOVE R20 R18
  CALL R19 1 -1
  RETURN R19 -1
