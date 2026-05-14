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
        2 JUMPIFNOTEQKS                    R2 K1 ["Custom"] ; [+128]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K9 [{"axis", "minimumSize", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K10 ["Axis"]
       12 GETTABLEKS                       R5 R5 K11 ["Vertical"]
       14 SETTABLEKS                       R5 R4 K3 ["axis"]
       16 GETIMPORT                        R5 K14 [UDim2.new]
       18 LOADN                            R6 1
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K4 ["minimumSize"]
       25 GETIMPORT                        R5 K16 [UDim.new]
       27 LOADN                            R6 0
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K17 ["radioButton"]
       31 GETTABLEKS                       R7 R7 K18 ["padding"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K5 ["contentPadding"]
       36 LOADN                            R5 1
       37 SETTABLEKS                       R5 R4 K6 ["BackgroundTransparency"]
       39 GETIMPORT                        R5 K21 [Enum.FillDirection.Horizontal]
       41 SETTABLEKS                       R5 R4 K7 ["FillDirection"]
       43 SETTABLEKS                       R0 R4 K8 ["LayoutOrder"]
       45 DUPTABLE                         R5 K24 [{"RadioButton", "InputField"}]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K2 ["createElement"]
       49 GETUPVAL                         R7 3
       50 DUPTABLE                         R8 K32 [{"LayoutOrder", "Title", "Id", "Description", "Selected", "Index", "Enabled", "Children", "OnClicked"}]
       51 LOADN                            R9 1
       52 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       54 GETTABLEKS                       R9 R1 K25 ["Title"]
       56 SETTABLEKS                       R9 R8 K25 ["Title"]
       58 GETTABLEKS                       R9 R1 K0 ["Id"]
       60 SETTABLEKS                       R9 R8 K0 ["Id"]
       62 GETTABLEKS                       R9 R1 K26 ["Description"]
       64 SETTABLEKS                       R9 R8 K26 ["Description"]
       66 LOADB                            R9 1
       67 GETTABLEKS                       R10 R1 K0 ["Id"]
       69 GETUPVAL                         R11 4
       70 JUMPIFEQ                         R10 R11 ; [+6]
       72 GETUPVAL                         R10 4
       73 JUMPIFEQ                         R0 R10 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 SETTABLEKS                       R9 R8 K27 ["Selected"]
       79 SETTABLEKS                       R0 R8 K28 ["Index"]
       81 GETUPVAL                         R9 5
       82 GETTABLEKS                       R9 R9 K29 ["Enabled"]
       84 SETTABLEKS                       R9 R8 K29 ["Enabled"]
       86 GETTABLEKS                       R9 R1 K30 ["Children"]
       88 SETTABLEKS                       R9 R8 K30 ["Children"]
       90 NEWCLOSURE                       R9 P0
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R9 R8 K31 ["OnClicked"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K22 ["RadioButton"]
       98 GETUPVAL                         R6 7
       99 JUMPIFNOT                        R6 ; [+27]
      100 GETUPVAL                         R6 0
      101 GETTABLEKS                       R6 R6 K2 ["createElement"]
      103 GETUPVAL                         R7 8
      104 DUPTABLE                         R8 K37 [{"ErrorText", "LayoutOrder", "OnTextChanged", "Width", "Text"}]
      105 GETUPVAL                         R9 9
      106 SETTABLEKS                       R9 R8 K33 ["ErrorText"]
      108 LOADN                            R9 2
      109 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
      111 GETUPVAL                         R9 10
      112 SETTABLEKS                       R9 R8 K34 ["OnTextChanged"]
      114 GETUPVAL                         R9 2
      115 GETTABLEKS                       R9 R9 K38 ["placePage"]
      117 GETTABLEKS                       R9 R9 K39 ["textBox"]
      119 GETTABLEKS                       R9 R9 K40 ["length"]
      121 SETTABLEKS                       R9 R8 K35 ["Width"]
      123 GETUPVAL                         R9 11
      124 SETTABLEKS                       R9 R8 K36 ["Text"]
      126 CALL                             R6 2 1
      127 SETTABLEKS                       R6 R5 K23 ["InputField"]
      129 CALL                             R2 3 -1
      130 RETURN                           R2 -1
      131 GETUPVAL                         R2 0
      132 GETTABLEKS                       R2 R2 K2 ["createElement"]
      134 GETUPVAL                         R3 3
      135 DUPTABLE                         R4 K41 [{"Title", "Id", "Description", "Selected", "Index", "Enabled", "LayoutOrder", "OnClicked"}]
      136 GETTABLEKS                       R5 R1 K25 ["Title"]
      138 SETTABLEKS                       R5 R4 K25 ["Title"]
      140 GETTABLEKS                       R5 R1 K0 ["Id"]
      142 SETTABLEKS                       R5 R4 K0 ["Id"]
      144 GETTABLEKS                       R5 R1 K26 ["Description"]
      146 SETTABLEKS                       R5 R4 K26 ["Description"]
      148 LOADB                            R5 1
      149 GETTABLEKS                       R6 R1 K0 ["Id"]
      151 GETUPVAL                         R7 4
      152 JUMPIFEQ                         R6 R7 ; [+6]
      154 GETUPVAL                         R6 4
      155 JUMPIFEQ                         R0 R6 ; [+2]
      157 LOADB                            R5 0 +1
      158 LOADB                            R5 1
      159 SETTABLEKS                       R5 R4 K27 ["Selected"]
      161 SETTABLEKS                       R0 R4 K28 ["Index"]
      163 GETUPVAL                         R5 5
      164 GETTABLEKS                       R5 R5 K29 ["Enabled"]
      166 SETTABLEKS                       R5 R4 K29 ["Enabled"]
      168 SETTABLEKS                       R0 R4 K8 ["LayoutOrder"]
      170 NEWCLOSURE                       R5 P1
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R1
      173 SETTABLEKS                       R5 R4 K31 ["OnClicked"]
      175 CALL                             R2 2 -1
      176 RETURN                           R2 -1

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
       48 DUPTABLE                         R15 K19 [{"Id", "Title", "Description"}]
       49 LOADK                            R16 K20 ["Automatic"]
       50 SETTABLEKS                       R16 R15 K16 ["Id"]
       52 LOADK                            R18 K3 ["Places"]
       53 LOADK                            R19 K21 ["OptimizedTitle"]
       54 NAMECALL                         R16 R2 K5 ["getText"]
       56 CALL                             R16 3 1
       57 SETTABLEKS                       R16 R15 K17 ["Title"]
       59 LOADK                            R18 K3 ["Places"]
       60 LOADK                            R19 K22 ["OptimizedDescription"]
       61 NAMECALL                         R16 R2 K5 ["getText"]
       63 CALL                             R16 3 1
       64 SETTABLEKS                       R16 R15 K18 ["Description"]
       66 DUPTABLE                         R16 K19 [{"Id", "Title", "Description"}]
       67 LOADK                            R17 K23 ["Empty"]
       68 SETTABLEKS                       R17 R16 K16 ["Id"]
       70 LOADK                            R19 K3 ["Places"]
       71 LOADK                            R20 K24 ["MaximumTitle"]
       72 NAMECALL                         R17 R2 K5 ["getText"]
       74 CALL                             R17 3 1
       75 SETTABLEKS                       R17 R16 K17 ["Title"]
       77 LOADK                            R19 K3 ["Places"]
       78 LOADK                            R20 K25 ["MaximumWarning"]
       79 NAMECALL                         R17 R2 K5 ["getText"]
       81 CALL                             R17 3 1
       82 SETTABLEKS                       R17 R16 K18 ["Description"]
       84 DUPTABLE                         R17 K19 [{"Id", "Title", "Description"}]
       85 LOADK                            R18 K13 ["Custom"]
       86 SETTABLEKS                       R18 R17 K16 ["Id"]
       88 LOADK                            R20 K3 ["Places"]
       89 LOADK                            R21 K26 ["CustomizeSlotsTitle"]
       90 NAMECALL                         R18 R2 K5 ["getText"]
       92 CALL                             R18 3 1
       93 SETTABLEKS                       R18 R17 K17 ["Title"]
       95 JUMPIFNOT                        R13 ; [+6]
       96 LOADK                            R20 K3 ["Places"]
       97 LOADK                            R21 K27 ["CustomizeSlotsDescriptionConnections"]
       98 NAMECALL                         R18 R2 K5 ["getText"]
      100 CALL                             R18 3 1
      101 JUMP                             ; [+5]
      102 LOADK                            R20 K3 ["Places"]
      103 LOADK                            R21 K28 ["CustomizeSlotsDescription"]
      104 NAMECALL                         R18 R2 K5 ["getText"]
      106 CALL                             R18 3 1
      107 SETTABLEKS                       R18 R17 K18 ["Description"]
      109 SETLIST                          R14 R15 3 [1]
      111 GETUPVAL                         R15 2
      112 GETTABLEKS                       R15 R15 K29 ["createElement"]
      114 GETUPVAL                         R16 3
      115 DUPTABLE                         R17 K33 [{"axis", "minimumSize", "BackgroundTransparency", "LayoutOrder"}]
      116 GETUPVAL                         R18 3
      117 GETTABLEKS                       R18 R18 K34 ["Axis"]
      119 GETTABLEKS                       R18 R18 K35 ["Vertical"]
      121 SETTABLEKS                       R18 R17 K30 ["axis"]
      123 GETIMPORT                        R18 K38 [UDim2.new]
      125 LOADN                            R19 1
      126 LOADN                            R20 0
      127 LOADN                            R21 0
      128 LOADN                            R22 0
      129 CALL                             R18 4 1
      130 SETTABLEKS                       R18 R17 K31 ["minimumSize"]
      132 LOADN                            R18 1
      133 SETTABLEKS                       R18 R17 K32 ["BackgroundTransparency"]
      135 SETTABLEKS                       R5 R17 K6 ["LayoutOrder"]
      137 DUPTABLE                         R18 K40 [{"ServerFillToggle"}]
      138 GETUPVAL                         R19 2
      139 GETTABLEKS                       R19 R19 K29 ["createElement"]
      141 GETUPVAL                         R20 4
      142 DUPTABLE                         R21 K43 [{"Title", "Buttons", "Enabled", "Selected", "RenderItem"}]
      143 SETTABLEKS                       R4 R21 K17 ["Title"]
      145 SETTABLEKS                       R14 R21 K41 ["Buttons"]
      147 SETTABLEKS                       R6 R21 K7 ["Enabled"]
      149 SETTABLEKS                       R7 R21 K8 ["Selected"]
      151 NEWCLOSURE                       R22 P0
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R3
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R8
      164 SETTABLEKS                       R22 R21 K42 ["RenderItem"]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K39 ["ServerFillToggle"]
      169 CALL                             R15 3 -1
      170 RETURN                           R15 -1

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
