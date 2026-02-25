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
       36 SETTABLEKS                       R1 R0 K8 ["_createId"]
       38 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R3 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K2 ["NodeType"]
        8 GETTABLEKS                       R2 R3 K3 ["Name"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["ClassName"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["createUniqueKey"]
        7 CALL                             R1 0 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R2 R0 K2 ["_createId"]
       12 RETURN                           R0 1

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
        5 SETTABLEKS                       R1 R0 K2 ["_createId"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_instanceToId"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R2 1
        5 LOADNIL                          R3
        6 LOADK                            R6 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R4 R1 K2 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+12]
       11 GETTABLEKS                       R3 R1 K3 ["NodeId"]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+14]
       15 GETTABLEKS                       R4 R0 K5 ["_createId"]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 SETTABLEKS                       R3 R1 K3 ["NodeId"]
       22 JUMP                             ; [+5]
       23 GETTABLEKS                       R4 R0 K5 ["_createId"]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 1
       27 MOVE                             R3 R4
       28 GETTABLEKS                       R4 R0 K0 ["_instanceToId"]
       30 SETTABLE                         R3 R4 R1
       31 GETTABLEKS                       R4 R0 K6 ["_idToInstance"]
       33 SETTABLE                         R1 R4 R3
       34 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_idToInstance"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

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
       44 RETURN                           R3 1
