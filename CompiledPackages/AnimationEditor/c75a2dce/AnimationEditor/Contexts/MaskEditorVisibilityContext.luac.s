PROTO_0:
        0 DUPTABLE                         R0 K4 [{"showMaskEditor", "setShowMaskEditor", "selectedMaskId", "setSelectedMaskId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["showMaskEditor"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setShowMaskEditor"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["selectedMaskId"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedMaskId"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R4
       18 NEWTABLE                         R7 0 4
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 MOVE                             R10 R3
       23 MOVE                             R11 R4
       24 SETLIST                          R7 R8 4 [1]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K2 ["createElement"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K3 ["Provider"]
       33 DUPTABLE                         R8 K5 [{"value"}]
       34 SETTABLEKS                       R5 R8 K4 ["value"]
       36 GETTABLEKS                       R9 R0 K6 ["children"]
       38 CALL                             R6 3 -1
       39 RETURN                           R6 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K15 [{["showMaskEditor"] = False, ["setShowMaskEditor"], ["selectedMaskId"] = , ["setSelectedMaskId"]}]
       22 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       24 LOADK                            R5 K11 ["setShowMaskEditor"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K11 ["setShowMaskEditor"]
       28 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       30 LOADK                            R5 K14 ["setSelectedMaskId"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K14 ["setSelectedMaskId"]
       34 GETTABLEKS                       R4 R1 K17 ["createContext"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K18 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 DUPTABLE                         R6 K21 [{"Context", "Provider"}]
       42 SETTABLEKS                       R4 R6 K19 ["Context"]
       44 SETTABLEKS                       R5 R6 K20 ["Provider"]
       46 RETURN                           R6 1
