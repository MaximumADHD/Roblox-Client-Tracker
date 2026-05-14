PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["use"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R3 R0 K3 ["Uri"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R0 K4 ["UpdateState"]
       16 GETIMPORT                        R5 K7 [Enum.UpdateState.UpdateNotAvailable]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 NOT                              R4 R3
       23 GETTABLEKS                       R6 R0 K4 ["UpdateState"]
       25 GETIMPORT                        R7 K9 [Enum.UpdateState.UpdateFailed]
       27 JUMPIFEQ                         R6 R7 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 JUMPIFNOT                        R5 ; [+6]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K10 ["ButtonVariant"]
       35 GETTABLEKS                       R6 R6 K11 ["Alert"]
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K10 ["ButtonVariant"]
       41 GETTABLEKS                       R6 R6 K12 ["Standard"]
       43 LOADNIL                          R7
       44 GETTABLEKS                       R8 R0 K4 ["UpdateState"]
       46 GETIMPORT                        R9 K14 [Enum.UpdateState.UpdateInProgress]
       48 JUMPIFNOTEQ                      R8 R9 ; [+8]
       50 LOADK                            R10 K15 ["Action"]
       51 LOADK                            R11 K16 ["PreparingUpdate"]
       52 NAMECALL                         R8 R1 K17 ["getText"]
       54 CALL                             R8 3 1
       55 MOVE                             R7 R8
       56 JUMP                             ; [+19]
       57 GETTABLEKS                       R8 R0 K4 ["UpdateState"]
       59 GETIMPORT                        R9 K9 [Enum.UpdateState.UpdateFailed]
       61 JUMPIFNOTEQ                      R8 R9 ; [+8]
       63 LOADK                            R10 K15 ["Action"]
       64 LOADK                            R11 K8 ["UpdateFailed"]
       65 NAMECALL                         R8 R1 K17 ["getText"]
       67 CALL                             R8 3 1
       68 MOVE                             R7 R8
       69 JUMP                             ; [+6]
       70 LOADK                            R10 K15 ["Action"]
       71 LOADK                            R11 K18 ["Update"]
       72 NAMECALL                         R8 R1 K17 ["getText"]
       74 CALL                             R8 3 1
       75 MOVE                             R7 R8
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R8 R8 K19 ["createElement"]
       79 GETUPVAL                         R9 5
       80 DUPTABLE                         R10 K27 [{"ref", "Visible", "LayoutOrder", "size", "text", "variant", "onActivated"}]
       81 SETTABLEKS                       R2 R10 K20 ["ref"]
       83 SETTABLEKS                       R4 R10 K21 ["Visible"]
       85 GETTABLEKS                       R11 R0 K22 ["LayoutOrder"]
       87 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
       89 GETUPVAL                         R11 3
       90 GETTABLEKS                       R11 R11 K28 ["InputSize"]
       92 GETTABLEKS                       R11 R11 K29 ["XSmall"]
       94 SETTABLEKS                       R11 R10 K23 ["size"]
       96 SETTABLEKS                       R7 R10 K24 ["text"]
       98 SETTABLEKS                       R6 R10 K25 ["variant"]
      100 GETTABLEKS                       R11 R0 K26 ["onActivated"]
      102 SETTABLEKS                       R11 R10 K26 ["onActivated"]
      104 CALL                             R8 2 -1
      105 RETURN                           R8 -1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFeatureStudioBackgroundUpdates"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K14 ["Hooks"]
       46 GETTABLEKS                       R6 R6 K15 ["useWidgetRef"]
       48 GETTABLEKS                       R7 R2 K16 ["Button"]
       50 GETTABLEKS                       R8 R2 K17 ["Enums"]
       52 GETTABLEKS                       R9 R3 K18 ["ContextServices"]
       54 GETTABLEKS                       R10 R9 K19 ["Localization"]
       56 DUPCLOSURE                       R11 K20 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 RETURN                           R11 1
