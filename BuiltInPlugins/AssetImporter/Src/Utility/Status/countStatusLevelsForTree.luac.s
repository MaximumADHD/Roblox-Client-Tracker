PROTO_0:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 NAMECALL                         R4 R0 K0 ["GetChildren"]
        4 CALL                             R4 1 3
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R8
        8 MOVE                             R11 R1
        9 CALL                             R9 2 0
       10 GETTABLE                         R9 R1 R8
       11 GETTABLEKS                       R11 R9 K1 ["errors"]
       13 GETTABLEKS                       R12 R9 K2 ["descErrors"]
       15 ADD                              R10 R11 R12
       16 ADD                              R2 R2 R10
       17 GETTABLEKS                       R11 R9 K3 ["warnings"]
       19 GETTABLEKS                       R12 R9 K4 ["descWarnings"]
       21 ADD                              R10 R11 R12
       22 ADD                              R3 R3 R10
       23 FORGLOOP                         R4 2 ; [-18]
       25 NAMECALL                         R4 R0 K5 ["GetStatuses"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 1
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 DUPTABLE                         R6 K6 [{"errors", "warnings", "descErrors", "descWarnings"}]
       32 GETTABLEKS                       R7 R5 K1 ["errors"]
       34 SETTABLEKS                       R7 R6 K1 ["errors"]
       36 GETTABLEKS                       R7 R5 K3 ["warnings"]
       38 SETTABLEKS                       R7 R6 K3 ["warnings"]
       40 SETTABLEKS                       R2 R6 K2 ["descErrors"]
       42 SETTABLEKS                       R3 R6 K4 ["descWarnings"]
       44 SETTABLE                         R6 R1 R0
       45 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 DUPCLOSURE                       R2 K0 [PROTO_0]
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 0
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Status"]
       15 GETTABLEKS                       R2 R3 K9 ["getStatusLevelCounts"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
