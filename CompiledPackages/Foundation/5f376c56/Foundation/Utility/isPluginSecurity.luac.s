PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Services"]
        3 GETTABLEKS                       R0 R1 K1 ["CoreGui"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["FoundationPopoverPluginSecurityGate"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 2
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K4 [pcall]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 2
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Utility"]
       18 GETTABLEKS                       R3 R4 K8 ["Wrappers"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
