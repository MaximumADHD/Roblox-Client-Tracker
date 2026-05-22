PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["Uri"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R0 K2 ["UpdateState"]
       10 GETIMPORT                        R5 K5 [Enum.UpdateState.UpdateNotAvailable]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 NOT                              R4 R3
       17 GETTABLEKS                       R6 R0 K2 ["UpdateState"]
       19 GETIMPORT                        R7 K7 [Enum.UpdateState.UpdateFailed]
       21 JUMPIFEQ                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K8 ["ButtonVariant"]
       29 GETTABLEKS                       R6 R6 K9 ["Alert"]
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K8 ["ButtonVariant"]
       35 GETTABLEKS                       R6 R6 K10 ["Standard"]
       37 LOADNIL                          R7
       38 GETTABLEKS                       R8 R0 K2 ["UpdateState"]
       40 GETIMPORT                        R9 K12 [Enum.UpdateState.UpdateInProgress]
       42 JUMPIFNOTEQ                      R8 R9 ; [+8]
       44 LOADK                            R10 K13 ["Action"]
       45 LOADK                            R11 K14 ["PreparingUpdate"]
       46 NAMECALL                         R8 R1 K15 ["getText"]
       48 CALL                             R8 3 1
       49 MOVE                             R7 R8
       50 JUMP                             ; [+19]
       51 GETTABLEKS                       R8 R0 K2 ["UpdateState"]
       53 GETIMPORT                        R9 K7 [Enum.UpdateState.UpdateFailed]
       55 JUMPIFNOTEQ                      R8 R9 ; [+8]
       57 LOADK                            R10 K13 ["Action"]
       58 LOADK                            R11 K6 ["UpdateFailed"]
       59 NAMECALL                         R8 R1 K15 ["getText"]
       61 CALL                             R8 3 1
       62 MOVE                             R7 R8
       63 JUMP                             ; [+6]
       64 LOADK                            R10 K13 ["Action"]
       65 LOADK                            R11 K16 ["Update"]
       66 NAMECALL                         R8 R1 K15 ["getText"]
       68 CALL                             R8 3 1
       69 MOVE                             R7 R8
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K17 ["createElement"]
       73 GETUPVAL                         R9 4
       74 DUPTABLE                         R10 K25 [{"ref", "Visible", "LayoutOrder", "size", "text", "variant", "onActivated"}]
       75 SETTABLEKS                       R2 R10 K18 ["ref"]
       77 SETTABLEKS                       R4 R10 K19 ["Visible"]
       79 GETTABLEKS                       R11 R0 K20 ["LayoutOrder"]
       81 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K26 ["InputSize"]
       86 GETTABLEKS                       R11 R11 K27 ["XSmall"]
       88 SETTABLEKS                       R11 R10 K21 ["size"]
       90 SETTABLEKS                       R7 R10 K22 ["text"]
       92 SETTABLEKS                       R6 R10 K23 ["variant"]
       94 GETTABLEKS                       R11 R0 K24 ["onActivated"]
       96 SETTABLEKS                       R11 R10 K24 ["onActivated"]
       98 CALL                             R8 2 -1
       99 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Hooks"]
       37 GETTABLEKS                       R5 R5 K12 ["useWidgetRef"]
       39 GETTABLEKS                       R6 R2 K13 ["Button"]
       41 GETTABLEKS                       R7 R2 K14 ["Enums"]
       43 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       45 GETTABLEKS                       R9 R8 K16 ["Localization"]
       47 DUPCLOSURE                       R10 K17 [PROTO_0]
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 RETURN                           R10 1
