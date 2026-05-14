PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetMaterial"]
        5 GETTABLEKS                       R2 R0 K2 ["MaterialItem"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hover"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hover"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hover"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hover"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["MaterialItem"]
        5 GETTABLEKS                       R2 R0 K2 ["GeneralServiceController"]
        7 GETTABLEKS                       R4 R1 K3 ["Material"]
        9 GETTABLEKS                       R6 R1 K4 ["MaterialVariant"]
       11 JUMPIFNOT                        R6 ; [+5]
       12 GETTABLEKS                       R5 R1 K4 ["MaterialVariant"]
       14 GETTABLEKS                       R5 R5 K5 ["Name"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R5
       18 NAMECALL                         R2 R2 K6 ["ApplyToSelection"]
       20 CALL                             R2 3 0
       21 GETTABLEKS                       R2 R0 K7 ["Analytics"]
       23 LOADK                            R4 K8 ["applyToSelectionAction"]
       24 NAMECALL                         R2 R2 K9 ["report"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onMouseEnter"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["onMouseLeave"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["applyToSelection"]
       16 DUPTABLE                         R1 K5 [{"hover"}]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K4 ["hover"]
       20 SETTABLEKS                       R1 R0 K6 ["state"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["MaterialItem"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R5 R3 K3 ["MaterialVariant"]
       12 JUMPIF                           R5 ; [+9]
       13 LOADK                            R8 K4 ["Materials"]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R10 R3 K5 ["Material"]
       17 CALL                             R9 1 -1
       18 NAMECALL                         R6 R2 K6 ["getText"]
       20 CALL                             R6 -1 1
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R6 R5 K7 ["Name"]
       24 GETTABLEKS                       R7 R1 K8 ["ViewType"]
       26 JUMPIFNOTEQKS                    R7 K9 ["List"] ; [+56]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K10 ["createElement"]
       31 GETUPVAL                         R9 3
       32 DUPTABLE                         R10 K22 [{"ApplyToSelection", "Hover", "LayoutOrder", "Material", "MaterialDescription", "MaterialName", "MenuHover", "OnClick", "OnMouseEnter", "OnMouseLeave", "Selected", "Status"}]
       33 GETTABLEKS                       R11 R0 K23 ["applyToSelection"]
       35 SETTABLEKS                       R11 R10 K11 ["ApplyToSelection"]
       37 GETTABLEKS                       R11 R0 K24 ["state"]
       39 GETTABLEKS                       R11 R11 K25 ["hover"]
       41 SETTABLEKS                       R11 R10 K12 ["Hover"]
       43 GETTABLEKS                       R11 R1 K13 ["LayoutOrder"]
       45 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       47 SETTABLEKS                       R3 R10 K5 ["Material"]
       49 SETTABLEKS                       R4 R10 K14 ["MaterialDescription"]
       51 SETTABLEKS                       R6 R10 K15 ["MaterialName"]
       53 GETTABLEKS                       R11 R1 K16 ["MenuHover"]
       55 SETTABLEKS                       R11 R10 K16 ["MenuHover"]
       57 GETTABLEKS                       R11 R0 K26 ["onClick"]
       59 SETTABLEKS                       R11 R10 K17 ["OnClick"]
       61 GETTABLEKS                       R11 R0 K27 ["onMouseEnter"]
       63 SETTABLEKS                       R11 R10 K18 ["OnMouseEnter"]
       65 GETTABLEKS                       R11 R0 K28 ["onMouseLeave"]
       67 SETTABLEKS                       R11 R10 K19 ["OnMouseLeave"]
       69 GETTABLEKS                       R12 R1 K5 ["Material"]
       71 JUMPIFEQ                         R12 R3 ; [+2]
       73 LOADB                            R11 0 +1
       74 LOADB                            R11 1
       75 SETTABLEKS                       R11 R10 K20 ["Selected"]
       77 GETTABLEKS                       R11 R1 K29 ["MaterialStatus"]
       79 SETTABLEKS                       R11 R10 K21 ["Status"]
       81 CALL                             R8 2 -1
       82 RETURN                           R8 -1
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R8 R8 K10 ["createElement"]
       86 GETUPVAL                         R9 4
       87 DUPTABLE                         R10 K31 [{"ApplyToSelection", "Hover", "LayoutOrder", "Material", "MaterialDescription", "MaterialName", "MaterialTileSize", "MenuHover", "OnClick", "OnMouseEnter", "OnMouseLeave", "Selected", "Status"}]
       88 GETTABLEKS                       R11 R0 K23 ["applyToSelection"]
       90 SETTABLEKS                       R11 R10 K11 ["ApplyToSelection"]
       92 GETTABLEKS                       R11 R0 K24 ["state"]
       94 GETTABLEKS                       R11 R11 K25 ["hover"]
       96 SETTABLEKS                       R11 R10 K12 ["Hover"]
       98 GETTABLEKS                       R11 R1 K13 ["LayoutOrder"]
      100 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      102 SETTABLEKS                       R3 R10 K5 ["Material"]
      104 SETTABLEKS                       R4 R10 K14 ["MaterialDescription"]
      106 SETTABLEKS                       R6 R10 K15 ["MaterialName"]
      108 GETTABLEKS                       R11 R1 K30 ["MaterialTileSize"]
      110 SETTABLEKS                       R11 R10 K30 ["MaterialTileSize"]
      112 GETTABLEKS                       R11 R1 K16 ["MenuHover"]
      114 SETTABLEKS                       R11 R10 K16 ["MenuHover"]
      116 GETTABLEKS                       R11 R0 K26 ["onClick"]
      118 SETTABLEKS                       R11 R10 K17 ["OnClick"]
      120 GETTABLEKS                       R11 R0 K27 ["onMouseEnter"]
      122 SETTABLEKS                       R11 R10 K18 ["OnMouseEnter"]
      124 GETTABLEKS                       R11 R0 K28 ["onMouseLeave"]
      126 SETTABLEKS                       R11 R10 K19 ["OnMouseLeave"]
      128 GETTABLEKS                       R12 R1 K5 ["Material"]
      130 JUMPIFEQ                         R12 R3 ; [+2]
      132 LOADB                            R11 0 +1
      133 LOADB                            R11 1
      134 SETTABLEKS                       R11 R10 K20 ["Selected"]
      136 GETTABLEKS                       R11 R1 K29 ["MaterialStatus"]
      138 SETTABLEKS                       R11 R10 K21 ["Status"]
      140 CALL                             R8 2 -1
      141 RETURN                           R8 -1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"Material", "MaterialStatus", "MaterialTileSize", "MenuHover", "ViewType"}]
        1 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Material"]
        5 SETTABLEKS                       R3 R2 K0 ["Material"]
        7 GETTABLEKS                       R4 R1 K7 ["MaterialItem"]
        9 GETTABLEKS                       R4 R4 K8 ["MaterialVariant"]
       11 JUMPIF                           R4 ; [+10]
       12 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       14 GETTABLEKS                       R4 R4 K1 ["MaterialStatus"]
       16 GETTABLEKS                       R5 R1 K7 ["MaterialItem"]
       18 GETTABLEKS                       R5 R5 K0 ["Material"]
       20 GETTABLE                         R3 R4 R5
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K1 ["MaterialStatus"]
       25 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       27 GETTABLEKS                       R3 R3 K2 ["MaterialTileSize"]
       29 SETTABLEKS                       R3 R2 K2 ["MaterialTileSize"]
       31 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       33 GETTABLEKS                       R3 R3 K3 ["MenuHover"]
       35 SETTABLEKS                       R3 R2 K3 ["MenuHover"]
       37 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       39 GETTABLEKS                       R3 R3 K4 ["ViewType"]
       41 SETTABLEKS                       R3 R2 K4 ["ViewType"]
       43 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMaterial"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMaterial"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["withContext"]
       45 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       47 GETTABLEKS                       R8 R5 K14 ["Localization"]
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K5 ["Src"]
       53 GETTABLEKS                       R10 R10 K15 ["Controllers"]
       55 GETTABLEKS                       R10 R10 K16 ["GeneralServiceController"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R0 K5 ["Src"]
       62 GETTABLEKS                       R11 R11 K17 ["Reducers"]
       64 GETTABLEKS                       R11 R11 K18 ["MainReducer"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R12 R0 K5 ["Src"]
       71 GETTABLEKS                       R12 R12 K19 ["Actions"]
       73 GETTABLEKS                       R12 R12 K20 ["SetMaterial"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R0 K5 ["Src"]
       78 GETTABLEKS                       R12 R12 K21 ["Resources"]
       80 GETTABLEKS                       R12 R12 K22 ["Constants"]
       82 GETIMPORT                        R13 K4 [require]
       84 GETTABLEKS                       R14 R12 K23 ["getFullMaterialType"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K4 [require]
       89 GETTABLEKS                       R15 R12 K24 ["getMaterialName"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R0 K5 ["Src"]
       94 GETTABLEKS                       R15 R15 K25 ["Components"]
       96 GETTABLEKS                       R15 R15 K26 ["MaterialBrowser"]
       98 GETTABLEKS                       R15 R15 K27 ["MaterialGrid"]
      100 GETIMPORT                        R16 K4 [require]
      102 GETTABLEKS                       R17 R15 K28 ["MaterialListItem"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K4 [require]
      107 GETTABLEKS                       R18 R15 K29 ["MaterialTileItem"]
      109 CALL                             R17 1 1
      110 GETTABLEKS                       R18 R2 K30 ["PureComponent"]
      112 LOADK                            R20 K31 ["MaterialItem"]
      113 NAMECALL                         R18 R18 K32 ["extend"]
      115 CALL                             R18 2 1
      116 DUPCLOSURE                       R19 K33 [PROTO_4]
      117 SETTABLEKS                       R19 R18 K34 ["init"]
      119 DUPCLOSURE                       R19 K35 [PROTO_5]
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 SETTABLEKS                       R19 R18 K36 ["render"]
      127 MOVE                             R19 R6
      128 DUPTABLE                         R20 K37 [{"Analytics", "GeneralServiceController", "Localization"}]
      129 SETTABLEKS                       R7 R20 K13 ["Analytics"]
      131 SETTABLEKS                       R9 R20 K16 ["GeneralServiceController"]
      133 SETTABLEKS                       R8 R20 K14 ["Localization"]
      135 CALL                             R19 1 1
      136 MOVE                             R20 R18
      137 CALL                             R19 1 1
      138 MOVE                             R18 R19
      139 GETTABLEKS                       R19 R3 K38 ["connect"]
      141 DUPCLOSURE                       R20 K39 [PROTO_6]
      142 DUPCLOSURE                       R21 K40 [PROTO_8]
      143 CAPTURE                          VAL R11
      144 CALL                             R19 2 1
      145 MOVE                             R20 R18
      146 CALL                             R19 1 -1
      147 RETURN                           R19 -1
