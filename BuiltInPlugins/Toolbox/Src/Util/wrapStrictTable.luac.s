PROTO_0:
        0 JUMPIF                           R1 ; [+4]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["key is nil in wrapStrictTable __index"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R3 R0 K3 ["__tbl"]
        7 GETTABLE                         R2 R3 R1
        8 JUMPIFEQKNIL                     R2 ; [+18]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K5 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+10]
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R2
       19 GETTABLEKS                       R6 R0 K7 ["__name"]
       21 LOADK                            R7 K8 ["."]
       22 MOVE                             R8 R1
       23 CONCAT                           R5 R6 R8
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
       26 RETURN                           R2 1
       27 GETIMPORT                        R3 K1 [error]
       29 LOADK                            R4 K9 ["%q is not a valid key in %s"]
       30 FASTCALL1                        TOSTRING R1 ; [+3]
       31 MOVE                             R7 R1
       32 GETIMPORT                        R6 K11 [tostring]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R8 R0 K7 ["__name"]
       37 FASTCALL1                        TOSTRING R8 ; [+2]
       38 GETIMPORT                        R7 K11 [tostring]
       40 CALL                             R7 1 1
       41 NAMECALL                         R4 R4 K12 ["format"]
       43 CALL                             R4 3 1
       44 LOADN                            R5 2
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

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
