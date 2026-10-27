PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFEQKS                       R2 K1 ["Capture"] ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["type"]
        6 JUMPIFEQKS                       R2 K2 ["Commit"] ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R2 K3 ["Cancel"] ; [+2]
       12 RETURN                           R0 1
       13 GETTABLEKS                       R2 R0 K0 ["type"]
       15 JUMPIFNOTEQKS                    R2 K4 ["Stage"] ; [+13]
       17 DUPTABLE                         R2 K6 [{"type", "value"}]
       18 GETTABLEKS                       R3 R0 K0 ["type"]
       20 SETTABLEKS                       R3 R2 K0 ["type"]
       22 MOVE                             R3 R1
       23 GETTABLEKS                       R4 R0 K5 ["value"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K5 ["value"]
       28 RETURN                           R2 1
       29 GETTABLEKS                       R2 R0 K0 ["type"]
       31 JUMPIFNOTEQKS                    R2 K7 ["Edit"] ; [+13]
       33 DUPTABLE                         R2 K6 [{"type", "value"}]
       34 GETTABLEKS                       R3 R0 K0 ["type"]
       36 SETTABLEKS                       R3 R2 K0 ["type"]
       38 MOVE                             R3 R1
       39 GETTABLEKS                       R4 R0 K5 ["value"]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K5 ["value"]
       44 RETURN                           R2 1
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R3 R0 K0 ["type"]
       48 CALL                             R2 1 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["exhaustiveMatch"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
