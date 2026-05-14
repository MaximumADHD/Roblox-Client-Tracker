PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 DUPTABLE                         R2 K2 [{"__mode"}]
        4 LOADK                            R3 K3 ["k"]
        5 SETTABLEKS                       R3 R2 K1 ["__mode"]
        7 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        9 GETIMPORT                        R0 K5 [setmetatable]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 DUPTABLE                         R2 K2 [{"__mode"}]
       16 LOADK                            R3 K3 ["k"]
       17 SETTABLEKS                       R3 R2 K1 ["__mode"]
       19 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       21 GETIMPORT                        R0 K5 [setmetatable]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRef"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 2
       20 GETTABLEKS                       R6 R1 K2 ["current"]
       22 GETTABLEKS                       R7 R2 K2 ["current"]
       24 SETLIST                          R5 R6 2 [1]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R5 0 1
       34 GETTABLEKS                       R6 R1 K2 ["current"]
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R6 0 1
       46 GETTABLEKS                       R7 R1 K2 ["current"]
       48 SETLIST                          R6 R7 1 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       54 NEWCLOSURE                       R6 P3
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R7 0 1
       58 GETTABLEKS                       R8 R2 K2 ["current"]
       60 SETLIST                          R7 R8 1 [1]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       66 NEWCLOSURE                       R7 P4
       67 CAPTURE                          VAL R2
       68 NEWTABLE                         R8 0 1
       70 GETTABLEKS                       R9 R2 K2 ["current"]
       72 SETLIST                          R8 R9 1 [1]
       74 CALL                             R6 2 1
       75 DUPTABLE                         R7 K8 [{"getUndoStack", "setUndoStack", "getInitialMeshesData", "setInitialMeshesData"}]
       76 SETTABLEKS                       R3 R7 K4 ["getUndoStack"]
       78 SETTABLEKS                       R4 R7 K5 ["setUndoStack"]
       80 SETTABLEKS                       R5 R7 K6 ["getInitialMeshesData"]
       82 SETTABLEKS                       R6 R7 K7 ["setInitialMeshesData"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K9 ["createElement"]
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K10 ["Provider"]
       90 DUPTABLE                         R10 K12 [{"value"}]
       91 SETTABLEKS                       R7 R10 K11 ["value"]
       93 GETTABLEKS                       R11 R0 K13 ["children"]
       95 CALL                             R8 3 -1
       96 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["createUnimplemented"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["LuaMeshEditingModule"]
       36 GETTABLEKS                       R5 R5 K9 ["Types"]
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K17 [{"getUndoStack", "setUndoStack", "setInitialMeshesData", "getInitialMeshesData"}]
       40 MOVE                             R6 R3
       41 LOADK                            R7 K13 ["getUndoStack"]
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R5 K13 ["getUndoStack"]
       45 MOVE                             R6 R3
       46 LOADK                            R7 K14 ["setUndoStack"]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K14 ["setUndoStack"]
       50 MOVE                             R6 R3
       51 LOADK                            R7 K15 ["setInitialMeshesData"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K15 ["setInitialMeshesData"]
       55 MOVE                             R6 R3
       56 LOADK                            R7 K16 ["getInitialMeshesData"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K16 ["getInitialMeshesData"]
       60 GETTABLEKS                       R6 R1 K18 ["createContext"]
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 DUPCLOSURE                       R7 K19 [PROTO_5]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 DUPTABLE                         R8 K22 [{"Context", "Provider"}]
       68 SETTABLEKS                       R6 R8 K20 ["Context"]
       70 SETTABLEKS                       R7 R8 K21 ["Provider"]
       72 RETURN                           R8 1
