PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 SETTABLEKS                       R1 R0 K0 ["contentProvider"]
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K2 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       22 GETTABLEKS                       R4 R4 K13 ["ContextItem"]
       24 LOADK                            R7 K14 ["ContentProviderContext"]
       25 NAMECALL                         R5 R4 K15 ["extend"]
       27 CALL                             R5 2 1
       28 DUPCLOSURE                       R6 K16 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R6 R5 K17 ["new"]
       33 RETURN                           R5 1
