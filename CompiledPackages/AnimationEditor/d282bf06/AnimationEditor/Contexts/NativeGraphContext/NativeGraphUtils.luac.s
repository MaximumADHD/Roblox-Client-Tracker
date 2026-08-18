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
       16 JUMPIF                           R3 ; [+21]
       17 LOADN                            R7 0
       18 MOVE                             R10 R6
       19 NAMECALL                         R8 R1 K5 ["FindFirstChild"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+15]
       23 ADDK                             R7 R7 K6 [1]
       24 GETIMPORT                        R8 K8 [string.format]
       26 LOADK                            R9 K9 ["%s%d"]
       27 MOVE                             R10 R4
       28 MOVE                             R11 R7
       29 CALL                             R8 3 1
       30 MOVE                             R5 R8
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K4 ["getParameterInstanceName"]
       34 MOVE                             R9 R5
       35 CALL                             R8 1 1
       36 MOVE                             R6 R8
       37 JUMPBACK                         ; [-20]
       38 GETIMPORT                        R7 K12 [Instance.new]
       40 LOADK                            R8 K13 ["Folder"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R6 R7 K14 ["Name"]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       47 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       49 NAMECALL                         R8 R7 K17 ["GetAttribute"]
       51 CALL                             R8 2 1
       52 JUMPIF                           R8 ; [+19]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       56 GETTABLEKS                       R10 R10 K16 ["ParameterType"]
       58 GETTABLEKS                       R11 R2 K2 ["parameterType"]
       60 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       62 CALL                             R8 3 0
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K15 ["NODE_ATTRIBUTES"]
       66 GETTABLEKS                       R10 R10 K19 ["BindingName"]
       68 MOVE                             R11 R5
       69 NAMECALL                         R8 R7 K18 ["SetAttribute"]
       71 CALL                             R8 3 0
       72 SETTABLEKS                       R1 R7 K20 ["Parent"]
       74 MOVE                             R10 R7
       75 NAMECALL                         R8 R0 K21 ["instanceToId"]
       77 CALL                             R8 2 0
       78 RETURN                           R7 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 MOVE                             R5 R1
        1 LOADK                            R7 K0 ["param::%*"]
        2 MOVE                             R9 R2
        3 NAMECALL                         R7 R7 K1 ["format"]
        5 CALL                             R7 2 1
        6 MOVE                             R6 R7
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       30 GETTABLEKS                       R5 R5 K10 ["DisplayName"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 LOADK                            R2 K0 ["Parameter_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
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
       57 DUPTABLE                         R11 K15 [{["wireId"], ["inputNodeId"], ["inputNodePinId"], ["outputNodeId"], ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"]}]
       58 GETUPVAL                         R12 5
       59 SETTABLEKS                       R12 R11 K7 ["wireId"]
       61 SETTABLEKS                       R7 R11 K8 ["inputNodeId"]
       63 SETTABLEKS                       R10 R11 K9 ["inputNodePinId"]
       65 SETTABLEKS                       R6 R11 K10 ["outputNodeId"]
       67 GETUPVAL                         R12 6
       68 MOVE                             R13 R0
       69 CALL                             R12 1 1
       70 SETTABLEKS                       R12 R11 K13 ["properties"]
       72 SETTABLEKS                       R5 R11 K14 ["targetWireInputPinId"]
       74 RETURN                           R11 1

PROTO_18:
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
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 CALL                             R7 1 -1
       37 RETURN                           R7 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_34]
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

PROTO_37:
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

PROTO_38:
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
       27 DUPCLOSURE                       R8 K6 [PROTO_31]
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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
       83 DUPCLOSURE                       R8 K15 [PROTO_41]
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_44]
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_47]
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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
       21 DUPCLOSURE                       R7 K4 [PROTO_53]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_54]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_55]
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
       52 DUPCLOSURE                       R10 K8 [PROTO_56]
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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
       18 DUPCLOSURE                       R6 K4 [PROTO_60]
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

PROTO_63:
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

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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
       23 JUMPIFNOT                        R5 ; [+82]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+79]
       27 LOADK                            R9 K5 ["ObjectValue"]
       28 NAMECALL                         R7 R5 K6 ["IsA"]
       30 CALL                             R7 2 1
       31 JUMPIFNOT                        R7 ; [+30]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K7 ["isAParameterWire"]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R2
       37 MOVE                             R10 R5
       38 CALL                             R7 3 1
       39 JUMPIFNOT                        R7 ; [+22]
       40 GETTABLEKS                       R8 R5 K8 ["Value"]
       42 JUMPIFNOT                        R8 ; [+10]
       43 GETTABLEKS                       R8 R5 K8 ["Value"]
       45 LOADK                            R10 K5 ["ObjectValue"]
       46 NAMECALL                         R8 R8 K6 ["IsA"]
       48 CALL                             R8 2 1
       49 JUMPIFNOT                        R8 ; [+3]
       50 GETTABLEKS                       R7 R5 K8 ["Value"]
       52 JUMP                             ; [+1]
       53 MOVE                             R7 R6
       54 JUMPIFNOT                        R7 ; [+39]
       55 GETTABLEKS                       R10 R4 K9 ["inputNodePinId"]
       57 LOADNIL                          R11
       58 NAMECALL                         R8 R7 K10 ["SetAttribute"]
       60 CALL                             R8 3 0
       61 JUMP                             ; [+32]
       62 GETTABLEKS                       R8 R1 K11 ["lookup"]
       64 GETTABLEKS                       R9 R4 K3 ["inputNodeId"]
       66 GETTABLE                         R7 R8 R9
       67 JUMPIFNOT                        R7 ; [+26]
       68 GETTABLEKS                       R8 R7 K12 ["inputLabelPinToConnectionMap"]
       70 LOADNIL                          R9
       71 LOADNIL                          R10
       72 FORGPREP                         R8
       73 GETTABLEKS                       R14 R4 K9 ["inputNodePinId"]
       75 GETTABLE                         R13 R12 R14
       76 JUMPIFNOT                        R13 ; [+15]
       77 GETTABLEKS                       R16 R13 K1 ["wireId"]
       79 NAMECALL                         R14 R0 K2 ["idToInstance"]
       81 CALL                             R14 2 1
       82 JUMPIFNOT                        R14 ; [+9]
       83 GETTABLEKS                       R17 R13 K9 ["inputNodePinId"]
       85 LOADNIL                          R18
       86 NAMECALL                         R15 R5 K10 ["SetAttribute"]
       88 CALL                             R15 3 0
       89 LOADNIL                          R15
       90 SETTABLEKS                       R15 R14 K4 ["Parent"]
       92 FORGLOOP                         R8 2 ; [-20]
       94 LOADK                            R9 K5 ["ObjectValue"]
       95 NAMECALL                         R7 R5 K6 ["IsA"]
       97 CALL                             R7 2 1
       98 JUMPIFNOT                        R7 ; [+4]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R5 K8 ["Value"]
      102 JUMP                             ; [+3]
      103 LOADNIL                          R7
      104 SETTABLEKS                       R7 R5 K4 ["Parent"]
      106 LOADB                            R7 1
      107 RETURN                           R7 1

PROTO_79:
        0 LOADK                            R2 K0 ["connectionHint_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_80:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_81:
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
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K10 ["setParameterBindingName"]
       33 OR                               R10 R7 R2
       34 MOVE                             R11 R4
       35 GETUPVAL                         R14 1
       36 GETTABLEKS                       R14 R14 K11 ["NODE_ATTRIBUTES"]
       38 GETTABLEKS                       R14 R14 K12 ["BindingName"]
       40 NAMECALL                         R12 R5 K13 ["GetAttribute"]
       42 CALL                             R12 2 1
       43 CALL                             R9 3 0
       44 MOVE                             R11 R8
       45 NAMECALL                         R9 R0 K14 ["instanceToId"]
       47 CALL                             R9 2 1
       48 MOVE                             R10 R4
       49 RETURN                           R9 2

PROTO_82:
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
      407 MOVE                             R21 R17
      408 NAMECALL                         R19 R0 K44 ["instanceToId"]
      410 CALL                             R19 2 1
      411 MOVE                             R20 R14
      412 MOVE                             R21 R17
      413 RETURN                           R19 3

PROTO_83:
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

PROTO_84:
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

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["AnimationNodeDefinition"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+41]
       11 GETTABLEKS                       R8 R7 K2 ["NodeType"]
       13 GETIMPORT                        R9 K6 [Enum.AnimationNodeType.GraphOutput]
       15 JUMPIFNOTEQ                      R8 R9 ; [+8]
       17 GETUPVAL                         R8 0
       18 CALL                             R8 0 1
       19 JUMPIFNOT                        R8 ; [+32]
       20 GETUPVAL                         R8 1
       21 MOVE                             R9 R0
       22 CALL                             R8 1 1
       23 JUMPIF                           R8 ; [+28]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K7 ["setNodePosition"]
       27 MOVE                             R9 R7
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R11 R11 K8 ["getNodePosition"]
       31 MOVE                             R12 R7
       32 CALL                             R11 1 1
       33 JUMPIF                           R11 ; [+2]
       34 GETIMPORT                        R11 K11 [Vector2.zero]
       36 GETIMPORT                        R12 K13 [Vector2.new]
       38 LOADN                            R13 10
       39 LOADN                            R14 10
       40 CALL                             R12 2 1
       41 ADD                              R10 R11 R12
       42 CALL                             R8 2 0
       43 SETTABLEKS                       R0 R7 K14 ["Parent"]
       45 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       47 MOVE                             R9 R2
       48 MOVE                             R10 R7
       49 GETIMPORT                        R8 K17 [table.insert]
       51 CALL                             R8 2 0
       52 FORGLOOP                         R3 2 ; [-47]
       54 RETURN                           R2 1

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
      120 GETTABLEKS                       R16 R1 K10 ["Util"]
      122 GETTABLEKS                       R16 R16 K26 ["Signals"]
      124 GETTABLEKS                       R16 R16 K31 ["TypedInstanceSignals"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R1 K10 ["Util"]
      131 GETTABLEKS                       R17 R17 K32 ["getDeduplicatedName"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R1 K15 ["Flags"]
      138 GETTABLEKS                       R18 R18 K33 ["getFFlagAnimGraphLockOutput"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R1 K15 ["Flags"]
      145 GETTABLEKS                       R19 R19 K34 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R1 K15 ["Flags"]
      152 GETTABLEKS                       R20 R20 K35 ["getFFlagAnimGraphUI_RunTimeDebug"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K9 [require]
      157 GETTABLEKS                       R21 R1 K15 ["Flags"]
      159 GETTABLEKS                       R21 R21 K36 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R1 K10 ["Util"]
      166 GETTABLEKS                       R22 R22 K37 ["parseAnimationNodeType"]
      168 CALL                             R21 1 1
      169 NEWTABLE                         R22 64 0
      171 DUPCLOSURE                       R23 K38 [PROTO_0]
      172 DUPCLOSURE                       R24 K39 [PROTO_2]
      173 CAPTURE                          VAL R14
      174 DUPCLOSURE                       R25 K40 [PROTO_3]
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R4
      177 SETTABLEKS                       R25 R22 K41 ["getOrCreateParameterInstance"]
      179 DUPCLOSURE                       R25 K42 [PROTO_4]
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R25 R22 K43 ["createExistingParameterInstance"]
      184 DUPCLOSURE                       R25 K44 [PROTO_6]
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R5
      187 SETTABLEKS                       R25 R22 K45 ["getParameterType"]
      189 DUPCLOSURE                       R25 K46 [PROTO_7]
      190 SETTABLEKS                       R25 R22 K47 ["setParameterBindingName"]
      192 DUPCLOSURE                       R25 K48 [PROTO_8]
      193 CAPTURE                          VAL R4
      194 SETTABLEKS                       R25 R22 K49 ["getNodePosition"]
      196 DUPCLOSURE                       R25 K50 [PROTO_9]
      197 CAPTURE                          VAL R4
      198 SETTABLEKS                       R25 R22 K51 ["predictOutputPosition"]
      200 DUPCLOSURE                       R25 K52 [PROTO_10]
      201 CAPTURE                          VAL R4
      202 SETTABLEKS                       R25 R22 K53 ["setNodePosition"]
      204 DUPCLOSURE                       R25 K54 [PROTO_11]
      205 CAPTURE                          VAL R4
      206 SETTABLEKS                       R25 R22 K55 ["setNodeSize"]
      208 DUPCLOSURE                       R25 K56 [PROTO_12]
      209 CAPTURE                          VAL R4
      210 SETTABLEKS                       R25 R22 K57 ["setNodeIsCollapsed"]
      212 DUPCLOSURE                       R25 K58 [PROTO_13]
      213 CAPTURE                          VAL R4
      214 SETTABLEKS                       R25 R22 K59 ["setDisplayName"]
      216 DUPCLOSURE                       R25 K60 [PROTO_14]
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R4
      219 SETTABLEKS                       R25 R22 K61 ["setZIndex"]
      221 DUPCLOSURE                       R25 K62 [PROTO_15]
      222 SETTABLEKS                       R25 R22 K63 ["getParameterInstanceName"]
      224 DUPCLOSURE                       R25 K64 [PROTO_16]
      225 CAPTURE                          VAL R22
      226 SETTABLEKS                       R25 R22 K65 ["getAllParameterInstancesFromName"]
      228 DUPCLOSURE                       R25 K66 [PROTO_18]
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R22
      233 SETTABLEKS                       R25 R22 K67 ["observeWireInfo"]
      235 DUPCLOSURE                       R25 K68 [PROTO_24]
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R11
      239 SETTABLEKS                       R25 R22 K69 ["observeNodeConnectionMap"]
      241 DUPCLOSURE                       R25 K70 [PROTO_25]
      242 SETTABLEKS                       R25 R22 K71 ["matchParameterBinding"]
      244 DUPCLOSURE                       R25 K72 [PROTO_28]
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R11
      248 SETTABLEKS                       R25 R22 K73 ["observeParameterNodeInfo"]
      250 DUPCLOSURE                       R25 K74 [PROTO_38]
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R0
      255 CAPTURE                          VAL R15
      256 SETTABLEKS                       R25 R22 K75 ["observeNodeProps"]
      258 DUPCLOSURE                       R25 K76 [PROTO_40]
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R11
      261 SETTABLEKS                       R25 R22 K77 ["observeNodeType"]
      263 DUPCLOSURE                       R25 K78 [PROTO_43]
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R14
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R11
      271 SETTABLEKS                       R25 R22 K79 ["observeNodeInfo"]
      273 DUPCLOSURE                       R25 K80 [PROTO_46]
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R22
      276 SETTABLEKS                       R25 R22 K81 ["observeNodeInfoLookupList"]
      278 DUPCLOSURE                       R25 K82 [PROTO_49]
      279 CAPTURE                          VAL R14
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R22
      283 SETTABLEKS                       R25 R22 K83 ["observeParameterNodeInfoLookupList"]
      285 DUPCLOSURE                       R25 K84 [PROTO_52]
      286 CAPTURE                          VAL R14
      287 CAPTURE                          VAL R22
      288 CAPTURE                          VAL R11
      289 SETTABLEKS                       R25 R22 K85 ["observeRenderInfoMap"]
      291 DUPCLOSURE                       R25 K86 [PROTO_58]
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R24
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R11
      298 SETTABLEKS                       R25 R22 K87 ["observeRenderInfo"]
      300 DUPCLOSURE                       R25 K88 [PROTO_62]
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R11
      303 CAPTURE                          VAL R14
      304 SETTABLEKS                       R25 R22 K89 ["observeEditingAnimationGraphDefinition"]
      306 DUPCLOSURE                       R25 K90 [PROTO_70]
      307 CAPTURE                          VAL R14
      308 CAPTURE                          VAL R22
      309 CAPTURE                          VAL R11
      310 CAPTURE                          VAL R4
      311 SETTABLEKS                       R25 R22 K91 ["observeGraphState"]
      313 DUPCLOSURE                       R25 K92 [PROTO_71]
      314 SETTABLEKS                       R25 R22 K93 ["fitGraphRect"]
      316 DUPCLOSURE                       R25 K94 [PROTO_72]
      317 SETTABLEKS                       R25 R22 K95 ["_findNodeInputBinding"]
      319 DUPCLOSURE                       R25 K96 [PROTO_73]
      320 SETTABLEKS                       R25 R22 K97 ["_findNodeOutputBinding"]
      322 DUPCLOSURE                       R25 K98 [PROTO_74]
      323 CAPTURE                          VAL R22
      324 SETTABLEKS                       R25 R22 K99 ["deleteNodeInput"]
      326 DUPCLOSURE                       R25 K100 [PROTO_75]
      327 CAPTURE                          VAL R22
      328 SETTABLEKS                       R25 R22 K101 ["removeNodeInputConnection"]
      330 DUPCLOSURE                       R25 K102 [PROTO_76]
      331 SETTABLEKS                       R25 R22 K103 ["isAParameterWire"]
      333 DUPCLOSURE                       R25 K104 [PROTO_77]
      334 CAPTURE                          VAL R22
      335 SETTABLEKS                       R25 R22 K105 ["removeOrderedInputPin"]
      337 DUPCLOSURE                       R25 K106 [PROTO_78]
      338 CAPTURE                          VAL R22
      339 SETTABLEKS                       R25 R22 K107 ["removeNodeOutputConnection"]
      341 DUPCLOSURE                       R25 K108 [PROTO_79]
      342 SETTABLEKS                       R25 R22 K109 ["getParameterWireName"]
      344 DUPCLOSURE                       R25 K110 [PROTO_80]
      345 SETTABLEKS                       R25 R22 K111 ["getParameterWireInputPinId"]
      347 DUPCLOSURE                       R25 K112 [PROTO_81]
      348 CAPTURE                          VAL R22
      349 CAPTURE                          VAL R4
      350 SETTABLEKS                       R25 R22 K113 ["setParameterConnection"]
      352 DUPCLOSURE                       R25 K114 [PROTO_82]
      353 CAPTURE                          VAL R22
      354 CAPTURE                          VAL R20
      355 CAPTURE                          VAL R4
      356 CAPTURE                          VAL R18
      357 SETTABLEKS                       R25 R22 K115 ["setNodeConnection"]
      359 DUPCLOSURE                       R25 K116 [PROTO_83]
      360 CAPTURE                          VAL R21
      361 CAPTURE                          VAL R22
      362 SETTABLEKS                       R25 R22 K117 ["hasDynamicInputPins"]
      364 DUPCLOSURE                       R25 K118 [PROTO_84]
      365 CAPTURE                          VAL R2
      366 SETTABLEKS                       R25 R22 K119 ["nodeTypeHasDynamicInputPins"]
      368 DUPCLOSURE                       R25 K120 [PROTO_85]
      369 SETTABLEKS                       R25 R22 K121 ["reorderPins"]
      371 DUPCLOSURE                       R25 K122 [PROTO_86]
      372 CAPTURE                          VAL R22
      373 SETTABLEKS                       R25 R22 K123 ["renameDynamicInputPin"]
      375 DUPCLOSURE                       R25 K124 [PROTO_87]
      376 CAPTURE                          VAL R22
      377 SETTABLEKS                       R25 R22 K125 ["getDynamicInputPinName"]
      379 DUPCLOSURE                       R25 K126 [PROTO_88]
      380 CAPTURE                          VAL R22
      381 SETTABLEKS                       R25 R22 K127 ["getDynamicInputPinNameFromInputNode"]
      383 DUPCLOSURE                       R25 K128 [PROTO_89]
      384 SETTABLEKS                       R25 R22 K129 ["getDynamicInputPinNameFromInputPinIds"]
      386 DUPCLOSURE                       R25 K130 [PROTO_90]
      387 CAPTURE                          VAL R3
      388 SETTABLEKS                       R25 R22 K131 ["getAnimSavesFolderForTarget"]
      390 DUPCLOSURE                       R25 K132 [PROTO_91]
      391 CAPTURE                          VAL R19
      392 CAPTURE                          VAL R22
      393 CAPTURE                          VAL R3
      394 SETTABLEKS                       R25 R22 K133 ["getOrCreateParentForNewGraph"]
      396 DUPCLOSURE                       R25 K134 [PROTO_92]
      397 CAPTURE                          VAL R22
      398 CAPTURE                          VAL R16
      399 CAPTURE                          VAL R8
      400 SETTABLEKS                       R25 R22 K135 ["createNewAnimationGraph"]
      402 DUPCLOSURE                       R25 K136 [PROTO_93]
      403 CAPTURE                          VAL R8
      404 CAPTURE                          VAL R0
      405 CAPTURE                          VAL R22
      406 CAPTURE                          VAL R19
      407 SETTABLEKS                       R25 R22 K137 ["createNodeOfType"]
      409 DUPCLOSURE                       R25 K138 [PROTO_94]
      410 CAPTURE                          VAL R22
      411 SETTABLEKS                       R25 R22 K139 ["duplicateNodes"]
      413 DUPCLOSURE                       R25 K140 [PROTO_95]
      414 DUPCLOSURE                       R26 K141 [PROTO_96]
      415 CAPTURE                          VAL R17
      416 CAPTURE                          VAL R25
      417 CAPTURE                          VAL R22
      418 SETTABLEKS                       R26 R22 K142 ["pasteInstancesIntoGraph"]
      420 RETURN                           R22 1
