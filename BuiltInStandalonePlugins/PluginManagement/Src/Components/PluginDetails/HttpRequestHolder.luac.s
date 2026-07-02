PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginManagementApi"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["assetId"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["setPluginPermission"]
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 MOVE                             R6 R0
       18 CALL                             R3 3 -1
       19 RETURN                           R3 -1

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
        6 DUPTABLE                         R1 K4 [{["frameWidth"] = 0}]
        7 SETTABLEKS                       R1 R0 K5 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["onCheckboxActivated"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["resizeFrame"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R1 R0 K8 ["getTruncatedText"]
       24 RETURN                           R0 0

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
       80 DUPTABLE                         R12 K28 [{["BackgroundTransparency"] = 1, ["contentPadding"], ["LayoutOrder"] = 0, ["width"]}]
       81 GETIMPORT                        R13 K15 [UDim.new]
       83 LOADN                            R14 0
       84 LOADN                            R15 8
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K16 ["contentPadding"]
       88 GETIMPORT                        R13 K15 [UDim.new]
       90 LOADN                            R14 1
       91 LOADN                            R15 0
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K17 ["width"]
       95 MOVE                             R13 R5
       96 CALL                             R10 3 1
       97 SETTABLEKS                       R10 R9 K23 ["Checkboxes"]
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K11 ["createElement"]
      102 GETUPVAL                         R11 2
      103 DUPTABLE                         R12 K35 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 1, ["TextSize"] = 16, ["Text"], ["TextXAlignment"], ["TextColor3"]}]
      104 GETTABLEKS                       R13 R4 K29 ["Font"]
      106 SETTABLEKS                       R13 R12 K29 ["Font"]
      108 LOADK                            R15 K36 ["Details"]
      109 LOADK                            R16 K37 ["HttpRequestInfo"]
      110 NAMECALL                         R13 R1 K38 ["getText"]
      112 CALL                             R13 3 1
      113 SETTABLEKS                       R13 R12 K32 ["Text"]
      115 GETIMPORT                        R13 K41 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R13 R12 K33 ["TextXAlignment"]
      119 GETTABLEKS                       R13 R4 K42 ["InfoTextColor"]
      121 SETTABLEKS                       R13 R12 K34 ["TextColor3"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K24 ["InfoText"]
      126 CALL                             R6 3 -1
      127 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       76 GETTABLEKS                       R10 R4 K22 ["FitFrameVertical"]
       78 GETIMPORT                        R11 K8 [require]
       80 GETTABLEKS                       R12 R0 K17 ["Src"]
       82 GETTABLEKS                       R12 R12 K23 ["Util"]
       84 GETTABLEKS                       R12 R12 K24 ["Constants"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R7 K25 ["Checkbox"]
       89 GETIMPORT                        R13 K8 [require]
       91 GETTABLEKS                       R14 R0 K17 ["Src"]
       93 GETTABLEKS                       R14 R14 K23 ["Util"]
       95 GETTABLEKS                       R14 R14 K26 ["truncateMiddleText"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K8 [require]
      100 GETTABLEKS                       R15 R0 K17 ["Src"]
      102 GETTABLEKS                       R15 R15 K23 ["Util"]
      104 GETTABLEKS                       R15 R15 K27 ["PluginManagementApi"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R2 K28 ["Component"]
      109 LOADK                            R17 K29 ["HttpRequestHolder"]
      110 NAMECALL                         R15 R15 K30 ["extend"]
      112 CALL                             R15 2 1
      113 DUPTABLE                         R16 K32 [{"httpPermissions"}]
      114 NEWTABLE                         R17 0 0
      116 SETTABLEKS                       R17 R16 K31 ["httpPermissions"]
      118 SETTABLEKS                       R16 R15 K33 ["defaultProps"]
      120 DUPCLOSURE                       R16 K34 [PROTO_3]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 SETTABLEKS                       R16 R15 K35 ["init"]
      127 DUPCLOSURE                       R16 K36 [PROTO_4]
      128 SETTABLEKS                       R16 R15 K37 ["didMount"]
      130 DUPCLOSURE                       R16 K38 [PROTO_6]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R12
      133 SETTABLEKS                       R16 R15 K39 ["renderCheckbox"]
      135 DUPCLOSURE                       R16 K40 [PROTO_7]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 SETTABLEKS                       R16 R15 K41 ["render"]
      141 MOVE                             R16 R6
      142 DUPTABLE                         R17 K44 [{"Localization", "Stylizer", "PluginManagementApi"}]
      143 GETTABLEKS                       R18 R5 K42 ["Localization"]
      145 SETTABLEKS                       R18 R17 K42 ["Localization"]
      147 GETTABLEKS                       R18 R5 K43 ["Stylizer"]
      149 SETTABLEKS                       R18 R17 K43 ["Stylizer"]
      151 SETTABLEKS                       R14 R17 K27 ["PluginManagementApi"]
      153 CALL                             R16 1 1
      154 MOVE                             R17 R15
      155 CALL                             R16 1 1
      156 MOVE                             R15 R16
      157 DUPCLOSURE                       R16 K45 [PROTO_9]
      158 CAPTURE                          VAL R8
      159 GETTABLEKS                       R17 R3 K46 ["connect"]
      161 LOADNIL                          R18
      162 MOVE                             R19 R16
      163 CALL                             R17 2 1
      164 MOVE                             R18 R15
      165 CALL                             R17 1 -1
      166 RETURN                           R17 -1
