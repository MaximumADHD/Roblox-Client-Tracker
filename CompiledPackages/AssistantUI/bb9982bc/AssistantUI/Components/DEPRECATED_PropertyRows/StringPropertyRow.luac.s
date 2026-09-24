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
       12 GETTABLEKS                       R2 R2 K2 ["onChange"]
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["onChange"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K3 ["definition"]
       23 GETTABLEKS                       R2 R2 K4 ["onChanged"]
       25 JUMPIFNOT                        R2 ; [+7]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K3 ["definition"]
       29 GETTABLEKS                       R2 R2 K4 ["onChanged"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LOADK                            R1 K1 [""]
        5 SETTABLEKS                       R1 R0 K2 ["Text"]
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K1 [""]
        9 SETTABLEKS                       R2 R1 K0 ["current"]
       11 GETUPVAL                         R1 2
       12 LOADK                            R2 K1 [""]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K3 ["onChange"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K3 ["onChange"]
       27 LOADK                            R2 K1 [""]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K4 ["definition"]
       32 GETTABLEKS                       R1 R1 K5 ["onCancelPressed"]
       34 JUMPIFNOT                        R1 ; [+6]
       35 GETUPVAL                         R1 5
       36 GETTABLEKS                       R1 R1 K4 ["definition"]
       38 GETTABLEKS                       R1 R1 K5 ["onCancelPressed"]
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["definition"]
        9 GETTABLEKS                       R0 R0 K1 ["onSuggestPressed"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K0 ["definition"]
       15 GETTABLEKS                       R0 R0 K1 ["onSuggestPressed"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 SETTABLEKS                       R0 R1 K1 ["Text"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R0 R2 K0 ["current"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K2 ["onChange"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K2 ["onChange"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["definition"]
        3 GETTABLEKS                       R0 R0 K1 ["registerSetValue"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["definition"]
        9 GETTABLEKS                       R0 R0 K1 ["registerSetValue"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
       16 GETTABLEKS                       R5 R0 K8 ["value"]
       18 ORK                              R4 R5 K7 [""]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K9 ["useRef"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K9 ["useRef"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       32 DUPCLOSURE                       R8 K11 [PROTO_0]
       33 CAPTURE                          UPVAL U2
       34 NEWTABLE                         R9 0 1
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K12 ["locale"]
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 1
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K13 ["useState"]
       45 GETTABLEKS                       R10 R0 K14 ["definition"]
       47 GETTABLEKS                       R10 R10 K15 ["isLoading"]
       49 JUMPIFEQKB                       R10 TRUE ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 CALL                             R8 1 2
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K13 ["useState"]
       57 LOADNIL                          R11
       58 CALL                             R10 1 2
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R12 R12 K13 ["useState"]
       62 LOADB                            R13 0
       63 CALL                             R12 1 2
       64 GETUPVAL                         R14 1
       65 GETTABLEKS                       R14 R14 K16 ["useCallback"]
       67 NEWCLOSURE                       R15 P1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R16 0 2
       72 GETTABLEKS                       R17 R0 K17 ["onChange"]
       74 GETTABLEKS                       R18 R0 K14 ["definition"]
       76 GETTABLEKS                       R18 R18 K18 ["onChanged"]
       78 SETLIST                          R16 R17 2 [1]
       80 CALL                             R14 2 1
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K16 ["useCallback"]
       84 NEWCLOSURE                       R16 P2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R17 0 3
       93 GETTABLEKS                       R18 R0 K17 ["onChange"]
       95 GETTABLEKS                       R19 R0 K14 ["definition"]
       97 GETTABLEKS                       R19 R19 K19 ["onCancelPressed"]
       99 MOVE                             R20 R13
      100 SETLIST                          R17 R18 3 [1]
      102 CALL                             R15 2 1
      103 GETUPVAL                         R16 1
      104 GETTABLEKS                       R16 R16 K16 ["useCallback"]
      106 NEWCLOSURE                       R17 P3
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R0
      110 NEWTABLE                         R18 0 1
      112 GETTABLEKS                       R19 R0 K14 ["definition"]
      114 GETTABLEKS                       R19 R19 K20 ["onSuggestPressed"]
      116 SETLIST                          R18 R19 1 [1]
      118 CALL                             R16 2 1
      119 GETUPVAL                         R17 1
      120 GETTABLEKS                       R17 R17 K21 ["useEffect"]
      122 NEWCLOSURE                       R18 P4
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R9
      128 NEWTABLE                         R19 0 0
      130 CALL                             R17 2 0
      131 GETTABLEKS                       R18 R0 K14 ["definition"]
      133 GETTABLEKS                       R18 R18 K22 ["multiLine"]
      135 JUMPIFEQKB                       R18 TRUE ; [+2]
      137 LOADB                            R17 0 +1
      138 LOADB                            R17 1
      139 GETUPVAL                         R18 3
      140 CALL                             R18 0 1
      141 GETUPVAL                         R19 4
      142 GETUPVAL                         R20 5
      143 DUPTABLE                         R21 K26 [{["tag"] = "row gap-xsmall size-full-full radius-small clip bg-shift-200", ["LayoutOrder"]}]
      144 GETTABLEKS                       R22 R0 K25 ["LayoutOrder"]
      146 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      148 DUPTABLE                         R22 K29 [{"InputWrapper", "CancelWrapper"}]
      149 GETUPVAL                         R23 4
      150 GETUPVAL                         R24 5
      151 DUPTABLE                         R25 K31 [{["tag"] = "fill size-0-full padding-left-small padding-top-small", ["LayoutOrder"]}]
      152 MOVE                             R26 R18
      153 CALL                             R26 0 1
      154 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      156 DUPTABLE                         R26 K34 [{"StringTextBox", "Shimmer"}]
      157 GETUPVAL                         R27 4
      158 LOADK                            R28 K35 ["TextBox"]
      159 GETUPVAL                         R29 6
      160 GETTABLEKS                       R29 R29 K36 ["assign"]
      162 NEWTABLE                         R30 0 0
      164 NEWTABLE                         R31 32 0
      166 OR                               R32 R10 R4
      167 SETTABLEKS                       R32 R31 K37 ["Text"]
      169 GETUPVAL                         R32 1
      170 GETTABLEKS                       R32 R32 K38 ["Change"]
      172 GETTABLEKS                       R32 R32 K37 ["Text"]
      174 SETTABLE                         R14 R31 R32
      175 SETTABLEKS                       R6 R31 K39 ["ref"]
      177 GETIMPORT                        R32 K42 [UDim2.fromScale]
      179 LOADN                            R33 1
      180 LOADN                            R34 1
      181 CALL                             R32 2 1
      182 SETTABLEKS                       R32 R31 K43 ["Size"]
      184 LOADN                            R32 1
      185 SETTABLEKS                       R32 R31 K44 ["BackgroundTransparency"]
      187 SETTABLEKS                       R17 R31 K45 ["MultiLine"]
      189 GETIMPORT                        R32 K49 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R32 R31 K47 ["TextXAlignment"]
      193 JUMPIFNOT                        R17 ; [+3]
      194 GETIMPORT                        R32 K52 [Enum.TextYAlignment.Top]
      196 JUMP                             ; [+2]
      197 GETIMPORT                        R32 K54 [Enum.TextYAlignment.Center]
      199 SETTABLEKS                       R32 R31 K50 ["TextYAlignment"]
      201 GETTABLEKS                       R32 R0 K14 ["definition"]
      203 GETTABLEKS                       R32 R32 K55 ["placeholder"]
      205 JUMPIF                           R32 ; [+2]
      206 GETTABLEKS                       R32 R7 K56 ["TextPrompt"]
      208 SETTABLEKS                       R32 R31 K57 ["PlaceholderText"]
      210 GETTABLEKS                       R32 R3 K58 ["Color3"]
      212 SETTABLEKS                       R32 R31 K59 ["TextColor3"]
      214 GETTABLEKS                       R32 R3 K60 ["Transparency"]
      216 SETTABLEKS                       R32 R31 K61 ["TextTransparency"]
      218 GETTABLEKS                       R32 R2 K62 ["Font"]
      220 SETTABLEKS                       R32 R31 K62 ["Font"]
      222 GETTABLEKS                       R32 R2 K63 ["FontSize"]
      224 SETTABLEKS                       R32 R31 K64 ["TextSize"]
      226 SETTABLEKS                       R17 R31 K65 ["TextWrapped"]
      228 GETTABLEKS                       R33 R0 K66 ["isDisabled"]
      230 NOT                              R32 R33
      231 JUMPIFNOT                        R32 ; [+1]
      232 NOT                              R32 R8
      233 SETTABLEKS                       R32 R31 K67 ["Interactable"]
      235 LOADB                            R32 0
      236 SETTABLEKS                       R32 R31 K68 ["ClearTextOnFocus"]
      238 GETTABLEKS                       R33 R0 K66 ["isDisabled"]
      240 NOT                              R32 R33
      241 JUMPIFNOT                        R32 ; [+1]
      242 NOT                              R32 R8
      243 SETTABLEKS                       R32 R31 K69 ["TextEditable"]
      245 CALL                             R29 2 -1
      246 CALL                             R27 -1 1
      247 SETTABLEKS                       R27 R26 K32 ["StringTextBox"]
      249 JUMPIFNOT                        R8 ; [+4]
      250 GETUPVAL                         R27 4
      251 GETUPVAL                         R28 7
      252 CALL                             R27 1 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R27
      255 SETTABLEKS                       R27 R26 K33 ["Shimmer"]
      257 CALL                             R23 3 1
      258 SETTABLEKS                       R23 R22 K27 ["InputWrapper"]
      260 JUMPIFNOT                        R8 ; [+36]
      261 GETUPVAL                         R23 4
      262 GETUPVAL                         R24 8
      263 DUPTABLE                         R25 K74 [{"icon", "size", "onActivated", "testId", "LayoutOrder"}]
      264 GETUPVAL                         R26 0
      265 GETTABLEKS                       R26 R26 K75 ["Enums"]
      267 GETTABLEKS                       R26 R26 K76 ["IconName"]
      269 GETTABLEKS                       R26 R26 K77 ["X"]
      271 SETTABLEKS                       R26 R25 K70 ["icon"]
      273 GETUPVAL                         R26 0
      274 GETTABLEKS                       R26 R26 K75 ["Enums"]
      276 GETTABLEKS                       R26 R26 K78 ["InputSize"]
      278 GETTABLEKS                       R26 R26 K79 ["XSmall"]
      280 SETTABLEKS                       R26 R25 K71 ["size"]
      282 SETTABLEKS                       R15 R25 K72 ["onActivated"]
      284 GETUPVAL                         R26 9
      285 GETTABLEKS                       R26 R26 K80 ["SegmentationPropertyRow"]
      287 GETTABLEKS                       R26 R26 K81 ["CancelButton"]
      289 SETTABLEKS                       R26 R25 K73 ["testId"]
      291 MOVE                             R26 R18
      292 CALL                             R26 0 1
      293 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      295 CALL                             R23 2 1
      296 JUMP                             ; [+44]
      297 JUMPIFNOT                        R12 ; [+42]
      298 GETTABLEKS                       R24 R0 K14 ["definition"]
      300 GETTABLEKS                       R24 R24 K20 ["onSuggestPressed"]
      302 JUMPIFEQKNIL                     R24 ; [+37]
      304 GETUPVAL                         R23 4
      305 GETUPVAL                         R24 8
      306 DUPTABLE                         R25 K74 [{"icon", "size", "onActivated", "testId", "LayoutOrder"}]
      307 GETUPVAL                         R26 0
      308 GETTABLEKS                       R26 R26 K75 ["Enums"]
      310 GETTABLEKS                       R26 R26 K76 ["IconName"]
      312 GETTABLEKS                       R26 R26 K82 ["TwoArrowsSpinClockwise"]
      314 SETTABLEKS                       R26 R25 K70 ["icon"]
      316 GETUPVAL                         R26 0
      317 GETTABLEKS                       R26 R26 K75 ["Enums"]
      319 GETTABLEKS                       R26 R26 K78 ["InputSize"]
      321 GETTABLEKS                       R26 R26 K79 ["XSmall"]
      323 SETTABLEKS                       R26 R25 K71 ["size"]
      325 SETTABLEKS                       R16 R25 K72 ["onActivated"]
      327 GETUPVAL                         R26 9
      328 GETTABLEKS                       R26 R26 K80 ["SegmentationPropertyRow"]
      330 GETTABLEKS                       R26 R26 K83 ["SuggestButton"]
      332 SETTABLEKS                       R26 R25 K73 ["testId"]
      334 MOVE                             R26 R18
      335 CALL                             R26 0 1
      336 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      338 CALL                             R23 2 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R23
      341 SETTABLEKS                       R23 R22 K28 ["CancelWrapper"]
      343 CALL                             R19 3 -1
      344 RETURN                           R19 -1

PROTO_7:
        0 DUPTABLE                         R1 K13 [{"type", "label", "prop", "initialValue", "initialVisible", "isLoading", "registerSetVisible", "registerSetValue", "onCancelPressed", "onSuggestPressed", "onChanged", "multiLine", "placeholder"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K14 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K15 ["String"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["initialVisible"]
       22 SETTABLEKS                       R2 R1 K4 ["initialVisible"]
       24 GETTABLEKS                       R2 R0 K5 ["isLoading"]
       26 SETTABLEKS                       R2 R1 K5 ["isLoading"]
       28 GETTABLEKS                       R2 R0 K6 ["registerSetVisible"]
       30 SETTABLEKS                       R2 R1 K6 ["registerSetVisible"]
       32 GETTABLEKS                       R2 R0 K7 ["registerSetValue"]
       34 SETTABLEKS                       R2 R1 K7 ["registerSetValue"]
       36 GETTABLEKS                       R2 R0 K8 ["onCancelPressed"]
       38 SETTABLEKS                       R2 R1 K8 ["onCancelPressed"]
       40 GETTABLEKS                       R2 R0 K9 ["onSuggestPressed"]
       42 SETTABLEKS                       R2 R1 K9 ["onSuggestPressed"]
       44 GETTABLEKS                       R2 R0 K10 ["onChanged"]
       46 SETTABLEKS                       R2 R1 K10 ["onChanged"]
       48 GETTABLEKS                       R2 R0 K11 ["multiLine"]
       50 SETTABLEKS                       R2 R1 K11 ["multiLine"]
       52 GETTABLEKS                       R2 R0 K12 ["placeholder"]
       54 SETTABLEKS                       R2 R1 K12 ["placeholder"]
       56 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Resources"]
       39 GETTABLEKS                       R6 R6 K12 ["Localization"]
       41 GETTABLEKS                       R6 R6 K13 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["PropertyRowTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R2 K17 ["IconButton"]
       62 GETTABLEKS                       R9 R2 K18 ["View"]
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K19 ["Components"]
       68 GETTABLEKS                       R11 R11 K20 ["ShimmerGradient"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R4 K21 ["createNextOrder"]
       73 GETTABLEKS                       R12 R3 K22 ["createElement"]
       75 DUPCLOSURE                       R13 K23 [PROTO_6]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 DUPCLOSURE                       R14 K24 [PROTO_7]
       87 CAPTURE                          VAL R6
       88 DUPTABLE                         R15 K27 [{"StringPropertyRow", "createRowDefinition"}]
       89 SETTABLEKS                       R13 R15 K25 ["StringPropertyRow"]
       91 SETTABLEKS                       R14 R15 K26 ["createRowDefinition"]
       93 RETURN                           R15 1
