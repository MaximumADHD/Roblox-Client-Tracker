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
       20 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

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
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K13 ["Src"]
       74 GETTABLEKS                       R10 R10 K10 ["ContextServices"]
       76 GETTABLEKS                       R10 R10 K18 ["PluginAPI2"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R3 K19 ["FitFrameVertical"]
       81 GETIMPORT                        R11 K4 [require]
       83 GETTABLEKS                       R12 R0 K13 ["Src"]
       85 GETTABLEKS                       R12 R12 K20 ["Util"]
       87 GETTABLEKS                       R12 R12 K21 ["Constants"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K4 [require]
       92 GETTABLEKS                       R13 R0 K13 ["Src"]
       94 GETTABLEKS                       R13 R13 K20 ["Util"]
       96 GETTABLEKS                       R13 R13 K22 ["PluginManagementApi"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R1 K23 ["Component"]
      101 LOADK                            R15 K24 ["ScriptInjectionHolder"]
      102 NAMECALL                         R13 R13 K25 ["extend"]
      104 CALL                             R13 2 1
      105 GETTABLEKS                       R14 R6 K26 ["ToggleButton"]
      107 DUPTABLE                         R15 K28 [{"scriptInjectionPermissions"}]
      108 NEWTABLE                         R16 0 0
      110 SETTABLEKS                       R16 R15 K27 ["scriptInjectionPermissions"]
      112 SETTABLEKS                       R15 R13 K29 ["defaultProps"]
      114 DUPCLOSURE                       R15 K30 [PROTO_2]
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R15 R13 K31 ["init"]
      118 DUPCLOSURE                       R15 K32 [PROTO_3]
      119 SETTABLEKS                       R15 R13 K33 ["didMount"]
      121 DUPCLOSURE                       R15 K34 [PROTO_5]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R11
      125 SETTABLEKS                       R15 R13 K35 ["renderCheckbox"]
      127 DUPCLOSURE                       R15 K36 [PROTO_6]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R15 R13 K37 ["render"]
      133 MOVE                             R15 R5
      134 DUPTABLE                         R16 K41 [{"API", "Localization", "Stylizer", "PluginManagementApi"}]
      135 SETTABLEKS                       R9 R16 K38 ["API"]
      137 GETTABLEKS                       R17 R4 K39 ["Localization"]
      139 SETTABLEKS                       R17 R16 K39 ["Localization"]
      141 GETTABLEKS                       R17 R4 K40 ["Stylizer"]
      143 SETTABLEKS                       R17 R16 K40 ["Stylizer"]
      145 SETTABLEKS                       R12 R16 K22 ["PluginManagementApi"]
      147 CALL                             R15 1 1
      148 MOVE                             R16 R13
      149 CALL                             R15 1 1
      150 MOVE                             R13 R15
      151 DUPCLOSURE                       R15 K42 [PROTO_8]
      152 CAPTURE                          VAL R7
      153 GETTABLEKS                       R16 R2 K43 ["connect"]
      155 LOADNIL                          R17
      156 MOVE                             R18 R15
      157 CALL                             R16 2 1
      158 MOVE                             R17 R13
      159 CALL                             R16 1 -1
      160 RETURN                           R16 -1
