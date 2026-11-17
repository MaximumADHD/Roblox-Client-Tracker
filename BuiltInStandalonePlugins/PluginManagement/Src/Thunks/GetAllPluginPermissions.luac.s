PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetInstalledPluginIds"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETUPVAL                         R8 0
       11 FASTCALL1                        TOSTRING R7 ; [+3]
       12 MOVE                             R11 R7
       13 GETIMPORT                        R10 K2 [tostring]
       15 CALL                             R10 1 1
       16 NAMECALL                         R8 R8 K3 ["GetPermissions"]
       18 CALL                             R8 2 1
       19 SETTABLE                         R8 R2 R7
       20 FORGLOOP                         R3 2 ; [-11]
       22 GETUPVAL                         R5 1
       23 MOVE                             R6 R2
       24 CALL                             R5 1 -1
       25 NAMECALL                         R3 R0 K4 ["dispatch"]
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAllPluginPermissions"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
