PROTO_0:
        0 DUPTABLE                         R0 K1 [{"ReadFile"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["ReadFile"]
        4 GETTABLEKS                       R1 R1 K2 ["toHost"]
        6 LOADNIL                          R2
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["ReadFile"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K3 [table.create]
       13 LOADN                            R3 1
       14 CALL                             R2 1 1
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Provider"]
       20 DUPTABLE                         R7 K6 [{"value"}]
       21 GETTABLEKS                       R8 R1 K7 ["ReadFile"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K9 [table.insert]
       29 CALL                             R3 -1 0
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["Actions"]
       27 GETTABLEKS                       R4 R4 K12 ["ReadFileActionsContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K13 ["createElement"]
       32 DUPCLOSURE                       R5 K14 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
