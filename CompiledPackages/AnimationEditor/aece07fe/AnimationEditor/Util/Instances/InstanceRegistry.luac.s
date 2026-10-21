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
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["isUnimplemented"]
       11 NEWTABLE                         R2 0 0
       13 DUPTABLE                         R3 K5 [{["__mode"] = "kv"}]
       14 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       16 GETIMPORT                        R1 K1 [setmetatable]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K6 ["_idToInstance"]
       21 NEWTABLE                         R2 0 0
       23 DUPTABLE                         R3 K5 [{["__mode"] = "kv"}]
       24 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       26 GETIMPORT                        R1 K1 [setmetatable]
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K7 ["_instanceToId"]
       31 DUPCLOSURE                       R1 K8 [PROTO_0]
       32 CAPTURE                          UPVAL U1
       33 SETTABLEKS                       R1 R0 K9 ["_generateGUID"]
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K10 ["_dead"]
       38 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_dead"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [error]
        6 LOADK                            R2 K3 ["InstanceRegistry %* is destroyed. This is a sign that signals or resources have leaked."]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 LOADK                            R3 K5 ["AnimationNodeDefinition"]
       13 NAMECALL                         R1 R0 K6 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+7]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R2 R0 K7 ["NodeType"]
       20 GETTABLEKS                       R2 R2 K8 ["Name"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R2 R0 K9 ["ClassName"]
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createUniqueKey"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isUnimplemented"]
        7 DUPCLOSURE                       R1 K2 [PROTO_4]
        8 SETTABLEKS                       R1 R0 K3 ["_generateGUID"]
       10 RETURN                           R0 1

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
        0 GETTABLE                         R3 R1 R2
        1 JUMPIFNOTEQKS                    R3 K0 [""] ; [+7]
        3 GETTABLEKS                       R3 R0 K1 ["_generateGUID"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 SETTABLE                         R3 R1 R2
        8 JUMP                             ; [+12]
        9 GETTABLEKS                       R4 R0 K2 ["_idToInstance"]
       11 GETTABLE                         R5 R1 R2
       12 GETTABLE                         R3 R4 R5
       13 JUMPIFNOT                        R3 ; [+7]
       14 JUMPIFEQ                         R3 R1 ; [+6]
       16 GETTABLEKS                       R4 R0 K1 ["_generateGUID"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 SETTABLE                         R4 R1 R2
       21 GETTABLE                         R3 R1 R2
       22 RETURN                           R3 1

PROTO_9:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R1 K0 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKNIL                     R3 ; [+3]
        6 JUMPIFNOTEQKS                    R3 K1 [""] ; [+15]
        8 GETTABLEKS                       R5 R0 K2 ["_instanceToId"]
       10 GETTABLE                         R4 R5 R1
       11 JUMPIF                           R4 ; [+4]
       12 GETTABLEKS                       R4 R0 K3 ["_generateGUID"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 MOVE                             R7 R2
       17 MOVE                             R8 R4
       18 NAMECALL                         R5 R1 K4 ["SetAttribute"]
       20 CALL                             R5 3 0
       21 RETURN                           R4 1
       22 GETTABLEKS                       R5 R0 K5 ["_idToInstance"]
       24 GETTABLE                         R4 R5 R3
       25 JUMPIFNOT                        R4 ; [+12]
       26 JUMPIFEQ                         R4 R1 ; [+11]
       28 GETTABLEKS                       R5 R0 K3 ["_generateGUID"]
       30 MOVE                             R6 R1
       31 CALL                             R5 1 1
       32 MOVE                             R8 R2
       33 MOVE                             R9 R5
       34 NAMECALL                         R6 R1 K4 ["SetAttribute"]
       36 CALL                             R6 3 0
       37 RETURN                           R5 1
       38 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["InputId"]
        2 NAMECALL                         R2 R0 K1 ["_ensureAttributeId"]
        4 CALL                             R2 3 1
        5 GETTABLEKS                       R3 R0 K2 ["_instanceToId"]
        7 SETTABLE                         R2 R3 R1
        8 GETTABLEKS                       R3 R0 K3 ["_idToInstance"]
       10 SETTABLE                         R1 R3 R2
       11 RETURN                           R2 1

PROTO_11:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+8]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+11]
        8 LOADK                            R4 K2 ["AnimationValueNodeDefinition"]
        9 NAMECALL                         R2 R1 K1 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 MOVE                             R4 R1
       14 LOADK                            R5 K3 ["NodeId"]
       15 NAMECALL                         R2 R0 K4 ["_ensureIdProperty"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R2 R1 K1 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+12]
       24 MOVE                             R4 R1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["STATE_MACHINE"]
       28 GETTABLEKS                       R5 R5 K6 ["TransitionProperties"]
       30 GETTABLEKS                       R5 R5 K7 ["Id"]
       32 NAMECALL                         R2 R0 K4 ["_ensureIdProperty"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1
       36 GETUPVAL                         R2 3
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+17]
       39 LOADK                            R4 K8 ["ObjectValue"]
       40 NAMECALL                         R2 R1 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+12]
       44 LOADK                            R4 K9 ["InputId"]
       45 NAMECALL                         R2 R1 K10 ["GetAttribute"]
       47 CALL                             R2 2 1
       48 JUMPIFEQKNIL                     R2 ; [+7]
       50 MOVE                             R4 R1
       51 LOADK                            R5 K9 ["InputId"]
       52 NAMECALL                         R2 R0 K11 ["_ensureAttributeId"]
       54 CALL                             R2 3 -1
       55 RETURN                           R2 -1
       56 GETTABLEKS                       R2 R0 K12 ["_generateGUID"]
       58 MOVE                             R3 R1
       59 CALL                             R2 1 -1
       60 RETURN                           R2 -1

PROTO_12:
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
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Flags"]
       31 GETTABLEKS                       R5 R5 K15 ["getFFlagAnimGraphUIEnableValueNodes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Flags"]
       38 GETTABLEKS                       R6 R6 K16 ["getFFlagAnimGraphUIInputIds"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R2 K17 ["STATE_MACHINE"]
       43 GETTABLEKS                       R6 R6 K18 ["TransitionClassName"]
       45 NEWTABLE                         R7 16 0
       47 SETTABLEKS                       R7 R7 K19 ["__index"]
       49 DUPCLOSURE                       R8 K20 [PROTO_1]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R8 R7 K21 ["new"]
       54 DUPCLOSURE                       R8 K22 [PROTO_3]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R8 R7 K23 ["newDeterministic"]
       59 DUPCLOSURE                       R8 K24 [PROTO_5]
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R8 R7 K25 ["createUnimplemented"]
       63 DUPCLOSURE                       R8 K26 [PROTO_6]
       64 SETTABLEKS                       R8 R7 K27 ["instanceToId"]
       66 DUPCLOSURE                       R8 K28 [PROTO_7]
       67 SETTABLEKS                       R8 R7 K29 ["idToInstance"]
       69 DUPCLOSURE                       R8 K30 [PROTO_8]
       70 SETTABLEKS                       R8 R7 K31 ["_ensureIdProperty"]
       72 DUPCLOSURE                       R8 K32 [PROTO_9]
       73 SETTABLEKS                       R8 R7 K33 ["_ensureAttributeId"]
       75 DUPCLOSURE                       R8 K34 [PROTO_10]
       76 SETTABLEKS                       R8 R7 K35 ["ensureInputId"]
       78 DUPCLOSURE                       R8 K36 [PROTO_11]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R8 R7 K37 ["_ensureUniqueId"]
       85 DUPCLOSURE                       R8 K38 [PROTO_12]
       86 SETTABLEKS                       R8 R7 K39 ["destroy"]
       88 RETURN                           R7 1
