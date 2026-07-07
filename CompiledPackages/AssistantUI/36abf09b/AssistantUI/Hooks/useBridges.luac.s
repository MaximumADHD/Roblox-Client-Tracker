PROTO_0:
        0 DUPTABLE                         R0 K2 [{"ExecuteLuau", "ReadFile"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["ExecuteLuau"]
        4 GETTABLEKS                       R1 R1 K3 ["createGuestContext"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K4 ["bridge"]
       11 SETTABLEKS                       R1 R0 K0 ["ExecuteLuau"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["ReadFile"]
       16 GETTABLEKS                       R1 R1 K3 ["createGuestContext"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R1 R1 K4 ["bridge"]
       23 SETTABLEKS                       R1 R0 K1 ["ReadFile"]
       25 RETURN                           R0 1

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
       13 LOADN                            R3 2
       14 CALL                             R2 1 1
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Provider"]
       20 DUPTABLE                         R7 K6 [{"value"}]
       21 GETTABLEKS                       R8 R1 K7 ["ExecuteLuau"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K9 [table.insert]
       29 CALL                             R3 -1 0
       30 MOVE                             R4 R2
       31 GETUPVAL                         R5 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K4 ["Provider"]
       35 DUPTABLE                         R7 K6 [{"value"}]
       36 GETTABLEKS                       R8 R1 K10 ["ReadFile"]
       38 SETTABLEKS                       R8 R7 K5 ["value"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R3 K9 [table.insert]
       44 CALL                             R3 -1 0
       45 RETURN                           R2 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["ExecuteLuauActionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Components"]
       34 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K9 ["Actions"]
       38 GETTABLEKS                       R5 R5 K13 ["ReadFileActionsContext"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R3 K14 ["createElement"]
       43 DUPCLOSURE                       R6 K15 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 RETURN                           R6 1
