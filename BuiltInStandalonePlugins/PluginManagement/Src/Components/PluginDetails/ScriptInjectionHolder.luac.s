PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["PluginManagementApi"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["API"]
       15 NAMECALL                         R2 R2 K3 ["get"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K4 ["assetId"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K5 ["setPluginPermission"]
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 MOVE                             R7 R3
       31 MOVE                             R8 R0
       32 CALL                             R4 4 -1
       33 RETURN                           R4 -1

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
       21 RETURN                           R0 0

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
        6 DUPTABLE                         R7 K6 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
        7 LOADN                            R8 1
        8 SETTABLEKS                       R8 R7 K3 ["BackgroundTransparency"]
       10 GETIMPORT                        R8 K9 [UDim2.new]
       12 LOADN                            R9 1
       13 LOADN                            R10 0
       14 LOADN                            R11 0
       15 LOADN                            R12 16
       16 CALL                             R8 4 1
       17 SETTABLEKS                       R8 R7 K4 ["Size"]
       19 SETTABLEKS                       R2 R7 K5 ["LayoutOrder"]
       21 DUPTABLE                         R8 K12 [{"Layout", "ToggleButton"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K1 ["createElement"]
       25 LOADK                            R10 K13 ["UIListLayout"]
       26 DUPTABLE                         R11 K16 [{"FillDirection", "Padding"}]
       27 GETIMPORT                        R12 K19 [Enum.FillDirection.Horizontal]
       29 SETTABLEKS                       R12 R11 K14 ["FillDirection"]
       31 GETIMPORT                        R12 K21 [UDim.new]
       33 LOADN                            R13 0
       34 LOADN                            R14 8
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K15 ["Padding"]
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K10 ["Layout"]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K1 ["createElement"]
       44 GETUPVAL                         R10 1
       45 DUPTABLE                         R11 K25 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
       46 LOADB                            R12 0
       47 SETTABLEKS                       R12 R11 K22 ["Disabled"]
       49 LOADN                            R12 1
       50 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R12 R11 K23 ["OnClick"]
       57 SETTABLEKS                       R4 R11 K24 ["Selected"]
       59 GETIMPORT                        R12 K9 [UDim2.new]
       61 LOADN                            R13 0
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K26 ["TOGGLE_BUTTON_WIDTH"]
       65 LOADN                            R15 0
       66 GETUPVAL                         R16 2
       67 GETTABLEKS                       R16 R16 K27 ["TOGGLE_BUTTON_HEIGHT"]
       69 CALL                             R12 4 1
       70 SETTABLEKS                       R12 R11 K4 ["Size"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K11 ["ToggleButton"]
       75 CALL                             R5 3 -1
       76 RETURN                           R5 -1

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
      124 LOADK                            R16 K34 ["ScriptInjectionInfo"]
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

PROTO_7:
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

PROTO_8:
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Bin"]
       15 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K8 [game]
       20 LOADK                            R4 K9 ["PermissionsService"]
       21 NAMECALL                         R2 R2 K10 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K11 ["Packages"]
       28 GETTABLEKS                       R4 R4 K12 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K11 ["Packages"]
       35 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K11 ["Packages"]
       42 GETTABLEKS                       R6 R6 K14 ["FitFrame"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Packages"]
       49 GETTABLEKS                       R7 R7 K15 ["Framework"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R6 R6 K16 ["ContextServices"]
       54 GETTABLEKS                       R7 R6 K17 ["withContext"]
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Packages"]
       60 GETTABLEKS                       R9 R9 K15 ["Framework"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R8 R8 K18 ["UI"]
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Src"]
       69 GETTABLEKS                       R10 R10 K20 ["Thunks"]
       71 GETTABLEKS                       R10 R10 K21 ["SetPluginPermission"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K4 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Src"]
       78 GETTABLEKS                       R11 R11 K22 ["Components"]
       80 GETTABLEKS                       R11 R11 K23 ["FluidFitTextLabel"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K4 [require]
       85 GETTABLEKS                       R12 R0 K19 ["Src"]
       87 GETTABLEKS                       R12 R12 K16 ["ContextServices"]
       89 GETTABLEKS                       R12 R12 K24 ["PluginAPI2"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R5 K25 ["FitFrameVertical"]
       94 GETIMPORT                        R13 K4 [require]
       96 GETTABLEKS                       R14 R0 K19 ["Src"]
       98 GETTABLEKS                       R14 R14 K26 ["Util"]
      100 GETTABLEKS                       R14 R14 K27 ["Constants"]
      102 CALL                             R13 1 1
      103 LOADNIL                          R14
      104 MOVE                             R15 R1
      105 CALL                             R15 0 1
      106 JUMPIFNOT                        R15 ; [+10]
      107 GETIMPORT                        R15 K4 [require]
      109 GETTABLEKS                       R16 R0 K19 ["Src"]
      111 GETTABLEKS                       R16 R16 K26 ["Util"]
      113 GETTABLEKS                       R16 R16 K28 ["PluginManagementApi"]
      115 CALL                             R15 1 1
      116 MOVE                             R14 R15
      117 GETTABLEKS                       R15 R3 K29 ["Component"]
      119 LOADK                            R17 K30 ["ScriptInjectionHolder"]
      120 NAMECALL                         R15 R15 K31 ["extend"]
      122 CALL                             R15 2 1
      123 GETTABLEKS                       R16 R8 K32 ["ToggleButton"]
      125 DUPTABLE                         R17 K34 [{"scriptInjectionPermissions"}]
      126 NEWTABLE                         R18 0 0
      128 SETTABLEKS                       R18 R17 K33 ["scriptInjectionPermissions"]
      130 SETTABLEKS                       R17 R15 K35 ["defaultProps"]
      132 DUPCLOSURE                       R17 K36 [PROTO_2]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R17 R15 K37 ["init"]
      137 DUPCLOSURE                       R17 K38 [PROTO_3]
      138 SETTABLEKS                       R17 R15 K39 ["didMount"]
      140 DUPCLOSURE                       R17 K40 [PROTO_5]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R17 R15 K41 ["renderCheckbox"]
      146 DUPCLOSURE                       R17 K42 [PROTO_6]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R10
      150 SETTABLEKS                       R17 R15 K43 ["render"]
      152 MOVE                             R17 R7
      153 DUPTABLE                         R18 K47 [{"API", "Localization", "Stylizer", "PluginManagementApi"}]
      154 SETTABLEKS                       R11 R18 K44 ["API"]
      156 GETTABLEKS                       R19 R6 K45 ["Localization"]
      158 SETTABLEKS                       R19 R18 K45 ["Localization"]
      160 GETTABLEKS                       R19 R6 K46 ["Stylizer"]
      162 SETTABLEKS                       R19 R18 K46 ["Stylizer"]
      164 MOVE                             R20 R1
      165 CALL                             R20 0 1
      166 JUMPIFNOT                        R20 ; [+2]
      167 MOVE                             R19 R14
      168 JUMPIF                           R19 ; [+1]
      169 LOADNIL                          R19
      170 SETTABLEKS                       R19 R18 K28 ["PluginManagementApi"]
      172 CALL                             R17 1 1
      173 MOVE                             R18 R15
      174 CALL                             R17 1 1
      175 MOVE                             R15 R17
      176 DUPCLOSURE                       R17 K48 [PROTO_8]
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R9
      180 GETTABLEKS                       R18 R4 K49 ["connect"]
      182 LOADNIL                          R19
      183 MOVE                             R20 R17
      184 CALL                             R18 2 1
      185 MOVE                             R19 R15
      186 CALL                             R18 1 -1
      187 RETURN                           R18 -1
