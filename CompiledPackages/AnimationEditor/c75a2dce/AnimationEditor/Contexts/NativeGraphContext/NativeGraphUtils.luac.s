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
       15 JUMPIF                           R3 ; [+38]
       16 GETUPVAL                         R7 1
       17 CALL                             R7 0 1
       18 JUMPIFNOT                        R7 ; [+14]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K5 ["getUniqueParameterName"]
       22 MOVE                             R8 R5
       23 MOVE                             R9 R1
       24 CALL                             R7 2 1
       25 MOVE                             R5 R7
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["getParameterInstanceName"]
       29 MOVE                             R8 R5
       30 CALL                             R7 1 1
       31 MOVE                             R6 R7
       32 JUMP                             ; [+21]
       33 LOADN                            R7 0
       34 MOVE                             R10 R6
       35 NAMECALL                         R8 R1 K6 ["FindFirstChild"]
       37 CALL                             R8 2 1
       38 JUMPIFNOT                        R8 ; [+15]
       39 ADDK                             R7 R7 K7 [1]
       40 GETIMPORT                        R8 K9 [string.format]
       42 LOADK                            R9 K10 ["%s%d"]
       43 MOVE                             R10 R4
       44 MOVE                             R11 R7
       45 CALL                             R8 3 1
       46 MOVE                             R5 R8
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K4 ["getParameterInstanceName"]
       50 MOVE                             R9 R5
       51 CALL                             R8 1 1
       52 MOVE                             R6 R8
       53 JUMPBACK                         ; [-20]
       54 GETIMPORT                        R7 K13 [Instance.new]
       56 LOADK                            R8 K14 ["Folder"]
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R6 R7 K15 ["Name"]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       63 GETTABLEKS                       R10 R10 K17 ["ParameterType"]
       65 NAMECALL                         R8 R7 K18 ["GetAttribute"]
       67 CALL                             R8 2 1
       68 JUMPIF                           R8 ; [+19]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       72 GETTABLEKS                       R10 R10 K17 ["ParameterType"]
       74 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       76 NAMECALL                         R8 R7 K19 ["SetAttribute"]
       78 CALL                             R8 3 0
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K16 ["NODE_ATTRIBUTES"]
       82 GETTABLEKS                       R10 R10 K20 ["BindingName"]
       84 MOVE                             R11 R5
       85 NAMECALL                         R8 R7 K19 ["SetAttribute"]
       87 CALL                             R8 3 0
       88 SETTABLEKS                       R1 R7 K21 ["Parent"]
       90 MOVE                             R10 R7
       91 NAMECALL                         R8 R0 K22 ["instanceToId"]
       93 CALL                             R8 2 0
       94 RETURN                           R7 1

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
        1 LOADK                            R6 K0 ["param::%*"]
        2 MOVE                             R8 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 2 1
        6 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

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
        0 LOADK                            R1 K0 ["Parameter_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_19:
        0 LOADK                            R1 K0 ["Expression_%*"]
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
       11 JUMPIFNOT                        R1 ; [+12]
       12 JUMPIFNOT                        R2 ; [+11]
       13 LOADK                            R8 K2 ["ObjectValue"]
       14 NAMECALL                         R6 R2 K1 ["IsA"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETTABLEKS                       R3 R2 K3 ["Parent"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R5 R2 K4 ["Name"]
       23 JUMP                             ; [+8]
       24 JUMPIFNOT                        R1 ; [+2]
       25 MOVE                             R3 R2
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R3 0
       28 JUMPIFNOT                        R1 ; [+2]
       29 GETUPVAL                         R4 0
       30 JUMP                             ; [+1]
       31 MOVE                             R4 R2
       32 JUMPIFNOT                        R4 ; [+6]
       33 GETUPVAL                         R6 2
       34 MOVE                             R8 R4
       35 NAMECALL                         R6 R6 K5 ["instanceToId"]
       37 CALL                             R6 2 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R6
       40 JUMPIFNOT                        R3 ; [+6]
       41 GETUPVAL                         R7 2
       42 MOVE                             R9 R3
       43 NAMECALL                         R7 R7 K5 ["instanceToId"]
       45 CALL                             R7 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 GETUPVAL                         R8 3
       49 MOVE                             R9 R0
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K6 ["getParameterWireInputPinId"]
       54 MOVE                             R10 R8
       55 CALL                             R9 1 1
       56 OR                               R10 R9 R8
       57 GETUPVAL                         R11 5
       58 MOVE                             R12 R0
       59 CALL                             R11 1 1
       60 DUPTABLE                         R12 K15 [{["wireId"], ["inputNodeId"], ["inputNodePinId"], ["outputNodeId"], ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"]}]
       61 GETUPVAL                         R13 6
       62 SETTABLEKS                       R13 R12 K7 ["wireId"]
       64 SETTABLEKS                       R7 R12 K8 ["inputNodeId"]
       66 SETTABLEKS                       R10 R12 K9 ["inputNodePinId"]
       68 SETTABLEKS                       R6 R12 K10 ["outputNodeId"]
       70 SETTABLEKS                       R11 R12 K13 ["properties"]
       72 SETTABLEKS                       R5 R12 K14 ["targetWireInputPinId"]
       74 RETURN                           R12 1

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
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
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
        4 JUMPIF                           R2 ; [+4]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Bad Node Instance Type"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["observeChildrenWhichIsA"]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K7 ["ObjectValue"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["forEach"]
       24 MOVE                             R3 R1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CALL                             R2 2 1
       30 RETURN                           R2 1

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
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["forEach"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R4
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["forEach"]
       25 MOVE                             R7 R3
       26 MOVE                             R8 R4
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K4 ["createComputed"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 CALL                             R7 1 -1
       35 RETURN                           R7 -1

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
        0 LOADK                            R1 K0 ["expr::%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

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
       12 LOADK                            R3 K2 ["Folder"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_58]
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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
       21 DUPCLOSURE                       R7 K4 [PROTO_64]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_65]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_66]
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
       52 DUPCLOSURE                       R10 K8 [PROTO_67]
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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
       18 DUPCLOSURE                       R6 K4 [PROTO_71]
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

PROTO_74:
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

PROTO_75:
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
       57 GETTABLEKS                       R16 R11 K6 ["nodeType"]
       59 GETIMPORT                        R17 K10 [Enum.AnimationNodeType.GraphOutput]
       61 JUMPIFNOTEQ                      R16 R17 ; [+3]
       63 GETTABLEKS                       R5 R11 K0 ["nodeId"]
       65 GETIMPORT                        R16 K13 [table.freeze]
       67 DUPTABLE                         R17 K25 [{["inputPinIds"], ["outputPinToConnectionMap"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["className"], ["id"], ["index"] = , ["name"], ["nodeType"], ["props"] = , ["state"] = }]
       68 GETTABLEKS                       R18 R11 K14 ["inputPinIds"]
       70 SETTABLEKS                       R18 R17 K14 ["inputPinIds"]
       72 SETTABLEKS                       R14 R17 K15 ["outputPinToConnectionMap"]
       74 SETTABLEKS                       R13 R17 K16 ["inputPinToConnectionMap"]
       76 SETTABLEKS                       R15 R17 K17 ["inputLabelPinToConnectionMap"]
       78 GETTABLEKS                       R18 R11 K6 ["nodeType"]
       80 GETTABLEKS                       R18 R18 K26 ["Name"]
       82 SETTABLEKS                       R18 R17 K18 ["className"]
       84 GETTABLEKS                       R18 R11 K0 ["nodeId"]
       86 SETTABLEKS                       R18 R17 K19 ["id"]
       88 GETTABLEKS                       R18 R11 K22 ["name"]
       90 SETTABLEKS                       R18 R17 K22 ["name"]
       92 GETTABLEKS                       R19 R11 K6 ["nodeType"]
       94 FASTCALL1                        TOSTRING R19 ; [+2]
       95 GETIMPORT                        R18 K28 [tostring]
       97 CALL                             R18 1 1
       98 SETTABLEKS                       R18 R17 K6 ["nodeType"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R17 R11 K0 ["nodeId"]
      103 SETTABLE                         R16 R6 R17
      104 FORGLOOP                         R7 2 ; [-86]
      106 MOVE                             R7 R3
      107 LOADNIL                          R8
      108 LOADNIL                          R9
      109 FORGPREP                         R7
      110 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      112 GETTABLE                         R12 R4 R13
      113 NEWTABLE                         R13 0 0
      115 JUMPIFNOT                        R12 ; [+10]
      116 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      118 LOADNIL                          R15
      119 LOADNIL                          R16
      120 FORGPREP                         R14
      121 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      123 SETTABLE                         R18 R13 R19
      124 FORGLOOP                         R14 2 ; [-4]
      126 GETIMPORT                        R14 K13 [table.freeze]
      128 DUPTABLE                         R15 K30 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["className"], ["id"], ["nodeType"], ["name"], ["parentId"] = }]
      129 NEWTABLE                         R16 0 0
      131 SETTABLEKS                       R16 R15 K14 ["inputPinIds"]
      133 NEWTABLE                         R16 0 0
      135 SETTABLEKS                       R16 R15 K16 ["inputPinToConnectionMap"]
      137 NEWTABLE                         R16 0 0
      139 SETTABLEKS                       R16 R15 K17 ["inputLabelPinToConnectionMap"]
      141 SETTABLEKS                       R13 R15 K15 ["outputPinToConnectionMap"]
      143 GETUPVAL                         R16 4
      144 GETTABLEKS                       R16 R16 K31 ["PARAMETER_NODE_CLASSNAME"]
      146 SETTABLEKS                       R16 R15 K18 ["className"]
      148 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      150 SETTABLEKS                       R16 R15 K19 ["id"]
      152 GETTABLEKS                       R16 R11 K32 ["parameterType"]
      154 SETTABLEKS                       R16 R15 K6 ["nodeType"]
      156 GETTABLEKS                       R16 R11 K33 ["parameterData"]
      158 GETTABLEKS                       R16 R16 K34 ["parameterBindingName"]
      160 SETTABLEKS                       R16 R15 K22 ["name"]
      162 CALL                             R14 1 1
      163 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      165 SETTABLE                         R14 R6 R15
      166 FORGLOOP                         R7 2 ; [-57]
      168 GETIMPORT                        R7 K13 [table.freeze]
      170 DUPTABLE                         R8 K38 [{"graphInstanceId", "lookup", "output"}]
      171 JUMPIFNOT                        R1 ; [+6]
      172 GETUPVAL                         R9 5
      173 MOVE                             R11 R1
      174 NAMECALL                         R9 R9 K39 ["instanceToId"]
      176 CALL                             R9 2 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R9
      179 SETTABLEKS                       R9 R8 K35 ["graphInstanceId"]
      181 GETIMPORT                        R9 K13 [table.freeze]
      183 MOVE                             R10 R6
      184 CALL                             R9 1 1
      185 SETTABLEKS                       R9 R8 K36 ["lookup"]
      187 SETTABLEKS                       R5 R8 K37 ["output"]
      189 CALL                             R7 1 -1
      190 RETURN                           R7 -1

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K3 ["createComputed"]
       35 NEWCLOSURE                       R8 P2
       36 CAPTURE                          VAL R6
       37 CALL                             R7 1 1
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K4 ["observeRenderInfoMap"]
       41 MOVE                             R9 R0
       42 MOVE                             R10 R1
       43 MOVE                             R11 R7
       44 CALL                             R8 3 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K5 ["forEach"]
       48 MOVE                             R10 R7
       49 NEWCLOSURE                       R11 P3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K3 ["createComputed"]
       58 NEWCLOSURE                       R11 P4
       59 CAPTURE                          VAL R9
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K3 ["createComputed"]
       64 NEWCLOSURE                       R12 P5
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R10
       69 CALL                             R11 1 -1
       70 RETURN                           R11 -1

PROTO_82:
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

PROTO_83:
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

PROTO_84:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_85:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 MOVE                             R9 R4
        7 CALL                             R5 4 1
        8 JUMPIF                           R5 ; [+2]
        9 LOADB                            R6 0
       10 RETURN                           R6 1
       11 GETTABLEKS                       R8 R5 K1 ["wireId"]
       13 NAMECALL                         R6 R0 K2 ["idToInstance"]
       15 CALL                             R6 2 1
       16 JUMPIF                           R6 ; [+2]
       17 LOADB                            R7 0
       18 RETURN                           R7 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["removeNodeInputConnection"]
       22 MOVE                             R8 R0
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 MOVE                             R11 R3
       26 MOVE                             R12 R4
       27 CALL                             R7 5 0
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K4 ["removeOrderedInputPin"]
       31 MOVE                             R8 R0
       32 MOVE                             R9 R1
       33 MOVE                             R10 R2
       34 MOVE                             R11 R3
       35 CALL                             R7 4 0
       36 LOADNIL                          R7
       37 SETTABLEKS                       R7 R6 K5 ["Parent"]
       39 LOADB                            R7 1
       40 RETURN                           R7 1

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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
       23 JUMPIFNOT                        R5 ; [+86]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+83]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["isAParameterWire"]
       30 MOVE                             R8 R0
       31 MOVE                             R9 R2
       32 MOVE                             R10 R5
       33 CALL                             R7 3 1
       34 LOADK                            R10 K6 ["ObjectValue"]
       35 NAMECALL                         R8 R5 K7 ["IsA"]
       37 CALL                             R8 2 1
       38 JUMPIFNOT                        R8 ; [+23]
       39 JUMPIFNOT                        R7 ; [+22]
       40 GETTABLEKS                       R9 R5 K8 ["Value"]
       42 JUMPIFNOT                        R9 ; [+10]
       43 GETTABLEKS                       R9 R5 K8 ["Value"]
       45 LOADK                            R11 K6 ["ObjectValue"]
       46 NAMECALL                         R9 R9 K7 ["IsA"]
       48 CALL                             R9 2 1
       49 JUMPIFNOT                        R9 ; [+3]
       50 GETTABLEKS                       R8 R5 K8 ["Value"]
       52 JUMP                             ; [+1]
       53 MOVE                             R8 R6
       54 JUMPIFNOT                        R8 ; [+39]
       55 GETTABLEKS                       R11 R4 K9 ["inputNodePinId"]
       57 LOADNIL                          R12
       58 NAMECALL                         R9 R8 K10 ["SetAttribute"]
       60 CALL                             R9 3 0
       61 JUMP                             ; [+32]
       62 GETTABLEKS                       R9 R1 K11 ["lookup"]
       64 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
       66 GETTABLE                         R8 R9 R10
       67 JUMPIFNOT                        R8 ; [+26]
       68 GETTABLEKS                       R9 R8 K12 ["inputLabelPinToConnectionMap"]
       70 LOADNIL                          R10
       71 LOADNIL                          R11
       72 FORGPREP                         R9
       73 GETTABLEKS                       R15 R4 K9 ["inputNodePinId"]
       75 GETTABLE                         R14 R13 R15
       76 JUMPIFNOT                        R14 ; [+15]
       77 GETTABLEKS                       R17 R14 K1 ["wireId"]
       79 NAMECALL                         R15 R0 K2 ["idToInstance"]
       81 CALL                             R15 2 1
       82 JUMPIFNOT                        R15 ; [+9]
       83 GETTABLEKS                       R18 R14 K9 ["inputNodePinId"]
       85 LOADNIL                          R19
       86 NAMECALL                         R16 R5 K10 ["SetAttribute"]
       88 CALL                             R16 3 0
       89 LOADNIL                          R16
       90 SETTABLEKS                       R16 R15 K4 ["Parent"]
       92 FORGLOOP                         R9 2 ; [-20]
       94 LOADK                            R10 K6 ["ObjectValue"]
       95 NAMECALL                         R8 R5 K7 ["IsA"]
       97 CALL                             R8 2 1
       98 JUMPIFNOT                        R8 ; [+8]
       99 GETUPVAL                         R8 1
      100 CALL                             R8 0 1
      101 JUMPIFNOT                        R8 ; [+1]
      102 JUMPIF                           R7 ; [+4]
      103 LOADNIL                          R8
      104 SETTABLEKS                       R8 R5 K8 ["Value"]
      106 JUMP                             ; [+3]
      107 LOADNIL                          R8
      108 SETTABLEKS                       R8 R5 K4 ["Parent"]
      110 LOADB                            R7 1
      111 RETURN                           R7 1

PROTO_90:
        0 LOADK                            R1 K0 ["connectionHint_%*"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_91:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_92:
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

PROTO_93:
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
       74 JUMPIFNOT                        R8 ; [+38]
       75 LOADK                            R16 K5 ["Folder"]
       76 NAMECALL                         R14 R8 K2 ["IsA"]
       78 CALL                             R14 2 1
       79 JUMPIFNOT                        R14 ; [+33]
       80 LOADNIL                          R14
       81 JUMPIFEQKNIL                     R6 ; [+18]
       83 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
       85 CALL                             R15 1 1
       86 GETTABLE                         R16 R15 R6
       87 JUMPIFNOT                        R16 ; [+12]
       88 MOVE                             R19 R16
       89 NAMECALL                         R17 R7 K10 ["FindFirstChild"]
       91 CALL                             R17 2 1
       92 JUMPIFEQKNIL                     R17 ; [+7]
       94 LOADK                            R20 K11 ["ObjectValue"]
       95 NAMECALL                         R18 R17 K2 ["IsA"]
       97 CALL                             R18 2 1
       98 JUMPIFNOT                        R18 ; [+1]
       99 MOVE                             R14 R17
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R15 R15 K12 ["setParameterConnection"]
      103 MOVE                             R16 R0
      104 MOVE                             R17 R9
      105 MOVE                             R18 R7
      106 MOVE                             R19 R2
      107 MOVE                             R20 R3
      108 MOVE                             R21 R8
      109 MOVE                             R22 R13
      110 MOVE                             R23 R14
      111 CALL                             R15 8 -1
      112 RETURN                           R15 -1
      113 LOADNIL                          R14
      114 GETUPVAL                         R15 0
      115 GETTABLEKS                       R15 R15 K13 ["hasDynamicInputPins"]
      117 MOVE                             R16 R1
      118 MOVE                             R17 R2
      119 CALL                             R15 2 1
      120 JUMPIFNOT                        R15 ; [+136]
      121 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
      123 CALL                             R15 1 1
      124 JUMPIFNOT                        R10 ; [+7]
      125 GETIMPORT                        R16 K16 [table.find]
      127 MOVE                             R17 R15
      128 GETTABLEKS                       R18 R10 K17 ["inputNodePinId"]
      130 CALL                             R16 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R16
      133 JUMPIFNOT                        R16 ; [+5]
      134 GETIMPORT                        R17 K19 [table.remove]
      136 MOVE                             R18 R15
      137 MOVE                             R19 R16
      138 CALL                             R17 2 0
      139 JUMPIFNOT                        R12 ; [+7]
      140 GETIMPORT                        R17 K16 [table.find]
      142 MOVE                             R18 R15
      143 GETTABLEKS                       R19 R12 K17 ["inputNodePinId"]
      145 CALL                             R17 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R17
      148 JUMPIFNOT                        R17 ; [+5]
      149 GETIMPORT                        R18 K19 [table.remove]
      151 MOVE                             R19 R15
      152 MOVE                             R20 R17
      153 CALL                             R18 2 0
      154 JUMPIFNOT                        R8 ; [+100]
      155 JUMPIFNOT                        R4 ; [+99]
      156 GETUPVAL                         R19 1
      157 CALL                             R19 0 1
      158 JUMPIFNOT                        R19 ; [+36]
      159 GETUPVAL                         R19 2
      160 GETTABLEKS                       R19 R19 K20 ["NODE_CONFIGURATION_NAME"]
      162 LOADK                            R22 K21 ["Configuration"]
      163 NAMECALL                         R20 R8 K2 ["IsA"]
      165 CALL                             R20 2 1
      166 JUMPIFNOT                        R20 ; [+2]
      167 MOVE                             R18 R8
      168 JUMP                             ; [+17]
      169 MOVE                             R22 R19
      170 NAMECALL                         R20 R8 K10 ["FindFirstChild"]
      172 CALL                             R20 2 1
      173 JUMPIFEQKNIL                     R20 ; [+3]
      175 MOVE                             R18 R20
      176 JUMP                             ; [+9]
      177 GETIMPORT                        R20 K24 [Instance.new]
      179 LOADK                            R21 K21 ["Configuration"]
      180 CALL                             R20 1 1
      181 SETTABLEKS                       R19 R20 K25 ["Name"]
      183 SETTABLEKS                       R8 R20 K26 ["Parent"]
      185 MOVE                             R18 R20
      186 GETUPVAL                         R20 2
      187 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      189 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      191 NAMECALL                         R18 R18 K29 ["GetAttribute"]
      193 CALL                             R18 2 1
      194 JUMP                             ; [+8]
      195 GETUPVAL                         R20 2
      196 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      198 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      200 NAMECALL                         R18 R8 K29 ["GetAttribute"]
      202 CALL                             R18 2 1
      203 GETUPVAL                         R19 3
      204 CALL                             R19 0 1
      205 JUMPIFNOT                        R19 ; [+33]
      206 GETTABLEKS                       R21 R1 K30 ["lookup"]
      208 GETTABLE                         R20 R21 R4
      209 JUMPIFNOT                        R20 ; [+6]
      210 GETTABLEKS                       R20 R1 K30 ["lookup"]
      212 GETTABLE                         R19 R20 R4
      213 GETTABLEKS                       R19 R19 K31 ["name"]
      215 JUMPIF                           R19 ; [+2]
      216 GETTABLEKS                       R19 R8 K25 ["Name"]
      218 LOADK                            R22 K32 ["Node%d*$"]
      219 LOADK                            R23 K33 [""]
      220 NAMECALL                         R20 R19 K34 ["gsub"]
      222 CALL                             R20 3 1
      223 MOVE                             R19 R20
      224 GETUPVAL                         R20 0
      225 GETTABLEKS                       R20 R20 K35 ["getDynamicInputPinNameFromInputPinIds"]
      227 MOVE                             R21 R15
      228 JUMPIFNOT                        R18 ; [+6]
      229 FASTCALL1                        TOSTRING R18 ; [+3]
      230 MOVE                             R23 R18
      231 GETIMPORT                        R22 K37 [tostring]
      233 CALL                             R22 1 1
      234 JUMP                             ; [+1]
      235 MOVE                             R22 R19
      236 CALL                             R20 2 1
      237 MOVE                             R14 R20
      238 JUMP                             ; [+19]
      239 GETUPVAL                         R19 0
      240 GETTABLEKS                       R19 R19 K35 ["getDynamicInputPinNameFromInputPinIds"]
      242 MOVE                             R20 R15
      243 JUMPIFNOT                        R18 ; [+6]
      244 FASTCALL1                        TOSTRING R18 ; [+3]
      245 MOVE                             R22 R18
      246 GETIMPORT                        R21 K37 [tostring]
      248 CALL                             R21 1 1
      249 JUMP                             ; [+2]
      250 GETTABLEKS                       R21 R8 K25 ["Name"]
      252 CALL                             R19 2 1
      253 MOVE                             R14 R19
      254 JUMP                             ; [+3]
      255 MOVE                             R14 R3
      256 JUMP                             ; [+1]
      257 MOVE                             R14 R3
      258 JUMPIFEQ                         R14 R3 ; [+9]
      260 GETUPVAL                         R15 0
      261 GETTABLEKS                       R15 R15 K8 ["_findNodeInputBinding"]
      263 MOVE                             R16 R1
      264 MOVE                             R17 R2
      265 MOVE                             R18 R14
      266 CALL                             R15 3 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R15
      269 JUMPIFNOT                        R15 ; [+6]
      270 GETTABLEKS                       R18 R15 K7 ["wireId"]
      272 NAMECALL                         R16 R0 K0 ["idToInstance"]
      274 CALL                             R16 2 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R16
      277 JUMPIFEQKNIL                     R13 ; [+13]
      279 MOVE                             R20 R9
      280 NAMECALL                         R18 R13 K38 ["IsDescendantOf"]
      282 CALL                             R18 2 1
      283 JUMPIFNOT                        R18 ; [+7]
      284 LOADK                            R20 K11 ["ObjectValue"]
      285 NAMECALL                         R18 R13 K2 ["IsA"]
      287 CALL                             R18 2 1
      288 JUMPIFNOT                        R18 ; [+2]
      289 MOVE                             R17 R13
      290 JUMP                             ; [+32]
      291 JUMPIFEQKNIL                     R16 ; [+13]
      293 MOVE                             R20 R9
      294 NAMECALL                         R18 R16 K38 ["IsDescendantOf"]
      296 CALL                             R18 2 1
      297 JUMPIFNOT                        R18 ; [+7]
      298 LOADK                            R20 K11 ["ObjectValue"]
      299 NAMECALL                         R18 R16 K2 ["IsA"]
      301 CALL                             R18 2 1
      302 JUMPIFNOT                        R18 ; [+2]
      303 MOVE                             R17 R16
      304 JUMP                             ; [+18]
      305 JUMPIFEQKNIL                     R11 ; [+13]
      307 MOVE                             R20 R9
      308 NAMECALL                         R18 R11 K38 ["IsDescendantOf"]
      310 CALL                             R18 2 1
      311 JUMPIFNOT                        R18 ; [+7]
      312 LOADK                            R20 K11 ["ObjectValue"]
      313 NAMECALL                         R18 R11 K2 ["IsA"]
      315 CALL                             R18 2 1
      316 JUMPIFNOT                        R18 ; [+2]
      317 MOVE                             R17 R11
      318 JUMP                             ; [+4]
      319 GETIMPORT                        R17 K24 [Instance.new]
      321 LOADK                            R18 K11 ["ObjectValue"]
      322 CALL                             R17 1 1
      323 JUMPIFNOT                        R16 ; [+5]
      324 JUMPIFEQ                         R16 R17 ; [+4]
      326 LOADNIL                          R18
      327 SETTABLEKS                       R18 R16 K26 ["Parent"]
      329 JUMPIFNOT                        R11 ; [+5]
      330 JUMPIFEQ                         R11 R17 ; [+4]
      332 LOADNIL                          R18
      333 SETTABLEKS                       R18 R11 K26 ["Parent"]
      335 JUMPIFNOT                        R13 ; [+5]
      336 JUMPIFEQ                         R13 R17 ; [+4]
      338 LOADNIL                          R18
      339 SETTABLEKS                       R18 R13 K26 ["Parent"]
      341 NAMECALL                         R18 R7 K39 ["GetChildren"]
      343 CALL                             R18 1 3
      344 FORGPREP                         R18
      345 LOADK                            R25 K11 ["ObjectValue"]
      346 NAMECALL                         R23 R22 K2 ["IsA"]
      348 CALL                             R23 2 1
      349 JUMPIFNOT                        R23 ; [+9]
      350 GETTABLEKS                       R23 R22 K25 ["Name"]
      352 JUMPIFNOTEQ                      R23 R14 ; [+6]
      354 JUMPIFEQ                         R22 R17 ; [+4]
      356 LOADNIL                          R23
      357 SETTABLEKS                       R23 R22 K26 ["Parent"]
      359 FORGLOOP                         R18 2 ; [-15]
      361 NAMECALL                         R18 R7 K9 ["GetOrderedInputPinNames"]
      363 CALL                             R18 1 1
      364 JUMPIFEQ                         R14 R3 ; [+19]
      366 GETIMPORT                        R19 K16 [table.find]
      368 MOVE                             R20 R18
      369 MOVE                             R21 R3
      370 CALL                             R19 2 1
      371 GETIMPORT                        R20 K16 [table.find]
      373 MOVE                             R21 R18
      374 MOVE                             R22 R14
      375 CALL                             R20 2 1
      376 JUMPIFNOT                        R19 ; [+1]
      377 SETTABLE                         R14 R18 R19
      378 JUMPIFNOT                        R20 ; [+5]
      379 GETIMPORT                        R21 K19 [table.remove]
      381 MOVE                             R22 R18
      382 MOVE                             R23 R20
      383 CALL                             R21 2 0
      384 GETIMPORT                        R19 K16 [table.find]
      386 MOVE                             R20 R18
      387 MOVE                             R21 R14
      388 CALL                             R19 2 1
      389 JUMPIF                           R19 ; [+7]
      390 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      392 MOVE                             R20 R18
      393 MOVE                             R21 R14
      394 GETIMPORT                        R19 K41 [table.insert]
      396 CALL                             R19 2 0
      397 MOVE                             R21 R18
      398 NAMECALL                         R19 R7 K42 ["SetOrderedInputPinNames"]
      400 CALL                             R19 2 0
      401 SETTABLEKS                       R14 R17 K25 ["Name"]
      403 SETTABLEKS                       R8 R17 K43 ["Value"]
      405 SETTABLEKS                       R7 R17 K26 ["Parent"]
      407 GETUPVAL                         R19 4
      408 CALL                             R19 0 1
      409 JUMPIFNOT                        R19 ; [+14]
      410 GETUPVAL                         R19 5
      411 JUMPIFNOT                        R19 ; [+12]
      412 GETTABLEKS                       R19 R7 K44 ["NodeType"]
      414 GETIMPORT                        R20 K48 [Enum.AnimationNodeType.StateMachineNode]
      416 JUMPIFNOTEQ                      R19 R20 ; [+7]
      418 GETUPVAL                         R19 6
      419 GETTABLEKS                       R19 R19 K49 ["refreshTransitionNamesForState"]
      421 MOVE                             R20 R7
      422 MOVE                             R21 R17
      423 CALL                             R19 2 0
      424 MOVE                             R21 R17
      425 NAMECALL                         R19 R0 K50 ["instanceToId"]
      427 CALL                             R19 2 1
      428 MOVE                             R20 R14
      429 MOVE                             R21 R17
      430 RETURN                           R19 3

PROTO_94:
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

PROTO_95:
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

PROTO_96:
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

PROTO_97:
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

PROTO_98:
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

PROTO_99:
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

PROTO_100:
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

PROTO_101:
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

PROTO_102:
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

PROTO_103:
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

PROTO_104:
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

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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

PROTO_108:
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
       23 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+20]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K8 ["matchParameterBinding"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKNIL                  R6 ; [+8]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K9 ["matchExpressionBindingValue"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 1
       37 JUMPIFEQKNIL                     R6 ; [+6]
       39 MOVE                             R8 R4
       40 LOADNIL                          R9
       41 NAMECALL                         R6 R0 K10 ["SetAttribute"]
       43 CALL                             R6 3 0
       44 FORGLOOP                         R1 2 ; [-27]
       46 RETURN                           R0 0

PROTO_109:
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
       31 GETTABLEKS                       R5 R1 K14 ["Flags"]
       33 GETTABLEKS                       R5 R5 K15 ["FFlagAnimGraphUI_FixEnumPinDragging"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["Instances"]
       42 GETTABLEKS                       R6 R6 K17 ["InstanceRegistry"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K16 ["Instances"]
       51 GETTABLEKS                       R7 R7 K18 ["InstanceSelectionRegistry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K19 ["Parent"]
       58 GETTABLEKS                       R8 R8 K20 ["NodeGraphing"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K21 ["NodeViewTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K10 ["Util"]
       70 GETTABLEKS                       R10 R10 K22 ["Signals"]
       72 GETTABLEKS                       R10 R10 K23 ["Experimental"]
       74 GETTABLEKS                       R10 R10 K24 ["SignalExperimentalUtils"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K19 ["Parent"]
       81 GETTABLEKS                       R11 R11 K22 ["Signals"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R1 K10 ["Util"]
       88 GETTABLEKS                       R12 R12 K22 ["Signals"]
       90 GETTABLEKS                       R12 R12 K25 ["SignalsAnimationUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K10 ["Util"]
       97 GETTABLEKS                       R13 R13 K22 ["Signals"]
       99 GETTABLEKS                       R13 R13 K26 ["SignalsInstanceUtils"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R1 K27 ["Components"]
      106 GETTABLEKS                       R14 R14 K28 ["NodeView"]
      108 GETTABLEKS                       R14 R14 K29 ["StateMachine"]
      110 GETTABLEKS                       R14 R14 K30 ["StateMachineTransitionNaming"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R15 R1 K10 ["Util"]
      117 GETTABLEKS                       R15 R15 K22 ["Signals"]
      119 GETTABLEKS                       R15 R15 K31 ["TypedInstanceSignals"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K9 [require]
      124 GETTABLEKS                       R16 R1 K10 ["Util"]
      126 GETTABLEKS                       R16 R16 K32 ["getDeduplicatedName"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K9 [require]
      131 GETTABLEKS                       R17 R1 K14 ["Flags"]
      133 GETTABLEKS                       R17 R17 K33 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R18 R1 K14 ["Flags"]
      140 GETTABLEKS                       R18 R18 K34 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K9 [require]
      145 GETTABLEKS                       R19 R1 K14 ["Flags"]
      147 GETTABLEKS                       R19 R19 K35 ["getFFlagAnimGraphUIPasteWithoutConnections"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K9 [require]
      152 GETTABLEKS                       R20 R1 K14 ["Flags"]
      154 GETTABLEKS                       R20 R20 K36 ["getFFlagAnimGraphUIRemoveOrphanedParameterWires"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K9 [require]
      159 GETTABLEKS                       R21 R1 K14 ["Flags"]
      161 GETTABLEKS                       R21 R21 K37 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K9 [require]
      166 GETTABLEKS                       R22 R1 K14 ["Flags"]
      168 GETTABLEKS                       R22 R22 K38 ["getFFlagAnimGraphUI_RunTimeDebug"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R23 R1 K14 ["Flags"]
      175 GETTABLEKS                       R23 R23 K39 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K9 [require]
      180 GETTABLEKS                       R24 R1 K10 ["Util"]
      182 GETTABLEKS                       R24 R24 K40 ["parseAnimationNodeType"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K9 [require]
      187 GETTABLEKS                       R25 R1 K27 ["Components"]
      189 GETTABLEKS                       R25 R25 K28 ["NodeView"]
      191 GETTABLEKS                       R25 R25 K29 ["StateMachine"]
      193 GETTABLEKS                       R25 R25 K41 ["resolveStateMachineNodeDefinition"]
      195 CALL                             R24 1 1
      196 GETIMPORT                        R25 K9 [require]
      198 GETTABLEKS                       R26 R1 K27 ["Components"]
      200 GETTABLEKS                       R26 R26 K28 ["NodeView"]
      202 GETTABLEKS                       R26 R26 K29 ["StateMachine"]
      204 GETTABLEKS                       R26 R26 K42 ["supportsStateMachineNode"]
      206 CALL                             R25 1 1
      207 NEWTABLE                         R26 64 0
      209 DUPCLOSURE                       R27 K43 [PROTO_0]
      210 DUPCLOSURE                       R28 K44 [PROTO_2]
      211 CAPTURE                          VAL R12
      212 DUPCLOSURE                       R29 K45 [PROTO_3]
      213 CAPTURE                          VAL R3
      214 SETTABLEKS                       R29 R26 K46 ["getUniqueParameterName"]
      216 DUPCLOSURE                       R29 K47 [PROTO_4]
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R3
      220 SETTABLEKS                       R29 R26 K48 ["getOrCreateParameterInstance"]
      222 DUPCLOSURE                       R29 K49 [PROTO_5]
      223 CAPTURE                          VAL R26
      224 CAPTURE                          VAL R3
      225 SETTABLEKS                       R29 R26 K50 ["getOrCreateExpressionInstance"]
      227 DUPCLOSURE                       R29 K51 [PROTO_6]
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R3
      230 SETTABLEKS                       R29 R26 K52 ["createExistingParameterInstance"]
      232 DUPCLOSURE                       R29 K53 [PROTO_8]
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R4
      235 SETTABLEKS                       R29 R26 K54 ["getParameterType"]
      237 DUPCLOSURE                       R29 K55 [PROTO_9]
      238 SETTABLEKS                       R29 R26 K56 ["setParameterBindingName"]
      240 DUPCLOSURE                       R29 K57 [PROTO_10]
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R3
      244 SETTABLEKS                       R29 R26 K58 ["setExpressionBindingName"]
      246 DUPCLOSURE                       R29 K59 [PROTO_11]
      247 CAPTURE                          VAL R3
      248 SETTABLEKS                       R29 R26 K60 ["getNodePosition"]
      250 DUPCLOSURE                       R29 K61 [PROTO_12]
      251 CAPTURE                          VAL R3
      252 SETTABLEKS                       R29 R26 K62 ["predictOutputPosition"]
      254 DUPCLOSURE                       R29 K63 [PROTO_13]
      255 CAPTURE                          VAL R3
      256 SETTABLEKS                       R29 R26 K64 ["setNodePosition"]
      258 DUPCLOSURE                       R29 K65 [PROTO_14]
      259 CAPTURE                          VAL R3
      260 SETTABLEKS                       R29 R26 K66 ["setNodeSize"]
      262 DUPCLOSURE                       R29 K67 [PROTO_15]
      263 CAPTURE                          VAL R3
      264 SETTABLEKS                       R29 R26 K68 ["setNodeIsCollapsed"]
      266 DUPCLOSURE                       R29 K69 [PROTO_16]
      267 CAPTURE                          VAL R3
      268 SETTABLEKS                       R29 R26 K70 ["setDisplayName"]
      270 DUPCLOSURE                       R29 K71 [PROTO_17]
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R3
      273 SETTABLEKS                       R29 R26 K72 ["setZIndex"]
      275 DUPCLOSURE                       R29 K73 [PROTO_18]
      276 SETTABLEKS                       R29 R26 K74 ["getParameterInstanceName"]
      278 DUPCLOSURE                       R29 K75 [PROTO_19]
      279 SETTABLEKS                       R29 R26 K76 ["getExpressionInstanceName"]
      281 DUPCLOSURE                       R29 K77 [PROTO_20]
      282 CAPTURE                          VAL R26
      283 SETTABLEKS                       R29 R26 K78 ["getAllParameterInstancesFromName"]
      285 DUPCLOSURE                       R29 K79 [PROTO_22]
      286 CAPTURE                          VAL R14
      287 CAPTURE                          VAL R12
      288 CAPTURE                          VAL R9
      289 CAPTURE                          VAL R26
      290 SETTABLEKS                       R29 R26 K80 ["observeWireInfo"]
      292 DUPCLOSURE                       R29 K81 [PROTO_28]
      293 CAPTURE                          VAL R12
      294 CAPTURE                          VAL R26
      295 CAPTURE                          VAL R9
      296 SETTABLEKS                       R29 R26 K82 ["observeNodeConnectionMap"]
      298 DUPCLOSURE                       R29 K83 [PROTO_29]
      299 SETTABLEKS                       R29 R26 K84 ["matchParameterBinding"]
      301 DUPCLOSURE                       R29 K85 [PROTO_30]
      302 SETTABLEKS                       R29 R26 K86 ["matchExpressionBindingValue"]
      304 DUPCLOSURE                       R29 K87 [PROTO_31]
      305 SETTABLEKS                       R29 R26 K88 ["getExpressionBindingValue"]
      307 DUPCLOSURE                       R29 K89 [PROTO_32]
      308 SETTABLEKS                       R29 R26 K90 ["matchExpressionNameFromNode"]
      310 DUPCLOSURE                       R29 K91 [PROTO_33]
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R3
      313 SETTABLEKS                       R29 R26 K92 ["setNonPromotedExpressionNodeValue"]
      315 DUPCLOSURE                       R29 K93 [PROTO_36]
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R3
      318 CAPTURE                          VAL R9
      319 SETTABLEKS                       R29 R26 K94 ["observeParameterNodeInfo"]
      321 DUPCLOSURE                       R29 K95 [PROTO_46]
      322 CAPTURE                          VAL R26
      323 CAPTURE                          VAL R12
      324 CAPTURE                          VAL R9
      325 CAPTURE                          VAL R0
      326 CAPTURE                          VAL R14
      327 SETTABLEKS                       R29 R26 K96 ["observeNodeProps"]
      329 DUPCLOSURE                       R29 K97 [PROTO_48]
      330 CAPTURE                          VAL R14
      331 CAPTURE                          VAL R9
      332 SETTABLEKS                       R29 R26 K98 ["observeNodeType"]
      334 DUPCLOSURE                       R29 K99 [PROTO_51]
      335 CAPTURE                          VAL R22
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R28
      338 CAPTURE                          VAL R12
      339 CAPTURE                          VAL R14
      340 CAPTURE                          VAL R26
      341 CAPTURE                          VAL R9
      342 SETTABLEKS                       R29 R26 K100 ["observeNodeInfo"]
      344 DUPCLOSURE                       R29 K101 [PROTO_54]
      345 CAPTURE                          VAL R12
      346 CAPTURE                          VAL R26
      347 SETTABLEKS                       R29 R26 K102 ["observeNodeInfoLookupList"]
      349 DUPCLOSURE                       R29 K103 [PROTO_57]
      350 CAPTURE                          VAL R12
      351 CAPTURE                          VAL R9
      352 CAPTURE                          VAL R3
      353 CAPTURE                          VAL R26
      354 SETTABLEKS                       R29 R26 K104 ["observeParameterNodeInfoLookupList"]
      356 DUPCLOSURE                       R29 K105 [PROTO_60]
      357 CAPTURE                          VAL R12
      358 CAPTURE                          VAL R26
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R9
      361 CAPTURE                          VAL R14
      362 SETTABLEKS                       R29 R26 K106 ["observeNonPromotedExpressionNodes"]
      364 DUPCLOSURE                       R29 K107 [PROTO_63]
      365 CAPTURE                          VAL R12
      366 CAPTURE                          VAL R26
      367 CAPTURE                          VAL R9
      368 SETTABLEKS                       R29 R26 K108 ["observeRenderInfoMap"]
      370 DUPCLOSURE                       R29 K109 [PROTO_69]
      371 CAPTURE                          VAL R12
      372 CAPTURE                          VAL R28
      373 CAPTURE                          VAL R3
      374 CAPTURE                          VAL R14
      375 CAPTURE                          VAL R7
      376 CAPTURE                          VAL R9
      377 SETTABLEKS                       R29 R26 K110 ["observeRenderInfo"]
      379 DUPCLOSURE                       R29 K111 [PROTO_73]
      380 CAPTURE                          VAL R11
      381 CAPTURE                          VAL R9
      382 CAPTURE                          VAL R12
      383 SETTABLEKS                       R29 R26 K112 ["observeEditingAnimationGraphDefinition"]
      385 DUPCLOSURE                       R29 K113 [PROTO_81]
      386 CAPTURE                          VAL R12
      387 CAPTURE                          VAL R26
      388 CAPTURE                          VAL R9
      389 CAPTURE                          VAL R3
      390 SETTABLEKS                       R29 R26 K114 ["observeGraphState"]
      392 DUPCLOSURE                       R29 K115 [PROTO_82]
      393 SETTABLEKS                       R29 R26 K116 ["fitGraphRect"]
      395 DUPCLOSURE                       R29 K117 [PROTO_83]
      396 SETTABLEKS                       R29 R26 K118 ["_findNodeInputBinding"]
      398 DUPCLOSURE                       R29 K119 [PROTO_84]
      399 SETTABLEKS                       R29 R26 K120 ["_findNodeOutputBinding"]
      401 DUPCLOSURE                       R29 K121 [PROTO_85]
      402 CAPTURE                          VAL R26
      403 SETTABLEKS                       R29 R26 K122 ["deleteNodeInput"]
      405 DUPCLOSURE                       R29 K123 [PROTO_86]
      406 CAPTURE                          VAL R26
      407 SETTABLEKS                       R29 R26 K124 ["removeNodeInputConnection"]
      409 DUPCLOSURE                       R29 K125 [PROTO_87]
      410 SETTABLEKS                       R29 R26 K126 ["isAParameterWire"]
      412 DUPCLOSURE                       R29 K127 [PROTO_88]
      413 CAPTURE                          VAL R26
      414 SETTABLEKS                       R29 R26 K128 ["removeOrderedInputPin"]
      416 DUPCLOSURE                       R29 K129 [PROTO_89]
      417 CAPTURE                          VAL R26
      418 CAPTURE                          VAL R19
      419 SETTABLEKS                       R29 R26 K130 ["removeNodeOutputConnection"]
      421 DUPCLOSURE                       R29 K131 [PROTO_90]
      422 SETTABLEKS                       R29 R26 K132 ["getParameterWireName"]
      424 DUPCLOSURE                       R29 K133 [PROTO_91]
      425 SETTABLEKS                       R29 R26 K134 ["getParameterWireInputPinId"]
      427 DUPCLOSURE                       R29 K135 [PROTO_92]
      428 CAPTURE                          VAL R26
      429 CAPTURE                          VAL R16
      430 CAPTURE                          VAL R3
      431 SETTABLEKS                       R29 R26 K136 ["setParameterConnection"]
      433 DUPCLOSURE                       R29 K137 [PROTO_93]
      434 CAPTURE                          VAL R26
      435 CAPTURE                          VAL R22
      436 CAPTURE                          VAL R3
      437 CAPTURE                          VAL R17
      438 CAPTURE                          VAL R20
      439 CAPTURE                          VAL R25
      440 CAPTURE                          VAL R13
      441 SETTABLEKS                       R29 R26 K138 ["setNodeConnection"]
      443 DUPCLOSURE                       R29 K139 [PROTO_94]
      444 CAPTURE                          VAL R23
      445 CAPTURE                          VAL R26
      446 SETTABLEKS                       R29 R26 K140 ["hasDynamicInputPins"]
      448 DUPCLOSURE                       R29 K141 [PROTO_95]
      449 CAPTURE                          VAL R0
      450 CAPTURE                          VAL R24
      451 SETTABLEKS                       R29 R26 K142 ["nodeTypeHasDynamicInputPins"]
      453 DUPCLOSURE                       R29 K143 [PROTO_96]
      454 SETTABLEKS                       R29 R26 K144 ["reorderPins"]
      456 DUPCLOSURE                       R29 K145 [PROTO_97]
      457 CAPTURE                          VAL R26
      458 CAPTURE                          VAL R20
      459 CAPTURE                          VAL R25
      460 CAPTURE                          VAL R13
      461 SETTABLEKS                       R29 R26 K146 ["renameDynamicInputPin"]
      463 DUPCLOSURE                       R29 K147 [PROTO_98]
      464 CAPTURE                          VAL R26
      465 SETTABLEKS                       R29 R26 K148 ["getDynamicInputPinName"]
      467 DUPCLOSURE                       R29 K149 [PROTO_99]
      468 CAPTURE                          VAL R26
      469 SETTABLEKS                       R29 R26 K150 ["getDynamicInputPinNameFromInputNode"]
      471 DUPCLOSURE                       R29 K151 [PROTO_100]
      472 SETTABLEKS                       R29 R26 K152 ["getDynamicInputPinNameFromInputPinIds"]
      474 DUPCLOSURE                       R29 K153 [PROTO_101]
      475 CAPTURE                          VAL R2
      476 SETTABLEKS                       R29 R26 K154 ["getAnimSavesFolderForTarget"]
      478 DUPCLOSURE                       R29 K155 [PROTO_102]
      479 CAPTURE                          VAL R21
      480 CAPTURE                          VAL R26
      481 CAPTURE                          VAL R2
      482 SETTABLEKS                       R29 R26 K156 ["getOrCreateParentForNewGraph"]
      484 DUPCLOSURE                       R29 K157 [PROTO_103]
      485 CAPTURE                          VAL R26
      486 CAPTURE                          VAL R15
      487 SETTABLEKS                       R29 R26 K158 ["createNewAnimationGraph"]
      489 DUPCLOSURE                       R29 K159 [PROTO_104]
      490 CAPTURE                          VAL R0
      491 CAPTURE                          VAL R24
      492 CAPTURE                          VAL R26
      493 CAPTURE                          VAL R21
      494 SETTABLEKS                       R29 R26 K160 ["createNodeOfType"]
      496 DUPCLOSURE                       R29 K161 [PROTO_105]
      497 CAPTURE                          VAL R26
      498 SETTABLEKS                       R29 R26 K162 ["seedBlend1dInputs"]
      500 DUPCLOSURE                       R29 K163 [PROTO_106]
      501 CAPTURE                          VAL R26
      502 SETTABLEKS                       R29 R26 K164 ["duplicateNodes"]
      504 DUPCLOSURE                       R29 K165 [PROTO_107]
      505 DUPCLOSURE                       R30 K166 [PROTO_108]
      506 CAPTURE                          VAL R26
      507 DUPCLOSURE                       R31 K167 [PROTO_109]
      508 CAPTURE                          VAL R29
      509 CAPTURE                          VAL R18
      510 CAPTURE                          VAL R30
      511 CAPTURE                          VAL R26
      512 SETTABLEKS                       R31 R26 K168 ["pasteInstancesIntoGraph"]
      514 RETURN                           R26 1
