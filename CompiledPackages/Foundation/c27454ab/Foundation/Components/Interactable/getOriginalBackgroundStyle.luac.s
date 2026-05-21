PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 SETTABLEKS                       R0 R1 K0 ["Color3"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["Transparency"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Color3"]
        4 SETTABLEKS                       R0 R1 K1 ["Transparency"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isBinding"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["isBinding"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["joinBindings"]
       15 DUPTABLE                         R3 K4 [{"Color3", "Transparency"}]
       16 SETTABLEKS                       R0 R3 K2 ["Color3"]
       18 SETTABLEKS                       R1 R3 K3 ["Transparency"]
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["isBinding"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 JUMPIFNOT                        R2 ; [+6]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R2 R0 K5 ["map"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["isBinding"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 1
       39 JUMPIFNOT                        R2 ; [+6]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R2 R1 K5 ["map"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1
       46 DUPTABLE                         R2 K4 [{"Color3", "Transparency"}]
       47 SETTABLEKS                       R0 R2 K2 ["Color3"]
       49 SETTABLEKS                       R1 R2 K3 ["Transparency"]
       51 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
