PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginManagementApi"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["API"]
       10 NAMECALL                         R2 R2 K3 ["get"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K4 ["assetId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["props"]
       21 GETTABLEKS                       R4 R4 K5 ["setPluginPermission"]
       23 MOVE                             R5 R1
       24 MOVE                             R6 R2
       25 MOVE                             R7 R3
       26 MOVE                             R8 R0
       27 CALL                             R4 4 -1
       28 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["frameWidth"]
       12 GETTABLEKS                       R2 R0 K4 ["AbsoluteSize"]
       14 GETTABLEKS                       R2 R2 K5 ["X"]
       16 JUMPIFEQ                         R1 R2 ; [+12]
       18 GETUPVAL                         R1 0
       19 DUPTABLE                         R3 K6 [{"frameWidth"}]
       20 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       22 GETTABLEKS                       R4 R4 K5 ["X"]
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
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K7 ["state"]
       15 GETTABLEKS                       R6 R6 K8 ["frameWidth"]
       17 SUBK                             R5 R6 K6 [16]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K9 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 DUPTABLE                         R1 K3 [{"frameWidth"}]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["frameWidth"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onCheckboxActivated"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["resizeFrame"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R1 R0 K7 ["getTruncatedText"]
       27 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["resizeFrame"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCheckboxActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R3 K0 ["data"]
        2 JUMPIFNOT                        R5 ; [+5]
        3 GETTABLEKS                       R4 R3 K0 ["data"]
        5 GETTABLEKS                       R4 R4 K1 ["domain"]
        7 JUMPIF                           R4 ; [+1]
        8 LOADK                            R4 K2 [""]
        9 GETTABLEKS                       R5 R0 K3 ["getTruncatedText"]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 GETTABLEKS                       R6 R3 K4 ["allowed"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K5 ["createElement"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["httpPermissions"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Stylizer"]
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
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K11 ["createElement"]
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
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K18 ["Ref"]
       64 GETTABLEKS                       R10 R0 K19 ["frameRef"]
       66 SETTABLE                         R10 R8 R9
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K20 ["Change"]
       70 GETTABLEKS                       R9 R9 K21 ["AbsoluteSize"]
       72 GETTABLEKS                       R10 R0 K22 ["resizeFrame"]
       74 SETTABLE                         R10 R8 R9
       75 DUPTABLE                         R9 K25 [{"Checkboxes", "InfoText"}]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K11 ["createElement"]
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
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K11 ["createElement"]
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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"setPluginPermission"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setPluginPermission"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["TextService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R0 K9 ["Packages"]
       35 GETTABLEKS                       R5 R5 K12 ["FitFrame"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Packages"]
       42 GETTABLEKS                       R6 R6 K13 ["Framework"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R5 R5 K14 ["ContextServices"]
       47 GETTABLEKS                       R6 R5 K15 ["withContext"]
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Packages"]
       53 GETTABLEKS                       R8 R8 K13 ["Framework"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R7 R7 K16 ["UI"]
       58 GETIMPORT                        R8 K8 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Src"]
       62 GETTABLEKS                       R9 R9 K18 ["Thunks"]
       64 GETTABLEKS                       R9 R9 K19 ["SetPluginPermission"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Components"]
       73 GETTABLEKS                       R10 R10 K21 ["FluidFitTextLabel"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R0 K17 ["Src"]
       80 GETTABLEKS                       R11 R11 K14 ["ContextServices"]
       82 GETTABLEKS                       R11 R11 K22 ["PluginAPI2"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R4 K23 ["FitFrameVertical"]
       87 GETIMPORT                        R12 K8 [require]
       89 GETTABLEKS                       R13 R0 K17 ["Src"]
       91 GETTABLEKS                       R13 R13 K24 ["Util"]
       93 GETTABLEKS                       R13 R13 K25 ["Constants"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R7 K26 ["Checkbox"]
       98 GETIMPORT                        R14 K8 [require]
      100 GETTABLEKS                       R15 R0 K17 ["Src"]
      102 GETTABLEKS                       R15 R15 K24 ["Util"]
      104 GETTABLEKS                       R15 R15 K27 ["truncateMiddleText"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K8 [require]
      109 GETTABLEKS                       R16 R0 K17 ["Src"]
      111 GETTABLEKS                       R16 R16 K24 ["Util"]
      113 GETTABLEKS                       R16 R16 K28 ["PluginManagementApi"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R2 K29 ["Component"]
      118 LOADK                            R18 K30 ["HttpRequestHolder"]
      119 NAMECALL                         R16 R16 K31 ["extend"]
      121 CALL                             R16 2 1
      122 DUPTABLE                         R17 K33 [{"httpPermissions"}]
      123 NEWTABLE                         R18 0 0
      125 SETTABLEKS                       R18 R17 K32 ["httpPermissions"]
      127 SETTABLEKS                       R17 R16 K34 ["defaultProps"]
      129 DUPCLOSURE                       R17 K35 [PROTO_3]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R14
      134 SETTABLEKS                       R17 R16 K36 ["init"]
      136 DUPCLOSURE                       R17 K37 [PROTO_4]
      137 SETTABLEKS                       R17 R16 K38 ["didMount"]
      139 DUPCLOSURE                       R17 K39 [PROTO_6]
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 SETTABLEKS                       R17 R16 K40 ["renderCheckbox"]
      144 DUPCLOSURE                       R17 K41 [PROTO_7]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R9
      148 SETTABLEKS                       R17 R16 K42 ["render"]
      150 MOVE                             R17 R6
      151 DUPTABLE                         R18 K46 [{"API", "Localization", "Stylizer", "PluginManagementApi"}]
      152 SETTABLEKS                       R10 R18 K43 ["API"]
      154 GETTABLEKS                       R19 R5 K44 ["Localization"]
      156 SETTABLEKS                       R19 R18 K44 ["Localization"]
      158 GETTABLEKS                       R19 R5 K45 ["Stylizer"]
      160 SETTABLEKS                       R19 R18 K45 ["Stylizer"]
      162 SETTABLEKS                       R15 R18 K28 ["PluginManagementApi"]
      164 CALL                             R17 1 1
      165 MOVE                             R18 R16
      166 CALL                             R17 1 1
      167 MOVE                             R16 R17
      168 DUPCLOSURE                       R17 K47 [PROTO_9]
      169 CAPTURE                          VAL R8
      170 GETTABLEKS                       R18 R3 K48 ["connect"]
      172 LOADNIL                          R19
      173 MOVE                             R20 R17
      174 CALL                             R18 2 1
      175 MOVE                             R19 R16
      176 CALL                             R18 1 -1
      177 RETURN                           R18 -1
