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
       21 JUMPIFNOT                        R11 ; [+17]
       22 DUPTABLE                         R10 K11 [{"text", "onActivated", "variant"}]
       23 LOADK                            R13 K12 ["Buttons"]
       24 LOADK                            R14 K13 ["Cancel"]
       25 NAMECALL                         R11 R3 K14 ["getText"]
       27 CALL                             R11 3 1
       28 SETTABLEKS                       R11 R10 K8 ["text"]
       30 NEWCLOSURE                       R11 P0
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       35 LOADK                            R11 K15 ["Standard"]
       36 SETTABLEKS                       R11 R10 K10 ["variant"]
       38 JUMP                             ; [+16]
       39 DUPTABLE                         R10 K19 [{"Name", "OnPressed", "Style"}]
       40 LOADK                            R13 K12 ["Buttons"]
       41 LOADK                            R14 K13 ["Cancel"]
       42 NAMECALL                         R11 R3 K14 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R10 K16 ["Name"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R11 R10 K17 ["OnPressed"]
       52 LOADK                            R11 K13 ["Cancel"]
       53 SETTABLEKS                       R11 R10 K18 ["Style"]
       55 GETUPVAL                         R12 0
       56 JUMPIFNOT                        R12 ; [+20]
       57 DUPTABLE                         R11 K21 [{"text", "isDisabled", "onActivated", "variant"}]
       58 LOADK                            R14 K12 ["Buttons"]
       59 LOADK                            R15 K22 ["Save"]
       60 NAMECALL                         R12 R3 K14 ["getText"]
       62 CALL                             R12 3 1
       63 SETTABLEKS                       R12 R11 K8 ["text"]
       65 NOT                              R12 R7
       66 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
       68 NEWCLOSURE                       R12 P2
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       73 LOADK                            R12 K23 ["Emphasis"]
       74 SETTABLEKS                       R12 R11 K10 ["variant"]
       76 JUMP                             ; [+30]
       77 DUPTABLE                         R11 K26 [{"Name", "Default", "OnPressed", "Style", "StyleModifier"}]
       78 LOADK                            R14 K12 ["Buttons"]
       79 LOADK                            R15 K22 ["Save"]
       80 NAMECALL                         R12 R3 K14 ["getText"]
       82 CALL                             R12 3 1
       83 SETTABLEKS                       R12 R11 K16 ["Name"]
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K24 ["Default"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R12 R11 K17 ["OnPressed"]
       93 JUMPIFNOT                        R7 ; [+2]
       94 LOADK                            R12 K27 ["Active"]
       95 JUMP                             ; [+1]
       96 LOADK                            R12 K28 ["Passive"]
       97 SETTABLEKS                       R12 R11 K18 ["Style"]
       99 JUMPIF                           R7 ; [+4]
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R12 R13 K29 ["Disabled"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R12
      105 SETTABLEKS                       R12 R11 K25 ["StyleModifier"]
      107 GETUPVAL                         R13 2
      108 GETTABLEKS                       R12 R13 K30 ["createElement"]
      110 LOADK                            R13 K31 ["Frame"]
      111 DUPTABLE                         R14 K37 [{"BackgroundColor3", "BorderSizePixel", "Size", "ZIndex", "BorderColor3"}]
      112 GETTABLEKS                       R15 R2 K38 ["backgroundColor"]
      114 SETTABLEKS                       R15 R14 K32 ["BackgroundColor3"]
      116 LOADN                            R15 1
      117 SETTABLEKS                       R15 R14 K33 ["BorderSizePixel"]
      119 GETIMPORT                        R15 K41 [UDim2.fromScale]
      121 LOADN                            R16 1
      122 LOADN                            R17 1
      123 CALL                             R15 2 1
      124 SETTABLEKS                       R15 R14 K34 ["Size"]
      126 LOADN                            R15 2
      127 SETTABLEKS                       R15 R14 K35 ["ZIndex"]
      129 GETTABLEKS                       R16 R2 K42 ["footer"]
      131 GETTABLEKS                       R15 R16 K43 ["border"]
      133 SETTABLEKS                       R15 R14 K36 ["BorderColor3"]
      135 DUPTABLE                         R15 K46 [{"Gradient", "ButtonBar"}]
      136 GETUPVAL                         R17 2
      137 GETTABLEKS                       R16 R17 K30 ["createElement"]
      139 LOADK                            R17 K47 ["ImageLabel"]
      140 DUPTABLE                         R18 K54 [{"Size", "AnchorPoint", "Image", "ImageRectSize", "BorderSizePixel", "BackgroundTransparency", "ImageColor3", "ImageTransparency", "ZIndex"}]
      141 GETIMPORT                        R19 K56 [UDim2.new]
      143 LOADN                            R20 1
      144 LOADN                            R21 0
      145 LOADN                            R22 0
      146 GETTABLEKS                       R24 R2 K42 ["footer"]
      148 GETTABLEKS                       R23 R24 K57 ["gradientSize"]
      150 CALL                             R19 4 1
      151 SETTABLEKS                       R19 R18 K34 ["Size"]
      153 GETIMPORT                        R19 K59 [Vector2.new]
      155 LOADN                            R20 0
      156 LOADN                            R21 1
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K48 ["AnchorPoint"]
      160 GETUPVAL                         R20 3
      161 GETTABLEKS                       R19 R20 K60 ["GRADIENT_IMAGE"]
      163 SETTABLEKS                       R19 R18 K49 ["Image"]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R19 R20 K61 ["GRADIENT_RECT_SIZE"]
      168 SETTABLEKS                       R19 R18 K50 ["ImageRectSize"]
      170 LOADN                            R19 0
      171 SETTABLEKS                       R19 R18 K33 ["BorderSizePixel"]
      173 LOADN                            R19 1
      174 SETTABLEKS                       R19 R18 K51 ["BackgroundTransparency"]
      176 GETTABLEKS                       R20 R2 K42 ["footer"]
      178 GETTABLEKS                       R19 R20 K62 ["gradient"]
      180 SETTABLEKS                       R19 R18 K52 ["ImageColor3"]
      182 GETTABLEKS                       R20 R2 K42 ["footer"]
      184 GETTABLEKS                       R19 R20 K63 ["gradientTransparency"]
      186 SETTABLEKS                       R19 R18 K53 ["ImageTransparency"]
      188 LOADN                            R19 1
      189 SETTABLEKS                       R19 R18 K35 ["ZIndex"]
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R15 K44 ["Gradient"]
      194 GETUPVAL                         R17 2
      195 GETTABLEKS                       R16 R17 K30 ["createElement"]
      197 GETUPVAL                         R17 4
      198 DUPTABLE                         R18 K65 [{"ZIndex", "Buttons", "HorizontalAlignment"}]
      199 LOADN                            R19 2
      200 SETTABLEKS                       R19 R18 K35 ["ZIndex"]
      202 NEWTABLE                         R19 0 2
      204 MOVE                             R20 R10
      205 MOVE                             R21 R11
      206 SETLIST                          R19 R20 2 [1]
      208 SETTABLEKS                       R19 R18 K12 ["Buttons"]
      210 GETIMPORT                        R19 K68 [Enum.HorizontalAlignment.Right]
      212 SETTABLEKS                       R19 R18 K64 ["HorizontalAlignment"]
      214 CALL                             R16 2 1
      215 SETTABLEKS                       R16 R15 K45 ["ButtonBar"]
      217 CALL                             R12 3 -1
      218 RETURN                           R12 -1

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
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R6 R4 K13 ["Style"]
       38 GETTABLEKS                       R5 R6 K14 ["Stylizer"]
       40 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       42 GETTABLEKS                       R7 R6 K16 ["withContext"]
       44 GETTABLEKS                       R8 R6 K17 ["Localization"]
       46 GETTABLEKS                       R9 R4 K18 ["Util"]
       48 GETTABLEKS                       R10 R9 K19 ["StyleModifier"]
       50 GETIMPORT                        R11 K8 [require]
       52 GETTABLEKS                       R14 R1 K20 ["Src"]
       54 GETTABLEKS                       R13 R14 K21 ["Components"]
       56 GETTABLEKS                       R12 R13 K22 ["ButtonBar"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K8 [require]
       61 GETTABLEKS                       R15 R1 K20 ["Src"]
       63 GETTABLEKS                       R14 R15 K18 ["Util"]
       65 GETTABLEKS                       R13 R14 K23 ["Constants"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K8 [require]
       70 GETTABLEKS                       R16 R1 K20 ["Src"]
       72 GETTABLEKS                       R15 R16 K24 ["Selectors"]
       74 GETTABLEKS                       R14 R15 K25 ["GetHasCollaborators"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K8 [require]
       79 GETTABLEKS                       R17 R1 K20 ["Src"]
       81 GETTABLEKS                       R16 R17 K24 ["Selectors"]
       83 GETTABLEKS                       R15 R16 K26 ["GetHasUnsavedChanges"]
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
