PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Capture"] ; [+7]
        4 DUPTABLE                         R2 K2 [{"type"}]
        5 GETTABLEKS                       R3 R0 K0 ["type"]
        7 SETTABLEKS                       R3 R2 K0 ["type"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K0 ["type"]
       12 JUMPIFNOTEQKS                    R2 K3 ["Commit"] ; [+7]
       14 DUPTABLE                         R2 K2 [{"type"}]
       15 GETTABLEKS                       R3 R0 K0 ["type"]
       17 SETTABLEKS                       R3 R2 K0 ["type"]
       19 RETURN                           R2 1
       20 GETTABLEKS                       R2 R0 K0 ["type"]
       22 JUMPIFNOTEQKS                    R2 K4 ["Cancel"] ; [+7]
       24 DUPTABLE                         R2 K2 [{"type"}]
       25 GETTABLEKS                       R3 R0 K0 ["type"]
       27 SETTABLEKS                       R3 R2 K0 ["type"]
       29 RETURN                           R2 1
       30 GETTABLEKS                       R2 R0 K0 ["type"]
       32 JUMPIFNOTEQKS                    R2 K5 ["Stage"] ; [+17]
       34 DUPTABLE                         R2 K7 [{"type", "part"}]
       35 GETTABLEKS                       R3 R0 K0 ["type"]
       37 SETTABLEKS                       R3 R2 K0 ["type"]
       39 DUPTABLE                         R3 K10 [{"name", "value"}]
       40 ORK                              R4 R1 K9 ["value"]
       41 SETTABLEKS                       R4 R3 K8 ["name"]
       43 GETTABLEKS                       R4 R0 K9 ["value"]
       45 SETTABLEKS                       R4 R3 K9 ["value"]
       47 SETTABLEKS                       R3 R2 K6 ["part"]
       49 RETURN                           R2 1
       50 GETTABLEKS                       R2 R0 K0 ["type"]
       52 JUMPIFNOTEQKS                    R2 K11 ["Edit"] ; [+17]
       54 DUPTABLE                         R2 K7 [{"type", "part"}]
       55 GETTABLEKS                       R3 R0 K0 ["type"]
       57 SETTABLEKS                       R3 R2 K0 ["type"]
       59 DUPTABLE                         R3 K10 [{"name", "value"}]
       60 ORK                              R4 R1 K9 ["value"]
       61 SETTABLEKS                       R4 R3 K8 ["name"]
       63 GETTABLEKS                       R4 R0 K9 ["value"]
       65 SETTABLEKS                       R4 R3 K9 ["value"]
       67 SETTABLEKS                       R3 R2 K6 ["part"]
       69 RETURN                           R2 1
       70 GETIMPORT                        R2 K13 [error]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R4 R0 K0 ["type"]
       75 CALL                             R3 1 -1
       76 CALL                             R2 -1 0
       77 RETURN                           R0 0

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
