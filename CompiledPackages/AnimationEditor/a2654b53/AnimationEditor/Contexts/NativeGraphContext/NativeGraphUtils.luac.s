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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["of"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 LOADK                            R4 K0 ["Configuration"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 JUMP                             ; [+15]
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       20 CALL                             R2 2 1
       21 JUMPIFEQKNIL                     R2 ; [+2]
       23 JUMP                             ; [+8]
       24 GETIMPORT                        R2 K6 [Instance.new]
       26 LOADK                            R3 K0 ["Configuration"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R1 R2 K7 ["Name"]
       30 SETTABLEKS                       R0 R2 K8 ["Parent"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K9 ["observeFirstNamedChild"]
       35 MOVE                             R3 R0
       36 DUPCLOSURE                       R4 K10 [PROTO_1]
       37 MOVE                             R5 R1
       38 CALL                             R2 3 1
       39 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R2 K0 ["parameterName"]
        2 JUMPIF                           R4 ; [+6]
        3 LOADK                            R4 K1 ["%*Parameter"]
        4 GETTABLEKS                       R6 R2 K2 ["parameterType"]
        6 NAMECALL                         R4 R4 K3 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R5 R4
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["getParameterInstanceName"]
       13 MOVE                             R7 R5
       14 CALL                             R6 1 1
       15 JUMPIF                           R3 ; [+21]
       16 LOADN                            R7 0
       17 MOVE                             R10 R6
       18 NAMECALL                         R8 R1 K5 ["FindFirstChild"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+15]
       22 ADDK                             R7 R7 K6 [1]
       23 GETIMPORT                        R8 K8 [string.format]
       25 LOADK                            R9 K9 ["%s%d"]
       26 MOVE                             R10 R4
       27 MOVE                             R11 R7
       28 CALL                             R8 3 1
       29 MOVE                             R5 R8
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["getParameterInstanceName"]
       33 MOVE                             R9 R5
       34 CALL                             R8 1 1
       35 MOVE                             R6 R8
       36 JUMPBACK                         ; [-20]
       37 GETUPVAL                         R7 1
       38 CALL                             R7 0 1
       39 JUMPIFNOT                        R7 ; [+15]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K10 ["getOrCreateParameterDefinition"]
       43 MOVE                             R8 R1
       44 MOVE                             R9 R5
       45 GETTABLEKS                       R10 R2 K2 ["parameterType"]
       47 CALL                             R7 3 1
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K11 ["createParameterNode"]
       51 MOVE                             R9 R0
       52 MOVE                             R10 R7
       53 CALL                             R8 2 -1
       54 RETURN                           R8 -1
       55 GETIMPORT                        R7 K14 [Instance.new]
       57 LOADK                            R8 K15 ["Folder"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R6 R7 K16 ["Name"]
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K17 ["NODE_ATTRIBUTES"]
       64 GETTABLEKS                       R10 R10 K18 ["ParameterType"]
       66 NAMECALL                         R8 R7 K19 ["GetAttribute"]
       68 CALL                             R8 2 1
       69 JUMPIF                           R8 ; [+19]
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K17 ["NODE_ATTRIBUTES"]
       73 GETTABLEKS                       R10 R10 K18 ["ParameterType"]
       75 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       77 NAMECALL                         R8 R7 K20 ["SetAttribute"]
       79 CALL                             R8 3 0
       80 GETUPVAL                         R10 2
       81 GETTABLEKS                       R10 R10 K17 ["NODE_ATTRIBUTES"]
       83 GETTABLEKS                       R10 R10 K21 ["BindingName"]
       85 MOVE                             R11 R5
       86 NAMECALL                         R8 R7 K20 ["SetAttribute"]
       88 CALL                             R8 3 0
       89 SETTABLEKS                       R1 R7 K22 ["Parent"]
       91 MOVE                             R10 R7
       92 NAMECALL                         R8 R0 K23 ["instanceToId"]
       94 CALL                             R8 2 0
       95 RETURN                           R7 1

PROTO_4:
        0 LOADK                            R3 K0 ["AnimationValueNodeDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R1 1
        6 LOADN                            R2 1
        7 LOADK                            R5 K1 ["%*%*"]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 ADDK                             R2 R2 K3 [1]
       18 JUMPBACK                         ; [-12]
       19 LOADK                            R3 K1 ["%*%*"]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R2
       22 NAMECALL                         R3 R3 K2 ["format"]
       24 CALL                             R3 3 1
       25 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R3 K0 ["AnimationValueOutputDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["AnimationValueNodeDefinition"]
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K7 [Enum.AnimationValueNodeType.Expression]
        6 SETTABLEKS                       R4 R3 K8 ["NodeType"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K9 ["getUniqueValueNodeName"]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R6 K7 [Enum.AnimationValueNodeType.Expression]
       14 GETTABLEKS                       R6 R6 K10 ["Name"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K10 ["Name"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K11 ["NODE_ATTRIBUTES"]
       22 GETTABLEKS                       R6 R6 K6 ["Expression"]
       24 LOADK                            R7 K12 [""]
       25 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       27 CALL                             R4 3 0
       28 SETTABLEKS                       R1 R3 K14 ["Parent"]
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R0 K15 ["instanceToId"]
       33 CALL                             R4 2 0
       34 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R2 K0 ["parameterType"]
        2 GETTABLEKS                       R4 R2 K1 ["parameterName"]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+16]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["getParameterDefinitionInstance"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIF                           R5 ; [+2]
       14 LOADNIL                          R6
       15 RETURN                           R6 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K3 ["createParameterNode"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R5
       21 CALL                             R6 2 -1
       22 RETURN                           R6 -1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K4 ["getParameterInstanceName"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R1 K5 ["FindFirstChild"]
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+2]
       33 LOADNIL                          R7
       34 RETURN                           R7 1
       35 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       37 MOVE                             R8 R3
       38 LOADK                            R9 K6 ["Parameter type must be provided for createExistingParameterInstance"]
       39 GETIMPORT                        R7 K8 [assert]
       41 CALL                             R7 2 0
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K9 ["getOrCreateParameterInstance"]
       45 MOVE                             R8 R0
       46 MOVE                             R9 R1
       47 DUPTABLE                         R10 K10 [{"parameterType", "parameterName"}]
       48 SETTABLEKS                       R3 R10 K0 ["parameterType"]
       50 SETTABLEKS                       R4 R10 K1 ["parameterName"]
       52 LOADB                            R11 1
       53 CALL                             R7 4 1
       54 MOVE                             R10 R7
       55 NAMECALL                         R8 R0 K11 ["instanceToId"]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K12 ["NODE_ATTRIBUTES"]
       61 GETTABLEKS                       R10 R10 K13 ["ParameterType"]
       63 MOVE                             R11 R3
       64 NAMECALL                         R8 R7 K14 ["SetAttribute"]
       66 CALL                             R8 3 0
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K12 ["NODE_ATTRIBUTES"]
       70 GETTABLEKS                       R10 R10 K15 ["BindingName"]
       72 MOVE                             R11 R4
       73 NAMECALL                         R8 R7 K14 ["SetAttribute"]
       75 CALL                             R8 3 0
       76 RETURN                           R7 1

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R1 R0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["Name"]
        8 GETUPVAL                         R7 0
        9 JUMPIFNOTEQ                      R6 R7 ; [+14]
       11 GETTABLEKS                       R7 R5 K1 ["Type"]
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETTABLEKS                       R6 R5 K1 ["Type"]
       16 JUMPIF                           R6 ; [+6]
       17 GETTABLEKS                       R7 R5 K2 ["Value"]
       19 FASTCALL1                        TYPE R7 ; [+2]
       20 GETIMPORT                        R6 K4 [type]
       22 CALL                             R6 1 1
       23 RETURN                           R6 1
       24 FORGLOOP                         R1 2 ; [-19]
       26 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 MOVE                             R5 R4
        9 GETTABLEKS                       R6 R3 K1 ["Properties"]
       11 CALL                             R5 1 1
       12 MOVE                             R2 R5
       13 JUMPIF                           R2 ; [+13]
       14 GETTABLEKS                       R5 R3 K2 ["Inputs"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R10 R4
       20 GETTABLEKS                       R11 R9 K1 ["Properties"]
       22 CALL                             R10 1 1
       23 MOVE                             R2 R10
       24 JUMPIF                           R2 ; [+2]
       25 FORGLOOP                         R5 2 ; [-7]
       27 JUMPIF                           R2 ; [+2]
       28 LOADNIL                          R5
       29 RETURN                           R5 1
       30 GETIMPORT                        R5 K5 [string.find]
       32 MOVE                             R6 R2
       33 LOADK                            R7 K6 ["Enum"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R5 ; [+1]
       36 MOVE                             R2 R1
       37 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+2]
       39 LOADK                            R2 K8 ["Number"]
       40 RETURN                           R2 1

PROTO_11:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["param::%*"]
        2 MOVE                             R8 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 2 1
        6 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R5 K1 ["Configuration"]
        4 NAMECALL                         R3 R0 K2 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIFEQKNIL                     R3 ; [+3]
       16 MOVE                             R1 R3
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R3 K6 [Instance.new]
       20 LOADK                            R4 K1 ["Configuration"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R2 R3 K7 ["Name"]
       24 SETTABLEKS                       R0 R3 K8 ["Parent"]
       26 MOVE                             R1 R3
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R4 R4 K10 ["Position"]
       32 NAMECALL                         R2 R1 K11 ["GetAttribute"]
       34 CALL                             R2 2 1
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R5 R2
       37 GETIMPORT                        R4 K13 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K14 ["Vector2"] ; [+3]
       42 MOVE                             R3 R2
       43 RETURN                           R3 1
       44 LOADNIL                          R3
       45 RETURN                           R3 1

PROTO_13:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["CHILD_WIDTH"]
        5 MINUS                            R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K5 ["WELL_KNOWN_HEADER_HEIGHT"]
        9 DIVK                             R4 R5 K4 [2]
       10 CALL                             R2 2 1
       11 ADD                              R1 R0 R2
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Position"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Size"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["Collapsed"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["DisplayName"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 LOADK                            R6 K1 ["Configuration"]
        4 NAMECALL                         R4 R0 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 MOVE                             R2 R0
        9 JUMP                             ; [+17]
       10 MOVE                             R6 R3
       11 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 MOVE                             R2 R4
       17 JUMP                             ; [+9]
       18 GETIMPORT                        R4 K6 [Instance.new]
       20 LOADK                            R5 K1 ["Configuration"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R0 R4 K8 ["Parent"]
       26 MOVE                             R2 R4
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["NODE_ATTRIBUTES"]
       30 GETTABLEKS                       R5 R5 K10 ["ZIndex"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_19:
        0 LOADK                            R1 K0 ["Parameter_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_20:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
        8 GETTABLEKS                       R4 R4 K3 ["IsParameterDefinition"]
       10 NAMECALL                         R2 R0 K4 ["GetAttribute"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["Folder"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R1 R4 K4 ["Name"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K5 ["NODE_ATTRIBUTES"]
        9 GETTABLEKS                       R7 R7 K6 ["IsParameterDefinition"]
       11 LOADB                            R8 1
       12 NAMECALL                         R5 R4 K7 ["SetAttribute"]
       14 CALL                             R5 3 0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K5 ["NODE_ATTRIBUTES"]
       18 GETTABLEKS                       R7 R7 K8 ["ParameterType"]
       20 MOVE                             R8 R3
       21 NAMECALL                         R5 R4 K7 ["SetAttribute"]
       23 CALL                             R5 3 0
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K5 ["NODE_ATTRIBUTES"]
       27 GETTABLEKS                       R7 R7 K9 ["BindingName"]
       29 MOVE                             R8 R2
       30 NAMECALL                         R5 R4 K7 ["SetAttribute"]
       32 CALL                             R5 3 0
       33 SETTABLEKS                       R0 R4 K10 ["Parent"]
       35 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["getParameterInstanceName"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+19]
       15 LOADK                            R6 K2 ["Folder"]
       16 NAMECALL                         R4 R3 K3 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+12]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K4 ["NODE_ATTRIBUTES"]
       23 GETTABLEKS                       R7 R7 K5 ["IsParameterDefinition"]
       25 NAMECALL                         R5 R3 K6 ["GetAttribute"]
       27 CALL                             R5 2 1
       28 JUMPIFEQKB                       R5 TRUE ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIFNOT                        R4 ; [+1]
       33 RETURN                           R3 1
       34 JUMPIFNOTEQKNIL                  R3 ; [+3]
       36 LOADNIL                          R4
       37 RETURN                           R4 1
       38 NAMECALL                         R4 R0 K7 ["GetChildren"]
       40 CALL                             R4 1 3
       41 FORGPREP                         R4
       42 GETTABLEKS                       R9 R8 K8 ["Name"]
       44 JUMPIFNOTEQ                      R9 R2 ; [+20]
       46 LOADK                            R11 K2 ["Folder"]
       47 NAMECALL                         R9 R8 K3 ["IsA"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+12]
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K4 ["NODE_ATTRIBUTES"]
       54 GETTABLEKS                       R12 R12 K5 ["IsParameterDefinition"]
       56 NAMECALL                         R10 R8 K6 ["GetAttribute"]
       58 CALL                             R10 2 1
       59 JUMPIFEQKB                       R10 TRUE ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 JUMPIFNOT                        R9 ; [+1]
       64 RETURN                           R8 1
       65 FORGLOOP                         R4 2 ; [-24]
       67 LOADNIL                          R4
       68 RETURN                           R4 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["Parameter definitions are only created with flags on"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["getParameterDefinitionInstance"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+1]
       15 RETURN                           R3 1
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["getParameterInstanceName"]
       21 MOVE                             R7 R1
       22 CALL                             R6 1 1
       23 MOVE                             R7 R1
       24 MOVE                             R8 R2
       25 CALL                             R4 4 1
       26 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETTABLEKS                       R1 R0 K0 ["Parent"]
        6 JUMPIFNOT                        R1 ; [+20]
        7 LOADK                            R5 K1 ["Folder"]
        8 NAMECALL                         R3 R1 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["NODE_ATTRIBUTES"]
       15 GETTABLEKS                       R6 R6 K4 ["IsParameterDefinition"]
       17 NAMECALL                         R4 R1 K5 ["GetAttribute"]
       19 CALL                             R4 2 1
       20 JUMPIFEQKB                       R4 TRUE ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R3 ; [+2]
       25 MOVE                             R2 R1
       26 RETURN                           R2 1
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getParameterDefinitionFromNode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["NODE_ATTRIBUTES"]
        9 GETTABLEKS                       R4 R4 K2 ["BindingName"]
       11 NAMECALL                         R2 R1 K3 ["GetAttribute"]
       13 CALL                             R2 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 FASTCALL1                        TYPE R2 ; [+3]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R4 K5 [type]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+3]
       23 MOVE                             R3 R2
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Parameter definition nodes are only created with flags on"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [Instance.new]
       10 LOADK                            R3 K6 ["Folder"]
       11 CALL                             R2 1 1
       12 LOADK                            R3 K7 ["node"]
       13 SETTABLEKS                       R3 R2 K8 ["Name"]
       15 SETTABLEKS                       R1 R2 K9 ["Parent"]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R0 K10 ["instanceToId"]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+28]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getParameterDefinitionInstance"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 NEWTABLE                         R3 0 0
       11 JUMPIFNOT                        R2 ; [+18]
       12 NAMECALL                         R4 R2 K1 ["GetChildren"]
       14 CALL                             R4 1 3
       15 FORGPREP                         R4
       16 LOADK                            R11 K2 ["Folder"]
       17 NAMECALL                         R9 R8 K3 ["IsA"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       23 MOVE                             R10 R3
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K6 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-13]
       30 RETURN                           R3 1
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K7 ["getParameterInstanceName"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 1
       36 NEWTABLE                         R3 0 0
       38 NAMECALL                         R4 R0 K1 ["GetChildren"]
       40 CALL                             R4 1 3
       41 FORGPREP                         R4
       42 LOADK                            R11 K2 ["Folder"]
       43 NAMECALL                         R9 R8 K3 ["IsA"]
       45 CALL                             R9 2 1
       46 JUMPIFNOT                        R9 ; [+11]
       47 GETTABLEKS                       R9 R8 K8 ["Name"]
       49 JUMPIFNOTEQ                      R9 R2 ; [+8]
       51 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       53 MOVE                             R10 R3
       54 MOVE                             R11 R8
       55 GETIMPORT                        R9 K6 [table.insert]
       57 CALL                             R9 2 0
       58 FORGLOOP                         R4 2 ; [-17]
       60 RETURN                           R3 1

PROTO_28:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 LOADB                            R1 0
        6 GETIMPORT                        R2 K4 [string.match]
        8 GETTABLEKS                       R3 R0 K5 ["Name"]
       10 LOADK                            R4 K6 ["^Parameter_.+$"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+17]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R5 R5 K8 ["ParameterType"]
       19 NAMECALL                         R3 R0 K9 ["GetAttribute"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TYPE ; [+2]
       23 GETIMPORT                        R2 K11 [type]
       25 CALL                             R2 -1 1
       26 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_29:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 LOADB                            R1 0
        6 GETIMPORT                        R2 K4 [string.match]
        8 GETTABLEKS                       R3 R0 K5 ["Name"]
       10 LOADK                            R4 K6 ["^Parameter_.+$"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+17]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R5 R5 K8 ["ParameterType"]
       19 NAMECALL                         R3 R0 K9 ["GetAttribute"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TYPE ; [+2]
       23 GETIMPORT                        R2 K11 [type]
       25 CALL                             R2 -1 1
       26 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 JUMPIFNOT                        R1 ; [+27]
       31 LOADK                            R4 K0 ["Folder"]
       32 NAMECALL                         R2 R0 K1 ["IsA"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R5 R5 K12 ["IsParameterDefinition"]
       41 NAMECALL                         R3 R0 K9 ["GetAttribute"]
       43 CALL                             R3 2 1
       44 JUMPIFEQKB                       R3 TRUE ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 NOT                              R1 R2
       49 JUMPIFNOT                        R1 ; [+8]
       50 LOADK                            R4 K0 ["Folder"]
       51 NAMECALL                         R2 R0 K13 ["FindFirstChildWhichIsA"]
       53 CALL                             R2 2 1
       54 JUMPIFNOTEQKNIL                  R2 ; [+2]
       56 LOADB                            R1 0 +1
       57 LOADB                            R1 1
       58 RETURN                           R1 1

PROTO_30:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 LOADB                            R1 0
        6 GETIMPORT                        R2 K4 [string.match]
        8 GETTABLEKS                       R3 R0 K5 ["Name"]
       10 LOADK                            R4 K6 ["^Parameter_.+$"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+17]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R5 R5 K8 ["ParameterType"]
       19 NAMECALL                         R3 R0 K9 ["GetAttribute"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TYPE ; [+2]
       23 GETIMPORT                        R2 K11 [type]
       25 CALL                             R2 -1 1
       26 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 JUMPIFNOT                        R1 ; [+27]
       31 LOADK                            R4 K0 ["Folder"]
       32 NAMECALL                         R2 R0 K1 ["IsA"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R5 R5 K12 ["IsParameterDefinition"]
       41 NAMECALL                         R3 R0 K9 ["GetAttribute"]
       43 CALL                             R3 2 1
       44 JUMPIFEQKB                       R3 TRUE ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 NOT                              R1 R2
       49 JUMPIFNOT                        R1 ; [+8]
       50 LOADK                            R4 K0 ["Folder"]
       51 NAMECALL                         R2 R0 K13 ["FindFirstChildWhichIsA"]
       53 CALL                             R2 2 1
       54 JUMPIFEQKNIL                     R2 ; [+2]
       56 LOADB                            R1 0 +1
       57 LOADB                            R1 1
       58 RETURN                           R1 1

PROTO_31:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
        8 GETTABLEKS                       R4 R4 K3 ["IsParameterDefinition"]
       10 NAMECALL                         R2 R0 K4 ["GetAttribute"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 LOADK                            R4 K5 ["ObjectValue"]
       19 NAMECALL                         R2 R0 K6 ["FindFirstChildWhichIsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_32:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
        8 GETTABLEKS                       R4 R4 K3 ["IsParameterDefinition"]
       10 NAMECALL                         R2 R0 K4 ["GetAttribute"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 LOADK                            R4 K5 ["ObjectValue"]
       19 NAMECALL                         R2 R0 K6 ["FindFirstChildWhichIsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMPIF                           R1 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R1 K9 [Instance.new]
       30 LOADK                            R2 K0 ["Folder"]
       31 CALL                             R1 1 1
       32 LOADK                            R2 K10 ["node"]
       33 SETTABLEKS                       R2 R1 K11 ["Name"]
       35 NAMECALL                         R2 R0 K12 ["GetChildren"]
       37 CALL                             R2 1 3
       38 FORGPREP                         R2
       39 LOADK                            R9 K13 ["Configuration"]
       40 NAMECALL                         R7 R6 K1 ["IsA"]
       42 CALL                             R7 2 1
       43 JUMPIF                           R7 ; [+4]
       44 LOADK                            R9 K5 ["ObjectValue"]
       45 NAMECALL                         R7 R6 K1 ["IsA"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+2]
       49 SETTABLEKS                       R1 R6 K14 ["Parent"]
       51 FORGLOOP                         R2 2 ; [-13]
       53 SETTABLEKS                       R0 R1 K14 ["Parent"]
       55 RETURN                           R0 0

PROTO_33:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NAMECALL                         R4 R0 K0 ["GetChildren"]
        8 CALL                             R4 1 3
        9 FORGPREP                         R4
       10 LOADK                            R11 K1 ["Folder"]
       11 NAMECALL                         R9 R8 K2 ["IsA"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+25]
       15 LOADB                            R9 0
       16 GETIMPORT                        R10 K5 [string.match]
       18 GETTABLEKS                       R11 R8 K6 ["Name"]
       20 LOADK                            R12 K7 ["^Parameter_.+$"]
       21 CALL                             R10 2 1
       22 JUMPIFEQKNIL                     R10 ; [+17]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K8 ["NODE_ATTRIBUTES"]
       27 GETTABLEKS                       R13 R13 K9 ["ParameterType"]
       29 NAMECALL                         R11 R8 K10 ["GetAttribute"]
       31 CALL                             R11 2 -1
       32 FASTCALL                         TYPE ; [+2]
       33 GETIMPORT                        R10 K12 [type]
       35 CALL                             R10 -1 1
       36 JUMPIFEQKS                       R10 K3 ["string"] ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 JUMPIFNOT                        R9 ; [+27]
       41 LOADK                            R12 K1 ["Folder"]
       42 NAMECALL                         R10 R8 K2 ["IsA"]
       44 CALL                             R10 2 1
       45 JUMPIFNOT                        R10 ; [+12]
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R13 R13 K8 ["NODE_ATTRIBUTES"]
       49 GETTABLEKS                       R13 R13 K13 ["IsParameterDefinition"]
       51 NAMECALL                         R11 R8 K10 ["GetAttribute"]
       53 CALL                             R11 2 1
       54 JUMPIFEQKB                       R11 TRUE ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 NOT                              R9 R10
       59 JUMPIFNOT                        R9 ; [+8]
       60 LOADK                            R12 K1 ["Folder"]
       61 NAMECALL                         R10 R8 K14 ["FindFirstChildWhichIsA"]
       63 CALL                             R10 2 1
       64 JUMPIFNOTEQKNIL                  R10 ; [+2]
       66 LOADB                            R9 0 +1
       67 LOADB                            R9 1
       68 JUMPIFNOT                        R9 ; [+9]
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K8 ["NODE_ATTRIBUTES"]
       72 GETTABLEKS                       R11 R11 K13 ["IsParameterDefinition"]
       74 LOADB                            R12 1
       75 NAMECALL                         R9 R8 K15 ["SetAttribute"]
       77 CALL                             R9 3 0
       78 LOADK                            R11 K1 ["Folder"]
       79 NAMECALL                         R9 R8 K2 ["IsA"]
       81 CALL                             R9 2 1
       82 JUMPIFNOT                        R9 ; [+12]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K8 ["NODE_ATTRIBUTES"]
       86 GETTABLEKS                       R12 R12 K13 ["IsParameterDefinition"]
       88 NAMECALL                         R10 R8 K10 ["GetAttribute"]
       90 CALL                             R10 2 1
       91 JUMPIFEQKB                       R10 TRUE ; [+2]
       93 LOADB                            R9 0 +1
       94 LOADB                            R9 1
       95 JUMPIFNOT                        R9 ; [+11]
       96 GETUPVAL                         R9 1
       97 MOVE                             R10 R8
       98 CALL                             R9 1 0
       99 GETTABLEKS                       R10 R8 K6 ["Name"]
      101 GETTABLE                         R9 R3 R10
      102 JUMPIF                           R9 ; [+87]
      103 GETTABLEKS                       R9 R8 K6 ["Name"]
      105 SETTABLE                         R8 R3 R9
      106 JUMP                             ; [+83]
      107 LOADK                            R11 K1 ["Folder"]
      108 NAMECALL                         R9 R8 K2 ["IsA"]
      110 CALL                             R9 2 1
      111 JUMPIFNOT                        R9 ; [+25]
      112 LOADB                            R9 0
      113 GETIMPORT                        R10 K5 [string.match]
      115 GETTABLEKS                       R11 R8 K6 ["Name"]
      117 LOADK                            R12 K7 ["^Parameter_.+$"]
      118 CALL                             R10 2 1
      119 JUMPIFEQKNIL                     R10 ; [+17]
      121 GETUPVAL                         R13 0
      122 GETTABLEKS                       R13 R13 K8 ["NODE_ATTRIBUTES"]
      124 GETTABLEKS                       R13 R13 K9 ["ParameterType"]
      126 NAMECALL                         R11 R8 K10 ["GetAttribute"]
      128 CALL                             R11 2 -1
      129 FASTCALL                         TYPE ; [+2]
      130 GETIMPORT                        R10 K12 [type]
      132 CALL                             R10 -1 1
      133 JUMPIFEQKS                       R10 K3 ["string"] ; [+2]
      135 LOADB                            R9 0 +1
      136 LOADB                            R9 1
      137 JUMPIFNOT                        R9 ; [+27]
      138 LOADK                            R12 K1 ["Folder"]
      139 NAMECALL                         R10 R8 K2 ["IsA"]
      141 CALL                             R10 2 1
      142 JUMPIFNOT                        R10 ; [+12]
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K8 ["NODE_ATTRIBUTES"]
      146 GETTABLEKS                       R13 R13 K13 ["IsParameterDefinition"]
      148 NAMECALL                         R11 R8 K10 ["GetAttribute"]
      150 CALL                             R11 2 1
      151 JUMPIFEQKB                       R11 TRUE ; [+2]
      153 LOADB                            R10 0 +1
      154 LOADB                            R10 1
      155 NOT                              R9 R10
      156 JUMPIFNOT                        R9 ; [+8]
      157 LOADK                            R12 K1 ["Folder"]
      158 NAMECALL                         R10 R8 K14 ["FindFirstChildWhichIsA"]
      160 CALL                             R10 2 1
      161 JUMPIFEQKNIL                     R10 ; [+2]
      163 LOADB                            R9 0 +1
      164 LOADB                            R9 1
      165 JUMPIFNOT                        R9 ; [+24]
      166 GETTABLEKS                       R10 R8 K6 ["Name"]
      168 GETTABLE                         R9 R1 R10
      169 JUMPIF                           R9 ; [+13]
      170 NEWTABLE                         R9 0 0
      172 GETTABLEKS                       R10 R8 K6 ["Name"]
      174 SETTABLE                         R9 R1 R10
      175 GETTABLEKS                       R12 R8 K6 ["Name"]
      177 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      179 MOVE                             R11 R2
      180 GETIMPORT                        R10 K18 [table.insert]
      182 CALL                             R10 2 0
      183 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      185 MOVE                             R11 R9
      186 MOVE                             R12 R8
      187 GETIMPORT                        R10 K18 [table.insert]
      189 CALL                             R10 2 0
      190 FORGLOOP                         R4 2 ; [-181]
      192 MOVE                             R4 R2
      193 LOADNIL                          R5
      194 LOADNIL                          R6
      195 FORGPREP                         R4
      196 GETTABLE                         R9 R1 R8
      197 GETTABLE                         R10 R3 R8
      198 JUMPIF                           R10 ; [+22]
      199 GETTABLEN                        R11 R9 1
      200 GETUPVAL                         R12 2
      201 MOVE                             R13 R0
      202 MOVE                             R14 R8
      203 GETUPVAL                         R17 0
      204 GETTABLEKS                       R17 R17 K8 ["NODE_ATTRIBUTES"]
      206 GETTABLEKS                       R17 R17 K19 ["BindingName"]
      208 NAMECALL                         R15 R11 K10 ["GetAttribute"]
      210 CALL                             R15 2 1
      211 GETUPVAL                         R18 0
      212 GETTABLEKS                       R18 R18 K8 ["NODE_ATTRIBUTES"]
      214 GETTABLEKS                       R18 R18 K9 ["ParameterType"]
      216 NAMECALL                         R16 R11 K10 ["GetAttribute"]
      218 CALL                             R16 2 -1
      219 CALL                             R12 -1 1
      220 MOVE                             R10 R12
      221 MOVE                             R11 R9
      222 LOADNIL                          R12
      223 LOADNIL                          R13
      224 FORGPREP                         R11
      225 LOADK                            R16 K20 ["node"]
      226 SETTABLEKS                       R16 R15 K6 ["Name"]
      228 GETUPVAL                         R18 0
      229 GETTABLEKS                       R18 R18 K8 ["NODE_ATTRIBUTES"]
      231 GETTABLEKS                       R18 R18 K9 ["ParameterType"]
      233 LOADNIL                          R19
      234 NAMECALL                         R16 R15 K15 ["SetAttribute"]
      236 CALL                             R16 3 0
      237 GETUPVAL                         R18 0
      238 GETTABLEKS                       R18 R18 K8 ["NODE_ATTRIBUTES"]
      240 GETTABLEKS                       R18 R18 K19 ["BindingName"]
      242 LOADNIL                          R19
      243 NAMECALL                         R16 R15 K15 ["SetAttribute"]
      245 CALL                             R16 3 0
      246 SETTABLEKS                       R10 R15 K21 ["Parent"]
      248 FORGLOOP                         R11 2 ; [-24]
      250 FORGLOOP                         R4 2 ; [-55]
      252 RETURN                           R0 0

PROTO_34:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+12]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["NODE_ATTRIBUTES"]
       12 GETTABLEKS                       R9 R9 K4 ["IsParameterDefinition"]
       14 NAMECALL                         R7 R5 K5 ["GetAttribute"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKB                       R7 TRUE ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 JUMPIF                           R6 ; [+59]
       22 LOADK                            R8 K1 ["Folder"]
       23 NAMECALL                         R6 R5 K2 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+25]
       27 LOADB                            R6 0
       28 GETIMPORT                        R7 K8 [string.match]
       30 GETTABLEKS                       R8 R5 K9 ["Name"]
       32 LOADK                            R9 K10 ["^Parameter_.+$"]
       33 CALL                             R7 2 1
       34 JUMPIFEQKNIL                     R7 ; [+17]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K3 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R10 R10 K11 ["ParameterType"]
       41 NAMECALL                         R8 R5 K5 ["GetAttribute"]
       43 CALL                             R8 2 -1
       44 FASTCALL                         TYPE ; [+2]
       45 GETIMPORT                        R7 K13 [type]
       47 CALL                             R7 -1 1
       48 JUMPIFEQKS                       R7 K6 ["string"] ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 JUMPIFNOT                        R6 ; [+27]
       53 LOADK                            R9 K1 ["Folder"]
       54 NAMECALL                         R7 R5 K2 ["IsA"]
       56 CALL                             R7 2 1
       57 JUMPIFNOT                        R7 ; [+12]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K3 ["NODE_ATTRIBUTES"]
       61 GETTABLEKS                       R10 R10 K4 ["IsParameterDefinition"]
       63 NAMECALL                         R8 R5 K5 ["GetAttribute"]
       65 CALL                             R8 2 1
       66 JUMPIFEQKB                       R8 TRUE ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 NOT                              R6 R7
       71 JUMPIFNOT                        R6 ; [+8]
       72 LOADK                            R9 K1 ["Folder"]
       73 NAMECALL                         R7 R5 K14 ["FindFirstChildWhichIsA"]
       75 CALL                             R7 2 1
       76 JUMPIFNOTEQKNIL                  R7 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 JUMPIFNOT                        R6 ; [+134]
       81 NEWTABLE                         R6 0 0
       83 NAMECALL                         R7 R5 K0 ["GetChildren"]
       85 CALL                             R7 1 3
       86 FORGPREP                         R7
       87 LOADK                            R14 K1 ["Folder"]
       88 NAMECALL                         R12 R11 K2 ["IsA"]
       90 CALL                             R12 2 1
       91 JUMPIFNOT                        R12 ; [+7]
       92 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       94 MOVE                             R13 R6
       95 MOVE                             R14 R11
       96 GETIMPORT                        R12 K17 [table.insert]
       98 CALL                             R12 2 0
       99 FORGLOOP                         R7 2 ; [-13]
      101 MOVE                             R7 R6
      102 LOADNIL                          R8
      103 LOADNIL                          R9
      104 FORGPREP                         R7
      105 GETTABLEKS                       R12 R5 K9 ["Name"]
      107 SETTABLEKS                       R12 R11 K9 ["Name"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K3 ["NODE_ATTRIBUTES"]
      112 GETTABLEKS                       R14 R14 K11 ["ParameterType"]
      114 GETUPVAL                         R17 0
      115 GETTABLEKS                       R17 R17 K3 ["NODE_ATTRIBUTES"]
      117 GETTABLEKS                       R17 R17 K11 ["ParameterType"]
      119 NAMECALL                         R15 R5 K5 ["GetAttribute"]
      121 CALL                             R15 2 -1
      122 NAMECALL                         R12 R11 K18 ["SetAttribute"]
      124 CALL                             R12 -1 0
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K3 ["NODE_ATTRIBUTES"]
      128 GETTABLEKS                       R14 R14 K19 ["BindingName"]
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R17 R17 K3 ["NODE_ATTRIBUTES"]
      133 GETTABLEKS                       R17 R17 K19 ["BindingName"]
      135 NAMECALL                         R15 R5 K5 ["GetAttribute"]
      137 CALL                             R15 2 -1
      138 NAMECALL                         R12 R11 K18 ["SetAttribute"]
      140 CALL                             R12 -1 0
      141 SETTABLEKS                       R0 R11 K20 ["Parent"]
      143 FORGLOOP                         R7 2 ; [-39]
      145 LENGTH                           R7 R6
      146 LOADN                            R8 0
      147 JUMPIFNOTLT                      R8 R7 ; [+11]
      149 LOADK                            R9 K21 ["ObjectValue"]
      150 NAMECALL                         R7 R5 K14 ["FindFirstChildWhichIsA"]
      152 CALL                             R7 2 1
      153 JUMPIFNOTEQKNIL                  R7 ; [+5]
      155 LOADNIL                          R7
      156 SETTABLEKS                       R7 R5 K20 ["Parent"]
      158 JUMP                             ; [+56]
      159 GETUPVAL                         R8 0
      160 GETTABLEKS                       R8 R8 K22 ["NODE_CONFIGURATION_NAME"]
      162 LOADK                            R11 K23 ["Configuration"]
      163 NAMECALL                         R9 R5 K2 ["IsA"]
      165 CALL                             R9 2 1
      166 JUMPIFNOT                        R9 ; [+2]
      167 MOVE                             R7 R5
      168 JUMP                             ; [+17]
      169 MOVE                             R11 R8
      170 NAMECALL                         R9 R5 K24 ["FindFirstChild"]
      172 CALL                             R9 2 1
      173 JUMPIFEQKNIL                     R9 ; [+3]
      175 MOVE                             R7 R9
      176 JUMP                             ; [+9]
      177 GETIMPORT                        R9 K27 [Instance.new]
      179 LOADK                            R10 K23 ["Configuration"]
      180 CALL                             R9 1 1
      181 SETTABLEKS                       R8 R9 K9 ["Name"]
      183 SETTABLEKS                       R5 R9 K20 ["Parent"]
      185 MOVE                             R7 R9
      186 GETUPVAL                         R10 0
      187 GETTABLEKS                       R10 R10 K3 ["NODE_ATTRIBUTES"]
      189 GETTABLEKS                       R10 R10 K28 ["Position"]
      191 NAMECALL                         R8 R7 K5 ["GetAttribute"]
      193 CALL                             R8 2 1
      194 JUMPIFNOTEQKNIL                  R8 ; [+11]
      196 GETUPVAL                         R10 0
      197 GETTABLEKS                       R10 R10 K3 ["NODE_ATTRIBUTES"]
      199 GETTABLEKS                       R10 R10 K28 ["Position"]
      201 GETIMPORT                        R11 K31 [Vector2.zero]
      203 NAMECALL                         R8 R7 K18 ["SetAttribute"]
      205 CALL                             R8 3 0
      206 GETUPVAL                         R10 0
      207 GETTABLEKS                       R10 R10 K3 ["NODE_ATTRIBUTES"]
      209 GETTABLEKS                       R10 R10 K4 ["IsParameterDefinition"]
      211 LOADNIL                          R11
      212 NAMECALL                         R8 R5 K18 ["SetAttribute"]
      214 CALL                             R8 3 0
      215 FORGLOOP                         R1 2 ; [-212]
      217 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Folder"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+25]
       11 LOADB                            R7 0
       12 GETIMPORT                        R8 K5 [string.match]
       14 GETTABLEKS                       R9 R6 K6 ["Name"]
       16 LOADK                            R10 K7 ["^Parameter_.+$"]
       17 CALL                             R8 2 1
       18 JUMPIFEQKNIL                     R8 ; [+17]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K8 ["NODE_ATTRIBUTES"]
       23 GETTABLEKS                       R11 R11 K9 ["ParameterType"]
       25 NAMECALL                         R9 R6 K10 ["GetAttribute"]
       27 CALL                             R9 2 -1
       28 FASTCALL                         TYPE ; [+2]
       29 GETIMPORT                        R8 K12 [type]
       31 CALL                             R8 -1 1
       32 JUMPIFEQKS                       R8 K3 ["string"] ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 JUMPIFNOT                        R7 ; [+27]
       37 LOADK                            R10 K1 ["Folder"]
       38 NAMECALL                         R8 R6 K2 ["IsA"]
       40 CALL                             R8 2 1
       41 JUMPIFNOT                        R8 ; [+12]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K8 ["NODE_ATTRIBUTES"]
       45 GETTABLEKS                       R11 R11 K13 ["IsParameterDefinition"]
       47 NAMECALL                         R9 R6 K10 ["GetAttribute"]
       49 CALL                             R9 2 1
       50 JUMPIFEQKB                       R9 TRUE ; [+2]
       52 LOADB                            R8 0 +1
       53 LOADB                            R8 1
       54 NOT                              R7 R8
       55 JUMPIFNOT                        R7 ; [+8]
       56 LOADK                            R10 K1 ["Folder"]
       57 NAMECALL                         R8 R6 K14 ["FindFirstChildWhichIsA"]
       59 CALL                             R8 2 1
       60 JUMPIFNOTEQKNIL                  R8 ; [+2]
       62 LOADB                            R7 0 +1
       63 LOADB                            R7 1
       64 JUMPIFNOT                        R7 ; [+2]
       65 LOADB                            R7 1
       66 RETURN                           R7 1
       67 JUMPIFNOT                        R1 ; [+89]
       68 LOADK                            R9 K1 ["Folder"]
       69 NAMECALL                         R7 R6 K2 ["IsA"]
       71 CALL                             R7 2 1
       72 JUMPIFNOT                        R7 ; [+25]
       73 LOADB                            R7 0
       74 GETIMPORT                        R8 K5 [string.match]
       76 GETTABLEKS                       R9 R6 K6 ["Name"]
       78 LOADK                            R10 K7 ["^Parameter_.+$"]
       79 CALL                             R8 2 1
       80 JUMPIFEQKNIL                     R8 ; [+17]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K8 ["NODE_ATTRIBUTES"]
       85 GETTABLEKS                       R11 R11 K9 ["ParameterType"]
       87 NAMECALL                         R9 R6 K10 ["GetAttribute"]
       89 CALL                             R9 2 -1
       90 FASTCALL                         TYPE ; [+2]
       91 GETIMPORT                        R8 K12 [type]
       93 CALL                             R8 -1 1
       94 JUMPIFEQKS                       R8 K3 ["string"] ; [+2]
       96 LOADB                            R7 0 +1
       97 LOADB                            R7 1
       98 JUMPIFNOT                        R7 ; [+27]
       99 LOADK                            R10 K1 ["Folder"]
      100 NAMECALL                         R8 R6 K2 ["IsA"]
      102 CALL                             R8 2 1
      103 JUMPIFNOT                        R8 ; [+12]
      104 GETUPVAL                         R11 1
      105 GETTABLEKS                       R11 R11 K8 ["NODE_ATTRIBUTES"]
      107 GETTABLEKS                       R11 R11 K13 ["IsParameterDefinition"]
      109 NAMECALL                         R9 R6 K10 ["GetAttribute"]
      111 CALL                             R9 2 1
      112 JUMPIFEQKB                       R9 TRUE ; [+2]
      114 LOADB                            R8 0 +1
      115 LOADB                            R8 1
      116 NOT                              R7 R8
      117 JUMPIFNOT                        R7 ; [+8]
      118 LOADK                            R10 K1 ["Folder"]
      119 NAMECALL                         R8 R6 K14 ["FindFirstChildWhichIsA"]
      121 CALL                             R8 2 1
      122 JUMPIFEQKNIL                     R8 ; [+2]
      124 LOADB                            R7 0 +1
      125 LOADB                            R7 1
      126 JUMPIF                           R7 ; [+27]
      127 LOADK                            R9 K1 ["Folder"]
      128 NAMECALL                         R7 R6 K2 ["IsA"]
      130 CALL                             R7 2 1
      131 JUMPIFNOT                        R7 ; [+12]
      132 GETUPVAL                         R10 1
      133 GETTABLEKS                       R10 R10 K8 ["NODE_ATTRIBUTES"]
      135 GETTABLEKS                       R10 R10 K13 ["IsParameterDefinition"]
      137 NAMECALL                         R8 R6 K10 ["GetAttribute"]
      139 CALL                             R8 2 1
      140 JUMPIFEQKB                       R8 TRUE ; [+2]
      142 LOADB                            R7 0 +1
      143 LOADB                            R7 1
      144 JUMPIFNOT                        R7 ; [+8]
      145 LOADK                            R10 K15 ["ObjectValue"]
      146 NAMECALL                         R8 R6 K14 ["FindFirstChildWhichIsA"]
      148 CALL                             R8 2 1
      149 JUMPIFNOTEQKNIL                  R8 ; [+2]
      151 LOADB                            R7 0 +1
      152 LOADB                            R7 1
      153 JUMPIFNOT                        R7 ; [+23]
      154 LOADB                            R7 1
      155 RETURN                           R7 1
      156 JUMP                             ; [+20]
      157 LOADK                            R9 K1 ["Folder"]
      158 NAMECALL                         R7 R6 K2 ["IsA"]
      160 CALL                             R7 2 1
      161 JUMPIFNOT                        R7 ; [+12]
      162 GETUPVAL                         R10 1
      163 GETTABLEKS                       R10 R10 K8 ["NODE_ATTRIBUTES"]
      165 GETTABLEKS                       R10 R10 K13 ["IsParameterDefinition"]
      167 NAMECALL                         R8 R6 K10 ["GetAttribute"]
      169 CALL                             R8 2 1
      170 JUMPIFEQKB                       R8 TRUE ; [+2]
      172 LOADB                            R7 0 +1
      173 LOADB                            R7 1
      174 JUMPIFNOT                        R7 ; [+2]
      175 LOADB                            R7 1
      176 RETURN                           R7 1
      177 FORGLOOP                         R2 2 ; [-172]
      179 LOADB                            R2 0
      180 RETURN                           R2 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["AnimationEditor"]
        7 LOADK                            R4 K1 ["Convert parameter layout"]
        8 NAMECALL                         R1 R1 K2 ["TryBeginRecording"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["convertParametersToNestedLayout"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K4 ["convertParametersToFlatLayout"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETUPVAL                         R2 1
       27 MOVE                             R4 R1
       28 GETIMPORT                        R5 K8 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R2 R2 K9 ["FinishRecording"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 LOADNIL                          R2
        6 SETUPVAL                         R2 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 JUMPIFEQ                         R1 R2 ; [+12]
       11 SETUPVAL                         R1 1
       12 LOADK                            R4 K0 ["AnimationGraphDefinition"]
       13 NAMECALL                         R2 R1 K1 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["convertParameterLayout"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R1 1

PROTO_38:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 -1
        9 CLOSEUPVALS                      R1
       10 RETURN                           R2 -1

PROTO_39:
        0 JUMPIFEQKB                       R0 TRUE ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       12 GETUPVAL                         R2 1
       13 LOADK                            R3 K2 ["Folder"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["attributes"]
        3 GETTABLEKS                       R1 R1 K1 ["observeBoolean"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["NODE_ATTRIBUTES"]
        9 GETTABLEKS                       R3 R3 K3 ["IsParameterDefinition"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["switchMap"]
       15 MOVE                             R3 R1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Folder"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["observeFlattenListToUniqueItems"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["forEach"]
       16 MOVE                             R4 R1
       17 DUPCLOSURE                       R5 K4 [PROTO_40]
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U0
       21 CALL                             R3 2 -1
       22 CALL                             R2 -1 -1
       23 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKB                       R1 TRUE ; [+4]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 DUPTABLE                         R1 K2 [{"name", "parameterType"}]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K0 ["name"]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K1 ["parameterType"]
       19 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["attributes"]
        3 GETTABLEKS                       R1 R1 K1 ["observeBoolean"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["NODE_ATTRIBUTES"]
        9 GETTABLEKS                       R3 R3 K3 ["IsParameterDefinition"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["attributes"]
       15 GETTABLEKS                       R2 R2 K4 ["observeString"]
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
       21 GETTABLEKS                       R4 R4 K5 ["ParameterType"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["attributes"]
       27 GETTABLEKS                       R3 R3 K4 ["observeString"]
       29 MOVE                             R4 R0
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K2 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R5 R5 K6 ["BindingName"]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K7 ["createComputed"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1

PROTO_44:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFNOT                        R7 ; [+8]
        9 GETTABLEKS                       R7 R6 K1 ["parameterType"]
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R7 R6 K0 ["name"]
       14 GETTABLEKS                       R8 R6 K1 ["parameterType"]
       16 SETTABLE                         R8 R1 R7
       17 FORGLOOP                         R2 2 ; [-12]
       19 GETIMPORT                        R2 K4 [table.freeze]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["of"]
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["forEach"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["observeChildrenWhichIsA"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K3 ["Folder"]
       18 CALL                             R2 2 1
       19 DUPCLOSURE                       R3 K4 [PROTO_43]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K5 ["createComputed"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R1
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Folder"]
        2 NAMECALL                         R1 R1 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 LOADB                            R6 0
       12 GETUPVAL                         R7 2
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+25]
       15 JUMPIFNOT                        R2 ; [+24]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K2 ["isValueOutputEndpoint"]
       19 MOVE                             R8 R2
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+18]
       22 LOADB                            R6 1
       23 GETTABLEKS                       R4 R2 K3 ["Parent"]
       25 GETUPVAL                         R7 0
       26 LOADK                            R9 K4 ["ObjectValue"]
       27 NAMECALL                         R7 R7 K1 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+7]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R3 R7 K3 ["Parent"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R5 R7 K5 ["Name"]
       37 JUMP                             ; [+23]
       38 GETUPVAL                         R3 0
       39 JUMP                             ; [+21]
       40 JUMPIFNOT                        R1 ; [+12]
       41 JUMPIFNOT                        R2 ; [+11]
       42 LOADK                            R9 K4 ["ObjectValue"]
       43 NAMECALL                         R7 R2 K1 ["IsA"]
       45 CALL                             R7 2 1
       46 JUMPIFNOT                        R7 ; [+6]
       47 GETTABLEKS                       R3 R2 K3 ["Parent"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R5 R2 K5 ["Name"]
       52 JUMP                             ; [+8]
       53 JUMPIFNOT                        R1 ; [+2]
       54 MOVE                             R3 R2
       55 JUMP                             ; [+1]
       56 GETUPVAL                         R3 0
       57 JUMPIFNOT                        R1 ; [+2]
       58 GETUPVAL                         R4 0
       59 JUMP                             ; [+1]
       60 MOVE                             R4 R2
       61 JUMPIFNOT                        R4 ; [+6]
       62 GETUPVAL                         R7 4
       63 MOVE                             R9 R4
       64 NAMECALL                         R7 R7 K6 ["instanceToId"]
       66 CALL                             R7 2 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R7
       69 JUMPIFNOT                        R3 ; [+6]
       70 GETUPVAL                         R8 4
       71 MOVE                             R10 R3
       72 NAMECALL                         R8 R8 K6 ["instanceToId"]
       74 CALL                             R8 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 GETUPVAL                         R9 5
       78 MOVE                             R10 R0
       79 CALL                             R9 1 1
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K7 ["getParameterWireInputPinId"]
       83 MOVE                             R11 R9
       84 CALL                             R10 1 1
       85 OR                               R11 R10 R9
       86 GETUPVAL                         R12 6
       87 MOVE                             R13 R0
       88 CALL                             R12 1 1
       89 GETUPVAL                         R13 7
       90 CALL                             R13 0 1
       91 JUMPIFNOT                        R13 ; [+12]
       92 GETTABLEKS                       R13 R12 K8 ["InputId"]
       94 JUMPIFEQKNIL                     R13 ; [+9]
       96 GETIMPORT                        R13 K11 [table.clone]
       98 MOVE                             R14 R12
       99 CALL                             R13 1 1
      100 MOVE                             R12 R13
      101 LOADNIL                          R13
      102 SETTABLEKS                       R13 R12 K8 ["InputId"]
      104 DUPTABLE                         R13 K21 [{["wireId"], ["inputNodeId"], ["inputNodePinId"], ["outputNodeId"], ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"], ["isValueNodeConnection"]}]
      105 GETUPVAL                         R14 8
      106 SETTABLEKS                       R14 R13 K12 ["wireId"]
      108 SETTABLEKS                       R8 R13 K13 ["inputNodeId"]
      110 SETTABLEKS                       R11 R13 K14 ["inputNodePinId"]
      112 SETTABLEKS                       R7 R13 K15 ["outputNodeId"]
      114 SETTABLEKS                       R12 R13 K18 ["properties"]
      116 SETTABLEKS                       R5 R13 K19 ["targetWireInputPinId"]
      118 SETTABLEKS                       R6 R13 K20 ["isValueNodeConnection"]
      120 RETURN                           R13 1

PROTO_47:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["properties"]
        7 GETTABLEKS                       R4 R4 K2 ["observeInstance"]
        9 MOVE                             R5 R2
       10 LOADK                            R6 K3 ["Value"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["properties"]
       15 GETTABLEKS                       R5 R5 K4 ["observeString"]
       17 MOVE                             R6 R2
       18 LOADK                            R7 K5 ["Name"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["observeAttributes"]
       23 MOVE                             R7 R2
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K7 ["createComputed"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R3
       38 CALL                             R7 1 -1
       39 RETURN                           R7 -1

PROTO_48:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 RETURN                           R1 1

PROTO_49:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeWireInfo"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_50:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K2 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R1 1

PROTO_51:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Bad ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeWireInfo"]
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 3
       18 JUMPIF                           R2 ; [+7]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K6 ["createComputed"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K7 ["observeChildrenWhichIsA"]
       29 MOVE                             R3 R0
       30 LOADK                            R4 K0 ["ObjectValue"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K8 ["forEach"]
       35 MOVE                             R4 R2
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 4
       42 GETTABLEKS                       R4 R4 K6 ["createComputed"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CALL                             R4 1 -1
       48 RETURN                           R4 -1

PROTO_52:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       12 MOVE                             R13 R1
       13 MOVE                             R14 R11
       14 GETIMPORT                        R12 K2 [table.insert]
       16 CALL                             R12 2 0
       17 FORGLOOP                         R7 2 ; [-8]
       19 FORGLOOP                         R2 2 ; [-14]
       21 RETURN                           R1 1

PROTO_53:
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
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 LOADK                            R3 K0 ["AnimationNodeDefinition"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K6 ["observeChildrenWhichIsA"]
       25 MOVE                             R3 R0
       26 LOADK                            R4 K7 ["ObjectValue"]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["forEach"]
       31 MOVE                             R4 R2
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U1
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K9 ["createComputed"]
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R3
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K6 [{"nodeId", "inputNodesByPinName", "inputNodesByInputId", "outputNodesByPinName", "outgoingWires", "inputLabelNodesByPinName"}]
        7 SETTABLEKS                       R0 R1 K0 ["nodeId"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["inputNodesByPinName"]
       13 GETUPVAL                         R3 1
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 NEWTABLE                         R2 0 0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["inputNodesByInputId"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K3 ["outputNodesByPinName"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R1 K4 ["outgoingWires"]
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R1 K5 ["inputLabelNodesByPinName"]
       34 GETUPVAL                         R2 0
       35 SETTABLE                         R1 R2 R0
       36 RETURN                           R1 1

PROTO_55:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["inputNodeId"]
       10 JUMPIFEQKNIL                     R11 ; [+93]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R12 R10 K0 ["inputNodeId"]
       15 CALL                             R11 1 1
       16 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       18 JUMPIFNOT                        R13 ; [+5]
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       22 CALL                             R12 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R12
       25 DUPTABLE                         R13 K7 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties", "isValueNodeConnection"}]
       26 GETTABLEKS                       R14 R10 K2 ["wireId"]
       28 SETTABLEKS                       R14 R13 K2 ["wireId"]
       30 GETTABLEKS                       R14 R10 K0 ["inputNodeId"]
       32 SETTABLEKS                       R14 R13 K0 ["inputNodeId"]
       34 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       36 SETTABLEKS                       R14 R13 K3 ["inputNodePinId"]
       38 GETTABLEKS                       R14 R10 K1 ["outputNodeId"]
       40 SETTABLEKS                       R14 R13 K1 ["outputNodeId"]
       42 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
       44 SETTABLEKS                       R14 R13 K4 ["outputNodePinId"]
       46 GETTABLEKS                       R14 R10 K5 ["properties"]
       48 SETTABLEKS                       R14 R13 K5 ["properties"]
       50 GETTABLEKS                       R14 R10 K6 ["isValueNodeConnection"]
       52 SETTABLEKS                       R14 R13 K6 ["isValueNodeConnection"]
       54 GETTABLEKS                       R14 R10 K8 ["targetWireInputPinId"]
       56 JUMPIFEQKNIL                     R14 ; [+19]
       58 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       60 GETTABLEKS                       R16 R11 K9 ["inputLabelNodesByPinName"]
       62 GETTABLE                         R15 R16 R14
       63 JUMPIF                           R15 ; [+5]
       64 GETTABLEKS                       R15 R11 K9 ["inputLabelNodesByPinName"]
       66 NEWTABLE                         R16 0 0
       68 SETTABLE                         R16 R15 R14
       69 GETTABLEKS                       R16 R11 K9 ["inputLabelNodesByPinName"]
       71 GETTABLE                         R15 R16 R14
       72 GETTABLEKS                       R16 R10 K8 ["targetWireInputPinId"]
       74 SETTABLE                         R13 R15 R16
       75 JUMP                             ; [+11]
       76 GETTABLEKS                       R14 R11 K10 ["inputNodesByPinName"]
       78 GETTABLEKS                       R15 R10 K3 ["inputNodePinId"]
       80 SETTABLE                         R13 R14 R15
       81 GETTABLEKS                       R14 R11 K11 ["inputNodesByInputId"]
       83 JUMPIFNOT                        R14 ; [+3]
       84 GETTABLEKS                       R15 R10 K2 ["wireId"]
       86 SETTABLE                         R13 R14 R15
       87 JUMPIFNOT                        R12 ; [+16]
       88 GETTABLEKS                       R14 R12 K12 ["outputNodesByPinName"]
       90 GETTABLEKS                       R15 R10 K4 ["outputNodePinId"]
       92 SETTABLE                         R13 R14 R15
       93 GETUPVAL                         R14 1
       94 CALL                             R14 0 1
       95 JUMPIFNOT                        R14 ; [+8]
       96 GETTABLEKS                       R15 R12 K13 ["outgoingWires"]
       98 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      100 MOVE                             R16 R13
      101 GETIMPORT                        R14 K16 [table.insert]
      103 CALL                             R14 2 0
      104 FORGLOOP                         R6 2 ; [-97]
      106 FORGLOOP                         R1 2 ; [-103]
      108 RETURN                           R0 0

PROTO_56:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U3
       14 MOVE                             R6 R5
       15 MOVE                             R7 R2
       16 CALL                             R6 1 0
       17 MOVE                             R6 R5
       18 MOVE                             R7 R3
       19 CALL                             R6 1 0
       20 MOVE                             R6 R1
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 GETIMPORT                        R11 K2 [table.freeze]
       26 MOVE                             R12 R10
       27 CALL                             R11 1 0
       28 FORGLOOP                         R6 2 ; [-5]
       30 GETIMPORT                        R6 K2 [table.freeze]
       32 MOVE                             R7 R1
       33 CALL                             R6 1 -1
       34 RETURN                           R6 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["observeParameterNodeInstances"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["forEach"]
       20 MOVE                             R6 R2
       21 MOVE                             R7 R4
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["forEach"]
       26 MOVE                             R7 R3
       27 MOVE                             R8 R4
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U2
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

PROTO_58:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["NODE_ATTRIBUTES"]
        3 GETTABLEKS                       R4 R4 K1 ["Expression"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R0 K2 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_60:
        0 DUPTABLE                         R1 K3 [{"name", "parameterType", "bindingName"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["parameterType"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["bindingName"]
       16 RETURN                           R1 1

PROTO_61:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 DUPTABLE                         R2 K6 [{["name"] = "", ["parameterType"] = , ["bindingName"] = }]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K7 ["properties"]
       10 GETTABLEKS                       R1 R1 K8 ["observeString"]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K9 ["Name"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K10 ["attributes"]
       18 GETTABLEKS                       R2 R2 K8 ["observeString"]
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K11 ["NODE_ATTRIBUTES"]
       24 GETTABLEKS                       R4 R4 K12 ["ParameterType"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K10 ["attributes"]
       30 GETTABLEKS                       R3 R3 K8 ["observeString"]
       32 MOVE                             R4 R0
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K11 ["NODE_ATTRIBUTES"]
       36 GETTABLEKS                       R5 R5 K13 ["BindingName"]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K14 ["createComputed"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CALL                             R4 1 -1
       47 RETURN                           R4 -1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["name"]
        5 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["parameterType"]
        5 RETURN                           R1 1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["bindingName"]
        5 RETURN                           R1 1

PROTO_65:
        0 DUPTABLE                         R1 K4 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterName"]
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 ORK                              R2 R3 K5 [""]
       18 SETTABLEKS                       R2 R1 K3 ["parameterBindingName"]
       20 RETURN                           R1 1

PROTO_66:
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

PROTO_67:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 GETUPVAL                         R6 0
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+39]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K1 ["switchMap"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K2 ["properties"]
       16 GETTABLEKS                       R7 R7 K3 ["observeInstance"]
       18 MOVE                             R8 R1
       19 LOADK                            R9 K4 ["Parent"]
       20 CALL                             R7 2 1
       21 DUPCLOSURE                       R8 K5 [PROTO_61]
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K6 ["createComputed"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R6
       32 CALL                             R7 1 1
       33 MOVE                             R3 R7
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K6 ["createComputed"]
       37 NEWCLOSURE                       R8 P2
       38 CAPTURE                          VAL R6
       39 CALL                             R7 1 1
       40 MOVE                             R4 R7
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R7 R7 K6 ["createComputed"]
       44 NEWCLOSURE                       R8 P3
       45 CAPTURE                          VAL R6
       46 CALL                             R7 1 1
       47 MOVE                             R5 R7
       48 JUMP                             ; [+35]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K2 ["properties"]
       52 GETTABLEKS                       R6 R6 K7 ["observeString"]
       54 MOVE                             R7 R1
       55 LOADK                            R8 K8 ["Name"]
       56 CALL                             R6 2 1
       57 MOVE                             R3 R6
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K9 ["attributes"]
       61 GETTABLEKS                       R6 R6 K7 ["observeString"]
       63 MOVE                             R7 R1
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K10 ["NODE_ATTRIBUTES"]
       67 GETTABLEKS                       R8 R8 K11 ["ParameterType"]
       69 CALL                             R6 2 1
       70 MOVE                             R4 R6
       71 GETUPVAL                         R6 2
       72 GETTABLEKS                       R6 R6 K9 ["attributes"]
       74 GETTABLEKS                       R6 R6 K7 ["observeString"]
       76 MOVE                             R7 R1
       77 GETUPVAL                         R8 3
       78 GETTABLEKS                       R8 R8 K10 ["NODE_ATTRIBUTES"]
       80 GETTABLEKS                       R8 R8 K12 ["BindingName"]
       82 CALL                             R6 2 1
       83 MOVE                             R5 R6
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K6 ["createComputed"]
       87 NEWCLOSURE                       R7 P4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          REF R4
       90 CAPTURE                          REF R3
       91 CAPTURE                          REF R5
       92 CALL                             R6 1 1
       93 GETUPVAL                         R7 4
       94 GETTABLEKS                       R7 R7 K6 ["createComputed"]
       96 NEWCLOSURE                       R8 P5
       97 CAPTURE                          VAL R2
       98 CAPTURE                          REF R4
       99 CAPTURE                          VAL R6
      100 CALL                             R7 1 -1
      101 CLOSEUPVALS                      R3
      102 RETURN                           R7 -1

PROTO_68:
        0 DUPTABLE                         R1 K4 [{"id", "parameterType", "parameterName", "parameterBindingName"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["EXPRESSION_NODE_CLASSNAME"]
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterName"]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K3 ["parameterBindingName"]
       19 RETURN                           R1 1

PROTO_69:
        0 DUPTABLE                         R1 K3 [{"nodeId", "parameterType", "parameterData"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K4 ["EXPRESSION_NODE_CLASSNAME"]
        7 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["parameterData"]
       14 GETIMPORT                        R2 K7 [table.freeze]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_70:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["properties"]
        7 GETTABLEKS                       R3 R3 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["Name"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["createComputed"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["createComputed"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R2 2
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["GetAnimationValueNodeDefinition"]
        9 CALL                             R2 2 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 2
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K1 ["GetAnimationNodeDefinition"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLEKS                       R3 R2 K2 ["Properties"]
       19 JUMPIF                           R3 ; [+2]
       20 NEWTABLE                         R3 0 0
       22 RETURN                           R3 1

PROTO_72:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_73:
        0 LOADK                            R4 K0 ["ObjectValue"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Instance must be an ObjectValue"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["properties"]
       13 GETTABLEKS                       R1 R1 K6 ["observeString"]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K7 ["Name"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K8 ["createComputed"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Name"]
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_76:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["properties"]
        4 GETTABLEKS                       R1 R1 K1 ["observeInstance"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["Value"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["of"]
       13 LOADNIL                          R2
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_77:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 DUPTABLE                         R2 K2 [{"key", "value"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["Name"]
        8 SETTABLEKS                       R3 R2 K0 ["key"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K4 ["instanceToId"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["value"]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFEQKS                       R1 K1 ["Mask"] ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["of"]
        7 LOADNIL                          R2
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["switchMap"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K5 [PROTO_76]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U0
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K3 ["createComputed"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K1 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFEQKS                       R9 K2 ["Instance"] ; [+4]
       19 JUMPIFEQKS                       R9 K3 ["InstanceHandle"] ; [+2]
       21 SETTABLE                         R8 R3 R7
       22 FORGLOOP                         R4 2 ; [-11]
       24 MOVE                             R4 R2
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 JUMPIFNOT                        R8 ; [+5]
       29 GETTABLEKS                       R9 R8 K4 ["key"]
       31 GETTABLEKS                       R10 R8 K5 ["value"]
       33 SETTABLE                         R10 R3 R9
       34 FORGLOOP                         R4 2 ; [-7]
       36 GETIMPORT                        R4 K8 [table.freeze]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1

PROTO_80:
        0 LOADK                            R4 K0 ["AnimationValueNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["observeAttributes"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["observeChildrenWhichIsA"]
       12 MOVE                             R5 R0
       13 LOADK                            R6 K4 ["ObjectValue"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["observeValueNodeType"]
       19 MOVE                             R6 R0
       20 CALL                             R5 1 1
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["observeNodeType"]
       25 MOVE                             R6 R0
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K7 ["createComputed"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U3
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K8 ["forEach"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K9 [PROTO_73]
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U2
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K7 ["createComputed"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R7
       48 CALL                             R8 1 1
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K8 ["forEach"]
       52 MOVE                             R10 R6
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R1
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K7 ["createComputed"]
       63 NEWCLOSURE                       R11 P4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R9
       66 CALL                             R10 1 1
       67 RETURN                           R10 1

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeEnumItem"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["NodeType"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+8]
        5 GETTABLEKS                       R2 R1 K0 ["EnumType"]
        7 GETIMPORT                        R3 K3 [Enum.AnimationValueNodeType]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 RETURN                           R1 1
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["NodeType is not an AnimationValueNodeType"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeEnumItem"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["NodeType"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_85:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["attributes"]
       11 GETTABLEKS                       R1 R1 K2 ["observeString"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R3 R3 K4 ["DisplayName"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_86:
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

PROTO_87:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["NODE_ATTRIBUTES"]
        7 GETTABLEKS                       R5 R5 K2 ["DisplayName"]
        9 NAMECALL                         R3 R1 K3 ["GetAttribute"]
       11 CALL                             R3 2 1
       12 JUMPIFEQKNIL                     R3 ; [+56]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["NODE_CONFIGURATION_NAME"]
       17 LOADK                            R8 K5 ["Configuration"]
       18 NAMECALL                         R6 R1 K6 ["IsA"]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+2]
       22 MOVE                             R4 R1
       23 JUMP                             ; [+17]
       24 MOVE                             R8 R5
       25 NAMECALL                         R6 R1 K7 ["FindFirstChild"]
       27 CALL                             R6 2 1
       28 JUMPIFEQKNIL                     R6 ; [+3]
       30 MOVE                             R4 R6
       31 JUMP                             ; [+9]
       32 GETIMPORT                        R6 K10 [Instance.new]
       34 LOADK                            R7 K5 ["Configuration"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R5 R6 K11 ["Name"]
       38 SETTABLEKS                       R1 R6 K12 ["Parent"]
       40 MOVE                             R4 R6
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K1 ["NODE_ATTRIBUTES"]
       44 GETTABLEKS                       R7 R7 K2 ["DisplayName"]
       46 NAMECALL                         R5 R4 K3 ["GetAttribute"]
       48 CALL                             R5 2 1
       49 JUMPIFNOTEQKNIL                  R5 ; [+10]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K1 ["NODE_ATTRIBUTES"]
       54 GETTABLEKS                       R7 R7 K2 ["DisplayName"]
       56 MOVE                             R8 R3
       57 NAMECALL                         R5 R4 K13 ["SetAttribute"]
       59 CALL                             R5 3 0
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K1 ["NODE_ATTRIBUTES"]
       63 GETTABLEKS                       R7 R7 K2 ["DisplayName"]
       65 LOADNIL                          R8
       66 NAMECALL                         R5 R1 K13 ["SetAttribute"]
       68 CALL                             R5 3 0
       69 GETUPVAL                         R4 1
       70 MOVE                             R5 R1
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K4 ["NODE_CONFIGURATION_NAME"]
       74 CALL                             R4 2 1
       75 GETUPVAL                         R5 2
       76 GETTABLEKS                       R5 R5 K14 ["switchMap"]
       78 MOVE                             R6 R4
       79 DUPCLOSURE                       R7 K15 [PROTO_85]
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U0
       83 CALL                             R5 2 1
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K16 ["observeNodeType"]
       87 MOVE                             R7 R1
       88 CALL                             R6 1 1
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K17 ["observeInputPins"]
       92 MOVE                             R8 R1
       93 CALL                             R7 1 1
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R8 R8 K18 ["createComputed"]
       97 NEWCLOSURE                       R9 P1
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R6
      102 CALL                             R8 1 -1
      103 RETURN                           R8 -1

PROTO_88:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["AnimationNodeDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_89:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Not correct type"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["observeNodeInfo"]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_90:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_88]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["forEach"]
       10 MOVE                             R4 R2
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_91:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["observeParameterNodeInstances"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_92:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["of"]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 LOADK                            R12 K0 ["Folder"]
       13 NAMECALL                         R10 R8 K1 ["IsA"]
       15 CALL                             R10 2 1
       16 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       18 LOADK                            R11 K2 ["non-folder instance observed for parameter node info lookup list"]
       19 GETIMPORT                        R9 K4 [assert]
       21 CALL                             R9 2 0
       22 GETUPVAL                         R9 2
       23 CALL                             R9 0 1
       24 JUMPIF                           R9 ; [+9]
       25 GETUPVAL                         R11 3
       26 GETTABLEKS                       R11 R11 K5 ["NODE_ATTRIBUTES"]
       28 GETTABLEKS                       R11 R11 K6 ["ParameterType"]
       30 NAMECALL                         R9 R8 K7 ["GetAttribute"]
       32 CALL                             R9 2 1
       33 JUMPIFNOT                        R9 ; [+13]
       34 MOVE                             R10 R3
       35 GETUPVAL                         R11 4
       36 GETTABLEKS                       R11 R11 K8 ["observeParameterNodeInfo"]
       38 GETUPVAL                         R12 5
       39 MOVE                             R13 R8
       40 CALL                             R11 2 1
       41 MOVE                             R12 R0
       42 CALL                             R11 1 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R9 K11 [table.insert]
       46 CALL                             R9 -1 0
       47 FORGLOOP                         R4 2 ; [-36]
       49 GETUPVAL                         R4 6
       50 CALL                             R4 0 1
       51 JUMPIFNOT                        R4 ; [+35]
       52 MOVE                             R4 R2
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 FORGPREP                         R4
       56 LOADK                            R12 K12 ["AnimationValueNodeDefinition"]
       57 NAMECALL                         R10 R8 K1 ["IsA"]
       59 CALL                             R10 2 1
       60 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       62 LOADK                            R11 K13 ["non-value-node observed for parameter node info lookup list"]
       63 GETIMPORT                        R9 K4 [assert]
       65 CALL                             R9 2 0
       66 GETTABLEKS                       R9 R8 K14 ["NodeType"]
       68 GETIMPORT                        R10 K18 [Enum.AnimationValueNodeType.Expression]
       70 JUMPIFNOTEQ                      R9 R10 ; [+14]
       72 MOVE                             R10 R3
       73 GETUPVAL                         R11 4
       74 GETTABLEKS                       R11 R11 K19 ["observeExpressionValueNodeInfo"]
       76 GETUPVAL                         R12 5
       77 MOVE                             R13 R8
       78 CALL                             R11 2 1
       79 MOVE                             R12 R0
       80 CALL                             R11 1 -1
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R9 K11 [table.insert]
       84 CALL                             R9 -1 0
       85 FORGLOOP                         R4 2 ; [-30]
       87 GETIMPORT                        R4 K21 [table.freeze]
       89 MOVE                             R5 R3
       90 CALL                             R4 1 -1
       91 RETURN                           R4 -1

PROTO_94:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_91]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["switchMap"]
       11 MOVE                             R4 R1
       12 DUPCLOSURE                       R5 K2 [PROTO_92]
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["createComputed"]
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 CALL                             R4 1 1
       28 RETURN                           R4 1

PROTO_95:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["of"]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["of"]
        3 DUPTABLE                         R2 K2 [{"nodeId"}]
        4 GETUPVAL                         R3 1
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K3 ["instanceToId"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K1 ["nodeId"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_97:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_95]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["forEach"]
       11 MOVE                             R4 R2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_98:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["wireId"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K0 ["wireId"]
        8 NAMECALL                         R1 R1 K1 ["idToInstance"]
       10 CALL                             R1 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R1 ; [+5]
       14 LOADK                            R4 K2 ["ObjectValue"]
       15 NAMECALL                         R2 R1 K3 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K4 ["Value"]
       22 JUMPIFEQKNIL                     R2 ; [+11]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["isValueOutputEndpoint"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+4]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K6 ["Parent"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R3 R0 K7 ["outputNodeId"]
       36 JUMPIFEQKNIL                     R3 ; [+13]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K8 ["isAParameterWire"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R5 R0 K7 ["outputNodeId"]
       44 MOVE                             R6 R1
       45 CALL                             R3 3 1
       46 JUMPIFNOT                        R3 ; [+3]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R1 K6 ["Parent"]
       50 RETURN                           R0 0

PROTO_99:
        0 GETTABLEKS                       R4 R1 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R3 K1 ["outgoingWires"]
        7 JUMPIFNOT                        R4 ; [+53]
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R11 R9 K2 ["wireId"]
       14 JUMPIFNOT                        R11 ; [+6]
       15 GETTABLEKS                       R12 R9 K2 ["wireId"]
       17 NAMECALL                         R10 R0 K3 ["idToInstance"]
       19 CALL                             R10 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R10
       22 JUMPIFNOT                        R10 ; [+36]
       23 LOADK                            R13 K4 ["ObjectValue"]
       24 NAMECALL                         R11 R10 K5 ["IsA"]
       26 CALL                             R11 2 1
       27 JUMPIFNOT                        R11 ; [+31]
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K6 ["removeOrderedInputPin"]
       31 MOVE                             R12 R0
       32 MOVE                             R13 R1
       33 GETTABLEKS                       R14 R9 K7 ["inputNodeId"]
       35 GETTABLEKS                       R15 R9 K8 ["inputNodePinId"]
       37 CALL                             R11 4 0
       38 NAMECALL                         R11 R10 K9 ["GetChildren"]
       40 CALL                             R11 1 3
       41 FORGPREP                         R11
       42 GETUPVAL                         R16 0
       43 GETTABLEKS                       R16 R16 K10 ["isAValueNodeWire"]
       45 MOVE                             R17 R15
       46 CALL                             R16 1 1
       47 JUMPIFNOT                        R16 ; [+6]
       48 GETTABLEKS                       R16 R15 K11 ["Value"]
       50 JUMPIFNOT                        R16 ; [+3]
       51 LOADNIL                          R17
       52 SETTABLEKS                       R17 R16 K12 ["Parent"]
       54 FORGLOOP                         R11 2 ; [-13]
       56 LOADNIL                          R11
       57 SETTABLEKS                       R11 R10 K12 ["Parent"]
       59 FORGLOOP                         R5 2 ; [-48]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U0
       64 GETTABLEKS                       R6 R3 K13 ["inputPinToConnectionMap"]
       66 LOADNIL                          R7
       67 LOADNIL                          R8
       68 FORGPREP                         R6
       69 MOVE                             R11 R5
       70 MOVE                             R12 R10
       71 CALL                             R11 1 0
       72 FORGLOOP                         R6 2 ; [-4]
       74 GETTABLEKS                       R6 R3 K14 ["inputLabelPinToConnectionMap"]
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 MOVE                             R11 R10
       80 LOADNIL                          R12
       81 LOADNIL                          R13
       82 FORGPREP                         R11
       83 MOVE                             R16 R5
       84 MOVE                             R17 R15
       85 CALL                             R16 1 0
       86 FORGLOOP                         R11 2 ; [-4]
       88 FORGLOOP                         R6 2 ; [-10]
       90 RETURN                           R0 0

PROTO_100:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["AnimationValueNodeDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_101:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R11 K0 ["AnimationValueNodeDefinition"]
       10 NAMECALL                         R9 R7 K1 ["IsA"]
       12 CALL                             R9 2 1
       13 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       15 LOADK                            R10 K2 ["non-value-node observed for expression nodes"]
       16 GETIMPORT                        R8 K4 [assert]
       18 CALL                             R8 2 0
       19 GETTABLEKS                       R8 R7 K5 ["NodeType"]
       21 GETIMPORT                        R9 K9 [Enum.AnimationValueNodeType.Expression]
       23 JUMPIFNOTEQ                      R8 R9 ; [+23]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K11 ["attributes"]
       28 GETTABLEKS                       R9 R9 K12 ["observeString"]
       30 MOVE                             R10 R7
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K13 ["NODE_ATTRIBUTES"]
       34 GETTABLEKS                       R11 R11 K8 ["Expression"]
       36 CALL                             R9 2 1
       37 MOVE                             R10 R0
       38 CALL                             R9 1 1
       39 ORK                              R8 R9 K10 [""]
       40 GETUPVAL                         R9 3
       41 MOVE                             R11 R7
       42 NAMECALL                         R9 R9 K14 ["instanceToId"]
       44 CALL                             R9 2 1
       45 JUMPIFNOT                        R9 ; [+1]
       46 SETTABLE                         R8 R2 R9
       47 FORGLOOP                         R3 2 ; [-39]
       49 GETIMPORT                        R3 K17 [table.freeze]
       51 MOVE                             R4 R2
       52 CALL                             R3 1 -1
       53 RETURN                           R3 -1

PROTO_102:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_100]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_104:
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

PROTO_105:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["forEach"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_106:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Position"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_107:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Size"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_108:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeBoolean"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["Collapsed"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_109:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["attributes"]
       10 GETTABLEKS                       R1 R1 K2 ["observeNumber"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       16 GETTABLEKS                       R3 R3 K4 ["ZIndex"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_110:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 DUPTABLE                         R2 K9 [{"nodeId", "position", "size", "isCollapsed", "isSelected", "zIndex"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K3 ["nodeId"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 GETIMPORT                        R3 K12 [Vector2.zero]
       12 SETTABLEKS                       R3 R2 K4 ["position"]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+2]
       18 GETIMPORT                        R3 K12 [Vector2.zero]
       20 SETTABLEKS                       R3 R2 K5 ["size"]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 ORK                              R3 R4 K13 [False]
       26 SETTABLEKS                       R3 R2 K6 ["isCollapsed"]
       28 GETUPVAL                         R4 4
       29 MOVE                             R5 R0
       30 CALL                             R4 1 1
       31 ORK                              R3 R4 K13 [False]
       32 SETTABLEKS                       R3 R2 K7 ["isSelected"]
       34 GETUPVAL                         R4 5
       35 MOVE                             R5 R0
       36 CALL                             R4 1 1
       37 ORK                              R3 R4 K14 [0]
       38 SETTABLEKS                       R3 R2 K8 ["zIndex"]
       40 CALL                             R1 1 -1
       41 RETURN                           R1 -1

PROTO_111:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["idToInstance"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+6]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["of"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 -1
       10 RETURN                           R4 -1
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R3
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K2 ["NODE_CONFIGURATION_NAME"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["switchMap"]
       20 MOVE                             R6 R4
       21 DUPCLOSURE                       R7 K4 [PROTO_106]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_107]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_108]
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U2
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K3 ["switchMap"]
       47 MOVE                             R9 R4
       48 DUPCLOSURE                       R10 K7 [PROTO_109]
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U2
       52 CALL                             R8 2 1
       53 MOVE                             R11 R3
       54 NAMECALL                         R9 R1 K8 ["observeIsSelected"]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 4
       58 GETTABLEKS                       R10 R10 K9 ["createComputed"]
       60 NEWCLOSURE                       R11 P4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 CALL                             R10 1 -1
       68 RETURN                           R10 -1

PROTO_112:
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
       13 JUMPIFNOT                        R8 ; [+49]
       14 GETUPVAL                         R10 1
       15 NAMECALL                         R8 R6 K3 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+12]
       19 GETIMPORT                        R8 K5 [error]
       21 LOADK                            R9 K6 ["Unexpected key in root animations map: \"%*\" (%*)"]
       22 NAMECALL                         R11 R6 K7 ["GetFullName"]
       24 CALL                             R11 1 1
       25 GETTABLEKS                       R12 R6 K8 ["ClassName"]
       27 NAMECALL                         R9 R9 K9 ["format"]
       29 CALL                             R9 3 1
       30 CALL                             R8 1 0
       31 GETUPVAL                         R10 1
       32 NAMECALL                         R8 R7 K3 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+5]
       36 DUPTABLE                         R8 K12 [{["from"] = "graph", ["graph"]}]
       37 SETTABLEKS                       R6 R8 K11 ["graph"]
       39 SETUPVAL                         R8 2
       40 RETURN                           R6 1
       41 GETUPVAL                         R8 2
       42 JUMPIFNOTEQKNIL                  R8 ; [+6]
       44 DUPTABLE                         R8 K14 [{["from"] = "rig", ["graph"]}]
       45 SETTABLEKS                       R6 R8 K11 ["graph"]
       47 MOVE                             R2 R8
       48 JUMP                             ; [+14]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K11 ["graph"]
       52 GETTABLEKS                       R8 R8 K15 ["Parent"]
       54 GETTABLEKS                       R9 R6 K15 ["Parent"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+2]
       58 JUMP                             ; [+4]
       59 DUPTABLE                         R8 K14 [{["from"] = "rig", ["graph"]}]
       60 SETTABLEKS                       R6 R8 K11 ["graph"]
       62 MOVE                             R2 R8
       63 FORGLOOP                         R3 2 ; [-56]
       65 JUMPIFEQKNIL                     R2 ; [+2]
       67 SETUPVAL                         R2 2
       68 GETUPVAL                         R3 2
       69 JUMPIFNOT                        R3 ; [+3]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K11 ["graph"]
       73 RETURN                           R3 1

PROTO_113:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["observeFirstAncestor"]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K1 ["DataModel"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["of"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_114:
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

PROTO_115:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getClassName"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R2 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["observeRootAnimationsMap"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["createComputed"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          REF R4
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K4 ["switchMap"]
       28 MOVE                             R7 R5
       29 DUPCLOSURE                       R8 K5 [PROTO_113]
       30 CAPTURE                          UPVAL U4
       31 CALL                             R6 2 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K3 ["createComputed"]
       35 NEWCLOSURE                       R8 P2
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CALL                             R7 1 1
       39 CLOSEUPVALS                      R4
       40 RETURN                           R7 1

PROTO_116:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["observeNodeConnectionMap"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["of"]
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_117:
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
       26 NEWTABLE                         R15 0 0
       28 JUMPIFNOT                        R12 ; [+28]
       29 GETTABLEKS                       R16 R12 K1 ["inputNodesByPinName"]
       31 LOADNIL                          R17
       32 LOADNIL                          R18
       33 FORGPREP                         R16
       34 GETTABLEKS                       R21 R20 K2 ["inputNodePinId"]
       36 SETTABLE                         R20 R13 R21
       37 FORGLOOP                         R16 2 ; [-4]
       39 GETTABLEKS                       R16 R12 K3 ["outputNodesByPinName"]
       41 LOADNIL                          R17
       42 LOADNIL                          R18
       43 FORGPREP                         R16
       44 GETTABLEKS                       R21 R20 K4 ["outputNodePinId"]
       46 SETTABLE                         R20 R14 R21
       47 FORGLOOP                         R16 2 ; [-4]
       49 GETTABLEKS                       R16 R12 K5 ["inputLabelNodesByPinName"]
       51 LOADNIL                          R17
       52 LOADNIL                          R18
       53 FORGPREP                         R16
       54 SETTABLE                         R20 R15 R19
       55 FORGLOOP                         R16 2 ; [-2]
       57 LOADNIL                          R16
       58 LOADNIL                          R17
       59 GETUPVAL                         R18 4
       60 CALL                             R18 0 1
       61 JUMPIFNOT                        R18 ; [+92]
       62 JUMPIFNOT                        R12 ; [+3]
       63 GETTABLEKS                       R18 R12 K6 ["inputNodesByInputId"]
       65 JUMPIF                           R18 ; [+2]
       66 NEWTABLE                         R18 0 0
       68 MOVE                             R16 R18
       69 NEWTABLE                         R17 0 0
       71 GETUPVAL                         R18 5
       72 GETTABLEKS                       R20 R11 K0 ["nodeId"]
       74 NAMECALL                         R18 R18 K7 ["idToInstance"]
       76 CALL                             R18 2 1
       77 JUMPIFNOT                        R18 ; [+76]
       78 NEWTABLE                         R19 0 0
       80 NAMECALL                         R20 R18 K8 ["GetChildren"]
       82 CALL                             R20 1 3
       83 FORGPREP                         R20
       84 LOADK                            R27 K9 ["ObjectValue"]
       85 NAMECALL                         R25 R24 K10 ["IsA"]
       87 CALL                             R25 2 1
       88 JUMPIFNOT                        R25 ; [+16]
       89 GETTABLEKS                       R26 R24 K11 ["Name"]
       91 GETTABLE                         R25 R19 R26
       92 JUMPIF                           R25 ; [+5]
       93 NEWTABLE                         R25 0 0
       95 GETTABLEKS                       R26 R24 K11 ["Name"]
       97 SETTABLE                         R25 R19 R26
       98 FASTCALL2                        TABLE_INSERT R25 R24 ; [+5]
      100 MOVE                             R27 R25
      101 MOVE                             R28 R24
      102 GETIMPORT                        R26 K14 [table.insert]
      104 CALL                             R26 2 0
      105 FORGLOOP                         R20 2 ; [-22]
      107 NEWTABLE                         R20 0 0
      109 GETTABLEKS                       R21 R11 K15 ["inputPinIds"]
      111 LOADNIL                          R22
      112 LOADNIL                          R23
      113 FORGPREP                         R21
      114 GETTABLE                         R28 R20 R25
      115 ORK                              R27 R28 K17 [0]
      116 ADDK                             R26 R27 K16 [1]
      117 SETTABLE                         R26 R20 R25
      118 GETTABLE                         R27 R19 R25
      119 MOVE                             R28 R27
      120 JUMPIFNOT                        R28 ; [+1]
      121 GETTABLE                         R28 R27 R26
      122 JUMPIFNOT                        R28 ; [+29]
      123 LOADK                            R31 K9 ["ObjectValue"]
      124 NAMECALL                         R29 R28 K10 ["IsA"]
      126 CALL                             R29 2 1
      127 JUMPIFNOT                        R29 ; [+24]
      128 LOADK                            R31 K18 ["InputId"]
      129 NAMECALL                         R29 R28 K19 ["GetAttribute"]
      131 CALL                             R29 2 1
      132 FASTCALL1                        TYPE R29 ; [+3]
      133 MOVE                             R31 R29
      134 GETIMPORT                        R30 K21 [type]
      136 CALL                             R30 1 1
      137 JUMPIFEQKS                       R30 K22 ["string"] ; [+7]
      139 GETUPVAL                         R30 5
      140 MOVE                             R32 R28
      141 NAMECALL                         R30 R30 K23 ["ensureInputId"]
      143 CALL                             R30 2 1
      144 MOVE                             R29 R30
      145 SETTABLE                         R29 R17 R24
      146 MOVE                             R30 R16
      147 JUMPIFNOT                        R30 ; [+1]
      148 GETTABLE                         R30 R16 R29
      149 JUMPIFNOT                        R30 ; [+2]
      150 SETTABLEKS                       R29 R30 K24 ["inputPinInputId"]
      152 FORGLOOP                         R21 2 ; [-39]
      154 GETTABLEKS                       R18 R11 K25 ["nodeType"]
      156 GETIMPORT                        R19 K29 [Enum.AnimationNodeType.GraphOutput]
      158 JUMPIFNOTEQ                      R18 R19 ; [+3]
      160 GETTABLEKS                       R5 R11 K0 ["nodeId"]
      162 GETIMPORT                        R18 K31 [table.freeze]
      164 DUPTABLE                         R19 K46 [{["inputPinIds"], ["inputPinInputIds"], ["outputPinToConnectionMap"], ["outgoingWires"], ["inputPinToConnectionMap"], ["inputConnectionsByInputId"], ["inputLabelPinToConnectionMap"], ["className"], ["isValueNode"], ["id"], ["index"] = , ["name"], ["nodeType"], ["props"] = , ["state"] = }]
      165 GETTABLEKS                       R20 R11 K15 ["inputPinIds"]
      167 SETTABLEKS                       R20 R19 K15 ["inputPinIds"]
      169 SETTABLEKS                       R17 R19 K32 ["inputPinInputIds"]
      171 SETTABLEKS                       R14 R19 K33 ["outputPinToConnectionMap"]
      173 GETUPVAL                         R21 6
      174 CALL                             R21 0 1
      175 JUMPIFNOT                        R21 ; [+4]
      176 JUMPIFNOT                        R12 ; [+3]
      177 GETTABLEKS                       R20 R12 K34 ["outgoingWires"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R20
      181 SETTABLEKS                       R20 R19 K34 ["outgoingWires"]
      183 SETTABLEKS                       R13 R19 K35 ["inputPinToConnectionMap"]
      185 SETTABLEKS                       R16 R19 K36 ["inputConnectionsByInputId"]
      187 SETTABLEKS                       R15 R19 K37 ["inputLabelPinToConnectionMap"]
      189 GETTABLEKS                       R20 R11 K25 ["nodeType"]
      191 GETTABLEKS                       R20 R20 K11 ["Name"]
      193 SETTABLEKS                       R20 R19 K38 ["className"]
      195 GETTABLEKS                       R21 R11 K25 ["nodeType"]
      197 GETTABLEKS                       R21 R21 K47 ["EnumType"]
      199 GETIMPORT                        R22 K49 [Enum.AnimationValueNodeType]
      201 JUMPIFNOTEQ                      R21 R22 ; [+3]
      203 LOADB                            R20 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R20
      206 SETTABLEKS                       R20 R19 K39 ["isValueNode"]
      208 GETTABLEKS                       R20 R11 K0 ["nodeId"]
      210 SETTABLEKS                       R20 R19 K40 ["id"]
      212 GETTABLEKS                       R20 R11 K43 ["name"]
      214 SETTABLEKS                       R20 R19 K43 ["name"]
      216 GETTABLEKS                       R21 R11 K25 ["nodeType"]
      218 FASTCALL1                        TOSTRING R21 ; [+2]
      219 GETIMPORT                        R20 K51 [tostring]
      221 CALL                             R20 1 1
      222 SETTABLEKS                       R20 R19 K25 ["nodeType"]
      224 CALL                             R18 1 1
      225 GETTABLEKS                       R19 R11 K0 ["nodeId"]
      227 SETTABLE                         R18 R6 R19
      228 FORGLOOP                         R7 2 ; [-210]
      230 MOVE                             R7 R3
      231 LOADNIL                          R8
      232 LOADNIL                          R9
      233 FORGPREP                         R7
      234 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      236 GETTABLE                         R12 R4 R13
      237 NEWTABLE                         R13 0 0
      239 JUMPIFNOT                        R12 ; [+10]
      240 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      242 LOADNIL                          R15
      243 LOADNIL                          R16
      244 FORGPREP                         R14
      245 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      247 SETTABLE                         R18 R13 R19
      248 FORGLOOP                         R14 2 ; [-4]
      250 GETIMPORT                        R14 K31 [table.freeze]
      252 DUPTABLE                         R15 K53 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["outgoingWires"], ["className"], ["isValueNode"], ["id"], ["nodeType"], ["name"], ["parentId"] = }]
      253 NEWTABLE                         R16 0 0
      255 SETTABLEKS                       R16 R15 K15 ["inputPinIds"]
      257 NEWTABLE                         R16 0 0
      259 SETTABLEKS                       R16 R15 K35 ["inputPinToConnectionMap"]
      261 NEWTABLE                         R16 0 0
      263 SETTABLEKS                       R16 R15 K37 ["inputLabelPinToConnectionMap"]
      265 SETTABLEKS                       R13 R15 K33 ["outputPinToConnectionMap"]
      267 GETUPVAL                         R17 6
      268 CALL                             R17 0 1
      269 JUMPIFNOT                        R17 ; [+4]
      270 JUMPIFNOT                        R12 ; [+3]
      271 GETTABLEKS                       R16 R12 K34 ["outgoingWires"]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R16
      275 SETTABLEKS                       R16 R15 K34 ["outgoingWires"]
      277 GETUPVAL                         R16 7
      278 GETTABLEKS                       R16 R16 K54 ["PARAMETER_NODE_CLASSNAME"]
      280 SETTABLEKS                       R16 R15 K38 ["className"]
      282 GETTABLEKS                       R17 R11 K55 ["parameterType"]
      284 GETUPVAL                         R18 7
      285 GETTABLEKS                       R18 R18 K56 ["EXPRESSION_NODE_CLASSNAME"]
      287 JUMPIFNOTEQ                      R17 R18 ; [+3]
      289 LOADB                            R16 1
      290 JUMP                             ; [+1]
      291 LOADNIL                          R16
      292 SETTABLEKS                       R16 R15 K39 ["isValueNode"]
      294 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      296 SETTABLEKS                       R16 R15 K40 ["id"]
      298 GETTABLEKS                       R16 R11 K55 ["parameterType"]
      300 SETTABLEKS                       R16 R15 K25 ["nodeType"]
      302 GETTABLEKS                       R16 R11 K57 ["parameterData"]
      304 GETTABLEKS                       R16 R16 K58 ["parameterBindingName"]
      306 SETTABLEKS                       R16 R15 K43 ["name"]
      308 CALL                             R14 1 1
      309 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      311 SETTABLE                         R14 R6 R15
      312 FORGLOOP                         R7 2 ; [-79]
      314 GETIMPORT                        R7 K31 [table.freeze]
      316 DUPTABLE                         R8 K62 [{"graphInstanceId", "lookup", "output"}]
      317 JUMPIFNOT                        R1 ; [+6]
      318 GETUPVAL                         R9 5
      319 MOVE                             R11 R1
      320 NAMECALL                         R9 R9 K63 ["instanceToId"]
      322 CALL                             R9 2 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R9
      325 SETTABLEKS                       R9 R8 K59 ["graphInstanceId"]
      327 GETIMPORT                        R9 K31 [table.freeze]
      329 MOVE                             R10 R6
      330 CALL                             R9 1 1
      331 SETTABLEKS                       R9 R8 K60 ["lookup"]
      333 SETTABLEKS                       R5 R8 K61 ["output"]
      335 CALL                             R7 1 -1
      336 RETURN                           R7 -1

PROTO_118:
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

PROTO_119:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_120:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+11]
       11 LOADK                            R4 K3 ["AnimationValueNodeDefinition"]
       12 NAMECALL                         R2 R1 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["of"]
       19 LOADNIL                          R3
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["observeNodeProps"]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R4 0
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K6 ["createComputed"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R0
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1

PROTO_121:
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

PROTO_122:
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

PROTO_123:
        0 JUMPIFNOT                        R3 ; [+3]
        1 GETTABLEKS                       R4 R3 K0 ["skipParameterLayoutConversion"]
        3 JUMPIF                           R4 ; [+6]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["observeGraphWithConvertedParameterLayout"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["switchMap"]
       13 MOVE                             R5 R2
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["observeNodeInfoLookupList"]
       22 MOVE                             R6 R0
       23 MOVE                             R7 R2
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["observeParameterNodeInfoLookupList"]
       28 MOVE                             R7 R0
       29 MOVE                             R8 R2
       30 CALL                             R6 2 1
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K5 ["createComputed"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K5 ["createComputed"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R7
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K6 ["observeRenderInfoMap"]
       53 MOVE                             R10 R0
       54 MOVE                             R11 R1
       55 MOVE                             R12 R8
       56 CALL                             R9 3 1
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R10 R10 K7 ["forEach"]
       60 MOVE                             R11 R8
       61 NEWCLOSURE                       R12 P3
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U2
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R11 R11 K5 ["createComputed"]
       70 NEWCLOSURE                       R12 P4
       71 CAPTURE                          VAL R10
       72 CALL                             R11 1 1
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K5 ["createComputed"]
       76 NEWCLOSURE                       R13 P5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CALL                             R12 1 -1
       82 CLOSEUPVALS                      R2
       83 RETURN                           R12 -1

PROTO_124:
        0 LOADK                            R2 K0 [Infinity]
        1 LOADK                            R3 K0 [Infinity]
        2 LOADK                            R4 K1 [-Infinity]
        3 LOADK                            R5 K1 [-Infinity]
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
       25 GETTABLEKS                       R16 R11 K5 ["size"]
       27 GETTABLEKS                       R16 R16 K9 ["X"]
       29 GETTABLEKS                       R18 R11 K5 ["size"]
       31 GETTABLEKS                       R18 R18 K10 ["Y"]
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

PROTO_125:
        0 GETTABLEKS                       R6 R0 K0 ["lookup"]
        2 GETTABLE                         R5 R6 R1
        3 JUMPIF                           R5 ; [+2]
        4 LOADNIL                          R6
        5 RETURN                           R6 1
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+11]
        9 JUMPIFEQKNIL                     R4 ; [+10]
       11 GETTABLEKS                       R7 R5 K1 ["inputConnectionsByInputId"]
       13 JUMPIFNOT                        R7 ; [+4]
       14 GETTABLEKS                       R7 R5 K1 ["inputConnectionsByInputId"]
       16 GETTABLE                         R6 R7 R4
       17 RETURN                           R6 1
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 JUMPIFEQKNIL                     R3 ; [+12]
       22 GETTABLEKS                       R7 R5 K2 ["inputPinIds"]
       24 GETTABLE                         R6 R7 R3
       25 GETTABLEKS                       R8 R5 K3 ["inputLabelPinToConnectionMap"]
       27 GETTABLE                         R7 R8 R2
       28 JUMPIFNOT                        R7 ; [+2]
       29 GETTABLE                         R8 R7 R6
       30 RETURN                           R8 1
       31 LOADNIL                          R8
       32 RETURN                           R8 1
       33 GETTABLEKS                       R7 R5 K4 ["inputPinToConnectionMap"]
       35 GETTABLE                         R6 R7 R2
       36 RETURN                           R6 1

PROTO_126:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_127:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+51]
        3 JUMPIFEQKNIL                     R5 ; [+50]
        5 MOVE                             R8 R5
        6 NAMECALL                         R6 R0 K0 ["idToInstance"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+5]
       10 LOADK                            R9 K1 ["ObjectValue"]
       11 NAMECALL                         R7 R6 K2 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIF                           R7 ; [+2]
       15 LOADB                            R7 0
       16 RETURN                           R7 1
       17 GETTABLEKS                       R7 R6 K3 ["Name"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K4 ["removeNodeInputConnection"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R1
       24 MOVE                             R11 R2
       25 MOVE                             R12 R7
       26 LOADNIL                          R13
       27 MOVE                             R14 R5
       28 CALL                             R8 6 0
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K5 ["removeOrderedInputPin"]
       32 MOVE                             R9 R0
       33 MOVE                             R10 R1
       34 MOVE                             R11 R2
       35 MOVE                             R12 R7
       36 CALL                             R8 4 0
       37 GETUPVAL                         R8 2
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+9]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K6 ["_removeInputLabelParameterWires"]
       43 MOVE                             R9 R0
       44 MOVE                             R10 R1
       45 MOVE                             R11 R2
       46 MOVE                             R12 R7
       47 MOVE                             R13 R6
       48 CALL                             R8 5 0
       49 LOADNIL                          R8
       50 SETTABLEKS                       R8 R6 K7 ["Parent"]
       52 LOADB                            R8 1
       53 RETURN                           R8 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K8 ["_findNodeInputBinding"]
       57 MOVE                             R7 R1
       58 MOVE                             R8 R2
       59 MOVE                             R9 R3
       60 MOVE                             R10 R4
       61 CALL                             R6 4 1
       62 JUMPIF                           R6 ; [+2]
       63 LOADB                            R7 0
       64 RETURN                           R7 1
       65 GETTABLEKS                       R9 R6 K9 ["wireId"]
       67 NAMECALL                         R7 R0 K0 ["idToInstance"]
       69 CALL                             R7 2 1
       70 JUMPIF                           R7 ; [+2]
       71 LOADB                            R8 0
       72 RETURN                           R8 1
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K4 ["removeNodeInputConnection"]
       76 MOVE                             R9 R0
       77 MOVE                             R10 R1
       78 MOVE                             R11 R2
       79 MOVE                             R12 R3
       80 MOVE                             R13 R4
       81 CALL                             R8 5 0
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K5 ["removeOrderedInputPin"]
       85 MOVE                             R9 R0
       86 MOVE                             R10 R1
       87 MOVE                             R11 R2
       88 MOVE                             R12 R3
       89 CALL                             R8 4 0
       90 GETUPVAL                         R8 2
       91 CALL                             R8 0 1
       92 JUMPIFNOT                        R8 ; [+9]
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R8 R8 K6 ["_removeInputLabelParameterWires"]
       96 MOVE                             R9 R0
       97 MOVE                             R10 R1
       98 MOVE                             R11 R2
       99 MOVE                             R12 R3
      100 MOVE                             R13 R7
      101 CALL                             R8 5 0
      102 LOADNIL                          R8
      103 SETTABLEKS                       R8 R7 K7 ["Parent"]
      105 LOADB                            R8 1
      106 RETURN                           R8 1

PROTO_128:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["_findNodeInputBinding"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 MOVE                             R10 R4
        7 MOVE                             R11 R5
        8 CALL                             R6 5 1
        9 JUMPIFNOT                        R6 ; [+28]
       10 GETTABLEKS                       R7 R6 K1 ["outputNodeId"]
       12 JUMPIFEQKNIL                     R7 ; [+25]
       14 GETUPVAL                         R7 1
       15 CALL                             R7 0 1
       16 JUMPIFNOT                        R7 ; [+10]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["_removeConnectionBinding"]
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 GETTABLEKS                       R10 R6 K1 ["outputNodeId"]
       24 MOVE                             R11 R6
       25 CALL                             R7 4 -1
       26 RETURN                           R7 -1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K3 ["removeNodeOutputConnection"]
       30 MOVE                             R8 R0
       31 MOVE                             R9 R1
       32 GETTABLEKS                       R10 R6 K1 ["outputNodeId"]
       34 GETTABLEKS                       R11 R6 K4 ["outputNodePinId"]
       36 CALL                             R7 4 -1
       37 RETURN                           R7 -1
       38 LOADB                            R7 0
       39 RETURN                           R7 1

PROTO_129:
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

PROTO_130:
        0 LOADK                            R3 K0 ["ObjectValue"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K2 ["Value"]
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["isValueOutputEndpoint"]
       13 GETTABLEKS                       R2 R0 K2 ["Value"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_131:
        0 MOVE                             R6 R2
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+30]
        5 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+25]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["hasDynamicInputPins"]
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

PROTO_132:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["_findNodeOutputBinding"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIF                           R4 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["_removeConnectionBinding"]
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 MOVE                             R9 R4
       17 CALL                             R5 4 -1
       18 RETURN                           R5 -1

PROTO_133:
        0 GETTABLEKS                       R6 R3 K0 ["wireId"]
        2 NAMECALL                         R4 R0 K1 ["idToInstance"]
        4 CALL                             R4 2 1
        5 JUMPIF                           R4 ; [+2]
        6 LOADB                            R5 0
        7 RETURN                           R5 1
        8 GETTABLEKS                       R7 R3 K2 ["inputNodeId"]
       10 NAMECALL                         R5 R0 K1 ["idToInstance"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R4 ; [+103]
       14 GETTABLEKS                       R6 R4 K3 ["Parent"]
       16 JUMPIFNOT                        R6 ; [+100]
       17 GETUPVAL                         R6 0
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+27]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K4 ["isAValueNodeWire"]
       23 MOVE                             R7 R4
       24 CALL                             R6 1 1
       25 JUMPIFNOT                        R6 ; [+21]
       26 LOADK                            R9 K5 ["ObjectValue"]
       27 NAMECALL                         R7 R4 K6 ["IsA"]
       29 CALL                             R7 2 1
       30 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       32 LOADK                            R8 K7 ["Expected wire to be an ObjectValue for value node connection"]
       33 GETIMPORT                        R6 K9 [assert]
       35 CALL                             R6 2 0
       36 GETTABLEKS                       R6 R4 K10 ["Value"]
       38 JUMPIFNOT                        R6 ; [+3]
       39 LOADNIL                          R7
       40 SETTABLEKS                       R7 R6 K3 ["Parent"]
       42 LOADNIL                          R7
       43 SETTABLEKS                       R7 R4 K3 ["Parent"]
       45 LOADB                            R7 1
       46 RETURN                           R7 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K11 ["isAParameterWire"]
       50 MOVE                             R7 R0
       51 MOVE                             R8 R2
       52 MOVE                             R9 R4
       53 CALL                             R6 3 1
       54 LOADK                            R9 K5 ["ObjectValue"]
       55 NAMECALL                         R7 R4 K6 ["IsA"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+23]
       59 JUMPIFNOT                        R6 ; [+22]
       60 GETTABLEKS                       R8 R4 K10 ["Value"]
       62 JUMPIFNOT                        R8 ; [+10]
       63 GETTABLEKS                       R8 R4 K10 ["Value"]
       65 LOADK                            R10 K5 ["ObjectValue"]
       66 NAMECALL                         R8 R8 K6 ["IsA"]
       68 CALL                             R8 2 1
       69 JUMPIFNOT                        R8 ; [+3]
       70 GETTABLEKS                       R7 R4 K10 ["Value"]
       72 JUMP                             ; [+1]
       73 MOVE                             R7 R5
       74 JUMPIFNOT                        R7 ; [+26]
       75 GETTABLEKS                       R10 R3 K12 ["inputNodePinId"]
       77 LOADNIL                          R11
       78 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       80 CALL                             R8 3 0
       81 JUMP                             ; [+19]
       82 GETUPVAL                         R7 2
       83 CALL                             R7 0 1
       84 JUMPIFNOT                        R7 ; [+5]
       85 LOADK                            R9 K5 ["ObjectValue"]
       86 NAMECALL                         R7 R4 K6 ["IsA"]
       88 CALL                             R7 2 1
       89 JUMPIF                           R7 ; [+11]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K14 ["_removeInputLabelParameterWires"]
       93 MOVE                             R8 R0
       94 MOVE                             R9 R1
       95 GETTABLEKS                       R10 R3 K2 ["inputNodeId"]
       97 GETTABLEKS                       R11 R3 K12 ["inputNodePinId"]
       99 MOVE                             R12 R4
      100 CALL                             R7 5 0
      101 LOADK                            R9 K5 ["ObjectValue"]
      102 NAMECALL                         R7 R4 K6 ["IsA"]
      104 CALL                             R7 2 1
      105 JUMPIFNOT                        R7 ; [+8]
      106 GETUPVAL                         R7 3
      107 CALL                             R7 0 1
      108 JUMPIFNOT                        R7 ; [+1]
      109 JUMPIF                           R6 ; [+4]
      110 LOADNIL                          R7
      111 SETTABLEKS                       R7 R4 K10 ["Value"]
      113 JUMP                             ; [+3]
      114 LOADNIL                          R7
      115 SETTABLEKS                       R7 R4 K3 ["Parent"]
      117 LOADB                            R6 1
      118 RETURN                           R6 1

PROTO_134:
        0 GETTABLEKS                       R6 R1 K0 ["lookup"]
        2 GETTABLE                         R5 R6 R2
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R6 R5 K1 ["inputLabelPinToConnectionMap"]
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETTABLE                         R11 R10 R3
       11 JUMPIFNOT                        R11 ; [+30]
       12 GETTABLEKS                       R14 R11 K2 ["wireId"]
       14 NAMECALL                         R12 R0 K3 ["idToInstance"]
       16 CALL                             R12 2 1
       17 JUMPIFNOT                        R12 ; [+24]
       18 GETTABLEKS                       R15 R11 K4 ["inputNodePinId"]
       20 LOADNIL                          R16
       21 NAMECALL                         R13 R4 K5 ["SetAttribute"]
       23 CALL                             R13 3 0
       24 GETUPVAL                         R13 0
       25 CALL                             R13 0 1
       26 JUMPIFNOT                        R13 ; [+12]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R13 R13 K6 ["isAValueNodeWire"]
       30 MOVE                             R14 R12
       31 CALL                             R13 1 1
       32 JUMPIFNOT                        R13 ; [+6]
       33 GETTABLEKS                       R13 R12 K7 ["Value"]
       35 JUMPIFNOT                        R13 ; [+3]
       36 LOADNIL                          R14
       37 SETTABLEKS                       R14 R13 K8 ["Parent"]
       39 LOADNIL                          R13
       40 SETTABLEKS                       R13 R12 K8 ["Parent"]
       42 FORGLOOP                         R6 2 ; [-33]
       44 RETURN                           R0 0

PROTO_135:
        0 LOADK                            R1 K0 ["connectionHint_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_136:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_137:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["ObjectValue"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+14]
        9 GETTABLEKS                       R7 R6 K3 ["Value"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K4 ["getParameterWireInputPinId"]
       14 GETTABLEKS                       R9 R6 K5 ["Name"]
       16 CALL                             R8 1 1
       17 JUMPIFNOT                        R7 ; [+5]
       18 JUMPIFNOT                        R8 ; [+4]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 MOVE                             R11 R8
       22 CALL                             R9 2 0
       23 FORGLOOP                         R2 2 ; [-20]
       25 RETURN                           R0 0

PROTO_138:
        0 MOVE                             R4 R1
        1 LOADNIL                          R5
        2 NAMECALL                         R2 R0 K0 ["SetAttribute"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_139:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_138]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_140:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setParameterBindingName"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_141:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_142:
        0 JUMPIFEQKNIL                     R6 ; [+13]
        2 MOVE                             R11 R1
        3 NAMECALL                         R9 R6 K0 ["IsDescendantOf"]
        5 CALL                             R9 2 1
        6 JUMPIFNOT                        R9 ; [+7]
        7 LOADK                            R11 K1 ["ObjectValue"]
        8 NAMECALL                         R9 R6 K2 ["IsA"]
       10 CALL                             R9 2 1
       11 JUMPIFNOT                        R9 ; [+2]
       12 MOVE                             R8 R6
       13 JUMP                             ; [+4]
       14 GETIMPORT                        R8 K5 [Instance.new]
       16 LOADK                            R9 K1 ["ObjectValue"]
       17 CALL                             R8 1 1
       18 GETTABLEKS                       R9 R8 K6 ["Value"]
       20 GETUPVAL                         R10 0
       21 CALL                             R10 0 1
       22 JUMPIFNOT                        R10 ; [+11]
       23 JUMPIFEQKNIL                     R9 ; [+10]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K7 ["isValueOutputEndpoint"]
       28 MOVE                             R11 R9
       29 CALL                             R10 1 1
       30 JUMPIFNOT                        R10 ; [+3]
       31 LOADNIL                          R10
       32 SETTABLEKS                       R10 R9 K8 ["Parent"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K9 ["getParameterWireName"]
       37 MOVE                             R11 R4
       38 CALL                             R10 1 1
       39 SETTABLEKS                       R10 R8 K10 ["Name"]
       41 OR                               R10 R7 R2
       42 SETTABLEKS                       R10 R8 K6 ["Value"]
       44 SETTABLEKS                       R5 R8 K8 ["Parent"]
       46 GETUPVAL                         R11 2
       47 CALL                             R11 0 1
       48 JUMPIFNOT                        R11 ; [+6]
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K11 ["getParameterBindingName"]
       52 MOVE                             R11 R5
       53 CALL                             R10 1 1
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R12 R12 K12 ["NODE_ATTRIBUTES"]
       58 GETTABLEKS                       R12 R12 K13 ["BindingName"]
       60 NAMECALL                         R10 R5 K14 ["GetAttribute"]
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K15 ["setParameterBindingName"]
       66 OR                               R12 R7 R2
       67 MOVE                             R13 R4
       68 MOVE                             R14 R10
       69 CALL                             R11 3 0
       70 MOVE                             R13 R8
       71 NAMECALL                         R11 R0 K16 ["instanceToId"]
       73 CALL                             R11 2 1
       74 MOVE                             R12 R4
       75 RETURN                           R11 2

PROTO_143:
        0 OR                               R7 R6 R2
        1 MOVE                             R10 R3
        2 LOADNIL                          R11
        3 NAMECALL                         R8 R7 K0 ["SetAttribute"]
        5 CALL                             R8 3 0
        6 JUMPIFEQKNIL                     R5 ; [+13]
        8 MOVE                             R11 R1
        9 NAMECALL                         R9 R5 K1 ["IsDescendantOf"]
       11 CALL                             R9 2 1
       12 JUMPIFNOT                        R9 ; [+7]
       13 LOADK                            R11 K2 ["ObjectValue"]
       14 NAMECALL                         R9 R5 K3 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+2]
       18 MOVE                             R8 R5
       19 JUMP                             ; [+4]
       20 GETIMPORT                        R8 K6 [Instance.new]
       22 LOADK                            R9 K2 ["ObjectValue"]
       23 CALL                             R8 1 1
       24 GETTABLEKS                       R9 R8 K7 ["Value"]
       26 LOADNIL                          R10
       27 JUMPIFNOT                        R9 ; [+11]
       28 LOADK                            R13 K8 ["AnimationValueOutputDefinition"]
       29 NAMECALL                         R11 R9 K3 ["IsA"]
       31 CALL                             R11 2 1
       32 JUMPIFNOT                        R11 ; [+6]
       33 GETTABLEKS                       R11 R9 K9 ["Parent"]
       35 JUMPIFNOTEQ                      R11 R4 ; [+3]
       37 MOVE                             R10 R9
       38 JUMP                             ; [+17]
       39 JUMPIFNOT                        R9 ; [+9]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K10 ["isValueOutputEndpoint"]
       43 MOVE                             R12 R9
       44 CALL                             R11 1 1
       45 JUMPIFNOT                        R11 ; [+3]
       46 LOADNIL                          R11
       47 SETTABLEKS                       R11 R9 K9 ["Parent"]
       49 GETIMPORT                        R11 K6 [Instance.new]
       51 LOADK                            R12 K8 ["AnimationValueOutputDefinition"]
       52 CALL                             R11 1 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R4 R10 K9 ["Parent"]
       56 SETTABLEKS                       R3 R8 K11 ["Name"]
       58 SETTABLEKS                       R10 R8 K7 ["Value"]
       60 SETTABLEKS                       R7 R8 K9 ["Parent"]
       62 MOVE                             R13 R8
       63 NAMECALL                         R11 R0 K12 ["instanceToId"]
       65 CALL                             R11 2 1
       66 MOVE                             R12 R3
       67 MOVE                             R13 R8
       68 RETURN                           R11 3

PROTO_144:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
       13 GETTABLEKS                       R4 R4 K3 ["Position"]
       15 NAMECALL                         R2 R1 K4 ["GetAttribute"]
       17 CALL                             R2 2 1
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K6 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K7 ["Vector2"] ; [+3]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1
       27 LOADNIL                          R3
       28 RETURN                           R3 1

PROTO_145:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 LOADB                            R4 1
        3 JUMPIFNOT                        R4 ; [+57]
        4 LOADB                            R4 0
        5 NAMECALL                         R5 R0 K0 ["GetChildren"]
        7 CALL                             R5 1 3
        8 FORGPREP                         R5
        9 LOADK                            R12 K1 ["ObjectValue"]
       10 NAMECALL                         R10 R9 K2 ["IsA"]
       12 CALL                             R10 2 1
       13 JUMPIFNOT                        R10 ; [+44]
       14 JUMPIFEQ                         R9 R1 ; [+43]
       16 GETUPVAL                         R13 0
       17 GETTABLEKS                       R13 R13 K3 ["NODE_CONFIGURATION_NAME"]
       19 NAMECALL                         R11 R9 K4 ["FindFirstChild"]
       21 CALL                             R11 2 1
       22 JUMPIFNOTEQKNIL                  R11 ; [+3]
       24 LOADNIL                          R10
       25 JUMP                             ; [+18]
       26 GETUPVAL                         R14 0
       27 GETTABLEKS                       R14 R14 K5 ["NODE_ATTRIBUTES"]
       29 GETTABLEKS                       R14 R14 K6 ["Position"]
       31 NAMECALL                         R12 R11 K7 ["GetAttribute"]
       33 CALL                             R12 2 1
       34 FASTCALL1                        TYPEOF R12 ; [+3]
       35 MOVE                             R14 R12
       36 GETIMPORT                        R13 K9 [typeof]
       38 CALL                             R13 1 1
       39 JUMPIFNOTEQKS                    R13 K10 ["Vector2"] ; [+3]
       41 MOVE                             R10 R12
       42 JUMP                             ; [+1]
       43 LOADNIL                          R10
       44 JUMPIFEQKNIL                     R10 ; [+13]
       46 GETTABLEKS                       R11 R10 K11 ["X"]
       48 JUMPIFNOTEQ                      R11 R2 ; [+9]
       50 GETTABLEKS                       R11 R10 K12 ["Y"]
       52 JUMPIFNOTEQ                      R11 R3 ; [+5]
       54 ADDK                             R2 R2 K13 [20]
       55 SUBK                             R3 R3 K13 [20]
       56 LOADB                            R4 1
       57 JUMP                             ; [+2]
       58 FORGLOOP                         R5 2 ; [-50]
       60 JUMPBACK                         ; [-58]
       61 GETIMPORT                        R5 K15 [Vector2.new]
       63 MOVE                             R6 R2
       64 MOVE                             R7 R3
       65 CALL                             R5 2 -1
       66 RETURN                           R5 -1

PROTO_146:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["NodeType"]
        7 GETIMPORT                        R3 K4 [Enum.AnimationNodeType.StateMachineNode]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["refreshTransitionNamesForState"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K6 ["NODE_CONFIGURATION_NAME"]
       21 NAMECALL                         R3 R1 K7 ["FindFirstChild"]
       23 CALL                             R3 2 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+3]
       26 LOADNIL                          R2
       27 JUMP                             ; [+18]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K8 ["NODE_ATTRIBUTES"]
       31 GETTABLEKS                       R6 R6 K9 ["Position"]
       33 NAMECALL                         R4 R3 K10 ["GetAttribute"]
       35 CALL                             R4 2 1
       36 FASTCALL1                        TYPEOF R4 ; [+3]
       37 MOVE                             R6 R4
       38 GETIMPORT                        R5 K12 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFNOTEQKS                    R5 K13 ["Vector2"] ; [+3]
       43 MOVE                             R2 R4
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 JUMPIFNOTEQKNIL                  R2 ; [+10]
       48 GETUPVAL                         R2 4
       49 GETTABLEKS                       R2 R2 K14 ["setNodePosition"]
       51 MOVE                             R3 R1
       52 GETUPVAL                         R4 5
       53 MOVE                             R5 R0
       54 MOVE                             R6 R1
       55 CALL                             R4 2 -1
       56 CALL                             R2 -1 0
       57 RETURN                           R0 0

PROTO_147:
        0 MOVE                             R10 R2
        1 NAMECALL                         R8 R0 K0 ["idToInstance"]
        3 CALL                             R8 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 MOVE                             R11 R4
        7 NAMECALL                         R9 R0 K0 ["idToInstance"]
        9 CALL                             R9 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R9
       12 JUMPIFEQKNIL                     R8 ; [+6]
       14 LOADK                            R12 K1 ["AnimationNodeDefinition"]
       15 NAMECALL                         R10 R8 K2 ["IsA"]
       17 CALL                             R10 2 1
       18 JUMPIF                           R10 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R12 K3 ["AnimationGraphDefinition"]
       21 NAMECALL                         R10 R8 K4 ["FindFirstAncestorWhichIsA"]
       23 CALL                             R10 2 1
       24 JUMPIF                           R10 ; [+1]
       25 RETURN                           R0 0
       26 LOADNIL                          R11
       27 LOADNIL                          R12
       28 JUMPIFNOT                        R9 ; [+38]
       29 JUMPIFNOT                        R4 ; [+37]
       30 JUMPIFNOT                        R5 ; [+36]
       31 LOADK                            R15 K1 ["AnimationNodeDefinition"]
       32 NAMECALL                         R13 R9 K2 ["IsA"]
       34 CALL                             R13 2 1
       35 JUMPIF                           R13 ; [+14]
       36 LOADK                            R15 K5 ["Folder"]
       37 NAMECALL                         R13 R9 K2 ["IsA"]
       39 CALL                             R13 2 1
       40 JUMPIF                           R13 ; [+9]
       41 GETUPVAL                         R13 0
       42 CALL                             R13 0 1
       43 JUMPIFNOT                        R13 ; [+23]
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K6 ["isValueNode"]
       47 MOVE                             R14 R9
       48 CALL                             R13 1 1
       49 JUMPIFNOT                        R13 ; [+17]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K7 ["_findNodeOutputBinding"]
       53 MOVE                             R14 R1
       54 MOVE                             R15 R4
       55 MOVE                             R16 R5
       56 CALL                             R13 3 1
       57 MOVE                             R11 R13
       58 JUMPIFNOT                        R11 ; [+7]
       59 GETTABLEKS                       R15 R11 K8 ["wireId"]
       61 NAMECALL                         R13 R0 K0 ["idToInstance"]
       63 CALL                             R13 2 1
       64 MOVE                             R12 R13
       65 JUMP                             ; [+1]
       66 LOADNIL                          R12
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K9 ["_findNodeInputBinding"]
       70 MOVE                             R14 R1
       71 MOVE                             R15 R2
       72 MOVE                             R16 R3
       73 MOVE                             R17 R6
       74 MOVE                             R18 R7
       75 CALL                             R13 5 1
       76 JUMPIFNOT                        R13 ; [+6]
       77 GETTABLEKS                       R16 R13 K8 ["wireId"]
       79 NAMECALL                         R14 R0 K0 ["idToInstance"]
       81 CALL                             R14 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R14
       84 GETUPVAL                         R15 0
       85 CALL                             R15 0 1
       86 JUMPIFNOT                        R15 ; [+52]
       87 JUMPIFNOT                        R9 ; [+51]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K6 ["isValueNode"]
       91 MOVE                             R16 R9
       92 CALL                             R15 1 1
       93 JUMPIFNOT                        R15 ; [+45]
       94 GETUPVAL                         R15 2
       95 GETTABLEKS                       R15 R15 K10 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
       97 CALL                             R15 0 1
       98 JUMPIF                           R15 ; [+8]
       99 JUMPIFNOTEQKNIL                  R6 ; [+3]
      101 JUMPIFEQKNIL                     R7 ; [+5]
      103 LOADNIL                          R15
      104 LOADNIL                          R16
      105 LOADNIL                          R17
      106 RETURN                           R15 3
      107 LOADNIL                          R15
      108 JUMPIFEQKNIL                     R6 ; [+18]
      110 NAMECALL                         R16 R8 K11 ["GetOrderedInputPinNames"]
      112 CALL                             R16 1 1
      113 GETTABLE                         R17 R16 R6
      114 JUMPIFNOT                        R17 ; [+12]
      115 MOVE                             R20 R17
      116 NAMECALL                         R18 R8 K12 ["FindFirstChild"]
      118 CALL                             R18 2 1
      119 JUMPIFEQKNIL                     R18 ; [+7]
      121 LOADK                            R21 K13 ["ObjectValue"]
      122 NAMECALL                         R19 R18 K2 ["IsA"]
      124 CALL                             R19 2 1
      125 JUMPIFNOT                        R19 ; [+1]
      126 MOVE                             R15 R18
      127 GETUPVAL                         R16 1
      128 GETTABLEKS                       R16 R16 K14 ["setValueNodeConnection"]
      130 MOVE                             R17 R0
      131 MOVE                             R18 R10
      132 MOVE                             R19 R8
      133 MOVE                             R20 R3
      134 MOVE                             R21 R9
      135 MOVE                             R22 R14
      136 MOVE                             R23 R15
      137 CALL                             R16 7 -1
      138 RETURN                           R16 -1
      139 JUMPIFNOT                        R9 ; [+56]
      140 LOADK                            R17 K5 ["Folder"]
      141 NAMECALL                         R15 R9 K2 ["IsA"]
      143 CALL                             R15 2 1
      144 JUMPIFNOT                        R15 ; [+51]
      145 LOADNIL                          R15
      146 GETUPVAL                         R16 3
      147 CALL                             R16 0 1
      148 JUMPIFNOT                        R16 ; [+15]
      149 JUMPIFEQKNIL                     R7 ; [+14]
      151 MOVE                             R18 R7
      152 NAMECALL                         R16 R0 K0 ["idToInstance"]
      154 CALL                             R16 2 1
      155 JUMPIFEQKNIL                     R16 ; [+27]
      157 LOADK                            R19 K13 ["ObjectValue"]
      158 NAMECALL                         R17 R16 K2 ["IsA"]
      160 CALL                             R17 2 1
      161 JUMPIFNOT                        R17 ; [+21]
      162 MOVE                             R15 R16
      163 JUMP                             ; [+19]
      164 JUMPIFEQKNIL                     R6 ; [+18]
      166 NAMECALL                         R16 R8 K11 ["GetOrderedInputPinNames"]
      168 CALL                             R16 1 1
      169 GETTABLE                         R17 R16 R6
      170 JUMPIFNOT                        R17 ; [+12]
      171 MOVE                             R20 R17
      172 NAMECALL                         R18 R8 K12 ["FindFirstChild"]
      174 CALL                             R18 2 1
      175 JUMPIFEQKNIL                     R18 ; [+7]
      177 LOADK                            R21 K13 ["ObjectValue"]
      178 NAMECALL                         R19 R18 K2 ["IsA"]
      180 CALL                             R19 2 1
      181 JUMPIFNOT                        R19 ; [+1]
      182 MOVE                             R15 R18
      183 GETUPVAL                         R16 1
      184 GETTABLEKS                       R16 R16 K15 ["setParameterConnection"]
      186 MOVE                             R17 R0
      187 MOVE                             R18 R10
      188 MOVE                             R19 R8
      189 MOVE                             R20 R2
      190 MOVE                             R21 R3
      191 MOVE                             R22 R9
      192 MOVE                             R23 R14
      193 MOVE                             R24 R15
      194 CALL                             R16 8 -1
      195 RETURN                           R16 -1
      196 GETUPVAL                         R15 3
      197 CALL                             R15 0 1
      198 JUMPIFNOT                        R15 ; [+181]
      199 JUMPIFEQKNIL                     R7 ; [+6]
      201 MOVE                             R17 R7
      202 NAMECALL                         R15 R0 K0 ["idToInstance"]
      204 CALL                             R15 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R15
      207 JUMPIFEQKNIL                     R4 ; [+17]
      209 JUMPIFEQKNIL                     R5 ; [+15]
      211 JUMPIFEQKNIL                     R12 ; [+13]
      213 JUMPIFEQ                         R12 R15 ; [+11]
      215 JUMPIFEQ                         R12 R14 ; [+9]
      217 GETUPVAL                         R16 1
      218 GETTABLEKS                       R16 R16 K16 ["removeNodeOutputConnection"]
      220 MOVE                             R17 R0
      221 MOVE                             R18 R1
      222 MOVE                             R19 R4
      223 MOVE                             R20 R5
      224 CALL                             R16 4 0
      225 GETUPVAL                         R16 1
      226 GETTABLEKS                       R16 R16 K17 ["hasDynamicInputPins"]
      228 MOVE                             R17 R1
      229 MOVE                             R18 R2
      230 CALL                             R16 2 1
      231 LOADNIL                          R17
      232 LOADNIL                          R18
      233 JUMPIFEQKNIL                     R15 ; [+15]
      235 LOADK                            R21 K13 ["ObjectValue"]
      236 NAMECALL                         R19 R15 K2 ["IsA"]
      238 CALL                             R19 2 1
      239 JUMPIFNOT                        R19 ; [+9]
      240 MOVE                             R21 R10
      241 NAMECALL                         R19 R15 K18 ["IsDescendantOf"]
      243 CALL                             R19 2 1
      244 JUMPIFNOT                        R19 ; [+4]
      245 MOVE                             R17 R15
      246 GETTABLEKS                       R18 R17 K19 ["Name"]
      248 JUMP                             ; [+117]
      249 NAMECALL                         R19 R8 K11 ["GetOrderedInputPinNames"]
      251 CALL                             R19 1 1
      252 JUMPIFNOT                        R16 ; [+73]
      253 MOVE                             R20 R3
      254 JUMPIFNOT                        R9 ; [+63]
      255 JUMPIFNOT                        R4 ; [+62]
      256 GETUPVAL                         R22 4
      257 GETTABLEKS                       R22 R22 K20 ["NODE_CONFIGURATION_NAME"]
      259 LOADK                            R25 K21 ["Configuration"]
      260 NAMECALL                         R23 R9 K2 ["IsA"]
      262 CALL                             R23 2 1
      263 JUMPIFNOT                        R23 ; [+2]
      264 MOVE                             R21 R9
      265 JUMP                             ; [+17]
      266 MOVE                             R25 R22
      267 NAMECALL                         R23 R9 K12 ["FindFirstChild"]
      269 CALL                             R23 2 1
      270 JUMPIFEQKNIL                     R23 ; [+3]
      272 MOVE                             R21 R23
      273 JUMP                             ; [+9]
      274 GETIMPORT                        R23 K24 [Instance.new]
      276 LOADK                            R24 K21 ["Configuration"]
      277 CALL                             R23 1 1
      278 SETTABLEKS                       R22 R23 K19 ["Name"]
      280 SETTABLEKS                       R9 R23 K25 ["Parent"]
      282 MOVE                             R21 R23
      283 GETUPVAL                         R23 4
      284 GETTABLEKS                       R23 R23 K26 ["NODE_ATTRIBUTES"]
      286 GETTABLEKS                       R23 R23 K27 ["DisplayName"]
      288 NAMECALL                         R21 R21 K28 ["GetAttribute"]
      290 CALL                             R21 2 1
      291 GETTABLEKS                       R24 R1 K29 ["lookup"]
      293 GETTABLE                         R23 R24 R4
      294 JUMPIFNOT                        R23 ; [+6]
      295 GETTABLEKS                       R23 R1 K29 ["lookup"]
      297 GETTABLE                         R22 R23 R4
      298 GETTABLEKS                       R22 R22 K30 ["name"]
      300 JUMPIF                           R22 ; [+2]
      301 GETTABLEKS                       R22 R9 K19 ["Name"]
      303 LOADK                            R25 K31 ["Node%d*$"]
      304 LOADK                            R26 K32 [""]
      305 NAMECALL                         R23 R22 K33 ["gsub"]
      307 CALL                             R23 3 1
      308 MOVE                             R22 R23
      309 JUMPIFNOT                        R21 ; [+7]
      310 FASTCALL1                        TOSTRING R21 ; [+3]
      311 MOVE                             R24 R21
      312 GETIMPORT                        R23 K35 [tostring]
      314 CALL                             R23 1 1
      315 MOVE                             R20 R23
      316 JUMP                             ; [+1]
      317 MOVE                             R20 R22
      318 GETUPVAL                         R21 1
      319 GETTABLEKS                       R21 R21 K36 ["getDynamicInputPinNameFromInputPinIds"]
      321 MOVE                             R22 R19
      322 MOVE                             R23 R20
      323 CALL                             R21 2 1
      324 MOVE                             R18 R21
      325 JUMP                             ; [+1]
      326 MOVE                             R18 R3
      327 MOVE                             R22 R18
      328 NAMECALL                         R20 R8 K12 ["FindFirstChild"]
      330 CALL                             R20 2 1
      331 JUMPIFEQKNIL                     R20 ; [+8]
      333 LOADK                            R23 K13 ["ObjectValue"]
      334 NAMECALL                         R21 R20 K2 ["IsA"]
      336 CALL                             R21 2 1
      337 JUMPIFNOT                        R21 ; [+2]
      338 MOVE                             R17 R20
      339 JUMP                             ; [+9]
      340 GETIMPORT                        R21 K24 [Instance.new]
      342 LOADK                            R22 K13 ["ObjectValue"]
      343 CALL                             R21 1 1
      344 MOVE                             R17 R21
      345 SETTABLEKS                       R18 R17 K19 ["Name"]
      347 SETTABLEKS                       R8 R17 K25 ["Parent"]
      349 GETIMPORT                        R21 K39 [table.find]
      351 MOVE                             R22 R19
      352 MOVE                             R23 R18
      353 CALL                             R21 2 1
      354 JUMPIF                           R21 ; [+11]
      355 FASTCALL2                        TABLE_INSERT R19 R18 ; [+5]
      357 MOVE                             R22 R19
      358 MOVE                             R23 R18
      359 GETIMPORT                        R21 K41 [table.insert]
      361 CALL                             R21 2 0
      362 MOVE                             R23 R19
      363 NAMECALL                         R21 R8 K42 ["SetOrderedInputPinNames"]
      365 CALL                             R21 2 0
      366 SETTABLEKS                       R9 R17 K43 ["Value"]
      368 MOVE                             R21 R17
      369 NAMECALL                         R19 R0 K44 ["ensureInputId"]
      371 CALL                             R19 2 1
      372 GETUPVAL                         R20 5
      373 MOVE                             R21 R8
      374 MOVE                             R22 R17
      375 CALL                             R20 2 0
      376 MOVE                             R20 R19
      377 MOVE                             R21 R18
      378 MOVE                             R22 R17
      379 RETURN                           R20 3
      380 LOADNIL                          R15
      381 GETUPVAL                         R16 1
      382 GETTABLEKS                       R16 R16 K17 ["hasDynamicInputPins"]
      384 MOVE                             R17 R1
      385 MOVE                             R18 R2
      386 CALL                             R16 2 1
      387 JUMPIFNOT                        R16 ; [+105]
      388 NAMECALL                         R16 R8 K11 ["GetOrderedInputPinNames"]
      390 CALL                             R16 1 1
      391 JUMPIFNOT                        R11 ; [+7]
      392 GETIMPORT                        R17 K39 [table.find]
      394 MOVE                             R18 R16
      395 GETTABLEKS                       R19 R11 K45 ["inputNodePinId"]
      397 CALL                             R17 2 1
      398 JUMP                             ; [+1]
      399 LOADNIL                          R17
      400 JUMPIFNOT                        R17 ; [+5]
      401 GETIMPORT                        R18 K47 [table.remove]
      403 MOVE                             R19 R16
      404 MOVE                             R20 R17
      405 CALL                             R18 2 0
      406 JUMPIFNOT                        R13 ; [+7]
      407 GETIMPORT                        R18 K39 [table.find]
      409 MOVE                             R19 R16
      410 GETTABLEKS                       R20 R13 K45 ["inputNodePinId"]
      412 CALL                             R18 2 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R18
      415 JUMPIFNOT                        R18 ; [+5]
      416 GETIMPORT                        R19 K47 [table.remove]
      418 MOVE                             R20 R16
      419 MOVE                             R21 R18
      420 CALL                             R19 2 0
      421 JUMPIFNOT                        R9 ; [+69]
      422 JUMPIFNOT                        R4 ; [+68]
      423 GETUPVAL                         R20 4
      424 GETTABLEKS                       R20 R20 K20 ["NODE_CONFIGURATION_NAME"]
      426 LOADK                            R23 K21 ["Configuration"]
      427 NAMECALL                         R21 R9 K2 ["IsA"]
      429 CALL                             R21 2 1
      430 JUMPIFNOT                        R21 ; [+2]
      431 MOVE                             R19 R9
      432 JUMP                             ; [+17]
      433 MOVE                             R23 R20
      434 NAMECALL                         R21 R9 K12 ["FindFirstChild"]
      436 CALL                             R21 2 1
      437 JUMPIFEQKNIL                     R21 ; [+3]
      439 MOVE                             R19 R21
      440 JUMP                             ; [+9]
      441 GETIMPORT                        R21 K24 [Instance.new]
      443 LOADK                            R22 K21 ["Configuration"]
      444 CALL                             R21 1 1
      445 SETTABLEKS                       R20 R21 K19 ["Name"]
      447 SETTABLEKS                       R9 R21 K25 ["Parent"]
      449 MOVE                             R19 R21
      450 GETUPVAL                         R21 4
      451 GETTABLEKS                       R21 R21 K26 ["NODE_ATTRIBUTES"]
      453 GETTABLEKS                       R21 R21 K27 ["DisplayName"]
      455 NAMECALL                         R19 R19 K28 ["GetAttribute"]
      457 CALL                             R19 2 1
      458 GETTABLEKS                       R22 R1 K29 ["lookup"]
      460 GETTABLE                         R21 R22 R4
      461 JUMPIFNOT                        R21 ; [+6]
      462 GETTABLEKS                       R21 R1 K29 ["lookup"]
      464 GETTABLE                         R20 R21 R4
      465 GETTABLEKS                       R20 R20 K30 ["name"]
      467 JUMPIF                           R20 ; [+2]
      468 GETTABLEKS                       R20 R9 K19 ["Name"]
      470 LOADK                            R23 K31 ["Node%d*$"]
      471 LOADK                            R24 K32 [""]
      472 NAMECALL                         R21 R20 K33 ["gsub"]
      474 CALL                             R21 3 1
      475 MOVE                             R20 R21
      476 GETUPVAL                         R21 1
      477 GETTABLEKS                       R21 R21 K36 ["getDynamicInputPinNameFromInputPinIds"]
      479 MOVE                             R22 R16
      480 JUMPIFNOT                        R19 ; [+6]
      481 FASTCALL1                        TOSTRING R19 ; [+3]
      482 MOVE                             R24 R19
      483 GETIMPORT                        R23 K35 [tostring]
      485 CALL                             R23 1 1
      486 JUMP                             ; [+1]
      487 MOVE                             R23 R20
      488 CALL                             R21 2 1
      489 MOVE                             R15 R21
      490 JUMP                             ; [+3]
      491 MOVE                             R15 R3
      492 JUMP                             ; [+1]
      493 MOVE                             R15 R3
      494 JUMPIFEQ                         R15 R3 ; [+9]
      496 GETUPVAL                         R16 1
      497 GETTABLEKS                       R16 R16 K9 ["_findNodeInputBinding"]
      499 MOVE                             R17 R1
      500 MOVE                             R18 R2
      501 MOVE                             R19 R15
      502 CALL                             R16 3 1
      503 JUMP                             ; [+1]
      504 LOADNIL                          R16
      505 JUMPIFNOT                        R16 ; [+6]
      506 GETTABLEKS                       R19 R16 K8 ["wireId"]
      508 NAMECALL                         R17 R0 K0 ["idToInstance"]
      510 CALL                             R17 2 1
      511 JUMP                             ; [+1]
      512 LOADNIL                          R17
      513 JUMPIFEQKNIL                     R14 ; [+13]
      515 MOVE                             R21 R10
      516 NAMECALL                         R19 R14 K18 ["IsDescendantOf"]
      518 CALL                             R19 2 1
      519 JUMPIFNOT                        R19 ; [+7]
      520 LOADK                            R21 K13 ["ObjectValue"]
      521 NAMECALL                         R19 R14 K2 ["IsA"]
      523 CALL                             R19 2 1
      524 JUMPIFNOT                        R19 ; [+2]
      525 MOVE                             R18 R14
      526 JUMP                             ; [+32]
      527 JUMPIFEQKNIL                     R17 ; [+13]
      529 MOVE                             R21 R10
      530 NAMECALL                         R19 R17 K18 ["IsDescendantOf"]
      532 CALL                             R19 2 1
      533 JUMPIFNOT                        R19 ; [+7]
      534 LOADK                            R21 K13 ["ObjectValue"]
      535 NAMECALL                         R19 R17 K2 ["IsA"]
      537 CALL                             R19 2 1
      538 JUMPIFNOT                        R19 ; [+2]
      539 MOVE                             R18 R17
      540 JUMP                             ; [+18]
      541 JUMPIFEQKNIL                     R12 ; [+13]
      543 MOVE                             R21 R10
      544 NAMECALL                         R19 R12 K18 ["IsDescendantOf"]
      546 CALL                             R19 2 1
      547 JUMPIFNOT                        R19 ; [+7]
      548 LOADK                            R21 K13 ["ObjectValue"]
      549 NAMECALL                         R19 R12 K2 ["IsA"]
      551 CALL                             R19 2 1
      552 JUMPIFNOT                        R19 ; [+2]
      553 MOVE                             R18 R12
      554 JUMP                             ; [+4]
      555 GETIMPORT                        R18 K24 [Instance.new]
      557 LOADK                            R19 K13 ["ObjectValue"]
      558 CALL                             R18 1 1
      559 JUMPIFNOT                        R17 ; [+5]
      560 JUMPIFEQ                         R17 R18 ; [+4]
      562 LOADNIL                          R19
      563 SETTABLEKS                       R19 R17 K25 ["Parent"]
      565 JUMPIFNOT                        R12 ; [+5]
      566 JUMPIFEQ                         R12 R18 ; [+4]
      568 LOADNIL                          R19
      569 SETTABLEKS                       R19 R12 K25 ["Parent"]
      571 JUMPIFNOT                        R14 ; [+5]
      572 JUMPIFEQ                         R14 R18 ; [+4]
      574 LOADNIL                          R19
      575 SETTABLEKS                       R19 R14 K25 ["Parent"]
      577 NAMECALL                         R19 R8 K48 ["GetChildren"]
      579 CALL                             R19 1 3
      580 FORGPREP                         R19
      581 LOADK                            R26 K13 ["ObjectValue"]
      582 NAMECALL                         R24 R23 K2 ["IsA"]
      584 CALL                             R24 2 1
      585 JUMPIFNOT                        R24 ; [+9]
      586 GETTABLEKS                       R24 R23 K19 ["Name"]
      588 JUMPIFNOTEQ                      R24 R15 ; [+6]
      590 JUMPIFEQ                         R23 R18 ; [+4]
      592 LOADNIL                          R24
      593 SETTABLEKS                       R24 R23 K25 ["Parent"]
      595 FORGLOOP                         R19 2 ; [-15]
      597 NAMECALL                         R19 R8 K11 ["GetOrderedInputPinNames"]
      599 CALL                             R19 1 1
      600 JUMPIFEQ                         R15 R3 ; [+19]
      602 GETIMPORT                        R20 K39 [table.find]
      604 MOVE                             R21 R19
      605 MOVE                             R22 R3
      606 CALL                             R20 2 1
      607 GETIMPORT                        R21 K39 [table.find]
      609 MOVE                             R22 R19
      610 MOVE                             R23 R15
      611 CALL                             R21 2 1
      612 JUMPIFNOT                        R20 ; [+1]
      613 SETTABLE                         R15 R19 R20
      614 JUMPIFNOT                        R21 ; [+5]
      615 GETIMPORT                        R22 K47 [table.remove]
      617 MOVE                             R23 R19
      618 MOVE                             R24 R21
      619 CALL                             R22 2 0
      620 GETIMPORT                        R20 K39 [table.find]
      622 MOVE                             R21 R19
      623 MOVE                             R22 R15
      624 CALL                             R20 2 1
      625 JUMPIF                           R20 ; [+7]
      626 FASTCALL2                        TABLE_INSERT R19 R15 ; [+5]
      628 MOVE                             R21 R19
      629 MOVE                             R22 R15
      630 GETIMPORT                        R20 K41 [table.insert]
      632 CALL                             R20 2 0
      633 MOVE                             R22 R19
      634 NAMECALL                         R20 R8 K42 ["SetOrderedInputPinNames"]
      636 CALL                             R20 2 0
      637 SETTABLEKS                       R15 R18 K19 ["Name"]
      639 SETTABLEKS                       R9 R18 K43 ["Value"]
      641 SETTABLEKS                       R8 R18 K25 ["Parent"]
      643 GETUPVAL                         R20 5
      644 MOVE                             R21 R8
      645 MOVE                             R22 R18
      646 CALL                             R20 2 0
      647 MOVE                             R22 R18
      648 NAMECALL                         R20 R0 K49 ["instanceToId"]
      650 CALL                             R20 2 1
      651 MOVE                             R21 R15
      652 MOVE                             R22 R18
      653 RETURN                           R20 3

PROTO_148:
        0 GETTABLEKS                       R3 R0 K0 ["lookup"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R2 K1 ["nodeType"]
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R2 K1 ["nodeType"]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 LOADB                            R4 0
       16 RETURN                           R4 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["nodeTypeHasDynamicInputPins"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1

PROTO_149:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       15 GETTABLEN                        R2 R3 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       19 GETTABLEN                        R2 R3 1
       20 GETTABLEKS                       R2 R2 K2 ["InputFlags"]
       22 JUMPIFEQKN                       R2 K3 [1] ; [+3]
       24 LOADB                            R2 0
       25 RETURN                           R2 1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_150:
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
       14 GETIMPORT                        R6 K6 [table.sort]
       16 MOVE                             R7 R2
       17 CALL                             R6 1 0
       18 NEWTABLE                         R6 0 0
       20 LOADN                            R9 1
       21 LENGTH                           R10 R5
       22 ADDK                             R7 R10 K7 [1]
       23 LOADN                            R8 1
       24 FORNPREP                         R7
       25 GETTABLE                         R10 R5 R9
       26 JUMPIFNOTEQ                      R9 R3 ; [+14]
       28 MOVE                             R11 R2
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 FORGPREP                         R11
       32 GETTABLE                         R18 R5 R15
       33 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
       35 MOVE                             R17 R6
       36 GETIMPORT                        R16 K9 [table.insert]
       38 CALL                             R16 2 0
       39 FORGLOOP                         R11 2 ; [-8]
       41 GETIMPORT                        R11 K11 [table.find]
       43 MOVE                             R12 R2
       44 MOVE                             R13 R9
       45 CALL                             R11 2 1
       46 JUMPIF                           R11 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       49 MOVE                             R12 R6
       50 MOVE                             R13 R10
       51 GETIMPORT                        R11 K9 [table.insert]
       53 CALL                             R11 2 0
       54 FORNLOOP                         R7
       55 MOVE                             R9 R6
       56 NAMECALL                         R7 R4 K12 ["SetOrderedInputPinNames"]
       58 CALL                             R7 2 0
       59 RETURN                           R0 0

PROTO_151:
        0 MOVE                             R7 R2
        1 NAMECALL                         R5 R0 K0 ["idToInstance"]
        3 CALL                             R5 2 1
        4 JUMPIFEQKNIL                     R5 ; [+6]
        6 LOADK                            R8 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIF                           R6 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K3 ["_findNodeInputBinding"]
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
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K9 ["getDynamicInputPinName"]
       42 MOVE                             R11 R0
       43 MOVE                             R12 R2
       44 MOVE                             R13 R4
       45 CALL                             R10 3 1
       46 SETTABLE                         R10 R8 R9
       47 MOVE                             R13 R8
       48 NAMECALL                         R11 R5 K10 ["SetOrderedInputPinNames"]
       50 CALL                             R11 2 0
       51 SETTABLEKS                       R10 R7 K11 ["Name"]
       53 GETUPVAL                         R11 1
       54 CALL                             R11 0 1
       55 JUMPIFNOT                        R11 ; [+14]
       56 GETUPVAL                         R11 2
       57 JUMPIFNOT                        R11 ; [+12]
       58 GETTABLEKS                       R11 R5 K12 ["NodeType"]
       60 GETIMPORT                        R12 K16 [Enum.AnimationNodeType.StateMachineNode]
       62 JUMPIFNOTEQ                      R11 R12 ; [+7]
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K17 ["refreshTransitionNamesForState"]
       67 MOVE                             R12 R5
       68 MOVE                             R13 R7
       69 CALL                             R11 2 0
       70 RETURN                           R0 0

PROTO_152:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+2]
       11 LOADNIL                          R5
       12 RETURN                           R5 1
       13 MOVE                             R7 R2
       14 NAMECALL                         R5 R0 K0 ["idToInstance"]
       16 CALL                             R5 2 1
       17 JUMPIFEQKNIL                     R5 ; [+6]
       19 LOADK                            R8 K3 ["ObjectValue"]
       20 NAMECALL                         R6 R5 K2 ["IsA"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+2]
       24 LOADNIL                          R6
       25 RETURN                           R6 1
       26 LOADK                            R8 K4 ["^%s*(.-)%s*$"]
       27 LOADK                            R9 K5 ["%1"]
       28 NAMECALL                         R6 R3 K6 ["gsub"]
       30 CALL                             R6 3 1
       31 LENGTH                           R7 R6
       32 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       34 LOADNIL                          R7
       35 RETURN                           R7 1
       36 GETTABLEKS                       R7 R5 K8 ["Name"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K9 ["getDynamicInputPinNameFromInputNode"]
       41 MOVE                             R9 R4
       42 MOVE                             R10 R6
       43 MOVE                             R11 R7
       44 LOADB                            R12 1
       45 CALL                             R8 4 1
       46 NAMECALL                         R9 R4 K10 ["GetOrderedInputPinNames"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K13 [table.find]
       51 MOVE                             R11 R9
       52 MOVE                             R12 R7
       53 CALL                             R10 2 1
       54 JUMPIF                           R10 ; [+2]
       55 LOADNIL                          R11
       56 RETURN                           R11 1
       57 SETTABLE                         R8 R9 R10
       58 MOVE                             R13 R9
       59 NAMECALL                         R11 R4 K14 ["SetOrderedInputPinNames"]
       61 CALL                             R11 2 0
       62 SETTABLEKS                       R8 R5 K8 ["Name"]
       64 GETUPVAL                         R11 1
       65 CALL                             R11 0 1
       66 JUMPIFNOT                        R11 ; [+14]
       67 GETUPVAL                         R11 2
       68 JUMPIFNOT                        R11 ; [+12]
       69 GETTABLEKS                       R11 R4 K15 ["NodeType"]
       71 GETIMPORT                        R12 K19 [Enum.AnimationNodeType.StateMachineNode]
       73 JUMPIFNOTEQ                      R11 R12 ; [+7]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R11 R11 K20 ["refreshTransitionNamesForState"]
       78 MOVE                             R12 R4
       79 MOVE                             R13 R5
       80 CALL                             R11 2 0
       81 RETURN                           R8 1

PROTO_153:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["idToInstance"]
        3 CALL                             R4 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 LOADK                            R7 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+1]
       11 RETURN                           R2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["getDynamicInputPinNameFromInputNode"]
       15 MOVE                             R6 R4
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 CALL                             R5 3 -1
       19 RETURN                           R5 -1

PROTO_154:
        0 NAMECALL                         R4 R0 K0 ["GetOrderedInputPinNames"]
        2 CALL                             R4 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETIMPORT                        R5 K3 [table.find]
        6 MOVE                             R6 R4
        7 MOVE                             R7 R2
        8 CALL                             R5 2 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R5
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETIMPORT                        R6 K5 [table.remove]
       14 MOVE                             R7 R4
       15 MOVE                             R8 R5
       16 CALL                             R6 2 0
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K6 ["getDynamicInputPinNameFromInputPinIds"]
       20 MOVE                             R7 R4
       21 MOVE                             R8 R1
       22 MOVE                             R9 R3
       23 CALL                             R6 3 -1
       24 RETURN                           R6 -1

PROTO_155:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R1 1
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R2 ; [+10]
        9 LOADK                            R6 K3 ["%s*%d+$"]
       10 LOADK                            R7 K4 [""]
       11 NAMECALL                         R4 R1 K5 ["gsub"]
       13 CALL                             R4 3 1
       14 LENGTH                           R5 R4
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+2]
       18 MOVE                             R3 R4
       19 LOADN                            R4 1
       20 MOVE                             R5 R3
       21 GETIMPORT                        R6 K2 [table.find]
       23 MOVE                             R7 R0
       24 MOVE                             R8 R5
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+9]
       27 LOADK                            R6 K6 ["%*%*"]
       28 MOVE                             R8 R3
       29 MOVE                             R9 R4
       30 NAMECALL                         R6 R6 K7 ["format"]
       32 CALL                             R6 3 1
       33 MOVE                             R5 R6
       34 ADDK                             R4 R4 K8 [1]
       35 JUMPBACK                         ; [-15]
       36 RETURN                           R5 1

PROTO_156:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["Model"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R1 R0
        7 JUMP                             ; [+5]
        8 LOADK                            R4 K0 ["Model"]
        9 NAMECALL                         R2 R0 K2 ["FindFirstAncestorOfClass"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K3 ["getOrCreateAnimSavesFolder"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_157:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAnimSavesFolderForTarget"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["getOrCreateAnimSavesFolderWithNoRig"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_158:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getOrCreateParentForNewGraph"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+6]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["No valid parent found to create AnimationGraph in"]
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETIMPORT                        R3 K6 [Instance.new]
       14 LOADK                            R4 K7 ["AnimationGraphDefinition"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R2
       18 MOVE                             R6 R1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K8 ["Name"]
       22 GETIMPORT                        R4 K6 [Instance.new]
       24 LOADK                            R5 K9 ["AnimationNodeDefinition"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K13 [Enum.AnimationNodeType.GraphOutput]
       28 SETTABLEKS                       R5 R4 K14 ["NodeType"]
       30 LOADK                            R5 K12 ["GraphOutput"]
       31 SETTABLEKS                       R5 R4 K8 ["Name"]
       33 SETTABLEKS                       R3 R4 K15 ["Parent"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K16 ["setNodePosition"]
       38 MOVE                             R6 R4
       39 GETIMPORT                        R7 K19 [Vector2.zero]
       41 CALL                             R5 2 0
       42 SETTABLEKS                       R2 R3 K15 ["Parent"]
       44 RETURN                           R3 1

PROTO_159:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["AnimationNodeDefinition"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["GetAnimationNodeDefinition"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R0
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 JUMPIF                           R4 ; [+6]
       15 GETIMPORT                        R5 K6 [warn]
       17 LOADK                            R6 K7 ["No definition found for node id:"]
       18 MOVE                             R7 R0
       19 CALL                             R5 2 0
       20 RETURN                           R3 1
       21 LOADN                            R5 0
       22 GETTABLEKS                       R6 R4 K8 ["Type"]
       24 GETTABLEKS                       R6 R6 K9 ["Name"]
       26 MOVE                             R9 R6
       27 NAMECALL                         R7 R2 K10 ["FindFirstChild"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+12]
       31 ADDK                             R5 R5 K11 [1]
       32 GETIMPORT                        R7 K14 [string.format]
       34 LOADK                            R8 K15 ["%s%d"]
       35 GETTABLEKS                       R9 R4 K8 ["Type"]
       37 GETTABLEKS                       R9 R9 K9 ["Name"]
       39 MOVE                             R10 R5
       40 CALL                             R7 3 1
       41 MOVE                             R6 R7
       42 JUMPBACK                         ; [-17]
       43 SETTABLEKS                       R6 R3 K9 ["Name"]
       45 SETTABLEKS                       R0 R3 K16 ["NodeType"]
       47 SETTABLEKS                       R2 R3 K17 ["Parent"]
       49 GETTABLEKS                       R7 R4 K18 ["Properties"]
       51 JUMPIFNOT                        R7 ; [+14]
       52 GETTABLEKS                       R7 R4 K18 ["Properties"]
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLEKS                       R14 R11 K9 ["Name"]
       59 GETTABLEKS                       R15 R11 K19 ["Default"]
       61 NAMECALL                         R12 R3 K20 ["SetAttribute"]
       63 CALL                             R12 3 0
       64 FORGLOOP                         R7 2 ; [-8]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K21 ["setNodePosition"]
       69 MOVE                             R8 R3
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K22 ["predictOutputPosition"]
       73 MOVE                             R10 R1
       74 CALL                             R9 1 -1
       75 CALL                             R7 -1 0
       76 RETURN                           R3 1

PROTO_160:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["instanceToId"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["setNodeConnection"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R3
       10 LOADK                            R8 K2 ["A"]
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 LOADN                            R11 1
       14 CALL                             R4 7 3
       15 JUMPIFNOT                        R6 ; [+5]
       16 LOADK                            R9 K3 ["Position"]
       17 LOADN                            R10 0
       18 NAMECALL                         R7 R6 K4 ["SetAttribute"]
       20 CALL                             R7 3 0
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K1 ["setNodeConnection"]
       24 MOVE                             R8 R0
       25 MOVE                             R9 R1
       26 MOVE                             R10 R3
       27 LOADK                            R11 K5 ["B"]
       28 LOADNIL                          R12
       29 LOADNIL                          R13
       30 LOADN                            R14 2
       31 CALL                             R7 7 3
       32 MOVE                             R5 R7
       33 MOVE                             R5 R8
       34 MOVE                             R6 R9
       35 JUMPIFNOT                        R6 ; [+5]
       36 LOADK                            R9 K3 ["Position"]
       37 LOADN                            R10 1
       38 NAMECALL                         R7 R6 K4 ["SetAttribute"]
       40 CALL                             R7 3 0
       41 RETURN                           R0 0

PROTO_161:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+13]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFEQ                         R8 R9 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K9 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-19]
       26 NEWTABLE                         R3 0 0
       28 NEWTABLE                         R4 0 0
       30 MOVE                             R5 R2
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 NAMECALL                         R10 R9 K10 ["Clone"]
       36 CALL                             R10 1 1
       37 SETTABLE                         R10 R3 R9
       38 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       40 MOVE                             R12 R4
       41 MOVE                             R13 R10
       42 GETIMPORT                        R11 K9 [table.insert]
       44 CALL                             R11 2 0
       45 FORGLOOP                         R5 2 ; [-12]
       47 MOVE                             R5 R4
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 NAMECALL                         R10 R9 K11 ["GetDescendants"]
       53 CALL                             R10 1 3
       54 FORGPREP                         R10
       55 LOADK                            R17 K12 ["ObjectValue"]
       56 NAMECALL                         R15 R14 K1 ["IsA"]
       58 CALL                             R15 2 1
       59 JUMPIFNOT                        R15 ; [+27]
       60 GETTABLEKS                       R15 R14 K13 ["Value"]
       62 JUMPIFNOT                        R15 ; [+24]
       63 GETTABLE                         R16 R3 R15
       64 JUMPIFNOT                        R16 ; [+3]
       65 SETTABLEKS                       R16 R14 K13 ["Value"]
       67 JUMP                             ; [+19]
       68 GETUPVAL                         R17 0
       69 CALL                             R17 0 1
       70 JUMPIFNOT                        R17 ; [+16]
       71 GETUPVAL                         R17 1
       72 GETTABLEKS                       R17 R17 K14 ["isValueOutputEndpoint"]
       74 MOVE                             R18 R15
       75 CALL                             R17 1 1
       76 JUMPIFNOT                        R17 ; [+10]
       77 GETTABLEKS                       R17 R15 K15 ["Parent"]
       79 JUMPIFNOT                        R17 ; [+7]
       80 NAMECALL                         R18 R15 K10 ["Clone"]
       82 CALL                             R18 1 1
       83 SETTABLEKS                       R17 R18 K15 ["Parent"]
       85 SETTABLEKS                       R18 R14 K13 ["Value"]
       87 FORGLOOP                         R10 2 ; [-33]
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R10 R10 K16 ["setNodePosition"]
       92 MOVE                             R11 R9
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K17 ["getNodePosition"]
       96 MOVE                             R14 R9
       97 CALL                             R13 1 1
       98 JUMPIF                           R13 ; [+2]
       99 GETIMPORT                        R13 K20 [Vector2.zero]
      101 GETIMPORT                        R14 K22 [Vector2.new]
      103 LOADN                            R15 10
      104 LOADN                            R16 10
      105 CALL                             R14 2 1
      106 ADD                              R12 R13 R14
      107 CALL                             R10 2 0
      108 SETTABLEKS                       R0 R9 K15 ["Parent"]
      110 FORGLOOP                         R5 2 ; [-60]
      112 RETURN                           R4 1

PROTO_162:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["AnimationNodeDefinition"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+8]
        9 GETTABLEKS                       R6 R5 K3 ["NodeType"]
       11 GETIMPORT                        R7 K7 [Enum.AnimationNodeType.GraphOutput]
       13 JUMPIFNOTEQ                      R6 R7 ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-14]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_163:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["ObjectValue"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K3 ["Parent"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 NAMECALL                         R1 R0 K4 ["GetAttributes"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K6 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+13]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K8 ["matchParameterBinding"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFEQKNIL                     R6 ; [+6]
       32 MOVE                             R8 R4
       33 LOADNIL                          R9
       34 NAMECALL                         R6 R0 K9 ["SetAttribute"]
       36 CALL                             R6 3 0
       37 FORGLOOP                         R1 2 ; [-20]
       39 RETURN                           R0 0

PROTO_164:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+44]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFNOTEQ                      R8 R9 ; [+5]
       17 GETUPVAL                         R8 0
       18 MOVE                             R9 R0
       19 CALL                             R8 1 1
       20 JUMPIF                           R8 ; [+34]
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+3]
       24 GETUPVAL                         R8 2
       25 MOVE                             R9 R7
       26 CALL                             R8 1 0
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K7 ["setNodePosition"]
       30 MOVE                             R9 R7
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K8 ["getNodePosition"]
       34 MOVE                             R12 R7
       35 CALL                             R11 1 1
       36 JUMPIF                           R11 ; [+2]
       37 GETIMPORT                        R11 K11 [Vector2.zero]
       39 GETIMPORT                        R12 K13 [Vector2.new]
       41 LOADN                            R13 10
       42 LOADN                            R14 10
       43 CALL                             R12 2 1
       44 ADD                              R10 R11 R12
       45 CALL                             R8 2 0
       46 SETTABLEKS                       R0 R7 K14 ["Parent"]
       48 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       50 MOVE                             R9 R2
       51 MOVE                             R10 R7
       52 GETIMPORT                        R8 K17 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R3 2 ; [-50]
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["Rig"]
       25 GETTABLEKS                       R4 R4 K13 ["AnimationRigDataUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K14 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["Instances"]
       41 GETTABLEKS                       R6 R6 K16 ["InstanceRegistry"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K11 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["Instances"]
       50 GETTABLEKS                       R7 R7 K17 ["InstanceSelectionRegistry"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R2 K18 ["Parent"]
       57 GETTABLEKS                       R8 R8 K19 ["NodeGraphing"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R2 K20 ["NodeViewTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R2 K21 ["Contexts"]
       69 GETTABLEKS                       R10 R10 K22 ["OpenableAssetTypeContext"]
       71 GETTABLEKS                       R10 R10 K23 ["OpenableAssetTypeUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R2 K11 ["Util"]
       78 GETTABLEKS                       R11 R11 K24 ["Signals"]
       80 GETTABLEKS                       R11 R11 K25 ["Experimental"]
       82 GETTABLEKS                       R11 R11 K26 ["SignalExperimentalUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K10 [require]
       87 GETTABLEKS                       R12 R2 K18 ["Parent"]
       89 GETTABLEKS                       R12 R12 K24 ["Signals"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K10 [require]
       94 GETTABLEKS                       R13 R2 K11 ["Util"]
       96 GETTABLEKS                       R13 R13 K24 ["Signals"]
       98 GETTABLEKS                       R13 R13 K27 ["SignalsAnimationUtils"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K10 [require]
      103 GETTABLEKS                       R14 R2 K11 ["Util"]
      105 GETTABLEKS                       R14 R14 K24 ["Signals"]
      107 GETTABLEKS                       R14 R14 K28 ["SignalsInstanceUtils"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K10 [require]
      112 GETTABLEKS                       R15 R2 K29 ["Components"]
      114 GETTABLEKS                       R15 R15 K30 ["NodeView"]
      116 GETTABLEKS                       R15 R15 K31 ["StateMachine"]
      118 GETTABLEKS                       R15 R15 K32 ["StateMachineTransitionNaming"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K10 [require]
      123 GETTABLEKS                       R16 R2 K11 ["Util"]
      125 GETTABLEKS                       R16 R16 K24 ["Signals"]
      127 GETTABLEKS                       R16 R16 K33 ["TypedInstanceSignals"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K10 [require]
      132 GETTABLEKS                       R17 R2 K34 ["Types"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K10 [require]
      137 GETTABLEKS                       R18 R2 K11 ["Util"]
      139 GETTABLEKS                       R18 R18 K35 ["getDeduplicatedName"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K10 [require]
      144 GETTABLEKS                       R19 R2 K36 ["Flags"]
      146 GETTABLEKS                       R19 R19 K37 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K10 [require]
      151 GETTABLEKS                       R20 R2 K36 ["Flags"]
      153 GETTABLEKS                       R20 R20 K38 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K10 [require]
      158 GETTABLEKS                       R21 R2 K36 ["Flags"]
      160 GETTABLEKS                       R21 R21 K39 ["getFFlagAnimGraphUIEnableValueNodes"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K10 [require]
      165 GETTABLEKS                       R22 R2 K36 ["Flags"]
      167 GETTABLEKS                       R22 R22 K40 ["getFFlagAnimGraphUIInputIds"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K10 [require]
      172 GETTABLEKS                       R23 R2 K36 ["Flags"]
      174 GETTABLEKS                       R23 R23 K41 ["getFFlagAnimGraphUIKeepParameterNoodlesOnDrag"]
      176 CALL                             R22 1 1
      177 GETIMPORT                        R23 K10 [require]
      179 GETTABLEKS                       R24 R2 K36 ["Flags"]
      181 GETTABLEKS                       R24 R24 K42 ["getFFlagAnimGraphUIPasteWithoutConnections"]
      183 CALL                             R23 1 1
      184 GETIMPORT                        R24 K10 [require]
      186 GETTABLEKS                       R25 R2 K36 ["Flags"]
      188 GETTABLEKS                       R25 R25 K43 ["getFFlagAnimGraphUIRemoveOrphanedParameterWires"]
      190 CALL                             R24 1 1
      191 GETIMPORT                        R25 K10 [require]
      193 GETTABLEKS                       R26 R2 K36 ["Flags"]
      195 GETTABLEKS                       R26 R26 K44 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      197 CALL                             R25 1 1
      198 GETIMPORT                        R26 K10 [require]
      200 GETTABLEKS                       R27 R2 K36 ["Flags"]
      202 GETTABLEKS                       R27 R27 K45 ["getFFlagAnimationEditorAnimationTypes"]
      204 CALL                             R26 1 1
      205 GETIMPORT                        R27 K10 [require]
      207 GETTABLEKS                       R28 R2 K11 ["Util"]
      209 GETTABLEKS                       R28 R28 K46 ["parseAnimationNodeType"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K10 [require]
      214 GETTABLEKS                       R29 R2 K29 ["Components"]
      216 GETTABLEKS                       R29 R29 K30 ["NodeView"]
      218 GETTABLEKS                       R29 R29 K31 ["StateMachine"]
      220 GETTABLEKS                       R29 R29 K47 ["resolveStateMachineNodeDefinition"]
      222 CALL                             R28 1 1
      223 GETIMPORT                        R29 K10 [require]
      225 GETTABLEKS                       R30 R2 K29 ["Components"]
      227 GETTABLEKS                       R30 R30 K30 ["NodeView"]
      229 GETTABLEKS                       R30 R30 K31 ["StateMachine"]
      231 GETTABLEKS                       R30 R30 K48 ["supportsStateMachineNode"]
      233 CALL                             R29 1 1
      234 NEWTABLE                         R30 128 0
      236 DUPCLOSURE                       R31 K49 [PROTO_0]
      237 DUPCLOSURE                       R32 K50 [PROTO_2]
      238 CAPTURE                          VAL R13
      239 DUPCLOSURE                       R33 K51 [PROTO_3]
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R4
      243 SETTABLEKS                       R33 R30 K52 ["getOrCreateParameterInstance"]
      245 DUPCLOSURE                       R33 K53 [PROTO_4]
      246 SETTABLEKS                       R33 R30 K54 ["isValueNode"]
      248 DUPCLOSURE                       R33 K55 [PROTO_5]
      249 SETTABLEKS                       R33 R30 K56 ["getUniqueValueNodeName"]
      251 DUPCLOSURE                       R33 K57 [PROTO_6]
      252 SETTABLEKS                       R33 R30 K58 ["isValueOutputEndpoint"]
      254 DUPCLOSURE                       R33 K59 [PROTO_7]
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R4
      257 SETTABLEKS                       R33 R30 K60 ["getOrCreateExpressionInstance"]
      259 DUPCLOSURE                       R33 K61 [PROTO_8]
      260 CAPTURE                          VAL R18
      261 CAPTURE                          VAL R30
      262 CAPTURE                          VAL R4
      263 SETTABLEKS                       R33 R30 K62 ["createExistingParameterInstance"]
      265 DUPCLOSURE                       R33 K63 [PROTO_10]
      266 CAPTURE                          VAL R0
      267 SETTABLEKS                       R33 R30 K64 ["getParameterType"]
      269 DUPCLOSURE                       R33 K65 [PROTO_11]
      270 SETTABLEKS                       R33 R30 K66 ["setParameterBindingName"]
      272 DUPCLOSURE                       R33 K67 [PROTO_12]
      273 CAPTURE                          VAL R4
      274 SETTABLEKS                       R33 R30 K68 ["getNodePosition"]
      276 DUPCLOSURE                       R33 K69 [PROTO_13]
      277 CAPTURE                          VAL R4
      278 SETTABLEKS                       R33 R30 K70 ["predictOutputPosition"]
      280 DUPCLOSURE                       R33 K71 [PROTO_14]
      281 CAPTURE                          VAL R4
      282 SETTABLEKS                       R33 R30 K72 ["setNodePosition"]
      284 DUPCLOSURE                       R33 K73 [PROTO_15]
      285 CAPTURE                          VAL R4
      286 SETTABLEKS                       R33 R30 K74 ["setNodeSize"]
      288 DUPCLOSURE                       R33 K75 [PROTO_16]
      289 CAPTURE                          VAL R4
      290 SETTABLEKS                       R33 R30 K76 ["setNodeIsCollapsed"]
      292 DUPCLOSURE                       R33 K77 [PROTO_17]
      293 CAPTURE                          VAL R4
      294 SETTABLEKS                       R33 R30 K78 ["setDisplayName"]
      296 DUPCLOSURE                       R33 K79 [PROTO_18]
      297 CAPTURE                          VAL R4
      298 SETTABLEKS                       R33 R30 K80 ["setZIndex"]
      300 DUPCLOSURE                       R33 K81 [PROTO_19]
      301 SETTABLEKS                       R33 R30 K82 ["getParameterInstanceName"]
      303 DUPCLOSURE                       R33 K83 [PROTO_20]
      304 CAPTURE                          VAL R4
      305 DUPCLOSURE                       R34 K84 [PROTO_21]
      306 CAPTURE                          VAL R4
      307 DUPCLOSURE                       R35 K85 [PROTO_22]
      308 CAPTURE                          VAL R18
      309 CAPTURE                          VAL R30
      310 CAPTURE                          VAL R4
      311 SETTABLEKS                       R35 R30 K86 ["getParameterDefinitionInstance"]
      313 DUPCLOSURE                       R35 K87 [PROTO_23]
      314 CAPTURE                          VAL R18
      315 CAPTURE                          VAL R30
      316 CAPTURE                          VAL R34
      317 SETTABLEKS                       R35 R30 K88 ["getOrCreateParameterDefinition"]
      319 DUPCLOSURE                       R35 K89 [PROTO_24]
      320 CAPTURE                          VAL R18
      321 CAPTURE                          VAL R4
      322 SETTABLEKS                       R35 R30 K90 ["getParameterDefinitionFromNode"]
      324 DUPCLOSURE                       R35 K91 [PROTO_25]
      325 CAPTURE                          VAL R30
      326 CAPTURE                          VAL R4
      327 SETTABLEKS                       R35 R30 K92 ["getParameterBindingName"]
      329 DUPCLOSURE                       R35 K93 [PROTO_26]
      330 CAPTURE                          VAL R18
      331 SETTABLEKS                       R35 R30 K94 ["createParameterNode"]
      333 DUPCLOSURE                       R35 K95 [PROTO_27]
      334 CAPTURE                          VAL R18
      335 CAPTURE                          VAL R30
      336 SETTABLEKS                       R35 R30 K96 ["getAllParameterInstancesFromName"]
      338 DUPCLOSURE                       R35 K97 [PROTO_28]
      339 CAPTURE                          VAL R4
      340 DUPCLOSURE                       R36 K98 [PROTO_29]
      341 CAPTURE                          VAL R4
      342 DUPCLOSURE                       R37 K99 [PROTO_30]
      343 CAPTURE                          VAL R4
      344 DUPCLOSURE                       R38 K100 [PROTO_31]
      345 CAPTURE                          VAL R4
      346 DUPCLOSURE                       R39 K101 [PROTO_32]
      347 CAPTURE                          VAL R4
      348 DUPCLOSURE                       R40 K102 [PROTO_33]
      349 CAPTURE                          VAL R4
      350 CAPTURE                          VAL R39
      351 CAPTURE                          VAL R34
      352 SETTABLEKS                       R40 R30 K103 ["convertParametersToNestedLayout"]
      354 DUPCLOSURE                       R40 K104 [PROTO_34]
      355 CAPTURE                          VAL R4
      356 SETTABLEKS                       R40 R30 K105 ["convertParametersToFlatLayout"]
      358 DUPCLOSURE                       R40 K106 [PROTO_35]
      359 CAPTURE                          VAL R18
      360 CAPTURE                          VAL R4
      361 DUPCLOSURE                       R41 K107 [PROTO_36]
      362 CAPTURE                          VAL R40
      363 CAPTURE                          VAL R1
      364 CAPTURE                          VAL R18
      365 CAPTURE                          VAL R30
      366 SETTABLEKS                       R41 R30 K108 ["convertParameterLayout"]
      368 DUPCLOSURE                       R41 K109 [PROTO_38]
      369 CAPTURE                          VAL R10
      370 CAPTURE                          VAL R30
      371 SETTABLEKS                       R41 R30 K110 ["observeGraphWithConvertedParameterLayout"]
      373 DUPCLOSURE                       R41 K111 [PROTO_41]
      374 CAPTURE                          VAL R13
      375 CAPTURE                          VAL R18
      376 CAPTURE                          VAL R15
      377 CAPTURE                          VAL R4
      378 SETTABLEKS                       R41 R30 K112 ["observeParameterNodeInstances"]
      380 DUPCLOSURE                       R41 K113 [PROTO_45]
      381 CAPTURE                          VAL R18
      382 CAPTURE                          VAL R13
      383 CAPTURE                          VAL R15
      384 CAPTURE                          VAL R4
      385 CAPTURE                          VAL R10
      386 SETTABLEKS                       R41 R30 K114 ["observeParameterDefinitions"]
      388 DUPCLOSURE                       R41 K115 [PROTO_47]
      389 CAPTURE                          VAL R15
      390 CAPTURE                          VAL R13
      391 CAPTURE                          VAL R10
      392 CAPTURE                          VAL R20
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R21
      395 SETTABLEKS                       R41 R30 K116 ["observeWireInfo"]
      397 DUPCLOSURE                       R41 K117 [PROTO_57]
      398 CAPTURE                          VAL R13
      399 CAPTURE                          VAL R30
      400 CAPTURE                          VAL R20
      401 CAPTURE                          VAL R10
      402 CAPTURE                          VAL R21
      403 SETTABLEKS                       R41 R30 K118 ["observeNodeConnectionMap"]
      405 DUPCLOSURE                       R41 K119 [PROTO_58]
      406 SETTABLEKS                       R41 R30 K120 ["matchParameterBinding"]
      408 DUPCLOSURE                       R41 K121 [PROTO_59]
      409 CAPTURE                          VAL R4
      410 SETTABLEKS                       R41 R30 K122 ["setExpressionNodeValue"]
      412 DUPCLOSURE                       R41 K123 [PROTO_67]
      413 CAPTURE                          VAL R18
      414 CAPTURE                          VAL R13
      415 CAPTURE                          VAL R15
      416 CAPTURE                          VAL R4
      417 CAPTURE                          VAL R10
      418 SETTABLEKS                       R41 R30 K124 ["observeParameterNodeInfo"]
      420 DUPCLOSURE                       R41 K125 [PROTO_70]
      421 CAPTURE                          VAL R15
      422 CAPTURE                          VAL R10
      423 CAPTURE                          VAL R4
      424 SETTABLEKS                       R41 R30 K126 ["observeExpressionValueNodeInfo"]
      426 DUPCLOSURE                       R41 K127 [PROTO_80]
      427 CAPTURE                          VAL R13
      428 CAPTURE                          VAL R30
      429 CAPTURE                          VAL R10
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R15
      432 SETTABLEKS                       R41 R30 K128 ["observeNodeProps"]
      434 DUPCLOSURE                       R41 K129 [PROTO_82]
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R10
      437 SETTABLEKS                       R41 R30 K130 ["observeNodeType"]
      439 DUPCLOSURE                       R41 K131 [PROTO_84]
      440 CAPTURE                          VAL R15
      441 CAPTURE                          VAL R10
      442 SETTABLEKS                       R41 R30 K132 ["observeValueNodeType"]
      444 DUPCLOSURE                       R41 K133 [PROTO_87]
      445 CAPTURE                          VAL R4
      446 CAPTURE                          VAL R32
      447 CAPTURE                          VAL R13
      448 CAPTURE                          VAL R15
      449 CAPTURE                          VAL R30
      450 CAPTURE                          VAL R10
      451 SETTABLEKS                       R41 R30 K134 ["observeNodeInfo"]
      453 DUPCLOSURE                       R41 K135 [PROTO_90]
      454 CAPTURE                          VAL R13
      455 CAPTURE                          VAL R30
      456 SETTABLEKS                       R41 R30 K136 ["observeNodeInfoLookupList"]
      458 DUPCLOSURE                       R41 K137 [PROTO_94]
      459 CAPTURE                          VAL R13
      460 CAPTURE                          VAL R30
      461 CAPTURE                          VAL R20
      462 CAPTURE                          VAL R10
      463 CAPTURE                          VAL R18
      464 CAPTURE                          VAL R4
      465 CAPTURE                          VAL R19
      466 SETTABLEKS                       R41 R30 K138 ["observeParameterNodeInfoLookupList"]
      468 DUPCLOSURE                       R41 K139 [PROTO_97]
      469 CAPTURE                          VAL R13
      470 CAPTURE                          VAL R20
      471 SETTABLEKS                       R41 R30 K140 ["observeValueNodeInfoLookupList"]
      473 DUPCLOSURE                       R41 K141 [PROTO_99]
      474 CAPTURE                          VAL R30
      475 SETTABLEKS                       R41 R30 K142 ["cleanUpWiresForDeletedNode"]
      477 DUPCLOSURE                       R41 K143 [PROTO_102]
      478 CAPTURE                          VAL R13
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R15
      481 CAPTURE                          VAL R4
      482 SETTABLEKS                       R41 R30 K144 ["observeExpressionNodes"]
      484 DUPCLOSURE                       R41 K145 [PROTO_105]
      485 CAPTURE                          VAL R13
      486 CAPTURE                          VAL R30
      487 CAPTURE                          VAL R10
      488 SETTABLEKS                       R41 R30 K146 ["observeRenderInfoMap"]
      490 DUPCLOSURE                       R41 K147 [PROTO_111]
      491 CAPTURE                          VAL R13
      492 CAPTURE                          VAL R32
      493 CAPTURE                          VAL R4
      494 CAPTURE                          VAL R15
      495 CAPTURE                          VAL R10
      496 SETTABLEKS                       R41 R30 K148 ["observeRenderInfo"]
      498 DUPCLOSURE                       R41 K149 [PROTO_115]
      499 CAPTURE                          VAL R26
      500 CAPTURE                          VAL R9
      501 CAPTURE                          VAL R12
      502 CAPTURE                          VAL R10
      503 CAPTURE                          VAL R13
      504 SETTABLEKS                       R41 R30 K150 ["observeEditingAnimationGraphDefinition"]
      506 DUPCLOSURE                       R41 K151 [PROTO_123]
      507 CAPTURE                          VAL R30
      508 CAPTURE                          VAL R13
      509 CAPTURE                          VAL R10
      510 CAPTURE                          VAL R21
      511 CAPTURE                          VAL R20
      512 CAPTURE                          VAL R4
      513 SETTABLEKS                       R41 R30 K152 ["observeGraphState"]
      515 DUPCLOSURE                       R41 K153 [PROTO_124]
      516 SETTABLEKS                       R41 R30 K154 ["fitGraphRect"]
      518 DUPCLOSURE                       R41 K155 [PROTO_125]
      519 CAPTURE                          VAL R21
      520 SETTABLEKS                       R41 R30 K156 ["_findNodeInputBinding"]
      522 DUPCLOSURE                       R41 K157 [PROTO_126]
      523 SETTABLEKS                       R41 R30 K158 ["_findNodeOutputBinding"]
      525 DUPCLOSURE                       R41 K159 [PROTO_127]
      526 CAPTURE                          VAL R21
      527 CAPTURE                          VAL R30
      528 CAPTURE                          VAL R22
      529 SETTABLEKS                       R41 R30 K160 ["deleteNodeInput"]
      531 DUPCLOSURE                       R41 K161 [PROTO_128]
      532 CAPTURE                          VAL R30
      533 CAPTURE                          VAL R22
      534 SETTABLEKS                       R41 R30 K162 ["removeNodeInputConnection"]
      536 DUPCLOSURE                       R41 K163 [PROTO_129]
      537 SETTABLEKS                       R41 R30 K164 ["isAParameterWire"]
      539 DUPCLOSURE                       R41 K165 [PROTO_130]
      540 CAPTURE                          VAL R30
      541 SETTABLEKS                       R41 R30 K166 ["isAValueNodeWire"]
      543 DUPCLOSURE                       R41 K167 [PROTO_131]
      544 CAPTURE                          VAL R30
      545 SETTABLEKS                       R41 R30 K168 ["removeOrderedInputPin"]
      547 DUPCLOSURE                       R41 K169 [PROTO_132]
      548 CAPTURE                          VAL R30
      549 SETTABLEKS                       R41 R30 K170 ["removeNodeOutputConnection"]
      551 DUPCLOSURE                       R41 K171 [PROTO_133]
      552 CAPTURE                          VAL R20
      553 CAPTURE                          VAL R30
      554 CAPTURE                          VAL R22
      555 CAPTURE                          VAL R24
      556 SETTABLEKS                       R41 R30 K172 ["_removeConnectionBinding"]
      558 DUPCLOSURE                       R41 K173 [PROTO_134]
      559 CAPTURE                          VAL R20
      560 CAPTURE                          VAL R30
      561 SETTABLEKS                       R41 R30 K174 ["_removeInputLabelParameterWires"]
      563 DUPCLOSURE                       R41 K175 [PROTO_135]
      564 SETTABLEKS                       R41 R30 K176 ["getParameterWireName"]
      566 DUPCLOSURE                       R41 K177 [PROTO_136]
      567 SETTABLEKS                       R41 R30 K178 ["getParameterWireInputPinId"]
      569 DUPCLOSURE                       R41 K179 [PROTO_137]
      570 CAPTURE                          VAL R30
      571 DUPCLOSURE                       R42 K180 [PROTO_139]
      572 CAPTURE                          VAL R41
      573 SETTABLEKS                       R42 R30 K181 ["clearParameterNodeBindings"]
      575 DUPCLOSURE                       R42 K182 [PROTO_141]
      576 CAPTURE                          VAL R41
      577 CAPTURE                          VAL R30
      578 SETTABLEKS                       R42 R30 K183 ["setParameterNodeBindingNames"]
      580 DUPCLOSURE                       R42 K184 [PROTO_142]
      581 CAPTURE                          VAL R20
      582 CAPTURE                          VAL R30
      583 CAPTURE                          VAL R18
      584 CAPTURE                          VAL R4
      585 SETTABLEKS                       R42 R30 K185 ["setParameterConnection"]
      587 DUPCLOSURE                       R42 K186 [PROTO_143]
      588 CAPTURE                          VAL R30
      589 SETTABLEKS                       R42 R30 K187 ["setValueNodeConnection"]
      591 DUPCLOSURE                       R42 K188 [PROTO_144]
      592 CAPTURE                          VAL R4
      593 DUPCLOSURE                       R43 K189 [PROTO_145]
      594 CAPTURE                          VAL R4
      595 DUPCLOSURE                       R44 K190 [PROTO_146]
      596 CAPTURE                          VAL R25
      597 CAPTURE                          VAL R29
      598 CAPTURE                          VAL R14
      599 CAPTURE                          VAL R4
      600 CAPTURE                          VAL R30
      601 CAPTURE                          VAL R43
      602 DUPCLOSURE                       R45 K191 [PROTO_147]
      603 CAPTURE                          VAL R20
      604 CAPTURE                          VAL R30
      605 CAPTURE                          VAL R7
      606 CAPTURE                          VAL R21
      607 CAPTURE                          VAL R4
      608 CAPTURE                          VAL R44
      609 SETTABLEKS                       R45 R30 K192 ["setNodeConnection"]
      611 DUPCLOSURE                       R45 K193 [PROTO_148]
      612 CAPTURE                          VAL R27
      613 CAPTURE                          VAL R30
      614 SETTABLEKS                       R45 R30 K194 ["hasDynamicInputPins"]
      616 DUPCLOSURE                       R45 K195 [PROTO_149]
      617 CAPTURE                          VAL R0
      618 CAPTURE                          VAL R28
      619 SETTABLEKS                       R45 R30 K196 ["nodeTypeHasDynamicInputPins"]
      621 DUPCLOSURE                       R45 K197 [PROTO_150]
      622 SETTABLEKS                       R45 R30 K198 ["reorderPins"]
      624 DUPCLOSURE                       R45 K199 [PROTO_151]
      625 CAPTURE                          VAL R30
      626 CAPTURE                          VAL R25
      627 CAPTURE                          VAL R29
      628 CAPTURE                          VAL R14
      629 SETTABLEKS                       R45 R30 K200 ["renameDynamicInputPin"]
      631 DUPCLOSURE                       R45 K201 [PROTO_152]
      632 CAPTURE                          VAL R30
      633 CAPTURE                          VAL R25
      634 CAPTURE                          VAL R29
      635 CAPTURE                          VAL R14
      636 SETTABLEKS                       R45 R30 K202 ["renameInputPin"]
      638 DUPCLOSURE                       R45 K203 [PROTO_153]
      639 CAPTURE                          VAL R30
      640 SETTABLEKS                       R45 R30 K204 ["getDynamicInputPinName"]
      642 DUPCLOSURE                       R45 K205 [PROTO_154]
      643 CAPTURE                          VAL R30
      644 SETTABLEKS                       R45 R30 K206 ["getDynamicInputPinNameFromInputNode"]
      646 DUPCLOSURE                       R45 K207 [PROTO_155]
      647 SETTABLEKS                       R45 R30 K208 ["getDynamicInputPinNameFromInputPinIds"]
      649 DUPCLOSURE                       R45 K209 [PROTO_156]
      650 CAPTURE                          VAL R3
      651 SETTABLEKS                       R45 R30 K210 ["getAnimSavesFolderForTarget"]
      653 DUPCLOSURE                       R45 K211 [PROTO_157]
      654 CAPTURE                          VAL R30
      655 CAPTURE                          VAL R3
      656 SETTABLEKS                       R45 R30 K212 ["getOrCreateParentForNewGraph"]
      658 DUPCLOSURE                       R45 K213 [PROTO_158]
      659 CAPTURE                          VAL R30
      660 CAPTURE                          VAL R17
      661 SETTABLEKS                       R45 R30 K214 ["createNewAnimationGraph"]
      663 DUPCLOSURE                       R45 K215 [PROTO_159]
      664 CAPTURE                          VAL R0
      665 CAPTURE                          VAL R28
      666 CAPTURE                          VAL R30
      667 SETTABLEKS                       R45 R30 K216 ["createNodeOfType"]
      669 DUPCLOSURE                       R45 K217 [PROTO_160]
      670 CAPTURE                          VAL R30
      671 SETTABLEKS                       R45 R30 K218 ["seedBlend1dInputs"]
      673 DUPCLOSURE                       R45 K219 [PROTO_161]
      674 CAPTURE                          VAL R20
      675 CAPTURE                          VAL R30
      676 SETTABLEKS                       R45 R30 K220 ["duplicateNodes"]
      678 DUPCLOSURE                       R45 K221 [PROTO_162]
      679 DUPCLOSURE                       R46 K222 [PROTO_163]
      680 CAPTURE                          VAL R30
      681 DUPCLOSURE                       R47 K223 [PROTO_164]
      682 CAPTURE                          VAL R45
      683 CAPTURE                          VAL R23
      684 CAPTURE                          VAL R46
      685 CAPTURE                          VAL R30
      686 SETTABLEKS                       R47 R30 K224 ["pasteInstancesIntoGraph"]
      688 RETURN                           R30 1
