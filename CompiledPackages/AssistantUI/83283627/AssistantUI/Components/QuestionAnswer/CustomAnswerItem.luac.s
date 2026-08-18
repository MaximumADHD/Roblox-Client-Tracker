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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onFocused"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onFocused"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["onReturnPressed"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["onReturnPressed"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["customText"]
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["onTextChanged"]
       10 GETTABLEKS                       R2 R0 K0 ["Text"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReturnPressed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onReturnPressed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       16 GETTABLEKS                       R4 R1 K4 ["Color"]
       18 GETTABLEKS                       R4 R4 K5 ["Content"]
       20 GETTABLEKS                       R4 R4 K7 ["Muted"]
       22 GETUPVAL                         R5 1
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       27 DUPCLOSURE                       R7 K9 [PROTO_0]
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K10 ["locale"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K11 ["useRef"]
       40 LOADNIL                          R8
       41 CALL                             R7 1 1
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K12 ["useState"]
       45 LOADB                            R9 0
       46 CALL                             R8 1 2
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R0
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K13 ["useCallback"]
       53 NEWCLOSURE                       R12 P2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R13 0 1
       58 GETTABLEKS                       R14 R0 K14 ["onReturnPressed"]
       60 SETLIST                          R13 R14 1 [1]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 2
       64 GETTABLEKS                       R12 R12 K13 ["useCallback"]
       66 NEWCLOSURE                       R13 P3
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R14 0 0
       70 CALL                             R12 2 1
       71 GETUPVAL                         R13 4
       72 GETTABLEKS                       R13 R13 K15 ["get"]
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
       90 DUPTABLE                         R18 K23 [{["tag"] = "col size-full-0 auto-y", ["GroupTransparency"], ["LayoutOrder"]}]
       91 GETTABLEKS                       R20 R0 K18 ["hasOptionSelected"]
       93 JUMPIFNOT                        R20 ; [+2]
       94 LOADK                            R19 K24 [0.5]
       95 JUMP                             ; [+1]
       96 LOADN                            R19 0
       97 SETTABLEKS                       R19 R18 K21 ["GroupTransparency"]
       99 GETTABLEKS                       R19 R0 K22 ["LayoutOrder"]
      101 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      103 DUPTABLE                         R19 K26 [{"Row"}]
      104 GETUPVAL                         R20 5
      105 GETUPVAL                         R21 6
      106 DUPTABLE                         R22 K27 [{"tag", "LayoutOrder"}]
      107 NEWTABLE                         R23 2 0
      109 LOADB                            R24 1
      110 SETTABLEKS                       R24 R23 K28 ["row align-y-center gap-medium size-full-0 auto-y padding-x-small padding-y-xsmall radius-small"]
      112 SETTABLEKS                       R15 R23 K29 ["bg-shift-200"]
      114 SETTABLEKS                       R23 R22 K19 ["tag"]
      116 MOVE                             R23 R5
      117 CALL                             R23 0 1
      118 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      120 DUPTABLE                         R23 K34 [{"KeyLabel", "InputContainer", "ConfirmCheckbox", "SkipButton"}]
      121 GETTABLEKS                       R24 R0 K35 ["index"]
      123 JUMPIFNOT                        R24 ; [+27]
      124 GETUPVAL                         R24 5
      125 GETUPVAL                         R25 6
      126 DUPTABLE                         R26 K37 [{["tag"] = "col align-x-center align-y-center size-500-500 radius-small bg-shift-200", ["LayoutOrder"]}]
      127 MOVE                             R27 R5
      128 CALL                             R27 0 1
      129 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      131 DUPTABLE                         R27 K39 [{"Number"}]
      132 GETUPVAL                         R28 5
      133 GETUPVAL                         R29 7
      134 DUPTABLE                         R30 K42 [{["tag"] = "auto-xy text-caption-small text-align-x-center content-emphasis", ["Text"], ["LayoutOrder"]}]
      135 GETTABLEKS                       R32 R0 K35 ["index"]
      137 FASTCALL1                        TOSTRING R32 ; [+2]
      138 GETIMPORT                        R31 K44 [tostring]
      140 CALL                             R31 1 1
      141 SETTABLEKS                       R31 R30 K41 ["Text"]
      143 MOVE                             R31 R5
      144 CALL                             R31 0 1
      145 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      147 CALL                             R28 2 1
      148 SETTABLEKS                       R28 R27 K38 ["Number"]
      150 CALL                             R24 3 1
      151 SETTABLEKS                       R24 R23 K30 ["KeyLabel"]
      153 GETUPVAL                         R24 5
      154 GETUPVAL                         R25 6
      155 DUPTABLE                         R26 K46 [{["tag"] = "align-y-center fill auto-y", ["LayoutOrder"]}]
      156 MOVE                             R27 R5
      157 CALL                             R27 0 1
      158 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      160 DUPTABLE                         R27 K48 [{"Input"}]
      161 GETUPVAL                         R28 5
      162 LOADK                            R29 K49 ["TextBox"]
      163 NEWTABLE                         R30 32 0
      165 GETTABLEKS                       R31 R0 K16 ["customText"]
      167 SETTABLEKS                       R31 R30 K41 ["Text"]
      169 GETTABLEKS                       R31 R6 K50 ["OtherPlaceholder"]
      171 SETTABLEKS                       R31 R30 K51 ["PlaceholderText"]
      173 GETTABLEKS                       R31 R4 K52 ["Color3"]
      175 SETTABLEKS                       R31 R30 K53 ["PlaceholderColor3"]
      177 GETTABLEKS                       R31 R3 K52 ["Color3"]
      179 SETTABLEKS                       R31 R30 K54 ["TextColor3"]
      181 GETTABLEKS                       R31 R3 K55 ["Transparency"]
      183 SETTABLEKS                       R31 R30 K56 ["TextTransparency"]
      185 GETTABLEKS                       R31 R2 K57 ["Font"]
      187 SETTABLEKS                       R31 R30 K57 ["Font"]
      189 GETTABLEKS                       R31 R2 K58 ["FontSize"]
      191 SETTABLEKS                       R31 R30 K59 ["TextSize"]
      193 GETTABLEKS                       R31 R2 K60 ["LineHeight"]
      195 SETTABLEKS                       R31 R30 K60 ["LineHeight"]
      197 GETIMPORT                        R31 K64 [Enum.TextXAlignment.Left]
      199 SETTABLEKS                       R31 R30 K62 ["TextXAlignment"]
      201 LOADB                            R31 1
      202 SETTABLEKS                       R31 R30 K65 ["TextWrapped"]
      204 LOADB                            R31 0
      205 SETTABLEKS                       R31 R30 K66 ["ClearTextOnFocus"]
      207 LOADN                            R31 1
      208 SETTABLEKS                       R31 R30 K67 ["BackgroundTransparency"]
      210 GETIMPORT                        R31 K70 [UDim2.new]
      212 LOADN                            R32 1
      213 LOADN                            R33 0
      214 LOADN                            R34 0
      215 LOADN                            R35 16
      216 CALL                             R31 4 1
      217 SETTABLEKS                       R31 R30 K71 ["Size"]
      219 GETIMPORT                        R31 K74 [Enum.AutomaticSize.Y]
      221 SETTABLEKS                       R31 R30 K72 ["AutomaticSize"]
      223 GETTABLEKS                       R32 R13 K75 ["isRobloxScriptSecurity"]
      225 CALL                             R32 0 1
      226 JUMPIFNOT                        R32 ; [+2]
      227 LOADB                            R31 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R31
      230 SETTABLEKS                       R31 R30 K76 ["ShouldEmitUpAndDownArrowEvents"]
      232 GETTABLEKS                       R31 R0 K77 ["textBoxRef"]
      234 SETTABLEKS                       R31 R30 K78 ["ref"]
      236 GETUPVAL                         R31 2
      237 GETTABLEKS                       R31 R31 K79 ["Event"]
      239 GETTABLEKS                       R31 R31 K80 ["Changed"]
      241 NEWCLOSURE                       R32 P4
      242 CAPTURE                          VAL R0
      243 SETTABLE                         R32 R30 R31
      244 GETUPVAL                         R31 2
      245 GETTABLEKS                       R31 R31 K79 ["Event"]
      247 GETTABLEKS                       R31 R31 K81 ["Focused"]
      249 SETTABLE                         R10 R30 R31
      250 GETUPVAL                         R31 2
      251 GETTABLEKS                       R31 R31 K79 ["Event"]
      253 GETTABLEKS                       R31 R31 K82 ["FocusLost"]
      255 SETTABLE                         R11 R30 R31
      256 GETUPVAL                         R31 2
      257 GETTABLEKS                       R31 R31 K83 ["Change"]
      259 GETTABLEKS                       R31 R31 K84 ["CursorPosition"]
      261 SETTABLE                         R12 R30 R31
      262 CALL                             R28 2 1
      263 SETTABLEKS                       R28 R27 K47 ["Input"]
      265 CALL                             R24 3 1
      266 SETTABLEKS                       R24 R23 K31 ["InputContainer"]
      268 MOVE                             R24 R14
      269 JUMPIFNOT                        R24 ; [+26]
      270 GETUPVAL                         R24 5
      271 GETUPVAL                         R25 8
      272 DUPTABLE                         R26 K92 [{["label"] = "", ["isChecked"], ["size"], ["testId"], ["onActivated"], ["Selectable"] = False, ["LayoutOrder"]}]
      273 SETTABLEKS                       R15 R26 K86 ["isChecked"]
      275 GETUPVAL                         R27 9
      276 GETTABLEKS                       R27 R27 K93 ["XSmall"]
      278 SETTABLEKS                       R27 R26 K87 ["size"]
      280 GETUPVAL                         R27 10
      281 GETTABLEKS                       R27 R27 K94 ["QuestionAnswer"]
      283 GETTABLEKS                       R27 R27 K32 ["ConfirmCheckbox"]
      285 SETTABLEKS                       R27 R26 K88 ["testId"]
      287 NEWCLOSURE                       R27 P5
      288 CAPTURE                          VAL R0
      289 SETTABLEKS                       R27 R26 K89 ["onActivated"]
      291 MOVE                             R27 R5
      292 CALL                             R27 0 1
      293 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K32 ["ConfirmCheckbox"]
      298 NOT                              R24 R14
      299 JUMPIFNOT                        R24 ; [+29]
      300 GETTABLEKS                       R24 R0 K95 ["onSkip"]
      302 JUMPIFNOT                        R24 ; [+26]
      303 GETUPVAL                         R24 5
      304 GETUPVAL                         R25 11
      305 DUPTABLE                         R26 K98 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      306 GETTABLEKS                       R27 R6 K99 ["Skip"]
      308 SETTABLEKS                       R27 R26 K96 ["text"]
      310 GETUPVAL                         R27 12
      311 GETTABLEKS                       R27 R27 K93 ["XSmall"]
      313 SETTABLEKS                       R27 R26 K87 ["size"]
      315 GETUPVAL                         R27 13
      316 GETTABLEKS                       R27 R27 K100 ["Standard"]
      318 SETTABLEKS                       R27 R26 K97 ["variant"]
      320 GETTABLEKS                       R27 R0 K95 ["onSkip"]
      322 SETTABLEKS                       R27 R26 K89 ["onActivated"]
      324 MOVE                             R27 R5
      325 CALL                             R27 0 1
      326 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      328 CALL                             R24 2 1
      329 SETTABLEKS                       R24 R23 K33 ["SkipButton"]
      331 CALL                             R20 3 1
      332 SETTABLEKS                       R20 R19 K25 ["Row"]
      334 CALL                             R16 3 -1
      335 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K17 ["Button"]
       53 GETTABLEKS                       R8 R2 K18 ["Checkbox"]
       55 GETTABLEKS                       R9 R2 K19 ["Text"]
       57 GETTABLEKS                       R10 R2 K20 ["View"]
       59 GETTABLEKS                       R11 R2 K21 ["Enums"]
       61 GETTABLEKS                       R11 R11 K22 ["ButtonSize"]
       63 GETTABLEKS                       R12 R2 K21 ["Enums"]
       65 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       67 GETTABLEKS                       R13 R2 K21 ["Enums"]
       69 GETTABLEKS                       R13 R13 K24 ["InputSize"]
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
