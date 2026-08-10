PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"scopeUniqueIdRef"}]
        6 SETTABLEKS                       R1 R2 K1 ["scopeUniqueIdRef"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Provider"]
       12 DUPTABLE                         R5 K5 [{"value"}]
       13 SETTABLEKS                       R2 R5 K4 ["value"]
       15 GETTABLEKS                       R6 R0 K6 ["children"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K10 ["createElement"]
       27 DUPTABLE                         R6 K12 [{"scopeUniqueIdRef"}]
       28 DUPTABLE                         R7 K15 [{["current"] = }]
       29 SETTABLEKS                       R7 R6 K11 ["scopeUniqueIdRef"]
       31 GETTABLEKS                       R7 R3 K16 ["createContext"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 DUPCLOSURE                       R8 K17 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R7
       39 DUPTABLE                         R9 K20 [{"Context", "Provider"}]
       40 SETTABLEKS                       R7 R9 K18 ["Context"]
       42 SETTABLEKS                       R8 R9 K19 ["Provider"]
       44 RETURN                           R9 1
