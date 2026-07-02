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
        0 GETTABLEKS                       R2 R1 K0 ["Id"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Custom"] ; [+119]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K10 [{["axis"], ["minimumSize"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["FillDirection"], ["LayoutOrder"]}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K11 ["Axis"]
       12 GETTABLEKS                       R5 R5 K12 ["Vertical"]
       14 SETTABLEKS                       R5 R4 K3 ["axis"]
       16 GETIMPORT                        R5 K15 [UDim2.new]
       18 LOADN                            R6 1
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K4 ["minimumSize"]
       25 GETIMPORT                        R5 K17 [UDim.new]
       27 LOADN                            R6 0
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K18 ["radioButton"]
       31 GETTABLEKS                       R7 R7 K19 ["padding"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K5 ["contentPadding"]
       36 GETIMPORT                        R5 K22 [Enum.FillDirection.Horizontal]
       38 SETTABLEKS                       R5 R4 K8 ["FillDirection"]
       40 SETTABLEKS                       R0 R4 K9 ["LayoutOrder"]
       42 DUPTABLE                         R5 K25 [{"RadioButton", "InputField"}]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K2 ["createElement"]
       46 GETUPVAL                         R7 3
       47 DUPTABLE                         R8 K33 [{["LayoutOrder"] = 1, ["Title"], [3], ["Description"], ["Selected"], ["Index"], ["Enabled"], ["Children"], ["OnClicked"]}]
       48 GETTABLEKS                       R9 R1 K26 ["Title"]
       50 SETTABLEKS                       R9 R8 K26 ["Title"]
       52 GETTABLEKS                       R9 R1 K0 ["Id"]
       54 SETTABLEKS                       R9 R8 K0 ["Id"]
       56 GETTABLEKS                       R9 R1 K27 ["Description"]
       58 SETTABLEKS                       R9 R8 K27 ["Description"]
       60 LOADB                            R9 1
       61 GETTABLEKS                       R10 R1 K0 ["Id"]
       63 GETUPVAL                         R11 4
       64 JUMPIFEQ                         R10 R11 ; [+6]
       66 GETUPVAL                         R10 4
       67 JUMPIFEQ                         R0 R10 ; [+2]
       69 LOADB                            R9 0 +1
       70 LOADB                            R9 1
       71 SETTABLEKS                       R9 R8 K28 ["Selected"]
       73 SETTABLEKS                       R0 R8 K29 ["Index"]
       75 GETUPVAL                         R9 5
       76 GETTABLEKS                       R9 R9 K30 ["Enabled"]
       78 SETTABLEKS                       R9 R8 K30 ["Enabled"]
       80 GETTABLEKS                       R9 R1 K31 ["Children"]
       82 SETTABLEKS                       R9 R8 K31 ["Children"]
       84 NEWCLOSURE                       R9 P0
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R9 R8 K32 ["OnClicked"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K23 ["RadioButton"]
       92 GETUPVAL                         R6 7
       93 JUMPIFNOT                        R6 ; [+24]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K2 ["createElement"]
       97 GETUPVAL                         R7 8
       98 DUPTABLE                         R8 K39 [{["ErrorText"], ["LayoutOrder"] = 2, ["OnTextChanged"], ["Width"], ["Text"]}]
       99 GETUPVAL                         R9 9
      100 SETTABLEKS                       R9 R8 K34 ["ErrorText"]
      102 GETUPVAL                         R9 10
      103 SETTABLEKS                       R9 R8 K36 ["OnTextChanged"]
      105 GETUPVAL                         R9 2
      106 GETTABLEKS                       R9 R9 K40 ["placePage"]
      108 GETTABLEKS                       R9 R9 K41 ["textBox"]
      110 GETTABLEKS                       R9 R9 K42 ["length"]
      112 SETTABLEKS                       R9 R8 K37 ["Width"]
      114 GETUPVAL                         R9 11
      115 SETTABLEKS                       R9 R8 K38 ["Text"]
      117 CALL                             R6 2 1
      118 SETTABLEKS                       R6 R5 K24 ["InputField"]
      120 CALL                             R2 3 -1
      121 RETURN                           R2 -1
      122 GETUPVAL                         R2 0
      123 GETTABLEKS                       R2 R2 K2 ["createElement"]
      125 GETUPVAL                         R3 3
      126 DUPTABLE                         R4 K43 [{"Title", "Id", "Description", "Selected", "Index", "Enabled", "LayoutOrder", "OnClicked"}]
      127 GETTABLEKS                       R5 R1 K26 ["Title"]
      129 SETTABLEKS                       R5 R4 K26 ["Title"]
      131 GETTABLEKS                       R5 R1 K0 ["Id"]
      133 SETTABLEKS                       R5 R4 K0 ["Id"]
      135 GETTABLEKS                       R5 R1 K27 ["Description"]
      137 SETTABLEKS                       R5 R4 K27 ["Description"]
      139 LOADB                            R5 1
      140 GETTABLEKS                       R6 R1 K0 ["Id"]
      142 GETUPVAL                         R7 4
      143 JUMPIFEQ                         R6 R7 ; [+6]
      145 GETUPVAL                         R6 4
      146 JUMPIFEQ                         R0 R6 ; [+2]
      148 LOADB                            R5 0 +1
      149 LOADB                            R5 1
      150 SETTABLEKS                       R5 R4 K28 ["Selected"]
      152 SETTABLEKS                       R0 R4 K29 ["Index"]
      154 GETUPVAL                         R5 5
      155 GETTABLEKS                       R5 R5 K30 ["Enabled"]
      157 SETTABLEKS                       R5 R4 K30 ["Enabled"]
      159 SETTABLEKS                       R0 R4 K9 ["LayoutOrder"]
      161 NEWCLOSURE                       R5 P1
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R5 R4 K32 ["OnClicked"]
      166 CALL                             R2 2 -1
      167 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 LOADK                            R6 K3 ["Places"]
        7 LOADK                            R7 K4 ["ServerFill"]
        8 NAMECALL                         R4 R2 K5 ["getText"]
       10 CALL                             R4 3 1
       11 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R1 K7 ["Enabled"]
       15 GETTABLEKS                       R7 R1 K8 ["Selected"]
       17 GETTABLEKS                       R8 R1 K9 ["CustomSocialSlotsCount"]
       19 GETTABLEKS                       R9 R1 K10 ["ErrorMessage"]
       21 GETTABLEKS                       R10 R1 K11 ["OnSocialSlotTypeChanged"]
       23 GETTABLEKS                       R11 R1 K12 ["OnCustomSocialSlotsCountChanged"]
       25 JUMPIFEQKS                       R7 K13 ["Custom"] ; [+2]
       27 LOADB                            R12 0 +1
       28 LOADB                            R12 1
       29 LOADB                            R13 0
       30 GETUPVAL                         R14 0
       31 CALL                             R14 0 1
       32 JUMPIFNOT                        R14 ; [+13]
       33 GETUPVAL                         R14 1
       34 LOADK                            R16 K14 ["RenameFriendsToConnections"]
       35 NAMECALL                         R14 R14 K15 ["GetPluginPolicy"]
       37 CALL                             R14 2 1
       38 JUMPIFNOT                        R14 ; [+6]
       39 GETTABLEKS                       R15 R14 K7 ["Enabled"]
       41 JUMPIFNOT                        R15 ; [+3]
       42 GETTABLEKS                       R13 R14 K7 ["Enabled"]
       44 JUMP                             ; [+1]
       45 LOADB                            R13 0
       46 NEWTABLE                         R14 0 3
       48 DUPTABLE                         R15 K20 [{["Id"] = "Automatic", ["Title"], ["Description"]}]
       49 LOADK                            R18 K3 ["Places"]
       50 LOADK                            R19 K21 ["OptimizedTitle"]
       51 NAMECALL                         R16 R2 K5 ["getText"]
       53 CALL                             R16 3 1
       54 SETTABLEKS                       R16 R15 K18 ["Title"]
       56 LOADK                            R18 K3 ["Places"]
       57 LOADK                            R19 K22 ["OptimizedDescription"]
       58 NAMECALL                         R16 R2 K5 ["getText"]
       60 CALL                             R16 3 1
       61 SETTABLEKS                       R16 R15 K19 ["Description"]
       63 DUPTABLE                         R16 K24 [{["Id"] = "Empty", ["Title"], ["Description"]}]
       64 LOADK                            R19 K3 ["Places"]
       65 LOADK                            R20 K25 ["MaximumTitle"]
       66 NAMECALL                         R17 R2 K5 ["getText"]
       68 CALL                             R17 3 1
       69 SETTABLEKS                       R17 R16 K18 ["Title"]
       71 LOADK                            R19 K3 ["Places"]
       72 LOADK                            R20 K26 ["MaximumWarning"]
       73 NAMECALL                         R17 R2 K5 ["getText"]
       75 CALL                             R17 3 1
       76 SETTABLEKS                       R17 R16 K19 ["Description"]
       78 DUPTABLE                         R17 K27 [{["Id"] = "Custom", ["Title"], ["Description"]}]
       79 LOADK                            R20 K3 ["Places"]
       80 LOADK                            R21 K28 ["CustomizeSlotsTitle"]
       81 NAMECALL                         R18 R2 K5 ["getText"]
       83 CALL                             R18 3 1
       84 SETTABLEKS                       R18 R17 K18 ["Title"]
       86 JUMPIFNOT                        R13 ; [+6]
       87 LOADK                            R20 K3 ["Places"]
       88 LOADK                            R21 K29 ["CustomizeSlotsDescriptionConnections"]
       89 NAMECALL                         R18 R2 K5 ["getText"]
       91 CALL                             R18 3 1
       92 JUMP                             ; [+5]
       93 LOADK                            R20 K3 ["Places"]
       94 LOADK                            R21 K30 ["CustomizeSlotsDescription"]
       95 NAMECALL                         R18 R2 K5 ["getText"]
       97 CALL                             R18 3 1
       98 SETTABLEKS                       R18 R17 K19 ["Description"]
      100 SETLIST                          R14 R15 3 [1]
      102 GETUPVAL                         R15 2
      103 GETTABLEKS                       R15 R15 K31 ["createElement"]
      105 GETUPVAL                         R16 3
      106 DUPTABLE                         R17 K36 [{["axis"], ["minimumSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      107 GETUPVAL                         R18 3
      108 GETTABLEKS                       R18 R18 K37 ["Axis"]
      110 GETTABLEKS                       R18 R18 K38 ["Vertical"]
      112 SETTABLEKS                       R18 R17 K32 ["axis"]
      114 GETIMPORT                        R18 K41 [UDim2.new]
      116 LOADN                            R19 1
      117 LOADN                            R20 0
      118 LOADN                            R21 0
      119 LOADN                            R22 0
      120 CALL                             R18 4 1
      121 SETTABLEKS                       R18 R17 K33 ["minimumSize"]
      123 SETTABLEKS                       R5 R17 K6 ["LayoutOrder"]
      125 DUPTABLE                         R18 K43 [{"ServerFillToggle"}]
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R19 R19 K31 ["createElement"]
      129 GETUPVAL                         R20 4
      130 DUPTABLE                         R21 K46 [{"Title", "Buttons", "Enabled", "Selected", "RenderItem"}]
      131 SETTABLEKS                       R4 R21 K18 ["Title"]
      133 SETTABLEKS                       R14 R21 K44 ["Buttons"]
      135 SETTABLEKS                       R6 R21 K7 ["Enabled"]
      137 SETTABLEKS                       R7 R21 K8 ["Selected"]
      139 NEWCLOSURE                       R22 P0
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          VAL R3
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R12
      148 CAPTURE                          UPVAL U6
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R22 R21 K45 ["RenderItem"]
      154 CALL                             R19 2 1
      155 SETTABLEKS                       R19 R18 K42 ["ServerFillToggle"]
      157 CALL                             R15 3 -1
      158 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PluginPolicyService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["FitFrame"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K9 ["Packages"]
       35 GETTABLEKS                       R5 R5 K12 ["Framework"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R2 K13 ["FitFrameOnAxis"]
       40 GETTABLEKS                       R6 R4 K14 ["UI"]
       42 GETTABLEKS                       R7 R6 K15 ["TextInput"]
       44 GETTABLEKS                       R8 R4 K16 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K17 ["withContext"]
       48 GETIMPORT                        R10 K8 [require]
       50 GETTABLEKS                       R11 R1 K18 ["Src"]
       52 GETTABLEKS                       R11 R11 K19 ["Components"]
       54 GETTABLEKS                       R11 R11 K20 ["RadioButtonSet"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K8 [require]
       59 GETTABLEKS                       R12 R1 K18 ["Src"]
       61 GETTABLEKS                       R12 R12 K19 ["Components"]
       63 GETTABLEKS                       R12 R12 K21 ["RadioButton"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K8 [require]
       68 GETTABLEKS                       R13 R1 K18 ["Src"]
       70 GETTABLEKS                       R13 R13 K22 ["Flags"]
       72 GETTABLEKS                       R13 R13 K23 ["getFFlagStudioFriendToConnection"]
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R3 K24 ["PureComponent"]
       77 LOADK                            R15 K25 ["ServerFill"]
       78 NAMECALL                         R13 R13 K26 ["extend"]
       80 CALL                             R13 2 1
       81 DUPCLOSURE                       R14 K27 [PROTO_3]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R14 R13 K28 ["render"]
       91 MOVE                             R14 R9
       92 DUPTABLE                         R15 K31 [{"Localization", "Stylizer"}]
       93 GETTABLEKS                       R16 R8 K29 ["Localization"]
       95 SETTABLEKS                       R16 R15 K29 ["Localization"]
       97 GETTABLEKS                       R16 R8 K30 ["Stylizer"]
       99 SETTABLEKS                       R16 R15 K30 ["Stylizer"]
      101 CALL                             R14 1 1
      102 MOVE                             R15 R13
      103 CALL                             R14 1 1
      104 MOVE                             R13 R14
      105 RETURN                           R13 1
