PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R4 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["maxLength"]
       12 NAMECALL                         R2 R1 K3 ["sub"]
       14 CALL                             R2 3 1
       15 FASTCALL1                        TONUMBER R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K5 [tonumber]
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETUPVAL                         R4 0
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K1 ["current"]
       29 JUMP                             ; [+6]
       30 JUMPIFNOTEQKS                    R1 K8 [""] ; [+5]
       32 GETUPVAL                         R4 0
       33 LOADK                            R5 K8 [""]
       34 SETTABLEKS                       R5 R4 K1 ["current"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K1 ["current"]
       39 SETTABLEKS                       R4 R0 K0 ["Text"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K1 ["current"]
       44 FASTCALL1                        TONUMBER R5 ; [+2]
       45 GETIMPORT                        R4 K5 [tonumber]
       47 CALL                             R4 1 1
       48 LOADB                            R5 1
       49 JUMPIFEQKNIL                     R4 ; [+25]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K9 ["min"]
       54 JUMPIFEQKNIL                     R6 ; [+7]
       56 LOADB                            R5 0
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K9 ["min"]
       60 JUMPIFNOTLE                      R6 R4 ; [+14]
       62 LOADB                            R5 1
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K10 ["max"]
       66 JUMPIFEQKNIL                     R6 ; [+8]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K10 ["max"]
       71 JUMPIFLE                         R4 R6 ; [+2]
       73 LOADB                            R5 0 +1
       74 LOADB                            R5 1
       75 GETUPVAL                         R6 2
       76 MOVE                             R7 R5
       77 CALL                             R6 1 0
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K11 ["setValue"]
       81 MOVE                             R7 R4
       82 CALL                             R6 1 0
       83 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Color"]
        8 GETTABLEKS                       R2 R2 K3 ["System"]
       10 GETTABLEKS                       R2 R2 K4 ["Alert"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useRef"]
       15 GETTABLEKS                       R4 R0 K6 ["initialText"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["useState"]
       21 LOADB                            R5 1
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R8 0 4
       32 GETTABLEKS                       R9 R0 K9 ["setValue"]
       34 GETTABLEKS                       R10 R0 K10 ["maxLength"]
       36 GETTABLEKS                       R11 R0 K11 ["min"]
       38 GETTABLEKS                       R12 R0 K12 ["max"]
       40 SETLIST                          R8 R9 4 [1]
       42 CALL                             R6 2 1
       43 GETUPVAL                         R7 2
       44 LOADK                            R8 K13 ["TextBox"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K14 ["join"]
       48 GETTABLEKS                       R10 R0 K15 ["native"]
       50 NEWTABLE                         R11 4 0
       52 GETTABLEKS                       R12 R3 K16 ["current"]
       54 SETTABLEKS                       R12 R11 K17 ["Text"]
       56 JUMPIF                           R4 ; [+3]
       57 GETTABLEKS                       R12 R2 K18 ["Color3"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R12
       61 SETTABLEKS                       R12 R11 K19 ["TextColor3"]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K20 ["Change"]
       66 GETTABLEKS                       R12 R12 K17 ["Text"]
       68 SETTABLE                         R6 R11 R12
       69 CALL                             R9 2 -1
       70 CALL                             R7 -1 -1
       71 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R0 K14 [{[1], ["BackgroundTransparency"] = 1, ["PlaceholderText"], ["TextColor3"], ["TextTransparency"], ["FontFace"], ["TextSize"], ["LineHeight"], ["Interactable"], ["ClearTextOnFocus"] = False, ["TextEditable"], ["TextXAlignment"]}]
        1 GETIMPORT                        R1 K17 [UDim2.fromScale]
        3 LOADN                            R2 1
        4 LOADN                            R3 1
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+8]
       12 LOADK                            R2 K18 ["%* - %*"]
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 1
       15 NAMECALL                         R2 R2 K19 ["format"]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 JUMP                             ; [+1]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K3 ["PlaceholderText"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K20 ["Color3"]
       26 SETTABLEKS                       R1 R0 K4 ["TextColor3"]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K21 ["Transparency"]
       31 SETTABLEKS                       R1 R0 K5 ["TextTransparency"]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K22 ["CODE_FONT"]
       36 SETTABLEKS                       R1 R0 K6 ["FontFace"]
       38 GETUPVAL                         R1 4
       39 GETTABLEKS                       R1 R1 K23 ["FontSize"]
       41 GETTABLEKS                       R1 R1 K24 ["FontSize_300"]
       43 SETTABLEKS                       R1 R0 K7 ["TextSize"]
       45 GETUPVAL                         R1 4
       46 GETTABLEKS                       R1 R1 K8 ["LineHeight"]
       48 GETTABLEKS                       R1 R1 K25 ["LineHeight_140"]
       50 SETTABLEKS                       R1 R0 K8 ["LineHeight"]
       52 GETUPVAL                         R1 5
       53 GETTABLEKS                       R1 R1 K26 ["interactable"]
       55 SETTABLEKS                       R1 R0 K9 ["Interactable"]
       57 GETUPVAL                         R1 5
       58 GETTABLEKS                       R1 R1 K26 ["interactable"]
       60 SETTABLEKS                       R1 R0 K12 ["TextEditable"]
       62 GETIMPORT                        R1 K29 [Enum.TextXAlignment.Left]
       64 SETTABLEKS                       R1 R0 K13 ["TextXAlignment"]
       66 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Color"]
        8 GETTABLEKS                       R2 R2 K3 ["Content"]
       10 GETTABLEKS                       R2 R2 K4 ["Emphasis"]
       12 GETTABLEKS                       R3 R0 K5 ["definition"]
       14 GETTABLEKS                       R3 R3 K6 ["min"]
       16 GETTABLEKS                       R4 R0 K5 ["definition"]
       18 GETTABLEKS                       R4 R4 K7 ["max"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R7 0 7
       32 MOVE                             R8 R3
       33 MOVE                             R9 R4
       34 GETTABLEKS                       R10 R2 K9 ["Color3"]
       36 GETTABLEKS                       R11 R2 K10 ["Transparency"]
       38 GETTABLEKS                       R12 R1 K11 ["FontSize"]
       40 GETTABLEKS                       R12 R12 K12 ["FontSize_300"]
       42 GETTABLEKS                       R13 R1 K13 ["LineHeight"]
       44 GETTABLEKS                       R13 R13 K14 ["LineHeight_140"]
       46 GETTABLEKS                       R14 R0 K15 ["interactable"]
       48 SETLIST                          R7 R8 7 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 3
       52 GETUPVAL                         R7 4
       53 DUPTABLE                         R8 K19 [{["tag"] = "row gap-xsmall size-full-full padding-left-xsmall radius-small bg-shift-200", ["LayoutOrder"]}]
       54 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
       56 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       58 DUPTABLE                         R9 K21 [{"NumberTextBox"}]
       59 GETUPVAL                         R10 3
       60 GETUPVAL                         R11 5
       61 DUPTABLE                         R12 K27 [{["initialText"], ["setValue"], ["maxLength"] = 10, ["min"], ["max"], ["native"]}]
       62 GETTABLEKS                       R14 R0 K28 ["value"]
       64 JUMPIFEQKNIL                     R14 ; [+8]
       66 GETTABLEKS                       R14 R0 K28 ["value"]
       68 FASTCALL1                        TOSTRING R14 ; [+2]
       69 GETIMPORT                        R13 K30 [tostring]
       71 CALL                             R13 1 1
       72 JUMP                             ; [+1]
       73 LOADK                            R13 K31 [""]
       74 SETTABLEKS                       R13 R12 K22 ["initialText"]
       76 GETTABLEKS                       R13 R0 K23 ["setValue"]
       78 SETTABLEKS                       R13 R12 K23 ["setValue"]
       80 SETTABLEKS                       R3 R12 K6 ["min"]
       82 SETTABLEKS                       R4 R12 K7 ["max"]
       84 SETTABLEKS                       R5 R12 K26 ["native"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K20 ["NumberTextBox"]
       89 CALL                             R6 3 -1
       90 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["PropertyRowTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Types"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K12 ["View"]
       42 GETTABLEKS                       R8 R4 K13 ["createElement"]
       44 DUPCLOSURE                       R9 K14 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R10 K15 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 RETURN                           R10 1
