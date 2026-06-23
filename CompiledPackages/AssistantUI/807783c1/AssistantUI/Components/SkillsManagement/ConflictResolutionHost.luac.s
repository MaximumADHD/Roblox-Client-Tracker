PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["usePending"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K4 [{"skillName", "onOverwrite", "onReload"}]
       11 GETTABLEKS                       R4 R0 K1 ["skillName"]
       13 SETTABLEKS                       R4 R3 K1 ["skillName"]
       15 GETTABLEKS                       R4 R0 K2 ["onOverwrite"]
       17 SETTABLEKS                       R4 R3 K2 ["onOverwrite"]
       19 GETTABLEKS                       R4 R0 K3 ["onReload"]
       21 SETTABLEKS                       R4 R3 K3 ["onReload"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ConflictResolutionBus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["ConflictResolutionModal"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["createElement"]
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R5 1
