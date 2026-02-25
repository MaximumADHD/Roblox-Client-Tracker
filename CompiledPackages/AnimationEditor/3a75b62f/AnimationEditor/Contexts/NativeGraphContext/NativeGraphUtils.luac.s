PROTO_0:
        0 LOADK                            R4 K0 ["Configuration"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 RETURN                           R2 1
       13 GETIMPORT                        R3 K5 [Instance.new]
       15 LOADK                            R4 K0 ["Configuration"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R1 R3 K6 ["Name"]
       19 SETTABLEKS                       R0 R3 K7 ["Parent"]
       21 RETURN                           R3 1

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getNodeParameterConfigurationName"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["observeFirstAncestor"]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K2 ["AnimationGraphDefinition"]
       10 CALL                             R4 2 1
       11 LOADB                            R5 0
       12 CALL                             R4 1 1
       13 JUMPIF                           R4 ; [+4]
       14 GETIMPORT                        R5 K4 [error]
       16 LOADK                            R6 K5 ["AnimationNodeDefinition is not parented to an AnimationGraphDefinition"]
       17 CALL                             R5 1 0
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K6 ["_getOrCreateConfigInstance"]
       21 MOVE                             R6 R4
       22 MOVE                             R7 R3
       23 CALL                             R5 2 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K7 ["NODE_ATTRIBUTES"]
       27 GETTABLEKS                       R8 R9 K8 ["ParameterType"]
       29 MOVE                             R9 R2
       30 NAMECALL                         R6 R5 K9 ["SetAttribute"]
       32 CALL                             R6 3 0
       33 RETURN                           R5 1

PROTO_4:
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

PROTO_5:
        0 MOVE                             R5 R1
        1 LOADK                            R7 K0 ["param::%*"]
        2 MOVE                             R9 R2
        3 NAMECALL                         R7 R7 K1 ["format"]
        5 CALL                             R7 2 1
        6 MOVE                             R6 R7
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 LOADK                            R2 K0 ["Parameter_%*_Configuration"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R3 K0 ["param::%*"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 NAMECALL                         R3 R0 K2 ["GetAttributes"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 MOVE                             R10 R6
       11 NAMECALL                         R8 R0 K3 ["GetAttribute"]
       13 CALL                             R8 2 1
       14 JUMPIFNOTEQ                      R8 R2 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R3 1 ; [-8]
       19 LOADNIL                          R3
       20 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R3 2
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K0 ["instanceToId"]
        9 CALL                             R3 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R4 2
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R4 K0 ["instanceToId"]
       17 CALL                             R4 2 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 DUPTABLE                         R5 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       21 GETUPVAL                         R6 3
       22 SETTABLEKS                       R6 R5 K1 ["wireId"]
       24 SETTABLEKS                       R4 R5 K2 ["inputNodeId"]
       26 GETUPVAL                         R6 4
       27 MOVE                             R7 R0
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K3 ["inputNodePinId"]
       31 SETTABLEKS                       R3 R5 K4 ["outputNodeId"]
       33 LOADK                            R6 K8 ["Output"]
       34 SETTABLEKS                       R6 R5 K5 ["outputNodePinId"]
       36 GETUPVAL                         R6 5
       37 MOVE                             R7 R0
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K6 ["properties"]
       41 RETURN                           R5 1

PROTO_12:
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
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CALL                             R7 1 -1
       36 RETURN                           R7 -1

PROTO_13:
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

PROTO_14:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad AnimationNodeDefinition"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K5 ["observeChildrenWhichIsA"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K6 ["ObjectValue"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K7 ["forEach"]
       19 MOVE                             R3 R1
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 1
       25 RETURN                           R2 1

PROTO_15:
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

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 MOVE                             R4 R2
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 MOVE                             R9 R8
       12 LOADNIL                          R10
       13 LOADNIL                          R11
       14 FORGPREP                         R9
       15 GETTABLEKS                       R14 R13 K0 ["inputNodeId"]
       17 JUMPIFEQKNIL                     R14 ; [+73]
       19 GETTABLEKS                       R14 R13 K1 ["outputNodeId"]
       21 JUMPIFEQKNIL                     R14 ; [+69]
       23 MOVE                             R14 R3
       24 GETTABLEKS                       R15 R13 K0 ["inputNodeId"]
       26 CALL                             R14 1 1
       27 MOVE                             R15 R3
       28 GETTABLEKS                       R16 R13 K1 ["outputNodeId"]
       30 CALL                             R15 1 1
       31 GETTABLEKS                       R16 R14 K2 ["inputNodesByPinName"]
       33 GETTABLEKS                       R17 R13 K3 ["inputNodePinId"]
       35 DUPTABLE                         R18 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       36 GETTABLEKS                       R19 R13 K4 ["wireId"]
       38 SETTABLEKS                       R19 R18 K4 ["wireId"]
       40 GETTABLEKS                       R19 R13 K0 ["inputNodeId"]
       42 SETTABLEKS                       R19 R18 K0 ["inputNodeId"]
       44 GETTABLEKS                       R19 R13 K3 ["inputNodePinId"]
       46 SETTABLEKS                       R19 R18 K3 ["inputNodePinId"]
       48 GETTABLEKS                       R19 R13 K1 ["outputNodeId"]
       50 SETTABLEKS                       R19 R18 K1 ["outputNodeId"]
       52 GETTABLEKS                       R19 R13 K5 ["outputNodePinId"]
       54 SETTABLEKS                       R19 R18 K5 ["outputNodePinId"]
       56 GETTABLEKS                       R19 R13 K6 ["properties"]
       58 SETTABLEKS                       R19 R18 K6 ["properties"]
       60 SETTABLE                         R18 R16 R17
       61 GETTABLEKS                       R16 R15 K8 ["outputNodesByPinName"]
       63 GETTABLEKS                       R17 R13 K5 ["outputNodePinId"]
       65 DUPTABLE                         R18 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       66 GETTABLEKS                       R19 R13 K4 ["wireId"]
       68 SETTABLEKS                       R19 R18 K4 ["wireId"]
       70 GETTABLEKS                       R19 R13 K0 ["inputNodeId"]
       72 SETTABLEKS                       R19 R18 K0 ["inputNodeId"]
       74 GETTABLEKS                       R19 R13 K3 ["inputNodePinId"]
       76 SETTABLEKS                       R19 R18 K3 ["inputNodePinId"]
       78 GETTABLEKS                       R19 R13 K1 ["outputNodeId"]
       80 SETTABLEKS                       R19 R18 K1 ["outputNodeId"]
       82 GETTABLEKS                       R19 R13 K5 ["outputNodePinId"]
       84 SETTABLEKS                       R19 R18 K5 ["outputNodePinId"]
       86 GETTABLEKS                       R19 R13 K6 ["properties"]
       88 SETTABLEKS                       R19 R18 K6 ["properties"]
       90 SETTABLE                         R18 R16 R17
       91 FORGLOOP                         R9 2 ; [-77]
       93 FORGLOOP                         R4 2 ; [-83]
       95 MOVE                             R4 R1
       96 LOADNIL                          R5
       97 LOADNIL                          R6
       98 FORGPREP                         R4
       99 GETIMPORT                        R9 K11 [table.freeze]
      101 MOVE                             R10 R8
      102 CALL                             R9 1 0
      103 FORGLOOP                         R4 2 ; [-5]
      105 GETIMPORT                        R4 K11 [table.freeze]
      107 MOVE                             R5 R1
      108 CALL                             R4 1 -1
      109 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["forEach"]
        9 MOVE                             R4 R2
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K3 ["createComputed"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R3
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1

PROTO_18:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["_observeOrCreateConfigInstance"]
        4 MOVE                             R2 R0
        5 GETUPVAL                         R3 1
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["of"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADK                            R2 K0 [""]
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["matchParameterBinding"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+1]
       13 RETURN                           R2 1
       14 LOADK                            R3 K0 [""]
       15 RETURN                           R3 1

PROTO_21:
        0 DUPTABLE                         R1 K4 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K2 ["parameterName"]
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K3 ["parameterBindingName"]
       17 GETIMPORT                        R2 K7 [table.freeze]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_22:
        0 JUMPIF                           R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 LOADNIL                          R4
        6 NAMECALL                         R1 R1 K0 ["SetAttribute"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["of"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 LOADB                            R1 1
       16 SETUPVAL                         R1 0
       17 GETUPVAL                         R1 4
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K2 ["instanceToId"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R3 R4 K3 ["attributes"]
       25 GETTABLEKS                       R2 R3 K4 ["observeString"]
       27 MOVE                             R3 R0
       28 GETUPVAL                         R6 6
       29 GETTABLEKS                       R5 R6 K5 ["NODE_ATTRIBUTES"]
       31 GETTABLEKS                       R4 R5 K6 ["ParameterType"]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R4 7
       35 GETTABLEKS                       R3 R4 K7 ["createComputed"]
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U8
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getNodeParameterConfigurationName"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["observeFirstAncestor"]
        8 MOVE                             R5 R1
        9 LOADK                            R6 K2 ["AnimationGraphDefinition"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["switchMap"]
       14 MOVE                             R6 R4
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U1
       19 CALL                             R5 2 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K4 ["attributes"]
       23 GETTABLEKS                       R6 R7 K5 ["observeString"]
       25 MOVE                             R7 R1
       26 MOVE                             R8 R2
       27 CALL                             R6 2 1
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R7 R8 K6 ["createComputed"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R6
       33 CAPTURE                          UPVAL U0
       34 CALL                             R7 1 1
       35 LOADB                            R8 0
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K3 ["switchMap"]
       39 MOVE                             R10 R5
       40 NEWCLOSURE                       R11 P2
       41 CAPTURE                          REF R8
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R7
       50 CALL                             R9 2 -1
       51 CLOSEUPVALS                      R8
       52 RETURN                           R9 -1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 FASTCALL1                        TYPE R7 ; [+3]
       10 MOVE                             R9 R7
       11 GETIMPORT                        R8 K1 [type]
       13 CALL                             R8 1 1
       14 JUMPIFNOTEQKS                    R8 K2 ["string"] ; [+14]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K3 ["matchParameterBinding"]
       19 MOVE                             R9 R7
       20 CALL                             R8 1 1
       21 JUMPIFNOT                        R8 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       24 MOVE                             R10 R2
       25 MOVE                             R11 R6
       26 GETIMPORT                        R9 K6 [table.insert]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R3 2 ; [-21]
       31 GETIMPORT                        R3 K8 [table.freeze]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeParameterData"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_28:
        0 DUPTABLE                         R1 K6 [{"nodeId", "inputPinIds", "nodeProps", "parameterData", "name", "nodeType"}]
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
       15 GETUPVAL                         R3 4
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 CALL                             R2 -1 1
       19 SETTABLEKS                       R2 R1 K3 ["parameterData"]
       21 GETUPVAL                         R2 5
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["name"]
       26 GETUPVAL                         R2 6
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K5 ["nodeType"]
       31 GETIMPORT                        R2 K9 [table.freeze]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1

PROTO_29:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["properties"]
        7 GETTABLEKS                       R4 R5 K2 ["observeString"]
        9 MOVE                             R5 R2
       10 LOADK                            R6 K3 ["Name"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["properties"]
       15 GETTABLEKS                       R5 R6 K4 ["observeEnumItem"]
       17 MOVE                             R6 R2
       18 LOADK                            R7 K5 ["NodeType"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K6 ["createComputed"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R5
       25 CALL                             R6 1 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K7 ["observeAttributes"]
       29 MOVE                             R8 R2
       30 CALL                             R7 1 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K8 ["observeChildren"]
       34 MOVE                             R9 R2
       35 CALL                             R8 1 1
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K6 ["createComputed"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R6
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R0
       46 CALL                             R9 1 1
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R10 R11 K6 ["createComputed"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U4
       53 CALL                             R10 1 1
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R11 R12 K9 ["forEach"]
       57 MOVE                             R12 R10
       58 NEWCLOSURE                       R13 P3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CALL                             R11 2 1
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R12 R13 K10 ["observeInputPins"]
       66 MOVE                             R13 R2
       67 CALL                             R12 1 1
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K6 ["createComputed"]
       71 NEWCLOSURE                       R14 P4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R9
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CALL                             R13 1 -1
       80 RETURN                           R13 -1

PROTO_30:
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
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["AnimationNodeDefinition"]
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["forEach"]
        9 MOVE                             R5 R3
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R4 2 1
       15 RETURN                           R4 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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
       23 DUPCLOSURE                       R7 K5 [PROTO_35]
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["switchMap"]
       31 MOVE                             R7 R4
       32 DUPCLOSURE                       R8 K6 [PROTO_36]
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U2
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K4 ["switchMap"]
       40 MOVE                             R8 R4
       41 DUPCLOSURE                       R9 K7 [PROTO_37]
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

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEN                        R2 R1 1
        4 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 SETUPVAL                         R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETUPVAL                         R2 1
        9 GETIMPORT                        R4 K1 [game]
       11 NAMECALL                         R2 R2 K2 ["IsDescendantOf"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 GETUPVAL                         R2 1
       16 RETURN                           R2 1
       17 LOADNIL                          R2
       18 SETUPVAL                         R2 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeNodeInfoLookupList"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["of"]
       12 NEWTABLE                         R2 0 0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["nodeId"]
       11 SETTABLE                         R7 R2 R8
       12 FORGLOOP                         R3 2 ; [-4]
       14 RETURN                           R2 1

PROTO_47:
        0 DUPTABLE                         R2 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
        1 GETTABLEKS                       R3 R1 K7 ["id"]
        3 SETTABLEKS                       R3 R2 K0 ["wireId"]
        5 GETTABLEKS                       R3 R0 K8 ["nodeId"]
        7 SETTABLEKS                       R3 R2 K1 ["inputNodeId"]
        9 GETTABLEKS                       R3 R1 K9 ["parameterName"]
       11 SETTABLEKS                       R3 R2 K2 ["inputNodePinId"]
       13 GETTABLEKS                       R3 R1 K7 ["id"]
       15 SETTABLEKS                       R3 R2 K3 ["outputNodeId"]
       17 LOADK                            R3 K10 ["Output"]
       18 SETTABLEKS                       R3 R2 K4 ["outputNodePinId"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K5 ["properties"]
       24 GETIMPORT                        R3 K13 [table.freeze]
       26 DUPTABLE                         R4 K23 [{"nodeProps", "nodeState", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "className", "id", "nodeType", "name", "parentId"}]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K14 ["nodeProps"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K15 ["nodeState"]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K16 ["inputPinIds"]
       39 NEWTABLE                         R5 0 0
       41 SETTABLEKS                       R5 R4 K17 ["inputPinToConnectionMap"]
       43 NEWTABLE                         R5 1 0
       45 SETTABLEKS                       R2 R5 K10 ["Output"]
       47 SETTABLEKS                       R5 R4 K18 ["outputPinToConnectionMap"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K24 ["PARAMETER_NODE_CLASSNAME"]
       52 SETTABLEKS                       R5 R4 K19 ["className"]
       54 GETTABLEKS                       R5 R1 K7 ["id"]
       56 SETTABLEKS                       R5 R4 K7 ["id"]
       58 GETTABLEKS                       R5 R1 K25 ["parameterType"]
       60 SETTABLEKS                       R5 R4 K20 ["nodeType"]
       62 GETTABLEKS                       R5 R1 K26 ["parameterBindingName"]
       64 SETTABLEKS                       R5 R4 K21 ["name"]
       66 GETTABLEKS                       R5 R0 K8 ["nodeId"]
       68 SETTABLEKS                       R5 R4 K22 ["parentId"]
       70 CALL                             R3 1 1
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R5 R1 K7 ["id"]
       74 SETTABLE                         R3 R4 R5
       75 RETURN                           R2 1

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
        9 LOADNIL                          R4
       10 NEWTABLE                         R5 0 0
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R5
       15 MOVE                             R7 R2
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R13 R11 K0 ["nodeId"]
       21 GETTABLE                         R12 R3 R13
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
       53 GETTABLEKS                       R4 R11 K0 ["nodeId"]
       55 GETTABLEKS                       R15 R11 K10 ["parameterData"]
       57 LOADNIL                          R16
       58 LOADNIL                          R17
       59 FORGPREP                         R15
       60 GETTABLEKS                       R20 R19 K11 ["parameterName"]
       62 MOVE                             R21 R6
       63 MOVE                             R22 R11
       64 MOVE                             R23 R19
       65 CALL                             R21 2 1
       66 SETTABLE                         R21 R13 R20
       67 FORGLOOP                         R15 2 ; [-8]
       69 GETIMPORT                        R15 K14 [table.freeze]
       71 DUPTABLE                         R16 K26 [{"inputPinIds", "nodeProps", "nodeState", "outputPinToConnectionMap", "inputPinToConnectionMap", "className", "id", "index", "name", "nodeType", "props", "state"}]
       72 GETTABLEKS                       R17 R11 K15 ["inputPinIds"]
       74 SETTABLEKS                       R17 R16 K15 ["inputPinIds"]
       76 GETTABLEKS                       R17 R11 K16 ["nodeProps"]
       78 SETTABLEKS                       R17 R16 K16 ["nodeProps"]
       80 NEWTABLE                         R17 0 0
       82 SETTABLEKS                       R17 R16 K17 ["nodeState"]
       84 SETTABLEKS                       R14 R16 K18 ["outputPinToConnectionMap"]
       86 SETTABLEKS                       R13 R16 K19 ["inputPinToConnectionMap"]
       88 GETTABLEKS                       R18 R11 K5 ["nodeType"]
       90 GETTABLEKS                       R17 R18 K27 ["Name"]
       92 SETTABLEKS                       R17 R16 K20 ["className"]
       94 GETTABLEKS                       R17 R11 K0 ["nodeId"]
       96 SETTABLEKS                       R17 R16 K21 ["id"]
       98 LOADNIL                          R17
       99 SETTABLEKS                       R17 R16 K22 ["index"]
      101 GETTABLEKS                       R17 R11 K23 ["name"]
      103 SETTABLEKS                       R17 R16 K23 ["name"]
      105 GETTABLEKS                       R17 R11 K5 ["nodeType"]
      107 SETTABLEKS                       R17 R16 K5 ["nodeType"]
      109 LOADNIL                          R17
      110 SETTABLEKS                       R17 R16 K24 ["props"]
      112 LOADNIL                          R17
      113 SETTABLEKS                       R17 R16 K25 ["state"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      118 SETTABLE                         R15 R5 R16
      119 FORGLOOP                         R7 2 ; [-101]
      121 GETIMPORT                        R7 K14 [table.freeze]
      123 DUPTABLE                         R8 K31 [{"graphInstanceId", "lookup", "output"}]
      124 JUMPIFNOT                        R1 ; [+6]
      125 GETUPVAL                         R9 4
      126 MOVE                             R11 R1
      127 NAMECALL                         R9 R9 K32 ["instanceToId"]
      129 CALL                             R9 2 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R9
      132 SETTABLEKS                       R9 R8 K28 ["graphInstanceId"]
      134 GETIMPORT                        R9 K14 [table.freeze]
      136 MOVE                             R10 R5
      137 CALL                             R9 1 1
      138 SETTABLEKS                       R9 R8 K29 ["lookup"]
      140 SETTABLEKS                       R4 R8 K30 ["output"]
      142 CALL                             R7 1 -1
      143 RETURN                           R7 -1

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
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K2 [table.freeze]
       14 DUPTABLE                         R6 K7 [{"graphPayloadMap", "renderInfoMap", "nodeInfo", "connectionMap"}]
       15 SETTABLEKS                       R3 R6 K3 ["graphPayloadMap"]
       17 SETTABLEKS                       R4 R6 K4 ["renderInfoMap"]
       19 SETTABLEKS                       R2 R6 K5 ["nodeInfo"]
       21 SETTABLEKS                       R1 R6 K6 ["connectionMap"]
       23 CALL                             R5 1 -1
       24 RETURN                           R5 -1

PROTO_51:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["observeRootAnimationsMap"]
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["AnimationGraphDefinition"]
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["observeKeysAsList"]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["createComputed"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 CALL                             R5 1 1
       17 LOADNIL                          R6
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K3 ["createComputed"]
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R5
       23 CAPTURE                          REF R6
       24 CALL                             R7 1 1
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K4 ["switchMap"]
       28 MOVE                             R9 R7
       29 DUPCLOSURE                       R10 K5 [PROTO_42]
       30 CAPTURE                          UPVAL U2
       31 CALL                             R8 2 1
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R9 R10 K3 ["createComputed"]
       35 NEWCLOSURE                       R10 P3
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R7
       38 CALL                             R9 1 1
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R10 R11 K4 ["switchMap"]
       42 MOVE                             R11 R9
       43 NEWCLOSURE                       R12 P4
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 CALL                             R10 2 1
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R11 R12 K4 ["switchMap"]
       51 MOVE                             R12 R9
       52 NEWCLOSURE                       R13 P5
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U2
       57 CALL                             R11 2 1
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R12 R13 K3 ["createComputed"]
       61 NEWCLOSURE                       R13 P6
       62 CAPTURE                          VAL R11
       63 CALL                             R12 1 1
       64 GETUPVAL                         R14 1
       65 GETTABLEKS                       R13 R14 K3 ["createComputed"]
       67 NEWCLOSURE                       R14 P7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R10
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          VAL R0
       73 CALL                             R13 1 1
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R14 R15 K3 ["createComputed"]
       77 NEWCLOSURE                       R15 P8
       78 CAPTURE                          VAL R13
       79 CALL                             R14 1 1
       80 GETUPVAL                         R16 3
       81 GETTABLEKS                       R15 R16 K6 ["observeRenderInfoMap"]
       83 MOVE                             R16 R0
       84 MOVE                             R17 R1
       85 MOVE                             R18 R14
       86 CALL                             R15 3 1
       87 GETUPVAL                         R17 1
       88 GETTABLEKS                       R16 R17 K3 ["createComputed"]
       90 NEWCLOSURE                       R17 P9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R15
       95 CALL                             R16 1 -1
       96 CLOSEUPVALS                      R6
       97 RETURN                           R16 -1

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
       12 JUMPIFNOT                        R11 ; [+49]
       13 GETTABLEKS                       R12 R11 K4 ["position"]
       15 JUMPIFNOT                        R12 ; [+46]
       16 GETTABLEKS                       R12 R11 K5 ["size"]
       18 JUMPIFNOT                        R12 ; [+43]
       19 GETTABLEKS                       R12 R11 K4 ["position"]
       21 GETTABLEKS                       R14 R11 K4 ["position"]
       23 GETTABLEKS                       R15 R11 K5 ["size"]
       25 ADD                              R13 R14 R15
       26 GETTABLEKS                       R16 R12 K6 ["X"]
       28 FASTCALL2                        MATH_MIN R2 R16 ; [+4]
       30 MOVE                             R15 R2
       31 GETIMPORT                        R14 K9 [math.min]
       33 CALL                             R14 2 1
       34 MOVE                             R2 R14
       35 GETTABLEKS                       R16 R12 K10 ["Y"]
       37 FASTCALL2                        MATH_MIN R3 R16 ; [+4]
       39 MOVE                             R15 R3
       40 GETIMPORT                        R14 K9 [math.min]
       42 CALL                             R14 2 1
       43 MOVE                             R3 R14
       44 GETTABLEKS                       R16 R13 K6 ["X"]
       46 FASTCALL2                        MATH_MAX R4 R16 ; [+4]
       48 MOVE                             R15 R4
       49 GETIMPORT                        R14 K12 [math.max]
       51 CALL                             R14 2 1
       52 MOVE                             R4 R14
       53 GETTABLEKS                       R16 R13 K10 ["Y"]
       55 FASTCALL2                        MATH_MAX R5 R16 ; [+4]
       57 MOVE                             R15 R5
       58 GETIMPORT                        R14 K12 [math.max]
       60 CALL                             R14 2 1
       61 MOVE                             R5 R14
       62 FORGLOOP                         R6 2 ; [-54]
       64 JUMPIFLT                         R4 R2 ; [+3]
       66 JUMPIFNOTLT                      R5 R3 ; [+9]
       68 GETIMPORT                        R6 K15 [Rect.new]
       70 LOADN                            R7 0
       71 LOADN                            R8 0
       72 LOADN                            R9 0
       73 LOADN                            R10 0
       74 CALL                             R6 4 -1
       75 RETURN                           R6 -1
       76 GETIMPORT                        R6 K15 [Rect.new]
       78 MOVE                             R7 R2
       79 MOVE                             R8 R3
       80 MOVE                             R9 R4
       81 MOVE                             R10 R5
       82 CALL                             R6 4 1
       83 RETURN                           R6 1

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
        0 GETIMPORT                        R1 K2 [string.match]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 LOADK                            R3 K4 ["^Parameter_(.+)_Configuration$"]
        5 CALL                             R1 2 1
        6 LOADK                            R4 K5 ["Configuration"]
        7 NAMECALL                         R2 R0 K6 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

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
       23 JUMPIFNOT                        R5 ; [+31]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+28]
       27 GETIMPORT                        R8 K7 [string.match]
       29 GETTABLEKS                       R9 R5 K8 ["Name"]
       31 LOADK                            R10 K9 ["^Parameter_(.+)_Configuration$"]
       32 CALL                             R8 2 1
       33 LOADK                            R11 K10 ["Configuration"]
       34 NAMECALL                         R9 R5 K11 ["IsA"]
       36 CALL                             R9 2 1
       37 MOVE                             R7 R9
       38 JUMPIFNOT                        R7 ; [+4]
       39 JUMPIFNOTEQKNIL                  R8 ; [+2]
       41 LOADB                            R7 0 +1
       42 LOADB                            R7 1
       43 JUMPIFNOT                        R7 ; [+8]
       44 JUMPIFNOT                        R6 ; [+10]
       45 GETTABLEKS                       R9 R4 K12 ["inputNodePinId"]
       47 LOADNIL                          R10
       48 NAMECALL                         R7 R6 K13 ["SetAttribute"]
       50 CALL                             R7 3 0
       51 JUMP                             ; [+3]
       52 LOADNIL                          R7
       53 SETTABLEKS                       R7 R5 K4 ["Parent"]
       55 JUMPIFNOT                        R6 ; [+32]
       56 LOADK                            R9 K14 ["AnimationNodeDefinition"]
       57 NAMECALL                         R7 R6 K11 ["IsA"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+27]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R7 R8 K15 ["hasDynamicInputPins"]
       64 MOVE                             R8 R1
       65 GETTABLEKS                       R9 R4 K3 ["inputNodeId"]
       67 CALL                             R7 2 1
       68 JUMPIFNOT                        R7 ; [+19]
       69 NAMECALL                         R7 R6 K16 ["GetOrderedInputPinNames"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K19 [table.find]
       74 MOVE                             R9 R7
       75 GETTABLEKS                       R10 R4 K12 ["inputNodePinId"]
       77 CALL                             R8 2 1
       78 JUMPIFNOT                        R8 ; [+9]
       79 GETIMPORT                        R9 K21 [table.remove]
       81 MOVE                             R10 R7
       82 MOVE                             R11 R8
       83 CALL                             R9 2 0
       84 MOVE                             R11 R7
       85 NAMECALL                         R9 R6 K22 ["SetOrderedInputPinNames"]
       87 CALL                             R9 2 0
       88 LOADB                            R7 1
       89 RETURN                           R7 1

PROTO_59:
        0 MOVE                             R8 R2
        1 NAMECALL                         R6 R0 K0 ["idToInstance"]
        3 CALL                             R6 2 1
        4 MOVE                             R9 R4
        5 NAMECALL                         R7 R0 K0 ["idToInstance"]
        7 CALL                             R7 2 1
        8 JUMPIFEQKNIL                     R6 ; [+13]
       10 LOADK                            R10 K1 ["AnimationNodeDefinition"]
       11 NAMECALL                         R8 R6 K2 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+7]
       15 JUMPIFEQKNIL                     R7 ; [+6]
       17 LOADK                            R10 K1 ["AnimationNodeDefinition"]
       18 NAMECALL                         R8 R7 K2 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIF                           R8 ; [+1]
       22 RETURN                           R0 0
       23 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       24 NAMECALL                         R8 R6 K4 ["FindFirstAncestorWhichIsA"]
       26 CALL                             R8 2 1
       27 JUMPIF                           R8 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K5 ["_findNodeOutputBinding"]
       32 MOVE                             R10 R1
       33 MOVE                             R11 R4
       34 MOVE                             R12 R5
       35 CALL                             R9 3 1
       36 JUMPIFNOT                        R9 ; [+6]
       37 GETTABLEKS                       R12 R9 K6 ["wireId"]
       39 NAMECALL                         R10 R0 K0 ["idToInstance"]
       41 CALL                             R10 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R10
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K7 ["_findNodeInputBinding"]
       47 MOVE                             R12 R1
       48 MOVE                             R13 R2
       49 MOVE                             R14 R2
       50 CALL                             R11 3 1
       51 JUMPIFNOT                        R11 ; [+6]
       52 GETTABLEKS                       R14 R11 K6 ["wireId"]
       54 NAMECALL                         R12 R0 K0 ["idToInstance"]
       56 CALL                             R12 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R12
       59 LOADNIL                          R13
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R14 R15 K8 ["hasDynamicInputPins"]
       63 MOVE                             R15 R1
       64 MOVE                             R16 R2
       65 CALL                             R14 2 1
       66 JUMPIFNOT                        R14 ; [+42]
       67 NAMECALL                         R14 R6 K9 ["GetOrderedInputPinNames"]
       69 CALL                             R14 1 1
       70 JUMPIFNOT                        R9 ; [+7]
       71 GETIMPORT                        R15 K12 [table.find]
       73 MOVE                             R16 R14
       74 GETTABLEKS                       R17 R9 K13 ["inputNodePinId"]
       76 CALL                             R15 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R15
       79 JUMPIFNOT                        R15 ; [+5]
       80 GETIMPORT                        R16 K15 [table.remove]
       82 MOVE                             R17 R14
       83 MOVE                             R18 R15
       84 CALL                             R16 2 0
       85 JUMPIFNOT                        R11 ; [+7]
       86 GETIMPORT                        R16 K12 [table.find]
       88 MOVE                             R17 R14
       89 GETTABLEKS                       R18 R11 K13 ["inputNodePinId"]
       91 CALL                             R16 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R16
       94 JUMPIFNOT                        R16 ; [+5]
       95 GETIMPORT                        R17 K15 [table.remove]
       97 MOVE                             R18 R14
       98 MOVE                             R19 R16
       99 CALL                             R17 2 0
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R17 R18 K16 ["getDynamicInputPinNameFromInputPinIds"]
      103 MOVE                             R18 R14
      104 GETTABLEKS                       R19 R7 K17 ["Name"]
      106 CALL                             R17 2 1
      107 MOVE                             R13 R17
      108 JUMP                             ; [+1]
      109 MOVE                             R13 R3
      110 JUMPIFEQ                         R13 R3 ; [+9]
      112 GETUPVAL                         R15 0
      113 GETTABLEKS                       R14 R15 K7 ["_findNodeInputBinding"]
      115 MOVE                             R15 R1
      116 MOVE                             R16 R2
      117 MOVE                             R17 R13
      118 CALL                             R14 3 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 JUMPIFNOT                        R14 ; [+6]
      122 GETTABLEKS                       R17 R14 K6 ["wireId"]
      124 NAMECALL                         R15 R0 K0 ["idToInstance"]
      126 CALL                             R15 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R15
      129 JUMPIFEQKNIL                     R12 ; [+13]
      131 MOVE                             R19 R8
      132 NAMECALL                         R17 R12 K18 ["IsDescendantOf"]
      134 CALL                             R17 2 1
      135 JUMPIFNOT                        R17 ; [+7]
      136 LOADK                            R19 K19 ["ObjectValue"]
      137 NAMECALL                         R17 R12 K2 ["IsA"]
      139 CALL                             R17 2 1
      140 JUMPIFNOT                        R17 ; [+2]
      141 MOVE                             R16 R12
      142 JUMP                             ; [+32]
      143 JUMPIFEQKNIL                     R15 ; [+13]
      145 MOVE                             R19 R8
      146 NAMECALL                         R17 R15 K18 ["IsDescendantOf"]
      148 CALL                             R17 2 1
      149 JUMPIFNOT                        R17 ; [+7]
      150 LOADK                            R19 K19 ["ObjectValue"]
      151 NAMECALL                         R17 R15 K2 ["IsA"]
      153 CALL                             R17 2 1
      154 JUMPIFNOT                        R17 ; [+2]
      155 MOVE                             R16 R15
      156 JUMP                             ; [+18]
      157 JUMPIFEQKNIL                     R10 ; [+13]
      159 MOVE                             R19 R8
      160 NAMECALL                         R17 R10 K18 ["IsDescendantOf"]
      162 CALL                             R17 2 1
      163 JUMPIFNOT                        R17 ; [+7]
      164 LOADK                            R19 K19 ["ObjectValue"]
      165 NAMECALL                         R17 R10 K2 ["IsA"]
      167 CALL                             R17 2 1
      168 JUMPIFNOT                        R17 ; [+2]
      169 MOVE                             R16 R10
      170 JUMP                             ; [+4]
      171 GETIMPORT                        R16 K22 [Instance.new]
      173 LOADK                            R17 K19 ["ObjectValue"]
      174 CALL                             R16 1 1
      175 JUMPIFNOT                        R15 ; [+5]
      176 JUMPIFEQ                         R15 R16 ; [+4]
      178 LOADNIL                          R17
      179 SETTABLEKS                       R17 R15 K23 ["Parent"]
      181 JUMPIFNOT                        R10 ; [+5]
      182 JUMPIFEQ                         R10 R16 ; [+4]
      184 LOADNIL                          R17
      185 SETTABLEKS                       R17 R10 K23 ["Parent"]
      187 JUMPIFNOT                        R12 ; [+5]
      188 JUMPIFEQ                         R12 R16 ; [+4]
      190 LOADNIL                          R17
      191 SETTABLEKS                       R17 R12 K23 ["Parent"]
      193 NAMECALL                         R17 R6 K24 ["GetChildren"]
      195 CALL                             R17 1 3
      196 FORGPREP                         R17
      197 LOADK                            R24 K19 ["ObjectValue"]
      198 NAMECALL                         R22 R21 K2 ["IsA"]
      200 CALL                             R22 2 1
      201 JUMPIFNOT                        R22 ; [+9]
      202 GETTABLEKS                       R22 R21 K17 ["Name"]
      204 JUMPIFNOTEQ                      R22 R13 ; [+6]
      206 JUMPIFEQ                         R21 R16 ; [+4]
      208 LOADNIL                          R22
      209 SETTABLEKS                       R22 R21 K23 ["Parent"]
      211 FORGLOOP                         R17 2 ; [-15]
      213 NAMECALL                         R17 R6 K9 ["GetOrderedInputPinNames"]
      215 CALL                             R17 1 1
      216 JUMPIFEQ                         R13 R3 ; [+19]
      218 GETIMPORT                        R18 K12 [table.find]
      220 MOVE                             R19 R17
      221 MOVE                             R20 R3
      222 CALL                             R18 2 1
      223 GETIMPORT                        R19 K12 [table.find]
      225 MOVE                             R20 R17
      226 MOVE                             R21 R13
      227 CALL                             R19 2 1
      228 JUMPIFNOT                        R18 ; [+1]
      229 SETTABLE                         R13 R17 R18
      230 JUMPIFNOT                        R19 ; [+5]
      231 GETIMPORT                        R20 K15 [table.remove]
      233 MOVE                             R21 R17
      234 MOVE                             R22 R19
      235 CALL                             R20 2 0
      236 GETIMPORT                        R18 K12 [table.find]
      238 MOVE                             R19 R17
      239 MOVE                             R20 R13
      240 CALL                             R18 2 1
      241 JUMPIF                           R18 ; [+7]
      242 FASTCALL2                        TABLE_INSERT R17 R13 ; [+5]
      244 MOVE                             R19 R17
      245 MOVE                             R20 R13
      246 GETIMPORT                        R18 K26 [table.insert]
      248 CALL                             R18 2 0
      249 MOVE                             R20 R17
      250 NAMECALL                         R18 R6 K27 ["SetOrderedInputPinNames"]
      252 CALL                             R18 2 0
      253 SETTABLEKS                       R13 R16 K17 ["Name"]
      255 SETTABLEKS                       R7 R16 K28 ["Value"]
      257 SETTABLEKS                       R6 R16 K23 ["Parent"]
      259 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       32 LOADK                            R6 K7 ["Couldn't create animation saves folder"]
       33 GETIMPORT                        R4 K9 [assert]
       35 CALL                             R4 2 0
       36 GETIMPORT                        R4 K12 [Instance.new]
       38 LOADK                            R5 K13 ["AnimationGraphDefinition"]
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R3
       42 MOVE                             R7 R1
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K14 ["Name"]
       46 GETUPVAL                         R5 2
       47 CALL                             R5 0 1
       48 GETIMPORT                        R6 K18 [Enum.AnimationNodeType.GraphOutput]
       50 SETTABLEKS                       R6 R5 K19 ["NodeType"]
       52 LOADK                            R6 K17 ["GraphOutput"]
       53 SETTABLEKS                       R6 R5 K14 ["Name"]
       55 SETTABLEKS                       R4 R5 K20 ["Parent"]
       57 GETUPVAL                         R7 3
       58 GETTABLEKS                       R6 R7 K21 ["setNodePosition"]
       60 MOVE                             R7 R5
       61 GETIMPORT                        R8 K24 [Vector2.zero]
       63 CALL                             R6 2 0
       64 SETTABLEKS                       R3 R4 K20 ["Parent"]
       66 RETURN                           R4 1

PROTO_68:
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
       70 GETTABLEKS                       R11 R1 K22 ["Parent"]
       72 GETTABLEKS                       R10 R11 K23 ["Signals"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R13 R1 K10 ["Util"]
       79 GETTABLEKS                       R12 R13 K23 ["Signals"]
       81 GETTABLEKS                       R11 R12 K24 ["SignalsAnimationUtils"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R14 R1 K10 ["Util"]
       88 GETTABLEKS                       R13 R14 K23 ["Signals"]
       90 GETTABLEKS                       R12 R13 K25 ["SignalsInstanceUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R15 R1 K10 ["Util"]
       97 GETTABLEKS                       R14 R15 K23 ["Signals"]
       99 GETTABLEKS                       R13 R14 K26 ["TypedInstanceSignals"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R15 R1 K10 ["Util"]
      106 GETTABLEKS                       R14 R15 K27 ["cleanHoles"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R16 R1 K10 ["Util"]
      113 GETTABLEKS                       R15 R16 K28 ["getDeduplicatedName"]
      115 CALL                             R14 1 1
      116 NEWTABLE                         R15 64 0
      118 DUPCLOSURE                       R16 K29 [PROTO_0]
      119 SETTABLEKS                       R16 R15 K30 ["_getOrCreateConfigInstance"]
      121 DUPCLOSURE                       R16 K31 [PROTO_2]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R15
      124 SETTABLEKS                       R16 R15 K32 ["_observeOrCreateConfigInstance"]
      126 DUPCLOSURE                       R16 K33 [PROTO_3]
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R16 R15 K34 ["getOrCreateParameterInstance"]
      132 DUPCLOSURE                       R16 K35 [PROTO_4]
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R16 R15 K36 ["getParameterType"]
      136 DUPCLOSURE                       R16 K37 [PROTO_5]
      137 SETTABLEKS                       R16 R15 K38 ["setParameterBindingName"]
      139 DUPCLOSURE                       R16 K39 [PROTO_6]
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R4
      142 SETTABLEKS                       R16 R15 K40 ["setNodePosition"]
      144 DUPCLOSURE                       R16 K41 [PROTO_7]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R4
      147 SETTABLEKS                       R16 R15 K42 ["setNodeSize"]
      149 DUPCLOSURE                       R16 K43 [PROTO_8]
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R4
      152 SETTABLEKS                       R16 R15 K44 ["setNodeIsCollapsed"]
      154 DUPCLOSURE                       R16 K45 [PROTO_9]
      155 SETTABLEKS                       R16 R15 K46 ["getNodeParameterConfigurationName"]
      157 DUPCLOSURE                       R16 K47 [PROTO_10]
      158 SETTABLEKS                       R16 R15 K48 ["getParameterBindingNameFromParameterName"]
      160 DUPCLOSURE                       R16 K49 [PROTO_12]
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R9
      164 SETTABLEKS                       R16 R15 K50 ["observeWireInfo"]
      166 DUPCLOSURE                       R16 K51 [PROTO_17]
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R9
      170 SETTABLEKS                       R16 R15 K52 ["observeNodeConnectionMap"]
      172 DUPCLOSURE                       R16 K53 [PROTO_18]
      173 SETTABLEKS                       R16 R15 K54 ["matchParameterBinding"]
      175 DUPCLOSURE                       R16 K55 [PROTO_23]
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R4
      181 SETTABLEKS                       R16 R15 K56 ["observeParameterData"]
      183 DUPCLOSURE                       R16 K57 [PROTO_29]
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R13
      190 SETTABLEKS                       R16 R15 K58 ["observeNodeInfo"]
      192 DUPCLOSURE                       R16 K59 [PROTO_31]
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R15
      195 SETTABLEKS                       R16 R15 K60 ["observeNodeInfoLookupList"]
      197 DUPCLOSURE                       R16 K61 [PROTO_34]
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R16 R15 K62 ["observeRenderInfoMap"]
      203 DUPCLOSURE                       R16 K63 [PROTO_39]
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R9
      209 SETTABLEKS                       R16 R15 K64 ["observeRenderInfo"]
      211 DUPCLOSURE                       R16 K65 [PROTO_51]
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R4
      217 SETTABLEKS                       R16 R15 K66 ["observeGraphState"]
      219 DUPCLOSURE                       R16 K67 [PROTO_52]
      220 SETTABLEKS                       R16 R15 K68 ["fitGraphRect"]
      222 DUPCLOSURE                       R16 K69 [PROTO_53]
      223 SETTABLEKS                       R16 R15 K70 ["getPinAnchorKey"]
      225 DUPCLOSURE                       R16 K71 [PROTO_54]
      226 SETTABLEKS                       R16 R15 K72 ["_findNodeInputBinding"]
      228 DUPCLOSURE                       R16 K73 [PROTO_55]
      229 SETTABLEKS                       R16 R15 K74 ["_findNodeOutputBinding"]
      231 DUPCLOSURE                       R16 K75 [PROTO_56]
      232 CAPTURE                          VAL R15
      233 SETTABLEKS                       R16 R15 K76 ["removeNodeInputConnection"]
      235 DUPCLOSURE                       R16 K77 [PROTO_57]
      236 DUPCLOSURE                       R17 K78 [PROTO_58]
      237 CAPTURE                          VAL R15
      238 SETTABLEKS                       R17 R15 K79 ["removeNodeOutputConnection"]
      240 DUPCLOSURE                       R17 K80 [PROTO_59]
      241 CAPTURE                          VAL R15
      242 SETTABLEKS                       R17 R15 K81 ["setNodeConnection"]
      244 DUPCLOSURE                       R17 K82 [PROTO_60]
      245 CAPTURE                          VAL R15
      246 SETTABLEKS                       R17 R15 K83 ["hasDynamicInputPins"]
      248 DUPCLOSURE                       R17 K84 [PROTO_61]
      249 CAPTURE                          VAL R2
      250 SETTABLEKS                       R17 R15 K85 ["nodeTypeHasDynamicInputPins"]
      252 DUPCLOSURE                       R17 K86 [PROTO_62]
      253 SETTABLEKS                       R17 R15 K87 ["reorderPins"]
      255 DUPCLOSURE                       R17 K88 [PROTO_63]
      256 CAPTURE                          VAL R15
      257 SETTABLEKS                       R17 R15 K89 ["renameDynamicInputPin"]
      259 DUPCLOSURE                       R17 K90 [PROTO_64]
      260 CAPTURE                          VAL R15
      261 SETTABLEKS                       R17 R15 K91 ["getDynamicInputPinName"]
      263 DUPCLOSURE                       R17 K92 [PROTO_65]
      264 CAPTURE                          VAL R15
      265 SETTABLEKS                       R17 R15 K93 ["getDynamicInputPinNameFromInputNode"]
      267 DUPCLOSURE                       R17 K94 [PROTO_66]
      268 SETTABLEKS                       R17 R15 K95 ["getDynamicInputPinNameFromInputPinIds"]
      270 DUPCLOSURE                       R17 K96 [PROTO_67]
      271 CAPTURE                          VAL R3
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R7
      274 CAPTURE                          VAL R15
      275 SETTABLEKS                       R17 R15 K97 ["createNewAnimationGraph"]
      277 DUPCLOSURE                       R17 K98 [PROTO_68]
      278 CAPTURE                          VAL R7
      279 CAPTURE                          VAL R0
      280 CAPTURE                          VAL R15
      281 SETTABLEKS                       R17 R15 K99 ["createNodeOfType"]
      283 RETURN                           R15 1
