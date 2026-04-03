PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K3 [{"__mode"}]
       11 LOADK                            R4 K4 ["kv"]
       12 SETTABLEKS                       R4 R3 K2 ["__mode"]
       14 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       16 GETIMPORT                        R1 K1 [setmetatable]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K5 ["_idToInstance"]
       21 NEWTABLE                         R2 0 0
       23 DUPTABLE                         R3 K3 [{"__mode"}]
       24 LOADK                            R4 K4 ["kv"]
       25 SETTABLEKS                       R4 R3 K2 ["__mode"]
       27 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       29 GETIMPORT                        R1 K1 [setmetatable]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K6 ["_instanceToId"]
       34 DUPCLOSURE                       R1 K7 [PROTO_0]
       35 CAPTURE                          UPVAL U1
       36 SETTABLEKS                       R1 R0 K8 ["_generateGUID"]
       38 LOADB                            R1 0
       39 SETTABLEKS                       R1 R0 K9 ["_dead"]
       41 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_dead"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [error]
        6 LOADK                            R3 K3 ["InstanceRegistry %* is destroyed. This is a sign that signals or resources have leaked."]
        7 GETUPVAL                         R5 1
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 LOADK                            R3 K5 ["AnimationNodeDefinition"]
       14 NAMECALL                         R1 R0 K6 ["IsA"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+7]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R3 R0 K7 ["NodeType"]
       21 GETTABLEKS                       R2 R3 K8 ["Name"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R2 R0 K9 ["ClassName"]
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createUniqueKey"]
        7 CALL                             R2 0 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R3 R1 K2 ["_generateGUID"]
       14 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["InstanceRegistry being used with no InstanceRegistryContext"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 DUPCLOSURE                       R1 K1 [PROTO_4]
        5 SETTABLEKS                       R1 R0 K2 ["_generateGUID"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_instanceToId"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R2 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R0 K1 ["_ensureUniqueId"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R0 K0 ["_instanceToId"]
       11 SETTABLE                         R3 R4 R1
       12 GETTABLEKS                       R4 R0 K2 ["_idToInstance"]
       14 SETTABLE                         R1 R4 R3
       15 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_idToInstance"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_8:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+28]
        5 GETTABLEKS                       R2 R1 K2 ["NodeId"]
        7 JUMPIFNOTEQKS                    R2 K3 [""] ; [+8]
        9 GETTABLEKS                       R2 R0 K4 ["_generateGUID"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K2 ["NodeId"]
       15 JUMP                             ; [+14]
       16 GETTABLEKS                       R3 R0 K5 ["_idToInstance"]
       18 GETTABLEKS                       R4 R1 K2 ["NodeId"]
       20 GETTABLE                         R2 R3 R4
       21 JUMPIFNOT                        R2 ; [+8]
       22 JUMPIFEQ                         R2 R1 ; [+7]
       24 GETTABLEKS                       R3 R0 K4 ["_generateGUID"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R1 K2 ["NodeId"]
       30 GETTABLEKS                       R2 R1 K2 ["NodeId"]
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K4 ["_generateGUID"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_dead"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["InstanceRegistry already destroyed"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["_dead"]
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["ReactUtils"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 8 0
       22 SETTABLEKS                       R3 R3 K12 ["__index"]
       24 DUPCLOSURE                       R4 K13 [PROTO_1]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K14 ["new"]
       29 DUPCLOSURE                       R4 K15 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K16 ["newDeterministic"]
       34 DUPCLOSURE                       R4 K17 [PROTO_5]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K18 ["createUnimplemented"]
       38 DUPCLOSURE                       R4 K19 [PROTO_6]
       39 SETTABLEKS                       R4 R3 K20 ["instanceToId"]
       41 DUPCLOSURE                       R4 K21 [PROTO_7]
       42 SETTABLEKS                       R4 R3 K22 ["idToInstance"]
       44 DUPCLOSURE                       R4 K23 [PROTO_8]
       45 SETTABLEKS                       R4 R3 K24 ["_ensureUniqueId"]
       47 DUPCLOSURE                       R4 K25 [PROTO_9]
       48 SETTABLEKS                       R4 R3 K26 ["destroy"]
       50 RETURN                           R3 1
