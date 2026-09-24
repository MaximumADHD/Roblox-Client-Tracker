PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFEQKNIL                     R1 ; [+3]
        4 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["definition"]
       10 GETTABLEKS                       R2 R2 K3 ["durationRowName"]
       12 JUMPIFEQKNIL                     R2 ; [+6]
       14 GETTABLEKS                       R3 R0 K4 ["getRowValue"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 1
       22 DUPTABLE                         R6 K9 [{"layoutOrder", "toolUseId", "duration", "disabled"}]
       23 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       25 SETTABLEKS                       R7 R6 K5 ["layoutOrder"]
       27 SETTABLEKS                       R1 R6 K6 ["toolUseId"]
       29 SETTABLEKS                       R3 R6 K7 ["duration"]
       31 GETTABLEKS                       R8 R0 K11 ["interactable"]
       33 NOT                              R7 R8
       34 SETTABLEKS                       R7 R6 K8 ["disabled"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["EditScrubbar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["PropertyRowTypes"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K11 ["createElement"]
       34 DUPCLOSURE                       R6 K12 [PROTO_0]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 RETURN                           R6 1
