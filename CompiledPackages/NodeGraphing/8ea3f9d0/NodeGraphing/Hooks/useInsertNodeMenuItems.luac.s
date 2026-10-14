PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 MOVE                             R7 R5
       11 LOADNIL                          R8
       12 LOADNIL                          R9
       13 FORGPREP                         R7
       14 DUPTABLE                         R14 K3 [{"id", "text"}]
       15 GETTABLEKS                       R15 R11 K1 ["id"]
       17 SETTABLEKS                       R15 R14 K1 ["id"]
       19 GETTABLEKS                       R15 R11 K4 ["displayName"]
       21 JUMPIF                           R15 ; [+2]
       22 GETTABLEKS                       R15 R11 K1 ["id"]
       24 SETTABLEKS                       R15 R14 K2 ["text"]
       26 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       28 MOVE                             R13 R6
       29 GETIMPORT                        R12 K7 [table.insert]
       31 CALL                             R12 2 0
       32 FORGLOOP                         R7 2 ; [-19]
       34 DUPTABLE                         R9 K9 [{"items"}]
       35 SETTABLEKS                       R6 R9 K8 ["items"]
       37 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       39 MOVE                             R8 R0
       40 GETIMPORT                        R7 K7 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R1 2 ; [-36]
       45 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 GETTABLEKS                       R4 R0 K3 ["nodeLibrary"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeLibraryContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1
