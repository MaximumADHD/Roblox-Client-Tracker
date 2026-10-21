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
       37 GETIMPORT                        R7 K12 [Instance.new]
       39 LOADK                            R8 K13 ["Folder"]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R6 R7 K14 ["Name"]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       46 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       48 NAMECALL                         R8 R7 K17 ["GetAttribute"]
       50 CALL                             R8 2 1
       51 JUMPIF                           R8 ; [+19]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       55 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       57 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       59 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       61 CALL                             R8 3 0
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       65 GETTABLEKS                       R10 R10 K19 ["BindingName"]
       67 MOVE                             R11 R5
       68 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       70 CALL                             R8 3 0
       71 SETTABLEKS                       R1 R7 K20 ["Parent"]
       73 MOVE                             R10 R7
       74 NAMECALL                         R8 R0 K21 ["instanceToId"]
       76 CALL                             R8 2 0
       77 RETURN                           R7 1

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
        5 GETTABLEKS                       R5 R5 K2 ["getParameterInstanceName"]
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
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K7 ["getOrCreateParameterInstance"]
       26 MOVE                             R8 R0
       27 MOVE                             R9 R1
       28 DUPTABLE                         R10 K8 [{"parameterType", "parameterName"}]
       29 SETTABLEKS                       R3 R10 K0 ["parameterType"]
       31 SETTABLEKS                       R4 R10 K1 ["parameterName"]
       33 LOADB                            R11 1
       34 CALL                             R7 4 1
       35 MOVE                             R10 R7
       36 NAMECALL                         R8 R0 K9 ["instanceToId"]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R10 R10 K10 ["NODE_ATTRIBUTES"]
       42 GETTABLEKS                       R10 R10 K11 ["ParameterType"]
       44 MOVE                             R11 R3
       45 NAMECALL                         R8 R7 K12 ["SetAttribute"]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K10 ["NODE_ATTRIBUTES"]
       51 GETTABLEKS                       R10 R10 K13 ["BindingName"]
       53 MOVE                             R11 R4
       54 NAMECALL                         R8 R7 K12 ["SetAttribute"]
       56 CALL                             R8 3 0
       57 RETURN                           R7 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getParameterInstanceName"]
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["observeChildrenWhichIsA"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K2 ["Folder"]
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["forEach"]
       21 MOVE                             R6 R2
       22 MOVE                             R7 R4
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["forEach"]
       27 MOVE                             R7 R3
       28 MOVE                             R8 R4
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R6
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U1
       38 CALL                             R7 1 -1
       39 RETURN                           R7 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["NODE_ATTRIBUTES"]
        3 GETTABLEKS                       R4 R4 K1 ["Expression"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R0 K2 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["properties"]
        7 GETTABLEKS                       R3 R3 K2 ["observeString"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K3 ["Name"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["attributes"]
       15 GETTABLEKS                       R4 R4 K2 ["observeString"]
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["NODE_ATTRIBUTES"]
       21 GETTABLEKS                       R6 R6 K6 ["ParameterType"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K4 ["attributes"]
       27 GETTABLEKS                       R5 R5 K2 ["observeString"]
       29 MOVE                             R6 R1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K5 ["NODE_ATTRIBUTES"]
       33 GETTABLEKS                       R7 R7 K7 ["BindingName"]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K8 ["createComputed"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K8 ["createComputed"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CALL                             R7 1 -1
       53 RETURN                           R7 -1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_46]
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

PROTO_49:
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

PROTO_50:
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
       39 DUPCLOSURE                       R9 K9 [PROTO_43]
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["instanceToId"]
        3 CALL                             R2 2 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+82]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K1 ["NODE_ATTRIBUTES"]
       11 GETTABLEKS                       R6 R6 K2 ["DisplayName"]
       13 NAMECALL                         R4 R1 K3 ["GetAttribute"]
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+56]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["NODE_CONFIGURATION_NAME"]
       21 LOADK                            R9 K5 ["Configuration"]
       22 NAMECALL                         R7 R1 K6 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 MOVE                             R5 R1
       27 JUMP                             ; [+17]
       28 MOVE                             R9 R6
       29 NAMECALL                         R7 R1 K7 ["FindFirstChild"]
       31 CALL                             R7 2 1
       32 JUMPIFEQKNIL                     R7 ; [+3]
       34 MOVE                             R5 R7
       35 JUMP                             ; [+9]
       36 GETIMPORT                        R7 K10 [Instance.new]
       38 LOADK                            R8 K5 ["Configuration"]
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R6 R7 K11 ["Name"]
       42 SETTABLEKS                       R1 R7 K12 ["Parent"]
       44 MOVE                             R5 R7
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       48 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       50 NAMECALL                         R6 R5 K3 ["GetAttribute"]
       52 CALL                             R6 2 1
       53 JUMPIFNOTEQKNIL                  R6 ; [+10]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       58 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       60 MOVE                             R9 R4
       61 NAMECALL                         R6 R5 K13 ["SetAttribute"]
       63 CALL                             R6 3 0
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K1 ["NODE_ATTRIBUTES"]
       67 GETTABLEKS                       R8 R8 K2 ["DisplayName"]
       69 LOADNIL                          R9
       70 NAMECALL                         R6 R1 K13 ["SetAttribute"]
       72 CALL                             R6 3 0
       73 GETUPVAL                         R5 2
       74 MOVE                             R6 R1
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K4 ["NODE_CONFIGURATION_NAME"]
       78 CALL                             R5 2 1
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R6 R6 K14 ["switchMap"]
       82 MOVE                             R7 R5
       83 DUPCLOSURE                       R8 K15 [PROTO_55]
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U1
       87 CALL                             R6 2 1
       88 MOVE                             R3 R6
       89 JUMP                             ; [+13]
       90 GETUPVAL                         R4 4
       91 GETTABLEKS                       R4 R4 K16 ["attributes"]
       93 GETTABLEKS                       R4 R4 K17 ["observeString"]
       95 MOVE                             R5 R1
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["NODE_ATTRIBUTES"]
       99 GETTABLEKS                       R6 R6 K2 ["DisplayName"]
      101 CALL                             R4 2 1
      102 MOVE                             R3 R4
      103 GETUPVAL                         R4 5
      104 GETTABLEKS                       R4 R4 K18 ["observeNodeType"]
      106 MOVE                             R5 R1
      107 CALL                             R4 1 1
      108 GETUPVAL                         R5 3
      109 GETTABLEKS                       R5 R5 K19 ["observeInputPins"]
      111 MOVE                             R6 R1
      112 CALL                             R5 1 1
      113 GETUPVAL                         R6 6
      114 GETTABLEKS                       R6 R6 K20 ["createComputed"]
      116 NEWCLOSURE                       R7 P1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R5
      119 CAPTURE                          REF R3
      120 CAPTURE                          VAL R4
      121 CALL                             R6 1 -1
      122 CLOSEUPVALS                      R3
      123 RETURN                           R6 -1

PROTO_58:
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

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_58]
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

PROTO_61:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["Folder"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_62:
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

PROTO_63:
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
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R11 R11 K5 ["NODE_ATTRIBUTES"]
       25 GETTABLEKS                       R11 R11 K6 ["ParameterType"]
       27 NAMECALL                         R9 R8 K7 ["GetAttribute"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+13]
       31 MOVE                             R10 R3
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K8 ["observeParameterNodeInfo"]
       35 GETUPVAL                         R12 4
       36 MOVE                             R13 R8
       37 CALL                             R11 2 1
       38 MOVE                             R12 R0
       39 CALL                             R11 1 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 -1 0
       44 FORGLOOP                         R4 2 ; [-33]
       46 GETUPVAL                         R4 5
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+35]
       49 MOVE                             R4 R2
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 LOADK                            R12 K12 ["AnimationValueNodeDefinition"]
       54 NAMECALL                         R10 R8 K1 ["IsA"]
       56 CALL                             R10 2 1
       57 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       59 LOADK                            R11 K13 ["non-value-node observed for parameter node info lookup list"]
       60 GETIMPORT                        R9 K4 [assert]
       62 CALL                             R9 2 0
       63 GETTABLEKS                       R9 R8 K14 ["NodeType"]
       65 GETIMPORT                        R10 K18 [Enum.AnimationValueNodeType.Expression]
       67 JUMPIFNOTEQ                      R9 R10 ; [+14]
       69 MOVE                             R10 R3
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K19 ["observeExpressionValueNodeInfo"]
       73 GETUPVAL                         R12 4
       74 MOVE                             R13 R8
       75 CALL                             R11 2 1
       76 MOVE                             R12 R0
       77 CALL                             R11 1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R9 K11 [table.insert]
       81 CALL                             R9 -1 0
       82 FORGLOOP                         R4 2 ; [-30]
       84 GETIMPORT                        R4 K21 [table.freeze]
       86 MOVE                             R5 R3
       87 CALL                             R4 1 -1
       88 RETURN                           R4 -1

PROTO_64:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_61]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["switchMap"]
       10 MOVE                             R4 R1
       11 DUPCLOSURE                       R5 K2 [PROTO_62]
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["createComputed"]
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 CALL                             R4 1 1
       26 RETURN                           R4 1

PROTO_65:
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

PROTO_66:
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

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_65]
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_70]
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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
       21 DUPCLOSURE                       R7 K4 [PROTO_76]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_77]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_78]
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U2
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K3 ["switchMap"]
       47 MOVE                             R9 R4
       48 DUPCLOSURE                       R10 K7 [PROTO_79]
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

PROTO_82:
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
       14 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       15 NAMECALL                         R8 R6 K4 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+12]
       19 GETIMPORT                        R8 K6 [error]
       21 LOADK                            R9 K7 ["Unexpected key in root animations map: \"%*\" (%*)"]
       22 NAMECALL                         R11 R6 K8 ["GetFullName"]
       24 CALL                             R11 1 1
       25 GETTABLEKS                       R12 R6 K9 ["ClassName"]
       27 NAMECALL                         R9 R9 K10 ["format"]
       29 CALL                             R9 3 1
       30 CALL                             R8 1 0
       31 LOADK                            R10 K3 ["AnimationGraphDefinition"]
       32 NAMECALL                         R8 R7 K4 ["IsA"]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+5]
       36 DUPTABLE                         R8 K13 [{["from"] = "graph", ["graph"]}]
       37 SETTABLEKS                       R6 R8 K12 ["graph"]
       39 SETUPVAL                         R8 1
       40 RETURN                           R6 1
       41 GETUPVAL                         R8 1
       42 JUMPIFNOTEQKNIL                  R8 ; [+6]
       44 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       45 SETTABLEKS                       R6 R8 K12 ["graph"]
       47 MOVE                             R2 R8
       48 JUMP                             ; [+14]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K12 ["graph"]
       52 GETTABLEKS                       R8 R8 K16 ["Parent"]
       54 GETTABLEKS                       R9 R6 K16 ["Parent"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+2]
       58 JUMP                             ; [+4]
       59 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       60 SETTABLEKS                       R6 R8 K12 ["graph"]
       62 MOVE                             R2 R8
       63 FORGLOOP                         R3 2 ; [-56]
       65 JUMPIFEQKNIL                     R2 ; [+2]
       67 SETUPVAL                         R2 1
       68 GETUPVAL                         R3 1
       69 JUMPIFNOT                        R3 ; [+3]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K12 ["graph"]
       73 RETURN                           R3 1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRootAnimationsMap"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        5 CALL                             R1 2 1
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["switchMap"]
       17 MOVE                             R5 R3
       18 DUPCLOSURE                       R6 K4 [PROTO_83]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K2 ["createComputed"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CALL                             R5 1 1
       28 CLOSEUPVALS                      R2
       29 RETURN                           R5 1

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["switchMap"]
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["observeNodeInfoLookupList"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["observeParameterNodeInfoLookupList"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R2
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["createComputed"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K3 ["createComputed"]
       37 NEWCLOSURE                       R8 P2
       38 CAPTURE                          VAL R6
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K4 ["observeRenderInfoMap"]
       43 MOVE                             R9 R0
       44 MOVE                             R10 R1
       45 MOVE                             R11 R7
       46 CALL                             R8 3 1
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K5 ["forEach"]
       50 MOVE                             R10 R7
       51 NEWCLOSURE                       R11 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K3 ["createComputed"]
       60 NEWCLOSURE                       R11 P4
       61 CAPTURE                          VAL R9
       62 CALL                             R10 1 1
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K3 ["createComputed"]
       66 NEWCLOSURE                       R12 P5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R10
       71 CALL                             R11 1 -1
       72 RETURN                           R11 -1

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_97:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+39]
        3 JUMPIFEQKNIL                     R5 ; [+38]
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
       37 LOADNIL                          R8
       38 SETTABLEKS                       R8 R6 K6 ["Parent"]
       40 LOADB                            R8 1
       41 RETURN                           R8 1
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K7 ["_findNodeInputBinding"]
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R3
       48 MOVE                             R10 R4
       49 CALL                             R6 4 1
       50 JUMPIF                           R6 ; [+2]
       51 LOADB                            R7 0
       52 RETURN                           R7 1
       53 GETTABLEKS                       R9 R6 K8 ["wireId"]
       55 NAMECALL                         R7 R0 K0 ["idToInstance"]
       57 CALL                             R7 2 1
       58 JUMPIF                           R7 ; [+2]
       59 LOADB                            R8 0
       60 RETURN                           R8 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K4 ["removeNodeInputConnection"]
       64 MOVE                             R9 R0
       65 MOVE                             R10 R1
       66 MOVE                             R11 R2
       67 MOVE                             R12 R3
       68 MOVE                             R13 R4
       69 CALL                             R8 5 0
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K5 ["removeOrderedInputPin"]
       73 MOVE                             R9 R0
       74 MOVE                             R10 R1
       75 MOVE                             R11 R2
       76 MOVE                             R12 R3
       77 CALL                             R8 4 0
       78 LOADNIL                          R8
       79 SETTABLEKS                       R8 R7 K6 ["Parent"]
       81 LOADB                            R8 1
       82 RETURN                           R8 1

PROTO_98:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["_findNodeInputBinding"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 MOVE                             R10 R4
        7 MOVE                             R11 R5
        8 CALL                             R6 5 1
        9 JUMPIFNOT                        R6 ; [+15]
       10 GETTABLEKS                       R7 R6 K1 ["outputNodeId"]
       12 JUMPIFEQKNIL                     R7 ; [+12]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["removeNodeOutputConnection"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 GETTABLEKS                       R10 R6 K1 ["outputNodeId"]
       21 GETTABLEKS                       R11 R6 K3 ["outputNodePinId"]
       23 CALL                             R7 4 -1
       24 RETURN                           R7 -1
       25 LOADB                            R7 0
       26 RETURN                           R7 1

PROTO_99:
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

PROTO_100:
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

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["_findNodeOutputBinding"]
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
       23 JUMPIFNOT                        R5 ; [+131]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+128]
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+27]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K5 ["isAValueNodeWire"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 JUMPIFNOT                        R7 ; [+21]
       36 LOADK                            R10 K6 ["ObjectValue"]
       37 NAMECALL                         R8 R5 K7 ["IsA"]
       39 CALL                             R8 2 1
       40 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       42 LOADK                            R9 K8 ["Expected wire to be an ObjectValue for value node connection"]
       43 GETIMPORT                        R7 K10 [assert]
       45 CALL                             R7 2 0
       46 GETTABLEKS                       R7 R5 K11 ["Value"]
       48 JUMPIFNOT                        R7 ; [+3]
       49 LOADNIL                          R8
       50 SETTABLEKS                       R8 R7 K4 ["Parent"]
       52 LOADNIL                          R8
       53 SETTABLEKS                       R8 R5 K4 ["Parent"]
       55 LOADB                            R8 1
       56 RETURN                           R8 1
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K12 ["isAParameterWire"]
       60 MOVE                             R8 R0
       61 MOVE                             R9 R2
       62 MOVE                             R10 R5
       63 CALL                             R7 3 1
       64 LOADK                            R10 K6 ["ObjectValue"]
       65 NAMECALL                         R8 R5 K7 ["IsA"]
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+23]
       69 JUMPIFNOT                        R7 ; [+22]
       70 GETTABLEKS                       R9 R5 K11 ["Value"]
       72 JUMPIFNOT                        R9 ; [+10]
       73 GETTABLEKS                       R9 R5 K11 ["Value"]
       75 LOADK                            R11 K6 ["ObjectValue"]
       76 NAMECALL                         R9 R9 K7 ["IsA"]
       78 CALL                             R9 2 1
       79 JUMPIFNOT                        R9 ; [+3]
       80 GETTABLEKS                       R8 R5 K11 ["Value"]
       82 JUMP                             ; [+1]
       83 MOVE                             R8 R6
       84 JUMPIFNOT                        R8 ; [+54]
       85 GETTABLEKS                       R11 R4 K13 ["inputNodePinId"]
       87 LOADNIL                          R12
       88 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       90 CALL                             R9 3 0
       91 JUMP                             ; [+47]
       92 GETTABLEKS                       R9 R1 K15 ["lookup"]
       94 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
       96 GETTABLE                         R8 R9 R10
       97 JUMPIFNOT                        R8 ; [+41]
       98 GETTABLEKS                       R9 R8 K16 ["inputLabelPinToConnectionMap"]
      100 LOADNIL                          R10
      101 LOADNIL                          R11
      102 FORGPREP                         R9
      103 GETTABLEKS                       R15 R4 K13 ["inputNodePinId"]
      105 GETTABLE                         R14 R13 R15
      106 JUMPIFNOT                        R14 ; [+30]
      107 GETTABLEKS                       R17 R14 K1 ["wireId"]
      109 NAMECALL                         R15 R0 K2 ["idToInstance"]
      111 CALL                             R15 2 1
      112 JUMPIFNOT                        R15 ; [+24]
      113 GETTABLEKS                       R18 R14 K13 ["inputNodePinId"]
      115 LOADNIL                          R19
      116 NAMECALL                         R16 R5 K14 ["SetAttribute"]
      118 CALL                             R16 3 0
      119 GETUPVAL                         R16 1
      120 CALL                             R16 0 1
      121 JUMPIFNOT                        R16 ; [+12]
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R16 R16 K5 ["isAValueNodeWire"]
      125 MOVE                             R17 R15
      126 CALL                             R16 1 1
      127 JUMPIFNOT                        R16 ; [+6]
      128 GETTABLEKS                       R16 R15 K11 ["Value"]
      130 JUMPIFNOT                        R16 ; [+3]
      131 LOADNIL                          R17
      132 SETTABLEKS                       R17 R16 K4 ["Parent"]
      134 LOADNIL                          R16
      135 SETTABLEKS                       R16 R15 K4 ["Parent"]
      137 FORGLOOP                         R9 2 ; [-35]
      139 LOADK                            R10 K6 ["ObjectValue"]
      140 NAMECALL                         R8 R5 K7 ["IsA"]
      142 CALL                             R8 2 1
      143 JUMPIFNOT                        R8 ; [+8]
      144 GETUPVAL                         R8 2
      145 CALL                             R8 0 1
      146 JUMPIFNOT                        R8 ; [+1]
      147 JUMPIF                           R7 ; [+4]
      148 LOADNIL                          R8
      149 SETTABLEKS                       R8 R5 K11 ["Value"]
      151 JUMP                             ; [+3]
      152 LOADNIL                          R8
      153 SETTABLEKS                       R8 R5 K4 ["Parent"]
      155 LOADB                            R7 1
      156 RETURN                           R7 1

PROTO_103:
        0 LOADK                            R1 K0 ["connectionHint_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_104:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_105:
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
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K11 ["setParameterBindingName"]
       49 OR                               R11 R7 R2
       50 MOVE                             R12 R4
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R15 R15 K12 ["NODE_ATTRIBUTES"]
       54 GETTABLEKS                       R15 R15 K13 ["BindingName"]
       56 NAMECALL                         R13 R5 K14 ["GetAttribute"]
       58 CALL                             R13 2 1
       59 CALL                             R10 3 0
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K11 ["setParameterBindingName"]
       63 OR                               R11 R7 R2
       64 MOVE                             R12 R4
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R15 R15 K12 ["NODE_ATTRIBUTES"]
       68 GETTABLEKS                       R15 R15 K13 ["BindingName"]
       70 NAMECALL                         R13 R5 K14 ["GetAttribute"]
       72 CALL                             R13 2 1
       73 CALL                             R10 3 0
       74 MOVE                             R12 R8
       75 NAMECALL                         R10 R0 K15 ["instanceToId"]
       77 CALL                             R10 2 1
       78 MOVE                             R11 R4
       79 RETURN                           R10 2

PROTO_106:
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

PROTO_107:
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

PROTO_108:
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

PROTO_109:
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

PROTO_110:
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
      198 JUMPIFNOT                        R15 ; [+193]
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
      248 JUMP                             ; [+129]
      249 NAMECALL                         R19 R8 K11 ["GetOrderedInputPinNames"]
      251 CALL                             R19 1 1
      252 JUMPIFNOT                        R16 ; [+85]
      253 MOVE                             R20 R3
      254 JUMPIFNOT                        R9 ; [+75]
      255 JUMPIFNOT                        R4 ; [+74]
      256 GETUPVAL                         R22 4
      257 CALL                             R22 0 1
      258 JUMPIFNOT                        R22 ; [+36]
      259 GETUPVAL                         R22 5
      260 GETTABLEKS                       R22 R22 K20 ["NODE_CONFIGURATION_NAME"]
      262 LOADK                            R25 K21 ["Configuration"]
      263 NAMECALL                         R23 R9 K2 ["IsA"]
      265 CALL                             R23 2 1
      266 JUMPIFNOT                        R23 ; [+2]
      267 MOVE                             R21 R9
      268 JUMP                             ; [+17]
      269 MOVE                             R25 R22
      270 NAMECALL                         R23 R9 K12 ["FindFirstChild"]
      272 CALL                             R23 2 1
      273 JUMPIFEQKNIL                     R23 ; [+3]
      275 MOVE                             R21 R23
      276 JUMP                             ; [+9]
      277 GETIMPORT                        R23 K24 [Instance.new]
      279 LOADK                            R24 K21 ["Configuration"]
      280 CALL                             R23 1 1
      281 SETTABLEKS                       R22 R23 K19 ["Name"]
      283 SETTABLEKS                       R9 R23 K25 ["Parent"]
      285 MOVE                             R21 R23
      286 GETUPVAL                         R23 5
      287 GETTABLEKS                       R23 R23 K26 ["NODE_ATTRIBUTES"]
      289 GETTABLEKS                       R23 R23 K27 ["DisplayName"]
      291 NAMECALL                         R21 R21 K28 ["GetAttribute"]
      293 CALL                             R21 2 1
      294 JUMP                             ; [+8]
      295 GETUPVAL                         R23 5
      296 GETTABLEKS                       R23 R23 K26 ["NODE_ATTRIBUTES"]
      298 GETTABLEKS                       R23 R23 K27 ["DisplayName"]
      300 NAMECALL                         R21 R9 K28 ["GetAttribute"]
      302 CALL                             R21 2 1
      303 GETTABLEKS                       R24 R1 K29 ["lookup"]
      305 GETTABLE                         R23 R24 R4
      306 JUMPIFNOT                        R23 ; [+6]
      307 GETTABLEKS                       R23 R1 K29 ["lookup"]
      309 GETTABLE                         R22 R23 R4
      310 GETTABLEKS                       R22 R22 K30 ["name"]
      312 JUMPIF                           R22 ; [+2]
      313 GETTABLEKS                       R22 R9 K19 ["Name"]
      315 LOADK                            R25 K31 ["Node%d*$"]
      316 LOADK                            R26 K32 [""]
      317 NAMECALL                         R23 R22 K33 ["gsub"]
      319 CALL                             R23 3 1
      320 MOVE                             R22 R23
      321 JUMPIFNOT                        R21 ; [+7]
      322 FASTCALL1                        TOSTRING R21 ; [+3]
      323 MOVE                             R24 R21
      324 GETIMPORT                        R23 K35 [tostring]
      326 CALL                             R23 1 1
      327 MOVE                             R20 R23
      328 JUMP                             ; [+1]
      329 MOVE                             R20 R22
      330 GETUPVAL                         R21 1
      331 GETTABLEKS                       R21 R21 K36 ["getDynamicInputPinNameFromInputPinIds"]
      333 MOVE                             R22 R19
      334 MOVE                             R23 R20
      335 CALL                             R21 2 1
      336 MOVE                             R18 R21
      337 JUMP                             ; [+1]
      338 MOVE                             R18 R3
      339 MOVE                             R22 R18
      340 NAMECALL                         R20 R8 K12 ["FindFirstChild"]
      342 CALL                             R20 2 1
      343 JUMPIFEQKNIL                     R20 ; [+8]
      345 LOADK                            R23 K13 ["ObjectValue"]
      346 NAMECALL                         R21 R20 K2 ["IsA"]
      348 CALL                             R21 2 1
      349 JUMPIFNOT                        R21 ; [+2]
      350 MOVE                             R17 R20
      351 JUMP                             ; [+9]
      352 GETIMPORT                        R21 K24 [Instance.new]
      354 LOADK                            R22 K13 ["ObjectValue"]
      355 CALL                             R21 1 1
      356 MOVE                             R17 R21
      357 SETTABLEKS                       R18 R17 K19 ["Name"]
      359 SETTABLEKS                       R8 R17 K25 ["Parent"]
      361 GETIMPORT                        R21 K39 [table.find]
      363 MOVE                             R22 R19
      364 MOVE                             R23 R18
      365 CALL                             R21 2 1
      366 JUMPIF                           R21 ; [+11]
      367 FASTCALL2                        TABLE_INSERT R19 R18 ; [+5]
      369 MOVE                             R22 R19
      370 MOVE                             R23 R18
      371 GETIMPORT                        R21 K41 [table.insert]
      373 CALL                             R21 2 0
      374 MOVE                             R23 R19
      375 NAMECALL                         R21 R8 K42 ["SetOrderedInputPinNames"]
      377 CALL                             R21 2 0
      378 SETTABLEKS                       R9 R17 K43 ["Value"]
      380 MOVE                             R21 R17
      381 NAMECALL                         R19 R0 K44 ["ensureInputId"]
      383 CALL                             R19 2 1
      384 GETUPVAL                         R20 6
      385 MOVE                             R21 R8
      386 MOVE                             R22 R17
      387 CALL                             R20 2 0
      388 MOVE                             R20 R19
      389 MOVE                             R21 R18
      390 MOVE                             R22 R17
      391 RETURN                           R20 3
      392 LOADNIL                          R15
      393 GETUPVAL                         R16 1
      394 GETTABLEKS                       R16 R16 K17 ["hasDynamicInputPins"]
      396 MOVE                             R17 R1
      397 MOVE                             R18 R2
      398 CALL                             R16 2 1
      399 JUMPIFNOT                        R16 ; [+136]
      400 NAMECALL                         R16 R8 K11 ["GetOrderedInputPinNames"]
      402 CALL                             R16 1 1
      403 JUMPIFNOT                        R11 ; [+7]
      404 GETIMPORT                        R17 K39 [table.find]
      406 MOVE                             R18 R16
      407 GETTABLEKS                       R19 R11 K45 ["inputNodePinId"]
      409 CALL                             R17 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R17
      412 JUMPIFNOT                        R17 ; [+5]
      413 GETIMPORT                        R18 K47 [table.remove]
      415 MOVE                             R19 R16
      416 MOVE                             R20 R17
      417 CALL                             R18 2 0
      418 JUMPIFNOT                        R13 ; [+7]
      419 GETIMPORT                        R18 K39 [table.find]
      421 MOVE                             R19 R16
      422 GETTABLEKS                       R20 R13 K45 ["inputNodePinId"]
      424 CALL                             R18 2 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R18
      427 JUMPIFNOT                        R18 ; [+5]
      428 GETIMPORT                        R19 K47 [table.remove]
      430 MOVE                             R20 R16
      431 MOVE                             R21 R18
      432 CALL                             R19 2 0
      433 JUMPIFNOT                        R9 ; [+100]
      434 JUMPIFNOT                        R4 ; [+99]
      435 GETUPVAL                         R20 4
      436 CALL                             R20 0 1
      437 JUMPIFNOT                        R20 ; [+36]
      438 GETUPVAL                         R20 5
      439 GETTABLEKS                       R20 R20 K20 ["NODE_CONFIGURATION_NAME"]
      441 LOADK                            R23 K21 ["Configuration"]
      442 NAMECALL                         R21 R9 K2 ["IsA"]
      444 CALL                             R21 2 1
      445 JUMPIFNOT                        R21 ; [+2]
      446 MOVE                             R19 R9
      447 JUMP                             ; [+17]
      448 MOVE                             R23 R20
      449 NAMECALL                         R21 R9 K12 ["FindFirstChild"]
      451 CALL                             R21 2 1
      452 JUMPIFEQKNIL                     R21 ; [+3]
      454 MOVE                             R19 R21
      455 JUMP                             ; [+9]
      456 GETIMPORT                        R21 K24 [Instance.new]
      458 LOADK                            R22 K21 ["Configuration"]
      459 CALL                             R21 1 1
      460 SETTABLEKS                       R20 R21 K19 ["Name"]
      462 SETTABLEKS                       R9 R21 K25 ["Parent"]
      464 MOVE                             R19 R21
      465 GETUPVAL                         R21 5
      466 GETTABLEKS                       R21 R21 K26 ["NODE_ATTRIBUTES"]
      468 GETTABLEKS                       R21 R21 K27 ["DisplayName"]
      470 NAMECALL                         R19 R19 K28 ["GetAttribute"]
      472 CALL                             R19 2 1
      473 JUMP                             ; [+8]
      474 GETUPVAL                         R21 5
      475 GETTABLEKS                       R21 R21 K26 ["NODE_ATTRIBUTES"]
      477 GETTABLEKS                       R21 R21 K27 ["DisplayName"]
      479 NAMECALL                         R19 R9 K28 ["GetAttribute"]
      481 CALL                             R19 2 1
      482 GETUPVAL                         R20 7
      483 CALL                             R20 0 1
      484 JUMPIFNOT                        R20 ; [+33]
      485 GETTABLEKS                       R22 R1 K29 ["lookup"]
      487 GETTABLE                         R21 R22 R4
      488 JUMPIFNOT                        R21 ; [+6]
      489 GETTABLEKS                       R21 R1 K29 ["lookup"]
      491 GETTABLE                         R20 R21 R4
      492 GETTABLEKS                       R20 R20 K30 ["name"]
      494 JUMPIF                           R20 ; [+2]
      495 GETTABLEKS                       R20 R9 K19 ["Name"]
      497 LOADK                            R23 K31 ["Node%d*$"]
      498 LOADK                            R24 K32 [""]
      499 NAMECALL                         R21 R20 K33 ["gsub"]
      501 CALL                             R21 3 1
      502 MOVE                             R20 R21
      503 GETUPVAL                         R21 1
      504 GETTABLEKS                       R21 R21 K36 ["getDynamicInputPinNameFromInputPinIds"]
      506 MOVE                             R22 R16
      507 JUMPIFNOT                        R19 ; [+6]
      508 FASTCALL1                        TOSTRING R19 ; [+3]
      509 MOVE                             R24 R19
      510 GETIMPORT                        R23 K35 [tostring]
      512 CALL                             R23 1 1
      513 JUMP                             ; [+1]
      514 MOVE                             R23 R20
      515 CALL                             R21 2 1
      516 MOVE                             R15 R21
      517 JUMP                             ; [+19]
      518 GETUPVAL                         R20 1
      519 GETTABLEKS                       R20 R20 K36 ["getDynamicInputPinNameFromInputPinIds"]
      521 MOVE                             R21 R16
      522 JUMPIFNOT                        R19 ; [+6]
      523 FASTCALL1                        TOSTRING R19 ; [+3]
      524 MOVE                             R23 R19
      525 GETIMPORT                        R22 K35 [tostring]
      527 CALL                             R22 1 1
      528 JUMP                             ; [+2]
      529 GETTABLEKS                       R22 R9 K19 ["Name"]
      531 CALL                             R20 2 1
      532 MOVE                             R15 R20
      533 JUMP                             ; [+3]
      534 MOVE                             R15 R3
      535 JUMP                             ; [+1]
      536 MOVE                             R15 R3
      537 JUMPIFEQ                         R15 R3 ; [+9]
      539 GETUPVAL                         R16 1
      540 GETTABLEKS                       R16 R16 K9 ["_findNodeInputBinding"]
      542 MOVE                             R17 R1
      543 MOVE                             R18 R2
      544 MOVE                             R19 R15
      545 CALL                             R16 3 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R16
      548 JUMPIFNOT                        R16 ; [+6]
      549 GETTABLEKS                       R19 R16 K8 ["wireId"]
      551 NAMECALL                         R17 R0 K0 ["idToInstance"]
      553 CALL                             R17 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R17
      556 JUMPIFEQKNIL                     R14 ; [+13]
      558 MOVE                             R21 R10
      559 NAMECALL                         R19 R14 K18 ["IsDescendantOf"]
      561 CALL                             R19 2 1
      562 JUMPIFNOT                        R19 ; [+7]
      563 LOADK                            R21 K13 ["ObjectValue"]
      564 NAMECALL                         R19 R14 K2 ["IsA"]
      566 CALL                             R19 2 1
      567 JUMPIFNOT                        R19 ; [+2]
      568 MOVE                             R18 R14
      569 JUMP                             ; [+32]
      570 JUMPIFEQKNIL                     R17 ; [+13]
      572 MOVE                             R21 R10
      573 NAMECALL                         R19 R17 K18 ["IsDescendantOf"]
      575 CALL                             R19 2 1
      576 JUMPIFNOT                        R19 ; [+7]
      577 LOADK                            R21 K13 ["ObjectValue"]
      578 NAMECALL                         R19 R17 K2 ["IsA"]
      580 CALL                             R19 2 1
      581 JUMPIFNOT                        R19 ; [+2]
      582 MOVE                             R18 R17
      583 JUMP                             ; [+18]
      584 JUMPIFEQKNIL                     R12 ; [+13]
      586 MOVE                             R21 R10
      587 NAMECALL                         R19 R12 K18 ["IsDescendantOf"]
      589 CALL                             R19 2 1
      590 JUMPIFNOT                        R19 ; [+7]
      591 LOADK                            R21 K13 ["ObjectValue"]
      592 NAMECALL                         R19 R12 K2 ["IsA"]
      594 CALL                             R19 2 1
      595 JUMPIFNOT                        R19 ; [+2]
      596 MOVE                             R18 R12
      597 JUMP                             ; [+4]
      598 GETIMPORT                        R18 K24 [Instance.new]
      600 LOADK                            R19 K13 ["ObjectValue"]
      601 CALL                             R18 1 1
      602 JUMPIFNOT                        R17 ; [+5]
      603 JUMPIFEQ                         R17 R18 ; [+4]
      605 LOADNIL                          R19
      606 SETTABLEKS                       R19 R17 K25 ["Parent"]
      608 JUMPIFNOT                        R12 ; [+5]
      609 JUMPIFEQ                         R12 R18 ; [+4]
      611 LOADNIL                          R19
      612 SETTABLEKS                       R19 R12 K25 ["Parent"]
      614 JUMPIFNOT                        R14 ; [+5]
      615 JUMPIFEQ                         R14 R18 ; [+4]
      617 LOADNIL                          R19
      618 SETTABLEKS                       R19 R14 K25 ["Parent"]
      620 NAMECALL                         R19 R8 K48 ["GetChildren"]
      622 CALL                             R19 1 3
      623 FORGPREP                         R19
      624 LOADK                            R26 K13 ["ObjectValue"]
      625 NAMECALL                         R24 R23 K2 ["IsA"]
      627 CALL                             R24 2 1
      628 JUMPIFNOT                        R24 ; [+9]
      629 GETTABLEKS                       R24 R23 K19 ["Name"]
      631 JUMPIFNOTEQ                      R24 R15 ; [+6]
      633 JUMPIFEQ                         R23 R18 ; [+4]
      635 LOADNIL                          R24
      636 SETTABLEKS                       R24 R23 K25 ["Parent"]
      638 FORGLOOP                         R19 2 ; [-15]
      640 NAMECALL                         R19 R8 K11 ["GetOrderedInputPinNames"]
      642 CALL                             R19 1 1
      643 JUMPIFEQ                         R15 R3 ; [+19]
      645 GETIMPORT                        R20 K39 [table.find]
      647 MOVE                             R21 R19
      648 MOVE                             R22 R3
      649 CALL                             R20 2 1
      650 GETIMPORT                        R21 K39 [table.find]
      652 MOVE                             R22 R19
      653 MOVE                             R23 R15
      654 CALL                             R21 2 1
      655 JUMPIFNOT                        R20 ; [+1]
      656 SETTABLE                         R15 R19 R20
      657 JUMPIFNOT                        R21 ; [+5]
      658 GETIMPORT                        R22 K47 [table.remove]
      660 MOVE                             R23 R19
      661 MOVE                             R24 R21
      662 CALL                             R22 2 0
      663 GETIMPORT                        R20 K39 [table.find]
      665 MOVE                             R21 R19
      666 MOVE                             R22 R15
      667 CALL                             R20 2 1
      668 JUMPIF                           R20 ; [+7]
      669 FASTCALL2                        TABLE_INSERT R19 R15 ; [+5]
      671 MOVE                             R21 R19
      672 MOVE                             R22 R15
      673 GETIMPORT                        R20 K41 [table.insert]
      675 CALL                             R20 2 0
      676 MOVE                             R22 R19
      677 NAMECALL                         R20 R8 K42 ["SetOrderedInputPinNames"]
      679 CALL                             R20 2 0
      680 SETTABLEKS                       R15 R18 K19 ["Name"]
      682 SETTABLEKS                       R9 R18 K43 ["Value"]
      684 SETTABLEKS                       R8 R18 K25 ["Parent"]
      686 GETUPVAL                         R20 6
      687 MOVE                             R21 R8
      688 MOVE                             R22 R18
      689 CALL                             R20 2 0
      690 MOVE                             R22 R18
      691 NAMECALL                         R20 R0 K49 ["instanceToId"]
      693 CALL                             R20 2 1
      694 MOVE                             R21 R15
      695 MOVE                             R22 R18
      696 RETURN                           R20 3

PROTO_111:
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

PROTO_112:
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

PROTO_113:
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

PROTO_114:
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

PROTO_115:
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

PROTO_116:
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

PROTO_117:
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

PROTO_118:
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

PROTO_119:
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

PROTO_120:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["getAnimSavesFolderForTarget"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["getOrCreateAnimSavesFolderWithNoRig"]
       15 CALL                             R1 0 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K0 ["getAnimSavesFolderForTarget"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 RETURN                           R1 1

PROTO_121:
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

PROTO_122:
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
       70 GETUPVAL                         R10 3
       71 CALL                             R10 0 1
       72 JUMPIFNOT                        R10 ; [+6]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K22 ["predictOutputPosition"]
       76 MOVE                             R10 R1
       77 CALL                             R9 1 1
       78 JUMP                             ; [+1]
       79 MOVE                             R9 R1
       80 CALL                             R7 2 0
       81 RETURN                           R3 1

PROTO_123:
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

PROTO_124:
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

PROTO_125:
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

PROTO_126:
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

PROTO_127:
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
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Rig"]
       19 GETTABLEKS                       R3 R3 K12 ["AnimationRigDataUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Util"]
       26 GETTABLEKS                       R4 R4 K13 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["Instances"]
       35 GETTABLEKS                       R5 R5 K15 ["InstanceRegistry"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K10 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["Instances"]
       44 GETTABLEKS                       R6 R6 K16 ["InstanceSelectionRegistry"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K17 ["Parent"]
       51 GETTABLEKS                       R7 R7 K18 ["NodeGraphing"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K19 ["NodeViewTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K10 ["Util"]
       63 GETTABLEKS                       R9 R9 K20 ["Signals"]
       65 GETTABLEKS                       R9 R9 K21 ["Experimental"]
       67 GETTABLEKS                       R9 R9 K22 ["SignalExperimentalUtils"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K17 ["Parent"]
       74 GETTABLEKS                       R10 R10 K20 ["Signals"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K10 ["Util"]
       81 GETTABLEKS                       R11 R11 K20 ["Signals"]
       83 GETTABLEKS                       R11 R11 K23 ["SignalsAnimationUtils"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R1 K10 ["Util"]
       90 GETTABLEKS                       R12 R12 K20 ["Signals"]
       92 GETTABLEKS                       R12 R12 K24 ["SignalsInstanceUtils"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R13 R1 K25 ["Components"]
       99 GETTABLEKS                       R13 R13 K26 ["NodeView"]
      101 GETTABLEKS                       R13 R13 K27 ["StateMachine"]
      103 GETTABLEKS                       R13 R13 K28 ["StateMachineTransitionNaming"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R14 R1 K10 ["Util"]
      110 GETTABLEKS                       R14 R14 K20 ["Signals"]
      112 GETTABLEKS                       R14 R14 K29 ["TypedInstanceSignals"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R15 R1 K10 ["Util"]
      119 GETTABLEKS                       R15 R15 K30 ["getDeduplicatedName"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K9 [require]
      124 GETTABLEKS                       R16 R1 K31 ["Flags"]
      126 GETTABLEKS                       R16 R16 K32 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K9 [require]
      131 GETTABLEKS                       R17 R1 K31 ["Flags"]
      133 GETTABLEKS                       R17 R17 K33 ["getFFlagAnimGraphUIEnableValueNodes"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R18 R1 K31 ["Flags"]
      140 GETTABLEKS                       R18 R18 K34 ["getFFlagAnimGraphUIInputIds"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K9 [require]
      145 GETTABLEKS                       R19 R1 K31 ["Flags"]
      147 GETTABLEKS                       R19 R19 K35 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K9 [require]
      152 GETTABLEKS                       R20 R1 K31 ["Flags"]
      154 GETTABLEKS                       R20 R20 K36 ["getFFlagAnimGraphUIPasteWithoutConnections"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K9 [require]
      159 GETTABLEKS                       R21 R1 K31 ["Flags"]
      161 GETTABLEKS                       R21 R21 K37 ["getFFlagAnimGraphUIRemoveOrphanedParameterWires"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R22 R1 K31 ["Flags"]
      168 GETTABLEKS                       R22 R22 K38 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R23 R1 K31 ["Flags"]
      175 GETTABLEKS                       R23 R23 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K9 [require]
      180 GETTABLEKS                       R24 R1 K31 ["Flags"]
      182 GETTABLEKS                       R24 R24 K40 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K9 [require]
      187 GETTABLEKS                       R25 R1 K10 ["Util"]
      189 GETTABLEKS                       R25 R25 K41 ["parseAnimationNodeType"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K9 [require]
      194 GETTABLEKS                       R26 R1 K25 ["Components"]
      196 GETTABLEKS                       R26 R26 K26 ["NodeView"]
      198 GETTABLEKS                       R26 R26 K27 ["StateMachine"]
      200 GETTABLEKS                       R26 R26 K42 ["resolveStateMachineNodeDefinition"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K9 [require]
      205 GETTABLEKS                       R27 R1 K25 ["Components"]
      207 GETTABLEKS                       R27 R27 K26 ["NodeView"]
      209 GETTABLEKS                       R27 R27 K27 ["StateMachine"]
      211 GETTABLEKS                       R27 R27 K43 ["supportsStateMachineNode"]
      213 CALL                             R26 1 1
      214 NEWTABLE                         R27 128 0
      216 DUPCLOSURE                       R28 K44 [PROTO_0]
      217 DUPCLOSURE                       R29 K45 [PROTO_2]
      218 CAPTURE                          VAL R11
      219 DUPCLOSURE                       R30 K46 [PROTO_3]
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R3
      222 SETTABLEKS                       R30 R27 K47 ["getOrCreateParameterInstance"]
      224 DUPCLOSURE                       R30 K48 [PROTO_4]
      225 SETTABLEKS                       R30 R27 K49 ["isValueNode"]
      227 DUPCLOSURE                       R30 K50 [PROTO_5]
      228 SETTABLEKS                       R30 R27 K51 ["getUniqueValueNodeName"]
      230 DUPCLOSURE                       R30 K52 [PROTO_6]
      231 SETTABLEKS                       R30 R27 K53 ["isValueOutputEndpoint"]
      233 DUPCLOSURE                       R30 K54 [PROTO_7]
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R3
      236 SETTABLEKS                       R30 R27 K55 ["getOrCreateExpressionInstance"]
      238 DUPCLOSURE                       R30 K56 [PROTO_8]
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R3
      241 SETTABLEKS                       R30 R27 K57 ["createExistingParameterInstance"]
      243 DUPCLOSURE                       R30 K58 [PROTO_10]
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R30 R27 K59 ["getParameterType"]
      247 DUPCLOSURE                       R30 K60 [PROTO_11]
      248 SETTABLEKS                       R30 R27 K61 ["setParameterBindingName"]
      250 DUPCLOSURE                       R30 K62 [PROTO_12]
      251 CAPTURE                          VAL R3
      252 SETTABLEKS                       R30 R27 K63 ["getNodePosition"]
      254 DUPCLOSURE                       R30 K64 [PROTO_13]
      255 CAPTURE                          VAL R3
      256 SETTABLEKS                       R30 R27 K65 ["predictOutputPosition"]
      258 DUPCLOSURE                       R30 K66 [PROTO_14]
      259 CAPTURE                          VAL R3
      260 SETTABLEKS                       R30 R27 K67 ["setNodePosition"]
      262 DUPCLOSURE                       R30 K68 [PROTO_15]
      263 CAPTURE                          VAL R3
      264 SETTABLEKS                       R30 R27 K69 ["setNodeSize"]
      266 DUPCLOSURE                       R30 K70 [PROTO_16]
      267 CAPTURE                          VAL R3
      268 SETTABLEKS                       R30 R27 K71 ["setNodeIsCollapsed"]
      270 DUPCLOSURE                       R30 K72 [PROTO_17]
      271 CAPTURE                          VAL R3
      272 SETTABLEKS                       R30 R27 K73 ["setDisplayName"]
      274 DUPCLOSURE                       R30 K74 [PROTO_18]
      275 CAPTURE                          VAL R3
      276 SETTABLEKS                       R30 R27 K75 ["setZIndex"]
      278 DUPCLOSURE                       R30 K76 [PROTO_19]
      279 SETTABLEKS                       R30 R27 K77 ["getParameterInstanceName"]
      281 DUPCLOSURE                       R30 K78 [PROTO_20]
      282 CAPTURE                          VAL R27
      283 SETTABLEKS                       R30 R27 K79 ["getAllParameterInstancesFromName"]
      285 DUPCLOSURE                       R30 K80 [PROTO_22]
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R11
      288 CAPTURE                          VAL R8
      289 CAPTURE                          VAL R16
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R17
      292 SETTABLEKS                       R30 R27 K81 ["observeWireInfo"]
      294 DUPCLOSURE                       R30 K82 [PROTO_32]
      295 CAPTURE                          VAL R11
      296 CAPTURE                          VAL R16
      297 CAPTURE                          VAL R27
      298 CAPTURE                          VAL R8
      299 CAPTURE                          VAL R17
      300 SETTABLEKS                       R30 R27 K83 ["observeNodeConnectionMap"]
      302 DUPCLOSURE                       R30 K84 [PROTO_33]
      303 SETTABLEKS                       R30 R27 K85 ["matchParameterBinding"]
      305 DUPCLOSURE                       R30 K86 [PROTO_34]
      306 CAPTURE                          VAL R3
      307 SETTABLEKS                       R30 R27 K87 ["setExpressionNodeValue"]
      309 DUPCLOSURE                       R30 K88 [PROTO_37]
      310 CAPTURE                          VAL R13
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R8
      313 SETTABLEKS                       R30 R27 K89 ["observeParameterNodeInfo"]
      315 DUPCLOSURE                       R30 K90 [PROTO_40]
      316 CAPTURE                          VAL R13
      317 CAPTURE                          VAL R8
      318 CAPTURE                          VAL R3
      319 SETTABLEKS                       R30 R27 K91 ["observeExpressionValueNodeInfo"]
      321 DUPCLOSURE                       R30 K92 [PROTO_50]
      322 CAPTURE                          VAL R11
      323 CAPTURE                          VAL R27
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R0
      326 CAPTURE                          VAL R13
      327 SETTABLEKS                       R30 R27 K93 ["observeNodeProps"]
      329 DUPCLOSURE                       R30 K94 [PROTO_52]
      330 CAPTURE                          VAL R13
      331 CAPTURE                          VAL R8
      332 SETTABLEKS                       R30 R27 K95 ["observeNodeType"]
      334 DUPCLOSURE                       R30 K96 [PROTO_54]
      335 CAPTURE                          VAL R13
      336 CAPTURE                          VAL R8
      337 SETTABLEKS                       R30 R27 K97 ["observeValueNodeType"]
      339 DUPCLOSURE                       R30 K98 [PROTO_57]
      340 CAPTURE                          VAL R23
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R29
      343 CAPTURE                          VAL R11
      344 CAPTURE                          VAL R13
      345 CAPTURE                          VAL R27
      346 CAPTURE                          VAL R8
      347 SETTABLEKS                       R30 R27 K99 ["observeNodeInfo"]
      349 DUPCLOSURE                       R30 K100 [PROTO_60]
      350 CAPTURE                          VAL R11
      351 CAPTURE                          VAL R27
      352 SETTABLEKS                       R30 R27 K101 ["observeNodeInfoLookupList"]
      354 DUPCLOSURE                       R30 K102 [PROTO_64]
      355 CAPTURE                          VAL R11
      356 CAPTURE                          VAL R16
      357 CAPTURE                          VAL R8
      358 CAPTURE                          VAL R3
      359 CAPTURE                          VAL R27
      360 CAPTURE                          VAL R15
      361 SETTABLEKS                       R30 R27 K103 ["observeParameterNodeInfoLookupList"]
      363 DUPCLOSURE                       R30 K104 [PROTO_67]
      364 CAPTURE                          VAL R11
      365 CAPTURE                          VAL R16
      366 SETTABLEKS                       R30 R27 K105 ["observeValueNodeInfoLookupList"]
      368 DUPCLOSURE                       R30 K106 [PROTO_69]
      369 CAPTURE                          VAL R27
      370 SETTABLEKS                       R30 R27 K107 ["cleanUpWiresForDeletedNode"]
      372 DUPCLOSURE                       R30 K108 [PROTO_72]
      373 CAPTURE                          VAL R11
      374 CAPTURE                          VAL R8
      375 CAPTURE                          VAL R13
      376 CAPTURE                          VAL R3
      377 SETTABLEKS                       R30 R27 K109 ["observeExpressionNodes"]
      379 DUPCLOSURE                       R30 K110 [PROTO_75]
      380 CAPTURE                          VAL R11
      381 CAPTURE                          VAL R27
      382 CAPTURE                          VAL R8
      383 SETTABLEKS                       R30 R27 K111 ["observeRenderInfoMap"]
      385 DUPCLOSURE                       R30 K112 [PROTO_81]
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R29
      388 CAPTURE                          VAL R3
      389 CAPTURE                          VAL R13
      390 CAPTURE                          VAL R8
      391 SETTABLEKS                       R30 R27 K113 ["observeRenderInfo"]
      393 DUPCLOSURE                       R30 K114 [PROTO_85]
      394 CAPTURE                          VAL R10
      395 CAPTURE                          VAL R8
      396 CAPTURE                          VAL R11
      397 SETTABLEKS                       R30 R27 K115 ["observeEditingAnimationGraphDefinition"]
      399 DUPCLOSURE                       R30 K116 [PROTO_93]
      400 CAPTURE                          VAL R11
      401 CAPTURE                          VAL R27
      402 CAPTURE                          VAL R8
      403 CAPTURE                          VAL R17
      404 CAPTURE                          VAL R16
      405 CAPTURE                          VAL R3
      406 SETTABLEKS                       R30 R27 K117 ["observeGraphState"]
      408 DUPCLOSURE                       R30 K118 [PROTO_94]
      409 SETTABLEKS                       R30 R27 K119 ["fitGraphRect"]
      411 DUPCLOSURE                       R30 K120 [PROTO_95]
      412 CAPTURE                          VAL R17
      413 SETTABLEKS                       R30 R27 K121 ["_findNodeInputBinding"]
      415 DUPCLOSURE                       R30 K122 [PROTO_96]
      416 SETTABLEKS                       R30 R27 K123 ["_findNodeOutputBinding"]
      418 DUPCLOSURE                       R30 K124 [PROTO_97]
      419 CAPTURE                          VAL R17
      420 CAPTURE                          VAL R27
      421 SETTABLEKS                       R30 R27 K125 ["deleteNodeInput"]
      423 DUPCLOSURE                       R30 K126 [PROTO_98]
      424 CAPTURE                          VAL R27
      425 SETTABLEKS                       R30 R27 K127 ["removeNodeInputConnection"]
      427 DUPCLOSURE                       R30 K128 [PROTO_99]
      428 SETTABLEKS                       R30 R27 K129 ["isAParameterWire"]
      430 DUPCLOSURE                       R30 K130 [PROTO_100]
      431 CAPTURE                          VAL R27
      432 SETTABLEKS                       R30 R27 K131 ["isAValueNodeWire"]
      434 DUPCLOSURE                       R30 K132 [PROTO_101]
      435 CAPTURE                          VAL R27
      436 SETTABLEKS                       R30 R27 K133 ["removeOrderedInputPin"]
      438 DUPCLOSURE                       R30 K134 [PROTO_102]
      439 CAPTURE                          VAL R27
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R20
      442 SETTABLEKS                       R30 R27 K135 ["removeNodeOutputConnection"]
      444 DUPCLOSURE                       R30 K136 [PROTO_103]
      445 SETTABLEKS                       R30 R27 K137 ["getParameterWireName"]
      447 DUPCLOSURE                       R30 K138 [PROTO_104]
      448 SETTABLEKS                       R30 R27 K139 ["getParameterWireInputPinId"]
      450 DUPCLOSURE                       R30 K140 [PROTO_105]
      451 CAPTURE                          VAL R16
      452 CAPTURE                          VAL R27
      453 CAPTURE                          VAL R3
      454 SETTABLEKS                       R30 R27 K141 ["setParameterConnection"]
      456 DUPCLOSURE                       R30 K142 [PROTO_106]
      457 CAPTURE                          VAL R27
      458 SETTABLEKS                       R30 R27 K143 ["setValueNodeConnection"]
      460 DUPCLOSURE                       R30 K144 [PROTO_107]
      461 CAPTURE                          VAL R3
      462 DUPCLOSURE                       R31 K145 [PROTO_108]
      463 CAPTURE                          VAL R3
      464 DUPCLOSURE                       R32 K146 [PROTO_109]
      465 CAPTURE                          VAL R21
      466 CAPTURE                          VAL R26
      467 CAPTURE                          VAL R12
      468 CAPTURE                          VAL R3
      469 CAPTURE                          VAL R27
      470 CAPTURE                          VAL R31
      471 DUPCLOSURE                       R33 K147 [PROTO_110]
      472 CAPTURE                          VAL R16
      473 CAPTURE                          VAL R27
      474 CAPTURE                          VAL R6
      475 CAPTURE                          VAL R17
      476 CAPTURE                          VAL R23
      477 CAPTURE                          VAL R3
      478 CAPTURE                          VAL R32
      479 CAPTURE                          VAL R18
      480 SETTABLEKS                       R33 R27 K148 ["setNodeConnection"]
      482 DUPCLOSURE                       R33 K149 [PROTO_111]
      483 CAPTURE                          VAL R24
      484 CAPTURE                          VAL R27
      485 SETTABLEKS                       R33 R27 K150 ["hasDynamicInputPins"]
      487 DUPCLOSURE                       R33 K151 [PROTO_112]
      488 CAPTURE                          VAL R0
      489 CAPTURE                          VAL R25
      490 SETTABLEKS                       R33 R27 K152 ["nodeTypeHasDynamicInputPins"]
      492 DUPCLOSURE                       R33 K153 [PROTO_113]
      493 SETTABLEKS                       R33 R27 K154 ["reorderPins"]
      495 DUPCLOSURE                       R33 K155 [PROTO_114]
      496 CAPTURE                          VAL R27
      497 CAPTURE                          VAL R21
      498 CAPTURE                          VAL R26
      499 CAPTURE                          VAL R12
      500 SETTABLEKS                       R33 R27 K156 ["renameDynamicInputPin"]
      502 DUPCLOSURE                       R33 K157 [PROTO_115]
      503 CAPTURE                          VAL R27
      504 CAPTURE                          VAL R21
      505 CAPTURE                          VAL R26
      506 CAPTURE                          VAL R12
      507 SETTABLEKS                       R33 R27 K158 ["renameInputPin"]
      509 DUPCLOSURE                       R33 K159 [PROTO_116]
      510 CAPTURE                          VAL R27
      511 SETTABLEKS                       R33 R27 K160 ["getDynamicInputPinName"]
      513 DUPCLOSURE                       R33 K161 [PROTO_117]
      514 CAPTURE                          VAL R27
      515 SETTABLEKS                       R33 R27 K162 ["getDynamicInputPinNameFromInputNode"]
      517 DUPCLOSURE                       R33 K163 [PROTO_118]
      518 SETTABLEKS                       R33 R27 K164 ["getDynamicInputPinNameFromInputPinIds"]
      520 DUPCLOSURE                       R33 K165 [PROTO_119]
      521 CAPTURE                          VAL R2
      522 SETTABLEKS                       R33 R27 K166 ["getAnimSavesFolderForTarget"]
      524 DUPCLOSURE                       R33 K167 [PROTO_120]
      525 CAPTURE                          VAL R22
      526 CAPTURE                          VAL R27
      527 CAPTURE                          VAL R2
      528 SETTABLEKS                       R33 R27 K168 ["getOrCreateParentForNewGraph"]
      530 DUPCLOSURE                       R33 K169 [PROTO_121]
      531 CAPTURE                          VAL R27
      532 CAPTURE                          VAL R14
      533 SETTABLEKS                       R33 R27 K170 ["createNewAnimationGraph"]
      535 DUPCLOSURE                       R33 K171 [PROTO_122]
      536 CAPTURE                          VAL R0
      537 CAPTURE                          VAL R25
      538 CAPTURE                          VAL R27
      539 CAPTURE                          VAL R22
      540 SETTABLEKS                       R33 R27 K172 ["createNodeOfType"]
      542 DUPCLOSURE                       R33 K173 [PROTO_123]
      543 CAPTURE                          VAL R27
      544 SETTABLEKS                       R33 R27 K174 ["seedBlend1dInputs"]
      546 DUPCLOSURE                       R33 K175 [PROTO_124]
      547 CAPTURE                          VAL R16
      548 CAPTURE                          VAL R27
      549 SETTABLEKS                       R33 R27 K176 ["duplicateNodes"]
      551 DUPCLOSURE                       R33 K177 [PROTO_125]
      552 DUPCLOSURE                       R34 K178 [PROTO_126]
      553 CAPTURE                          VAL R27
      554 DUPCLOSURE                       R35 K179 [PROTO_127]
      555 CAPTURE                          VAL R33
      556 CAPTURE                          VAL R19
      557 CAPTURE                          VAL R34
      558 CAPTURE                          VAL R27
      559 SETTABLEKS                       R35 R27 K180 ["pasteInstancesIntoGraph"]
      561 RETURN                           R27 1
