PROTO_0:
        0 DUPTABLE                         R0 K1 [{"TextPrompt"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Segmentation"]
        3 LOADK                            R4 K0 ["TextPrompt"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["TextPrompt"]
        9 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
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
       25 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       27 DUPCLOSURE                       R7 K11 [PROTO_0]
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K12 ["locale"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K13 ["useCallback"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R9 0 1
       45 GETTABLEKS                       R10 R0 K14 ["setValue"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETTABLEKS                       R9 R0 K15 ["definition"]
       52 GETTABLEKS                       R9 R9 K16 ["multiLine"]
       54 JUMPIFEQKB                       R9 TRUE ; [+2]
       56 LOADB                            R8 0 +1
       57 LOADB                            R8 1
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R10 R10 K17 ["FFlagAssistantAddPlaceholderProp"]
       61 JUMPIFNOT                        R10 ; [+6]
       62 GETTABLEKS                       R10 R0 K15 ["definition"]
       64 GETTABLEKS                       R10 R10 K18 ["placeholder"]
       66 ORK                              R9 R10 K7 [""]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R9 R6 K19 ["TextPrompt"]
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantUseFoundationTextArea"]
       73 JUMPIFNOT                        R10 ; [+60]
       74 DUPTABLE                         R10 K29 [{["label"] = "", ["text"], ["onChanged"], ["placeholder"], ["size"], ["variant"], ["width"], ["isDisabled"], ["LayoutOrder"]}]
       75 GETTABLEKS                       R12 R0 K8 ["value"]
       77 ORK                              R11 R12 K7 [""]
       78 SETTABLEKS                       R11 R10 K22 ["text"]
       80 GETTABLEKS                       R11 R0 K14 ["setValue"]
       82 SETTABLEKS                       R11 R10 K23 ["onChanged"]
       84 SETTABLEKS                       R9 R10 K18 ["placeholder"]
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K30 ["Enums"]
       89 GETTABLEKS                       R11 R11 K31 ["InputSize"]
       91 GETTABLEKS                       R11 R11 K32 ["XSmall"]
       93 SETTABLEKS                       R11 R10 K24 ["size"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K30 ["Enums"]
       98 GETTABLEKS                       R11 R11 K33 ["InputVariant"]
      100 GETTABLEKS                       R11 R11 K34 ["Contrast"]
      102 SETTABLEKS                       R11 R10 K25 ["variant"]
      104 GETIMPORT                        R11 K37 [UDim.new]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K26 ["width"]
      111 GETTABLEKS                       R12 R0 K38 ["interactable"]
      113 NOT                              R11 R12
      114 SETTABLEKS                       R11 R10 K27 ["isDisabled"]
      116 GETTABLEKS                       R11 R0 K28 ["LayoutOrder"]
      118 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      120 JUMPIFNOT                        R8 ; [+8]
      121 LOADN                            R11 3
      122 SETTABLEKS                       R11 R10 K39 ["numLines"]
      124 GETUPVAL                         R11 4
      125 GETUPVAL                         R12 5
      126 MOVE                             R13 R10
      127 CALL                             R11 2 -1
      128 RETURN                           R11 -1
      129 GETUPVAL                         R11 4
      130 GETUPVAL                         R12 6
      131 MOVE                             R13 R10
      132 CALL                             R11 2 -1
      133 RETURN                           R11 -1
      134 GETUPVAL                         R10 7
      135 CALL                             R10 0 1
      136 GETUPVAL                         R11 4
      137 GETUPVAL                         R12 8
      138 DUPTABLE                         R13 K42 [{["tag"] = "row gap-xsmall size-full-full radius-small clip bg-shift-200", ["LayoutOrder"]}]
      139 GETTABLEKS                       R14 R0 K28 ["LayoutOrder"]
      141 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      143 DUPTABLE                         R14 K44 [{"InputWrapper"}]
      144 GETUPVAL                         R15 4
      145 GETUPVAL                         R16 8
      146 DUPTABLE                         R17 K46 [{["tag"] = "fill size-0-full padding-left-small padding-top-small", ["LayoutOrder"]}]
      147 MOVE                             R18 R10
      148 CALL                             R18 0 1
      149 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      151 DUPTABLE                         R18 K48 [{"StringTextBox"}]
      152 GETUPVAL                         R19 4
      153 LOADK                            R20 K49 ["TextBox"]
      154 NEWTABLE                         R21 32 0
      156 SETTABLEKS                       R4 R21 K50 ["Text"]
      158 GETUPVAL                         R22 1
      159 GETTABLEKS                       R22 R22 K51 ["Change"]
      161 GETTABLEKS                       R22 R22 K50 ["Text"]
      163 SETTABLE                         R7 R21 R22
      164 GETIMPORT                        R22 K54 [UDim2.fromScale]
      166 LOADN                            R23 1
      167 LOADN                            R24 1
      168 CALL                             R22 2 1
      169 SETTABLEKS                       R22 R21 K55 ["Size"]
      171 LOADN                            R22 1
      172 SETTABLEKS                       R22 R21 K56 ["BackgroundTransparency"]
      174 SETTABLEKS                       R8 R21 K57 ["MultiLine"]
      176 GETIMPORT                        R22 K61 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      180 JUMPIFNOT                        R8 ; [+3]
      181 GETIMPORT                        R22 K64 [Enum.TextYAlignment.Top]
      183 JUMP                             ; [+2]
      184 GETIMPORT                        R22 K66 [Enum.TextYAlignment.Center]
      186 SETTABLEKS                       R22 R21 K62 ["TextYAlignment"]
      188 SETTABLEKS                       R9 R21 K67 ["PlaceholderText"]
      190 GETTABLEKS                       R22 R3 K68 ["Color3"]
      192 SETTABLEKS                       R22 R21 K69 ["TextColor3"]
      194 GETTABLEKS                       R22 R3 K70 ["Transparency"]
      196 SETTABLEKS                       R22 R21 K71 ["TextTransparency"]
      198 GETUPVAL                         R23 9
      199 JUMPIFNOT                        R23 ; [+2]
      200 LOADNIL                          R22
      201 JUMP                             ; [+2]
      202 GETTABLEKS                       R22 R2 K72 ["Font"]
      204 SETTABLEKS                       R22 R21 K72 ["Font"]
      206 GETUPVAL                         R23 9
      207 JUMPIFNOT                        R23 ; [+5]
      208 GETUPVAL                         R22 10
      209 GETTABLEKS                       R23 R2 K72 ["Font"]
      211 CALL                             R22 1 1
      212 JUMP                             ; [+1]
      213 LOADNIL                          R22
      214 SETTABLEKS                       R22 R21 K73 ["FontFace"]
      216 GETTABLEKS                       R22 R2 K74 ["FontSize"]
      218 SETTABLEKS                       R22 R21 K75 ["TextSize"]
      220 SETTABLEKS                       R8 R21 K76 ["TextWrapped"]
      222 GETTABLEKS                       R22 R0 K38 ["interactable"]
      224 SETTABLEKS                       R22 R21 K77 ["Interactable"]
      226 LOADB                            R22 0
      227 SETTABLEKS                       R22 R21 K78 ["ClearTextOnFocus"]
      229 GETTABLEKS                       R22 R0 K38 ["interactable"]
      231 SETTABLEKS                       R22 R21 K79 ["TextEditable"]
      233 CALL                             R19 2 1
      234 SETTABLEKS                       R19 R18 K47 ["StringTextBox"]
      236 CALL                             R15 3 1
      237 SETTABLEKS                       R15 R14 K43 ["InputWrapper"]
      239 CALL                             R11 3 -1
      240 RETURN                           R11 -1

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
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Resources"]
       44 GETTABLEKS                       R8 R8 K13 ["Localization"]
       46 GETTABLEKS                       R8 R8 K14 ["Translator"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R2 K15 ["TextArea"]
       51 GETTABLEKS                       R9 R2 K16 ["TextInput"]
       53 GETTABLEKS                       R10 R2 K17 ["View"]
       55 GETTABLEKS                       R11 R2 K18 ["Utility"]
       57 GETTABLEKS                       R11 R11 K10 ["Flags"]
       59 GETTABLEKS                       R11 R11 K19 ["FoundationStudioFontFaceMigration"]
       61 GETTABLEKS                       R12 R2 K18 ["Utility"]
       63 GETTABLEKS                       R12 R12 K20 ["normalizeFontFace"]
       65 GETTABLEKS                       R13 R4 K21 ["createNextOrder"]
       67 GETTABLEKS                       R14 R3 K22 ["createElement"]
       69 DUPCLOSURE                       R15 K23 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 RETURN                           R15 1
