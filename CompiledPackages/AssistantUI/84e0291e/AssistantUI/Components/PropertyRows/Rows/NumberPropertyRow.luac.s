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
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantNumberRowPartialInput"]
       18 JUMPIFNOT                        R3 ; [+14]
       19 JUMPIFEQKS                       R2 K5 [""] ; [+9]
       21 JUMPIFEQKS                       R2 K6 ["-"] ; [+7]
       23 LOADK                            R5 K7 ["^%-?%d*%.?%d*$"]
       24 NAMECALL                         R3 R2 K8 ["match"]
       26 CALL                             R3 2 1
       27 JUMPIFEQKNIL                     R3 ; [+26]
       29 GETUPVAL                         R3 0
       30 SETTABLEKS                       R2 R3 K1 ["current"]
       32 JUMP                             ; [+21]
       33 FASTCALL1                        TONUMBER R2 ; [+3]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K10 [tonumber]
       37 CALL                             R3 1 1
       38 JUMPIFNOT                        R3 ; [+9]
       39 GETUPVAL                         R4 0
       40 FASTCALL1                        TOSTRING R3 ; [+3]
       41 MOVE                             R6 R3
       42 GETIMPORT                        R5 K12 [tostring]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K1 ["current"]
       47 JUMP                             ; [+6]
       48 JUMPIFNOTEQKS                    R1 K5 [""] ; [+5]
       50 GETUPVAL                         R4 0
       51 LOADK                            R5 K5 [""]
       52 SETTABLEKS                       R5 R4 K1 ["current"]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K1 ["current"]
       57 SETTABLEKS                       R3 R0 K0 ["Text"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K1 ["current"]
       62 FASTCALL1                        TONUMBER R4 ; [+2]
       63 GETIMPORT                        R3 K10 [tonumber]
       65 CALL                             R3 1 1
       66 LOADB                            R4 1
       67 JUMPIFEQKNIL                     R3 ; [+25]
       69 GETUPVAL                         R5 1
       70 GETTABLEKS                       R5 R5 K13 ["min"]
       72 JUMPIFEQKNIL                     R5 ; [+7]
       74 LOADB                            R4 0
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K13 ["min"]
       78 JUMPIFNOTLE                      R5 R3 ; [+14]
       80 LOADB                            R4 1
       81 GETUPVAL                         R5 1
       82 GETTABLEKS                       R5 R5 K14 ["max"]
       84 JUMPIFEQKNIL                     R5 ; [+8]
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K14 ["max"]
       89 JUMPIFLE                         R3 R5 ; [+2]
       91 LOADB                            R4 0 +1
       92 LOADB                            R4 1
       93 GETUPVAL                         R5 3
       94 MOVE                             R6 R4
       95 CALL                             R5 1 0
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K15 ["setValue"]
       99 MOVE                             R6 R3
      100 CALL                             R5 1 0
      101 RETURN                           R0 0

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
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 4
       33 GETTABLEKS                       R9 R0 K9 ["setValue"]
       35 GETTABLEKS                       R10 R0 K10 ["maxLength"]
       37 GETTABLEKS                       R11 R0 K11 ["min"]
       39 GETTABLEKS                       R12 R0 K12 ["max"]
       41 SETLIST                          R8 R9 4 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 3
       45 LOADK                            R8 K13 ["TextBox"]
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K14 ["join"]
       49 GETTABLEKS                       R10 R0 K15 ["native"]
       51 NEWTABLE                         R11 4 0
       53 GETTABLEKS                       R12 R3 K16 ["current"]
       55 SETTABLEKS                       R12 R11 K17 ["Text"]
       57 JUMPIF                           R4 ; [+3]
       58 GETTABLEKS                       R12 R2 K18 ["Color3"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R12
       62 SETTABLEKS                       R12 R11 K19 ["TextColor3"]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K20 ["Change"]
       67 GETTABLEKS                       R12 R12 K17 ["Text"]
       69 SETTABLE                         R6 R11 R12
       70 CALL                             R9 2 -1
       71 CALL                             R7 -1 -1
       72 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R0 K14 [{[1], ["BackgroundTransparency"] = 1, ["PlaceholderText"], ["TextColor3"], ["TextTransparency"], ["FontFace"], ["TextSize"], ["LineHeight"], ["Interactable"], ["ClearTextOnFocus"] = False, ["TextEditable"], ["TextXAlignment"]}]
        1 GETIMPORT                        R1 K17 [UDim2.fromScale]
        3 LOADN                            R2 1
        4 LOADN                            R3 1
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Size"]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+7]
       12 LOADK                            R1 K18 ["%* - %*"]
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 1
       15 NAMECALL                         R1 R1 K19 ["format"]
       17 CALL                             R1 3 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["PlaceholderText"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K20 ["Color3"]
       25 SETTABLEKS                       R1 R0 K4 ["TextColor3"]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K21 ["Transparency"]
       30 SETTABLEKS                       R1 R0 K5 ["TextTransparency"]
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K22 ["CODE_FONT"]
       35 SETTABLEKS                       R1 R0 K6 ["FontFace"]
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K23 ["FontSize"]
       40 GETTABLEKS                       R1 R1 K24 ["FontSize_300"]
       42 SETTABLEKS                       R1 R0 K7 ["TextSize"]
       44 GETUPVAL                         R1 4
       45 GETTABLEKS                       R1 R1 K8 ["LineHeight"]
       47 GETTABLEKS                       R1 R1 K25 ["LineHeight_140"]
       49 SETTABLEKS                       R1 R0 K8 ["LineHeight"]
       51 GETUPVAL                         R1 5
       52 GETTABLEKS                       R1 R1 K26 ["interactable"]
       54 SETTABLEKS                       R1 R0 K9 ["Interactable"]
       56 GETUPVAL                         R1 5
       57 GETTABLEKS                       R1 R1 K26 ["interactable"]
       59 SETTABLEKS                       R1 R0 K12 ["TextEditable"]
       61 GETIMPORT                        R1 K29 [Enum.TextXAlignment.Left]
       63 SETTABLEKS                       R1 R0 K13 ["TextXAlignment"]
       65 RETURN                           R0 1

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
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K4 ["Parent"]
       35 GETTABLEKS                       R7 R7 K4 ["Parent"]
       37 GETTABLEKS                       R7 R7 K11 ["PropertyRowTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Types"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R3 K13 ["View"]
       47 GETTABLEKS                       R9 R4 K14 ["createElement"]
       49 DUPCLOSURE                       R10 K15 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R11 K16 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R10
       62 RETURN                           R11 1
