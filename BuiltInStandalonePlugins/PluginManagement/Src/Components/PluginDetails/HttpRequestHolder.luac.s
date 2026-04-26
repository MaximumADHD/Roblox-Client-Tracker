PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["props"]
        6 GETTABLEKS                       R1 R2 K1 ["PluginManagementApi"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K2 ["API"]
       15 NAMECALL                         R2 R2 K3 ["get"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K0 ["props"]
       21 GETTABLEKS                       R3 R4 K4 ["assetId"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K0 ["props"]
       26 GETTABLEKS                       R4 R5 K5 ["setPluginPermission"]
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 MOVE                             R7 R3
       31 MOVE                             R8 R0
       32 CALL                             R4 4 -1
       33 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["frameRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["state"]
       10 GETTABLEKS                       R1 R2 K3 ["frameWidth"]
       12 GETTABLEKS                       R3 R0 K4 ["AbsoluteSize"]
       14 GETTABLEKS                       R2 R3 K5 ["X"]
       16 JUMPIFEQ                         R1 R2 ; [+12]
       18 GETUPVAL                         R1 0
       19 DUPTABLE                         R3 K6 [{"frameWidth"}]
       20 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       22 GETTABLEKS                       R4 R5 K5 ["X"]
       24 SETTABLEKS                       R4 R3 K3 ["frameWidth"]
       26 NAMECALL                         R1 R1 K7 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R2 K0 [""]
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R0
        3 LOADN                            R6 16
        4 GETTABLEKS                       R7 R1 K1 ["Font"]
        6 GETIMPORT                        R8 K4 [Vector2.new]
        8 CALL                             R8 0 -1
        9 NAMECALL                         R3 R3 K5 ["GetTextSize"]
       11 CALL                             R3 -1 1
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K7 ["state"]
       15 GETTABLEKS                       R6 R7 K8 ["frameWidth"]
       17 SUBK                             R5 R6 K6 [16]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K9 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
       21 SUB                              R4 R5 R6
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+14]
       25 GETTABLEKS                       R5 R3 K10 ["X"]
       27 JUMPIFNOTLT                      R4 R5 ; [+10]
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R0
       31 LOADN                            R7 16
       32 GETTABLEKS                       R8 R1 K1 ["Font"]
       34 MOVE                             R9 R4
       35 CALL                             R5 4 1
       36 MOVE                             R2 R5
       37 RETURN                           R2 1
       38 MOVE                             R2 R0
       39 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 DUPTABLE                         R1 K3 [{"frameWidth"}]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["frameWidth"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["onCheckboxActivated"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["resizeFrame"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R1 R0 K7 ["getTruncatedText"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["resizeFrame"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onCheckboxActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R3 K0 ["data"]
        2 JUMPIFNOT                        R5 ; [+5]
        3 GETTABLEKS                       R5 R3 K0 ["data"]
        5 GETTABLEKS                       R4 R5 K1 ["domain"]
        7 JUMPIF                           R4 ; [+1]
        8 LOADK                            R4 K2 [""]
        9 GETTABLEKS                       R5 R0 K3 ["getTruncatedText"]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 GETTABLEKS                       R6 R3 K4 ["allowed"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K5 ["createElement"]
       19 GETUPVAL                         R8 1
       20 DUPTABLE                         R9 K10 [{"Checked", "LayoutOrder", "OnClick", "Text"}]
       21 SETTABLEKS                       R6 R9 K6 ["Checked"]
       23 SETTABLEKS                       R2 R9 K7 ["LayoutOrder"]
       25 NEWCLOSURE                       R10 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R10 R9 K8 ["OnClick"]
       30 SETTABLEKS                       R5 R9 K9 ["Text"]
       32 CALL                             R7 2 -1
       33 RETURN                           R7 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["httpPermissions"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["Stylizer"]
       16 NEWTABLE                         R5 0 0
       18 GETIMPORT                        R6 K6 [pairs]
       20 MOVE                             R7 R2
       21 CALL                             R6 1 3
       22 FORGPREP_NEXT                    R6
       23 MOVE                             R12 R5
       24 MOVE                             R15 R4
       25 MOVE                             R16 R9
       26 MOVE                             R17 R10
       27 NAMECALL                         R13 R0 K7 ["renderCheckbox"]
       29 CALL                             R13 4 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R11 K10 [table.insert]
       33 CALL                             R11 -1 0
       34 FORGLOOP                         R6 2 ; [-12]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K11 ["createElement"]
       39 GETUPVAL                         R7 1
       40 NEWTABLE                         R8 8 0
       42 LOADN                            R9 1
       43 SETTABLEKS                       R9 R8 K12 ["BackgroundTransparency"]
       45 GETIMPORT                        R9 K15 [UDim.new]
       47 LOADN                            R10 0
       48 LOADN                            R11 20
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K16 ["contentPadding"]
       52 SETTABLEKS                       R3 R8 K3 ["LayoutOrder"]
       54 GETIMPORT                        R9 K15 [UDim.new]
       56 LOADN                            R10 1
       57 LOADN                            R11 0
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K17 ["width"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R9 R10 K18 ["Ref"]
       64 GETTABLEKS                       R10 R0 K19 ["frameRef"]
       66 SETTABLE                         R10 R8 R9
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K20 ["Change"]
       70 GETTABLEKS                       R9 R10 K21 ["AbsoluteSize"]
       72 GETTABLEKS                       R10 R0 K22 ["resizeFrame"]
       74 SETTABLE                         R10 R8 R9
       75 DUPTABLE                         R9 K25 [{"Checkboxes", "InfoText"}]
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R10 R11 K11 ["createElement"]
       79 GETUPVAL                         R11 1
       80 DUPTABLE                         R12 K26 [{"BackgroundTransparency", "contentPadding", "LayoutOrder", "width"}]
       81 LOADN                            R13 1
       82 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       84 GETIMPORT                        R13 K15 [UDim.new]
       86 LOADN                            R14 0
       87 LOADN                            R15 8
       88 CALL                             R13 2 1
       89 SETTABLEKS                       R13 R12 K16 ["contentPadding"]
       91 LOADN                            R13 0
       92 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       94 GETIMPORT                        R13 K15 [UDim.new]
       96 LOADN                            R14 1
       97 LOADN                            R15 0
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K17 ["width"]
      101 MOVE                             R13 R5
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K23 ["Checkboxes"]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R10 R11 K11 ["createElement"]
      108 GETUPVAL                         R11 2
      109 DUPTABLE                         R12 K32 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextSize", "Text", "TextXAlignment", "TextColor3"}]
      110 LOADN                            R13 1
      111 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
      113 GETTABLEKS                       R13 R4 K27 ["Font"]
      115 SETTABLEKS                       R13 R12 K27 ["Font"]
      117 LOADN                            R13 1
      118 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      120 LOADN                            R13 16
      121 SETTABLEKS                       R13 R12 K28 ["TextSize"]
      123 LOADK                            R15 K33 ["Details"]
      124 LOADK                            R16 K34 ["HttpRequestInfo"]
      125 NAMECALL                         R13 R1 K35 ["getText"]
      127 CALL                             R13 3 1
      128 SETTABLEKS                       R13 R12 K29 ["Text"]
      130 GETIMPORT                        R13 K38 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R13 R12 K30 ["TextXAlignment"]
      134 GETTABLEKS                       R13 R4 K39 ["InfoTextColor"]
      136 SETTABLEKS                       R13 R12 K31 ["TextColor3"]
      138 CALL                             R10 2 1
      139 SETTABLEKS                       R10 R9 K24 ["InfoText"]
      141 CALL                             R6 3 -1
      142 RETURN                           R6 -1

PROTO_8:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 CALL                             R5 0 1
        3 JUMPIF                           R5 ; [+1]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 MOVE                             R7 R0
        8 MOVE                             R8 R4
        9 MOVE                             R9 R1
       10 MOVE                             R10 R2
       11 MOVE                             R11 R3
       12 CALL                             R6 5 -1
       13 CALL                             R5 -1 0
       14 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"setPluginPermission"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["setPluginPermission"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Bin"]
       15 GETTABLEKS                       R2 R3 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K8 [game]
       20 LOADK                            R4 K9 ["TextService"]
       21 NAMECALL                         R2 R2 K10 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K8 [game]
       26 LOADK                            R5 K11 ["PermissionsService"]
       27 NAMECALL                         R3 R3 K10 ["GetService"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Packages"]
       34 GETTABLEKS                       R5 R6 K13 ["Roact"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Packages"]
       41 GETTABLEKS                       R6 R7 K14 ["RoactRodux"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Packages"]
       48 GETTABLEKS                       R7 R8 K15 ["FitFrame"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R8 K4 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Packages"]
       55 GETTABLEKS                       R9 R10 K16 ["Framework"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R7 R8 K17 ["ContextServices"]
       60 GETTABLEKS                       R8 R7 K18 ["withContext"]
       62 GETIMPORT                        R10 K4 [require]
       64 GETTABLEKS                       R12 R0 K12 ["Packages"]
       66 GETTABLEKS                       R11 R12 K16 ["Framework"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R9 R10 K19 ["UI"]
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R13 R0 K20 ["Src"]
       75 GETTABLEKS                       R12 R13 K21 ["Thunks"]
       77 GETTABLEKS                       R11 R12 K22 ["SetPluginPermission"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K4 [require]
       82 GETTABLEKS                       R14 R0 K20 ["Src"]
       84 GETTABLEKS                       R13 R14 K23 ["Components"]
       86 GETTABLEKS                       R12 R13 K24 ["FluidFitTextLabel"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K4 [require]
       91 GETTABLEKS                       R15 R0 K20 ["Src"]
       93 GETTABLEKS                       R14 R15 K17 ["ContextServices"]
       95 GETTABLEKS                       R13 R14 K25 ["PluginAPI2"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R6 K26 ["FitFrameVertical"]
      100 GETIMPORT                        R14 K4 [require]
      102 GETTABLEKS                       R17 R0 K20 ["Src"]
      104 GETTABLEKS                       R16 R17 K27 ["Util"]
      106 GETTABLEKS                       R15 R16 K28 ["Constants"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R9 K29 ["Checkbox"]
      111 GETIMPORT                        R16 K4 [require]
      113 GETTABLEKS                       R19 R0 K20 ["Src"]
      115 GETTABLEKS                       R18 R19 K27 ["Util"]
      117 GETTABLEKS                       R17 R18 K30 ["truncateMiddleText"]
      119 CALL                             R16 1 1
      120 LOADNIL                          R17
      121 MOVE                             R18 R1
      122 CALL                             R18 0 1
      123 JUMPIFNOT                        R18 ; [+10]
      124 GETIMPORT                        R18 K4 [require]
      126 GETTABLEKS                       R21 R0 K20 ["Src"]
      128 GETTABLEKS                       R20 R21 K27 ["Util"]
      130 GETTABLEKS                       R19 R20 K31 ["PluginManagementApi"]
      132 CALL                             R18 1 1
      133 MOVE                             R17 R18
      134 GETTABLEKS                       R18 R4 K32 ["Component"]
      136 LOADK                            R20 K33 ["HttpRequestHolder"]
      137 NAMECALL                         R18 R18 K34 ["extend"]
      139 CALL                             R18 2 1
      140 DUPTABLE                         R19 K36 [{"httpPermissions"}]
      141 NEWTABLE                         R20 0 0
      143 SETTABLEKS                       R20 R19 K35 ["httpPermissions"]
      145 SETTABLEKS                       R19 R18 K37 ["defaultProps"]
      147 DUPCLOSURE                       R19 K38 [PROTO_3]
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R16
      153 SETTABLEKS                       R19 R18 K39 ["init"]
      155 DUPCLOSURE                       R19 K40 [PROTO_4]
      156 SETTABLEKS                       R19 R18 K41 ["didMount"]
      158 DUPCLOSURE                       R19 K42 [PROTO_6]
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R15
      161 SETTABLEKS                       R19 R18 K43 ["renderCheckbox"]
      163 DUPCLOSURE                       R19 K44 [PROTO_7]
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R11
      167 SETTABLEKS                       R19 R18 K45 ["render"]
      169 MOVE                             R19 R8
      170 DUPTABLE                         R20 K49 [{"API", "Localization", "Stylizer", "PluginManagementApi"}]
      171 SETTABLEKS                       R12 R20 K46 ["API"]
      173 GETTABLEKS                       R21 R7 K47 ["Localization"]
      175 SETTABLEKS                       R21 R20 K47 ["Localization"]
      177 GETTABLEKS                       R21 R7 K48 ["Stylizer"]
      179 SETTABLEKS                       R21 R20 K48 ["Stylizer"]
      181 MOVE                             R22 R1
      182 CALL                             R22 0 1
      183 JUMPIFNOT                        R22 ; [+2]
      184 MOVE                             R21 R17
      185 JUMPIF                           R21 ; [+1]
      186 LOADNIL                          R21
      187 SETTABLEKS                       R21 R20 K31 ["PluginManagementApi"]
      189 CALL                             R19 1 1
      190 MOVE                             R20 R18
      191 CALL                             R19 1 1
      192 MOVE                             R18 R19
      193 DUPCLOSURE                       R19 K50 [PROTO_9]
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R10
      197 GETTABLEKS                       R20 R5 K51 ["connect"]
      199 LOADNIL                          R21
      200 MOVE                             R22 R19
      201 CALL                             R20 2 1
      202 MOVE                             R21 R18
      203 CALL                             R20 1 -1
      204 RETURN                           R20 -1
