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
       61 DUPTABLE                         R10 K35 [{"Position", "Size", "BackgroundTransparency", "TextColor3", "TextTransparency", "Font", "TextSize", "Text", "TextXAlignment", "TextYAlignment"}]
       62 GETIMPORT                        R11 K38 [UDim2.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 59
       66 LOADN                            R14 0
       67 LOADN                            R15 0
       68 CALL                             R11 4 1
       69 SETTABLEKS                       R11 R10 K26 ["Position"]
       71 GETIMPORT                        R11 K38 [UDim2.new]
       73 LOADN                            R12 0
       74 GETTABLEKS                       R13 R5 K12 ["X"]
       76 LOADN                            R14 0
       77 LOADN                            R15 24
       78 CALL                             R11 4 1
       79 SETTABLEKS                       R11 R10 K27 ["Size"]
       81 LOADN                            R11 1
       82 SETTABLEKS                       R11 R10 K28 ["BackgroundTransparency"]
       84 GETUPVAL                         R12 4
       85 GETTABLEKS                       R12 R12 K39 ["getRadioButtonTextColor"]
       87 GETTABLEKS                       R13 R0 K0 ["props"]
       89 CALL                             R12 1 1
       90 JUMPIFNOT                        R12 ; [+7]
       91 GETUPVAL                         R11 4
       92 GETTABLEKS                       R11 R11 K39 ["getRadioButtonTextColor"]
       94 GETTABLEKS                       R12 R0 K0 ["props"]
       96 CALL                             R11 1 1
       97 JUMP                             ; [+6]
       98 GETTABLEKS                       R11 R3 K40 ["fontStyle"]
      100 GETTABLEKS                       R11 R11 K41 ["Header"]
      102 GETTABLEKS                       R11 R11 K29 ["TextColor3"]
      104 SETTABLEKS                       R11 R10 K29 ["TextColor3"]
      106 GETTABLEKS                       R12 R0 K0 ["props"]
      108 GETTABLEKS                       R12 R12 K22 ["IsEnabled"]
      110 JUMPIFNOT                        R12 ; [+7]
      111 GETTABLEKS                       R12 R0 K0 ["props"]
      113 GETTABLEKS                       R12 R12 K24 ["PlayerChoice"]
      115 JUMPIF                           R12 ; [+2]
      116 LOADN                            R11 0
      117 JUMP                             ; [+1]
      118 LOADK                            R11 K42 [0.5]
      119 SETTABLEKS                       R11 R10 K30 ["TextTransparency"]
      121 GETIMPORT                        R11 K10 [Enum.Font.SourceSans]
      123 SETTABLEKS                       R11 R10 K8 ["Font"]
      125 LOADN                            R11 22
      126 SETTABLEKS                       R11 R10 K31 ["TextSize"]
      128 SETTABLEKS                       R4 R10 K32 ["Text"]
      130 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R11 R10 K33 ["TextXAlignment"]
      134 GETIMPORT                        R11 K46 [Enum.TextYAlignment.Center]
      136 SETTABLEKS                       R11 R10 K34 ["TextYAlignment"]
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R7 K14 ["CustomItemLabel"]
      141 GETUPVAL                         R8 2
      142 GETTABLEKS                       R8 R8 K17 ["createElement"]
      144 GETUPVAL                         R9 5
      145 DUPTABLE                         R10 K54 [{"Disabled", "ErrorText", "OnTextChanged", "OnFocusLost", "OnValidateText", "PlaceholderText", "Position", "Width", "Text"}]
      146 GETTABLEKS                       R12 R0 K0 ["props"]
      148 GETTABLEKS                       R12 R12 K22 ["IsEnabled"]
      150 NOT                              R11 R12
      151 SETTABLEKS                       R11 R10 K47 ["Disabled"]
      153 GETTABLEKS                       R11 R0 K0 ["props"]
      155 GETTABLEKS                       R11 R11 K55 ["ErrorMessage"]
      157 SETTABLEKS                       R11 R10 K48 ["ErrorText"]
      159 GETTABLEKS                       R11 R0 K56 ["onTextChanged"]
      161 SETTABLEKS                       R11 R10 K49 ["OnTextChanged"]
      163 GETTABLEKS                       R11 R0 K57 ["onFocusLost"]
      165 SETTABLEKS                       R11 R10 K50 ["OnFocusLost"]
      167 GETTABLEKS                       R11 R0 K58 ["onValidateText"]
      169 SETTABLEKS                       R11 R10 K51 ["OnValidateText"]
      171 LOADK                            R13 K4 ["General"]
      172 LOADK                            R14 K59 ["AvatarOverrideId"]
      173 NAMECALL                         R11 R2 K6 ["getText"]
      175 CALL                             R11 3 1
      176 SETTABLEKS                       R11 R10 K52 ["PlaceholderText"]
      178 GETIMPORT                        R11 K38 [UDim2.new]
      180 LOADN                            R12 0
      181 MOVE                             R13 R6
      182 LOADN                            R14 0
      183 LOADN                            R15 0
      184 CALL                             R11 4 1
      185 SETTABLEKS                       R11 R10 K26 ["Position"]
      187 LOADN                            R11 175
      188 SETTABLEKS                       R11 R10 K53 ["Width"]
      190 GETTABLEKS                       R11 R0 K3 ["currentTextInputBoxText"]
      192 SETTABLEKS                       R11 R10 K32 ["Text"]
      194 CALL                             R8 2 1
      195 SETTABLEKS                       R8 R7 K15 ["InputBox"]
      197 GETUPVAL                         R8 2
      198 GETTABLEKS                       R8 R8 K17 ["createElement"]
      200 GETUPVAL                         R9 6
      201 DUPTABLE                         R10 K62 [{"LayoutOrder", "Title"}]
      202 GETTABLEKS                       R12 R0 K0 ["props"]
      204 GETTABLEKS                       R12 R12 K60 ["LayoutOrder"]
      206 ORK                              R11 R12 K63 [1]
      207 SETTABLEKS                       R11 R10 K60 ["LayoutOrder"]
      209 GETTABLEKS                       R11 R0 K0 ["props"]
      211 GETTABLEKS                       R11 R11 K61 ["Title"]
      213 SETTABLEKS                       R11 R10 K61 ["Title"]
      215 MOVE                             R11 R7
      216 CALL                             R8 3 -1
      217 RETURN                           R8 -1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 136
        3 LOADN                            R5 136
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
