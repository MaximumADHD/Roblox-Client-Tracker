PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K4 [table.freeze]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K5 ["_selection"]
       15 GETIMPORT                        R1 K8 [Instance.new]
       17 LOADK                            R2 K9 ["BindableEvent"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K10 ["_selectionChanged"]
       21 GETTABLEKS                       R1 R0 K10 ["_selectionChanged"]
       23 GETTABLEKS                       R1 R1 K11 ["Event"]
       25 SETTABLEKS                       R1 R0 K12 ["SelectionChanged"]
       27 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_selection"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETIMPORT                        R3 K4 [table.clone]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 SETTABLEKS                       R2 R0 K5 ["_selection"]
        9 GETTABLEKS                       R2 R0 K6 ["_selectionChanged"]
       11 NAMECALL                         R2 R2 K7 ["Fire"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionChanged"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"nodeSelection"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeSelection"]
        4 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_4]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R1
       27 SETLIST                          R4 R5 1 [1]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K3 ["createElement"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K4 ["Provider"]
       36 DUPTABLE                         R5 K6 [{"value"}]
       37 SETTABLEKS                       R2 R5 K5 ["value"]
       39 GETTABLEKS                       R6 R0 K7 ["children"]
       41 CALL                             R3 3 -1
       42 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K12 ["Get"]
       25 DUPCLOSURE                       R3 K13 [PROTO_2]
       26 SETTABLEKS                       R3 R2 K14 ["Set"]
       28 DUPCLOSURE                       R3 K15 [PROTO_3]
       29 SETTABLEKS                       R3 R2 K16 ["Destroy"]
       31 GETTABLEKS                       R3 R2 K10 ["new"]
       33 CALL                             R3 0 1
       34 DUPTABLE                         R4 K18 [{"nodeSelection"}]
       35 SETTABLEKS                       R3 R4 K17 ["nodeSelection"]
       37 GETTABLEKS                       R5 R1 K19 ["createContext"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K20 [PROTO_8]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R7 K23 [{"Context", "Provider"}]
       46 SETTABLEKS                       R5 R7 K21 ["Context"]
       48 SETTABLEKS                       R6 R7 K22 ["Provider"]
       50 RETURN                           R7 1
