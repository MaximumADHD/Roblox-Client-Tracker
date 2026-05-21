PROTO_0:
        0 JUMPIF                           R1 ; [+4]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["key is nil in wrapStrictTable __index"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R3 R0 K3 ["__tbl"]
        7 GETTABLE                         R2 R3 R1
        8 JUMPIFEQKNIL                     R2 ; [+19]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K5 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+11]
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R2
       19 GETTABLEKS                       R9 R0 K8 ["__name"]
       21 ORK                              R6 R9 K7 [""]
       22 LOADK                            R7 K9 ["."]
       23 MOVE                             R8 R1
       24 CONCAT                           R5 R6 R8
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
       27 RETURN                           R2 1
       28 GETIMPORT                        R3 K1 [error]
       30 LOADK                            R4 K10 ["%q is not a valid key in %s"]
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K12 [tostring]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R9 R0 K8 ["__name"]
       38 ORK                              R8 R9 K7 [""]
       39 FASTCALL1                        TOSTRING R8 ; [+2]
       40 GETIMPORT                        R7 K12 [tostring]
       42 CALL                             R7 1 1
       43 NAMECALL                         R4 R4 K13 ["format"]
       45 CALL                             R4 3 1
       46 LOADN                            R5 2
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [""]
        1 DUPTABLE                         R3 K3 [{"__name", "__tbl"}]
        2 SETTABLEKS                       R1 R3 K1 ["__name"]
        4 SETTABLEKS                       R0 R3 K2 ["__tbl"]
        6 GETUPVAL                         R4 0
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [setmetatable]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 DUPTABLE                         R1 K1 [{"__index"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 SETTABLEKS                       R2 R1 K0 ["__index"]
        7 DUPCLOSURE                       R0 K2 [PROTO_1]
        8 CAPTURE                          VAL R1
        9 CLOSEUPVALS                      R0
       10 RETURN                           R0 1
