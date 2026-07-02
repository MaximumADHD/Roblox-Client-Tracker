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
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["resizeFrame"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCheckboxActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R3 K0 ["allowed"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["createElement"]
        5 LOADK                            R6 K2 ["Frame"]
        6 DUPTABLE                         R7 K7 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
        7 GETIMPORT                        R8 K10 [UDim2.new]
        9 LOADN                            R9 1
       10 LOADN                            R10 0
       11 LOADN                            R11 0
       12 LOADN                            R12 16
       13 CALL                             R8 4 1
       14 SETTABLEKS                       R8 R7 K5 ["Size"]
       16 SETTABLEKS                       R2 R7 K6 ["LayoutOrder"]
       18 DUPTABLE                         R8 K13 [{"Layout", "ToggleButton"}]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K1 ["createElement"]
       22 LOADK                            R10 K14 ["UIListLayout"]
       23 DUPTABLE                         R11 K17 [{"FillDirection", "Padding"}]
       24 GETIMPORT                        R12 K20 [Enum.FillDirection.Horizontal]
       26 SETTABLEKS                       R12 R11 K15 ["FillDirection"]
       28 GETIMPORT                        R12 K22 [UDim.new]
       30 LOADN                            R13 0
       31 LOADN                            R14 8
       32 CALL                             R12 2 1
       33 SETTABLEKS                       R12 R11 K16 ["Padding"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K11 ["Layout"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K1 ["createElement"]
       41 GETUPVAL                         R10 1
       42 DUPTABLE                         R11 K27 [{["Disabled"] = False, ["LayoutOrder"] = 1, ["OnClick"], ["Selected"], ["Size"]}]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R12 R11 K25 ["OnClick"]
       48 SETTABLEKS                       R4 R11 K26 ["Selected"]
       50 GETIMPORT                        R12 K10 [UDim2.new]
       52 LOADN                            R13 0
       53 GETUPVAL                         R14 2
       54 GETTABLEKS                       R14 R14 K28 ["TOGGLE_BUTTON_WIDTH"]
       56 LOADN                            R15 0
       57 GETUPVAL                         R16 2
       58 GETTABLEKS                       R16 R16 K29 ["TOGGLE_BUTTON_HEIGHT"]
       60 CALL                             R12 4 1
       61 SETTABLEKS                       R12 R11 K5 ["Size"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K12 ["ToggleButton"]
       66 CALL                             R5 3 -1
       67 RETURN                           R5 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["scriptInjectionPermissions"]
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
      109 LOADK                            R16 K37 ["ScriptInjectionInfo"]
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_8:
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
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["FitFrame"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       41 GETTABLEKS                       R5 R4 K11 ["withContext"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K5 ["Packages"]
       47 GETTABLEKS                       R7 R7 K9 ["Framework"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R6 R6 K12 ["UI"]
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Src"]
       56 GETTABLEKS                       R8 R8 K14 ["Thunks"]
       58 GETTABLEKS                       R8 R8 K15 ["SetPluginPermission"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K13 ["Src"]
       65 GETTABLEKS                       R9 R9 K16 ["Components"]
       67 GETTABLEKS                       R9 R9 K17 ["FluidFitTextLabel"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R3 K18 ["FitFrameVertical"]
       72 GETIMPORT                        R10 K4 [require]
       74 GETTABLEKS                       R11 R0 K13 ["Src"]
       76 GETTABLEKS                       R11 R11 K19 ["Util"]
       78 GETTABLEKS                       R11 R11 K20 ["Constants"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K4 [require]
       83 GETTABLEKS                       R12 R0 K13 ["Src"]
       85 GETTABLEKS                       R12 R12 K19 ["Util"]
       87 GETTABLEKS                       R12 R12 K21 ["PluginManagementApi"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R1 K22 ["Component"]
       92 LOADK                            R14 K23 ["ScriptInjectionHolder"]
       93 NAMECALL                         R12 R12 K24 ["extend"]
       95 CALL                             R12 2 1
       96 GETTABLEKS                       R13 R6 K25 ["ToggleButton"]
       98 DUPTABLE                         R14 K27 [{"scriptInjectionPermissions"}]
       99 NEWTABLE                         R15 0 0
      101 SETTABLEKS                       R15 R14 K26 ["scriptInjectionPermissions"]
      103 SETTABLEKS                       R14 R12 K28 ["defaultProps"]
      105 DUPCLOSURE                       R14 K29 [PROTO_2]
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R14 R12 K30 ["init"]
      109 DUPCLOSURE                       R14 K31 [PROTO_3]
      110 SETTABLEKS                       R14 R12 K32 ["didMount"]
      112 DUPCLOSURE                       R14 K33 [PROTO_5]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R10
      116 SETTABLEKS                       R14 R12 K34 ["renderCheckbox"]
      118 DUPCLOSURE                       R14 K35 [PROTO_6]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R14 R12 K36 ["render"]
      124 MOVE                             R14 R5
      125 DUPTABLE                         R15 K39 [{"Localization", "Stylizer", "PluginManagementApi"}]
      126 GETTABLEKS                       R16 R4 K37 ["Localization"]
      128 SETTABLEKS                       R16 R15 K37 ["Localization"]
      130 GETTABLEKS                       R16 R4 K38 ["Stylizer"]
      132 SETTABLEKS                       R16 R15 K38 ["Stylizer"]
      134 SETTABLEKS                       R11 R15 K21 ["PluginManagementApi"]
      136 CALL                             R14 1 1
      137 MOVE                             R15 R12
      138 CALL                             R14 1 1
      139 MOVE                             R12 R14
      140 DUPCLOSURE                       R14 K40 [PROTO_8]
      141 CAPTURE                          VAL R7
      142 GETTABLEKS                       R15 R2 K41 ["connect"]
      144 LOADNIL                          R16
      145 MOVE                             R17 R14
      146 CALL                             R15 2 1
      147 MOVE                             R16 R12
      148 CALL                             R15 1 -1
      149 RETURN                           R15 -1
