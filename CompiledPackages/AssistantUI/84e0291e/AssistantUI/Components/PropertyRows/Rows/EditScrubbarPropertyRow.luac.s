PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 DUPTABLE                         R0 K1 [{"hasChanges"}]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K0 ["hasChanges"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["current"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["reportStatus"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["value"]
        7 GETTABLEKS                       R4 R0 K2 ["interactable"]
        9 GETTABLEKS                       R5 R0 K3 ["getRowValue"]
       11 CALL                             R2 3 1
       12 GETTABLEKS                       R3 R2 K4 ["isVisible"]
       14 GETTABLEKS                       R4 R2 K5 ["hasChanges"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R3
       26 MOVE                             R9 R4
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 0
       38 GETTABLEKS                       R5 R0 K1 ["value"]
       40 JUMPIFEQKNIL                     R5 ; [+3]
       42 JUMPIFNOTEQKS                    R5 K7 [""] ; [+3]
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 GETTABLEKS                       R6 R0 K8 ["definition"]
       48 GETTABLEKS                       R6 R6 K9 ["durationRowName"]
       50 JUMPIFEQKNIL                     R6 ; [+6]
       52 GETTABLEKS                       R7 R0 K3 ["getRowValue"]
       54 MOVE                             R8 R6
       55 CALL                             R7 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R7
       58 GETUPVAL                         R8 3
       59 GETUPVAL                         R9 4
       60 DUPTABLE                         R10 K14 [{"layoutOrder", "toolUseId", "duration", "disabled"}]
       61 GETTABLEKS                       R11 R0 K15 ["LayoutOrder"]
       63 SETTABLEKS                       R11 R10 K10 ["layoutOrder"]
       65 SETTABLEKS                       R5 R10 K11 ["toolUseId"]
       67 SETTABLEKS                       R7 R10 K12 ["duration"]
       69 GETTABLEKS                       R12 R0 K2 ["interactable"]
       71 NOT                              R11 R12
       72 SETTABLEKS                       R11 R10 K13 ["disabled"]
       74 CALL                             R8 2 -1
       75 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       20 GETTABLEKS                       R4 R4 K10 ["AnimationGenTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R5 K12 ["EditScrubbar"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K13 ["PropertyRowTypes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Components"]
       45 GETTABLEKS                       R7 R7 K12 ["EditScrubbar"]
       47 GETTABLEKS                       R7 R7 K14 ["useEditFormStatus"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       54 GETTABLEKS                       R8 R8 K16 ["useLatest"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R2 K17 ["createElement"]
       59 DUPCLOSURE                       R9 K18 [PROTO_3]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 RETURN                           R9 1
