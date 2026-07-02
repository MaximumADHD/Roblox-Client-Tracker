PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["currentTextInputBoxText"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetValue"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["SetValue"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["currentTextInputBoxText"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 [""] ; [+10]
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tonumber]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 LOADNIL                          R2
       13 JUMPIF                           R1 ; [+11]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["props"]
       17 GETTABLEKS                       R3 R3 K4 ["Localization"]
       19 LOADK                            R6 K5 ["General"]
       20 LOADK                            R7 K6 ["NumberError"]
       21 NAMECALL                         R4 R3 K7 ["getText"]
       23 CALL                             R4 3 1
       24 MOVE                             R2 R4
       25 RETURN                           R1 2

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onTextChanged"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onFocusLost"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["onValidateText"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R0 K3 ["currentTextInputBoxText"]
       13 LOADK                            R6 K4 ["General"]
       14 LOADK                            R7 K5 ["AvatarOverrideItem"]
       15 NAMECALL                         R4 R2 K6 ["getText"]
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R4
       20 LOADN                            R7 22
       21 GETIMPORT                        R8 K10 [Enum.Font.SourceSans]
       23 CALL                             R5 3 1
       24 LOADN                            R8 59
       25 GETTABLEKS                       R9 R5 K12 ["X"]
       27 ADD                              R7 R8 R9
       28 ADDK                             R6 R7 K11 [8]
       29 DUPTABLE                         R7 K16 [{"ToggleButton", "CustomItemLabel", "InputBox"}]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K17 ["createElement"]
       33 GETUPVAL                         R9 3
       34 DUPTABLE                         R10 K21 [{"Enabled", "OnClick", "Selected"}]
       35 GETTABLEKS                       R11 R0 K0 ["props"]
       37 GETTABLEKS                       R11 R11 K22 ["IsEnabled"]
       39 SETTABLEKS                       R11 R10 K18 ["Enabled"]
       41 GETTABLEKS                       R11 R0 K0 ["props"]
       43 GETTABLEKS                       R11 R11 K23 ["SetPlayerChoiceValue"]
       45 SETTABLEKS                       R11 R10 K19 ["OnClick"]
       47 GETTABLEKS                       R12 R0 K0 ["props"]
       49 GETTABLEKS                       R12 R12 K24 ["PlayerChoice"]
       51 NOT                              R11 R12
       52 SETTABLEKS                       R11 R10 K20 ["Selected"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K13 ["ToggleButton"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K17 ["createElement"]
       60 LOADK                            R9 K25 ["TextLabel"]
       61 DUPTABLE                         R10 K37 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextTransparency"], ["Font"], ["TextSize"] = 22, ["Text"], ["TextXAlignment"], ["TextYAlignment"]}]
       62 GETIMPORT                        R11 K40 [UDim2.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 59
       66 LOADN                            R14 0
       67 LOADN                            R15 0
       68 CALL                             R11 4 1
       69 SETTABLEKS                       R11 R10 K26 ["Position"]
       71 GETIMPORT                        R11 K40 [UDim2.new]
       73 LOADN                            R12 0
       74 GETTABLEKS                       R13 R5 K12 ["X"]
       76 LOADN                            R14 0
       77 LOADN                            R15 24
       78 CALL                             R11 4 1
       79 SETTABLEKS                       R11 R10 K27 ["Size"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R12 R12 K41 ["getRadioButtonTextColor"]
       84 GETTABLEKS                       R13 R0 K0 ["props"]
       86 CALL                             R12 1 1
       87 JUMPIFNOT                        R12 ; [+7]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K41 ["getRadioButtonTextColor"]
       91 GETTABLEKS                       R12 R0 K0 ["props"]
       93 CALL                             R11 1 1
       94 JUMP                             ; [+6]
       95 GETTABLEKS                       R11 R3 K42 ["fontStyle"]
       97 GETTABLEKS                       R11 R11 K43 ["Header"]
       99 GETTABLEKS                       R11 R11 K30 ["TextColor3"]
      101 SETTABLEKS                       R11 R10 K30 ["TextColor3"]
      103 GETTABLEKS                       R12 R0 K0 ["props"]
      105 GETTABLEKS                       R12 R12 K22 ["IsEnabled"]
      107 JUMPIFNOT                        R12 ; [+7]
      108 GETTABLEKS                       R12 R0 K0 ["props"]
      110 GETTABLEKS                       R12 R12 K24 ["PlayerChoice"]
      112 JUMPIF                           R12 ; [+2]
      113 LOADN                            R11 0
      114 JUMP                             ; [+1]
      115 LOADK                            R11 K44 [0.5]
      116 SETTABLEKS                       R11 R10 K31 ["TextTransparency"]
      118 GETIMPORT                        R11 K10 [Enum.Font.SourceSans]
      120 SETTABLEKS                       R11 R10 K8 ["Font"]
      122 SETTABLEKS                       R4 R10 K34 ["Text"]
      124 GETIMPORT                        R11 K46 [Enum.TextXAlignment.Left]
      126 SETTABLEKS                       R11 R10 K35 ["TextXAlignment"]
      128 GETIMPORT                        R11 K48 [Enum.TextYAlignment.Center]
      130 SETTABLEKS                       R11 R10 K36 ["TextYAlignment"]
      132 CALL                             R8 2 1
      133 SETTABLEKS                       R8 R7 K14 ["CustomItemLabel"]
      135 GETUPVAL                         R8 2
      136 GETTABLEKS                       R8 R8 K17 ["createElement"]
      138 GETUPVAL                         R9 5
      139 DUPTABLE                         R10 K57 [{["Disabled"], ["ErrorText"], ["OnTextChanged"], ["OnFocusLost"], ["OnValidateText"], ["PlaceholderText"], ["Position"], ["Width"] = 175, ["Text"]}]
      140 GETTABLEKS                       R12 R0 K0 ["props"]
      142 GETTABLEKS                       R12 R12 K22 ["IsEnabled"]
      144 NOT                              R11 R12
      145 SETTABLEKS                       R11 R10 K49 ["Disabled"]
      147 GETTABLEKS                       R11 R0 K0 ["props"]
      149 GETTABLEKS                       R11 R11 K58 ["ErrorMessage"]
      151 SETTABLEKS                       R11 R10 K50 ["ErrorText"]
      153 GETTABLEKS                       R11 R0 K59 ["onTextChanged"]
      155 SETTABLEKS                       R11 R10 K51 ["OnTextChanged"]
      157 GETTABLEKS                       R11 R0 K60 ["onFocusLost"]
      159 SETTABLEKS                       R11 R10 K52 ["OnFocusLost"]
      161 GETTABLEKS                       R11 R0 K61 ["onValidateText"]
      163 SETTABLEKS                       R11 R10 K53 ["OnValidateText"]
      165 LOADK                            R13 K4 ["General"]
      166 LOADK                            R14 K62 ["AvatarOverrideId"]
      167 NAMECALL                         R11 R2 K6 ["getText"]
      169 CALL                             R11 3 1
      170 SETTABLEKS                       R11 R10 K54 ["PlaceholderText"]
      172 GETIMPORT                        R11 K40 [UDim2.new]
      174 LOADN                            R12 0
      175 MOVE                             R13 R6
      176 LOADN                            R14 0
      177 LOADN                            R15 0
      178 CALL                             R11 4 1
      179 SETTABLEKS                       R11 R10 K26 ["Position"]
      181 GETTABLEKS                       R11 R0 K3 ["currentTextInputBoxText"]
      183 SETTABLEKS                       R11 R10 K34 ["Text"]
      185 CALL                             R8 2 1
      186 SETTABLEKS                       R8 R7 K15 ["InputBox"]
      188 GETUPVAL                         R8 2
      189 GETTABLEKS                       R8 R8 K17 ["createElement"]
      191 GETUPVAL                         R9 6
      192 DUPTABLE                         R10 K65 [{"LayoutOrder", "Title"}]
      193 GETTABLEKS                       R12 R0 K0 ["props"]
      195 GETTABLEKS                       R12 R12 K63 ["LayoutOrder"]
      197 ORK                              R11 R12 K29 [1]
      198 SETTABLEKS                       R11 R10 K63 ["LayoutOrder"]
      200 GETTABLEKS                       R11 R0 K0 ["props"]
      202 GETTABLEKS                       R11 R11 K64 ["Title"]
      204 SETTABLEKS                       R11 R10 K64 ["Title"]
      206 MOVE                             R11 R7
      207 CALL                             R8 3 -1
      208 RETURN                           R8 -1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 5000
        3 LOADN                            R5 5000
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["TextService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K7 ["GetTextSize"]
       17 CALL                             R4 5 -1
       18 RETURN                           R4 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["InputBoxText"]
        4 JUMPIFEQKNIL                     R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K1 ["InputBoxText"]
       10 JUMPIFNOTEQKS                    R2 K2 ["0"] ; [+3]
       12 LOADK                            R1 K3 [""]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K0 ["props"]
       16 GETTABLEKS                       R1 R1 K1 ["InputBoxText"]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R5 R4 K9 ["withContext"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R7 R6 K11 ["ToggleButton"]
       39 GETTABLEKS                       R8 R6 K12 ["TitledFrame"]
       41 GETTABLEKS                       R9 R6 K13 ["TextInput"]
       43 GETIMPORT                        R10 K4 [require]
       45 GETTABLEKS                       R11 R0 K14 ["Util"]
       47 GETTABLEKS                       R11 R11 K15 ["StateInterfaceTheme"]
       49 CALL                             R10 1 1
       50 LOADNIL                          R11
       51 LOADNIL                          R12
       52 GETTABLEKS                       R13 R2 K16 ["PureComponent"]
       54 LOADK                            R15 K17 ["AssetInput"]
       55 NAMECALL                         R13 R13 K18 ["extend"]
       57 CALL                             R13 2 1
       58 DUPCLOSURE                       R14 K19 [PROTO_3]
       59 SETTABLEKS                       R14 R13 K20 ["init"]
       61 NEWCLOSURE                       R14 P1
       62 CAPTURE                          REF R12
       63 CAPTURE                          REF R11
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R14 R13 K21 ["render"]
       71 MOVE                             R14 R5
       72 DUPTABLE                         R15 K25 [{"Localization", "Mouse", "Stylizer"}]
       73 GETTABLEKS                       R16 R4 K22 ["Localization"]
       75 SETTABLEKS                       R16 R15 K22 ["Localization"]
       77 GETTABLEKS                       R16 R4 K23 ["Mouse"]
       79 SETTABLEKS                       R16 R15 K23 ["Mouse"]
       81 GETTABLEKS                       R16 R4 K24 ["Stylizer"]
       83 SETTABLEKS                       R16 R15 K24 ["Stylizer"]
       85 CALL                             R14 1 1
       86 MOVE                             R15 R13
       87 CALL                             R14 1 1
       88 MOVE                             R13 R14
       89 DUPCLOSURE                       R11 K26 [PROTO_5]
       90 DUPCLOSURE                       R12 K27 [PROTO_6]
       91 CLOSEUPVALS                      R11
       92 RETURN                           R13 1
