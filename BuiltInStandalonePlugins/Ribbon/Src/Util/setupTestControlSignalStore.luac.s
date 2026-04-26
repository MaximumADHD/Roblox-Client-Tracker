PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 MOVE                             R4 R0
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Src"]
        5 GETTABLEKS                       R3 R4 K3 ["Util"]
        7 GETTABLEKS                       R2 R3 K4 ["ControlSignalStore"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K1 [require]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K2 ["Src"]
       15 GETTABLEKS                       R4 R5 K5 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K6 ["ControlSignalStoreContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K1 [require]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K7 ["Packages"]
       25 GETTABLEKS                       R4 R5 K8 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K9 ["new"]
       30 LOADK                            R7 K10 ["Actions"]
       31 NAMECALL                         R5 R0 K11 ["GetPluginComponent"]
       33 CALL                             R5 2 1
       34 LOADK                            R8 K12 ["Settings"]
       35 NAMECALL                         R6 R0 K11 ["GetPluginComponent"]
       37 CALL                             R6 2 -1
       38 CALL                             R4 -1 1
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
