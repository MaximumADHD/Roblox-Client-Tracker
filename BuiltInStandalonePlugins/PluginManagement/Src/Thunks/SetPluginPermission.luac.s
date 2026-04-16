PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R2 ; [+2]
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["GetPermissions"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["index"]
       13 DUPTABLE                         R4 K6 [{"Type", "Data"}]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K7 ["type"]
       17 SETTABLEKS                       R5 R4 K4 ["Type"]
       19 DUPTABLE                         R5 K10 [{"Allowed", "Domain"}]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K11 ["allowed"]
       23 NOT                              R6 R7
       24 SETTABLEKS                       R6 R5 K8 ["Allowed"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K12 ["data"]
       29 GETTABLEKS                       R6 R7 K13 ["domain"]
       31 SETTABLEKS                       R6 R5 K9 ["Domain"]
       33 SETTABLEKS                       R5 R4 K5 ["Data"]
       35 SETTABLE                         R4 R2 R3
       36 GETUPVAL                         R3 1
       37 MOVE                             R5 R1
       38 MOVE                             R6 R2
       39 NAMECALL                         R3 R3 K14 ["SetPermissions"]
       41 CALL                             R3 3 0
       42 GETUPVAL                         R5 3
       43 GETUPVAL                         R6 1
       44 GETUPVAL                         R7 4
       45 CALL                             R5 2 -1
       46 NAMECALL                         R3 R0 K15 ["dispatch"]
       48 CALL                             R3 -1 0
       49 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R3 K7 ["GetAllPluginPermissions"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
