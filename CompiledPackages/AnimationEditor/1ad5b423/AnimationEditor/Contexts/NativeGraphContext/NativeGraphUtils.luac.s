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
        0 NAMECALL                         R2 R1 K0 ["GetAttributes"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["EXPRESSION_NODE_CLASSNAME"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+3]
        8 LOADN                            R3 1
        9 JUMP                             ; [+1]
       10 LOADN                            R3 0
       11 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
       13 MOVE                             R4 R0
       14 JUMP                             ; [+6]
       15 GETIMPORT                        R4 K5 [string.format]
       17 LOADK                            R5 K6 ["%s%d"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R3
       20 CALL                             R4 3 1
       21 GETTABLE                         R5 R2 R4
       22 JUMPIF                           R5 ; [+1]
       23 RETURN                           R4 1
       24 ADDK                             R3 R3 K7 [1]
       25 JUMPBACK                         ; [-15]
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R2 K0 ["parameterName"]
        2 JUMPIF                           R4 ; [+7]
        3 LOADK                            R5 K1 ["%*Parameter"]
        4 GETTABLEKS                       R7 R2 K2 ["parameterType"]
        6 NAMECALL                         R5 R5 K3 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R4 R5
       10 MOVE                             R5 R4
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["getParameterInstanceName"]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 1
       16 JUMPIF                           R3 ; [+38]
       17 GETUPVAL                         R7 1
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+14]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K5 ["getUniqueParameterName"]
       23 MOVE                             R8 R5
       24 MOVE                             R9 R1
       25 CALL                             R7 2 1
       26 MOVE                             R5 R7
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["getParameterInstanceName"]
       30 MOVE                             R8 R5
       31 CALL                             R7 1 1
       32 MOVE                             R6 R7
       33 JUMP                             ; [+21]
       34 LOADN                            R7 0
       35 MOVE                             R10 R6
       36 NAMECALL                         R8 R1 K6 ["FindFirstChild"]
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+15]
       40 ADDK                             R7 R7 K7 [1]
       41 GETIMPORT                        R8 K9 [string.format]
       43 LOADK                            R9 K10 ["%s%d"]
       44 MOVE                             R10 R4
       45 MOVE                             R11 R7
       46 CALL                             R8 3 1
       47 MOVE                             R5 R8
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K4 ["getParameterInstanceName"]
       51 MOVE                             R9 R5
       52 CALL                             R8 1 1
       53 MOVE                             R6 R8
       54 JUMPBACK                         ; [-20]
       55 GETIMPORT                        R7 K13 [Instance.new]
       57 LOADK                            R8 K14 ["Folder"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R6 R7 K15 ["Name"]
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       64 GETTABLEKS                       R10 R10 K17 ["ParameterType"]
       66 NAMECALL                         R8 R7 K18 ["GetAttribute"]
       68 CALL                             R8 2 1
       69 JUMPIF                           R8 ; [+19]
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       73 GETTABLEKS                       R10 R10 K17 ["ParameterType"]
       75 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       77 NAMECALL                         R8 R7 K19 ["SetAttribute"]
       79 CALL                             R8 3 0
       80 GETUPVAL                         R10 2
       81 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       83 GETTABLEKS                       R10 R10 K20 ["BindingName"]
       85 MOVE                             R11 R5
       86 NAMECALL                         R8 R7 K19 ["SetAttribute"]
       88 CALL                             R8 3 0
       89 SETTABLEKS                       R1 R7 K21 ["Parent"]
       91 MOVE                             R10 R7
       92 NAMECALL                         R8 R0 K22 ["instanceToId"]
       94 CALL                             R8 2 0
       95 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getExpressionInstanceName"]
        3 LOADK                            R4 K1 ["Expression"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K4 [Instance.new]
        7 LOADK                            R5 K5 ["Folder"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R3 R4 K6 ["Name"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K7 ["NODE_ATTRIBUTES"]
       14 GETTABLEKS                       R7 R7 K8 ["ParameterType"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K9 ["EXPRESSION_NODE_CLASSNAME"]
       19 NAMECALL                         R5 R4 K10 ["SetAttribute"]
       21 CALL                             R5 3 0
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["NODE_ATTRIBUTES"]
       25 GETTABLEKS                       R7 R7 K11 ["BindingName"]
       27 LOADK                            R8 K1 ["Expression"]
       28 NAMECALL                         R5 R4 K10 ["SetAttribute"]
       30 CALL                             R5 3 0
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K7 ["NODE_ATTRIBUTES"]
       34 GETTABLEKS                       R7 R7 K12 ["ExpressionValue"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K13 ["getExpressionBindingValue"]
       39 LOADK                            R9 K14 [""]
       40 CALL                             R8 1 -1
       41 NAMECALL                         R5 R4 K10 ["SetAttribute"]
       43 CALL                             R5 -1 0
       44 SETTABLEKS                       R1 R4 K15 ["Parent"]
       46 MOVE                             R7 R4
       47 NAMECALL                         R5 R0 K16 ["instanceToId"]
       49 CALL                             R5 2 0
       50 RETURN                           R4 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       35 JUMPIFNOT                        R5 ; [+5]
       36 GETUPVAL                         R5 1
       37 JUMPIFNOT                        R5 ; [+2]
       38 MOVE                             R2 R1
       39 JUMP                             ; [+1]
       40 LOADK                            R2 K6 ["Enum"]
       41 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+2]
       43 LOADK                            R2 K8 ["Number"]
       44 RETURN                           R2 1

PROTO_9:
        0 MOVE                             R5 R1
        1 LOADK                            R7 K0 ["param::%*"]
        2 MOVE                             R9 R2
        3 NAMECALL                         R7 R7 K1 ["format"]
        5 CALL                             R7 2 1
        6 MOVE                             R6 R7
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R5 R4
        5 JUMPIF                           R5 ; [+6]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["matchExpressionNameFromNode"]
        9 GETTABLEKS                       R6 R3 K1 ["Name"]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKNIL                  R5 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       18 LOADK                            R8 K2 ["Expression name should never be nil"]
       19 GETIMPORT                        R6 K4 [assert]
       21 CALL                             R6 2 0
       22 MOVE                             R9 R5
       23 NAMECALL                         R7 R2 K5 ["GetAttribute"]
       25 CALL                             R7 2 1
       26 JUMPIFEQKNIL                     R7 ; [+7]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K6 ["getExpressionBindingValue"]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 1
       33 JUMP                             ; [+8]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K7 ["NODE_ATTRIBUTES"]
       37 GETTABLEKS                       R8 R8 K8 ["ExpressionValue"]
       39 NAMECALL                         R6 R3 K5 ["GetAttribute"]
       41 CALL                             R6 2 1
       42 MOVE                             R9 R1
       43 MOVE                             R10 R6
       44 NAMECALL                         R7 R0 K9 ["SetAttribute"]
       46 CALL                             R7 3 0
       47 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       30 GETTABLEKS                       R5 R5 K10 ["Size"]
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
       30 GETTABLEKS                       R5 R5 K10 ["Collapsed"]
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
       30 GETTABLEKS                       R5 R5 K10 ["DisplayName"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAnimGraphUI_DynamicZIndex"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["FFlagAnimGraphUI_DynamicZIndex not enabled"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["NODE_CONFIGURATION_NAME"]
       12 LOADK                            R6 K5 ["Configuration"]
       13 NAMECALL                         R4 R0 K6 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 MOVE                             R2 R0
       18 JUMP                             ; [+17]
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R0 K7 ["FindFirstChild"]
       22 CALL                             R4 2 1
       23 JUMPIFEQKNIL                     R4 ; [+3]
       25 MOVE                             R2 R4
       26 JUMP                             ; [+9]
       27 GETIMPORT                        R4 K10 [Instance.new]
       29 LOADK                            R5 K5 ["Configuration"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R3 R4 K11 ["Name"]
       33 SETTABLEKS                       R0 R4 K12 ["Parent"]
       35 MOVE                             R2 R4
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K13 ["NODE_ATTRIBUTES"]
       39 GETTABLEKS                       R5 R5 K14 ["ZIndex"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R3 R2 K15 ["SetAttribute"]
       44 CALL                             R3 3 0
       45 RETURN                           R0 0

PROTO_18:
        0 LOADK                            R2 K0 ["Parameter_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_19:
        0 LOADK                            R2 K0 ["Expression_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

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
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K2 ["StateMachineDefinition"]
        7 NAMECALL                         R2 R2 K1 ["IsA"]
        9 CALL                             R2 2 1
       10 OR                               R3 R1 R2
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+15]
       15 LOADK                            R7 K2 ["StateMachineDefinition"]
       16 NAMECALL                         R5 R4 K1 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+10]
       20 DUPTABLE                         R5 K13 [{["wireId"], ["inputNodeId"] = , ["inputNodePinId"] = "", ["outputNodeId"] = , ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"] = }]
       21 GETUPVAL                         R6 2
       22 SETTABLEKS                       R6 R5 K3 ["wireId"]
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R0
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K11 ["properties"]
       29 RETURN                           R5 1
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 JUMPIFNOT                        R1 ; [+12]
       34 JUMPIFNOT                        R4 ; [+11]
       35 LOADK                            R10 K14 ["ObjectValue"]
       36 NAMECALL                         R8 R4 K1 ["IsA"]
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+6]
       40 GETTABLEKS                       R5 R4 K15 ["Parent"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R7 R4 K16 ["Name"]
       45 JUMP                             ; [+8]
       46 JUMPIFNOT                        R3 ; [+2]
       47 MOVE                             R5 R4
       48 JUMP                             ; [+1]
       49 GETUPVAL                         R5 0
       50 JUMPIFNOT                        R3 ; [+2]
       51 GETUPVAL                         R6 0
       52 JUMP                             ; [+1]
       53 MOVE                             R6 R4
       54 JUMPIFNOT                        R6 ; [+6]
       55 GETUPVAL                         R8 4
       56 MOVE                             R10 R6
       57 NAMECALL                         R8 R8 K17 ["instanceToId"]
       59 CALL                             R8 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R8
       62 JUMPIFNOT                        R5 ; [+6]
       63 GETUPVAL                         R9 4
       64 MOVE                             R11 R5
       65 NAMECALL                         R9 R9 K17 ["instanceToId"]
       67 CALL                             R9 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R9
       70 GETUPVAL                         R10 5
       71 MOVE                             R11 R0
       72 CALL                             R10 1 1
       73 GETUPVAL                         R11 6
       74 GETTABLEKS                       R11 R11 K18 ["getParameterWireInputPinId"]
       76 MOVE                             R12 R10
       77 CALL                             R11 1 1
       78 OR                               R12 R11 R10
       79 GETUPVAL                         R13 3
       80 MOVE                             R14 R0
       81 CALL                             R13 1 1
       82 JUMPIFNOT                        R2 ; [+4]
       83 GETTABLEKS                       R15 R13 K20 ["RBX_StateMachineOutputPin"]
       85 ORK                              R14 R15 K19 ["State"]
       86 JUMP                             ; [+1]
       87 LOADK                            R14 K10 ["Output"]
       88 DUPTABLE                         R15 K21 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties", "targetWireInputPinId"}]
       89 GETUPVAL                         R16 2
       90 SETTABLEKS                       R16 R15 K3 ["wireId"]
       92 SETTABLEKS                       R9 R15 K4 ["inputNodeId"]
       94 SETTABLEKS                       R12 R15 K6 ["inputNodePinId"]
       96 SETTABLEKS                       R8 R15 K8 ["outputNodeId"]
       98 SETTABLEKS                       R14 R15 K9 ["outputNodePinId"]
      100 SETTABLEKS                       R13 R15 K11 ["properties"]
      102 SETTABLEKS                       R7 R15 K12 ["targetWireInputPinId"]
      104 RETURN                           R15 1

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
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U3
       36 CALL                             R7 1 -1
       37 RETURN                           R7 -1

PROTO_23:
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

PROTO_24:
        0 LOADK                            R4 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+9]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+4]
       10 LOADK                            R4 K3 ["StateMachineDefinition"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       16 LOADK                            R3 K4 ["Bad Node Instance Type"]
       17 GETIMPORT                        R1 K6 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K7 ["observeChildrenWhichIsA"]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K8 ["ObjectValue"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K9 ["forEach"]
       29 MOVE                             R3 R1
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R0
       34 CALL                             R2 2 1
       35 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K4 [{"nodeId", "inputNodesByPinName", "outputNodesByPinName", "inputLabelNodesByPinName"}]
        7 SETTABLEKS                       R0 R1 K0 ["nodeId"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["inputNodesByPinName"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K2 ["outputNodesByPinName"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K3 ["inputLabelNodesByPinName"]
       21 GETUPVAL                         R2 0
       22 SETTABLE                         R1 R2 R0
       23 RETURN                           R1 1

PROTO_26:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["inputNodeId"]
       10 JUMPIFEQKNIL                     R11 ; [+72]
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
       25 DUPTABLE                         R13 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
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
       50 GETTABLEKS                       R14 R10 K7 ["targetWireInputPinId"]
       52 JUMPIFEQKNIL                     R14 ; [+19]
       54 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       56 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       58 GETTABLE                         R15 R16 R14
       59 JUMPIF                           R15 ; [+5]
       60 GETTABLEKS                       R15 R11 K8 ["inputLabelNodesByPinName"]
       62 NEWTABLE                         R16 0 0
       64 SETTABLE                         R16 R15 R14
       65 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       67 GETTABLE                         R15 R16 R14
       68 GETTABLEKS                       R16 R10 K7 ["targetWireInputPinId"]
       70 SETTABLE                         R13 R15 R16
       71 JUMP                             ; [+5]
       72 GETTABLEKS                       R14 R11 K9 ["inputNodesByPinName"]
       74 GETTABLEKS                       R15 R10 K3 ["inputNodePinId"]
       76 SETTABLE                         R13 R14 R15
       77 JUMPIFNOT                        R12 ; [+5]
       78 GETTABLEKS                       R14 R12 K10 ["outputNodesByPinName"]
       80 GETTABLEKS                       R15 R10 K4 ["outputNodePinId"]
       82 SETTABLE                         R13 R14 R15
       83 FORGLOOP                         R6 2 ; [-76]
       85 FORGLOOP                         R1 2 ; [-82]
       87 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R5
       15 MOVE                             R7 R6
       16 MOVE                             R8 R2
       17 CALL                             R7 1 0
       18 MOVE                             R7 R6
       19 MOVE                             R8 R3
       20 CALL                             R7 1 0
       21 MOVE                             R7 R6
       22 MOVE                             R8 R4
       23 CALL                             R7 1 0
       24 MOVE                             R7 R1
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 FORGPREP                         R7
       28 GETIMPORT                        R12 K2 [table.freeze]
       30 MOVE                             R13 R11
       31 CALL                             R12 1 0
       32 FORGLOOP                         R7 2 ; [-5]
       34 GETIMPORT                        R7 K2 [table.freeze]
       36 MOVE                             R8 R1
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

PROTO_28:
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
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["observeChildrenWhichIsA"]
       15 MOVE                             R5 R1
       16 LOADK                            R6 K3 ["StateMachineDefinition"]
       17 CALL                             R4 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K4 ["forEach"]
       25 MOVE                             R7 R2
       26 MOVE                             R8 R5
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K4 ["forEach"]
       31 MOVE                             R8 R3
       32 MOVE                             R9 R5
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["forEach"]
       37 MOVE                             R9 R4
       38 MOVE                             R10 R5
       39 CALL                             R8 2 1
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K5 ["createComputed"]
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R8
       47 CALL                             R9 1 -1
       48 RETURN                           R9 -1

PROTO_29:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_30:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^expr::(.*)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_31:
        0 LOADK                            R2 K0 ["expr::%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_32:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^Expression_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getExpressionBindingValue"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["NODE_ATTRIBUTES"]
        8 GETTABLEKS                       R5 R5 K2 ["ExpressionValue"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K3 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 NAMECALL                         R3 R0 K4 ["GetChildren"]
       16 CALL                             R3 1 3
       17 FORGPREP                         R3
       18 LOADK                            R10 K5 ["ObjectValue"]
       19 NAMECALL                         R8 R7 K6 ["IsA"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+15]
       23 GETTABLEKS                       R8 R7 K7 ["Value"]
       25 JUMPIFNOT                        R8 ; [+12]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K8 ["getParameterWireInputPinId"]
       29 GETTABLEKS                       R10 R7 K9 ["Name"]
       31 CALL                             R9 1 1
       32 JUMPIFNOT                        R9 ; [+5]
       33 MOVE                             R12 R9
       34 MOVE                             R13 R2
       35 NAMECALL                         R10 R8 K3 ["SetAttribute"]
       37 CALL                             R10 3 0
       38 FORGLOOP                         R3 2 ; [-21]
       40 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_42]
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

PROTO_45:
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
       14 JUMPIFNOT                        R8 ; [+5]
       15 GETTABLEKS                       R9 R8 K3 ["key"]
       17 GETTABLEKS                       R10 R8 K4 ["value"]
       19 SETTABLE                         R10 R3 R9
       20 FORGLOOP                         R4 2 ; [-7]
       22 GETIMPORT                        R4 K6 [table.freeze]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeNodeType"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["observeAttributes"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["observeChildrenWhichIsA"]
       13 MOVE                             R5 R0
       14 LOADK                            R6 K3 ["ObjectValue"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["createComputed"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["forEach"]
       26 MOVE                             R7 R4
       27 DUPCLOSURE                       R8 K6 [PROTO_39]
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U2
       30 CALL                             R6 2 1
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       34 NEWCLOSURE                       R8 P2
       35 CAPTURE                          VAL R6
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K5 ["forEach"]
       40 MOVE                             R9 R5
       41 NEWCLOSURE                       R10 P3
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R7
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K4 ["createComputed"]
       51 NEWCLOSURE                       R10 P4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CALL                             R9 1 1
       55 RETURN                           R9 1

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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
       83 DUPCLOSURE                       R8 K15 [PROTO_49]
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_52]
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

PROTO_55:
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

PROTO_56:
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
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K5 ["NODE_ATTRIBUTES"]
       22 GETTABLEKS                       R10 R10 K6 ["ParameterType"]
       24 NAMECALL                         R8 R7 K7 ["GetAttribute"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+13]
       28 MOVE                             R9 R2
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K8 ["observeParameterNodeInfo"]
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

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_55]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["createComputed"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 1
       16 RETURN                           R3 1

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
       12 LOADK                            R3 K2 ["StateMachineDefinition"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_59:
        0 DUPTABLE                         R1 K2 [{"nodeId", "name"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R2 R2 K3 ["instanceToId"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["nodeId"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K1 ["name"]
       13 RETURN                           R1 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_61:
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
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_62:
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

PROTO_63:
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
       15 LOADK                            R10 K2 ["non-folder instance observed for non-promoted expressions"]
       16 GETIMPORT                        R8 K4 [assert]
       18 CALL                             R8 2 0
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["properties"]
       22 GETTABLEKS                       R8 R8 K6 ["observeString"]
       24 MOVE                             R9 R7
       25 LOADK                            R10 K7 ["Name"]
       26 CALL                             R8 2 1
       27 MOVE                             R9 R0
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 2
       30 JUMPIFNOTEQ                      R8 R9 ; [+32]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K8 ["attributes"]
       35 GETTABLEKS                       R9 R9 K6 ["observeString"]
       37 MOVE                             R10 R7
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R11 R11 K9 ["NODE_ATTRIBUTES"]
       41 GETTABLEKS                       R11 R11 K10 ["ExpressionValue"]
       43 CALL                             R9 2 1
       44 MOVE                             R10 R0
       45 CALL                             R9 1 1
       46 JUMPIFNOT                        R9 ; [+6]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K11 ["matchExpressionBindingValue"]
       50 MOVE                             R11 R9
       51 CALL                             R10 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R10
       54 JUMPIFEQKNIL                     R10 ; [+8]
       56 GETUPVAL                         R11 5
       57 MOVE                             R13 R7
       58 NAMECALL                         R11 R11 K12 ["instanceToId"]
       60 CALL                             R11 2 1
       61 JUMPIFNOT                        R11 ; [+1]
       62 SETTABLE                         R10 R2 R11
       63 FORGLOOP                         R3 2 ; [-55]
       65 GETIMPORT                        R3 K15 [table.freeze]
       67 MOVE                             R4 R2
       68 CALL                             R3 1 -1
       69 RETURN                           R3 -1

PROTO_64:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_62]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["getExpressionInstanceName"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["EXPRESSION_NODE_CLASSNAME"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K4 ["createComputed"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CALL                             R4 1 -1
       25 RETURN                           R4 -1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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
       35 GETTABLEKS                       R4 R4 K14 ["FFlagAnimGraphUI_DynamicZIndex"]
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R0
       40 CALL                             R4 1 1
       41 ORK                              R3 R4 K15 [0]
       42 JUMP                             ; [+1]
       43 LOADN                            R3 0
       44 SETTABLEKS                       R3 R2 K8 ["zIndex"]
       46 CALL                             R1 1 -1
       47 RETURN                           R1 -1

PROTO_73:
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
       21 DUPCLOSURE                       R7 K4 [PROTO_68]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_69]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_70]
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U2
       43 CALL                             R7 2 1
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K7 ["FFlagAnimGraphUI_DynamicZIndex"]
       47 JUMPIFNOT                        R9 ; [+10]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K3 ["switchMap"]
       51 MOVE                             R9 R4
       52 DUPCLOSURE                       R10 K8 [PROTO_71]
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U2
       56 CALL                             R8 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 MOVE                             R11 R3
       60 NAMECALL                         R9 R1 K9 ["observeIsSelected"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R10 R10 K10 ["createComputed"]
       66 NEWCLOSURE                       R11 P4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R8
       74 CALL                             R10 1 -1
       75 RETURN                           R10 -1

PROTO_74:
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
       13 JUMPIFNOT                        R8 ; [+50]
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
       36 JUMPIFNOT                        R8 ; [+5]
       37 DUPTABLE                         R8 K13 [{["from"] = "graph", ["graph"]}]
       38 SETTABLEKS                       R6 R8 K12 ["graph"]
       40 SETUPVAL                         R8 1
       41 RETURN                           R6 1
       42 GETUPVAL                         R8 1
       43 JUMPIFNOTEQKNIL                  R8 ; [+6]
       45 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       46 SETTABLEKS                       R6 R8 K12 ["graph"]
       48 MOVE                             R2 R8
       49 JUMP                             ; [+14]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K12 ["graph"]
       53 GETTABLEKS                       R8 R8 K16 ["Parent"]
       55 GETTABLEKS                       R9 R6 K16 ["Parent"]
       57 JUMPIFNOTEQ                      R8 R9 ; [+2]
       59 JUMP                             ; [+4]
       60 DUPTABLE                         R8 K15 [{["from"] = "rig", ["graph"]}]
       61 SETTABLEKS                       R6 R8 K12 ["graph"]
       63 MOVE                             R2 R8
       64 FORGLOOP                         R3 2 ; [-57]
       66 JUMPIFEQKNIL                     R2 ; [+2]
       68 SETUPVAL                         R2 1
       69 GETUPVAL                         R3 1
       70 JUMPIFNOT                        R3 ; [+3]
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K12 ["graph"]
       74 RETURN                           R3 1

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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
       18 DUPCLOSURE                       R6 K4 [PROTO_75]
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

PROTO_78:
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

PROTO_79:
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
       18 MOVE                             R8 R2
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 GETTABLEKS                       R14 R12 K0 ["nodeId"]
       24 GETTABLE                         R13 R5 R14
       25 NEWTABLE                         R14 0 0
       27 NEWTABLE                         R15 0 0
       29 NEWTABLE                         R16 0 0
       31 JUMPIFNOT                        R13 ; [+28]
       32 GETTABLEKS                       R17 R13 K1 ["inputNodesByPinName"]
       34 LOADNIL                          R18
       35 LOADNIL                          R19
       36 FORGPREP                         R17
       37 GETTABLEKS                       R22 R21 K2 ["inputNodePinId"]
       39 SETTABLE                         R21 R14 R22
       40 FORGLOOP                         R17 2 ; [-4]
       42 GETTABLEKS                       R17 R13 K3 ["outputNodesByPinName"]
       44 LOADNIL                          R18
       45 LOADNIL                          R19
       46 FORGPREP                         R17
       47 GETTABLEKS                       R22 R21 K4 ["outputNodePinId"]
       49 SETTABLE                         R21 R15 R22
       50 FORGLOOP                         R17 2 ; [-4]
       52 GETTABLEKS                       R17 R13 K5 ["inputLabelNodesByPinName"]
       54 LOADNIL                          R18
       55 LOADNIL                          R19
       56 FORGPREP                         R17
       57 SETTABLE                         R21 R16 R20
       58 FORGLOOP                         R17 2 ; [-2]
       60 GETTABLEKS                       R17 R12 K6 ["nodeType"]
       62 GETIMPORT                        R18 K10 [Enum.AnimationNodeType.GraphOutput]
       64 JUMPIFNOTEQ                      R17 R18 ; [+3]
       66 GETTABLEKS                       R6 R12 K0 ["nodeId"]
       68 GETIMPORT                        R17 K13 [table.freeze]
       70 DUPTABLE                         R18 K25 [{["inputPinIds"], ["outputPinToConnectionMap"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["className"], ["id"], ["index"] = , ["name"], ["nodeType"], ["props"] = , ["state"] = }]
       71 GETTABLEKS                       R19 R12 K14 ["inputPinIds"]
       73 SETTABLEKS                       R19 R18 K14 ["inputPinIds"]
       75 SETTABLEKS                       R15 R18 K15 ["outputPinToConnectionMap"]
       77 SETTABLEKS                       R14 R18 K16 ["inputPinToConnectionMap"]
       79 SETTABLEKS                       R16 R18 K17 ["inputLabelPinToConnectionMap"]
       81 GETTABLEKS                       R19 R12 K6 ["nodeType"]
       83 GETTABLEKS                       R19 R19 K26 ["Name"]
       85 SETTABLEKS                       R19 R18 K18 ["className"]
       87 GETTABLEKS                       R19 R12 K0 ["nodeId"]
       89 SETTABLEKS                       R19 R18 K19 ["id"]
       91 GETTABLEKS                       R19 R12 K22 ["name"]
       93 SETTABLEKS                       R19 R18 K22 ["name"]
       95 GETTABLEKS                       R20 R12 K6 ["nodeType"]
       97 FASTCALL1                        TOSTRING R20 ; [+2]
       98 GETIMPORT                        R19 K28 [tostring]
      100 CALL                             R19 1 1
      101 SETTABLEKS                       R19 R18 K6 ["nodeType"]
      103 CALL                             R17 1 1
      104 GETTABLEKS                       R18 R12 K0 ["nodeId"]
      106 SETTABLE                         R17 R7 R18
      107 FORGLOOP                         R8 2 ; [-86]
      109 MOVE                             R8 R3
      110 LOADNIL                          R9
      111 LOADNIL                          R10
      112 FORGPREP                         R8
      113 GETTABLEKS                       R14 R12 K0 ["nodeId"]
      115 GETTABLE                         R13 R5 R14
      116 NEWTABLE                         R14 0 0
      118 JUMPIFNOT                        R13 ; [+10]
      119 GETTABLEKS                       R15 R13 K3 ["outputNodesByPinName"]
      121 LOADNIL                          R16
      122 LOADNIL                          R17
      123 FORGPREP                         R15
      124 GETTABLEKS                       R20 R19 K4 ["outputNodePinId"]
      126 SETTABLE                         R19 R14 R20
      127 FORGLOOP                         R15 2 ; [-4]
      129 GETIMPORT                        R15 K13 [table.freeze]
      131 DUPTABLE                         R16 K30 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["className"], ["id"], ["nodeType"], ["name"], ["parentId"] = }]
      132 NEWTABLE                         R17 0 0
      134 SETTABLEKS                       R17 R16 K14 ["inputPinIds"]
      136 NEWTABLE                         R17 0 0
      138 SETTABLEKS                       R17 R16 K16 ["inputPinToConnectionMap"]
      140 NEWTABLE                         R17 0 0
      142 SETTABLEKS                       R17 R16 K17 ["inputLabelPinToConnectionMap"]
      144 SETTABLEKS                       R14 R16 K15 ["outputPinToConnectionMap"]
      146 GETUPVAL                         R17 5
      147 GETTABLEKS                       R17 R17 K31 ["PARAMETER_NODE_CLASSNAME"]
      149 SETTABLEKS                       R17 R16 K18 ["className"]
      151 GETTABLEKS                       R17 R12 K0 ["nodeId"]
      153 SETTABLEKS                       R17 R16 K19 ["id"]
      155 GETTABLEKS                       R17 R12 K32 ["parameterType"]
      157 SETTABLEKS                       R17 R16 K6 ["nodeType"]
      159 GETTABLEKS                       R17 R12 K33 ["parameterData"]
      161 GETTABLEKS                       R17 R17 K34 ["parameterBindingName"]
      163 SETTABLEKS                       R17 R16 K22 ["name"]
      165 CALL                             R15 1 1
      166 GETTABLEKS                       R16 R12 K0 ["nodeId"]
      168 SETTABLE                         R15 R7 R16
      169 FORGLOOP                         R8 2 ; [-57]
      171 MOVE                             R8 R4
      172 LOADNIL                          R9
      173 LOADNIL                          R10
      174 FORGPREP                         R8
      175 GETTABLEKS                       R14 R12 K0 ["nodeId"]
      177 GETTABLE                         R13 R5 R14
      178 NEWTABLE                         R14 0 0
      180 JUMPIFNOT                        R13 ; [+10]
      181 GETTABLEKS                       R15 R13 K3 ["outputNodesByPinName"]
      183 LOADNIL                          R16
      184 LOADNIL                          R17
      185 FORGPREP                         R15
      186 GETTABLEKS                       R20 R19 K4 ["outputNodePinId"]
      188 SETTABLE                         R19 R14 R20
      189 FORGLOOP                         R15 2 ; [-4]
      191 GETTABLEKS                       R15 R12 K0 ["nodeId"]
      193 GETIMPORT                        R16 K13 [table.freeze]
      195 DUPTABLE                         R17 K36 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["className"] = "StateMachine", ["id"], ["nodeType"] = "StateMachine", ["name"], ["parentId"] = }]
      196 NEWTABLE                         R18 0 0
      198 SETTABLEKS                       R18 R17 K14 ["inputPinIds"]
      200 NEWTABLE                         R18 0 0
      202 SETTABLEKS                       R18 R17 K16 ["inputPinToConnectionMap"]
      204 NEWTABLE                         R18 0 0
      206 SETTABLEKS                       R18 R17 K17 ["inputLabelPinToConnectionMap"]
      208 SETTABLEKS                       R14 R17 K15 ["outputPinToConnectionMap"]
      210 GETTABLEKS                       R18 R12 K0 ["nodeId"]
      212 SETTABLEKS                       R18 R17 K19 ["id"]
      214 GETTABLEKS                       R18 R12 K22 ["name"]
      216 SETTABLEKS                       R18 R17 K22 ["name"]
      218 CALL                             R16 1 1
      219 SETTABLE                         R16 R7 R15
      220 FORGLOOP                         R8 2 ; [-46]
      222 GETIMPORT                        R8 K13 [table.freeze]
      224 DUPTABLE                         R9 K40 [{"graphInstanceId", "lookup", "output"}]
      225 JUMPIFNOT                        R1 ; [+6]
      226 GETUPVAL                         R10 6
      227 MOVE                             R12 R1
      228 NAMECALL                         R10 R10 K41 ["instanceToId"]
      230 CALL                             R10 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R10
      233 SETTABLEKS                       R10 R9 K37 ["graphInstanceId"]
      235 GETIMPORT                        R10 K13 [table.freeze]
      237 MOVE                             R11 R7
      238 CALL                             R10 1 1
      239 SETTABLEKS                       R10 R9 K38 ["lookup"]
      241 SETTABLEKS                       R6 R9 K39 ["output"]
      243 CALL                             R8 1 -1
      244 RETURN                           R8 -1

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 LOADK                            R4 K1 ["AnimationNodeDefinition"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["of"]
       14 LOADNIL                          R3
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["observeNodeProps"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R4 0
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K5 ["createComputed"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
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
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K3 ["observeStateMachineNodeInfoLookupList"]
       24 MOVE                             R7 R0
       25 MOVE                             R8 R2
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R0
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K4 ["createComputed"]
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          VAL R7
       44 CALL                             R8 1 1
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K5 ["observeRenderInfoMap"]
       48 MOVE                             R10 R0
       49 MOVE                             R11 R1
       50 MOVE                             R12 R8
       51 CALL                             R9 3 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K6 ["forEach"]
       55 MOVE                             R11 R8
       56 NEWCLOSURE                       R12 P3
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U2
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K4 ["createComputed"]
       65 NEWCLOSURE                       R12 P4
       66 CAPTURE                          VAL R10
       67 CALL                             R11 1 1
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R12 R12 K4 ["createComputed"]
       71 NEWCLOSURE                       R13 P5
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R11
       76 CALL                             R12 1 -1
       77 RETURN                           R12 -1

PROTO_86:
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

PROTO_87:
        0 GETTABLEKS                       R5 R0 K0 ["lookup"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+2]
        4 LOADNIL                          R5
        5 RETURN                           R5 1
        6 JUMPIFEQKNIL                     R3 ; [+12]
        8 GETTABLEKS                       R6 R4 K1 ["inputPinIds"]
       10 GETTABLE                         R5 R6 R3
       11 GETTABLEKS                       R7 R4 K2 ["inputLabelPinToConnectionMap"]
       13 GETTABLE                         R6 R7 R2
       14 JUMPIFNOT                        R6 ; [+2]
       15 GETTABLE                         R7 R6 R5
       16 RETURN                           R7 1
       17 LOADNIL                          R7
       18 RETURN                           R7 1
       19 GETTABLEKS                       R6 R4 K3 ["inputPinToConnectionMap"]
       21 GETTABLE                         R5 R6 R2
       22 RETURN                           R5 1

PROTO_88:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_89:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+41]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 MOVE                             R9 R4
       10 CALL                             R5 4 1
       11 JUMPIF                           R5 ; [+2]
       12 LOADB                            R6 0
       13 RETURN                           R6 1
       14 GETTABLEKS                       R8 R5 K1 ["wireId"]
       16 NAMECALL                         R6 R0 K2 ["idToInstance"]
       18 CALL                             R6 2 1
       19 JUMPIF                           R6 ; [+2]
       20 LOADB                            R7 0
       21 RETURN                           R7 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K3 ["removeNodeInputConnection"]
       25 MOVE                             R8 R0
       26 MOVE                             R9 R1
       27 MOVE                             R10 R2
       28 MOVE                             R11 R3
       29 MOVE                             R12 R4
       30 CALL                             R7 5 0
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K4 ["removeOrderedInputPin"]
       34 MOVE                             R8 R0
       35 MOVE                             R9 R1
       36 MOVE                             R10 R2
       37 MOVE                             R11 R3
       38 CALL                             R7 4 0
       39 LOADNIL                          R7
       40 SETTABLEKS                       R7 R6 K5 ["Parent"]
       42 LOADB                            R7 1
       43 RETURN                           R7 1
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
       47 MOVE                             R6 R1
       48 MOVE                             R7 R2
       49 MOVE                             R8 R3
       50 MOVE                             R9 R4
       51 CALL                             R5 4 1
       52 JUMPIFNOT                        R5 ; [+18]
       53 GETTABLEKS                       R8 R5 K1 ["wireId"]
       55 NAMECALL                         R6 R0 K2 ["idToInstance"]
       57 CALL                             R6 2 1
       58 JUMPIFNOT                        R6 ; [+12]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K3 ["removeNodeInputConnection"]
       62 MOVE                             R8 R0
       63 MOVE                             R9 R1
       64 MOVE                             R10 R2
       65 MOVE                             R11 R3
       66 MOVE                             R12 R4
       67 CALL                             R7 5 0
       68 LOADNIL                          R7
       69 SETTABLEKS                       R7 R6 K5 ["Parent"]
       71 MOVE                             R8 R2
       72 NAMECALL                         R6 R0 K2 ["idToInstance"]
       74 CALL                             R6 2 1
       75 JUMPIFNOT                        R6 ; [+23]
       76 LOADK                            R9 K6 ["AnimationNodeDefinition"]
       77 NAMECALL                         R7 R6 K7 ["IsA"]
       79 CALL                             R7 2 1
       80 JUMPIFNOT                        R7 ; [+18]
       81 NAMECALL                         R7 R6 K8 ["GetOrderedInputPinNames"]
       83 CALL                             R7 1 1
       84 GETIMPORT                        R8 K11 [table.find]
       86 MOVE                             R9 R7
       87 MOVE                             R10 R3
       88 CALL                             R8 2 1
       89 JUMPIFNOT                        R8 ; [+9]
       90 GETIMPORT                        R9 K13 [table.remove]
       92 MOVE                             R10 R7
       93 MOVE                             R11 R8
       94 CALL                             R9 2 0
       95 MOVE                             R11 R7
       96 NAMECALL                         R9 R6 K14 ["SetOrderedInputPinNames"]
       98 CALL                             R9 2 0
       99 LOADB                            R7 1
      100 RETURN                           R7 1

PROTO_90:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 MOVE                             R9 R4
        7 CALL                             R5 4 1
        8 JUMPIFNOT                        R5 ; [+15]
        9 GETTABLEKS                       R6 R5 K1 ["outputNodeId"]
       11 JUMPIFEQKNIL                     R6 ; [+12]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["removeNodeOutputConnection"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 GETTABLEKS                       R9 R5 K1 ["outputNodeId"]
       20 GETTABLEKS                       R10 R5 K3 ["outputNodePinId"]
       22 CALL                             R6 4 -1
       23 RETURN                           R6 -1
       24 LOADB                            R6 0
       25 RETURN                           R6 1

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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
       23 JUMPIFNOT                        R5 ; [+110]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+107]
       27 LOADK                            R9 K5 ["ObjectValue"]
       28 NAMECALL                         R7 R5 K6 ["IsA"]
       30 CALL                             R7 2 1
       31 JUMPIFNOT                        R7 ; [+23]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K7 ["isAStateMachineWire"]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R2
       37 MOVE                             R10 R5
       38 CALL                             R7 3 1
       39 JUMPIFNOT                        R7 ; [+15]
       40 JUMPIFNOT                        R6 ; [+9]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K8 ["removeStateMachineConnection"]
       44 MOVE                             R8 R6
       45 GETTABLEKS                       R9 R4 K9 ["inputNodePinId"]
       47 GETTABLEKS                       R10 R4 K10 ["outputNodePinId"]
       49 CALL                             R7 3 0
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R5 K4 ["Parent"]
       53 LOADB                            R7 1
       54 RETURN                           R7 1
       55 LOADK                            R9 K5 ["ObjectValue"]
       56 NAMECALL                         R7 R5 K6 ["IsA"]
       58 CALL                             R7 2 1
       59 JUMPIFNOT                        R7 ; [+30]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K11 ["isAParameterWire"]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R2
       65 MOVE                             R10 R5
       66 CALL                             R7 3 1
       67 JUMPIFNOT                        R7 ; [+22]
       68 GETTABLEKS                       R8 R5 K12 ["Value"]
       70 JUMPIFNOT                        R8 ; [+10]
       71 GETTABLEKS                       R8 R5 K12 ["Value"]
       73 LOADK                            R10 K5 ["ObjectValue"]
       74 NAMECALL                         R8 R8 K6 ["IsA"]
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+3]
       78 GETTABLEKS                       R7 R5 K12 ["Value"]
       80 JUMP                             ; [+1]
       81 MOVE                             R7 R6
       82 JUMPIFNOT                        R7 ; [+39]
       83 GETTABLEKS                       R10 R4 K9 ["inputNodePinId"]
       85 LOADNIL                          R11
       86 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       88 CALL                             R8 3 0
       89 JUMP                             ; [+32]
       90 GETTABLEKS                       R8 R1 K14 ["lookup"]
       92 GETTABLEKS                       R9 R4 K3 ["inputNodeId"]
       94 GETTABLE                         R7 R8 R9
       95 JUMPIFNOT                        R7 ; [+26]
       96 GETTABLEKS                       R8 R7 K15 ["inputLabelPinToConnectionMap"]
       98 LOADNIL                          R9
       99 LOADNIL                          R10
      100 FORGPREP                         R8
      101 GETTABLEKS                       R14 R4 K9 ["inputNodePinId"]
      103 GETTABLE                         R13 R12 R14
      104 JUMPIFNOT                        R13 ; [+15]
      105 GETTABLEKS                       R16 R13 K1 ["wireId"]
      107 NAMECALL                         R14 R0 K2 ["idToInstance"]
      109 CALL                             R14 2 1
      110 JUMPIFNOT                        R14 ; [+9]
      111 GETTABLEKS                       R17 R13 K9 ["inputNodePinId"]
      113 LOADNIL                          R18
      114 NAMECALL                         R15 R5 K13 ["SetAttribute"]
      116 CALL                             R15 3 0
      117 LOADNIL                          R15
      118 SETTABLEKS                       R15 R14 K4 ["Parent"]
      120 FORGLOOP                         R8 2 ; [-20]
      122 LOADK                            R9 K5 ["ObjectValue"]
      123 NAMECALL                         R7 R5 K6 ["IsA"]
      125 CALL                             R7 2 1
      126 JUMPIFNOT                        R7 ; [+4]
      127 LOADNIL                          R7
      128 SETTABLEKS                       R7 R5 K12 ["Value"]
      130 JUMP                             ; [+3]
      131 LOADNIL                          R7
      132 SETTABLEKS                       R7 R5 K4 ["Parent"]
      134 LOADB                            R7 1
      135 RETURN                           R7 1

PROTO_94:
        0 LOADK                            R2 K0 ["connectionHint_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_95:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_96:
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
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K6 ["getParameterWireName"]
       21 MOVE                             R10 R4
       22 CALL                             R9 1 1
       23 SETTABLEKS                       R9 R8 K7 ["Name"]
       25 OR                               R9 R7 R2
       26 SETTABLEKS                       R9 R8 K8 ["Value"]
       28 SETTABLEKS                       R5 R8 K9 ["Parent"]
       30 GETUPVAL                         R9 1
       31 CALL                             R9 0 1
       32 JUMPIFNOT                        R9 ; [+37]
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R11 R11 K10 ["NODE_ATTRIBUTES"]
       36 GETTABLEKS                       R11 R11 K11 ["ParameterType"]
       38 NAMECALL                         R9 R5 K12 ["GetAttribute"]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K13 ["EXPRESSION_NODE_CLASSNAME"]
       44 JUMPIFNOTEQ                      R9 R10 ; [+10]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K14 ["setExpressionBindingName"]
       49 OR                               R10 R7 R2
       50 MOVE                             R11 R4
       51 MOVE                             R12 R1
       52 MOVE                             R13 R5
       53 CALL                             R9 4 0
       54 JUMP                             ; [+29]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K15 ["setParameterBindingName"]
       58 OR                               R10 R7 R2
       59 MOVE                             R11 R4
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R14 R14 K10 ["NODE_ATTRIBUTES"]
       63 GETTABLEKS                       R14 R14 K16 ["BindingName"]
       65 NAMECALL                         R12 R5 K12 ["GetAttribute"]
       67 CALL                             R12 2 1
       68 CALL                             R9 3 0
       69 JUMP                             ; [+14]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K15 ["setParameterBindingName"]
       73 OR                               R10 R7 R2
       74 MOVE                             R11 R4
       75 GETUPVAL                         R14 2
       76 GETTABLEKS                       R14 R14 K10 ["NODE_ATTRIBUTES"]
       78 GETTABLEKS                       R14 R14 K16 ["BindingName"]
       80 NAMECALL                         R12 R5 K12 ["GetAttribute"]
       82 CALL                             R12 2 1
       83 CALL                             R9 3 0
       84 MOVE                             R11 R8
       85 NAMECALL                         R9 R0 K17 ["instanceToId"]
       87 CALL                             R9 2 1
       88 MOVE                             R10 R4
       89 RETURN                           R9 2

PROTO_97:
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
       12 LOADK                            R6 K3 ["StateMachineDefinition"]
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

PROTO_98:
        0 JUMPIFNOTEQKS                    R2 K0 ["TransitionInfo"] ; [+22]
        2 MOVE                             R7 R1
        3 LOADK                            R8 K1 ["Duration"]
        4 CONCAT                           R6 R7 R8
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADK                            R7 K2 ["sm::duration"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R7
        9 NAMECALL                         R4 R0 K3 ["SetAttribute"]
       11 CALL                             R4 3 0
       12 MOVE                             R7 R1
       13 LOADK                            R8 K4 ["Curve"]
       14 CONCAT                           R6 R7 R8
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADK                            R7 K5 ["sm::curve"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R7
       19 NAMECALL                         R4 R0 K3 ["SetAttribute"]
       21 CALL                             R4 3 0
       22 RETURN                           R0 0
       23 MOVE                             R6 R1
       24 JUMPIFNOT                        R3 ; [+2]
       25 LOADK                            R7 K6 ["sm::state"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R7
       28 NAMECALL                         R4 R0 K3 ["SetAttribute"]
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_99:
        0 JUMPIFEQKNIL                     R5 ; [+8]
        2 LOADK                            R9 K0 ["ObjectValue"]
        3 NAMECALL                         R7 R5 K1 ["IsA"]
        5 CALL                             R7 2 1
        6 JUMPIFNOT                        R7 ; [+2]
        7 MOVE                             R6 R5
        8 JUMP                             ; [+4]
        9 GETIMPORT                        R6 K4 [Instance.new]
       11 LOADK                            R7 K0 ["ObjectValue"]
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K5 ["getParameterWireName"]
       16 MOVE                             R8 R2
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K6 ["Name"]
       20 SETTABLEKS                       R1 R6 K7 ["Value"]
       22 LOADK                            R9 K8 ["RBX_StateMachineOutputPin"]
       23 MOVE                             R10 R4
       24 NAMECALL                         R7 R6 K9 ["SetAttribute"]
       26 CALL                             R7 3 0
       27 SETTABLEKS                       R3 R6 K10 ["Parent"]
       29 JUMPIFNOTEQKS                    R4 K11 ["TransitionInfo"] ; [+16]
       31 MOVE                             R10 R2
       32 LOADK                            R11 K12 ["Duration"]
       33 CONCAT                           R9 R10 R11
       34 LOADK                            R10 K13 ["sm::duration"]
       35 NAMECALL                         R7 R1 K9 ["SetAttribute"]
       37 CALL                             R7 3 0
       38 MOVE                             R10 R2
       39 LOADK                            R11 K14 ["Curve"]
       40 CONCAT                           R9 R10 R11
       41 LOADK                            R10 K15 ["sm::curve"]
       42 NAMECALL                         R7 R1 K9 ["SetAttribute"]
       44 CALL                             R7 3 0
       45 JUMP                             ; [+5]
       46 MOVE                             R9 R2
       47 LOADK                            R10 K16 ["sm::state"]
       48 NAMECALL                         R7 R1 K9 ["SetAttribute"]
       50 CALL                             R7 3 0
       51 LOADK                            R9 K17 ["StateMachine"]
       52 NAMECALL                         R7 R1 K18 ["FindFirstChild"]
       54 CALL                             R7 2 1
       55 JUMPIFEQKNIL                     R7 ; [+6]
       57 LOADK                            R10 K0 ["ObjectValue"]
       58 NAMECALL                         R8 R7 K1 ["IsA"]
       60 CALL                             R8 2 1
       61 JUMPIF                           R8 ; [+10]
       62 GETIMPORT                        R8 K4 [Instance.new]
       64 LOADK                            R9 K0 ["ObjectValue"]
       65 CALL                             R8 1 1
       66 MOVE                             R7 R8
       67 LOADK                            R8 K17 ["StateMachine"]
       68 SETTABLEKS                       R8 R7 K6 ["Name"]
       70 SETTABLEKS                       R1 R7 K10 ["Parent"]
       72 SETTABLEKS                       R3 R7 K7 ["Value"]
       74 MOVE                             R10 R6
       75 NAMECALL                         R8 R0 K19 ["instanceToId"]
       77 CALL                             R8 2 1
       78 MOVE                             R9 R2
       79 RETURN                           R8 2

PROTO_100:
        0 JUMPIFNOTEQKS                    R2 K0 ["TransitionInfo"] ; [+16]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K1 ["Duration"]
        4 CONCAT                           R5 R6 R7
        5 LOADNIL                          R6
        6 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        8 CALL                             R3 3 0
        9 MOVE                             R6 R1
       10 LOADK                            R7 K3 ["Curve"]
       11 CONCAT                           R5 R6 R7
       12 LOADNIL                          R6
       13 NAMECALL                         R3 R0 K2 ["SetAttribute"]
       15 CALL                             R3 3 0
       16 JUMP                             ; [+5]
       17 MOVE                             R5 R1
       18 LOADNIL                          R6
       19 NAMECALL                         R3 R0 K2 ["SetAttribute"]
       21 CALL                             R3 3 0
       22 LOADB                            R3 0
       23 NAMECALL                         R4 R0 K4 ["GetAttributes"]
       25 CALL                             R4 1 3
       26 FORGPREP                         R4
       27 GETUPVAL                         R9 0
       28 MOVE                             R10 R8
       29 CALL                             R9 1 1
       30 JUMPIFNOT                        R9 ; [+2]
       31 LOADB                            R3 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R4 2 ; [-7]
       35 JUMPIF                           R3 ; [+13]
       36 LOADK                            R6 K5 ["StateMachine"]
       37 NAMECALL                         R4 R0 K6 ["FindFirstChild"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+8]
       41 LOADK                            R7 K7 ["ObjectValue"]
       42 NAMECALL                         R5 R4 K8 ["IsA"]
       44 CALL                             R5 2 1
       45 JUMPIFNOT                        R5 ; [+3]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K9 ["Parent"]
       49 RETURN                           R0 0

PROTO_101:
        0 LOADK                            R3 K0 ["StateMachineDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K2 ["GetChildren"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 LOADK                            R8 K3 ["ObjectValue"]
       11 NAMECALL                         R6 R5 K1 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+30]
       15 LOADK                            R8 K4 ["RBX_StateMachineOutputPin"]
       16 NAMECALL                         R6 R5 K5 ["GetAttribute"]
       18 CALL                             R6 2 1
       19 GETTABLEKS                       R7 R5 K6 ["Value"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K7 ["getParameterWireInputPinId"]
       24 GETTABLEKS                       R9 R5 K8 ["Name"]
       26 CALL                             R8 1 1
       27 FASTCALL1                        TYPE R6 ; [+3]
       28 MOVE                             R10 R6
       29 GETIMPORT                        R9 K10 [type]
       31 CALL                             R9 1 1
       32 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+12]
       34 JUMPIFEQKNIL                     R7 ; [+10]
       36 JUMPIFEQKNIL                     R8 ; [+8]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K12 ["removeStateMachineConnection"]
       41 MOVE                             R10 R7
       42 MOVE                             R11 R8
       43 MOVE                             R12 R6
       44 CALL                             R9 3 0
       45 FORGLOOP                         R1 2 ; [-36]
       47 RETURN                           R0 0

PROTO_102:
        0 MOVE                             R9 R2
        1 NAMECALL                         R7 R0 K0 ["idToInstance"]
        3 CALL                             R7 2 1
        4 JUMPIFEQKNIL                     R4 ; [+6]
        6 MOVE                             R10 R4
        7 NAMECALL                         R8 R0 K0 ["idToInstance"]
        9 CALL                             R8 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R8
       12 JUMPIFEQKNIL                     R7 ; [+6]
       14 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       15 NAMECALL                         R9 R7 K2 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIF                           R9 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R11 K3 ["AnimationGraphDefinition"]
       21 NAMECALL                         R9 R7 K4 ["FindFirstAncestorWhichIsA"]
       23 CALL                             R9 2 1
       24 JUMPIF                           R9 ; [+1]
       25 RETURN                           R0 0
       26 LOADNIL                          R10
       27 LOADNIL                          R11
       28 JUMPIFNOT                        R8 ; [+29]
       29 JUMPIFNOT                        R4 ; [+28]
       30 JUMPIFNOT                        R5 ; [+27]
       31 LOADK                            R14 K1 ["AnimationNodeDefinition"]
       32 NAMECALL                         R12 R8 K2 ["IsA"]
       34 CALL                             R12 2 1
       35 JUMPIF                           R12 ; [+5]
       36 LOADK                            R14 K5 ["Folder"]
       37 NAMECALL                         R12 R8 K2 ["IsA"]
       39 CALL                             R12 2 1
       40 JUMPIFNOT                        R12 ; [+17]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R12 R12 K6 ["_findNodeOutputBinding"]
       44 MOVE                             R13 R1
       45 MOVE                             R14 R4
       46 MOVE                             R15 R5
       47 CALL                             R12 3 1
       48 MOVE                             R10 R12
       49 JUMPIFNOT                        R10 ; [+7]
       50 GETTABLEKS                       R14 R10 K7 ["wireId"]
       52 NAMECALL                         R12 R0 K0 ["idToInstance"]
       54 CALL                             R12 2 1
       55 MOVE                             R11 R12
       56 JUMP                             ; [+1]
       57 LOADNIL                          R11
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K8 ["_findNodeInputBinding"]
       61 MOVE                             R13 R1
       62 MOVE                             R14 R2
       63 MOVE                             R15 R3
       64 MOVE                             R16 R6
       65 CALL                             R12 4 1
       66 JUMPIFNOT                        R12 ; [+6]
       67 GETTABLEKS                       R15 R12 K7 ["wireId"]
       69 NAMECALL                         R13 R0 K0 ["idToInstance"]
       71 CALL                             R13 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R13
       74 JUMPIFNOT                        R8 ; [+17]
       75 JUMPIFNOT                        R5 ; [+16]
       76 LOADK                            R16 K9 ["StateMachineDefinition"]
       77 NAMECALL                         R14 R8 K2 ["IsA"]
       79 CALL                             R14 2 1
       80 JUMPIFNOT                        R14 ; [+11]
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R14 R14 K10 ["setStateMachineConnection"]
       84 MOVE                             R15 R0
       85 MOVE                             R16 R7
       86 MOVE                             R17 R3
       87 MOVE                             R18 R8
       88 MOVE                             R19 R5
       89 MOVE                             R20 R13
       90 CALL                             R14 6 -1
       91 RETURN                           R14 -1
       92 JUMPIFNOT                        R8 ; [+38]
       93 LOADK                            R16 K5 ["Folder"]
       94 NAMECALL                         R14 R8 K2 ["IsA"]
       96 CALL                             R14 2 1
       97 JUMPIFNOT                        R14 ; [+33]
       98 LOADNIL                          R14
       99 JUMPIFEQKNIL                     R6 ; [+18]
      101 NAMECALL                         R15 R7 K11 ["GetOrderedInputPinNames"]
      103 CALL                             R15 1 1
      104 GETTABLE                         R16 R15 R6
      105 JUMPIFNOT                        R16 ; [+12]
      106 MOVE                             R19 R16
      107 NAMECALL                         R17 R7 K12 ["FindFirstChild"]
      109 CALL                             R17 2 1
      110 JUMPIFEQKNIL                     R17 ; [+7]
      112 LOADK                            R20 K13 ["ObjectValue"]
      113 NAMECALL                         R18 R17 K2 ["IsA"]
      115 CALL                             R18 2 1
      116 JUMPIFNOT                        R18 ; [+1]
      117 MOVE                             R14 R17
      118 GETUPVAL                         R15 0
      119 GETTABLEKS                       R15 R15 K14 ["setParameterConnection"]
      121 MOVE                             R16 R0
      122 MOVE                             R17 R9
      123 MOVE                             R18 R7
      124 MOVE                             R19 R2
      125 MOVE                             R20 R3
      126 MOVE                             R21 R8
      127 MOVE                             R22 R13
      128 MOVE                             R23 R14
      129 CALL                             R15 8 -1
      130 RETURN                           R15 -1
      131 LOADNIL                          R14
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K15 ["hasDynamicInputPins"]
      135 MOVE                             R16 R1
      136 MOVE                             R17 R2
      137 CALL                             R15 2 1
      138 JUMPIFNOT                        R15 ; [+136]
      139 NAMECALL                         R15 R7 K11 ["GetOrderedInputPinNames"]
      141 CALL                             R15 1 1
      142 JUMPIFNOT                        R10 ; [+7]
      143 GETIMPORT                        R16 K18 [table.find]
      145 MOVE                             R17 R15
      146 GETTABLEKS                       R18 R10 K19 ["inputNodePinId"]
      148 CALL                             R16 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R16
      151 JUMPIFNOT                        R16 ; [+5]
      152 GETIMPORT                        R17 K21 [table.remove]
      154 MOVE                             R18 R15
      155 MOVE                             R19 R16
      156 CALL                             R17 2 0
      157 JUMPIFNOT                        R12 ; [+7]
      158 GETIMPORT                        R17 K18 [table.find]
      160 MOVE                             R18 R15
      161 GETTABLEKS                       R19 R12 K19 ["inputNodePinId"]
      163 CALL                             R17 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R17
      166 JUMPIFNOT                        R17 ; [+5]
      167 GETIMPORT                        R18 K21 [table.remove]
      169 MOVE                             R19 R15
      170 MOVE                             R20 R17
      171 CALL                             R18 2 0
      172 JUMPIFNOT                        R8 ; [+100]
      173 JUMPIFNOT                        R4 ; [+99]
      174 GETUPVAL                         R19 1
      175 CALL                             R19 0 1
      176 JUMPIFNOT                        R19 ; [+36]
      177 GETUPVAL                         R19 2
      178 GETTABLEKS                       R19 R19 K22 ["NODE_CONFIGURATION_NAME"]
      180 LOADK                            R22 K23 ["Configuration"]
      181 NAMECALL                         R20 R8 K2 ["IsA"]
      183 CALL                             R20 2 1
      184 JUMPIFNOT                        R20 ; [+2]
      185 MOVE                             R18 R8
      186 JUMP                             ; [+17]
      187 MOVE                             R22 R19
      188 NAMECALL                         R20 R8 K12 ["FindFirstChild"]
      190 CALL                             R20 2 1
      191 JUMPIFEQKNIL                     R20 ; [+3]
      193 MOVE                             R18 R20
      194 JUMP                             ; [+9]
      195 GETIMPORT                        R20 K26 [Instance.new]
      197 LOADK                            R21 K23 ["Configuration"]
      198 CALL                             R20 1 1
      199 SETTABLEKS                       R19 R20 K27 ["Name"]
      201 SETTABLEKS                       R8 R20 K28 ["Parent"]
      203 MOVE                             R18 R20
      204 GETUPVAL                         R20 2
      205 GETTABLEKS                       R20 R20 K29 ["NODE_ATTRIBUTES"]
      207 GETTABLEKS                       R20 R20 K30 ["DisplayName"]
      209 NAMECALL                         R18 R18 K31 ["GetAttribute"]
      211 CALL                             R18 2 1
      212 JUMP                             ; [+8]
      213 GETUPVAL                         R20 2
      214 GETTABLEKS                       R20 R20 K29 ["NODE_ATTRIBUTES"]
      216 GETTABLEKS                       R20 R20 K30 ["DisplayName"]
      218 NAMECALL                         R18 R8 K31 ["GetAttribute"]
      220 CALL                             R18 2 1
      221 GETUPVAL                         R19 3
      222 CALL                             R19 0 1
      223 JUMPIFNOT                        R19 ; [+33]
      224 GETTABLEKS                       R21 R1 K32 ["lookup"]
      226 GETTABLE                         R20 R21 R4
      227 JUMPIFNOT                        R20 ; [+6]
      228 GETTABLEKS                       R20 R1 K32 ["lookup"]
      230 GETTABLE                         R19 R20 R4
      231 GETTABLEKS                       R19 R19 K33 ["name"]
      233 JUMPIF                           R19 ; [+2]
      234 GETTABLEKS                       R19 R8 K27 ["Name"]
      236 LOADK                            R22 K34 ["Node%d*$"]
      237 LOADK                            R23 K35 [""]
      238 NAMECALL                         R20 R19 K36 ["gsub"]
      240 CALL                             R20 3 1
      241 MOVE                             R19 R20
      242 GETUPVAL                         R20 0
      243 GETTABLEKS                       R20 R20 K37 ["getDynamicInputPinNameFromInputPinIds"]
      245 MOVE                             R21 R15
      246 JUMPIFNOT                        R18 ; [+6]
      247 FASTCALL1                        TOSTRING R18 ; [+3]
      248 MOVE                             R23 R18
      249 GETIMPORT                        R22 K39 [tostring]
      251 CALL                             R22 1 1
      252 JUMP                             ; [+1]
      253 MOVE                             R22 R19
      254 CALL                             R20 2 1
      255 MOVE                             R14 R20
      256 JUMP                             ; [+19]
      257 GETUPVAL                         R19 0
      258 GETTABLEKS                       R19 R19 K37 ["getDynamicInputPinNameFromInputPinIds"]
      260 MOVE                             R20 R15
      261 JUMPIFNOT                        R18 ; [+6]
      262 FASTCALL1                        TOSTRING R18 ; [+3]
      263 MOVE                             R22 R18
      264 GETIMPORT                        R21 K39 [tostring]
      266 CALL                             R21 1 1
      267 JUMP                             ; [+2]
      268 GETTABLEKS                       R21 R8 K27 ["Name"]
      270 CALL                             R19 2 1
      271 MOVE                             R14 R19
      272 JUMP                             ; [+3]
      273 MOVE                             R14 R3
      274 JUMP                             ; [+1]
      275 MOVE                             R14 R3
      276 JUMPIFEQ                         R14 R3 ; [+9]
      278 GETUPVAL                         R15 0
      279 GETTABLEKS                       R15 R15 K8 ["_findNodeInputBinding"]
      281 MOVE                             R16 R1
      282 MOVE                             R17 R2
      283 MOVE                             R18 R14
      284 CALL                             R15 3 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R15
      287 JUMPIFNOT                        R15 ; [+6]
      288 GETTABLEKS                       R18 R15 K7 ["wireId"]
      290 NAMECALL                         R16 R0 K0 ["idToInstance"]
      292 CALL                             R16 2 1
      293 JUMP                             ; [+1]
      294 LOADNIL                          R16
      295 JUMPIFEQKNIL                     R13 ; [+13]
      297 MOVE                             R20 R9
      298 NAMECALL                         R18 R13 K40 ["IsDescendantOf"]
      300 CALL                             R18 2 1
      301 JUMPIFNOT                        R18 ; [+7]
      302 LOADK                            R20 K13 ["ObjectValue"]
      303 NAMECALL                         R18 R13 K2 ["IsA"]
      305 CALL                             R18 2 1
      306 JUMPIFNOT                        R18 ; [+2]
      307 MOVE                             R17 R13
      308 JUMP                             ; [+32]
      309 JUMPIFEQKNIL                     R16 ; [+13]
      311 MOVE                             R20 R9
      312 NAMECALL                         R18 R16 K40 ["IsDescendantOf"]
      314 CALL                             R18 2 1
      315 JUMPIFNOT                        R18 ; [+7]
      316 LOADK                            R20 K13 ["ObjectValue"]
      317 NAMECALL                         R18 R16 K2 ["IsA"]
      319 CALL                             R18 2 1
      320 JUMPIFNOT                        R18 ; [+2]
      321 MOVE                             R17 R16
      322 JUMP                             ; [+18]
      323 JUMPIFEQKNIL                     R11 ; [+13]
      325 MOVE                             R20 R9
      326 NAMECALL                         R18 R11 K40 ["IsDescendantOf"]
      328 CALL                             R18 2 1
      329 JUMPIFNOT                        R18 ; [+7]
      330 LOADK                            R20 K13 ["ObjectValue"]
      331 NAMECALL                         R18 R11 K2 ["IsA"]
      333 CALL                             R18 2 1
      334 JUMPIFNOT                        R18 ; [+2]
      335 MOVE                             R17 R11
      336 JUMP                             ; [+4]
      337 GETIMPORT                        R17 K26 [Instance.new]
      339 LOADK                            R18 K13 ["ObjectValue"]
      340 CALL                             R17 1 1
      341 JUMPIFNOT                        R16 ; [+5]
      342 JUMPIFEQ                         R16 R17 ; [+4]
      344 LOADNIL                          R18
      345 SETTABLEKS                       R18 R16 K28 ["Parent"]
      347 JUMPIFNOT                        R11 ; [+5]
      348 JUMPIFEQ                         R11 R17 ; [+4]
      350 LOADNIL                          R18
      351 SETTABLEKS                       R18 R11 K28 ["Parent"]
      353 JUMPIFNOT                        R13 ; [+5]
      354 JUMPIFEQ                         R13 R17 ; [+4]
      356 LOADNIL                          R18
      357 SETTABLEKS                       R18 R13 K28 ["Parent"]
      359 NAMECALL                         R18 R7 K41 ["GetChildren"]
      361 CALL                             R18 1 3
      362 FORGPREP                         R18
      363 LOADK                            R25 K13 ["ObjectValue"]
      364 NAMECALL                         R23 R22 K2 ["IsA"]
      366 CALL                             R23 2 1
      367 JUMPIFNOT                        R23 ; [+9]
      368 GETTABLEKS                       R23 R22 K27 ["Name"]
      370 JUMPIFNOTEQ                      R23 R14 ; [+6]
      372 JUMPIFEQ                         R22 R17 ; [+4]
      374 LOADNIL                          R23
      375 SETTABLEKS                       R23 R22 K28 ["Parent"]
      377 FORGLOOP                         R18 2 ; [-15]
      379 NAMECALL                         R18 R7 K11 ["GetOrderedInputPinNames"]
      381 CALL                             R18 1 1
      382 JUMPIFEQ                         R14 R3 ; [+19]
      384 GETIMPORT                        R19 K18 [table.find]
      386 MOVE                             R20 R18
      387 MOVE                             R21 R3
      388 CALL                             R19 2 1
      389 GETIMPORT                        R20 K18 [table.find]
      391 MOVE                             R21 R18
      392 MOVE                             R22 R14
      393 CALL                             R20 2 1
      394 JUMPIFNOT                        R19 ; [+1]
      395 SETTABLE                         R14 R18 R19
      396 JUMPIFNOT                        R20 ; [+5]
      397 GETIMPORT                        R21 K21 [table.remove]
      399 MOVE                             R22 R18
      400 MOVE                             R23 R20
      401 CALL                             R21 2 0
      402 GETIMPORT                        R19 K18 [table.find]
      404 MOVE                             R20 R18
      405 MOVE                             R21 R14
      406 CALL                             R19 2 1
      407 JUMPIF                           R19 ; [+7]
      408 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      410 MOVE                             R20 R18
      411 MOVE                             R21 R14
      412 GETIMPORT                        R19 K43 [table.insert]
      414 CALL                             R19 2 0
      415 MOVE                             R21 R18
      416 NAMECALL                         R19 R7 K44 ["SetOrderedInputPinNames"]
      418 CALL                             R19 2 0
      419 SETTABLEKS                       R14 R17 K27 ["Name"]
      421 SETTABLEKS                       R8 R17 K45 ["Value"]
      423 SETTABLEKS                       R7 R17 K28 ["Parent"]
      425 MOVE                             R21 R17
      426 NAMECALL                         R19 R0 K46 ["instanceToId"]
      428 CALL                             R19 2 1
      429 MOVE                             R20 R14
      430 MOVE                             R21 R17
      431 RETURN                           R19 3

PROTO_103:
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

PROTO_104:
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
       12 GETTABLEKS                       R3 R1 K1 ["Inputs"]
       14 GETTABLEN                        R2 R3 1
       15 GETTABLEKS                       R2 R2 K2 ["InputFlags"]
       17 JUMPIFEQKN                       R2 K3 [1] ; [+3]
       19 LOADB                            R2 0
       20 RETURN                           R2 1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_105:
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

PROTO_106:
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
       53 RETURN                           R0 0

PROTO_107:
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

PROTO_108:
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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["getDynamicInputPinNameFromInputPinIds"]
       20 MOVE                             R6 R3
       21 MOVE                             R7 R1
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1

PROTO_109:
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

PROTO_110:
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

PROTO_111:
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

PROTO_112:
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
       22 GETUPVAL                         R4 2
       23 CALL                             R4 0 1
       24 GETIMPORT                        R5 K12 [Enum.AnimationNodeType.GraphOutput]
       26 SETTABLEKS                       R5 R4 K13 ["NodeType"]
       28 LOADK                            R5 K11 ["GraphOutput"]
       29 SETTABLEKS                       R5 R4 K8 ["Name"]
       31 SETTABLEKS                       R3 R4 K14 ["Parent"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K15 ["setNodePosition"]
       36 MOVE                             R6 R4
       37 GETIMPORT                        R7 K18 [Vector2.zero]
       39 CALL                             R5 2 0
       40 SETTABLEKS                       R2 R3 K14 ["Parent"]
       42 RETURN                           R3 1

PROTO_113:
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
       15 GETTABLEKS                       R6 R4 K4 ["Type"]
       17 GETTABLEKS                       R6 R6 K5 ["Name"]
       19 MOVE                             R9 R6
       20 NAMECALL                         R7 R2 K6 ["FindFirstChild"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+12]
       24 ADDK                             R5 R5 K7 [1]
       25 GETIMPORT                        R7 K10 [string.format]
       27 LOADK                            R8 K11 ["%s%d"]
       28 GETTABLEKS                       R9 R4 K4 ["Type"]
       30 GETTABLEKS                       R9 R9 K5 ["Name"]
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
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K17 ["setNodePosition"]
       62 MOVE                             R8 R3
       63 GETUPVAL                         R10 3
       64 CALL                             R10 0 1
       65 JUMPIFNOT                        R10 ; [+6]
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R9 R9 K18 ["predictOutputPosition"]
       69 MOVE                             R10 R1
       70 CALL                             R9 1 1
       71 JUMP                             ; [+1]
       72 MOVE                             R9 R1
       73 CALL                             R7 2 0
       74 RETURN                           R3 1

PROTO_114:
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
       59 JUMPIFNOT                        R15 ; [+7]
       60 GETTABLEKS                       R15 R14 K13 ["Value"]
       62 JUMPIFNOT                        R15 ; [+4]
       63 GETTABLE                         R16 R3 R15
       64 JUMPIFNOT                        R16 ; [+2]
       65 SETTABLEKS                       R16 R14 K13 ["Value"]
       67 FORGLOOP                         R10 2 ; [-13]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K14 ["setNodePosition"]
       72 MOVE                             R11 R9
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R13 R13 K15 ["getNodePosition"]
       76 MOVE                             R14 R9
       77 CALL                             R13 1 1
       78 JUMPIF                           R13 ; [+2]
       79 GETIMPORT                        R13 K18 [Vector2.zero]
       81 GETIMPORT                        R14 K20 [Vector2.new]
       83 LOADN                            R15 10
       84 LOADN                            R16 10
       85 CALL                             R14 2 1
       86 ADD                              R12 R13 R14
       87 CALL                             R10 2 0
       88 SETTABLEKS                       R0 R9 K21 ["Parent"]
       90 FORGLOOP                         R5 2 ; [-40]
       92 RETURN                           R4 1

PROTO_115:
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

PROTO_116:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+38]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFNOTEQ                      R8 R9 ; [+5]
       17 GETUPVAL                         R8 0
       18 MOVE                             R9 R0
       19 CALL                             R8 1 1
       20 JUMPIF                           R8 ; [+28]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K7 ["setNodePosition"]
       24 MOVE                             R9 R7
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K8 ["getNodePosition"]
       28 MOVE                             R12 R7
       29 CALL                             R11 1 1
       30 JUMPIF                           R11 ; [+2]
       31 GETIMPORT                        R11 K11 [Vector2.zero]
       33 GETIMPORT                        R12 K13 [Vector2.new]
       35 LOADN                            R13 10
       36 LOADN                            R14 10
       37 CALL                             R12 2 1
       38 ADD                              R10 R11 R12
       39 CALL                             R8 2 0
       40 SETTABLEKS                       R0 R7 K14 ["Parent"]
       42 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       44 MOVE                             R9 R2
       45 MOVE                             R10 R7
       46 GETIMPORT                        R8 K17 [table.insert]
       48 CALL                             R8 2 0
       49 FORGLOOP                         R3 2 ; [-44]
       51 RETURN                           R2 1

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
       17 GETTABLEKS                       R3 R3 K11 ["AnimationNodeWrapper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["Rig"]
       26 GETTABLEKS                       R4 R4 K13 ["AnimationRigDataUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["Constants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Flags"]
       40 GETTABLEKS                       R6 R6 K16 ["FFlagAnimGraphUI_FixEnumPinDragging"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K10 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["Instances"]
       49 GETTABLEKS                       R7 R7 K18 ["InstanceRegistry"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K10 ["Util"]
       56 GETTABLEKS                       R8 R8 K17 ["Instances"]
       58 GETTABLEKS                       R8 R8 K19 ["InstanceSelectionRegistry"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K20 ["Contexts"]
       65 GETTABLEKS                       R9 R9 K21 ["NativeGraphContext"]
       67 GETTABLEKS                       R9 R9 K22 ["NewAnimationNode"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K23 ["Parent"]
       74 GETTABLEKS                       R10 R10 K24 ["NodeGraphing"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K25 ["NodeViewTypes"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R1 K10 ["Util"]
       86 GETTABLEKS                       R12 R12 K26 ["Signals"]
       88 GETTABLEKS                       R12 R12 K27 ["Experimental"]
       90 GETTABLEKS                       R12 R12 K28 ["SignalExperimentalUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K23 ["Parent"]
       97 GETTABLEKS                       R13 R13 K26 ["Signals"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R1 K10 ["Util"]
      104 GETTABLEKS                       R14 R14 K26 ["Signals"]
      106 GETTABLEKS                       R14 R14 K29 ["SignalsAnimationUtils"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R1 K10 ["Util"]
      113 GETTABLEKS                       R15 R15 K26 ["Signals"]
      115 GETTABLEKS                       R15 R15 K30 ["SignalsInstanceUtils"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R1 K23 ["Parent"]
      122 GETTABLEKS                       R16 R16 K31 ["StateMachineGraphing"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R1 K10 ["Util"]
      129 GETTABLEKS                       R17 R17 K26 ["Signals"]
      131 GETTABLEKS                       R17 R17 K32 ["TypedInstanceSignals"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R1 K10 ["Util"]
      138 GETTABLEKS                       R18 R18 K33 ["getDeduplicatedName"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R1 K15 ["Flags"]
      145 GETTABLEKS                       R19 R19 K34 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R1 K15 ["Flags"]
      152 GETTABLEKS                       R20 R20 K35 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K9 [require]
      157 GETTABLEKS                       R21 R1 K15 ["Flags"]
      159 GETTABLEKS                       R21 R21 K36 ["getFFlagAnimGraphUI_RunTimeDebug"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R1 K15 ["Flags"]
      166 GETTABLEKS                       R22 R22 K37 ["getFFlagAnimGraphUI_StateMachineNode"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K9 [require]
      171 GETTABLEKS                       R23 R1 K15 ["Flags"]
      173 GETTABLEKS                       R23 R23 K38 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      175 CALL                             R22 1 1
      176 GETIMPORT                        R23 K9 [require]
      178 GETTABLEKS                       R24 R1 K10 ["Util"]
      180 GETTABLEKS                       R24 R24 K39 ["parseAnimationNodeType"]
      182 CALL                             R23 1 1
      183 GETTABLEKS                       R24 R15 K40 ["isStateMachineBinding"]
      185 NEWTABLE                         R25 128 0
      187 DUPCLOSURE                       R26 K41 [PROTO_0]
      188 DUPCLOSURE                       R27 K42 [PROTO_2]
      189 CAPTURE                          VAL R14
      190 DUPCLOSURE                       R28 K43 [PROTO_3]
      191 CAPTURE                          VAL R4
      192 SETTABLEKS                       R28 R25 K44 ["getUniqueParameterName"]
      194 DUPCLOSURE                       R28 K45 [PROTO_4]
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R4
      198 SETTABLEKS                       R28 R25 K46 ["getOrCreateParameterInstance"]
      200 DUPCLOSURE                       R28 K47 [PROTO_5]
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R4
      203 SETTABLEKS                       R28 R25 K48 ["getOrCreateExpressionInstance"]
      205 DUPCLOSURE                       R28 K49 [PROTO_6]
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R4
      208 SETTABLEKS                       R28 R25 K50 ["createExistingParameterInstance"]
      210 DUPCLOSURE                       R28 K51 [PROTO_8]
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R5
      213 SETTABLEKS                       R28 R25 K52 ["getParameterType"]
      215 DUPCLOSURE                       R28 K53 [PROTO_9]
      216 SETTABLEKS                       R28 R25 K54 ["setParameterBindingName"]
      218 DUPCLOSURE                       R28 K55 [PROTO_10]
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R4
      222 SETTABLEKS                       R28 R25 K56 ["setExpressionBindingName"]
      224 DUPCLOSURE                       R28 K57 [PROTO_11]
      225 CAPTURE                          VAL R4
      226 SETTABLEKS                       R28 R25 K58 ["getNodePosition"]
      228 DUPCLOSURE                       R28 K59 [PROTO_12]
      229 CAPTURE                          VAL R4
      230 SETTABLEKS                       R28 R25 K60 ["predictOutputPosition"]
      232 DUPCLOSURE                       R28 K61 [PROTO_13]
      233 CAPTURE                          VAL R4
      234 SETTABLEKS                       R28 R25 K62 ["setNodePosition"]
      236 DUPCLOSURE                       R28 K63 [PROTO_14]
      237 CAPTURE                          VAL R4
      238 SETTABLEKS                       R28 R25 K64 ["setNodeSize"]
      240 DUPCLOSURE                       R28 K65 [PROTO_15]
      241 CAPTURE                          VAL R4
      242 SETTABLEKS                       R28 R25 K66 ["setNodeIsCollapsed"]
      244 DUPCLOSURE                       R28 K67 [PROTO_16]
      245 CAPTURE                          VAL R4
      246 SETTABLEKS                       R28 R25 K68 ["setDisplayName"]
      248 DUPCLOSURE                       R28 K69 [PROTO_17]
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R4
      251 SETTABLEKS                       R28 R25 K70 ["setZIndex"]
      253 DUPCLOSURE                       R28 K71 [PROTO_18]
      254 SETTABLEKS                       R28 R25 K72 ["getParameterInstanceName"]
      256 DUPCLOSURE                       R28 K73 [PROTO_19]
      257 SETTABLEKS                       R28 R25 K74 ["getExpressionInstanceName"]
      259 DUPCLOSURE                       R28 K75 [PROTO_20]
      260 CAPTURE                          VAL R25
      261 SETTABLEKS                       R28 R25 K76 ["getAllParameterInstancesFromName"]
      263 DUPCLOSURE                       R28 K77 [PROTO_22]
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R25
      268 SETTABLEKS                       R28 R25 K78 ["observeWireInfo"]
      270 DUPCLOSURE                       R28 K79 [PROTO_28]
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R11
      274 SETTABLEKS                       R28 R25 K80 ["observeNodeConnectionMap"]
      276 DUPCLOSURE                       R28 K81 [PROTO_29]
      277 SETTABLEKS                       R28 R25 K82 ["matchParameterBinding"]
      279 DUPCLOSURE                       R28 K83 [PROTO_30]
      280 SETTABLEKS                       R28 R25 K84 ["matchExpressionBindingValue"]
      282 DUPCLOSURE                       R28 K85 [PROTO_31]
      283 SETTABLEKS                       R28 R25 K86 ["getExpressionBindingValue"]
      285 DUPCLOSURE                       R28 K87 [PROTO_32]
      286 SETTABLEKS                       R28 R25 K88 ["matchExpressionNameFromNode"]
      288 DUPCLOSURE                       R28 K89 [PROTO_33]
      289 CAPTURE                          VAL R25
      290 CAPTURE                          VAL R4
      291 SETTABLEKS                       R28 R25 K90 ["setNonPromotedExpressionNodeValue"]
      293 DUPCLOSURE                       R28 K91 [PROTO_36]
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R4
      296 CAPTURE                          VAL R11
      297 SETTABLEKS                       R28 R25 K92 ["observeParameterNodeInfo"]
      299 DUPCLOSURE                       R28 K93 [PROTO_46]
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R14
      302 CAPTURE                          VAL R11
      303 CAPTURE                          VAL R0
      304 CAPTURE                          VAL R16
      305 SETTABLEKS                       R28 R25 K94 ["observeNodeProps"]
      307 DUPCLOSURE                       R28 K95 [PROTO_48]
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R11
      310 SETTABLEKS                       R28 R25 K96 ["observeNodeType"]
      312 DUPCLOSURE                       R28 K97 [PROTO_51]
      313 CAPTURE                          VAL R22
      314 CAPTURE                          VAL R4
      315 CAPTURE                          VAL R27
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R16
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R11
      320 SETTABLEKS                       R28 R25 K98 ["observeNodeInfo"]
      322 DUPCLOSURE                       R28 K99 [PROTO_54]
      323 CAPTURE                          VAL R14
      324 CAPTURE                          VAL R25
      325 SETTABLEKS                       R28 R25 K100 ["observeNodeInfoLookupList"]
      327 DUPCLOSURE                       R28 K101 [PROTO_57]
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R11
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R25
      332 SETTABLEKS                       R28 R25 K102 ["observeParameterNodeInfoLookupList"]
      334 DUPCLOSURE                       R28 K103 [PROTO_61]
      335 CAPTURE                          VAL R14
      336 CAPTURE                          VAL R16
      337 CAPTURE                          VAL R11
      338 SETTABLEKS                       R28 R25 K104 ["observeStateMachineNodeInfoLookupList"]
      340 DUPCLOSURE                       R28 K105 [PROTO_64]
      341 CAPTURE                          VAL R14
      342 CAPTURE                          VAL R25
      343 CAPTURE                          VAL R4
      344 CAPTURE                          VAL R11
      345 CAPTURE                          VAL R16
      346 SETTABLEKS                       R28 R25 K106 ["observeNonPromotedExpressionNodes"]
      348 DUPCLOSURE                       R28 K107 [PROTO_67]
      349 CAPTURE                          VAL R14
      350 CAPTURE                          VAL R25
      351 CAPTURE                          VAL R11
      352 SETTABLEKS                       R28 R25 K108 ["observeRenderInfoMap"]
      354 DUPCLOSURE                       R28 K109 [PROTO_73]
      355 CAPTURE                          VAL R14
      356 CAPTURE                          VAL R27
      357 CAPTURE                          VAL R4
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R9
      360 CAPTURE                          VAL R11
      361 SETTABLEKS                       R28 R25 K110 ["observeRenderInfo"]
      363 DUPCLOSURE                       R28 K111 [PROTO_77]
      364 CAPTURE                          VAL R13
      365 CAPTURE                          VAL R11
      366 CAPTURE                          VAL R14
      367 SETTABLEKS                       R28 R25 K112 ["observeEditingAnimationGraphDefinition"]
      369 DUPCLOSURE                       R28 K113 [PROTO_85]
      370 CAPTURE                          VAL R14
      371 CAPTURE                          VAL R25
      372 CAPTURE                          VAL R11
      373 CAPTURE                          VAL R4
      374 SETTABLEKS                       R28 R25 K114 ["observeGraphState"]
      376 DUPCLOSURE                       R28 K115 [PROTO_86]
      377 SETTABLEKS                       R28 R25 K116 ["fitGraphRect"]
      379 DUPCLOSURE                       R28 K117 [PROTO_87]
      380 SETTABLEKS                       R28 R25 K118 ["_findNodeInputBinding"]
      382 DUPCLOSURE                       R28 K119 [PROTO_88]
      383 SETTABLEKS                       R28 R25 K120 ["_findNodeOutputBinding"]
      385 DUPCLOSURE                       R28 K121 [PROTO_89]
      386 CAPTURE                          VAL R21
      387 CAPTURE                          VAL R25
      388 SETTABLEKS                       R28 R25 K122 ["deleteNodeInput"]
      390 DUPCLOSURE                       R28 K123 [PROTO_90]
      391 CAPTURE                          VAL R25
      392 SETTABLEKS                       R28 R25 K124 ["removeNodeInputConnection"]
      394 DUPCLOSURE                       R28 K125 [PROTO_91]
      395 SETTABLEKS                       R28 R25 K126 ["isAParameterWire"]
      397 DUPCLOSURE                       R28 K127 [PROTO_92]
      398 CAPTURE                          VAL R25
      399 SETTABLEKS                       R28 R25 K128 ["removeOrderedInputPin"]
      401 DUPCLOSURE                       R28 K129 [PROTO_93]
      402 CAPTURE                          VAL R25
      403 SETTABLEKS                       R28 R25 K130 ["removeNodeOutputConnection"]
      405 DUPCLOSURE                       R28 K131 [PROTO_94]
      406 SETTABLEKS                       R28 R25 K132 ["getParameterWireName"]
      408 DUPCLOSURE                       R28 K133 [PROTO_95]
      409 SETTABLEKS                       R28 R25 K134 ["getParameterWireInputPinId"]
      411 DUPCLOSURE                       R28 K135 [PROTO_96]
      412 CAPTURE                          VAL R25
      413 CAPTURE                          VAL R18
      414 CAPTURE                          VAL R4
      415 SETTABLEKS                       R28 R25 K136 ["setParameterConnection"]
      417 DUPCLOSURE                       R28 K137 [PROTO_97]
      418 SETTABLEKS                       R28 R25 K138 ["isAStateMachineWire"]
      420 DUPCLOSURE                       R28 K139 [PROTO_98]
      421 DUPCLOSURE                       R29 K140 [PROTO_99]
      422 CAPTURE                          VAL R25
      423 SETTABLEKS                       R29 R25 K141 ["setStateMachineConnection"]
      425 DUPCLOSURE                       R29 K142 [PROTO_100]
      426 CAPTURE                          VAL R24
      427 SETTABLEKS                       R29 R25 K143 ["removeStateMachineConnection"]
      429 DUPCLOSURE                       R29 K144 [PROTO_101]
      430 CAPTURE                          VAL R25
      431 SETTABLEKS                       R29 R25 K145 ["removeAllStateMachineConnections"]
      433 DUPCLOSURE                       R29 K146 [PROTO_102]
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R22
      436 CAPTURE                          VAL R4
      437 CAPTURE                          VAL R19
      438 SETTABLEKS                       R29 R25 K147 ["setNodeConnection"]
      440 DUPCLOSURE                       R29 K148 [PROTO_103]
      441 CAPTURE                          VAL R23
      442 CAPTURE                          VAL R25
      443 SETTABLEKS                       R29 R25 K149 ["hasDynamicInputPins"]
      445 DUPCLOSURE                       R29 K150 [PROTO_104]
      446 CAPTURE                          VAL R2
      447 SETTABLEKS                       R29 R25 K151 ["nodeTypeHasDynamicInputPins"]
      449 DUPCLOSURE                       R29 K152 [PROTO_105]
      450 SETTABLEKS                       R29 R25 K153 ["reorderPins"]
      452 DUPCLOSURE                       R29 K154 [PROTO_106]
      453 CAPTURE                          VAL R25
      454 SETTABLEKS                       R29 R25 K155 ["renameDynamicInputPin"]
      456 DUPCLOSURE                       R29 K156 [PROTO_107]
      457 CAPTURE                          VAL R25
      458 SETTABLEKS                       R29 R25 K157 ["getDynamicInputPinName"]
      460 DUPCLOSURE                       R29 K158 [PROTO_108]
      461 CAPTURE                          VAL R25
      462 SETTABLEKS                       R29 R25 K159 ["getDynamicInputPinNameFromInputNode"]
      464 DUPCLOSURE                       R29 K160 [PROTO_109]
      465 SETTABLEKS                       R29 R25 K161 ["getDynamicInputPinNameFromInputPinIds"]
      467 DUPCLOSURE                       R29 K162 [PROTO_110]
      468 CAPTURE                          VAL R3
      469 SETTABLEKS                       R29 R25 K163 ["getAnimSavesFolderForTarget"]
      471 DUPCLOSURE                       R29 K164 [PROTO_111]
      472 CAPTURE                          VAL R20
      473 CAPTURE                          VAL R25
      474 CAPTURE                          VAL R3
      475 SETTABLEKS                       R29 R25 K165 ["getOrCreateParentForNewGraph"]
      477 DUPCLOSURE                       R29 K166 [PROTO_112]
      478 CAPTURE                          VAL R25
      479 CAPTURE                          VAL R17
      480 CAPTURE                          VAL R8
      481 SETTABLEKS                       R29 R25 K167 ["createNewAnimationGraph"]
      483 DUPCLOSURE                       R29 K168 [PROTO_113]
      484 CAPTURE                          VAL R8
      485 CAPTURE                          VAL R0
      486 CAPTURE                          VAL R25
      487 CAPTURE                          VAL R20
      488 SETTABLEKS                       R29 R25 K169 ["createNodeOfType"]
      490 DUPCLOSURE                       R29 K170 [PROTO_114]
      491 CAPTURE                          VAL R25
      492 SETTABLEKS                       R29 R25 K171 ["duplicateNodes"]
      494 DUPCLOSURE                       R29 K172 [PROTO_115]
      495 DUPCLOSURE                       R30 K173 [PROTO_116]
      496 CAPTURE                          VAL R29
      497 CAPTURE                          VAL R25
      498 SETTABLEKS                       R30 R25 K174 ["pasteInstancesIntoGraph"]
      500 RETURN                           R25 1
