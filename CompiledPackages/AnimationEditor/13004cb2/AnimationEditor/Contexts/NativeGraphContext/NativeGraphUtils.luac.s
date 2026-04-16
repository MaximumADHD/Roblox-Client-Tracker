PROTO_0:
        0 LOADK                            R5 K0 ["Configuration"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 1
        6 JUMPIF                           R2 ; [+7]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 JUMPIFEQKNIL                     R3 ; [+2]
       13 RETURN                           R3 1
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K0 ["Configuration"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R1 R3 K6 ["Name"]
       20 SETTABLEKS                       R0 R3 K7 ["Parent"]
       22 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Configuration"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R4 K0 ["Configuration"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["of"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["_getOrCreateConfigInstance"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K4 ["observeFirstNamedChild"]
       20 MOVE                             R3 R0
       21 DUPCLOSURE                       R4 K5 [PROTO_1]
       22 MOVE                             R5 R1
       23 CALL                             R2 3 1
       24 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["parameterName"]
        2 JUMPIF                           R3 ; [+7]
        3 LOADK                            R4 K1 ["%*Parameter"]
        4 GETTABLEKS                       R6 R2 K2 ["parameterType"]
        6 NAMECALL                         R4 R4 K3 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 MOVE                             R4 R3
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K4 ["getParameterInstanceName"]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R2 K5 ["allowDuplication"]
       18 JUMPIF                           R6 ; [+21]
       19 LOADN                            R6 0
       20 MOVE                             R9 R5
       21 NAMECALL                         R7 R1 K6 ["FindFirstChild"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+15]
       25 ADDK                             R6 R6 K7 [1]
       26 GETIMPORT                        R7 K9 [string.format]
       28 LOADK                            R8 K10 ["%s%d"]
       29 MOVE                             R9 R3
       30 MOVE                             R10 R6
       31 CALL                             R7 3 1
       32 MOVE                             R4 R7
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K4 ["getParameterInstanceName"]
       36 MOVE                             R8 R4
       37 CALL                             R7 1 1
       38 MOVE                             R5 R7
       39 JUMPBACK                         ; [-20]
       40 GETIMPORT                        R6 K13 [Instance.new]
       42 LOADK                            R7 K14 ["Folder"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R5 R6 K15 ["Name"]
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K16 ["NODE_ATTRIBUTES"]
       49 GETTABLEKS                       R9 R10 K17 ["ParameterType"]
       51 NAMECALL                         R7 R6 K18 ["GetAttribute"]
       53 CALL                             R7 2 1
       54 JUMPIF                           R7 ; [+19]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R10 R11 K16 ["NODE_ATTRIBUTES"]
       58 GETTABLEKS                       R9 R10 K17 ["ParameterType"]
       60 GETTABLEKS                       R10 R2 K2 ["parameterType"]
       62 NAMECALL                         R7 R6 K19 ["SetAttribute"]
       64 CALL                             R7 3 0
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K16 ["NODE_ATTRIBUTES"]
       68 GETTABLEKS                       R9 R10 K20 ["BindingName"]
       70 MOVE                             R10 R4
       71 NAMECALL                         R7 R6 K19 ["SetAttribute"]
       73 CALL                             R7 3 0
       74 SETTABLEKS                       R1 R6 K21 ["Parent"]
       76 MOVE                             R9 R6
       77 NAMECALL                         R7 R0 K22 ["instanceToId"]
       79 CALL                             R7 2 0
       80 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R3 R2 K0 ["parameterType"]
        2 GETTABLEKS                       R4 R2 K1 ["parameterName"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["getParameterInstanceName"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 1
        9 MOVE                             R8 R5
       10 NAMECALL                         R6 R1 K3 ["FindFirstChild"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+2]
       14 LOADNIL                          R7
       15 RETURN                           R7 1
       16 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       18 MOVE                             R8 R3
       19 LOADK                            R9 K4 ["Parameter type must be provided for createExistingParameterInstance"]
       20 GETIMPORT                        R7 K6 [assert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K7 ["getOrCreateParameterInstance"]
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 DUPTABLE                         R10 K9 [{"parameterType", "allowDuplication", "parameterName"}]
       29 SETTABLEKS                       R3 R10 K0 ["parameterType"]
       31 LOADB                            R11 1
       32 SETTABLEKS                       R11 R10 K8 ["allowDuplication"]
       34 SETTABLEKS                       R4 R10 K1 ["parameterName"]
       36 CALL                             R7 3 1
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R0 K10 ["instanceToId"]
       40 CALL                             R8 2 0
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R11 R12 K11 ["NODE_ATTRIBUTES"]
       44 GETTABLEKS                       R10 R11 K12 ["ParameterType"]
       46 MOVE                             R11 R3
       47 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       49 CALL                             R8 3 0
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K11 ["NODE_ATTRIBUTES"]
       53 GETTABLEKS                       R10 R11 K14 ["BindingName"]
       55 MOVE                             R11 R4
       56 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       58 CALL                             R8 3 0
       59 RETURN                           R7 1

PROTO_5:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R3 K1 ["Properties"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["Name"]
       13 JUMPIFNOTEQ                      R9 R1 ; [+4]
       15 GETTABLEKS                       R2 R8 K3 ["Type"]
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R4 2 ; [-8]
       20 JUMPIF                           R2 ; [+2]
       21 LOADNIL                          R4
       22 RETURN                           R4 1
       23 GETIMPORT                        R4 K6 [string.find]
       25 MOVE                             R5 R2
       26 LOADK                            R6 K7 ["Enum"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+1]
       29 LOADK                            R2 K7 ["Enum"]
       30 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R5 R1
        1 LOADK                            R7 K0 ["param::%*"]
        2 MOVE                             R9 R2
        3 NAMECALL                         R7 R7 K1 ["format"]
        5 CALL                             R7 2 1
        6 MOVE                             R6 R7
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_getOrCreateConfigInstance"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["NODE_CONFIGURATION_NAME"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K2 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R4 R5 K3 ["Position"]
       13 NAMECALL                         R2 R1 K4 ["GetAttribute"]
       15 CALL                             R2 2 1
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R4 K6 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K7 ["Vector2"] ; [+3]
       23 MOVE                             R3 R2
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_getOrCreateConfigInstance"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["NODE_CONFIGURATION_NAME"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K2 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R5 R6 K3 ["Position"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_getOrCreateConfigInstance"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["NODE_CONFIGURATION_NAME"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K2 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R5 R6 K3 ["Size"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_getOrCreateConfigInstance"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["NODE_CONFIGURATION_NAME"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K2 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R5 R6 K3 ["Collapsed"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R2 K0 ["Parameter_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getParameterInstanceName"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 0 0
        7 NAMECALL                         R4 R0 K1 ["GetChildren"]
        9 CALL                             R4 1 3
       10 FORGPREP                         R4
       11 LOADK                            R11 K2 ["Folder"]
       12 NAMECALL                         R9 R8 K3 ["IsA"]
       14 CALL                             R9 2 1
       15 JUMPIFNOT                        R9 ; [+11]
       16 GETTABLEKS                       R9 R8 K4 ["Name"]
       18 JUMPIFNOTEQ                      R9 R2 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       22 MOVE                             R10 R3
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K7 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-17]
       29 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Folder"]
        2 NAMECALL                         R1 R1 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R1 ; [+2]
        9 MOVE                             R3 R2
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R1 ; [+2]
       13 GETUPVAL                         R4 0
       14 JUMP                             ; [+1]
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+6]
       17 GETUPVAL                         R5 2
       18 MOVE                             R7 R4
       19 NAMECALL                         R5 R5 K2 ["instanceToId"]
       21 CALL                             R5 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R6 2
       26 MOVE                             R8 R3
       27 NAMECALL                         R6 R6 K2 ["instanceToId"]
       29 CALL                             R6 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R6
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R0
       34 CALL                             R7 1 1
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R8 R9 K3 ["getParameterWireInputPinId"]
       38 MOVE                             R9 R7
       39 CALL                             R8 1 1
       40 OR                               R9 R8 R7
       41 DUPTABLE                         R10 K10 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       42 GETUPVAL                         R11 5
       43 SETTABLEKS                       R11 R10 K4 ["wireId"]
       45 SETTABLEKS                       R6 R10 K5 ["inputNodeId"]
       47 SETTABLEKS                       R9 R10 K6 ["inputNodePinId"]
       49 SETTABLEKS                       R5 R10 K7 ["outputNodeId"]
       51 LOADK                            R11 K11 ["Output"]
       52 SETTABLEKS                       R11 R10 K8 ["outputNodePinId"]
       54 GETUPVAL                         R11 6
       55 MOVE                             R12 R0
       56 CALL                             R11 1 1
       57 SETTABLEKS                       R11 R10 K9 ["properties"]
       59 RETURN                           R10 1

PROTO_14:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["properties"]
        7 GETTABLEKS                       R4 R5 K2 ["observeInstance"]
        9 MOVE                             R5 R2
       10 LOADK                            R6 K3 ["Value"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["properties"]
       15 GETTABLEKS                       R5 R6 K4 ["observeString"]
       17 MOVE                             R6 R2
       18 LOADK                            R7 K5 ["Name"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K6 ["observeAttributes"]
       23 MOVE                             R7 R2
       24 CALL                             R6 1 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K7 ["createComputed"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 CALL                             R7 1 -1
       37 RETURN                           R7 -1

PROTO_15:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K5 ["observeWireInfo"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_16:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+4]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Bad Node Instance Type"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["observeChildrenWhichIsA"]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K7 ["ObjectValue"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K8 ["forEach"]
       24 MOVE                             R3 R1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CALL                             R2 2 1
       30 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K3 [{"nodeId", "inputNodesByPinName", "outputNodesByPinName"}]
        7 SETTABLEKS                       R0 R1 K0 ["nodeId"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["inputNodesByPinName"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K2 ["outputNodesByPinName"]
       17 GETUPVAL                         R2 0
       18 SETTABLE                         R1 R2 R0
       19 RETURN                           R1 1

PROTO_18:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["inputNodeId"]
       10 JUMPIFEQKNIL                     R11 ; [+73]
       12 GETTABLEKS                       R11 R10 K1 ["outputNodeId"]
       14 JUMPIFEQKNIL                     R11 ; [+69]
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R12 R10 K0 ["inputNodeId"]
       19 CALL                             R11 1 1
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       23 CALL                             R12 1 1
       24 GETTABLEKS                       R13 R11 K2 ["inputNodesByPinName"]
       26 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       28 DUPTABLE                         R15 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       29 GETTABLEKS                       R16 R10 K4 ["wireId"]
       31 SETTABLEKS                       R16 R15 K4 ["wireId"]
       33 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
       35 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
       37 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
       39 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
       41 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
       43 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
       45 GETTABLEKS                       R16 R10 K5 ["outputNodePinId"]
       47 SETTABLEKS                       R16 R15 K5 ["outputNodePinId"]
       49 GETTABLEKS                       R16 R10 K6 ["properties"]
       51 SETTABLEKS                       R16 R15 K6 ["properties"]
       53 SETTABLE                         R15 R13 R14
       54 GETTABLEKS                       R13 R12 K8 ["outputNodesByPinName"]
       56 GETTABLEKS                       R14 R10 K5 ["outputNodePinId"]
       58 DUPTABLE                         R15 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       59 GETTABLEKS                       R16 R10 K4 ["wireId"]
       61 SETTABLEKS                       R16 R15 K4 ["wireId"]
       63 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
       65 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
       67 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
       69 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
       71 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
       73 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
       75 GETTABLEKS                       R16 R10 K5 ["outputNodePinId"]
       77 SETTABLEKS                       R16 R15 K5 ["outputNodePinId"]
       79 GETTABLEKS                       R16 R10 K6 ["properties"]
       81 SETTABLEKS                       R16 R15 K6 ["properties"]
       83 SETTABLE                         R15 R13 R14
       84 FORGLOOP                         R6 2 ; [-77]
       86 FORGLOOP                         R1 2 ; [-83]
       88 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R4
       12 MOVE                             R6 R5
       13 MOVE                             R7 R2
       14 CALL                             R6 1 0
       15 MOVE                             R6 R5
       16 MOVE                             R7 R3
       17 CALL                             R6 1 0
       18 MOVE                             R6 R1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETIMPORT                        R11 K2 [table.freeze]
       24 MOVE                             R12 R10
       25 CALL                             R11 1 0
       26 FORGLOOP                         R6 2 ; [-5]
       28 GETIMPORT                        R6 K2 [table.freeze]
       30 MOVE                             R7 R1
       31 CALL                             R6 1 -1
       32 RETURN                           R6 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["observeChildrenWhichIsA"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K2 ["Folder"]
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K3 ["forEach"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R4
       21 CALL                             R5 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K3 ["forEach"]
       25 MOVE                             R7 R3
       26 MOVE                             R8 R4
       27 CALL                             R6 2 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K4 ["createComputed"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 CALL                             R7 1 -1
       35 RETURN                           R7 -1

PROTO_21:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_22:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s"]
        4 LOADK                            R4 K4 ["_"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["^RBX_"]
       11 LOADK                            R4 K6 [""]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 JUMPIFNOTEQKS                    R0 K6 [""] ; [+3]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        9 LOADK                            R4 K0 ["Observed parameter instance is nil"]
       10 GETIMPORT                        R2 K2 [assert]
       12 CALL                             R2 2 0
       13 DUPTABLE                         R2 K7 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K3 ["id"]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K4 ["parameterType"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K5 ["parameterName"]
       27 GETUPVAL                         R4 4
       28 MOVE                             R5 R0
       29 CALL                             R4 1 1
       30 ORK                              R3 R4 K8 [""]
       31 SETTABLEKS                       R3 R2 K6 ["parameterBindingName"]
       33 RETURN                           R2 1

PROTO_24:
        0 DUPTABLE                         R1 K3 [{"nodeId", "parameterType", "parameterData"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 ORK                              R2 R3 K4 [""]
        8 SETTABLEKS                       R2 R1 K1 ["parameterType"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K2 ["parameterData"]
       15 GETIMPORT                        R2 K7 [table.freeze]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_25:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["properties"]
        7 GETTABLEKS                       R3 R4 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["Name"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["attributes"]
       15 GETTABLEKS                       R4 R5 K2 ["observeString"]
       17 MOVE                             R5 R1
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K5 ["NODE_ATTRIBUTES"]
       21 GETTABLEKS                       R6 R7 K6 ["ParameterType"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K4 ["attributes"]
       27 GETTABLEKS                       R5 R6 K2 ["observeString"]
       29 MOVE                             R6 R1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K5 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R7 R8 K7 ["BindingName"]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K8 ["of"]
       39 MOVE                             R7 R1
       40 CALL                             R6 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R7 R8 K9 ["createComputed"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CALL                             R7 1 1
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K9 ["createComputed"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CALL                             R8 1 -1
       59 RETURN                           R8 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["GetAnimationNodeDefinition"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K1 ["Properties"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 RETURN                           R3 1

PROTO_27:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_28:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Instance must be an ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K5 ["properties"]
       13 GETTABLEKS                       R1 R2 K6 ["observeString"]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K7 ["Name"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K8 ["createComputed"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["name"]
       11 GETTABLEKS                       R9 R7 K1 ["instance"]
       13 SETTABLE                         R9 R2 R8
       14 FORGLOOP                         R3 2 ; [-6]
       16 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Name"]
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_31:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["properties"]
        4 GETTABLEKS                       R1 R2 K1 ["observeInstance"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["Value"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 DUPTABLE                         R2 K2 [{"key", "value"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K3 ["Name"]
        8 SETTABLEKS                       R3 R2 K0 ["key"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K4 ["instanceToId"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["value"]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFEQKS                       R1 K1 ["Mask"] ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["of"]
        7 LOADNIL                          R2
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K4 ["switchMap"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K5 [PROTO_31]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U0
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K3 ["createComputed"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K2 [table.clone]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K3 ["key"]
       16 GETTABLEKS                       R10 R8 K4 ["value"]
       18 SETTABLE                         R10 R3 R9
       19 FORGLOOP                         R4 2 ; [-6]
       21 GETIMPORT                        R4 K6 [table.freeze]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 -1
       25 RETURN                           R4 -1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeNodeType"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["observeAttributes"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["observeChildrenWhichIsA"]
       13 MOVE                             R5 R0
       14 LOADK                            R6 K3 ["ObjectValue"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["createComputed"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K5 ["forEach"]
       26 MOVE                             R7 R4
       27 DUPCLOSURE                       R8 K6 [PROTO_28]
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U2
       30 CALL                             R6 2 1
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R7 R8 K4 ["createComputed"]
       34 NEWCLOSURE                       R8 P2
       35 CAPTURE                          VAL R6
       36 CALL                             R7 1 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K5 ["forEach"]
       40 MOVE                             R9 R5
       41 NEWCLOSURE                       R10 P3
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R7
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CALL                             R8 2 1
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R9 R10 K4 ["createComputed"]
       51 NEWCLOSURE                       R10 P4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CALL                             R9 1 1
       55 RETURN                           R9 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+8]
        5 GETTABLEKS                       R2 R1 K0 ["EnumType"]
        7 GETIMPORT                        R3 K3 [Enum.AnimationNodeType]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 RETURN                           R1 1
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["NodeType is not an AnimationNodeType"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["properties"]
        3 GETTABLEKS                       R1 R2 K1 ["observeEnumItem"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["NodeType"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_38:
        0 DUPTABLE                         R1 K4 [{"nodeId", "inputPinIds", "name", "nodeType"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["inputPinIds"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["name"]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K3 ["nodeType"]
       19 GETIMPORT                        R2 K7 [table.freeze]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_39:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["attributes"]
        7 GETTABLEKS                       R3 R4 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K3 ["NODE_ATTRIBUTES"]
       13 GETTABLEKS                       R5 R6 K4 ["DisplayName"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K5 ["observeNodeType"]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K6 ["observeInputPins"]
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K7 ["createComputed"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CALL                             R6 1 -1
       35 RETURN                           R6 -1

PROTO_40:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["AnimationNodeDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_41:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Not correct type"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K5 ["observeNodeInfo"]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_40]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["forEach"]
       10 MOVE                             R4 R2
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_43:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["Folder"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R11 K0 ["Folder"]
       10 NAMECALL                         R9 R7 K1 ["IsA"]
       12 CALL                             R9 2 1
       13 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       15 LOADK                            R10 K2 ["non-folder instance observed for parameter node info lookup list"]
       16 GETIMPORT                        R8 K4 [assert]
       18 CALL                             R8 2 0
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R11 R12 K5 ["NODE_ATTRIBUTES"]
       22 GETTABLEKS                       R10 R11 K6 ["ParameterType"]
       24 NAMECALL                         R8 R7 K7 ["GetAttribute"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+13]
       28 MOVE                             R9 R2
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K8 ["observeParameterNodeInfo"]
       32 GETUPVAL                         R11 3
       33 MOVE                             R12 R7
       34 CALL                             R10 2 1
       35 MOVE                             R11 R0
       36 CALL                             R10 1 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R8 K11 [table.insert]
       40 CALL                             R8 -1 0
       41 FORGLOOP                         R3 2 ; [-33]
       43 GETIMPORT                        R3 K13 [table.freeze]
       45 MOVE                             R4 R2
       46 CALL                             R3 1 -1
       47 RETURN                           R3 -1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_43]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 1
       16 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOT                        R7 ; [+3]
       10 GETTABLEKS                       R8 R7 K0 ["nodeId"]
       12 SETTABLE                         R7 R2 R8
       13 FORGLOOP                         R3 2 ; [-5]
       15 GETIMPORT                        R3 K3 [table.freeze]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["forEach"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["createComputed"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_49:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["attributes"]
       10 GETTABLEKS                       R1 R2 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R4 K4 ["Position"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_50:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["attributes"]
       10 GETTABLEKS                       R1 R2 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R4 K4 ["Size"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_51:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["attributes"]
       10 GETTABLEKS                       R1 R2 K2 ["observeBoolean"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R4 K4 ["Collapsed"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_52:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 DUPTABLE                         R2 K8 [{"nodeId", "position", "size", "isCollapsed", "isSelected"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K3 ["nodeId"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 GETIMPORT                        R3 K11 [Vector2.zero]
       12 SETTABLEKS                       R3 R2 K4 ["position"]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+2]
       18 GETIMPORT                        R3 K11 [Vector2.zero]
       20 SETTABLEKS                       R3 R2 K5 ["size"]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 ORK                              R3 R4 K12 [False]
       26 SETTABLEKS                       R3 R2 K6 ["isCollapsed"]
       28 GETUPVAL                         R4 4
       29 MOVE                             R5 R0
       30 CALL                             R4 1 1
       31 ORK                              R3 R4 K12 [False]
       32 SETTABLEKS                       R3 R2 K7 ["isSelected"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

PROTO_53:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["idToInstance"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+6]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["of"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 -1
       10 RETURN                           R4 -1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["_observeOrCreateConfigInstance"]
       14 MOVE                             R5 R3
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K3 ["NODE_CONFIGURATION_NAME"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["switchMap"]
       22 MOVE                             R6 R4
       23 DUPCLOSURE                       R7 K5 [PROTO_49]
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["switchMap"]
       31 MOVE                             R7 R4
       32 DUPCLOSURE                       R8 K6 [PROTO_50]
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U2
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K4 ["switchMap"]
       40 MOVE                             R8 R4
       41 DUPCLOSURE                       R9 K7 [PROTO_51]
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U2
       45 CALL                             R7 2 1
       46 MOVE                             R10 R3
       47 NAMECALL                         R8 R1 K8 ["observeIsSelected"]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R9 R10 K9 ["createComputed"]
       53 NEWCLOSURE                       R10 P3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CALL                             R9 1 -1
       60 RETURN                           R9 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETIMPORT                        R10 K1 [game]
       10 NAMECALL                         R8 R6 K2 ["IsDescendantOf"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+59]
       14 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       15 NAMECALL                         R8 R6 K4 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+13]
       19 GETIMPORT                        R8 K6 [error]
       21 LOADK                            R10 K7 ["Unexpected key in root animations map: \"%*\" (%*)"]
       22 NAMECALL                         R12 R6 K8 ["GetFullName"]
       24 CALL                             R12 1 1
       25 GETTABLEKS                       R13 R6 K9 ["ClassName"]
       27 NAMECALL                         R10 R10 K10 ["format"]
       29 CALL                             R10 3 1
       30 MOVE                             R9 R10
       31 CALL                             R8 1 0
       32 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       33 NAMECALL                         R8 R7 K4 ["IsA"]
       35 CALL                             R8 2 1
       36 JUMPIFNOT                        R8 ; [+8]
       37 DUPTABLE                         R8 K13 [{"from", "graph"}]
       38 LOADK                            R9 K12 ["graph"]
       39 SETTABLEKS                       R9 R8 K11 ["from"]
       41 SETTABLEKS                       R6 R8 K12 ["graph"]
       43 SETUPVAL                         R8 1
       44 RETURN                           R6 1
       45 GETUPVAL                         R8 1
       46 JUMPIFNOTEQKNIL                  R8 ; [+9]
       48 DUPTABLE                         R8 K13 [{"from", "graph"}]
       49 LOADK                            R9 K14 ["rig"]
       50 SETTABLEKS                       R9 R8 K11 ["from"]
       52 SETTABLEKS                       R6 R8 K12 ["graph"]
       54 MOVE                             R2 R8
       55 JUMP                             ; [+17]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K12 ["graph"]
       59 GETTABLEKS                       R8 R9 K15 ["Parent"]
       61 GETTABLEKS                       R9 R6 K15 ["Parent"]
       63 JUMPIFNOTEQ                      R8 R9 ; [+2]
       65 JUMP                             ; [+7]
       66 DUPTABLE                         R8 K13 [{"from", "graph"}]
       67 LOADK                            R9 K14 ["rig"]
       68 SETTABLEKS                       R9 R8 K11 ["from"]
       70 SETTABLEKS                       R6 R8 K12 ["graph"]
       72 MOVE                             R2 R8
       73 FORGLOOP                         R3 2 ; [-66]
       75 JUMPIFEQKNIL                     R2 ; [+2]
       77 SETUPVAL                         R2 1
       78 GETUPVAL                         R3 1
       79 JUMPIFNOT                        R3 ; [+3]
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R3 R4 K12 ["graph"]
       83 RETURN                           R3 1

PROTO_55:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeFirstAncestor"]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K1 ["DataModel"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["of"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R1 ; [+2]
        8 RETURN                           R2 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRootAnimationsMap"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        5 CALL                             R1 2 1
        6 LOADNIL                          R2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["switchMap"]
       17 MOVE                             R5 R3
       18 DUPCLOSURE                       R6 K4 [PROTO_55]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R4 2 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K2 ["createComputed"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CALL                             R5 1 1
       28 CLOSEUPVALS                      R2
       29 RETURN                           R5 1

PROTO_58:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeNodeConnectionMap"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["of"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 LOADNIL                          R5
       13 NEWTABLE                         R6 0 0
       15 MOVE                             R7 R2
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R13 R11 K0 ["nodeId"]
       21 GETTABLE                         R12 R4 R13
       22 NEWTABLE                         R13 0 0
       24 NEWTABLE                         R14 0 0
       26 JUMPIFNOT                        R12 ; [+20]
       27 GETTABLEKS                       R15 R12 K1 ["inputNodesByPinName"]
       29 LOADNIL                          R16
       30 LOADNIL                          R17
       31 FORGPREP                         R15
       32 GETTABLEKS                       R20 R19 K2 ["inputNodePinId"]
       34 SETTABLE                         R19 R13 R20
       35 FORGLOOP                         R15 2 ; [-4]
       37 GETTABLEKS                       R15 R12 K3 ["outputNodesByPinName"]
       39 LOADNIL                          R16
       40 LOADNIL                          R17
       41 FORGPREP                         R15
       42 GETTABLEKS                       R20 R19 K4 ["outputNodePinId"]
       44 SETTABLE                         R19 R14 R20
       45 FORGLOOP                         R15 2 ; [-4]
       47 GETTABLEKS                       R15 R11 K5 ["nodeType"]
       49 GETIMPORT                        R16 K9 [Enum.AnimationNodeType.GraphOutput]
       51 JUMPIFNOTEQ                      R15 R16 ; [+3]
       53 GETTABLEKS                       R5 R11 K0 ["nodeId"]
       55 GETIMPORT                        R15 K12 [table.freeze]
       57 DUPTABLE                         R16 K22 [{"inputPinIds", "outputPinToConnectionMap", "inputPinToConnectionMap", "className", "id", "index", "name", "nodeType", "props", "state"}]
       58 GETTABLEKS                       R17 R11 K13 ["inputPinIds"]
       60 SETTABLEKS                       R17 R16 K13 ["inputPinIds"]
       62 SETTABLEKS                       R14 R16 K14 ["outputPinToConnectionMap"]
       64 SETTABLEKS                       R13 R16 K15 ["inputPinToConnectionMap"]
       66 GETTABLEKS                       R18 R11 K5 ["nodeType"]
       68 GETTABLEKS                       R17 R18 K23 ["Name"]
       70 SETTABLEKS                       R17 R16 K16 ["className"]
       72 GETTABLEKS                       R17 R11 K0 ["nodeId"]
       74 SETTABLEKS                       R17 R16 K17 ["id"]
       76 LOADNIL                          R17
       77 SETTABLEKS                       R17 R16 K18 ["index"]
       79 GETTABLEKS                       R17 R11 K19 ["name"]
       81 SETTABLEKS                       R17 R16 K19 ["name"]
       83 GETTABLEKS                       R17 R11 K5 ["nodeType"]
       85 SETTABLEKS                       R17 R16 K5 ["nodeType"]
       87 LOADNIL                          R17
       88 SETTABLEKS                       R17 R16 K20 ["props"]
       90 LOADNIL                          R17
       91 SETTABLEKS                       R17 R16 K21 ["state"]
       93 CALL                             R15 1 1
       94 GETTABLEKS                       R16 R11 K0 ["nodeId"]
       96 SETTABLE                         R15 R6 R16
       97 FORGLOOP                         R7 2 ; [-79]
       99 MOVE                             R7 R3
      100 LOADNIL                          R8
      101 LOADNIL                          R9
      102 FORGPREP                         R7
      103 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      105 GETTABLE                         R12 R4 R13
      106 NEWTABLE                         R13 0 0
      108 JUMPIFNOT                        R12 ; [+10]
      109 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      111 LOADNIL                          R15
      112 LOADNIL                          R16
      113 FORGPREP                         R14
      114 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      116 SETTABLE                         R18 R13 R19
      117 FORGLOOP                         R14 2 ; [-4]
      119 GETIMPORT                        R14 K12 [table.freeze]
      121 DUPTABLE                         R15 K25 [{"inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "className", "id", "nodeType", "name", "parentId"}]
      122 NEWTABLE                         R16 0 0
      124 SETTABLEKS                       R16 R15 K13 ["inputPinIds"]
      126 NEWTABLE                         R16 0 0
      128 SETTABLEKS                       R16 R15 K15 ["inputPinToConnectionMap"]
      130 SETTABLEKS                       R13 R15 K14 ["outputPinToConnectionMap"]
      132 GETUPVAL                         R17 4
      133 GETTABLEKS                       R16 R17 K26 ["PARAMETER_NODE_CLASSNAME"]
      135 SETTABLEKS                       R16 R15 K16 ["className"]
      137 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      139 SETTABLEKS                       R16 R15 K17 ["id"]
      141 GETTABLEKS                       R16 R11 K27 ["parameterType"]
      143 SETTABLEKS                       R16 R15 K5 ["nodeType"]
      145 GETTABLEKS                       R17 R11 K28 ["parameterData"]
      147 GETTABLEKS                       R16 R17 K29 ["parameterBindingName"]
      149 SETTABLEKS                       R16 R15 K19 ["name"]
      151 LOADNIL                          R16
      152 SETTABLEKS                       R16 R15 K24 ["parentId"]
      154 CALL                             R14 1 1
      155 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      157 SETTABLE                         R14 R6 R15
      158 FORGLOOP                         R7 2 ; [-56]
      160 GETIMPORT                        R7 K12 [table.freeze]
      162 DUPTABLE                         R8 K33 [{"graphInstanceId", "lookup", "output"}]
      163 JUMPIFNOT                        R1 ; [+6]
      164 GETUPVAL                         R9 5
      165 MOVE                             R11 R1
      166 NAMECALL                         R9 R9 K34 ["instanceToId"]
      168 CALL                             R9 2 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R9
      171 SETTABLEKS                       R9 R8 K30 ["graphInstanceId"]
      173 GETIMPORT                        R9 K12 [table.freeze]
      175 MOVE                             R10 R6
      176 CALL                             R9 1 1
      177 SETTABLEKS                       R9 R8 K31 ["lookup"]
      179 SETTABLEKS                       R5 R8 K32 ["output"]
      181 CALL                             R7 1 -1
      182 RETURN                           R7 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R1 K0 ["lookup"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R7 K1 ["id"]
       12 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       14 MOVE                             R9 R2
       15 GETIMPORT                        R8 K4 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-9]
       20 GETIMPORT                        R3 K6 [table.freeze]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["of"]
       14 LOADNIL                          R3
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K4 ["observeNodeProps"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R4 0
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K5 ["createComputed"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFEQKNIL                     R7 ; [+10]
       11 GETTABLEKS                       R8 R7 K0 ["nodeProps"]
       13 JUMPIFEQKNIL                     R8 ; [+6]
       15 GETTABLEKS                       R8 R7 K1 ["nodeId"]
       17 GETTABLEKS                       R9 R7 K0 ["nodeProps"]
       19 SETTABLE                         R9 R2 R8
       20 FORGLOOP                         R3 2 ; [-12]
       22 RETURN                           R2 1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K2 [table.freeze]
       14 DUPTABLE                         R6 K7 [{"graphPayloadMap", "renderInfoMap", "connectionMap", "graphNodeProps"}]
       15 SETTABLEKS                       R2 R6 K3 ["graphPayloadMap"]
       17 SETTABLEKS                       R3 R6 K4 ["renderInfoMap"]
       19 SETTABLEKS                       R1 R6 K5 ["connectionMap"]
       21 SETTABLEKS                       R4 R6 K6 ["graphNodeProps"]
       23 CALL                             R5 1 -1
       24 RETURN                           R5 -1

PROTO_65:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["switchMap"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["observeNodeInfoLookupList"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K2 ["observeParameterNodeInfoLookupList"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R2
       20 CALL                             R5 2 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K3 ["createComputed"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K3 ["createComputed"]
       35 NEWCLOSURE                       R8 P2
       36 CAPTURE                          VAL R6
       37 CALL                             R7 1 1
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R8 R9 K4 ["observeRenderInfoMap"]
       41 MOVE                             R9 R0
       42 MOVE                             R10 R1
       43 MOVE                             R11 R7
       44 CALL                             R8 3 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K5 ["forEach"]
       48 MOVE                             R10 R7
       49 NEWCLOSURE                       R11 P3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CALL                             R9 2 1
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R10 R11 K3 ["createComputed"]
       58 NEWCLOSURE                       R11 P4
       59 CAPTURE                          VAL R9
       60 CALL                             R10 1 1
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R11 R12 K3 ["createComputed"]
       64 NEWCLOSURE                       R12 P5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R10
       69 CALL                             R11 1 -1
       70 RETURN                           R11 -1

PROTO_66:
        0 LOADK                            R2 K0 [∞]
        1 LOADK                            R3 K0 [∞]
        2 LOADK                            R4 K1 [-∞]
        3 LOADK                            R5 K1 [-∞]
        4 GETTABLEKS                       R6 R1 K2 ["lookup"]
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 GETTABLEKS                       R12 R10 K3 ["id"]
       11 GETTABLE                         R11 R0 R12
       12 JUMPIFNOT                        R11 ; [+59]
       13 GETTABLEKS                       R12 R11 K4 ["position"]
       15 JUMPIFNOT                        R12 ; [+56]
       16 GETTABLEKS                       R12 R11 K5 ["size"]
       18 JUMPIFNOT                        R12 ; [+53]
       19 GETTABLEKS                       R12 R11 K4 ["position"]
       21 GETTABLEKS                       R14 R11 K4 ["position"]
       23 GETIMPORT                        R15 K8 [Vector2.new]
       25 GETTABLEKS                       R17 R11 K5 ["size"]
       27 GETTABLEKS                       R16 R17 K9 ["X"]
       29 GETTABLEKS                       R19 R11 K5 ["size"]
       31 GETTABLEKS                       R18 R19 K10 ["Y"]
       33 MINUS                            R17 R18
       34 CALL                             R15 2 1
       35 ADD                              R13 R14 R15
       36 GETTABLEKS                       R16 R12 K9 ["X"]
       38 FASTCALL2                        MATH_MIN R2 R16 ; [+4]
       40 MOVE                             R15 R2
       41 GETIMPORT                        R14 K13 [math.min]
       43 CALL                             R14 2 1
       44 MOVE                             R2 R14
       45 GETTABLEKS                       R16 R12 K10 ["Y"]
       47 FASTCALL2                        MATH_MIN R3 R16 ; [+4]
       49 MOVE                             R15 R3
       50 GETIMPORT                        R14 K13 [math.min]
       52 CALL                             R14 2 1
       53 MOVE                             R3 R14
       54 GETTABLEKS                       R16 R13 K9 ["X"]
       56 FASTCALL2                        MATH_MAX R4 R16 ; [+4]
       58 MOVE                             R15 R4
       59 GETIMPORT                        R14 K15 [math.max]
       61 CALL                             R14 2 1
       62 MOVE                             R4 R14
       63 GETTABLEKS                       R16 R13 K10 ["Y"]
       65 FASTCALL2                        MATH_MAX R5 R16 ; [+4]
       67 MOVE                             R15 R5
       68 GETIMPORT                        R14 K15 [math.max]
       70 CALL                             R14 2 1
       71 MOVE                             R5 R14
       72 FORGLOOP                         R6 2 ; [-64]
       74 JUMPIFLT                         R4 R2 ; [+3]
       76 JUMPIFNOTLT                      R5 R3 ; [+9]
       78 GETIMPORT                        R6 K17 [Rect.new]
       80 LOADN                            R7 0
       81 LOADN                            R8 0
       82 LOADN                            R9 0
       83 LOADN                            R10 0
       84 CALL                             R6 4 -1
       85 RETURN                           R6 -1
       86 GETIMPORT                        R6 K17 [Rect.new]
       88 MOVE                             R7 R2
       89 MOVE                             R8 R3
       90 MOVE                             R9 R4
       91 MOVE                             R10 R5
       92 CALL                             R6 4 1
       93 RETURN                           R6 1

PROTO_67:
        0 LOADK                            R4 K0 ["anchor_%*_%*_%*"]
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 4 1
        7 MOVE                             R3 R4
        8 RETURN                           R3 1

PROTO_68:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["inputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_69:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_70:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+11]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K1 ["removeNodeOutputConnection"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 GETTABLEKS                       R8 R4 K2 ["outputNodeId"]
       15 GETTABLEKS                       R9 R4 K3 ["outputNodePinId"]
       17 CALL                             R5 4 -1
       18 RETURN                           R5 -1
       19 LOADB                            R5 0
       20 RETURN                           R5 1

PROTO_71:
        0 LOADK                            R5 K0 ["ObjectValue"]
        1 NAMECALL                         R3 R2 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["idToInstance"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADK                            R6 K3 ["Folder"]
       13 NAMECALL                         R4 R3 K1 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIF                           R4 ; [+2]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 GETTABLEKS                       R5 R2 K4 ["Parent"]
       21 JUMPIFEQ                         R5 R3 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 RETURN                           R4 1

PROTO_72:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+30]
        5 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+25]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["hasDynamicInputPins"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+18]
       17 NAMECALL                         R5 R4 K4 ["GetOrderedInputPinNames"]
       19 CALL                             R5 1 1
       20 GETIMPORT                        R6 K7 [table.find]
       22 MOVE                             R7 R5
       23 MOVE                             R8 R3
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+9]
       26 GETIMPORT                        R7 K9 [table.remove]
       28 MOVE                             R8 R5
       29 MOVE                             R9 R6
       30 CALL                             R7 2 0
       31 MOVE                             R9 R5
       32 NAMECALL                         R7 R4 K10 ["SetOrderedInputPinNames"]
       34 CALL                             R7 2 0
       35 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_findNodeOutputBinding"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIF                           R4 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 GETTABLEKS                       R7 R4 K1 ["wireId"]
       12 NAMECALL                         R5 R0 K2 ["idToInstance"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R6 0
       17 RETURN                           R6 1
       18 GETTABLEKS                       R8 R4 K3 ["inputNodeId"]
       20 NAMECALL                         R6 R0 K2 ["idToInstance"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R5 ; [+21]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+18]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K5 ["isAParameterWire"]
       30 MOVE                             R8 R0
       31 MOVE                             R9 R2
       32 MOVE                             R10 R5
       33 CALL                             R7 3 1
       34 JUMPIFNOT                        R7 ; [+7]
       35 JUMPIFNOT                        R6 ; [+6]
       36 GETTABLEKS                       R9 R4 K6 ["inputNodePinId"]
       38 LOADNIL                          R10
       39 NAMECALL                         R7 R6 K7 ["SetAttribute"]
       41 CALL                             R7 3 0
       42 LOADNIL                          R7
       43 SETTABLEKS                       R7 R5 K4 ["Parent"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K8 ["removeOrderedInputPin"]
       48 MOVE                             R8 R0
       49 MOVE                             R9 R1
       50 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
       52 GETTABLEKS                       R11 R4 K6 ["inputNodePinId"]
       54 CALL                             R7 4 0
       55 LOADB                            R7 1
       56 RETURN                           R7 1

PROTO_74:
        0 LOADK                            R2 K0 ["connectionHint_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_75:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_76:
        0 JUMPIFEQKNIL                     R6 ; [+13]
        2 MOVE                             R10 R1
        3 NAMECALL                         R8 R6 K0 ["IsDescendantOf"]
        5 CALL                             R8 2 1
        6 JUMPIFNOT                        R8 ; [+7]
        7 LOADK                            R10 K1 ["ObjectValue"]
        8 NAMECALL                         R8 R6 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+2]
       12 MOVE                             R7 R6
       13 JUMP                             ; [+4]
       14 GETIMPORT                        R7 K5 [Instance.new]
       16 LOADK                            R8 K1 ["ObjectValue"]
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K6 ["getParameterWireName"]
       21 MOVE                             R9 R4
       22 CALL                             R8 1 1
       23 SETTABLEKS                       R8 R7 K7 ["Name"]
       25 SETTABLEKS                       R2 R7 K8 ["Value"]
       27 SETTABLEKS                       R5 R7 K9 ["Parent"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K10 ["setParameterBindingName"]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R4
       34 GETUPVAL                         R15 1
       35 GETTABLEKS                       R14 R15 K11 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R13 R14 K12 ["BindingName"]
       39 NAMECALL                         R11 R5 K13 ["GetAttribute"]
       41 CALL                             R11 2 1
       42 CALL                             R8 3 0
       43 MOVE                             R10 R7
       44 NAMECALL                         R8 R0 K14 ["instanceToId"]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R4
       48 RETURN                           R8 2

PROTO_77:
        0 MOVE                             R8 R2
        1 NAMECALL                         R6 R0 K0 ["idToInstance"]
        3 CALL                             R6 2 1
        4 MOVE                             R9 R4
        5 NAMECALL                         R7 R0 K0 ["idToInstance"]
        7 CALL                             R7 2 1
        8 JUMPIFEQKNIL                     R6 ; [+18]
       10 LOADK                            R10 K1 ["AnimationNodeDefinition"]
       11 NAMECALL                         R8 R6 K2 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+12]
       15 JUMPIFEQKNIL                     R7 ; [+11]
       17 LOADK                            R10 K1 ["AnimationNodeDefinition"]
       18 NAMECALL                         R8 R7 K2 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIF                           R8 ; [+6]
       22 LOADK                            R10 K3 ["Folder"]
       23 NAMECALL                         R8 R7 K2 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIF                           R8 ; [+1]
       27 RETURN                           R0 0
       28 LOADK                            R10 K4 ["AnimationGraphDefinition"]
       29 NAMECALL                         R8 R6 K5 ["FindFirstAncestorWhichIsA"]
       31 CALL                             R8 2 1
       32 JUMPIF                           R8 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K6 ["_findNodeOutputBinding"]
       37 MOVE                             R10 R1
       38 MOVE                             R11 R4
       39 MOVE                             R12 R5
       40 CALL                             R9 3 1
       41 JUMPIFNOT                        R9 ; [+6]
       42 GETTABLEKS                       R12 R9 K7 ["wireId"]
       44 NAMECALL                         R10 R0 K0 ["idToInstance"]
       46 CALL                             R10 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R10
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K8 ["_findNodeInputBinding"]
       52 MOVE                             R12 R1
       53 MOVE                             R13 R2
       54 MOVE                             R14 R3
       55 CALL                             R11 3 1
       56 JUMPIFNOT                        R11 ; [+6]
       57 GETTABLEKS                       R14 R11 K7 ["wireId"]
       59 NAMECALL                         R12 R0 K0 ["idToInstance"]
       61 CALL                             R12 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R12
       64 LOADK                            R15 K3 ["Folder"]
       65 NAMECALL                         R13 R7 K2 ["IsA"]
       67 CALL                             R13 2 1
       68 JUMPIFNOT                        R13 ; [+12]
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R13 R14 K9 ["setParameterConnection"]
       72 MOVE                             R14 R0
       73 MOVE                             R15 R8
       74 MOVE                             R16 R6
       75 MOVE                             R17 R2
       76 MOVE                             R18 R3
       77 MOVE                             R19 R7
       78 MOVE                             R20 R12
       79 CALL                             R13 7 -1
       80 RETURN                           R13 -1
       81 LOADNIL                          R13
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R14 R15 K10 ["hasDynamicInputPins"]
       85 MOVE                             R15 R1
       86 MOVE                             R16 R2
       87 CALL                             R14 2 1
       88 JUMPIFNOT                        R14 ; [+57]
       89 NAMECALL                         R14 R6 K11 ["GetOrderedInputPinNames"]
       91 CALL                             R14 1 1
       92 JUMPIFNOT                        R9 ; [+7]
       93 GETIMPORT                        R15 K14 [table.find]
       95 MOVE                             R16 R14
       96 GETTABLEKS                       R17 R9 K15 ["inputNodePinId"]
       98 CALL                             R15 2 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R15
      101 JUMPIFNOT                        R15 ; [+5]
      102 GETIMPORT                        R16 K17 [table.remove]
      104 MOVE                             R17 R14
      105 MOVE                             R18 R15
      106 CALL                             R16 2 0
      107 JUMPIFNOT                        R11 ; [+7]
      108 GETIMPORT                        R16 K14 [table.find]
      110 MOVE                             R17 R14
      111 GETTABLEKS                       R18 R11 K15 ["inputNodePinId"]
      113 CALL                             R16 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R16
      116 JUMPIFNOT                        R16 ; [+5]
      117 GETIMPORT                        R17 K17 [table.remove]
      119 MOVE                             R18 R14
      120 MOVE                             R19 R16
      121 CALL                             R17 2 0
      122 GETUPVAL                         R21 1
      123 GETTABLEKS                       R20 R21 K18 ["NODE_ATTRIBUTES"]
      125 GETTABLEKS                       R19 R20 K19 ["DisplayName"]
      127 NAMECALL                         R17 R7 K20 ["GetAttribute"]
      129 CALL                             R17 2 1
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R18 R19 K21 ["getDynamicInputPinNameFromInputPinIds"]
      133 MOVE                             R19 R14
      134 JUMPIFNOT                        R17 ; [+6]
      135 FASTCALL1                        TOSTRING R17 ; [+3]
      136 MOVE                             R21 R17
      137 GETIMPORT                        R20 K23 [tostring]
      139 CALL                             R20 1 1
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R20 R7 K24 ["Name"]
      143 CALL                             R18 2 1
      144 MOVE                             R13 R18
      145 JUMP                             ; [+1]
      146 MOVE                             R13 R3
      147 JUMPIFEQ                         R13 R3 ; [+9]
      149 GETUPVAL                         R15 0
      150 GETTABLEKS                       R14 R15 K8 ["_findNodeInputBinding"]
      152 MOVE                             R15 R1
      153 MOVE                             R16 R2
      154 MOVE                             R17 R13
      155 CALL                             R14 3 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R14
      158 JUMPIFNOT                        R14 ; [+6]
      159 GETTABLEKS                       R17 R14 K7 ["wireId"]
      161 NAMECALL                         R15 R0 K0 ["idToInstance"]
      163 CALL                             R15 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R15
      166 JUMPIFEQKNIL                     R12 ; [+13]
      168 MOVE                             R19 R8
      169 NAMECALL                         R17 R12 K25 ["IsDescendantOf"]
      171 CALL                             R17 2 1
      172 JUMPIFNOT                        R17 ; [+7]
      173 LOADK                            R19 K26 ["ObjectValue"]
      174 NAMECALL                         R17 R12 K2 ["IsA"]
      176 CALL                             R17 2 1
      177 JUMPIFNOT                        R17 ; [+2]
      178 MOVE                             R16 R12
      179 JUMP                             ; [+32]
      180 JUMPIFEQKNIL                     R15 ; [+13]
      182 MOVE                             R19 R8
      183 NAMECALL                         R17 R15 K25 ["IsDescendantOf"]
      185 CALL                             R17 2 1
      186 JUMPIFNOT                        R17 ; [+7]
      187 LOADK                            R19 K26 ["ObjectValue"]
      188 NAMECALL                         R17 R15 K2 ["IsA"]
      190 CALL                             R17 2 1
      191 JUMPIFNOT                        R17 ; [+2]
      192 MOVE                             R16 R15
      193 JUMP                             ; [+18]
      194 JUMPIFEQKNIL                     R10 ; [+13]
      196 MOVE                             R19 R8
      197 NAMECALL                         R17 R10 K25 ["IsDescendantOf"]
      199 CALL                             R17 2 1
      200 JUMPIFNOT                        R17 ; [+7]
      201 LOADK                            R19 K26 ["ObjectValue"]
      202 NAMECALL                         R17 R10 K2 ["IsA"]
      204 CALL                             R17 2 1
      205 JUMPIFNOT                        R17 ; [+2]
      206 MOVE                             R16 R10
      207 JUMP                             ; [+4]
      208 GETIMPORT                        R16 K29 [Instance.new]
      210 LOADK                            R17 K26 ["ObjectValue"]
      211 CALL                             R16 1 1
      212 JUMPIFNOT                        R15 ; [+5]
      213 JUMPIFEQ                         R15 R16 ; [+4]
      215 LOADNIL                          R17
      216 SETTABLEKS                       R17 R15 K30 ["Parent"]
      218 JUMPIFNOT                        R10 ; [+5]
      219 JUMPIFEQ                         R10 R16 ; [+4]
      221 LOADNIL                          R17
      222 SETTABLEKS                       R17 R10 K30 ["Parent"]
      224 JUMPIFNOT                        R12 ; [+5]
      225 JUMPIFEQ                         R12 R16 ; [+4]
      227 LOADNIL                          R17
      228 SETTABLEKS                       R17 R12 K30 ["Parent"]
      230 NAMECALL                         R17 R6 K31 ["GetChildren"]
      232 CALL                             R17 1 3
      233 FORGPREP                         R17
      234 LOADK                            R24 K26 ["ObjectValue"]
      235 NAMECALL                         R22 R21 K2 ["IsA"]
      237 CALL                             R22 2 1
      238 JUMPIFNOT                        R22 ; [+9]
      239 GETTABLEKS                       R22 R21 K24 ["Name"]
      241 JUMPIFNOTEQ                      R22 R13 ; [+6]
      243 JUMPIFEQ                         R21 R16 ; [+4]
      245 LOADNIL                          R22
      246 SETTABLEKS                       R22 R21 K30 ["Parent"]
      248 FORGLOOP                         R17 2 ; [-15]
      250 NAMECALL                         R17 R6 K11 ["GetOrderedInputPinNames"]
      252 CALL                             R17 1 1
      253 JUMPIFEQ                         R13 R3 ; [+19]
      255 GETIMPORT                        R18 K14 [table.find]
      257 MOVE                             R19 R17
      258 MOVE                             R20 R3
      259 CALL                             R18 2 1
      260 GETIMPORT                        R19 K14 [table.find]
      262 MOVE                             R20 R17
      263 MOVE                             R21 R13
      264 CALL                             R19 2 1
      265 JUMPIFNOT                        R18 ; [+1]
      266 SETTABLE                         R13 R17 R18
      267 JUMPIFNOT                        R19 ; [+5]
      268 GETIMPORT                        R20 K17 [table.remove]
      270 MOVE                             R21 R17
      271 MOVE                             R22 R19
      272 CALL                             R20 2 0
      273 GETIMPORT                        R18 K14 [table.find]
      275 MOVE                             R19 R17
      276 MOVE                             R20 R13
      277 CALL                             R18 2 1
      278 JUMPIF                           R18 ; [+7]
      279 FASTCALL2                        TABLE_INSERT R17 R13 ; [+5]
      281 MOVE                             R19 R17
      282 MOVE                             R20 R13
      283 GETIMPORT                        R18 K33 [table.insert]
      285 CALL                             R18 2 0
      286 MOVE                             R20 R17
      287 NAMECALL                         R18 R6 K34 ["SetOrderedInputPinNames"]
      289 CALL                             R18 2 0
      290 SETTABLEKS                       R13 R16 K24 ["Name"]
      292 SETTABLEKS                       R7 R16 K35 ["Value"]
      294 SETTABLEKS                       R6 R16 K30 ["Parent"]
      296 MOVE                             R20 R16
      297 NAMECALL                         R18 R0 K36 ["instanceToId"]
      299 CALL                             R18 2 1
      300 MOVE                             R19 R13
      301 RETURN                           R18 2

PROTO_78:
        0 GETTABLEKS                       R3 R0 K0 ["lookup"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R2 K1 ["nodeType"]
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["nodeTypeHasDynamicInputPins"]
       12 GETTABLEKS                       R4 R2 K1 ["nodeType"]
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       10 GETTABLEN                        R2 R3 1
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETTABLEKS                       R4 R1 K1 ["Inputs"]
       14 GETTABLEN                        R3 R4 1
       15 GETTABLEKS                       R2 R3 K2 ["InputFlags"]
       17 JUMPIFEQKN                       R2 K3 [1] ; [+3]
       19 LOADB                            R2 0
       20 RETURN                           R2 1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_80:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+5]
        5 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIF                           R5 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R5 R4 K3 ["GetOrderedInputPinNames"]
       13 CALL                             R5 1 1
       14 LOADN                            R6 1
       15 JUMPIFLT                         R2 R6 ; [+10]
       17 LENGTH                           R6 R5
       18 JUMPIFLT                         R6 R2 ; [+7]
       20 LOADN                            R6 1
       21 JUMPIFLT                         R3 R6 ; [+4]
       23 LENGTH                           R6 R5
       24 JUMPIFNOTLT                      R6 R3 ; [+2]
       26 RETURN                           R0 0
       27 GETTABLE                         R6 R5 R3
       28 GETTABLE                         R7 R5 R2
       29 SETTABLE                         R6 R5 R2
       30 SETTABLE                         R7 R5 R3
       31 MOVE                             R8 R5
       32 NAMECALL                         R6 R4 K4 ["SetOrderedInputPinNames"]
       34 CALL                             R6 2 0
       35 RETURN                           R0 0

PROTO_81:
        0 MOVE                             R7 R2
        1 NAMECALL                         R5 R0 K0 ["idToInstance"]
        3 CALL                             R5 2 1
        4 JUMPIFEQKNIL                     R5 ; [+6]
        6 LOADK                            R8 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIF                           R6 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["_findNodeInputBinding"]
       15 MOVE                             R7 R1
       16 MOVE                             R8 R2
       17 MOVE                             R9 R3
       18 CALL                             R6 3 1
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETTABLEKS                       R9 R6 K4 ["wireId"]
       22 NAMECALL                         R7 R0 K0 ["idToInstance"]
       24 CALL                             R7 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 JUMPIF                           R7 ; [+1]
       28 RETURN                           R0 0
       29 NAMECALL                         R8 R5 K5 ["GetOrderedInputPinNames"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K8 [table.find]
       34 MOVE                             R10 R8
       35 MOVE                             R11 R3
       36 CALL                             R9 2 1
       37 JUMPIF                           R9 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R10 R11 K9 ["getDynamicInputPinName"]
       42 MOVE                             R11 R0
       43 MOVE                             R12 R2
       44 MOVE                             R13 R4
       45 CALL                             R10 3 1
       46 SETTABLE                         R10 R8 R9
       47 MOVE                             R13 R8
       48 NAMECALL                         R11 R5 K10 ["SetOrderedInputPinNames"]
       50 CALL                             R11 2 0
       51 SETTABLEKS                       R10 R7 K11 ["Name"]
       53 RETURN                           R0 0

PROTO_82:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+1]
       11 RETURN                           R2 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K3 ["getDynamicInputPinNameFromInputNode"]
       15 MOVE                             R6 R4
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 CALL                             R5 3 -1
       19 RETURN                           R5 -1

PROTO_83:
        0 NAMECALL                         R3 R0 K0 ["GetOrderedInputPinNames"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R4 K3 [table.find]
        6 MOVE                             R5 R3
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETIMPORT                        R5 K5 [table.remove]
       14 MOVE                             R6 R3
       15 MOVE                             R7 R4
       16 CALL                             R5 2 0
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K6 ["getDynamicInputPinNameFromInputPinIds"]
       20 MOVE                             R6 R3
       21 MOVE                             R7 R1
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1

PROTO_84:
        0 LOADN                            R2 1
        1 MOVE                             R3 R1
        2 GETIMPORT                        R4 K2 [table.find]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R3
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+9]
        8 LOADK                            R4 K3 ["%*%*"]
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 ADDK                             R2 R2 K5 [1]
       16 JUMPBACK                         ; [-15]
       17 RETURN                           R3 1

PROTO_85:
        0 LOADNIL                          R2
        1 LOADK                            R5 K0 ["Model"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R2 R0
        7 JUMP                             ; [+5]
        8 LOADK                            R5 K0 ["Model"]
        9 NAMECALL                         R3 R0 K2 ["FindFirstAncestorOfClass"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 JUMPIFNOTEQKNIL                  R2 ; [+7]
       15 GETIMPORT                        R3 K4 [warn]
       17 LOADK                            R4 K5 ["No model found to create AnimationGraph in"]
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K6 ["getOrCreateAnimSavesFolder"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [Instance.new]
       28 LOADK                            R5 K10 ["AnimationGraphDefinition"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 1
       31 MOVE                             R6 R3
       32 MOVE                             R7 R1
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K11 ["Name"]
       36 GETUPVAL                         R5 2
       37 CALL                             R5 0 1
       38 GETIMPORT                        R6 K15 [Enum.AnimationNodeType.GraphOutput]
       40 SETTABLEKS                       R6 R5 K16 ["NodeType"]
       42 LOADK                            R6 K14 ["GraphOutput"]
       43 SETTABLEKS                       R6 R5 K11 ["Name"]
       45 SETTABLEKS                       R4 R5 K17 ["Parent"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R6 R7 K18 ["setNodePosition"]
       50 MOVE                             R7 R5
       51 GETIMPORT                        R8 K21 [Vector2.zero]
       53 CALL                             R6 2 0
       54 SETTABLEKS                       R3 R4 K17 ["Parent"]
       56 RETURN                           R4 1

PROTO_86:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETUPVAL                         R4 1
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K0 ["GetAnimationNodeDefinition"]
        6 CALL                             R4 2 1
        7 JUMPIF                           R4 ; [+6]
        8 GETIMPORT                        R5 K2 [warn]
       10 LOADK                            R6 K3 ["No definition found for node id:"]
       11 MOVE                             R7 R0
       12 CALL                             R5 2 0
       13 RETURN                           R3 1
       14 LOADN                            R5 0
       15 GETTABLEKS                       R7 R4 K4 ["Type"]
       17 GETTABLEKS                       R6 R7 K5 ["Name"]
       19 MOVE                             R9 R6
       20 NAMECALL                         R7 R2 K6 ["FindFirstChild"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+12]
       24 ADDK                             R5 R5 K7 [1]
       25 GETIMPORT                        R7 K10 [string.format]
       27 LOADK                            R8 K11 ["%s%d"]
       28 GETTABLEKS                       R10 R4 K4 ["Type"]
       30 GETTABLEKS                       R9 R10 K5 ["Name"]
       32 MOVE                             R10 R5
       33 CALL                             R7 3 1
       34 MOVE                             R6 R7
       35 JUMPBACK                         ; [-17]
       36 SETTABLEKS                       R6 R3 K5 ["Name"]
       38 SETTABLEKS                       R0 R3 K12 ["NodeType"]
       40 SETTABLEKS                       R2 R3 K13 ["Parent"]
       42 GETTABLEKS                       R7 R4 K14 ["Properties"]
       44 JUMPIFNOT                        R7 ; [+14]
       45 GETTABLEKS                       R7 R4 K14 ["Properties"]
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 GETTABLEKS                       R14 R11 K5 ["Name"]
       52 GETTABLEKS                       R15 R11 K15 ["Default"]
       54 NAMECALL                         R12 R3 K16 ["SetAttribute"]
       56 CALL                             R12 3 0
       57 FORGLOOP                         R7 2 ; [-8]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R7 R8 K17 ["setNodePosition"]
       62 MOVE                             R8 R3
       63 MOVE                             R9 R1
       64 CALL                             R7 2 0
       65 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationNodeWrapper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K10 ["Util"]
       24 GETTABLEKS                       R5 R6 K12 ["Rig"]
       26 GETTABLEKS                       R4 R5 K13 ["AnimationRigDataUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R1 K10 ["Util"]
       33 GETTABLEKS                       R5 R6 K14 ["Constants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K10 ["Util"]
       40 GETTABLEKS                       R7 R8 K15 ["Instances"]
       42 GETTABLEKS                       R6 R7 K16 ["InstanceRegistry"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R1 K10 ["Util"]
       49 GETTABLEKS                       R8 R9 K15 ["Instances"]
       51 GETTABLEKS                       R7 R8 K17 ["InstanceSelectionRegistry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R10 R1 K18 ["Contexts"]
       58 GETTABLEKS                       R9 R10 K19 ["NativeGraphContext"]
       60 GETTABLEKS                       R8 R9 K20 ["NewAnimationNode"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K21 ["NodeViewTypes"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R13 R1 K10 ["Util"]
       72 GETTABLEKS                       R12 R13 K22 ["Signals"]
       74 GETTABLEKS                       R11 R12 K23 ["Experimental"]
       76 GETTABLEKS                       R10 R11 K24 ["SignalExperimentalUtils"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R12 R1 K25 ["Parent"]
       83 GETTABLEKS                       R11 R12 K22 ["Signals"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R14 R1 K10 ["Util"]
       90 GETTABLEKS                       R13 R14 K22 ["Signals"]
       92 GETTABLEKS                       R12 R13 K26 ["SignalsAnimationUtils"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R15 R1 K10 ["Util"]
       99 GETTABLEKS                       R14 R15 K22 ["Signals"]
      101 GETTABLEKS                       R13 R14 K27 ["SignalsInstanceUtils"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R16 R1 K10 ["Util"]
      108 GETTABLEKS                       R15 R16 K22 ["Signals"]
      110 GETTABLEKS                       R14 R15 K28 ["TypedInstanceSignals"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R16 R1 K10 ["Util"]
      117 GETTABLEKS                       R15 R16 K29 ["getDeduplicatedName"]
      119 CALL                             R14 1 1
      120 NEWTABLE                         R15 64 0
      122 DUPCLOSURE                       R16 K30 [PROTO_0]
      123 SETTABLEKS                       R16 R15 K31 ["_getOrCreateConfigInstance"]
      125 DUPCLOSURE                       R16 K32 [PROTO_2]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R15
      128 SETTABLEKS                       R16 R15 K33 ["_observeOrCreateConfigInstance"]
      130 DUPCLOSURE                       R16 K34 [PROTO_3]
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R16 R15 K35 ["getOrCreateParameterInstance"]
      135 DUPCLOSURE                       R16 K36 [PROTO_4]
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R16 R15 K37 ["createExistingParameterInstance"]
      140 DUPCLOSURE                       R16 K38 [PROTO_5]
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R16 R15 K39 ["getParameterType"]
      144 DUPCLOSURE                       R16 K40 [PROTO_6]
      145 SETTABLEKS                       R16 R15 K41 ["setParameterBindingName"]
      147 DUPCLOSURE                       R16 K42 [PROTO_7]
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R16 R15 K43 ["getNodePosition"]
      152 DUPCLOSURE                       R16 K44 [PROTO_8]
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R16 R15 K45 ["setNodePosition"]
      157 DUPCLOSURE                       R16 K46 [PROTO_9]
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R16 R15 K47 ["setNodeSize"]
      162 DUPCLOSURE                       R16 K48 [PROTO_10]
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R4
      165 SETTABLEKS                       R16 R15 K49 ["setNodeIsCollapsed"]
      167 DUPCLOSURE                       R16 K50 [PROTO_11]
      168 SETTABLEKS                       R16 R15 K51 ["getParameterInstanceName"]
      170 DUPCLOSURE                       R16 K52 [PROTO_12]
      171 CAPTURE                          VAL R15
      172 SETTABLEKS                       R16 R15 K53 ["getAllParameterInstancesFromName"]
      174 DUPCLOSURE                       R16 K54 [PROTO_14]
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R15
      179 SETTABLEKS                       R16 R15 K55 ["observeWireInfo"]
      181 DUPCLOSURE                       R16 K56 [PROTO_20]
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R16 R15 K57 ["observeNodeConnectionMap"]
      187 DUPCLOSURE                       R16 K58 [PROTO_21]
      188 SETTABLEKS                       R16 R15 K59 ["matchParameterBinding"]
      190 DUPCLOSURE                       R16 K60 [PROTO_22]
      191 SETTABLEKS                       R16 R15 K61 ["santizeParameterNames"]
      193 DUPCLOSURE                       R16 K62 [PROTO_25]
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R9
      198 SETTABLEKS                       R16 R15 K63 ["observeParameterNodeInfo"]
      200 DUPCLOSURE                       R16 K64 [PROTO_35]
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R13
      206 SETTABLEKS                       R16 R15 K65 ["observeNodeProps"]
      208 DUPCLOSURE                       R16 K66 [PROTO_37]
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R9
      211 SETTABLEKS                       R16 R15 K67 ["observeNodeType"]
      213 DUPCLOSURE                       R16 K68 [PROTO_39]
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R9
      219 SETTABLEKS                       R16 R15 K69 ["observeNodeInfo"]
      221 DUPCLOSURE                       R16 K70 [PROTO_42]
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R15
      224 SETTABLEKS                       R16 R15 K71 ["observeNodeInfoLookupList"]
      226 DUPCLOSURE                       R16 K72 [PROTO_45]
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R9
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R15
      231 SETTABLEKS                       R16 R15 K73 ["observeParameterNodeInfoLookupList"]
      233 DUPCLOSURE                       R16 K74 [PROTO_48]
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R9
      237 SETTABLEKS                       R16 R15 K75 ["observeRenderInfoMap"]
      239 DUPCLOSURE                       R16 K76 [PROTO_53]
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R9
      245 SETTABLEKS                       R16 R15 K77 ["observeRenderInfo"]
      247 DUPCLOSURE                       R16 K78 [PROTO_57]
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R12
      251 SETTABLEKS                       R16 R15 K79 ["observeEditingAnimationGraphDefinition"]
      253 DUPCLOSURE                       R16 K80 [PROTO_65]
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R4
      258 SETTABLEKS                       R16 R15 K81 ["observeGraphState"]
      260 DUPCLOSURE                       R16 K82 [PROTO_66]
      261 SETTABLEKS                       R16 R15 K83 ["fitGraphRect"]
      263 DUPCLOSURE                       R16 K84 [PROTO_67]
      264 SETTABLEKS                       R16 R15 K85 ["getPinAnchorKey"]
      266 DUPCLOSURE                       R16 K86 [PROTO_68]
      267 SETTABLEKS                       R16 R15 K87 ["_findNodeInputBinding"]
      269 DUPCLOSURE                       R16 K88 [PROTO_69]
      270 SETTABLEKS                       R16 R15 K89 ["_findNodeOutputBinding"]
      272 DUPCLOSURE                       R16 K90 [PROTO_70]
      273 CAPTURE                          VAL R15
      274 SETTABLEKS                       R16 R15 K91 ["removeNodeInputConnection"]
      276 DUPCLOSURE                       R16 K92 [PROTO_71]
      277 SETTABLEKS                       R16 R15 K93 ["isAParameterWire"]
      279 DUPCLOSURE                       R16 K94 [PROTO_72]
      280 CAPTURE                          VAL R15
      281 SETTABLEKS                       R16 R15 K95 ["removeOrderedInputPin"]
      283 DUPCLOSURE                       R16 K96 [PROTO_73]
      284 CAPTURE                          VAL R15
      285 SETTABLEKS                       R16 R15 K97 ["removeNodeOutputConnection"]
      287 DUPCLOSURE                       R16 K98 [PROTO_74]
      288 SETTABLEKS                       R16 R15 K99 ["getParameterWireName"]
      290 DUPCLOSURE                       R16 K100 [PROTO_75]
      291 SETTABLEKS                       R16 R15 K101 ["getParameterWireInputPinId"]
      293 DUPCLOSURE                       R16 K102 [PROTO_76]
      294 CAPTURE                          VAL R15
      295 CAPTURE                          VAL R4
      296 SETTABLEKS                       R16 R15 K103 ["setParameterConnection"]
      298 DUPCLOSURE                       R16 K104 [PROTO_77]
      299 CAPTURE                          VAL R15
      300 CAPTURE                          VAL R4
      301 SETTABLEKS                       R16 R15 K105 ["setNodeConnection"]
      303 DUPCLOSURE                       R16 K106 [PROTO_78]
      304 CAPTURE                          VAL R15
      305 SETTABLEKS                       R16 R15 K107 ["hasDynamicInputPins"]
      307 DUPCLOSURE                       R16 K108 [PROTO_79]
      308 CAPTURE                          VAL R2
      309 SETTABLEKS                       R16 R15 K109 ["nodeTypeHasDynamicInputPins"]
      311 DUPCLOSURE                       R16 K110 [PROTO_80]
      312 SETTABLEKS                       R16 R15 K111 ["reorderPins"]
      314 DUPCLOSURE                       R16 K112 [PROTO_81]
      315 CAPTURE                          VAL R15
      316 SETTABLEKS                       R16 R15 K113 ["renameDynamicInputPin"]
      318 DUPCLOSURE                       R16 K114 [PROTO_82]
      319 CAPTURE                          VAL R15
      320 SETTABLEKS                       R16 R15 K115 ["getDynamicInputPinName"]
      322 DUPCLOSURE                       R16 K116 [PROTO_83]
      323 CAPTURE                          VAL R15
      324 SETTABLEKS                       R16 R15 K117 ["getDynamicInputPinNameFromInputNode"]
      326 DUPCLOSURE                       R16 K118 [PROTO_84]
      327 SETTABLEKS                       R16 R15 K119 ["getDynamicInputPinNameFromInputPinIds"]
      329 DUPCLOSURE                       R16 K120 [PROTO_85]
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R14
      332 CAPTURE                          VAL R7
      333 CAPTURE                          VAL R15
      334 SETTABLEKS                       R16 R15 K121 ["createNewAnimationGraph"]
      336 DUPCLOSURE                       R16 K122 [PROTO_86]
      337 CAPTURE                          VAL R7
      338 CAPTURE                          VAL R0
      339 CAPTURE                          VAL R15
      340 SETTABLEKS                       R16 R15 K123 ["createNodeOfType"]
      342 RETURN                           R15 1
