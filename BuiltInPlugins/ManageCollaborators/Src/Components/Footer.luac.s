PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["IsTeamCreateEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["HasUnsavedChanges"]
       10 GETTABLEKS                       R6 R1 K5 ["HasCollaborators"]
       12 MOVE                             R7 R5
       13 JUMPIF                           R7 ; [+2]
       14 NOT                              R8 R4
       15 AND                              R7 R8 R6
       16 GETTABLEKS                       R8 R1 K6 ["OnSavePressed"]
       18 GETTABLEKS                       R9 R1 K7 ["OnCancelPressed"]
       20 GETUPVAL                         R11 0
       21 JUMPIFNOT                        R11 ; [+14]
       22 DUPTABLE                         R10 K12 [{["text"], ["onActivated"], ["variant"] = "Standard"}]
       23 LOADK                            R13 K13 ["Buttons"]
       24 LOADK                            R14 K14 ["Cancel"]
       25 NAMECALL                         R11 R3 K15 ["getText"]
       27 CALL                             R11 3 1
       28 SETTABLEKS                       R11 R10 K8 ["text"]
       30 NEWCLOSURE                       R11 P0
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       35 JUMP                             ; [+13]
       36 DUPTABLE                         R10 K19 [{["Name"], ["OnPressed"], ["Style"] = "Cancel"}]
       37 LOADK                            R13 K13 ["Buttons"]
       38 LOADK                            R14 K14 ["Cancel"]
       39 NAMECALL                         R11 R3 K15 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K16 ["Name"]
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R11 R10 K17 ["OnPressed"]
       49 GETUPVAL                         R12 0
       50 JUMPIFNOT                        R12 ; [+17]
       51 DUPTABLE                         R11 K22 [{["text"], ["isDisabled"], ["onActivated"], ["variant"] = "Emphasis"}]
       52 LOADK                            R14 K13 ["Buttons"]
       53 LOADK                            R15 K23 ["Save"]
       54 NAMECALL                         R12 R3 K15 ["getText"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K8 ["text"]
       59 NOT                              R12 R7
       60 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
       62 NEWCLOSURE                       R12 P2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       67 JUMP                             ; [+27]
       68 DUPTABLE                         R11 K27 [{["Name"], ["Default"] = True, ["OnPressed"], ["Style"], ["StyleModifier"]}]
       69 LOADK                            R14 K13 ["Buttons"]
       70 LOADK                            R15 K23 ["Save"]
       71 NAMECALL                         R12 R3 K15 ["getText"]
       73 CALL                             R12 3 1
       74 SETTABLEKS                       R12 R11 K16 ["Name"]
       76 NEWCLOSURE                       R12 P3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R12 R11 K17 ["OnPressed"]
       81 JUMPIFNOT                        R7 ; [+2]
       82 LOADK                            R12 K28 ["Active"]
       83 JUMP                             ; [+1]
       84 LOADK                            R12 K29 ["Passive"]
       85 SETTABLEKS                       R12 R11 K18 ["Style"]
       87 JUMPIF                           R7 ; [+4]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K30 ["Disabled"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R12
       93 SETTABLEKS                       R12 R11 K26 ["StyleModifier"]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K31 ["createElement"]
       98 LOADK                            R13 K32 ["Frame"]
       99 DUPTABLE                         R14 K40 [{["BackgroundColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 2, ["BorderColor3"]}]
      100 GETTABLEKS                       R15 R2 K41 ["backgroundColor"]
      102 SETTABLEKS                       R15 R14 K33 ["BackgroundColor3"]
      104 GETIMPORT                        R15 K44 [UDim2.fromScale]
      106 LOADN                            R16 1
      107 LOADN                            R17 1
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K36 ["Size"]
      111 GETTABLEKS                       R15 R2 K45 ["footer"]
      113 GETTABLEKS                       R15 R15 K46 ["border"]
      115 SETTABLEKS                       R15 R14 K39 ["BorderColor3"]
      117 DUPTABLE                         R15 K49 [{"Gradient", "ButtonBar"}]
      118 GETUPVAL                         R16 2
      119 GETTABLEKS                       R16 R16 K31 ["createElement"]
      121 LOADK                            R17 K50 ["ImageLabel"]
      122 DUPTABLE                         R18 K58 [{["Size"], ["AnchorPoint"], ["Image"], ["ImageRectSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["ImageColor3"], ["ImageTransparency"], ["ZIndex"] = 1}]
      123 GETIMPORT                        R19 K60 [UDim2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 GETTABLEKS                       R23 R2 K45 ["footer"]
      130 GETTABLEKS                       R23 R23 K61 ["gradientSize"]
      132 CALL                             R19 4 1
      133 SETTABLEKS                       R19 R18 K36 ["Size"]
      135 GETIMPORT                        R19 K63 [Vector2.new]
      137 LOADN                            R20 0
      138 LOADN                            R21 1
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K51 ["AnchorPoint"]
      142 GETUPVAL                         R19 3
      143 GETTABLEKS                       R19 R19 K64 ["GRADIENT_IMAGE"]
      145 SETTABLEKS                       R19 R18 K52 ["Image"]
      147 GETUPVAL                         R19 3
      148 GETTABLEKS                       R19 R19 K65 ["GRADIENT_RECT_SIZE"]
      150 SETTABLEKS                       R19 R18 K53 ["ImageRectSize"]
      152 GETTABLEKS                       R19 R2 K45 ["footer"]
      154 GETTABLEKS                       R19 R19 K66 ["gradient"]
      156 SETTABLEKS                       R19 R18 K56 ["ImageColor3"]
      158 GETTABLEKS                       R19 R2 K45 ["footer"]
      160 GETTABLEKS                       R19 R19 K67 ["gradientTransparency"]
      162 SETTABLEKS                       R19 R18 K57 ["ImageTransparency"]
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K47 ["Gradient"]
      167 GETUPVAL                         R16 2
      168 GETTABLEKS                       R16 R16 K31 ["createElement"]
      170 GETUPVAL                         R17 4
      171 DUPTABLE                         R18 K69 [{["ZIndex"] = 2, ["Buttons"], ["HorizontalAlignment"]}]
      172 NEWTABLE                         R19 0 2
      174 MOVE                             R20 R10
      175 MOVE                             R21 R11
      176 SETLIST                          R19 R20 2 [1]
      178 SETTABLEKS                       R19 R18 K13 ["Buttons"]
      180 GETIMPORT                        R19 K72 [Enum.HorizontalAlignment.Right]
      182 SETTABLEKS                       R19 R18 K68 ["HorizontalAlignment"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K48 ["ButtonBar"]
      187 CALL                             R12 3 -1
      188 RETURN                           R12 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K2 [{"HasUnsavedChanges", "HasCollaborators"}]
        4 SETTABLEKS                       R2 R3 K0 ["HasUnsavedChanges"]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["HasCollaborators"]
       11 RETURN                           R3 1

PROTO_6:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["Style"]
       38 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       40 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       42 GETTABLEKS                       R7 R6 K16 ["withContext"]
       44 GETTABLEKS                       R8 R6 K17 ["Localization"]
       46 GETTABLEKS                       R9 R4 K18 ["Util"]
       48 GETTABLEKS                       R10 R9 K19 ["StyleModifier"]
       50 GETIMPORT                        R11 K8 [require]
       52 GETTABLEKS                       R12 R1 K20 ["Src"]
       54 GETTABLEKS                       R12 R12 K21 ["Components"]
       56 GETTABLEKS                       R12 R12 K22 ["ButtonBar"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K8 [require]
       61 GETTABLEKS                       R13 R1 K20 ["Src"]
       63 GETTABLEKS                       R13 R13 K18 ["Util"]
       65 GETTABLEKS                       R13 R13 K23 ["Constants"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K8 [require]
       70 GETTABLEKS                       R14 R1 K20 ["Src"]
       72 GETTABLEKS                       R14 R14 K24 ["Selectors"]
       74 GETTABLEKS                       R14 R14 K25 ["GetHasCollaborators"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K8 [require]
       79 GETTABLEKS                       R15 R1 K20 ["Src"]
       81 GETTABLEKS                       R15 R15 K24 ["Selectors"]
       83 GETTABLEKS                       R15 R15 K26 ["GetHasUnsavedChanges"]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R15 R2 K27 ["PureComponent"]
       88 LOADK                            R17 K28 ["Footer"]
       89 NAMECALL                         R15 R15 K29 ["extend"]
       91 CALL                             R15 2 1
       92 DUPCLOSURE                       R16 K30 [PROTO_4]
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 SETTABLEKS                       R16 R15 K31 ["render"]
      100 MOVE                             R16 R7
      101 DUPTABLE                         R17 K32 [{"Stylizer", "Localization"}]
      102 SETTABLEKS                       R5 R17 K14 ["Stylizer"]
      104 SETTABLEKS                       R8 R17 K17 ["Localization"]
      106 CALL                             R16 1 1
      107 MOVE                             R17 R15
      108 CALL                             R16 1 1
      109 MOVE                             R15 R16
      110 GETTABLEKS                       R16 R3 K33 ["connect"]
      112 DUPCLOSURE                       R17 K34 [PROTO_5]
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 DUPCLOSURE                       R18 K35 [PROTO_6]
      116 CALL                             R16 2 1
      117 MOVE                             R17 R15
      118 CALL                             R16 1 1
      119 MOVE                             R15 R16
      120 RETURN                           R15 1
