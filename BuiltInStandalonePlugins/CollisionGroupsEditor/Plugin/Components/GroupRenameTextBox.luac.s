PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 GETTABLEKS                       R1 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["Group"]
       10 GETTABLEKS                       R1 R1 K4 ["Name"]
       12 SETTABLEKS                       R1 R0 K5 ["text"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 SETTABLEKS                       R2 R1 K1 ["text"]
        5 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Group"]
        4 GETTABLEKS                       R2 R2 K1 ["OnRenamed"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["text"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["Group"]
       14 GETTABLEKS                       R2 R2 K1 ["OnRenamed"]
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Group"]
        4 GETTABLEKS                       R1 R1 K1 ["OnRenamed"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["text"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["Group"]
       14 GETTABLEKS                       R1 R1 K1 ["OnRenamed"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Group"]
        8 GETIMPORT                        R5 K5 [game]
       10 LOADK                            R7 K6 ["CGERenameGroupOverflowFix"]
       11 NAMECALL                         R5 R5 K7 ["GetFastFlag"]
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R5 ; [+154]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K8 ["createElement"]
       18 LOADK                            R7 K9 ["Frame"]
       19 DUPTABLE                         R8 K16 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True}]
       20 GETTABLEKS                       R9 R1 K10 ["Size"]
       22 SETTABLEKS                       R9 R8 K10 ["Size"]
       24 GETTABLEKS                       R9 R1 K11 ["LayoutOrder"]
       26 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       28 DUPTABLE                         R9 K19 [{"TextInput", "OverflowGradient"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K8 ["createElement"]
       32 LOADK                            R11 K20 ["TextBox"]
       33 NEWTABLE                         R12 16 0
       35 GETIMPORT                        R13 K23 [UDim2.new]
       37 LOADN                            R14 1
       38 LOADN                            R15 -2
       39 LOADN                            R16 1
       40 LOADN                            R17 0
       41 CALL                             R13 4 1
       42 SETTABLEKS                       R13 R12 K10 ["Size"]
       44 LOADN                            R13 1
       45 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       47 GETTABLEKS                       R13 R1 K3 ["Group"]
       49 GETTABLEKS                       R13 R13 K24 ["Name"]
       51 SETTABLEKS                       R13 R12 K25 ["Text"]
       53 LOADB                            R13 0
       54 SETTABLEKS                       R13 R12 K26 ["TextWrapped"]
       56 LOADB                            R13 0
       57 SETTABLEKS                       R13 R12 K27 ["ClearTextOnFocus"]
       59 GETIMPORT                        R13 K31 [Enum.TextXAlignment.Right]
       61 SETTABLEKS                       R13 R12 K29 ["TextXAlignment"]
       63 LOADK                            R15 K32 ["Info"]
       64 LOADK                            R16 K33 ["NewGroupName"]
       65 NAMECALL                         R13 R3 K34 ["getText"]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K35 ["PlaceholderText"]
       70 LOADN                            R13 14
       71 SETTABLEKS                       R13 R12 K36 ["TextSize"]
       73 GETIMPORT                        R13 K39 [Enum.Font.SourceSans]
       75 SETTABLEKS                       R13 R12 K37 ["Font"]
       77 GETTABLEKS                       R13 R2 K40 ["RenameTextColor"]
       79 SETTABLEKS                       R13 R12 K41 ["TextColor3"]
       81 GETTABLEKS                       R13 R2 K42 ["RenamePlaceholderColor"]
       83 SETTABLEKS                       R13 R12 K43 ["PlaceholderColor3"]
       85 GETUPVAL                         R13 0
       86 GETTABLEKS                       R13 R13 K44 ["Ref"]
       88 GETTABLEKS                       R14 R0 K45 ["textBoxRef"]
       90 SETTABLE                         R14 R12 R13
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K46 ["Change"]
       94 GETTABLEKS                       R13 R13 K25 ["Text"]
       96 NEWCLOSURE                       R14 P0
       97 CAPTURE                          VAL R0
       98 SETTABLE                         R14 R12 R13
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R13 R13 K47 ["Event"]
      102 GETTABLEKS                       R13 R13 K48 ["FocusLost"]
      104 NEWCLOSURE                       R14 P1
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R0
      107 SETTABLE                         R14 R12 R13
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K17 ["TextInput"]
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R10 R10 K8 ["createElement"]
      114 LOADK                            R11 K9 ["Frame"]
      115 DUPTABLE                         R12 K55 [{["Size"], ["Position"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      116 GETIMPORT                        R13 K23 [UDim2.new]
      118 LOADN                            R14 0
      119 LOADN                            R15 16
      120 LOADN                            R16 1
      121 LOADN                            R17 0
      122 CALL                             R13 4 1
      123 SETTABLEKS                       R13 R12 K10 ["Size"]
      125 GETIMPORT                        R13 K57 [UDim2.fromScale]
      127 LOADN                            R14 0
      128 LOADN                            R15 0
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K49 ["Position"]
      132 GETTABLEKS                       R13 R2 K58 ["RenameOverflowGradientColor"]
      134 SETTABLEKS                       R13 R12 K50 ["BackgroundColor3"]
      136 DUPTABLE                         R13 K60 [{"Gradient"}]
      137 GETUPVAL                         R14 0
      138 GETTABLEKS                       R14 R14 K8 ["createElement"]
      140 LOADK                            R15 K61 ["UIGradient"]
      141 DUPTABLE                         R16 K63 [{"Transparency"}]
      142 GETIMPORT                        R17 K65 [NumberSequence.new]
      144 NEWTABLE                         R18 0 2
      146 GETIMPORT                        R19 K67 [NumberSequenceKeypoint.new]
      148 LOADN                            R20 0
      149 LOADN                            R21 0
      150 CALL                             R19 2 1
      151 GETIMPORT                        R20 K67 [NumberSequenceKeypoint.new]
      153 LOADN                            R21 1
      154 LOADN                            R22 1
      155 CALL                             R20 2 -1
      156 SETLIST                          R18 R19 -1 [1]
      158 CALL                             R17 1 1
      159 SETTABLEKS                       R17 R16 K62 ["Transparency"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K59 ["Gradient"]
      164 CALL                             R10 3 1
      165 SETTABLEKS                       R10 R9 K18 ["OverflowGradient"]
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1
      169 GETUPVAL                         R6 0
      170 GETTABLEKS                       R6 R6 K8 ["createElement"]
      172 GETUPVAL                         R7 1
      173 DUPTABLE                         R8 K72 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["ShouldFocus"] = True, ["TextXAlignment"], ["ForwardRef"], ["PlaceholderText"], ["OnTextChanged"], ["OnFocusLost"]}]
      174 GETTABLEKS                       R9 R1 K10 ["Size"]
      176 SETTABLEKS                       R9 R8 K10 ["Size"]
      178 GETTABLEKS                       R9 R1 K11 ["LayoutOrder"]
      180 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
      182 GETIMPORT                        R9 K31 [Enum.TextXAlignment.Right]
      184 SETTABLEKS                       R9 R8 K29 ["TextXAlignment"]
      186 GETTABLEKS                       R9 R0 K45 ["textBoxRef"]
      188 SETTABLEKS                       R9 R8 K69 ["ForwardRef"]
      190 LOADK                            R11 K32 ["Info"]
      191 LOADK                            R12 K33 ["NewGroupName"]
      192 NAMECALL                         R9 R3 K34 ["getText"]
      194 CALL                             R9 3 1
      195 SETTABLEKS                       R9 R8 K35 ["PlaceholderText"]
      197 NEWCLOSURE                       R9 P2
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R9 R8 K70 ["OnTextChanged"]
      201 NEWCLOSURE                       R9 P3
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R9 R8 K71 ["OnFocusLost"]
      206 CALL                             R6 2 -1
      207 RETURN                           R6 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 NAMECALL                         R2 R1 K2 ["CaptureFocus"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [game]
        9 LOADK                            R4 K5 ["CGERenameGroupOverflowFix"]
       10 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+9]
       14 LOADN                            R2 1
       15 SETTABLEKS                       R2 R1 K7 ["SelectionStart"]
       17 GETTABLEKS                       R4 R1 K9 ["Text"]
       19 LENGTH                           R3 R4
       20 ADDK                             R2 R3 K8 [1]
       21 SETTABLEKS                       R2 R1 K10 ["CursorPosition"]
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["DEPRECATED_TextInput"]
       29 GETTABLEKS                       R6 R1 K11 ["Component"]
       31 LOADK                            R8 K12 ["GroupRenameTextBox"]
       32 NAMECALL                         R6 R6 K13 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K14 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R7 R6 K15 ["init"]
       39 DUPCLOSURE                       R7 K16 [PROTO_5]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R7 R6 K17 ["render"]
       44 DUPCLOSURE                       R7 K18 [PROTO_6]
       45 SETTABLEKS                       R7 R6 K19 ["didMount"]
       47 GETTABLEKS                       R7 R3 K20 ["withContext"]
       49 DUPTABLE                         R8 K23 [{"Stylizer", "Localization"}]
       50 GETTABLEKS                       R9 R3 K21 ["Stylizer"]
       52 SETTABLEKS                       R9 R8 K21 ["Stylizer"]
       54 GETTABLEKS                       R9 R3 K22 ["Localization"]
       56 SETTABLEKS                       R9 R8 K22 ["Localization"]
       58 CALL                             R7 1 1
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 MOVE                             R6 R7
       62 RETURN                           R6 1
