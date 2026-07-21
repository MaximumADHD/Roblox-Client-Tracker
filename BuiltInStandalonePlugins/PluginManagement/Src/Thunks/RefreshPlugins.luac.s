PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetInstalledPlugins"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K1 ["GetInstalledPluginIds"]
        7 CALL                             R2 1 1
        8 LENGTH                           R3 R2
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+20]
       12 GETUPVAL                         R5 1
       13 GETUPVAL                         R6 0
       14 GETUPVAL                         R7 2
       15 GETIMPORT                        R8 K4 [table.clone]
       17 MOVE                             R9 R2
       18 CALL                             R8 1 1
       19 MOVE                             R9 R1
       20 CALL                             R5 4 -1
       21 NAMECALL                         R3 R0 K5 ["dispatch"]
       23 CALL                             R3 -1 0
       24 GETUPVAL                         R5 3
       25 GETUPVAL                         R6 0
       26 CALL                             R5 1 -1
       27 NAMECALL                         R3 R0 K5 ["dispatch"]
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 4
       32 NEWTABLE                         R6 0 0
       34 CALL                             R5 1 -1
       35 NAMECALL                         R3 R0 K5 ["dispatch"]
       37 CALL                             R3 -1 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["GetAllPluginPermissions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K8 ["MultiGetPluginInfoRequest"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["SetLoadedPluginData"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 RETURN                           R4 1
