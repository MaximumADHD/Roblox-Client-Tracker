PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K1 ["current"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["setValue"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       16 GETTABLEKS                       R5 R0 K8 ["value"]
       18 ORK                              R4 R5 K7 [""]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K9 ["useRef"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K10 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R8 0 1
       32 GETTABLEKS                       R9 R0 K11 ["setValue"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R8 R0 K12 ["definition"]
       39 GETTABLEKS                       R8 R8 K13 ["multiLine"]
       41 JUMPIFEQKB                       R8 TRUE ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 GETTABLEKS                       R9 R0 K12 ["definition"]
       47 GETTABLEKS                       R9 R9 K14 ["placeholder"]
       49 ORK                              R8 R9 K7 [""]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K15 ["FFlagAssistantUseFoundationTextArea"]
       53 JUMPIFNOT                        R9 ; [+60]
       54 DUPTABLE                         R9 K24 [{["label"] = "", ["text"], ["onChanged"], ["placeholder"], ["size"], ["variant"], ["width"], ["isDisabled"], ["LayoutOrder"]}]
       55 GETTABLEKS                       R11 R0 K8 ["value"]
       57 ORK                              R10 R11 K7 [""]
       58 SETTABLEKS                       R10 R9 K17 ["text"]
       60 GETTABLEKS                       R10 R0 K11 ["setValue"]
       62 SETTABLEKS                       R10 R9 K18 ["onChanged"]
       64 SETTABLEKS                       R8 R9 K14 ["placeholder"]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K25 ["Enums"]
       69 GETTABLEKS                       R10 R10 K26 ["InputSize"]
       71 GETTABLEKS                       R10 R10 K27 ["XSmall"]
       73 SETTABLEKS                       R10 R9 K19 ["size"]
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K25 ["Enums"]
       78 GETTABLEKS                       R10 R10 K28 ["InputVariant"]
       80 GETTABLEKS                       R10 R10 K29 ["Contrast"]
       82 SETTABLEKS                       R10 R9 K20 ["variant"]
       84 GETIMPORT                        R10 K32 [UDim.new]
       86 LOADN                            R11 1
       87 LOADN                            R12 0
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K21 ["width"]
       91 GETTABLEKS                       R11 R0 K33 ["interactable"]
       93 NOT                              R10 R11
       94 SETTABLEKS                       R10 R9 K22 ["isDisabled"]
       96 GETTABLEKS                       R10 R0 K23 ["LayoutOrder"]
       98 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
      100 JUMPIFNOT                        R7 ; [+8]
      101 LOADN                            R10 3
      102 SETTABLEKS                       R10 R9 K34 ["numLines"]
      104 GETUPVAL                         R10 3
      105 GETUPVAL                         R11 4
      106 MOVE                             R12 R9
      107 CALL                             R10 2 -1
      108 RETURN                           R10 -1
      109 GETUPVAL                         R10 3
      110 GETUPVAL                         R11 5
      111 MOVE                             R12 R9
      112 CALL                             R10 2 -1
      113 RETURN                           R10 -1
      114 GETUPVAL                         R9 6
      115 CALL                             R9 0 1
      116 GETUPVAL                         R10 3
      117 GETUPVAL                         R11 7
      118 DUPTABLE                         R12 K37 [{["tag"] = "row gap-xsmall size-full-full radius-small clip bg-shift-200", ["LayoutOrder"]}]
      119 GETTABLEKS                       R13 R0 K23 ["LayoutOrder"]
      121 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
      123 DUPTABLE                         R13 K39 [{"InputWrapper"}]
      124 GETUPVAL                         R14 3
      125 GETUPVAL                         R15 7
      126 DUPTABLE                         R16 K41 [{["tag"] = "fill size-0-full padding-left-small padding-top-small", ["LayoutOrder"]}]
      127 MOVE                             R17 R9
      128 CALL                             R17 0 1
      129 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      131 DUPTABLE                         R17 K43 [{"StringTextBox"}]
      132 GETUPVAL                         R18 3
      133 LOADK                            R19 K44 ["TextBox"]
      134 NEWTABLE                         R20 32 0
      136 SETTABLEKS                       R4 R20 K45 ["Text"]
      138 GETUPVAL                         R21 1
      139 GETTABLEKS                       R21 R21 K46 ["Change"]
      141 GETTABLEKS                       R21 R21 K45 ["Text"]
      143 SETTABLE                         R6 R20 R21
      144 GETIMPORT                        R21 K49 [UDim2.fromScale]
      146 LOADN                            R22 1
      147 LOADN                            R23 1
      148 CALL                             R21 2 1
      149 SETTABLEKS                       R21 R20 K50 ["Size"]
      151 LOADN                            R21 1
      152 SETTABLEKS                       R21 R20 K51 ["BackgroundTransparency"]
      154 SETTABLEKS                       R7 R20 K52 ["MultiLine"]
      156 GETIMPORT                        R21 K56 [Enum.TextXAlignment.Left]
      158 SETTABLEKS                       R21 R20 K54 ["TextXAlignment"]
      160 JUMPIFNOT                        R7 ; [+3]
      161 GETIMPORT                        R21 K59 [Enum.TextYAlignment.Top]
      163 JUMP                             ; [+2]
      164 GETIMPORT                        R21 K61 [Enum.TextYAlignment.Center]
      166 SETTABLEKS                       R21 R20 K57 ["TextYAlignment"]
      168 SETTABLEKS                       R8 R20 K62 ["PlaceholderText"]
      170 GETTABLEKS                       R21 R3 K63 ["Color3"]
      172 SETTABLEKS                       R21 R20 K64 ["TextColor3"]
      174 GETTABLEKS                       R21 R3 K65 ["Transparency"]
      176 SETTABLEKS                       R21 R20 K66 ["TextTransparency"]
      178 GETUPVAL                         R22 8
      179 JUMPIFNOT                        R22 ; [+2]
      180 LOADNIL                          R21
      181 JUMP                             ; [+2]
      182 GETTABLEKS                       R21 R2 K67 ["Font"]
      184 SETTABLEKS                       R21 R20 K67 ["Font"]
      186 GETUPVAL                         R22 8
      187 JUMPIFNOT                        R22 ; [+5]
      188 GETUPVAL                         R21 9
      189 GETTABLEKS                       R22 R2 K67 ["Font"]
      191 CALL                             R21 1 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R21
      194 SETTABLEKS                       R21 R20 K68 ["FontFace"]
      196 GETTABLEKS                       R21 R2 K69 ["FontSize"]
      198 SETTABLEKS                       R21 R20 K70 ["TextSize"]
      200 SETTABLEKS                       R7 R20 K71 ["TextWrapped"]
      202 GETTABLEKS                       R21 R0 K33 ["interactable"]
      204 SETTABLEKS                       R21 R20 K72 ["Interactable"]
      206 LOADB                            R21 0
      207 SETTABLEKS                       R21 R20 K73 ["ClearTextOnFocus"]
      209 GETTABLEKS                       R21 R0 K33 ["interactable"]
      211 SETTABLEKS                       R21 R20 K74 ["TextEditable"]
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K42 ["StringTextBox"]
      216 CALL                             R14 3 1
      217 SETTABLEKS                       R14 R13 K38 ["InputWrapper"]
      219 CALL                             R10 3 -1
      220 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K4 ["Parent"]
       35 GETTABLEKS                       R7 R7 K4 ["Parent"]
       37 GETTABLEKS                       R7 R7 K11 ["PropertyRowTypes"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R2 K12 ["TextArea"]
       42 GETTABLEKS                       R8 R2 K13 ["TextInput"]
       44 GETTABLEKS                       R9 R2 K14 ["View"]
       46 GETTABLEKS                       R10 R2 K15 ["Utility"]
       48 GETTABLEKS                       R10 R10 K10 ["Flags"]
       50 GETTABLEKS                       R10 R10 K16 ["FoundationStudioFontFaceMigration"]
       52 GETTABLEKS                       R11 R2 K15 ["Utility"]
       54 GETTABLEKS                       R11 R11 K17 ["normalizeFontFace"]
       56 GETTABLEKS                       R12 R4 K18 ["createNextOrder"]
       58 GETTABLEKS                       R13 R3 K19 ["createElement"]
       60 DUPCLOSURE                       R14 K20 [PROTO_1]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 RETURN                           R14 1
