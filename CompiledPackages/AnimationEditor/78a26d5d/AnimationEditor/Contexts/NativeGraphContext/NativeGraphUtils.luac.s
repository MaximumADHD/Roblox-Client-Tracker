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
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+6]
        2 LOADK                            R6 K0 ["%*Parameter"]
        3 MOVE                             R8 R2
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 MOVE                             R6 R5
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K2 ["getParameterInstanceName"]
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 JUMPIF                           R3 ; [+21]
       15 LOADN                            R8 0
       16 MOVE                             R11 R7
       17 NAMECALL                         R9 R1 K3 ["FindFirstChild"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+15]
       21 ADDK                             R8 R8 K4 [1]
       22 GETIMPORT                        R9 K6 [string.format]
       24 LOADK                            R10 K7 ["%s%d"]
       25 MOVE                             R11 R5
       26 MOVE                             R12 R8
       27 CALL                             R9 3 1
       28 MOVE                             R6 R9
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K2 ["getParameterInstanceName"]
       32 MOVE                             R10 R6
       33 CALL                             R9 1 1
       34 MOVE                             R7 R9
       35 JUMPBACK                         ; [-20]
       36 GETIMPORT                        R8 K10 [Instance.new]
       38 LOADK                            R9 K11 ["Folder"]
       39 CALL                             R8 1 1
       40 SETTABLEKS                       R7 R8 K12 ["Name"]
       42 SETTABLEKS                       R1 R8 K13 ["Parent"]
       44 MOVE                             R11 R8
       45 NAMECALL                         R9 R0 K14 ["instanceToId"]
       47 CALL                             R9 2 0
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R12 R13 K15 ["NODE_ATTRIBUTES"]
       51 GETTABLEKS                       R11 R12 K16 ["ParameterType"]
       53 NAMECALL                         R9 R8 K17 ["GetAttribute"]
       55 CALL                             R9 2 1
       56 JUMPIF                           R9 ; [+18]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R12 R13 K15 ["NODE_ATTRIBUTES"]
       60 GETTABLEKS                       R11 R12 K16 ["ParameterType"]
       62 MOVE                             R12 R2
       63 NAMECALL                         R9 R8 K18 ["SetAttribute"]
       65 CALL                             R9 3 0
       66 GETUPVAL                         R13 1
       67 GETTABLEKS                       R12 R13 K15 ["NODE_ATTRIBUTES"]
       69 GETTABLEKS                       R11 R12 K19 ["BindingName"]
       71 MOVE                             R12 R6
       72 NAMECALL                         R9 R8 K18 ["SetAttribute"]
       74 CALL                             R9 3 0
       75 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getParameterInstanceName"]
        3 MOVE                             R5 R3
        4 CALL                             R4 1 1
        5 MOVE                             R7 R4
        6 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
        8 CALL                             R5 2 1
        9 JUMPIF                           R5 ; [+2]
       10 LOADNIL                          R6
       11 RETURN                           R6 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K2 ["getOrCreateParameterInstance"]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R1
       17 MOVE                             R9 R2
       18 LOADB                            R10 1
       19 MOVE                             R11 R3
       20 CALL                             R6 5 1
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R0 K3 ["instanceToId"]
       24 CALL                             R7 2 0
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K4 ["NODE_ATTRIBUTES"]
       28 GETTABLEKS                       R9 R10 K5 ["ParameterType"]
       30 MOVE                             R10 R2
       31 NAMECALL                         R7 R6 K6 ["SetAttribute"]
       33 CALL                             R7 3 0
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R10 R11 K4 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R9 R10 K7 ["BindingName"]
       39 MOVE                             R10 R3
       40 NAMECALL                         R7 R6 K6 ["SetAttribute"]
       42 CALL                             R7 3 0
       43 RETURN                           R6 1

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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 LOADK                            R2 K0 ["Parameter_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETIMPORT                        R4 K2 [table.clone]
       11 MOVE                             R5 R1
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 MOVE                             R7 R3
       15 NAMECALL                         R5 R5 K3 ["GetAnimationNodeDefinition"]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R6 R5 K4 ["Properties"]
       20 JUMPIFEQKNIL                     R6 ; [+50]
       22 GETTABLEKS                       R6 R5 K4 ["Properties"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLEKS                       R11 R10 K5 ["Type"]
       29 JUMPIFNOTEQKS                    R11 K6 ["Mask"] ; [+39]
       31 MOVE                             R11 R2
       32 LOADNIL                          R12
       33 LOADNIL                          R13
       34 FORGPREP                         R11
       35 GETTABLEKS                       R16 R15 K7 ["Name"]
       37 GETTABLEKS                       R17 R10 K7 ["Name"]
       39 JUMPIFNOTEQ                      R16 R17 ; [+27]
       41 LOADK                            R18 K8 ["ObjectValue"]
       42 NAMECALL                         R16 R15 K9 ["IsA"]
       44 CALL                             R16 2 1
       45 JUMPIFNOT                        R16 ; [+21]
       46 GETUPVAL                         R18 4
       47 GETTABLEKS                       R17 R18 K10 ["properties"]
       49 GETTABLEKS                       R16 R17 K11 ["observeInstance"]
       51 MOVE                             R17 R15
       52 LOADK                            R18 K12 ["Value"]
       53 CALL                             R16 2 1
       54 MOVE                             R17 R0
       55 CALL                             R16 1 1
       56 GETTABLEKS                       R17 R10 K7 ["Name"]
       58 MOVE                             R18 R16
       59 JUMPIFNOT                        R18 ; [+5]
       60 GETUPVAL                         R18 5
       61 MOVE                             R20 R16
       62 NAMECALL                         R18 R18 K13 ["instanceToId"]
       64 CALL                             R18 2 1
       65 SETTABLE                         R18 R4 R17
       66 JUMP                             ; [+2]
       67 FORGLOOP                         R11 2 ; [-33]
       69 FORGLOOP                         R6 2 ; [-43]
       71 RETURN                           R4 1

PROTO_27:
        0 DUPTABLE                         R1 K5 [{"nodeId", "inputPinIds", "nodeProps", "name", "nodeType"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["inputPinIds"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["nodeProps"]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K3 ["name"]
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K4 ["nodeType"]
       24 GETIMPORT                        R2 K8 [table.freeze]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1

PROTO_28:
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
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K5 ["properties"]
       19 GETTABLEKS                       R4 R5 K6 ["observeEnumItem"]
       21 MOVE                             R5 R1
       22 LOADK                            R6 K7 ["NodeType"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K8 ["createComputed"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K9 ["observeAttributes"]
       33 MOVE                             R7 R1
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K10 ["observeChildren"]
       38 MOVE                             R8 R1
       39 CALL                             R7 1 1
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K8 ["createComputed"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 CALL                             R8 1 1
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R9 R10 K11 ["observeInputPins"]
       54 MOVE                             R10 R1
       55 CALL                             R9 1 1
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R10 R11 K8 ["createComputed"]
       59 NEWCLOSURE                       R11 P2
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 CALL                             R10 1 -1
       66 RETURN                           R10 -1

PROTO_29:
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

PROTO_30:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["of"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R3 R1
       12 LOADK                            R4 K2 ["AnimationNodeDefinition"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["forEach"]
       17 MOVE                             R4 R2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_31]
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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
       23 DUPCLOSURE                       R7 K5 [PROTO_37]
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["switchMap"]
       31 MOVE                             R7 R4
       32 DUPCLOSURE                       R8 K6 [PROTO_38]
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U2
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K4 ["switchMap"]
       40 MOVE                             R8 R4
       41 DUPCLOSURE                       R9 K7 [PROTO_39]
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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
       18 DUPCLOSURE                       R6 K4 [PROTO_43]
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

PROTO_46:
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

PROTO_47:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeNodeInfoLookupList"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["of"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_48:
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
       57 DUPTABLE                         R16 K24 [{"inputPinIds", "nodeProps", "nodeState", "outputPinToConnectionMap", "inputPinToConnectionMap", "className", "id", "index", "name", "nodeType", "props", "state"}]
       58 GETTABLEKS                       R17 R11 K13 ["inputPinIds"]
       60 SETTABLEKS                       R17 R16 K13 ["inputPinIds"]
       62 GETTABLEKS                       R17 R11 K14 ["nodeProps"]
       64 SETTABLEKS                       R17 R16 K14 ["nodeProps"]
       66 NEWTABLE                         R17 0 0
       68 SETTABLEKS                       R17 R16 K15 ["nodeState"]
       70 SETTABLEKS                       R14 R16 K16 ["outputPinToConnectionMap"]
       72 SETTABLEKS                       R13 R16 K17 ["inputPinToConnectionMap"]
       74 GETTABLEKS                       R18 R11 K5 ["nodeType"]
       76 GETTABLEKS                       R17 R18 K25 ["Name"]
       78 SETTABLEKS                       R17 R16 K18 ["className"]
       80 GETTABLEKS                       R17 R11 K0 ["nodeId"]
       82 SETTABLEKS                       R17 R16 K19 ["id"]
       84 LOADNIL                          R17
       85 SETTABLEKS                       R17 R16 K20 ["index"]
       87 GETTABLEKS                       R17 R11 K21 ["name"]
       89 SETTABLEKS                       R17 R16 K21 ["name"]
       91 GETTABLEKS                       R17 R11 K5 ["nodeType"]
       93 SETTABLEKS                       R17 R16 K5 ["nodeType"]
       95 LOADNIL                          R17
       96 SETTABLEKS                       R17 R16 K22 ["props"]
       98 LOADNIL                          R17
       99 SETTABLEKS                       R17 R16 K23 ["state"]
      101 CALL                             R15 1 1
      102 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      104 SETTABLE                         R15 R6 R16
      105 FORGLOOP                         R7 2 ; [-87]
      107 MOVE                             R7 R3
      108 LOADNIL                          R8
      109 LOADNIL                          R9
      110 FORGPREP                         R7
      111 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      113 GETTABLE                         R12 R4 R13
      114 NEWTABLE                         R13 0 0
      116 JUMPIFNOT                        R12 ; [+10]
      117 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      119 LOADNIL                          R15
      120 LOADNIL                          R16
      121 FORGPREP                         R14
      122 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      124 SETTABLE                         R18 R13 R19
      125 FORGLOOP                         R14 2 ; [-4]
      127 GETIMPORT                        R14 K12 [table.freeze]
      129 DUPTABLE                         R15 K27 [{"nodeProps", "nodeState", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "className", "id", "nodeType", "name", "parentId"}]
      130 NEWTABLE                         R16 0 0
      132 SETTABLEKS                       R16 R15 K14 ["nodeProps"]
      134 NEWTABLE                         R16 0 0
      136 SETTABLEKS                       R16 R15 K15 ["nodeState"]
      138 NEWTABLE                         R16 0 0
      140 SETTABLEKS                       R16 R15 K13 ["inputPinIds"]
      142 NEWTABLE                         R16 0 0
      144 SETTABLEKS                       R16 R15 K17 ["inputPinToConnectionMap"]
      146 SETTABLEKS                       R13 R15 K16 ["outputPinToConnectionMap"]
      148 GETUPVAL                         R17 4
      149 GETTABLEKS                       R16 R17 K28 ["PARAMETER_NODE_CLASSNAME"]
      151 SETTABLEKS                       R16 R15 K18 ["className"]
      153 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      155 SETTABLEKS                       R16 R15 K19 ["id"]
      157 GETTABLEKS                       R16 R11 K29 ["parameterType"]
      159 SETTABLEKS                       R16 R15 K5 ["nodeType"]
      161 GETTABLEKS                       R17 R11 K30 ["parameterData"]
      163 GETTABLEKS                       R16 R17 K31 ["parameterBindingName"]
      165 SETTABLEKS                       R16 R15 K21 ["name"]
      167 LOADNIL                          R16
      168 SETTABLEKS                       R16 R15 K26 ["parentId"]
      170 CALL                             R14 1 1
      171 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      173 SETTABLE                         R14 R6 R15
      174 FORGLOOP                         R7 2 ; [-64]
      176 GETIMPORT                        R7 K12 [table.freeze]
      178 DUPTABLE                         R8 K35 [{"graphInstanceId", "lookup", "output"}]
      179 JUMPIFNOT                        R1 ; [+6]
      180 GETUPVAL                         R9 5
      181 MOVE                             R11 R1
      182 NAMECALL                         R9 R9 K36 ["instanceToId"]
      184 CALL                             R9 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R9
      187 SETTABLEKS                       R9 R8 K32 ["graphInstanceId"]
      189 GETIMPORT                        R9 K12 [table.freeze]
      191 MOVE                             R10 R6
      192 CALL                             R9 1 1
      193 SETTABLEKS                       R9 R8 K33 ["lookup"]
      195 SETTABLEKS                       R5 R8 K34 ["output"]
      197 CALL                             R7 1 -1
      198 RETURN                           R7 -1

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETIMPORT                        R4 K2 [table.freeze]
       11 DUPTABLE                         R5 K6 [{"graphPayloadMap", "renderInfoMap", "connectionMap"}]
       12 SETTABLEKS                       R2 R5 K3 ["graphPayloadMap"]
       14 SETTABLEKS                       R3 R5 K4 ["renderInfoMap"]
       16 SETTABLEKS                       R1 R5 K5 ["connectionMap"]
       18 CALL                             R4 1 -1
       19 RETURN                           R4 -1

PROTO_51:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["switchMap"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["switchMap"]
       12 MOVE                             R5 R2
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R4 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K1 ["observeParameterNodeInfoLookupList"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R2
       23 CALL                             R5 2 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K2 ["createComputed"]
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K2 ["createComputed"]
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          VAL R6
       40 CALL                             R7 1 1
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K3 ["observeRenderInfoMap"]
       44 MOVE                             R9 R0
       45 MOVE                             R10 R1
       46 MOVE                             R11 R7
       47 CALL                             R8 3 1
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R9 R10 K2 ["createComputed"]
       51 NEWCLOSURE                       R10 P4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CALL                             R9 1 -1
       56 RETURN                           R9 -1

PROTO_52:
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

PROTO_53:
        0 LOADK                            R4 K0 ["anchor_%*_%*_%*"]
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 4 1
        7 MOVE                             R3 R4
        8 RETURN                           R3 1

PROTO_54:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["inputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_55:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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
       45 JUMPIFNOT                        R6 ; [+32]
       46 LOADK                            R9 K8 ["AnimationNodeDefinition"]
       47 NAMECALL                         R7 R6 K9 ["IsA"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+27]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K10 ["hasDynamicInputPins"]
       54 MOVE                             R8 R1
       55 GETTABLEKS                       R9 R4 K3 ["inputNodeId"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+19]
       59 NAMECALL                         R7 R6 K11 ["GetOrderedInputPinNames"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K14 [table.find]
       64 MOVE                             R9 R7
       65 GETTABLEKS                       R10 R4 K6 ["inputNodePinId"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+9]
       69 GETIMPORT                        R9 K16 [table.remove]
       71 MOVE                             R10 R7
       72 MOVE                             R11 R8
       73 CALL                             R9 2 0
       74 MOVE                             R11 R7
       75 NAMECALL                         R9 R6 K17 ["SetOrderedInputPinNames"]
       77 CALL                             R9 2 0
       78 LOADB                            R7 1
       79 RETURN                           R7 1

PROTO_59:
        0 LOADK                            R2 K0 ["connectionHint_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_60:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_61:
        0 JUMPIFEQKNIL                     R5 ; [+13]
        2 MOVE                             R9 R0
        3 NAMECALL                         R7 R5 K0 ["IsDescendantOf"]
        5 CALL                             R7 2 1
        6 JUMPIFNOT                        R7 ; [+7]
        7 LOADK                            R9 K1 ["ObjectValue"]
        8 NAMECALL                         R7 R5 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R5
       13 JUMP                             ; [+4]
       14 GETIMPORT                        R6 K5 [Instance.new]
       16 LOADK                            R7 K1 ["ObjectValue"]
       17 CALL                             R6 1 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K6 ["getParameterWireName"]
       21 MOVE                             R8 R3
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R6 K7 ["Name"]
       25 SETTABLEKS                       R1 R6 K8 ["Value"]
       27 SETTABLEKS                       R4 R6 K9 ["Parent"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K10 ["setParameterBindingName"]
       32 MOVE                             R8 R1
       33 MOVE                             R9 R3
       34 GETUPVAL                         R14 1
       35 GETTABLEKS                       R13 R14 K11 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R12 R13 K12 ["BindingName"]
       39 NAMECALL                         R10 R4 K13 ["GetAttribute"]
       41 CALL                             R10 2 1
       42 CALL                             R7 3 0
       43 RETURN                           R0 0

PROTO_62:
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
       68 JUMPIFNOT                        R13 ; [+11]
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R13 R14 K9 ["setParameterConnection"]
       72 MOVE                             R14 R8
       73 MOVE                             R15 R6
       74 MOVE                             R16 R2
       75 MOVE                             R17 R3
       76 MOVE                             R18 R7
       77 MOVE                             R19 R12
       78 CALL                             R13 6 0
       79 RETURN                           R0 0
       80 LOADNIL                          R13
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R14 R15 K10 ["hasDynamicInputPins"]
       84 MOVE                             R15 R1
       85 MOVE                             R16 R2
       86 CALL                             R14 2 1
       87 JUMPIFNOT                        R14 ; [+57]
       88 NAMECALL                         R14 R6 K11 ["GetOrderedInputPinNames"]
       90 CALL                             R14 1 1
       91 JUMPIFNOT                        R9 ; [+7]
       92 GETIMPORT                        R15 K14 [table.find]
       94 MOVE                             R16 R14
       95 GETTABLEKS                       R17 R9 K15 ["inputNodePinId"]
       97 CALL                             R15 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R15
      100 JUMPIFNOT                        R15 ; [+5]
      101 GETIMPORT                        R16 K17 [table.remove]
      103 MOVE                             R17 R14
      104 MOVE                             R18 R15
      105 CALL                             R16 2 0
      106 JUMPIFNOT                        R11 ; [+7]
      107 GETIMPORT                        R16 K14 [table.find]
      109 MOVE                             R17 R14
      110 GETTABLEKS                       R18 R11 K15 ["inputNodePinId"]
      112 CALL                             R16 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 JUMPIFNOT                        R16 ; [+5]
      116 GETIMPORT                        R17 K17 [table.remove]
      118 MOVE                             R18 R14
      119 MOVE                             R19 R16
      120 CALL                             R17 2 0
      121 GETUPVAL                         R21 1
      122 GETTABLEKS                       R20 R21 K18 ["NODE_ATTRIBUTES"]
      124 GETTABLEKS                       R19 R20 K19 ["DisplayName"]
      126 NAMECALL                         R17 R7 K20 ["GetAttribute"]
      128 CALL                             R17 2 1
      129 GETUPVAL                         R19 0
      130 GETTABLEKS                       R18 R19 K21 ["getDynamicInputPinNameFromInputPinIds"]
      132 MOVE                             R19 R14
      133 JUMPIFNOT                        R17 ; [+6]
      134 FASTCALL1                        TOSTRING R17 ; [+3]
      135 MOVE                             R21 R17
      136 GETIMPORT                        R20 K23 [tostring]
      138 CALL                             R20 1 1
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R20 R7 K24 ["Name"]
      142 CALL                             R18 2 1
      143 MOVE                             R13 R18
      144 JUMP                             ; [+1]
      145 MOVE                             R13 R3
      146 JUMPIFEQ                         R13 R3 ; [+9]
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R14 R15 K8 ["_findNodeInputBinding"]
      151 MOVE                             R15 R1
      152 MOVE                             R16 R2
      153 MOVE                             R17 R13
      154 CALL                             R14 3 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R14
      157 JUMPIFNOT                        R14 ; [+6]
      158 GETTABLEKS                       R17 R14 K7 ["wireId"]
      160 NAMECALL                         R15 R0 K0 ["idToInstance"]
      162 CALL                             R15 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R15
      165 JUMPIFEQKNIL                     R12 ; [+13]
      167 MOVE                             R19 R8
      168 NAMECALL                         R17 R12 K25 ["IsDescendantOf"]
      170 CALL                             R17 2 1
      171 JUMPIFNOT                        R17 ; [+7]
      172 LOADK                            R19 K26 ["ObjectValue"]
      173 NAMECALL                         R17 R12 K2 ["IsA"]
      175 CALL                             R17 2 1
      176 JUMPIFNOT                        R17 ; [+2]
      177 MOVE                             R16 R12
      178 JUMP                             ; [+32]
      179 JUMPIFEQKNIL                     R15 ; [+13]
      181 MOVE                             R19 R8
      182 NAMECALL                         R17 R15 K25 ["IsDescendantOf"]
      184 CALL                             R17 2 1
      185 JUMPIFNOT                        R17 ; [+7]
      186 LOADK                            R19 K26 ["ObjectValue"]
      187 NAMECALL                         R17 R15 K2 ["IsA"]
      189 CALL                             R17 2 1
      190 JUMPIFNOT                        R17 ; [+2]
      191 MOVE                             R16 R15
      192 JUMP                             ; [+18]
      193 JUMPIFEQKNIL                     R10 ; [+13]
      195 MOVE                             R19 R8
      196 NAMECALL                         R17 R10 K25 ["IsDescendantOf"]
      198 CALL                             R17 2 1
      199 JUMPIFNOT                        R17 ; [+7]
      200 LOADK                            R19 K26 ["ObjectValue"]
      201 NAMECALL                         R17 R10 K2 ["IsA"]
      203 CALL                             R17 2 1
      204 JUMPIFNOT                        R17 ; [+2]
      205 MOVE                             R16 R10
      206 JUMP                             ; [+4]
      207 GETIMPORT                        R16 K29 [Instance.new]
      209 LOADK                            R17 K26 ["ObjectValue"]
      210 CALL                             R16 1 1
      211 JUMPIFNOT                        R15 ; [+5]
      212 JUMPIFEQ                         R15 R16 ; [+4]
      214 LOADNIL                          R17
      215 SETTABLEKS                       R17 R15 K30 ["Parent"]
      217 JUMPIFNOT                        R10 ; [+5]
      218 JUMPIFEQ                         R10 R16 ; [+4]
      220 LOADNIL                          R17
      221 SETTABLEKS                       R17 R10 K30 ["Parent"]
      223 JUMPIFNOT                        R12 ; [+5]
      224 JUMPIFEQ                         R12 R16 ; [+4]
      226 LOADNIL                          R17
      227 SETTABLEKS                       R17 R12 K30 ["Parent"]
      229 NAMECALL                         R17 R6 K31 ["GetChildren"]
      231 CALL                             R17 1 3
      232 FORGPREP                         R17
      233 LOADK                            R24 K26 ["ObjectValue"]
      234 NAMECALL                         R22 R21 K2 ["IsA"]
      236 CALL                             R22 2 1
      237 JUMPIFNOT                        R22 ; [+9]
      238 GETTABLEKS                       R22 R21 K24 ["Name"]
      240 JUMPIFNOTEQ                      R22 R13 ; [+6]
      242 JUMPIFEQ                         R21 R16 ; [+4]
      244 LOADNIL                          R22
      245 SETTABLEKS                       R22 R21 K30 ["Parent"]
      247 FORGLOOP                         R17 2 ; [-15]
      249 NAMECALL                         R17 R6 K11 ["GetOrderedInputPinNames"]
      251 CALL                             R17 1 1
      252 JUMPIFEQ                         R13 R3 ; [+19]
      254 GETIMPORT                        R18 K14 [table.find]
      256 MOVE                             R19 R17
      257 MOVE                             R20 R3
      258 CALL                             R18 2 1
      259 GETIMPORT                        R19 K14 [table.find]
      261 MOVE                             R20 R17
      262 MOVE                             R21 R13
      263 CALL                             R19 2 1
      264 JUMPIFNOT                        R18 ; [+1]
      265 SETTABLE                         R13 R17 R18
      266 JUMPIFNOT                        R19 ; [+5]
      267 GETIMPORT                        R20 K17 [table.remove]
      269 MOVE                             R21 R17
      270 MOVE                             R22 R19
      271 CALL                             R20 2 0
      272 GETIMPORT                        R18 K14 [table.find]
      274 MOVE                             R19 R17
      275 MOVE                             R20 R13
      276 CALL                             R18 2 1
      277 JUMPIF                           R18 ; [+7]
      278 FASTCALL2                        TABLE_INSERT R17 R13 ; [+5]
      280 MOVE                             R19 R17
      281 MOVE                             R20 R13
      282 GETIMPORT                        R18 K33 [table.insert]
      284 CALL                             R18 2 0
      285 MOVE                             R20 R17
      286 NAMECALL                         R18 R6 K34 ["SetOrderedInputPinNames"]
      288 CALL                             R18 2 0
      289 SETTABLEKS                       R13 R16 K24 ["Name"]
      291 SETTABLEKS                       R7 R16 K35 ["Value"]
      293 SETTABLEKS                       R6 R16 K30 ["Parent"]
      295 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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
      150 SETTABLEKS                       R16 R15 K43 ["setNodePosition"]
      152 DUPCLOSURE                       R16 K44 [PROTO_8]
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R16 R15 K45 ["setNodeSize"]
      157 DUPCLOSURE                       R16 K46 [PROTO_9]
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R16 R15 K47 ["setNodeIsCollapsed"]
      162 DUPCLOSURE                       R16 K48 [PROTO_10]
      163 SETTABLEKS                       R16 R15 K49 ["getParameterInstanceName"]
      165 DUPCLOSURE                       R16 K50 [PROTO_11]
      166 CAPTURE                          VAL R15
      167 SETTABLEKS                       R16 R15 K51 ["getAllParameterInstancesFromName"]
      169 DUPCLOSURE                       R16 K52 [PROTO_13]
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R15
      174 SETTABLEKS                       R16 R15 K53 ["observeWireInfo"]
      176 DUPCLOSURE                       R16 K54 [PROTO_19]
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R9
      180 SETTABLEKS                       R16 R15 K55 ["observeNodeConnectionMap"]
      182 DUPCLOSURE                       R16 K56 [PROTO_20]
      183 SETTABLEKS                       R16 R15 K57 ["matchParameterBinding"]
      185 DUPCLOSURE                       R16 K58 [PROTO_21]
      186 SETTABLEKS                       R16 R15 K59 ["santizeParameterNames"]
      188 DUPCLOSURE                       R16 K60 [PROTO_24]
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R9
      193 SETTABLEKS                       R16 R15 K61 ["observeParameterNodeInfo"]
      195 DUPCLOSURE                       R16 K62 [PROTO_28]
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R0
      201 SETTABLEKS                       R16 R15 K63 ["observeNodeInfo"]
      203 DUPCLOSURE                       R16 K64 [PROTO_30]
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R15
      206 SETTABLEKS                       R16 R15 K65 ["observeNodeInfoLookupList"]
      208 DUPCLOSURE                       R16 K66 [PROTO_33]
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R15
      213 SETTABLEKS                       R16 R15 K67 ["observeParameterNodeInfoLookupList"]
      215 DUPCLOSURE                       R16 K68 [PROTO_36]
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R9
      219 SETTABLEKS                       R16 R15 K69 ["observeRenderInfoMap"]
      221 DUPCLOSURE                       R16 K70 [PROTO_41]
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R9
      227 SETTABLEKS                       R16 R15 K71 ["observeRenderInfo"]
      229 DUPCLOSURE                       R16 K72 [PROTO_45]
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R9
      232 CAPTURE                          VAL R12
      233 SETTABLEKS                       R16 R15 K73 ["observeEditingAnimationGraphDefinition"]
      235 DUPCLOSURE                       R16 K74 [PROTO_51]
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R4
      240 SETTABLEKS                       R16 R15 K75 ["observeGraphState"]
      242 DUPCLOSURE                       R16 K76 [PROTO_52]
      243 SETTABLEKS                       R16 R15 K77 ["fitGraphRect"]
      245 DUPCLOSURE                       R16 K78 [PROTO_53]
      246 SETTABLEKS                       R16 R15 K79 ["getPinAnchorKey"]
      248 DUPCLOSURE                       R16 K80 [PROTO_54]
      249 SETTABLEKS                       R16 R15 K81 ["_findNodeInputBinding"]
      251 DUPCLOSURE                       R16 K82 [PROTO_55]
      252 SETTABLEKS                       R16 R15 K83 ["_findNodeOutputBinding"]
      254 DUPCLOSURE                       R16 K84 [PROTO_56]
      255 CAPTURE                          VAL R15
      256 SETTABLEKS                       R16 R15 K85 ["removeNodeInputConnection"]
      258 DUPCLOSURE                       R16 K86 [PROTO_57]
      259 SETTABLEKS                       R16 R15 K87 ["isAParameterWire"]
      261 DUPCLOSURE                       R16 K88 [PROTO_58]
      262 CAPTURE                          VAL R15
      263 SETTABLEKS                       R16 R15 K89 ["removeNodeOutputConnection"]
      265 DUPCLOSURE                       R16 K90 [PROTO_59]
      266 SETTABLEKS                       R16 R15 K91 ["getParameterWireName"]
      268 DUPCLOSURE                       R16 K92 [PROTO_60]
      269 SETTABLEKS                       R16 R15 K93 ["getParameterWireInputPinId"]
      271 DUPCLOSURE                       R16 K94 [PROTO_61]
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R4
      274 SETTABLEKS                       R16 R15 K95 ["setParameterConnection"]
      276 DUPCLOSURE                       R16 K96 [PROTO_62]
      277 CAPTURE                          VAL R15
      278 CAPTURE                          VAL R4
      279 SETTABLEKS                       R16 R15 K97 ["setNodeConnection"]
      281 DUPCLOSURE                       R16 K98 [PROTO_63]
      282 CAPTURE                          VAL R15
      283 SETTABLEKS                       R16 R15 K99 ["hasDynamicInputPins"]
      285 DUPCLOSURE                       R16 K100 [PROTO_64]
      286 CAPTURE                          VAL R2
      287 SETTABLEKS                       R16 R15 K101 ["nodeTypeHasDynamicInputPins"]
      289 DUPCLOSURE                       R16 K102 [PROTO_65]
      290 SETTABLEKS                       R16 R15 K103 ["reorderPins"]
      292 DUPCLOSURE                       R16 K104 [PROTO_66]
      293 CAPTURE                          VAL R15
      294 SETTABLEKS                       R16 R15 K105 ["renameDynamicInputPin"]
      296 DUPCLOSURE                       R16 K106 [PROTO_67]
      297 CAPTURE                          VAL R15
      298 SETTABLEKS                       R16 R15 K107 ["getDynamicInputPinName"]
      300 DUPCLOSURE                       R16 K108 [PROTO_68]
      301 CAPTURE                          VAL R15
      302 SETTABLEKS                       R16 R15 K109 ["getDynamicInputPinNameFromInputNode"]
      304 DUPCLOSURE                       R16 K110 [PROTO_69]
      305 SETTABLEKS                       R16 R15 K111 ["getDynamicInputPinNameFromInputPinIds"]
      307 DUPCLOSURE                       R16 K112 [PROTO_70]
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R14
      310 CAPTURE                          VAL R7
      311 CAPTURE                          VAL R15
      312 SETTABLEKS                       R16 R15 K113 ["createNewAnimationGraph"]
      314 DUPCLOSURE                       R16 K114 [PROTO_71]
      315 CAPTURE                          VAL R7
      316 CAPTURE                          VAL R0
      317 CAPTURE                          VAL R15
      318 SETTABLEKS                       R16 R15 K115 ["createNodeOfType"]
      320 RETURN                           R15 1
