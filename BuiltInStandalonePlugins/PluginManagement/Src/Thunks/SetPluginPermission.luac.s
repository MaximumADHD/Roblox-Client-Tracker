PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R2 ; [+2]
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+7]
        9 GETUPVAL                         R3 2
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K2 ["GetPermissions"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 JUMP                             ; [+6]
       16 GETUPVAL                         R3 3
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R3 K2 ["GetPermissions"]
       20 CALL                             R3 2 1
       21 MOVE                             R2 R3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R3 R4 K3 ["index"]
       25 DUPTABLE                         R4 K6 [{"Type", "Data"}]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K7 ["type"]
       29 SETTABLEKS                       R5 R4 K4 ["Type"]
       31 DUPTABLE                         R5 K10 [{"Allowed", "Domain"}]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R7 R8 K11 ["allowed"]
       35 NOT                              R6 R7
       36 SETTABLEKS                       R6 R5 K8 ["Allowed"]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R7 R8 K12 ["data"]
       41 GETTABLEKS                       R6 R7 K13 ["domain"]
       43 SETTABLEKS                       R6 R5 K9 ["Domain"]
       45 SETTABLEKS                       R5 R4 K5 ["Data"]
       47 SETTABLE                         R4 R2 R3
       48 GETUPVAL                         R3 1
       49 CALL                             R3 0 1
       50 JUMPIFNOT                        R3 ; [+7]
       51 GETUPVAL                         R3 2
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 NAMECALL                         R3 R3 K14 ["SetPermissions"]
       56 CALL                             R3 3 0
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R3 3
       59 MOVE                             R5 R1
       60 MOVE                             R6 R2
       61 NAMECALL                         R3 R3 K14 ["SetPermissions"]
       63 CALL                             R3 3 0
       64 GETUPVAL                         R5 5
       65 GETUPVAL                         R6 2
       66 GETUPVAL                         R7 3
       67 GETUPVAL                         R8 6
       68 CALL                             R5 3 -1
       69 NAMECALL                         R3 R0 K15 ["dispatch"]
       71 CALL                             R3 -1 0
       72 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R4
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R3 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Thunks"]
       22 GETTABLEKS                       R3 R4 K9 ["GetAllPluginPermissions"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
