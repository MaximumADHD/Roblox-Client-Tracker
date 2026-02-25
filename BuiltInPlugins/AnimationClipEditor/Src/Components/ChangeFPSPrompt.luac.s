PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"noticeText"}]
        2 SETTABLEKS                       R0 R3 K0 ["noticeText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNotice"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["props"]
       10 GETTABLEKS                       R0 R1 K3 ["OnClose"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["props"]
       16 GETTABLEKS                       R0 R1 K3 ["OnClose"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+56]
       10 JUMPIFEQKNIL                     R3 ; [+55]
       12 FASTCALL1                        MATH_CEIL R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K5 [math.ceil]
       16 CALL                             R4 1 1
       17 MOVE                             R3 R4
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K6 ["MIN_FRAMERATE"]
       21 JUMPIFNOTLT                      R3 R4 ; [+12]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K7 ["setNotice"]
       26 LOADK                            R7 K8 ["Title"]
       27 LOADK                            R8 K9 ["MinFPS"]
       28 NAMECALL                         R5 R1 K10 ["getText"]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 LOADB                            R4 0
       33 RETURN                           R4 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K11 ["MAX_FRAMERATE"]
       37 JUMPIFNOTLT                      R4 R3 ; [+12]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K7 ["setNotice"]
       42 LOADK                            R7 K8 ["Title"]
       43 LOADK                            R8 K12 ["MaxFPS"]
       44 NAMECALL                         R5 R1 K10 ["getText"]
       46 CALL                             R5 3 -1
       47 CALL                             R4 -1 0
       48 LOADB                            R4 0
       49 RETURN                           R4 1
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K13 ["props"]
       53 GETTABLEKS                       R4 R5 K14 ["SetFrameRate"]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K7 ["setNotice"]
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R5 R6 K15 ["None"]
       63 CALL                             R4 1 0
       64 LOADB                            R4 1
       65 RETURN                           R4 1
       66 LOADB                            R4 0
       67 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"noticeText"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["None"]
        4 SETTABLEKS                       R2 R1 K0 ["noticeText"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K4 ["setNotice"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K5 ["onClose"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K6 ["setFrameRate"]
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setFrameRate"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["FrameRate"]
        6 GETTABLEKS                       R4 R2 K3 ["noticeText"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K4 ["None"]
       11 JUMPIFNOTEQ                      R4 R6 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 GETTABLEKS                       R7 R0 K0 ["props"]
       17 GETTABLEKS                       R6 R7 K5 ["Localization"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K6 ["createElement"]
       22 GETUPVAL                         R8 1
       23 DUPTABLE                         R9 K15 [{"PromptText", "InputText", "NoticeText", "HasError", "Text", "Buttons", "OnTextSubmitted", "OnClose"}]
       24 LOADK                            R10 K16 [" "]
       25 SETTABLEKS                       R10 R9 K7 ["PromptText"]
       27 LOADK                            R12 K17 ["Title"]
       28 LOADK                            R13 K18 ["CustomFPS"]
       29 NAMECALL                         R10 R6 K19 ["getText"]
       31 CALL                             R10 3 1
       32 SETTABLEKS                       R10 R9 K8 ["InputText"]
       34 JUMPIFNOT                        R5 ; [+2]
       35 MOVE                             R10 R4
       36 JUMPIF                           R10 ; [+1]
       37 LOADNIL                          R10
       38 SETTABLEKS                       R10 R9 K9 ["NoticeText"]
       40 SETTABLEKS                       R5 R9 K10 ["HasError"]
       42 SETTABLEKS                       R3 R9 K11 ["Text"]
       44 NEWTABLE                         R10 0 2
       46 DUPTABLE                         R11 K22 [{"Key", "Text", "Style"}]
       47 LOADB                            R12 0
       48 SETTABLEKS                       R12 R11 K20 ["Key"]
       50 LOADK                            R14 K23 ["Dialog"]
       51 LOADK                            R15 K24 ["Cancel"]
       52 NAMECALL                         R12 R6 K19 ["getText"]
       54 CALL                             R12 3 1
       55 SETTABLEKS                       R12 R11 K11 ["Text"]
       57 LOADK                            R12 K25 ["Round"]
       58 SETTABLEKS                       R12 R11 K21 ["Style"]
       60 DUPTABLE                         R12 K22 [{"Key", "Text", "Style"}]
       61 LOADB                            R13 1
       62 SETTABLEKS                       R13 R12 K20 ["Key"]
       64 LOADK                            R15 K23 ["Dialog"]
       65 LOADK                            R16 K26 ["Confirm"]
       66 NAMECALL                         R13 R6 K19 ["getText"]
       68 CALL                             R13 3 1
       69 SETTABLEKS                       R13 R12 K11 ["Text"]
       71 LOADK                            R13 K27 ["RoundPrimary"]
       72 SETTABLEKS                       R13 R12 K21 ["Style"]
       74 SETLIST                          R10 R11 2 [1]
       76 SETTABLEKS                       R10 R9 K12 ["Buttons"]
       78 NEWCLOSURE                       R10 P0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R10 R9 K13 ["OnTextSubmitted"]
       83 GETTABLEKS                       R10 R0 K28 ["onClose"]
       85 SETTABLEKS                       R10 R9 K14 ["OnClose"]
       87 CALL                             R7 2 -1
       88 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Components"]
       40 GETTABLEKS                       R7 R8 K15 ["TextEntryPrompt"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       45 LOADK                            R9 K17 ["ChangeFPSPrompt"]
       46 NAMECALL                         R7 R7 K18 ["extend"]
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K19 [PROTO_4]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R8 R7 K20 ["init"]
       54 DUPCLOSURE                       R8 K21 [PROTO_6]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R8 R7 K22 ["render"]
       59 MOVE                             R8 R4
       60 DUPTABLE                         R9 K24 [{"Localization"}]
       61 GETTABLEKS                       R10 R3 K23 ["Localization"]
       63 SETTABLEKS                       R10 R9 K23 ["Localization"]
       65 CALL                             R8 1 1
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 MOVE                             R7 R8
       69 RETURN                           R7 1
