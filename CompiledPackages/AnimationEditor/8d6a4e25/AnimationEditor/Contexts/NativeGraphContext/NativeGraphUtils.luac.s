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
        0 LOADK                            R4 K0 ["%*Param"]
        1 MOVE                             R6 R2
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["getNodeParameterConfigurationName"]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["_getOrCreateConfigInstance"]
       14 MOVE                             R6 R1
       15 MOVE                             R7 R4
       16 CALL                             R5 2 1
       17 MOVE                             R8 R5
       18 NAMECALL                         R6 R0 K4 ["instanceToId"]
       20 CALL                             R6 2 0
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K5 ["NODE_ATTRIBUTES"]
       24 GETTABLEKS                       R8 R9 K6 ["ParameterType"]
       26 NAMECALL                         R6 R5 K7 ["GetAttribute"]
       28 CALL                             R6 2 1
       29 JUMPIF                           R6 ; [+18]
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R9 R10 K5 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R8 R9 K6 ["ParameterType"]
       35 MOVE                             R9 R2
       36 NAMECALL                         R6 R5 K8 ["SetAttribute"]
       38 CALL                             R6 3 0
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K5 ["NODE_ATTRIBUTES"]
       42 GETTABLEKS                       R8 R9 K9 ["BindingName"]
       44 MOVE                             R9 R3
       45 NAMECALL                         R6 R5 K8 ["SetAttribute"]
       47 CALL                             R6 3 0
       48 RETURN                           R5 1

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
        6 NEWTABLE                         R3 0 0
        8 NAMECALL                         R4 R0 K2 ["GetAttributes"]
       10 CALL                             R4 1 3
       11 FORGPREP                         R4
       12 MOVE                             R11 R7
       13 NAMECALL                         R9 R0 K3 ["GetAttribute"]
       15 CALL                             R9 2 1
       16 JUMPIFNOTEQ                      R9 R2 ; [+8]
       18 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       20 MOVE                             R10 R3
       21 MOVE                             R11 R7
       22 GETIMPORT                        R9 K6 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 1 ; [-14]
       27 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 FASTCALL1                        TYPE R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K1 [type]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+23]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R9 R10 K3 ["matchParameterBinding"]
       26 MOVE                             R10 R8
       27 CALL                             R9 1 1
       28 JUMPIFNOT                        R9 ; [+16]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K4 ["getNodeParameterConfigurationName"]
       32 MOVE                             R11 R9
       33 CALL                             R10 1 1
       34 MOVE                             R13 R10
       35 NAMECALL                         R11 R1 K5 ["FindFirstChild"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R11 ; [+6]
       39 GETUPVAL                         R12 3
       40 MOVE                             R14 R11
       41 NAMECALL                         R12 R12 K6 ["instanceToId"]
       43 CALL                             R12 2 1
       44 SETTABLE                         R12 R3 R7
       45 FORGLOOP                         R4 2 ; [-30]
       47 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeFirstAncestor"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationGraphDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["observeAttributes"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["createComputed"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       37 GETTABLEKS                       R6 R7 K8 ["_observeOrCreateConfigInstance"]
       39 MOVE                             R7 R1
       40 LOADK                            R8 K9 [""]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R8 3
       43 GETTABLEKS                       R7 R8 K10 ["createComputed"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CALL                             R7 1 1
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R8 R9 K10 ["createComputed"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CALL                             R8 1 -1
       60 RETURN                           R8 -1

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
        0 DUPTABLE                         R1 K6 [{"nodeId", "inputPinIds", "nodeProps", "connectedParameters", "name", "nodeType"}]
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K7 ["observeConnectedParameters"]
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R4 5
       19 CALL                             R2 2 1
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K3 ["connectedParameters"]
       24 GETUPVAL                         R2 6
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K4 ["name"]
       29 GETUPVAL                         R2 7
       30 MOVE                             R3 R0
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K5 ["nodeType"]
       34 GETIMPORT                        R2 K10 [table.freeze]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_27:
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
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R10 R11 K9 ["observeInputPins"]
       50 MOVE                             R11 R2
       51 CALL                             R10 1 1
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K6 ["createComputed"]
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R9
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 CALL                             R11 1 -1
       65 RETURN                           R11 -1

PROTO_28:
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

PROTO_29:
        0 JUMPIF                           R2 ; [+7]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["of"]
        4 NEWTABLE                         R4 0 0
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["AnimationNodeDefinition"]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["forEach"]
       17 MOVE                             R5 R3
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CALL                             R4 2 1
       23 RETURN                           R4 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R11 K0 ["Configuration"]
       10 NAMECALL                         R9 R7 K1 ["IsA"]
       12 CALL                             R9 2 1
       13 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       15 LOADK                            R10 K2 ["non-configuration instance observed for parameter node info lookup list"]
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

PROTO_31:
        0 JUMPIF                           R2 ; [+7]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["of"]
        4 NEWTABLE                         R4 0 0
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K2 ["Configuration"]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["createComputed"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CALL                             R4 1 1
       23 RETURN                           R4 1

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
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeParameterNodeInfoLookupList"]
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R3 R0 K0 ["parameterData"]
        2 GETIMPORT                        R4 K3 [table.freeze]
        4 DUPTABLE                         R5 K14 [{"nodeProps", "nodeState", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "className", "id", "nodeType", "name", "parentId"}]
        5 NEWTABLE                         R6 0 0
        7 SETTABLEKS                       R6 R5 K4 ["nodeProps"]
        9 NEWTABLE                         R6 0 0
       11 SETTABLEKS                       R6 R5 K5 ["nodeState"]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K6 ["inputPinIds"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K7 ["inputPinToConnectionMap"]
       21 NEWTABLE                         R6 1 0
       23 SETTABLEKS                       R2 R6 K15 ["Output"]
       25 SETTABLEKS                       R6 R5 K8 ["outputPinToConnectionMap"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K16 ["PARAMETER_NODE_CLASSNAME"]
       30 SETTABLEKS                       R6 R5 K9 ["className"]
       32 GETTABLEKS                       R6 R0 K17 ["nodeId"]
       34 SETTABLEKS                       R6 R5 K10 ["id"]
       36 GETTABLEKS                       R6 R0 K18 ["parameterType"]
       38 SETTABLEKS                       R6 R5 K11 ["nodeType"]
       40 GETTABLEKS                       R6 R3 K19 ["parameterBindingName"]
       42 SETTABLEKS                       R6 R5 K12 ["name"]
       44 SETTABLEKS                       R1 R5 K13 ["parentId"]
       46 CALL                             R4 1 1
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R6 R0 K17 ["nodeId"]
       50 SETTABLE                         R4 R5 R6
       51 RETURN                           R0 0

PROTO_50:
        0 DUPTABLE                         R3 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
        1 SETTABLEKS                       R2 R3 K0 ["wireId"]
        3 GETTABLEKS                       R4 R0 K7 ["nodeId"]
        5 SETTABLEKS                       R4 R3 K1 ["inputNodeId"]
        7 SETTABLEKS                       R1 R3 K2 ["inputNodePinId"]
        9 SETTABLEKS                       R2 R3 K3 ["outputNodeId"]
       11 LOADK                            R4 K8 ["Output"]
       12 SETTABLEKS                       R4 R3 K4 ["outputNodePinId"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K5 ["properties"]
       18 GETUPVAL                         R5 0
       19 GETTABLE                         R4 R5 R2
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R4
       23 GETTABLEKS                       R7 R0 K7 ["nodeId"]
       25 MOVE                             R8 R3
       26 CALL                             R5 3 0
       27 RETURN                           R3 1

PROTO_51:
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
       12 GETUPVAL                         R5 4
       13 MOVE                             R6 R0
       14 CALL                             R5 1 1
       15 LOADNIL                          R6
       16 NEWTABLE                         R7 0 0
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R7
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R8
       24 MOVE                             R10 R2
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETTABLEKS                       R16 R14 K0 ["nodeId"]
       30 GETTABLE                         R15 R4 R16
       31 NEWTABLE                         R16 0 0
       33 NEWTABLE                         R17 0 0
       35 JUMPIFNOT                        R15 ; [+20]
       36 GETTABLEKS                       R18 R15 K1 ["inputNodesByPinName"]
       38 LOADNIL                          R19
       39 LOADNIL                          R20
       40 FORGPREP                         R18
       41 GETTABLEKS                       R23 R22 K2 ["inputNodePinId"]
       43 SETTABLE                         R22 R16 R23
       44 FORGLOOP                         R18 2 ; [-4]
       46 GETTABLEKS                       R18 R15 K3 ["outputNodesByPinName"]
       48 LOADNIL                          R19
       49 LOADNIL                          R20
       50 FORGPREP                         R18
       51 GETTABLEKS                       R23 R22 K4 ["outputNodePinId"]
       53 SETTABLE                         R22 R17 R23
       54 FORGLOOP                         R18 2 ; [-4]
       56 GETTABLEKS                       R18 R14 K5 ["nodeType"]
       58 GETIMPORT                        R19 K9 [Enum.AnimationNodeType.GraphOutput]
       60 JUMPIFNOTEQ                      R18 R19 ; [+3]
       62 GETTABLEKS                       R6 R14 K0 ["nodeId"]
       64 GETTABLEKS                       R18 R14 K10 ["connectedParameters"]
       66 LOADNIL                          R19
       67 LOADNIL                          R20
       68 FORGPREP                         R18
       69 MOVE                             R23 R9
       70 MOVE                             R24 R14
       71 MOVE                             R25 R21
       72 MOVE                             R26 R22
       73 CALL                             R23 3 1
       74 SETTABLE                         R23 R16 R21
       75 FORGLOOP                         R18 2 ; [-7]
       77 GETIMPORT                        R18 K13 [table.freeze]
       79 DUPTABLE                         R19 K25 [{"inputPinIds", "nodeProps", "nodeState", "outputPinToConnectionMap", "inputPinToConnectionMap", "className", "id", "index", "name", "nodeType", "props", "state"}]
       80 GETTABLEKS                       R20 R14 K14 ["inputPinIds"]
       82 SETTABLEKS                       R20 R19 K14 ["inputPinIds"]
       84 GETTABLEKS                       R20 R14 K15 ["nodeProps"]
       86 SETTABLEKS                       R20 R19 K15 ["nodeProps"]
       88 NEWTABLE                         R20 0 0
       90 SETTABLEKS                       R20 R19 K16 ["nodeState"]
       92 SETTABLEKS                       R17 R19 K17 ["outputPinToConnectionMap"]
       94 SETTABLEKS                       R16 R19 K18 ["inputPinToConnectionMap"]
       96 GETTABLEKS                       R21 R14 K5 ["nodeType"]
       98 GETTABLEKS                       R20 R21 K26 ["Name"]
      100 SETTABLEKS                       R20 R19 K19 ["className"]
      102 GETTABLEKS                       R20 R14 K0 ["nodeId"]
      104 SETTABLEKS                       R20 R19 K20 ["id"]
      106 LOADNIL                          R20
      107 SETTABLEKS                       R20 R19 K21 ["index"]
      109 GETTABLEKS                       R20 R14 K22 ["name"]
      111 SETTABLEKS                       R20 R19 K22 ["name"]
      113 GETTABLEKS                       R20 R14 K5 ["nodeType"]
      115 SETTABLEKS                       R20 R19 K5 ["nodeType"]
      117 LOADNIL                          R20
      118 SETTABLEKS                       R20 R19 K23 ["props"]
      120 LOADNIL                          R20
      121 SETTABLEKS                       R20 R19 K24 ["state"]
      123 CALL                             R18 1 1
      124 GETTABLEKS                       R19 R14 K0 ["nodeId"]
      126 SETTABLE                         R18 R7 R19
      127 FORGLOOP                         R10 2 ; [-100]
      129 MOVE                             R10 R3
      130 LOADNIL                          R11
      131 LOADNIL                          R12
      132 FORGPREP                         R10
      133 GETTABLEKS                       R16 R14 K0 ["nodeId"]
      135 GETTABLE                         R15 R7 R16
      136 JUMPIF                           R15 ; [+5]
      137 MOVE                             R15 R8
      138 MOVE                             R16 R14
      139 LOADNIL                          R17
      140 LOADNIL                          R18
      141 CALL                             R15 3 0
      142 FORGLOOP                         R10 2 ; [-10]
      144 GETIMPORT                        R10 K13 [table.freeze]
      146 DUPTABLE                         R11 K30 [{"graphInstanceId", "lookup", "output"}]
      147 JUMPIFNOT                        R1 ; [+6]
      148 GETUPVAL                         R12 6
      149 MOVE                             R14 R1
      150 NAMECALL                         R12 R12 K31 ["instanceToId"]
      152 CALL                             R12 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R12
      155 SETTABLEKS                       R12 R11 K27 ["graphInstanceId"]
      157 GETIMPORT                        R12 K13 [table.freeze]
      159 MOVE                             R13 R7
      160 CALL                             R12 1 1
      161 SETTABLEKS                       R12 R11 K28 ["lookup"]
      163 SETTABLEKS                       R6 R11 K29 ["output"]
      165 CALL                             R10 1 -1
      166 RETURN                           R10 -1

PROTO_52:
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

PROTO_53:
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
       12 GETUPVAL                         R5 4
       13 MOVE                             R6 R0
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K2 [table.freeze]
       17 DUPTABLE                         R7 K8 [{"graphPayloadMap", "renderInfoMap", "nodeInfo", "parameterNodeInfo", "connectionMap"}]
       18 SETTABLEKS                       R4 R7 K3 ["graphPayloadMap"]
       20 SETTABLEKS                       R5 R7 K4 ["renderInfoMap"]
       22 SETTABLEKS                       R2 R7 K5 ["nodeInfo"]
       24 SETTABLEKS                       R3 R7 K6 ["parameterNodeInfo"]
       26 SETTABLEKS                       R1 R7 K7 ["connectionMap"]
       28 CALL                             R6 1 -1
       29 RETURN                           R6 -1

PROTO_54:
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
       58 GETUPVAL                         R13 2
       59 GETTABLEKS                       R12 R13 K4 ["switchMap"]
       61 MOVE                             R13 R9
       62 NEWCLOSURE                       R14 P6
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U2
       67 CALL                             R12 2 1
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K3 ["createComputed"]
       71 NEWCLOSURE                       R14 P7
       72 CAPTURE                          VAL R11
       73 CALL                             R13 1 1
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R14 R15 K3 ["createComputed"]
       77 NEWCLOSURE                       R15 P8
       78 CAPTURE                          VAL R12
       79 CALL                             R14 1 1
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R15 R16 K3 ["createComputed"]
       83 NEWCLOSURE                       R16 P9
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R14
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R0
       91 CALL                             R15 1 1
       92 GETUPVAL                         R17 1
       93 GETTABLEKS                       R16 R17 K3 ["createComputed"]
       95 NEWCLOSURE                       R17 P10
       96 CAPTURE                          VAL R15
       97 CALL                             R16 1 1
       98 GETUPVAL                         R18 3
       99 GETTABLEKS                       R17 R18 K6 ["observeRenderInfoMap"]
      101 MOVE                             R18 R0
      102 MOVE                             R19 R1
      103 MOVE                             R20 R16
      104 CALL                             R17 3 1
      105 GETUPVAL                         R19 1
      106 GETTABLEKS                       R18 R19 K3 ["createComputed"]
      108 NEWCLOSURE                       R19 P11
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R17
      114 CALL                             R18 1 -1
      115 CLOSEUPVALS                      R6
      116 RETURN                           R18 -1

PROTO_55:
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

PROTO_56:
        0 LOADK                            R4 K0 ["anchor_%*_%*_%*"]
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 4 1
        7 MOVE                             R3 R4
        8 RETURN                           R3 1

PROTO_57:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["inputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_58:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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
       22 LOADK                            R10 K3 ["Configuration"]
       23 NAMECALL                         R8 R7 K2 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIF                           R8 ; [+1]
       27 RETURN                           R0 0
       28 LOADK                            R10 K4 ["AnimationGraphDefinition"]
       29 NAMECALL                         R8 R6 K5 ["FindFirstAncestorWhichIsA"]
       31 CALL                             R8 2 1
       32 JUMPIF                           R8 ; [+1]
       33 RETURN                           R0 0
       34 LOADK                            R11 K3 ["Configuration"]
       35 NAMECALL                         R9 R7 K2 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+7]
       39 GETTABLEKS                       R11 R1 K6 ["lookup"]
       41 GETTABLE                         R10 R11 R4
       42 JUMPIFNOTEQKNIL                  R10 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 JUMPIFNOT                        R9 ; [+15]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K7 ["setParameterBindingName"]
       50 MOVE                             R11 R6
       51 MOVE                             R12 R3
       52 GETUPVAL                         R17 1
       53 GETTABLEKS                       R16 R17 K8 ["NODE_ATTRIBUTES"]
       55 GETTABLEKS                       R15 R16 K9 ["BindingName"]
       57 NAMECALL                         R13 R7 K10 ["GetAttribute"]
       59 CALL                             R13 2 -1
       60 CALL                             R10 -1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K11 ["_findNodeOutputBinding"]
       65 MOVE                             R11 R1
       66 MOVE                             R12 R4
       67 MOVE                             R13 R5
       68 CALL                             R10 3 1
       69 JUMPIFNOT                        R10 ; [+6]
       70 GETTABLEKS                       R13 R10 K12 ["wireId"]
       72 NAMECALL                         R11 R0 K0 ["idToInstance"]
       74 CALL                             R11 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R11
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R12 R13 K13 ["_findNodeInputBinding"]
       80 MOVE                             R13 R1
       81 MOVE                             R14 R2
       82 MOVE                             R15 R2
       83 CALL                             R12 3 1
       84 JUMPIFNOT                        R12 ; [+6]
       85 GETTABLEKS                       R15 R12 K12 ["wireId"]
       87 NAMECALL                         R13 R0 K0 ["idToInstance"]
       89 CALL                             R13 2 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 LOADNIL                          R14
       93 GETUPVAL                         R16 0
       94 GETTABLEKS                       R15 R16 K14 ["hasDynamicInputPins"]
       96 MOVE                             R16 R1
       97 MOVE                             R17 R2
       98 CALL                             R15 2 1
       99 JUMPIFNOT                        R15 ; [+42]
      100 NAMECALL                         R15 R6 K15 ["GetOrderedInputPinNames"]
      102 CALL                             R15 1 1
      103 JUMPIFNOT                        R10 ; [+7]
      104 GETIMPORT                        R16 K18 [table.find]
      106 MOVE                             R17 R15
      107 GETTABLEKS                       R18 R10 K19 ["inputNodePinId"]
      109 CALL                             R16 2 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R16
      112 JUMPIFNOT                        R16 ; [+5]
      113 GETIMPORT                        R17 K21 [table.remove]
      115 MOVE                             R18 R15
      116 MOVE                             R19 R16
      117 CALL                             R17 2 0
      118 JUMPIFNOT                        R12 ; [+7]
      119 GETIMPORT                        R17 K18 [table.find]
      121 MOVE                             R18 R15
      122 GETTABLEKS                       R19 R12 K19 ["inputNodePinId"]
      124 CALL                             R17 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R17
      127 JUMPIFNOT                        R17 ; [+5]
      128 GETIMPORT                        R18 K21 [table.remove]
      130 MOVE                             R19 R15
      131 MOVE                             R20 R17
      132 CALL                             R18 2 0
      133 GETUPVAL                         R19 0
      134 GETTABLEKS                       R18 R19 K22 ["getDynamicInputPinNameFromInputPinIds"]
      136 MOVE                             R19 R15
      137 GETTABLEKS                       R20 R7 K23 ["Name"]
      139 CALL                             R18 2 1
      140 MOVE                             R14 R18
      141 JUMP                             ; [+1]
      142 MOVE                             R14 R3
      143 JUMPIFEQ                         R14 R3 ; [+9]
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R15 R16 K13 ["_findNodeInputBinding"]
      148 MOVE                             R16 R1
      149 MOVE                             R17 R2
      150 MOVE                             R18 R14
      151 CALL                             R15 3 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R15
      154 JUMPIFNOT                        R15 ; [+6]
      155 GETTABLEKS                       R18 R15 K12 ["wireId"]
      157 NAMECALL                         R16 R0 K0 ["idToInstance"]
      159 CALL                             R16 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R16
      162 JUMPIFEQKNIL                     R13 ; [+13]
      164 MOVE                             R20 R8
      165 NAMECALL                         R18 R13 K24 ["IsDescendantOf"]
      167 CALL                             R18 2 1
      168 JUMPIFNOT                        R18 ; [+7]
      169 LOADK                            R20 K25 ["ObjectValue"]
      170 NAMECALL                         R18 R13 K2 ["IsA"]
      172 CALL                             R18 2 1
      173 JUMPIFNOT                        R18 ; [+2]
      174 MOVE                             R17 R13
      175 JUMP                             ; [+32]
      176 JUMPIFEQKNIL                     R16 ; [+13]
      178 MOVE                             R20 R8
      179 NAMECALL                         R18 R16 K24 ["IsDescendantOf"]
      181 CALL                             R18 2 1
      182 JUMPIFNOT                        R18 ; [+7]
      183 LOADK                            R20 K25 ["ObjectValue"]
      184 NAMECALL                         R18 R16 K2 ["IsA"]
      186 CALL                             R18 2 1
      187 JUMPIFNOT                        R18 ; [+2]
      188 MOVE                             R17 R16
      189 JUMP                             ; [+18]
      190 JUMPIFEQKNIL                     R11 ; [+13]
      192 MOVE                             R20 R8
      193 NAMECALL                         R18 R11 K24 ["IsDescendantOf"]
      195 CALL                             R18 2 1
      196 JUMPIFNOT                        R18 ; [+7]
      197 LOADK                            R20 K25 ["ObjectValue"]
      198 NAMECALL                         R18 R11 K2 ["IsA"]
      200 CALL                             R18 2 1
      201 JUMPIFNOT                        R18 ; [+2]
      202 MOVE                             R17 R11
      203 JUMP                             ; [+4]
      204 GETIMPORT                        R17 K28 [Instance.new]
      206 LOADK                            R18 K25 ["ObjectValue"]
      207 CALL                             R17 1 1
      208 JUMPIFNOT                        R16 ; [+5]
      209 JUMPIFEQ                         R16 R17 ; [+4]
      211 LOADNIL                          R18
      212 SETTABLEKS                       R18 R16 K29 ["Parent"]
      214 JUMPIFNOT                        R11 ; [+5]
      215 JUMPIFEQ                         R11 R17 ; [+4]
      217 LOADNIL                          R18
      218 SETTABLEKS                       R18 R11 K29 ["Parent"]
      220 JUMPIFNOT                        R13 ; [+5]
      221 JUMPIFEQ                         R13 R17 ; [+4]
      223 LOADNIL                          R18
      224 SETTABLEKS                       R18 R13 K29 ["Parent"]
      226 NAMECALL                         R18 R6 K30 ["GetChildren"]
      228 CALL                             R18 1 3
      229 FORGPREP                         R18
      230 LOADK                            R25 K25 ["ObjectValue"]
      231 NAMECALL                         R23 R22 K2 ["IsA"]
      233 CALL                             R23 2 1
      234 JUMPIFNOT                        R23 ; [+9]
      235 GETTABLEKS                       R23 R22 K23 ["Name"]
      237 JUMPIFNOTEQ                      R23 R14 ; [+6]
      239 JUMPIFEQ                         R22 R17 ; [+4]
      241 LOADNIL                          R23
      242 SETTABLEKS                       R23 R22 K29 ["Parent"]
      244 FORGLOOP                         R18 2 ; [-15]
      246 NAMECALL                         R18 R6 K15 ["GetOrderedInputPinNames"]
      248 CALL                             R18 1 1
      249 JUMPIFEQ                         R14 R3 ; [+19]
      251 GETIMPORT                        R19 K18 [table.find]
      253 MOVE                             R20 R18
      254 MOVE                             R21 R3
      255 CALL                             R19 2 1
      256 GETIMPORT                        R20 K18 [table.find]
      258 MOVE                             R21 R18
      259 MOVE                             R22 R14
      260 CALL                             R20 2 1
      261 JUMPIFNOT                        R19 ; [+1]
      262 SETTABLE                         R14 R18 R19
      263 JUMPIFNOT                        R20 ; [+5]
      264 GETIMPORT                        R21 K21 [table.remove]
      266 MOVE                             R22 R18
      267 MOVE                             R23 R20
      268 CALL                             R21 2 0
      269 GETIMPORT                        R19 K18 [table.find]
      271 MOVE                             R20 R18
      272 MOVE                             R21 R14
      273 CALL                             R19 2 1
      274 JUMPIF                           R19 ; [+7]
      275 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      277 MOVE                             R20 R18
      278 MOVE                             R21 R14
      279 GETIMPORT                        R19 K32 [table.insert]
      281 CALL                             R19 2 0
      282 MOVE                             R21 R18
      283 NAMECALL                         R19 R6 K33 ["SetOrderedInputPinNames"]
      285 CALL                             R19 2 0
      286 SETTABLEKS                       R14 R17 K23 ["Name"]
      288 SETTABLEKS                       R7 R17 K34 ["Value"]
      290 SETTABLEKS                       R6 R17 K29 ["Parent"]
      292 RETURN                           R0 0

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
      106 GETTABLEKS                       R14 R15 K27 ["getDeduplicatedName"]
      108 CALL                             R13 1 1
      109 NEWTABLE                         R14 64 0
      111 DUPCLOSURE                       R15 K28 [PROTO_0]
      112 SETTABLEKS                       R15 R14 K29 ["_getOrCreateConfigInstance"]
      114 DUPCLOSURE                       R15 K30 [PROTO_2]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 SETTABLEKS                       R15 R14 K31 ["_observeOrCreateConfigInstance"]
      119 DUPCLOSURE                       R15 K32 [PROTO_3]
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R15 R14 K33 ["getOrCreateParameterInstance"]
      124 DUPCLOSURE                       R15 K34 [PROTO_4]
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R15 R14 K35 ["getParameterType"]
      128 DUPCLOSURE                       R15 K36 [PROTO_5]
      129 SETTABLEKS                       R15 R14 K37 ["setParameterBindingName"]
      131 DUPCLOSURE                       R15 K38 [PROTO_6]
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R15 R14 K39 ["setNodePosition"]
      136 DUPCLOSURE                       R15 K40 [PROTO_7]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R15 R14 K41 ["setNodeSize"]
      141 DUPCLOSURE                       R15 K42 [PROTO_8]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R15 R14 K43 ["setNodeIsCollapsed"]
      146 DUPCLOSURE                       R15 K44 [PROTO_9]
      147 SETTABLEKS                       R15 R14 K45 ["getNodeParameterConfigurationName"]
      149 DUPCLOSURE                       R15 K46 [PROTO_10]
      150 SETTABLEKS                       R15 R14 K47 ["getParameterBindingNameFromParameterName"]
      152 DUPCLOSURE                       R15 K48 [PROTO_12]
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R15 R14 K49 ["observeWireInfo"]
      158 DUPCLOSURE                       R15 K50 [PROTO_17]
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R9
      162 SETTABLEKS                       R15 R14 K51 ["observeNodeConnectionMap"]
      164 DUPCLOSURE                       R15 K52 [PROTO_18]
      165 SETTABLEKS                       R15 R14 K53 ["matchParameterBinding"]
      167 DUPCLOSURE                       R15 K54 [PROTO_20]
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R14
      171 SETTABLEKS                       R15 R14 K55 ["observeConnectedParameters"]
      173 DUPCLOSURE                       R15 K56 [PROTO_23]
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R9
      178 SETTABLEKS                       R15 R14 K57 ["observeParameterNodeInfo"]
      180 DUPCLOSURE                       R15 K58 [PROTO_27]
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R14
      186 SETTABLEKS                       R15 R14 K59 ["observeNodeInfo"]
      188 DUPCLOSURE                       R15 K60 [PROTO_29]
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R14
      191 SETTABLEKS                       R15 R14 K61 ["observeNodeInfoLookupList"]
      193 DUPCLOSURE                       R15 K62 [PROTO_31]
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R14
      198 SETTABLEKS                       R15 R14 K63 ["observeParameterNodeInfoLookupList"]
      200 DUPCLOSURE                       R15 K64 [PROTO_34]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R9
      204 SETTABLEKS                       R15 R14 K65 ["observeRenderInfoMap"]
      206 DUPCLOSURE                       R15 K66 [PROTO_39]
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R9
      212 SETTABLEKS                       R15 R14 K67 ["observeRenderInfo"]
      214 DUPCLOSURE                       R15 K68 [PROTO_54]
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R4
      220 SETTABLEKS                       R15 R14 K69 ["observeGraphState"]
      222 DUPCLOSURE                       R15 K70 [PROTO_55]
      223 SETTABLEKS                       R15 R14 K71 ["fitGraphRect"]
      225 DUPCLOSURE                       R15 K72 [PROTO_56]
      226 SETTABLEKS                       R15 R14 K73 ["getPinAnchorKey"]
      228 DUPCLOSURE                       R15 K74 [PROTO_57]
      229 SETTABLEKS                       R15 R14 K75 ["_findNodeInputBinding"]
      231 DUPCLOSURE                       R15 K76 [PROTO_58]
      232 SETTABLEKS                       R15 R14 K77 ["_findNodeOutputBinding"]
      234 DUPCLOSURE                       R15 K78 [PROTO_59]
      235 CAPTURE                          VAL R14
      236 SETTABLEKS                       R15 R14 K79 ["removeNodeInputConnection"]
      238 DUPCLOSURE                       R15 K80 [PROTO_60]
      239 DUPCLOSURE                       R16 K81 [PROTO_61]
      240 CAPTURE                          VAL R14
      241 SETTABLEKS                       R16 R14 K82 ["removeNodeOutputConnection"]
      243 DUPCLOSURE                       R16 K83 [PROTO_62]
      244 CAPTURE                          VAL R14
      245 CAPTURE                          VAL R4
      246 SETTABLEKS                       R16 R14 K84 ["setNodeConnection"]
      248 DUPCLOSURE                       R16 K85 [PROTO_63]
      249 CAPTURE                          VAL R14
      250 SETTABLEKS                       R16 R14 K86 ["hasDynamicInputPins"]
      252 DUPCLOSURE                       R16 K87 [PROTO_64]
      253 CAPTURE                          VAL R2
      254 SETTABLEKS                       R16 R14 K88 ["nodeTypeHasDynamicInputPins"]
      256 DUPCLOSURE                       R16 K89 [PROTO_65]
      257 SETTABLEKS                       R16 R14 K90 ["reorderPins"]
      259 DUPCLOSURE                       R16 K91 [PROTO_66]
      260 CAPTURE                          VAL R14
      261 SETTABLEKS                       R16 R14 K92 ["renameDynamicInputPin"]
      263 DUPCLOSURE                       R16 K93 [PROTO_67]
      264 CAPTURE                          VAL R14
      265 SETTABLEKS                       R16 R14 K94 ["getDynamicInputPinName"]
      267 DUPCLOSURE                       R16 K95 [PROTO_68]
      268 CAPTURE                          VAL R14
      269 SETTABLEKS                       R16 R14 K96 ["getDynamicInputPinNameFromInputNode"]
      271 DUPCLOSURE                       R16 K97 [PROTO_69]
      272 SETTABLEKS                       R16 R14 K98 ["getDynamicInputPinNameFromInputPinIds"]
      274 DUPCLOSURE                       R16 K99 [PROTO_70]
      275 CAPTURE                          VAL R3
      276 CAPTURE                          VAL R13
      277 CAPTURE                          VAL R7
      278 CAPTURE                          VAL R14
      279 SETTABLEKS                       R16 R14 K100 ["createNewAnimationGraph"]
      281 DUPCLOSURE                       R16 K101 [PROTO_71]
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R0
      284 CAPTURE                          VAL R14
      285 SETTABLEKS                       R16 R14 K102 ["createNodeOfType"]
      287 RETURN                           R14 1
