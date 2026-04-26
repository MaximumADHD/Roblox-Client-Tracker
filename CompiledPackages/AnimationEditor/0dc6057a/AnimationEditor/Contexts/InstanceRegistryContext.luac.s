PROTO_0:
        0 DUPTABLE                         R0 K1 [{"instanceRegistry"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["instanceRegistry"]
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["new"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K0 ["instanceRegistry"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["instanceRegistry"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["Provider"]
       17 DUPTABLE                         R4 K4 [{"value"}]
       18 SETTABLEKS                       R1 R4 K3 ["value"]
       20 GETTABLEKS                       R5 R0 K5 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Instances"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 DUPTABLE                         R4 K13 [{"instanceRegistry"}]
       26 GETTABLEKS                       R5 R1 K14 ["createUnimplemented"]
       28 CALL                             R5 0 1
       29 SETTABLEKS                       R5 R4 K12 ["instanceRegistry"]
       31 GETTABLEKS                       R5 R2 K15 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 LOADK                            R6 K16 ["InstanceRegistryContext"]
       36 SETTABLEKS                       R6 R5 K17 ["displayName"]
       38 DUPCLOSURE                       R6 K18 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 DUPTABLE                         R7 K21 [{"Context", "Provider"}]
       44 SETTABLEKS                       R5 R7 K19 ["Context"]
       46 SETTABLEKS                       R6 R7 K20 ["Provider"]
       48 RETURN                           R7 1
