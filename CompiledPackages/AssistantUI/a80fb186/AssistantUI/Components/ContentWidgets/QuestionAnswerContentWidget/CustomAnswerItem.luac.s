PROTO_0:
        0 DUPTABLE                         R0 K2 [{"OtherPlaceholder", "Skip"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["OtherPlaceholder"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["OtherPlaceholder"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["QuestionAnswer"]
       11 LOADK                            R4 K1 ["Skip"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Skip"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["onFocused"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K0 ["onFocused"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["onReturnPressed"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K0 ["onReturnPressed"]
       11 CALL                             R3 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFEQKN                       R1 K1 [-1] ; [+4]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R1 R2 K2 ["current"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["customText"]
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["onTextChanged"]
       10 GETTABLEKS                       R2 R0 K0 ["Text"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onReturnPressed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onReturnPressed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R3 K3 ["BodySmall"]
       10 GETTABLEKS                       R5 R1 K4 ["Color"]
       12 GETTABLEKS                       R4 R5 K5 ["Content"]
       14 GETTABLEKS                       R3 R4 K6 ["Emphasis"]
       16 GETTABLEKS                       R6 R1 K4 ["Color"]
       18 GETTABLEKS                       R5 R6 K5 ["Content"]
       20 GETTABLEKS                       R4 R5 K7 ["Muted"]
       22 GETUPVAL                         R5 1
       23 CALL                             R5 0 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K8 ["useMemo"]
       27 DUPCLOSURE                       R7 K9 [PROTO_0]
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K10 ["locale"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R7 R8 K11 ["useRef"]
       40 LOADNIL                          R8
       41 CALL                             R7 1 1
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R8 R9 K12 ["useState"]
       45 LOADB                            R9 0
       46 CALL                             R8 1 2
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R0
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R11 R12 K13 ["useCallback"]
       53 NEWCLOSURE                       R12 P2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R13 0 1
       58 GETTABLEKS                       R14 R0 K14 ["onReturnPressed"]
       60 SETLIST                          R13 R14 1 [1]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R12 R13 K13 ["useCallback"]
       66 NEWCLOSURE                       R13 P3
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R14 0 0
       70 CALL                             R12 2 1
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R13 R14 K15 ["get"]
       74 CALL                             R13 0 1
       75 GETTABLEKS                       R15 R0 K16 ["customText"]
       77 JUMPIFNOTEQKS                    R15 K17 [""] ; [+2]
       79 LOADB                            R14 0 +1
       80 LOADB                            R14 1
       81 MOVE                             R15 R8
       82 JUMPIF                           R15 ; [+5]
       83 MOVE                             R15 R14
       84 JUMPIFNOT                        R15 ; [+3]
       85 GETTABLEKS                       R16 R0 K18 ["hasOptionSelected"]
       87 NOT                              R15 R16
       88 GETUPVAL                         R16 5
       89 GETUPVAL                         R17 6
       90 DUPTABLE                         R18 K22 [{"tag", "GroupTransparency", "LayoutOrder"}]
       91 LOADK                            R19 K23 ["col size-full-0 auto-y"]
       92 SETTABLEKS                       R19 R18 K19 ["tag"]
       94 GETTABLEKS                       R20 R0 K18 ["hasOptionSelected"]
       96 JUMPIFNOT                        R20 ; [+2]
       97 LOADK                            R19 K24 [0.5]
       98 JUMP                             ; [+1]
       99 LOADN                            R19 0
      100 SETTABLEKS                       R19 R18 K20 ["GroupTransparency"]
      102 GETTABLEKS                       R19 R0 K21 ["LayoutOrder"]
      104 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
      106 DUPTABLE                         R19 K26 [{"Row"}]
      107 GETUPVAL                         R20 5
      108 GETUPVAL                         R21 6
      109 DUPTABLE                         R22 K27 [{"tag", "LayoutOrder"}]
      110 NEWTABLE                         R23 2 0
      112 LOADB                            R24 1
      113 SETTABLEKS                       R24 R23 K28 ["row size-full-800 align-y-center gap-medium radius-small padding-x-small padding-y-xsmall"]
      115 SETTABLEKS                       R15 R23 K29 ["bg-shift-200"]
      117 SETTABLEKS                       R23 R22 K19 ["tag"]
      119 MOVE                             R23 R5
      120 CALL                             R23 0 1
      121 SETTABLEKS                       R23 R22 K21 ["LayoutOrder"]
      123 DUPTABLE                         R23 K34 [{"KeyLabel", "InputContainer", "ConfirmCheckbox", "SkipButton"}]
      124 GETTABLEKS                       R24 R0 K35 ["index"]
      126 JUMPIFNOT                        R24 ; [+33]
      127 GETUPVAL                         R24 5
      128 GETUPVAL                         R25 6
      129 DUPTABLE                         R26 K27 [{"tag", "LayoutOrder"}]
      130 LOADK                            R27 K36 ["col align-x-center align-y-center radius-small shrink-0 bg-shift-200 size-500-500"]
      131 SETTABLEKS                       R27 R26 K19 ["tag"]
      133 MOVE                             R27 R5
      134 CALL                             R27 0 1
      135 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      137 DUPTABLE                         R27 K38 [{"Number"}]
      138 GETUPVAL                         R28 5
      139 GETUPVAL                         R29 7
      140 DUPTABLE                         R30 K40 [{"tag", "Text", "LayoutOrder"}]
      141 LOADK                            R31 K41 ["auto-xy text-caption-small content-emphasis text-align-x-center"]
      142 SETTABLEKS                       R31 R30 K19 ["tag"]
      144 GETTABLEKS                       R32 R0 K35 ["index"]
      146 FASTCALL1                        TOSTRING R32 ; [+2]
      147 GETIMPORT                        R31 K43 [tostring]
      149 CALL                             R31 1 1
      150 SETTABLEKS                       R31 R30 K39 ["Text"]
      152 MOVE                             R31 R5
      153 CALL                             R31 0 1
      154 SETTABLEKS                       R31 R30 K21 ["LayoutOrder"]
      156 CALL                             R28 2 1
      157 SETTABLEKS                       R28 R27 K37 ["Number"]
      159 CALL                             R24 3 1
      160 SETTABLEKS                       R24 R23 K30 ["KeyLabel"]
      162 GETUPVAL                         R24 5
      163 GETUPVAL                         R25 6
      164 DUPTABLE                         R26 K27 [{"tag", "LayoutOrder"}]
      165 LOADK                            R27 K44 ["fill align-y-center"]
      166 SETTABLEKS                       R27 R26 K19 ["tag"]
      168 MOVE                             R27 R5
      169 CALL                             R27 0 1
      170 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      172 DUPTABLE                         R27 K46 [{"Input"}]
      173 GETUPVAL                         R28 5
      174 LOADK                            R29 K47 ["TextBox"]
      175 NEWTABLE                         R30 32 0
      177 GETTABLEKS                       R31 R0 K16 ["customText"]
      179 SETTABLEKS                       R31 R30 K39 ["Text"]
      181 GETTABLEKS                       R31 R6 K48 ["OtherPlaceholder"]
      183 SETTABLEKS                       R31 R30 K49 ["PlaceholderText"]
      185 GETTABLEKS                       R31 R4 K50 ["Color3"]
      187 SETTABLEKS                       R31 R30 K51 ["PlaceholderColor3"]
      189 GETTABLEKS                       R31 R3 K50 ["Color3"]
      191 SETTABLEKS                       R31 R30 K52 ["TextColor3"]
      193 GETTABLEKS                       R31 R3 K53 ["Transparency"]
      195 SETTABLEKS                       R31 R30 K54 ["TextTransparency"]
      197 GETTABLEKS                       R31 R2 K55 ["Font"]
      199 SETTABLEKS                       R31 R30 K55 ["Font"]
      201 GETTABLEKS                       R31 R2 K56 ["FontSize"]
      203 SETTABLEKS                       R31 R30 K57 ["TextSize"]
      205 GETTABLEKS                       R31 R2 K58 ["LineHeight"]
      207 SETTABLEKS                       R31 R30 K58 ["LineHeight"]
      209 GETIMPORT                        R31 K62 [Enum.TextXAlignment.Left]
      211 SETTABLEKS                       R31 R30 K60 ["TextXAlignment"]
      213 LOADB                            R31 1
      214 SETTABLEKS                       R31 R30 K63 ["TextWrapped"]
      216 LOADB                            R31 0
      217 SETTABLEKS                       R31 R30 K64 ["ClearTextOnFocus"]
      219 LOADN                            R31 1
      220 SETTABLEKS                       R31 R30 K65 ["BackgroundTransparency"]
      222 GETIMPORT                        R31 K68 [UDim2.new]
      224 LOADN                            R32 1
      225 LOADN                            R33 0
      226 LOADN                            R34 0
      227 LOADN                            R35 16
      228 CALL                             R31 4 1
      229 SETTABLEKS                       R31 R30 K69 ["Size"]
      231 GETIMPORT                        R31 K72 [Enum.AutomaticSize.Y]
      233 SETTABLEKS                       R31 R30 K70 ["AutomaticSize"]
      235 GETTABLEKS                       R32 R13 K73 ["isRobloxScriptSecurity"]
      237 CALL                             R32 0 1
      238 JUMPIFNOT                        R32 ; [+2]
      239 LOADB                            R31 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R31
      242 SETTABLEKS                       R31 R30 K74 ["ShouldEmitUpAndDownArrowEvents"]
      244 GETTABLEKS                       R31 R0 K75 ["textBoxRef"]
      246 SETTABLEKS                       R31 R30 K76 ["ref"]
      248 GETUPVAL                         R33 2
      249 GETTABLEKS                       R32 R33 K77 ["Event"]
      251 GETTABLEKS                       R31 R32 K78 ["Changed"]
      253 NEWCLOSURE                       R32 P4
      254 CAPTURE                          VAL R0
      255 SETTABLE                         R32 R30 R31
      256 GETUPVAL                         R33 2
      257 GETTABLEKS                       R32 R33 K77 ["Event"]
      259 GETTABLEKS                       R31 R32 K79 ["Focused"]
      261 SETTABLE                         R10 R30 R31
      262 GETUPVAL                         R33 2
      263 GETTABLEKS                       R32 R33 K77 ["Event"]
      265 GETTABLEKS                       R31 R32 K80 ["FocusLost"]
      267 SETTABLE                         R11 R30 R31
      268 GETUPVAL                         R33 2
      269 GETTABLEKS                       R32 R33 K81 ["Change"]
      271 GETTABLEKS                       R31 R32 K82 ["CursorPosition"]
      273 SETTABLE                         R12 R30 R31
      274 CALL                             R28 2 1
      275 SETTABLEKS                       R28 R27 K45 ["Input"]
      277 CALL                             R24 3 1
      278 SETTABLEKS                       R24 R23 K31 ["InputContainer"]
      280 MOVE                             R24 R14
      281 JUMPIFNOT                        R24 ; [+32]
      282 GETUPVAL                         R24 5
      283 GETUPVAL                         R25 8
      284 DUPTABLE                         R26 K89 [{"label", "isChecked", "size", "testId", "onActivated", "Selectable", "LayoutOrder"}]
      285 LOADK                            R27 K17 [""]
      286 SETTABLEKS                       R27 R26 K83 ["label"]
      288 SETTABLEKS                       R15 R26 K84 ["isChecked"]
      290 GETUPVAL                         R28 9
      291 GETTABLEKS                       R27 R28 K90 ["XSmall"]
      293 SETTABLEKS                       R27 R26 K85 ["size"]
      295 GETUPVAL                         R29 10
      296 GETTABLEKS                       R28 R29 K91 ["QuestionAnswer"]
      298 GETTABLEKS                       R27 R28 K32 ["ConfirmCheckbox"]
      300 SETTABLEKS                       R27 R26 K86 ["testId"]
      302 NEWCLOSURE                       R27 P5
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R27 R26 K87 ["onActivated"]
      306 LOADB                            R27 0
      307 SETTABLEKS                       R27 R26 K88 ["Selectable"]
      309 MOVE                             R27 R5
      310 CALL                             R27 0 1
      311 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      313 CALL                             R24 2 1
      314 SETTABLEKS                       R24 R23 K32 ["ConfirmCheckbox"]
      316 NOT                              R24 R14
      317 JUMPIFNOT                        R24 ; [+29]
      318 GETTABLEKS                       R24 R0 K92 ["onSkip"]
      320 JUMPIFNOT                        R24 ; [+26]
      321 GETUPVAL                         R24 5
      322 GETUPVAL                         R25 11
      323 DUPTABLE                         R26 K95 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      324 GETTABLEKS                       R27 R6 K96 ["Skip"]
      326 SETTABLEKS                       R27 R26 K93 ["text"]
      328 GETUPVAL                         R28 12
      329 GETTABLEKS                       R27 R28 K90 ["XSmall"]
      331 SETTABLEKS                       R27 R26 K85 ["size"]
      333 GETUPVAL                         R28 13
      334 GETTABLEKS                       R27 R28 K97 ["Standard"]
      336 SETTABLEKS                       R27 R26 K94 ["variant"]
      338 GETTABLEKS                       R27 R0 K92 ["onSkip"]
      340 SETTABLEKS                       R27 R26 K87 ["onActivated"]
      342 MOVE                             R27 R5
      343 CALL                             R27 0 1
      344 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      346 CALL                             R24 2 1
      347 SETTABLEKS                       R24 R23 K33 ["SkipButton"]
      349 CALL                             R20 3 1
      350 SETTABLEKS                       R20 R19 K25 ["Row"]
      352 CALL                             R16 3 -1
      353 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Resources"]
       46 GETTABLEKS                       R8 R9 K15 ["Localization"]
       48 GETTABLEKS                       R7 R8 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K17 ["Button"]
       53 GETTABLEKS                       R8 R2 K18 ["Checkbox"]
       55 GETTABLEKS                       R9 R2 K19 ["Text"]
       57 GETTABLEKS                       R10 R2 K20 ["View"]
       59 GETTABLEKS                       R12 R2 K21 ["Enums"]
       61 GETTABLEKS                       R11 R12 K22 ["ButtonSize"]
       63 GETTABLEKS                       R13 R2 K21 ["Enums"]
       65 GETTABLEKS                       R12 R13 K23 ["ButtonVariant"]
       67 GETTABLEKS                       R14 R2 K21 ["Enums"]
       69 GETTABLEKS                       R13 R14 K24 ["InputSize"]
       71 GETTABLEKS                       R14 R4 K25 ["createNextOrder"]
       73 GETTABLEKS                       R15 R3 K26 ["createElement"]
       75 DUPCLOSURE                       R16 K27 [PROTO_6]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R12
       90 RETURN                           R16 1
