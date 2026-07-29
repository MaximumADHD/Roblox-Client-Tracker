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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["findParameterInProperties should only be used when getFFlagAnimGraphUI_FixInputPanelParameters is true"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 MOVE                             R1 R0
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K3 ["Name"]
       16 GETUPVAL                         R7 1
       17 JUMPIFNOTEQ                      R6 R7 ; [+14]
       19 GETTABLEKS                       R7 R5 K4 ["Type"]
       21 JUMPIFNOT                        R7 ; [+3]
       22 GETTABLEKS                       R6 R5 K4 ["Type"]
       24 JUMPIF                           R6 ; [+6]
       25 GETTABLEKS                       R7 R5 K5 ["Value"]
       27 FASTCALL1                        TYPE R7 ; [+2]
       28 GETIMPORT                        R6 K7 [type]
       30 CALL                             R6 1 1
       31 RETURN                           R6 1
       32 FORGLOOP                         R1 2 ; [-19]
       34 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K0 ["GetAnimationNodeDefinition"]
        5 CALL                             R3 2 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 JUMPIF                           R5 ; [+14]
       12 GETTABLEKS                       R5 R3 K1 ["Properties"]
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K2 ["Name"]
       19 JUMPIFNOTEQ                      R10 R1 ; [+4]
       21 GETTABLEKS                       R2 R9 K3 ["Type"]
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R5 2 ; [-8]
       26 GETUPVAL                         R5 1
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+19]
       29 MOVE                             R5 R4
       30 GETTABLEKS                       R6 R3 K1 ["Properties"]
       32 CALL                             R5 1 1
       33 MOVE                             R2 R5
       34 JUMPIF                           R2 ; [+13]
       35 GETTABLEKS                       R5 R3 K4 ["Inputs"]
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 MOVE                             R10 R4
       41 GETTABLEKS                       R11 R9 K1 ["Properties"]
       43 CALL                             R10 1 1
       44 MOVE                             R2 R10
       45 JUMPIF                           R2 ; [+2]
       46 FORGLOOP                         R5 2 ; [-7]
       48 JUMPIF                           R2 ; [+2]
       49 LOADNIL                          R5
       50 RETURN                           R5 1
       51 GETIMPORT                        R5 K7 [string.find]
       53 MOVE                             R6 R2
       54 LOADK                            R7 K8 ["Enum"]
       55 CALL                             R5 2 1
       56 JUMPIFNOT                        R5 ; [+5]
       57 GETUPVAL                         R5 2
       58 JUMPIFNOT                        R5 ; [+2]
       59 MOVE                             R2 R1
       60 JUMP                             ; [+1]
       61 LOADK                            R2 K8 ["Enum"]
       62 GETUPVAL                         R5 1
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+3]
       65 JUMPIFNOTEQKS                    R2 K9 ["number"] ; [+2]
       67 LOADK                            R2 K10 ["Number"]
       68 RETURN                           R2 1

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
       11 GETUPVAL                         R6 2
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+13]
       14 JUMPIFNOT                        R1 ; [+12]
       15 JUMPIFNOT                        R2 ; [+11]
       16 LOADK                            R8 K2 ["ObjectValue"]
       17 NAMECALL                         R6 R2 K1 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+6]
       21 GETTABLEKS                       R3 R2 K3 ["Parent"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R5 R2 K4 ["Name"]
       26 JUMP                             ; [+8]
       27 JUMPIFNOT                        R1 ; [+2]
       28 MOVE                             R3 R2
       29 JUMP                             ; [+1]
       30 GETUPVAL                         R3 0
       31 JUMPIFNOT                        R1 ; [+2]
       32 GETUPVAL                         R4 0
       33 JUMP                             ; [+1]
       34 MOVE                             R4 R2
       35 JUMPIFNOT                        R4 ; [+6]
       36 GETUPVAL                         R6 3
       37 MOVE                             R8 R4
       38 NAMECALL                         R6 R6 K5 ["instanceToId"]
       40 CALL                             R6 2 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 JUMPIFNOT                        R3 ; [+6]
       44 GETUPVAL                         R7 3
       45 MOVE                             R9 R3
       46 NAMECALL                         R7 R7 K5 ["instanceToId"]
       48 CALL                             R7 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R7
       51 GETUPVAL                         R8 4
       52 MOVE                             R9 R0
       53 CALL                             R8 1 1
       54 GETUPVAL                         R9 5
       55 GETTABLEKS                       R9 R9 K6 ["getParameterWireInputPinId"]
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 OR                               R10 R9 R8
       60 DUPTABLE                         R11 K15 [{["wireId"], ["inputNodeId"], ["inputNodePinId"], ["outputNodeId"], ["outputNodePinId"] = "Output", ["properties"], ["targetWireInputPinId"]}]
       61 GETUPVAL                         R12 6
       62 SETTABLEKS                       R12 R11 K7 ["wireId"]
       64 SETTABLEKS                       R7 R11 K8 ["inputNodeId"]
       66 SETTABLEKS                       R10 R11 K9 ["inputNodePinId"]
       68 SETTABLEKS                       R6 R11 K10 ["outputNodeId"]
       70 GETUPVAL                         R12 7
       71 MOVE                             R13 R0
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K13 ["properties"]
       75 SETTABLEKS                       R5 R11 K14 ["targetWireInputPinId"]
       77 RETURN                           R11 1

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
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

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
       10 JUMPIFEQKNIL                     R11 ; [+167]
       12 GETUPVAL                         R11 0
       13 CALL                             R11 0 1
       14 JUMPIF                           R11 ; [+4]
       15 GETTABLEKS                       R11 R10 K1 ["outputNodeId"]
       17 JUMPIFEQKNIL                     R11 ; [+160]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R12 R10 K0 ["inputNodeId"]
       22 CALL                             R11 1 1
       23 GETUPVAL                         R13 0
       24 CALL                             R13 0 1
       25 JUMPIFNOT                        R13 ; [+3]
       26 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       28 JUMPIFNOT                        R13 ; [+5]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       32 CALL                             R12 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R12
       35 GETUPVAL                         R13 2
       36 CALL                             R13 0 1
       37 JUMPIFNOT                        R13 ; [+69]
       38 DUPTABLE                         R13 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       39 GETTABLEKS                       R14 R10 K2 ["wireId"]
       41 SETTABLEKS                       R14 R13 K2 ["wireId"]
       43 GETTABLEKS                       R14 R10 K0 ["inputNodeId"]
       45 SETTABLEKS                       R14 R13 K0 ["inputNodeId"]
       47 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       49 SETTABLEKS                       R14 R13 K3 ["inputNodePinId"]
       51 GETTABLEKS                       R14 R10 K1 ["outputNodeId"]
       53 SETTABLEKS                       R14 R13 K1 ["outputNodeId"]
       55 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
       57 SETTABLEKS                       R14 R13 K4 ["outputNodePinId"]
       59 GETTABLEKS                       R14 R10 K5 ["properties"]
       61 SETTABLEKS                       R14 R13 K5 ["properties"]
       63 GETTABLEKS                       R14 R10 K7 ["targetWireInputPinId"]
       65 JUMPIFEQKNIL                     R14 ; [+19]
       67 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       69 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       71 GETTABLE                         R15 R16 R14
       72 JUMPIF                           R15 ; [+5]
       73 GETTABLEKS                       R15 R11 K8 ["inputLabelNodesByPinName"]
       75 NEWTABLE                         R16 0 0
       77 SETTABLE                         R16 R15 R14
       78 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       80 GETTABLE                         R15 R16 R14
       81 GETTABLEKS                       R16 R10 K7 ["targetWireInputPinId"]
       83 SETTABLE                         R13 R15 R16
       84 JUMP                             ; [+5]
       85 GETTABLEKS                       R14 R11 K9 ["inputNodesByPinName"]
       87 GETTABLEKS                       R15 R10 K3 ["inputNodePinId"]
       89 SETTABLE                         R13 R14 R15
       90 GETUPVAL                         R14 0
       91 CALL                             R14 0 1
       92 JUMPIFNOT                        R14 ; [+1]
       93 JUMPIFNOT                        R12 ; [+84]
       94 FASTCALL2K                       ASSERT R12 K10 ; [+5]
       96 MOVE                             R15 R12
       97 LOADK                            R16 K10 ["Output node connection info should exist if not using default Blend1D inputs"]
       98 GETIMPORT                        R14 K12 [assert]
      100 CALL                             R14 2 0
      101 GETTABLEKS                       R14 R12 K13 ["outputNodesByPinName"]
      103 GETTABLEKS                       R15 R10 K4 ["outputNodePinId"]
      105 SETTABLE                         R13 R14 R15
      106 JUMP                             ; [+71]
      107 GETTABLEKS                       R13 R11 K9 ["inputNodesByPinName"]
      109 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
      111 DUPTABLE                         R15 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
      112 GETTABLEKS                       R16 R10 K2 ["wireId"]
      114 SETTABLEKS                       R16 R15 K2 ["wireId"]
      116 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
      118 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
      120 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
      122 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
      124 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
      126 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
      128 GETTABLEKS                       R16 R10 K4 ["outputNodePinId"]
      130 SETTABLEKS                       R16 R15 K4 ["outputNodePinId"]
      132 GETTABLEKS                       R16 R10 K5 ["properties"]
      134 SETTABLEKS                       R16 R15 K5 ["properties"]
      136 SETTABLE                         R15 R13 R14
      137 GETUPVAL                         R13 0
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+1]
      140 JUMPIFNOT                        R12 ; [+37]
      141 FASTCALL2K                       ASSERT R12 K10 ; [+5]
      143 MOVE                             R14 R12
      144 LOADK                            R15 K10 ["Output node connection info should exist if not using default Blend1D inputs"]
      145 GETIMPORT                        R13 K12 [assert]
      147 CALL                             R13 2 0
      148 GETTABLEKS                       R13 R12 K13 ["outputNodesByPinName"]
      150 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
      152 DUPTABLE                         R15 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
      153 GETTABLEKS                       R16 R10 K2 ["wireId"]
      155 SETTABLEKS                       R16 R15 K2 ["wireId"]
      157 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
      159 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
      161 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
      163 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
      165 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
      167 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
      169 GETTABLEKS                       R16 R10 K4 ["outputNodePinId"]
      171 SETTABLEKS                       R16 R15 K4 ["outputNodePinId"]
      173 GETTABLEKS                       R16 R10 K5 ["properties"]
      175 SETTABLEKS                       R16 R15 K5 ["properties"]
      177 SETTABLE                         R15 R13 R14
      178 FORGLOOP                         R6 2 ; [-171]
      180 FORGLOOP                         R1 2 ; [-177]
      182 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U2
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
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CALL                             R7 1 -1
       37 RETURN                           R7 -1

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
       28 JUMPIFNOT                        R12 ; [+31]
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
       49 GETUPVAL                         R16 4
       50 CALL                             R16 0 1
       51 JUMPIFNOT                        R16 ; [+8]
       52 GETTABLEKS                       R16 R12 K5 ["inputLabelNodesByPinName"]
       54 LOADNIL                          R17
       55 LOADNIL                          R18
       56 FORGPREP                         R16
       57 SETTABLE                         R20 R15 R19
       58 FORGLOOP                         R16 2 ; [-2]
       60 GETTABLEKS                       R16 R11 K6 ["nodeType"]
       62 GETIMPORT                        R17 K10 [Enum.AnimationNodeType.GraphOutput]
       64 JUMPIFNOTEQ                      R16 R17 ; [+3]
       66 GETTABLEKS                       R5 R11 K0 ["nodeId"]
       68 GETIMPORT                        R16 K13 [table.freeze]
       70 DUPTABLE                         R17 K25 [{["inputPinIds"], ["outputPinToConnectionMap"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["className"], ["id"], ["index"] = , ["name"], ["nodeType"], ["props"] = , ["state"] = }]
       71 GETTABLEKS                       R18 R11 K14 ["inputPinIds"]
       73 SETTABLEKS                       R18 R17 K14 ["inputPinIds"]
       75 SETTABLEKS                       R14 R17 K15 ["outputPinToConnectionMap"]
       77 SETTABLEKS                       R13 R17 K16 ["inputPinToConnectionMap"]
       79 SETTABLEKS                       R15 R17 K17 ["inputLabelPinToConnectionMap"]
       81 GETTABLEKS                       R18 R11 K6 ["nodeType"]
       83 GETTABLEKS                       R18 R18 K26 ["Name"]
       85 SETTABLEKS                       R18 R17 K18 ["className"]
       87 GETTABLEKS                       R18 R11 K0 ["nodeId"]
       89 SETTABLEKS                       R18 R17 K19 ["id"]
       91 GETTABLEKS                       R18 R11 K22 ["name"]
       93 SETTABLEKS                       R18 R17 K22 ["name"]
       95 GETTABLEKS                       R19 R11 K6 ["nodeType"]
       97 FASTCALL1                        TOSTRING R19 ; [+2]
       98 GETIMPORT                        R18 K28 [tostring]
      100 CALL                             R18 1 1
      101 SETTABLEKS                       R18 R17 K6 ["nodeType"]
      103 CALL                             R16 1 1
      104 GETTABLEKS                       R17 R11 K0 ["nodeId"]
      106 SETTABLE                         R16 R6 R17
      107 FORGLOOP                         R7 2 ; [-89]
      109 MOVE                             R7 R3
      110 LOADNIL                          R8
      111 LOADNIL                          R9
      112 FORGPREP                         R7
      113 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      115 GETTABLE                         R12 R4 R13
      116 NEWTABLE                         R13 0 0
      118 JUMPIFNOT                        R12 ; [+10]
      119 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      121 LOADNIL                          R15
      122 LOADNIL                          R16
      123 FORGPREP                         R14
      124 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      126 SETTABLE                         R18 R13 R19
      127 FORGLOOP                         R14 2 ; [-4]
      129 GETIMPORT                        R14 K13 [table.freeze]
      131 DUPTABLE                         R15 K30 [{["inputPinIds"], ["inputPinToConnectionMap"], ["inputLabelPinToConnectionMap"], ["outputPinToConnectionMap"], ["className"], ["id"], ["nodeType"], ["name"], ["parentId"] = }]
      132 NEWTABLE                         R16 0 0
      134 SETTABLEKS                       R16 R15 K14 ["inputPinIds"]
      136 NEWTABLE                         R16 0 0
      138 SETTABLEKS                       R16 R15 K16 ["inputPinToConnectionMap"]
      140 NEWTABLE                         R16 0 0
      142 SETTABLEKS                       R16 R15 K17 ["inputLabelPinToConnectionMap"]
      144 SETTABLEKS                       R13 R15 K15 ["outputPinToConnectionMap"]
      146 GETUPVAL                         R16 5
      147 GETTABLEKS                       R16 R16 K31 ["PARAMETER_NODE_CLASSNAME"]
      149 SETTABLEKS                       R16 R15 K18 ["className"]
      151 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      153 SETTABLEKS                       R16 R15 K19 ["id"]
      155 GETTABLEKS                       R16 R11 K32 ["parameterType"]
      157 SETTABLEKS                       R16 R15 K6 ["nodeType"]
      159 GETTABLEKS                       R16 R11 K33 ["parameterData"]
      161 GETTABLEKS                       R16 R16 K34 ["parameterBindingName"]
      163 SETTABLEKS                       R16 R15 K22 ["name"]
      165 CALL                             R14 1 1
      166 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      168 SETTABLE                         R14 R6 R15
      169 FORGLOOP                         R7 2 ; [-57]
      171 GETIMPORT                        R7 K13 [table.freeze]
      173 DUPTABLE                         R8 K38 [{"graphInstanceId", "lookup", "output"}]
      174 JUMPIFNOT                        R1 ; [+6]
      175 GETUPVAL                         R9 6
      176 MOVE                             R11 R1
      177 NAMECALL                         R9 R9 K39 ["instanceToId"]
      179 CALL                             R9 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R9
      182 SETTABLEKS                       R9 R8 K35 ["graphInstanceId"]
      184 GETIMPORT                        R9 K13 [table.freeze]
      186 MOVE                             R10 R6
      187 CALL                             R9 1 1
      188 SETTABLEKS                       R9 R8 K36 ["lookup"]
      190 SETTABLEKS                       R5 R8 K37 ["output"]
      192 CALL                             R7 1 -1
      193 RETURN                           R7 -1

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
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K3 ["createComputed"]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          VAL R6
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K4 ["observeRenderInfoMap"]
       42 MOVE                             R9 R0
       43 MOVE                             R10 R1
       44 MOVE                             R11 R7
       45 CALL                             R8 3 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K5 ["forEach"]
       49 MOVE                             R10 R7
       50 NEWCLOSURE                       R11 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R10 R10 K3 ["createComputed"]
       59 NEWCLOSURE                       R11 P4
       60 CAPTURE                          VAL R9
       61 CALL                             R10 1 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K3 ["createComputed"]
       65 NEWCLOSURE                       R12 P5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 CALL                             R11 1 -1
       71 RETURN                           R11 -1

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
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+13]
        9 JUMPIFEQKNIL                     R3 ; [+12]
       11 GETTABLEKS                       R6 R4 K1 ["inputPinIds"]
       13 GETTABLE                         R5 R6 R3
       14 GETTABLEKS                       R7 R4 K2 ["inputLabelPinToConnectionMap"]
       16 GETTABLE                         R6 R7 R2
       17 JUMPIFNOT                        R6 ; [+2]
       18 GETTABLE                         R7 R6 R5
       19 RETURN                           R7 1
       20 LOADNIL                          R7
       21 RETURN                           R7 1
       22 GETTABLEKS                       R6 R4 K3 ["inputPinToConnectionMap"]
       24 GETTABLE                         R5 R6 R2
       25 RETURN                           R5 1

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
        6 GETUPVAL                         R10 1
        7 CALL                             R10 0 1
        8 JUMPIFNOT                        R10 ; [+2]
        9 MOVE                             R9 R4
       10 JUMP                             ; [+1]
       11 LOADNIL                          R9
       12 CALL                             R5 4 1
       13 JUMPIF                           R5 ; [+2]
       14 LOADB                            R6 0
       15 RETURN                           R6 1
       16 GETTABLEKS                       R8 R5 K1 ["wireId"]
       18 NAMECALL                         R6 R0 K2 ["idToInstance"]
       20 CALL                             R6 2 1
       21 JUMPIF                           R6 ; [+2]
       22 LOADB                            R7 0
       23 RETURN                           R7 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["removeNodeInputConnection"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R1
       29 MOVE                             R10 R2
       30 MOVE                             R11 R3
       31 MOVE                             R12 R4
       32 CALL                             R7 5 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K4 ["removeOrderedInputPin"]
       36 MOVE                             R8 R0
       37 MOVE                             R9 R1
       38 MOVE                             R10 R2
       39 MOVE                             R11 R3
       40 CALL                             R7 4 0
       41 LOADNIL                          R7
       42 SETTABLEKS                       R7 R6 K5 ["Parent"]
       44 LOADB                            R7 1
       45 RETURN                           R7 1

PROTO_75:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["_findNodeInputBinding"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 GETUPVAL                         R10 1
        7 CALL                             R10 0 1
        8 JUMPIFNOT                        R10 ; [+2]
        9 MOVE                             R9 R4
       10 JUMP                             ; [+1]
       11 LOADNIL                          R9
       12 CALL                             R5 4 1
       13 JUMPIFNOT                        R5 ; [+11]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K1 ["removeNodeOutputConnection"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 GETTABLEKS                       R9 R5 K2 ["outputNodeId"]
       21 GETTABLEKS                       R10 R5 K3 ["outputNodePinId"]
       23 CALL                             R6 4 -1
       24 RETURN                           R6 -1
       25 LOADB                            R6 0
       26 RETURN                           R6 1

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
       23 JUMPIFNOT                        R5 ; [+104]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+101]
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+68]
       30 LOADK                            R9 K5 ["ObjectValue"]
       31 NAMECALL                         R7 R5 K6 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+30]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K7 ["isAParameterWire"]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R2
       40 MOVE                             R10 R5
       41 CALL                             R7 3 1
       42 JUMPIFNOT                        R7 ; [+22]
       43 GETTABLEKS                       R8 R5 K8 ["Value"]
       45 JUMPIFNOT                        R8 ; [+10]
       46 GETTABLEKS                       R8 R5 K8 ["Value"]
       48 LOADK                            R10 K5 ["ObjectValue"]
       49 NAMECALL                         R8 R8 K6 ["IsA"]
       51 CALL                             R8 2 1
       52 JUMPIFNOT                        R8 ; [+3]
       53 GETTABLEKS                       R7 R5 K8 ["Value"]
       55 JUMP                             ; [+1]
       56 MOVE                             R7 R6
       57 JUMPIFNOT                        R7 ; [+55]
       58 GETTABLEKS                       R10 R4 K9 ["inputNodePinId"]
       60 LOADNIL                          R11
       61 NAMECALL                         R8 R7 K10 ["SetAttribute"]
       63 CALL                             R8 3 0
       64 JUMP                             ; [+48]
       65 GETTABLEKS                       R8 R1 K11 ["lookup"]
       67 GETTABLEKS                       R9 R4 K3 ["inputNodeId"]
       69 GETTABLE                         R7 R8 R9
       70 JUMPIFNOT                        R7 ; [+42]
       71 GETTABLEKS                       R8 R7 K12 ["inputLabelPinToConnectionMap"]
       73 LOADNIL                          R9
       74 LOADNIL                          R10
       75 FORGPREP                         R8
       76 GETTABLEKS                       R14 R4 K9 ["inputNodePinId"]
       78 GETTABLE                         R13 R12 R14
       79 JUMPIFNOT                        R13 ; [+15]
       80 GETTABLEKS                       R16 R13 K1 ["wireId"]
       82 NAMECALL                         R14 R0 K2 ["idToInstance"]
       84 CALL                             R14 2 1
       85 JUMPIFNOT                        R14 ; [+9]
       86 GETTABLEKS                       R17 R13 K9 ["inputNodePinId"]
       88 LOADNIL                          R18
       89 NAMECALL                         R15 R5 K10 ["SetAttribute"]
       91 CALL                             R15 3 0
       92 LOADNIL                          R15
       93 SETTABLEKS                       R15 R14 K4 ["Parent"]
       95 FORGLOOP                         R8 2 ; [-20]
       97 JUMP                             ; [+15]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K7 ["isAParameterWire"]
      101 MOVE                             R8 R0
      102 MOVE                             R9 R2
      103 MOVE                             R10 R5
      104 CALL                             R7 3 1
      105 JUMPIFNOT                        R7 ; [+7]
      106 JUMPIFNOT                        R6 ; [+6]
      107 GETTABLEKS                       R9 R4 K9 ["inputNodePinId"]
      109 LOADNIL                          R10
      110 NAMECALL                         R7 R6 K10 ["SetAttribute"]
      112 CALL                             R7 3 0
      113 GETUPVAL                         R7 2
      114 CALL                             R7 0 1
      115 JUMPIFNOT                        R7 ; [+9]
      116 LOADK                            R9 K5 ["ObjectValue"]
      117 NAMECALL                         R7 R5 K6 ["IsA"]
      119 CALL                             R7 2 1
      120 JUMPIFNOT                        R7 ; [+4]
      121 LOADNIL                          R7
      122 SETTABLEKS                       R7 R5 K8 ["Value"]
      124 JUMP                             ; [+3]
      125 LOADNIL                          R7
      126 SETTABLEKS                       R7 R5 K4 ["Parent"]
      128 GETUPVAL                         R7 2
      129 CALL                             R7 0 1
      130 JUMPIF                           R7 ; [+10]
      131 GETUPVAL                         R7 0
      132 GETTABLEKS                       R7 R7 K13 ["removeOrderedInputPin"]
      134 MOVE                             R8 R0
      135 MOVE                             R9 R1
      136 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
      138 GETTABLEKS                       R11 R4 K9 ["inputNodePinId"]
      140 CALL                             R7 4 0
      141 LOADB                            R7 1
      142 RETURN                           R7 1

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
       25 GETUPVAL                         R10 1
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+2]
       28 OR                               R9 R7 R2
       29 JUMP                             ; [+1]
       30 MOVE                             R9 R2
       31 SETTABLEKS                       R9 R8 K8 ["Value"]
       33 SETTABLEKS                       R5 R8 K9 ["Parent"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K10 ["setParameterBindingName"]
       38 GETUPVAL                         R11 1
       39 CALL                             R11 0 1
       40 JUMPIFNOT                        R11 ; [+2]
       41 OR                               R10 R7 R2
       42 JUMP                             ; [+1]
       43 MOVE                             R10 R2
       44 MOVE                             R11 R4
       45 GETUPVAL                         R14 2
       46 GETTABLEKS                       R14 R14 K11 ["NODE_ATTRIBUTES"]
       48 GETTABLEKS                       R14 R14 K12 ["BindingName"]
       50 NAMECALL                         R12 R5 K13 ["GetAttribute"]
       52 CALL                             R12 2 1
       53 CALL                             R9 3 0
       54 MOVE                             R11 R8
       55 NAMECALL                         R9 R0 K14 ["instanceToId"]
       57 CALL                             R9 2 1
       58 MOVE                             R10 R4
       59 RETURN                           R9 2

PROTO_82:
        0 MOVE                             R9 R2
        1 NAMECALL                         R7 R0 K0 ["idToInstance"]
        3 CALL                             R7 2 1
        4 GETUPVAL                         R9 0
        5 CALL                             R9 0 1
        6 JUMPIFNOT                        R9 ; [+2]
        7 JUMPIFEQKNIL                     R4 ; [+6]
        9 MOVE                             R10 R4
       10 NAMECALL                         R8 R0 K0 ["idToInstance"]
       12 CALL                             R8 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R8
       15 JUMPIFEQKNIL                     R7 ; [+21]
       17 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       18 NAMECALL                         R9 R7 K2 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+15]
       22 GETUPVAL                         R9 0
       23 CALL                             R9 0 1
       24 JUMPIF                           R9 ; [+13]
       25 JUMPIFEQKNIL                     R8 ; [+11]
       27 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       28 NAMECALL                         R9 R8 K2 ["IsA"]
       30 CALL                             R9 2 1
       31 JUMPIF                           R9 ; [+6]
       32 LOADK                            R11 K3 ["Folder"]
       33 NAMECALL                         R9 R8 K2 ["IsA"]
       35 CALL                             R9 2 1
       36 JUMPIF                           R9 ; [+1]
       37 RETURN                           R0 0
       38 LOADK                            R11 K4 ["AnimationGraphDefinition"]
       39 NAMECALL                         R9 R7 K5 ["FindFirstAncestorWhichIsA"]
       41 CALL                             R9 2 1
       42 JUMPIF                           R9 ; [+1]
       43 RETURN                           R0 0
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 GETUPVAL                         R12 0
       47 CALL                             R12 0 1
       48 JUMPIFNOT                        R12 ; [+13]
       49 JUMPIFNOT                        R8 ; [+29]
       50 JUMPIFNOT                        R4 ; [+28]
       51 JUMPIFNOT                        R5 ; [+27]
       52 LOADK                            R14 K1 ["AnimationNodeDefinition"]
       53 NAMECALL                         R12 R8 K2 ["IsA"]
       55 CALL                             R12 2 1
       56 JUMPIF                           R12 ; [+5]
       57 LOADK                            R14 K3 ["Folder"]
       58 NAMECALL                         R12 R8 K2 ["IsA"]
       60 CALL                             R12 2 1
       61 JUMPIFNOT                        R12 ; [+17]
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R12 R12 K6 ["_findNodeOutputBinding"]
       65 MOVE                             R13 R1
       66 MOVE                             R14 R4
       67 MOVE                             R15 R5
       68 CALL                             R12 3 1
       69 MOVE                             R10 R12
       70 JUMPIFNOT                        R10 ; [+7]
       71 GETTABLEKS                       R14 R10 K7 ["wireId"]
       73 NAMECALL                         R12 R0 K0 ["idToInstance"]
       75 CALL                             R12 2 1
       76 MOVE                             R11 R12
       77 JUMP                             ; [+1]
       78 LOADNIL                          R11
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R12 R12 K8 ["_findNodeInputBinding"]
       82 MOVE                             R13 R1
       83 MOVE                             R14 R2
       84 MOVE                             R15 R3
       85 GETUPVAL                         R17 2
       86 CALL                             R17 0 1
       87 JUMPIFNOT                        R17 ; [+2]
       88 MOVE                             R16 R6
       89 JUMP                             ; [+1]
       90 LOADNIL                          R16
       91 CALL                             R12 4 1
       92 JUMPIFNOT                        R12 ; [+6]
       93 GETTABLEKS                       R15 R12 K7 ["wireId"]
       95 NAMECALL                         R13 R0 K0 ["idToInstance"]
       97 CALL                             R13 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R13
      100 JUMPIFNOT                        R8 ; [+46]
      101 LOADK                            R16 K3 ["Folder"]
      102 NAMECALL                         R14 R8 K2 ["IsA"]
      104 CALL                             R14 2 1
      105 JUMPIFNOT                        R14 ; [+41]
      106 LOADNIL                          R14
      107 GETUPVAL                         R15 2
      108 CALL                             R15 0 1
      109 JUMPIFNOT                        R15 ; [+19]
      110 JUMPIFEQKNIL                     R6 ; [+18]
      112 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
      114 CALL                             R15 1 1
      115 GETTABLE                         R16 R15 R6
      116 JUMPIFNOT                        R16 ; [+12]
      117 MOVE                             R19 R16
      118 NAMECALL                         R17 R7 K10 ["FindFirstChild"]
      120 CALL                             R17 2 1
      121 JUMPIFEQKNIL                     R17 ; [+7]
      123 LOADK                            R20 K11 ["ObjectValue"]
      124 NAMECALL                         R18 R17 K2 ["IsA"]
      126 CALL                             R18 2 1
      127 JUMPIFNOT                        R18 ; [+1]
      128 MOVE                             R14 R17
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K12 ["setParameterConnection"]
      132 MOVE                             R16 R0
      133 MOVE                             R17 R9
      134 MOVE                             R18 R7
      135 MOVE                             R19 R2
      136 MOVE                             R20 R3
      137 MOVE                             R21 R8
      138 MOVE                             R22 R13
      139 GETUPVAL                         R24 2
      140 CALL                             R24 0 1
      141 JUMPIFNOT                        R24 ; [+2]
      142 MOVE                             R23 R14
      143 JUMP                             ; [+1]
      144 LOADNIL                          R23
      145 CALL                             R15 8 -1
      146 RETURN                           R15 -1
      147 LOADNIL                          R14
      148 GETUPVAL                         R15 1
      149 GETTABLEKS                       R15 R15 K13 ["hasDynamicInputPins"]
      151 MOVE                             R16 R1
      152 MOVE                             R17 R2
      153 CALL                             R15 2 1
      154 JUMPIFNOT                        R15 ; [+139]
      155 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
      157 CALL                             R15 1 1
      158 JUMPIFNOT                        R10 ; [+7]
      159 GETIMPORT                        R16 K16 [table.find]
      161 MOVE                             R17 R15
      162 GETTABLEKS                       R18 R10 K17 ["inputNodePinId"]
      164 CALL                             R16 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R16
      167 JUMPIFNOT                        R16 ; [+5]
      168 GETIMPORT                        R17 K19 [table.remove]
      170 MOVE                             R18 R15
      171 MOVE                             R19 R16
      172 CALL                             R17 2 0
      173 JUMPIFNOT                        R12 ; [+7]
      174 GETIMPORT                        R17 K16 [table.find]
      176 MOVE                             R18 R15
      177 GETTABLEKS                       R19 R12 K17 ["inputNodePinId"]
      179 CALL                             R17 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 JUMPIFNOT                        R17 ; [+5]
      183 GETIMPORT                        R18 K19 [table.remove]
      185 MOVE                             R19 R15
      186 MOVE                             R20 R17
      187 CALL                             R18 2 0
      188 GETUPVAL                         R18 0
      189 CALL                             R18 0 1
      190 JUMPIFNOT                        R18 ; [+2]
      191 JUMPIFNOT                        R8 ; [+100]
      192 JUMPIFNOT                        R4 ; [+99]
      193 GETUPVAL                         R19 3
      194 CALL                             R19 0 1
      195 JUMPIFNOT                        R19 ; [+36]
      196 GETUPVAL                         R19 4
      197 GETTABLEKS                       R19 R19 K20 ["NODE_CONFIGURATION_NAME"]
      199 LOADK                            R22 K21 ["Configuration"]
      200 NAMECALL                         R20 R8 K2 ["IsA"]
      202 CALL                             R20 2 1
      203 JUMPIFNOT                        R20 ; [+2]
      204 MOVE                             R18 R8
      205 JUMP                             ; [+17]
      206 MOVE                             R22 R19
      207 NAMECALL                         R20 R8 K10 ["FindFirstChild"]
      209 CALL                             R20 2 1
      210 JUMPIFEQKNIL                     R20 ; [+3]
      212 MOVE                             R18 R20
      213 JUMP                             ; [+9]
      214 GETIMPORT                        R20 K24 [Instance.new]
      216 LOADK                            R21 K21 ["Configuration"]
      217 CALL                             R20 1 1
      218 SETTABLEKS                       R19 R20 K25 ["Name"]
      220 SETTABLEKS                       R8 R20 K26 ["Parent"]
      222 MOVE                             R18 R20
      223 GETUPVAL                         R20 4
      224 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      226 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      228 NAMECALL                         R18 R18 K29 ["GetAttribute"]
      230 CALL                             R18 2 1
      231 JUMP                             ; [+8]
      232 GETUPVAL                         R20 4
      233 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      235 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      237 NAMECALL                         R18 R8 K29 ["GetAttribute"]
      239 CALL                             R18 2 1
      240 GETUPVAL                         R19 5
      241 CALL                             R19 0 1
      242 JUMPIFNOT                        R19 ; [+33]
      243 GETTABLEKS                       R21 R1 K30 ["lookup"]
      245 GETTABLE                         R20 R21 R4
      246 JUMPIFNOT                        R20 ; [+6]
      247 GETTABLEKS                       R20 R1 K30 ["lookup"]
      249 GETTABLE                         R19 R20 R4
      250 GETTABLEKS                       R19 R19 K31 ["name"]
      252 JUMPIF                           R19 ; [+2]
      253 GETTABLEKS                       R19 R8 K25 ["Name"]
      255 LOADK                            R22 K32 ["Node%d*$"]
      256 LOADK                            R23 K33 [""]
      257 NAMECALL                         R20 R19 K34 ["gsub"]
      259 CALL                             R20 3 1
      260 MOVE                             R19 R20
      261 GETUPVAL                         R20 1
      262 GETTABLEKS                       R20 R20 K35 ["getDynamicInputPinNameFromInputPinIds"]
      264 MOVE                             R21 R15
      265 JUMPIFNOT                        R18 ; [+6]
      266 FASTCALL1                        TOSTRING R18 ; [+3]
      267 MOVE                             R23 R18
      268 GETIMPORT                        R22 K37 [tostring]
      270 CALL                             R22 1 1
      271 JUMP                             ; [+1]
      272 MOVE                             R22 R19
      273 CALL                             R20 2 1
      274 MOVE                             R14 R20
      275 JUMP                             ; [+19]
      276 GETUPVAL                         R19 1
      277 GETTABLEKS                       R19 R19 K35 ["getDynamicInputPinNameFromInputPinIds"]
      279 MOVE                             R20 R15
      280 JUMPIFNOT                        R18 ; [+6]
      281 FASTCALL1                        TOSTRING R18 ; [+3]
      282 MOVE                             R22 R18
      283 GETIMPORT                        R21 K37 [tostring]
      285 CALL                             R21 1 1
      286 JUMP                             ; [+2]
      287 GETTABLEKS                       R21 R8 K25 ["Name"]
      289 CALL                             R19 2 1
      290 MOVE                             R14 R19
      291 JUMP                             ; [+3]
      292 MOVE                             R14 R3
      293 JUMP                             ; [+1]
      294 MOVE                             R14 R3
      295 JUMPIFEQ                         R14 R3 ; [+9]
      297 GETUPVAL                         R15 1
      298 GETTABLEKS                       R15 R15 K8 ["_findNodeInputBinding"]
      300 MOVE                             R16 R1
      301 MOVE                             R17 R2
      302 MOVE                             R18 R14
      303 CALL                             R15 3 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R15
      306 JUMPIFNOT                        R15 ; [+6]
      307 GETTABLEKS                       R18 R15 K7 ["wireId"]
      309 NAMECALL                         R16 R0 K0 ["idToInstance"]
      311 CALL                             R16 2 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R16
      314 JUMPIFEQKNIL                     R13 ; [+13]
      316 MOVE                             R20 R9
      317 NAMECALL                         R18 R13 K38 ["IsDescendantOf"]
      319 CALL                             R18 2 1
      320 JUMPIFNOT                        R18 ; [+7]
      321 LOADK                            R20 K11 ["ObjectValue"]
      322 NAMECALL                         R18 R13 K2 ["IsA"]
      324 CALL                             R18 2 1
      325 JUMPIFNOT                        R18 ; [+2]
      326 MOVE                             R17 R13
      327 JUMP                             ; [+32]
      328 JUMPIFEQKNIL                     R16 ; [+13]
      330 MOVE                             R20 R9
      331 NAMECALL                         R18 R16 K38 ["IsDescendantOf"]
      333 CALL                             R18 2 1
      334 JUMPIFNOT                        R18 ; [+7]
      335 LOADK                            R20 K11 ["ObjectValue"]
      336 NAMECALL                         R18 R16 K2 ["IsA"]
      338 CALL                             R18 2 1
      339 JUMPIFNOT                        R18 ; [+2]
      340 MOVE                             R17 R16
      341 JUMP                             ; [+18]
      342 JUMPIFEQKNIL                     R11 ; [+13]
      344 MOVE                             R20 R9
      345 NAMECALL                         R18 R11 K38 ["IsDescendantOf"]
      347 CALL                             R18 2 1
      348 JUMPIFNOT                        R18 ; [+7]
      349 LOADK                            R20 K11 ["ObjectValue"]
      350 NAMECALL                         R18 R11 K2 ["IsA"]
      352 CALL                             R18 2 1
      353 JUMPIFNOT                        R18 ; [+2]
      354 MOVE                             R17 R11
      355 JUMP                             ; [+4]
      356 GETIMPORT                        R17 K24 [Instance.new]
      358 LOADK                            R18 K11 ["ObjectValue"]
      359 CALL                             R17 1 1
      360 JUMPIFNOT                        R16 ; [+5]
      361 JUMPIFEQ                         R16 R17 ; [+4]
      363 LOADNIL                          R18
      364 SETTABLEKS                       R18 R16 K26 ["Parent"]
      366 JUMPIFNOT                        R11 ; [+5]
      367 JUMPIFEQ                         R11 R17 ; [+4]
      369 LOADNIL                          R18
      370 SETTABLEKS                       R18 R11 K26 ["Parent"]
      372 JUMPIFNOT                        R13 ; [+5]
      373 JUMPIFEQ                         R13 R17 ; [+4]
      375 LOADNIL                          R18
      376 SETTABLEKS                       R18 R13 K26 ["Parent"]
      378 NAMECALL                         R18 R7 K39 ["GetChildren"]
      380 CALL                             R18 1 3
      381 FORGPREP                         R18
      382 LOADK                            R25 K11 ["ObjectValue"]
      383 NAMECALL                         R23 R22 K2 ["IsA"]
      385 CALL                             R23 2 1
      386 JUMPIFNOT                        R23 ; [+9]
      387 GETTABLEKS                       R23 R22 K25 ["Name"]
      389 JUMPIFNOTEQ                      R23 R14 ; [+6]
      391 JUMPIFEQ                         R22 R17 ; [+4]
      393 LOADNIL                          R23
      394 SETTABLEKS                       R23 R22 K26 ["Parent"]
      396 FORGLOOP                         R18 2 ; [-15]
      398 NAMECALL                         R18 R7 K9 ["GetOrderedInputPinNames"]
      400 CALL                             R18 1 1
      401 JUMPIFEQ                         R14 R3 ; [+19]
      403 GETIMPORT                        R19 K16 [table.find]
      405 MOVE                             R20 R18
      406 MOVE                             R21 R3
      407 CALL                             R19 2 1
      408 GETIMPORT                        R20 K16 [table.find]
      410 MOVE                             R21 R18
      411 MOVE                             R22 R14
      412 CALL                             R20 2 1
      413 JUMPIFNOT                        R19 ; [+1]
      414 SETTABLE                         R14 R18 R19
      415 JUMPIFNOT                        R20 ; [+5]
      416 GETIMPORT                        R21 K19 [table.remove]
      418 MOVE                             R22 R18
      419 MOVE                             R23 R20
      420 CALL                             R21 2 0
      421 GETIMPORT                        R19 K16 [table.find]
      423 MOVE                             R20 R18
      424 MOVE                             R21 R14
      425 CALL                             R19 2 1
      426 JUMPIF                           R19 ; [+7]
      427 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      429 MOVE                             R20 R18
      430 MOVE                             R21 R14
      431 GETIMPORT                        R19 K41 [table.insert]
      433 CALL                             R19 2 0
      434 MOVE                             R21 R18
      435 NAMECALL                         R19 R7 K42 ["SetOrderedInputPinNames"]
      437 CALL                             R19 2 0
      438 SETTABLEKS                       R14 R17 K25 ["Name"]
      440 SETTABLEKS                       R8 R17 K43 ["Value"]
      442 SETTABLEKS                       R7 R17 K26 ["Parent"]
      444 MOVE                             R21 R17
      445 NAMECALL                         R19 R0 K44 ["instanceToId"]
      447 CALL                             R19 2 1
      448 MOVE                             R20 R14
      449 MOVE                             R21 R17
      450 RETURN                           R19 3

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
      152 GETTABLEKS                       R20 R20 K35 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K9 [require]
      157 GETTABLEKS                       R21 R1 K15 ["Flags"]
      159 GETTABLEKS                       R21 R21 K36 ["getFFlagAnimGraphUI_RunTimeDebug"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R1 K15 ["Flags"]
      166 GETTABLEKS                       R22 R22 K37 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K9 [require]
      171 GETTABLEKS                       R23 R1 K10 ["Util"]
      173 GETTABLEKS                       R23 R23 K38 ["parseAnimationNodeType"]
      175 CALL                             R22 1 1
      176 GETTABLEKS                       R23 R9 K39 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
      178 NEWTABLE                         R24 64 0
      180 DUPCLOSURE                       R25 K40 [PROTO_0]
      181 DUPCLOSURE                       R26 K41 [PROTO_2]
      182 CAPTURE                          VAL R14
      183 DUPCLOSURE                       R27 K42 [PROTO_3]
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R27 R24 K43 ["getOrCreateParameterInstance"]
      188 DUPCLOSURE                       R27 K44 [PROTO_4]
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R4
      191 SETTABLEKS                       R27 R24 K45 ["createExistingParameterInstance"]
      193 DUPCLOSURE                       R27 K46 [PROTO_6]
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R5
      197 SETTABLEKS                       R27 R24 K47 ["getParameterType"]
      199 DUPCLOSURE                       R27 K48 [PROTO_7]
      200 SETTABLEKS                       R27 R24 K49 ["setParameterBindingName"]
      202 DUPCLOSURE                       R27 K50 [PROTO_8]
      203 CAPTURE                          VAL R4
      204 SETTABLEKS                       R27 R24 K51 ["getNodePosition"]
      206 DUPCLOSURE                       R27 K52 [PROTO_9]
      207 CAPTURE                          VAL R4
      208 SETTABLEKS                       R27 R24 K53 ["predictOutputPosition"]
      210 DUPCLOSURE                       R27 K54 [PROTO_10]
      211 CAPTURE                          VAL R4
      212 SETTABLEKS                       R27 R24 K55 ["setNodePosition"]
      214 DUPCLOSURE                       R27 K56 [PROTO_11]
      215 CAPTURE                          VAL R4
      216 SETTABLEKS                       R27 R24 K57 ["setNodeSize"]
      218 DUPCLOSURE                       R27 K58 [PROTO_12]
      219 CAPTURE                          VAL R4
      220 SETTABLEKS                       R27 R24 K59 ["setNodeIsCollapsed"]
      222 DUPCLOSURE                       R27 K60 [PROTO_13]
      223 CAPTURE                          VAL R4
      224 SETTABLEKS                       R27 R24 K61 ["setDisplayName"]
      226 DUPCLOSURE                       R27 K62 [PROTO_14]
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R4
      229 SETTABLEKS                       R27 R24 K63 ["setZIndex"]
      231 DUPCLOSURE                       R27 K64 [PROTO_15]
      232 SETTABLEKS                       R27 R24 K65 ["getParameterInstanceName"]
      234 DUPCLOSURE                       R27 K66 [PROTO_16]
      235 CAPTURE                          VAL R24
      236 SETTABLEKS                       R27 R24 K67 ["getAllParameterInstancesFromName"]
      238 DUPCLOSURE                       R27 K68 [PROTO_18]
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R24
      244 SETTABLEKS                       R27 R24 K69 ["observeWireInfo"]
      246 DUPCLOSURE                       R27 K70 [PROTO_24]
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R19
      252 SETTABLEKS                       R27 R24 K71 ["observeNodeConnectionMap"]
      254 DUPCLOSURE                       R27 K72 [PROTO_25]
      255 SETTABLEKS                       R27 R24 K73 ["matchParameterBinding"]
      257 DUPCLOSURE                       R27 K74 [PROTO_28]
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R11
      261 SETTABLEKS                       R27 R24 K75 ["observeParameterNodeInfo"]
      263 DUPCLOSURE                       R27 K76 [PROTO_38]
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R0
      268 CAPTURE                          VAL R15
      269 SETTABLEKS                       R27 R24 K77 ["observeNodeProps"]
      271 DUPCLOSURE                       R27 K78 [PROTO_40]
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R11
      274 SETTABLEKS                       R27 R24 K79 ["observeNodeType"]
      276 DUPCLOSURE                       R27 K80 [PROTO_43]
      277 CAPTURE                          VAL R21
      278 CAPTURE                          VAL R4
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R15
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R11
      284 SETTABLEKS                       R27 R24 K81 ["observeNodeInfo"]
      286 DUPCLOSURE                       R27 K82 [PROTO_46]
      287 CAPTURE                          VAL R14
      288 CAPTURE                          VAL R24
      289 SETTABLEKS                       R27 R24 K83 ["observeNodeInfoLookupList"]
      291 DUPCLOSURE                       R27 K84 [PROTO_49]
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R24
      296 SETTABLEKS                       R27 R24 K85 ["observeParameterNodeInfoLookupList"]
      298 DUPCLOSURE                       R27 K86 [PROTO_52]
      299 CAPTURE                          VAL R14
      300 CAPTURE                          VAL R24
      301 CAPTURE                          VAL R11
      302 SETTABLEKS                       R27 R24 K87 ["observeRenderInfoMap"]
      304 DUPCLOSURE                       R27 K88 [PROTO_58]
      305 CAPTURE                          VAL R14
      306 CAPTURE                          VAL R26
      307 CAPTURE                          VAL R4
      308 CAPTURE                          VAL R15
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R11
      311 SETTABLEKS                       R27 R24 K89 ["observeRenderInfo"]
      313 DUPCLOSURE                       R27 K90 [PROTO_62]
      314 CAPTURE                          VAL R13
      315 CAPTURE                          VAL R11
      316 CAPTURE                          VAL R14
      317 SETTABLEKS                       R27 R24 K91 ["observeEditingAnimationGraphDefinition"]
      319 DUPCLOSURE                       R27 K92 [PROTO_70]
      320 CAPTURE                          VAL R14
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R11
      323 CAPTURE                          VAL R19
      324 CAPTURE                          VAL R4
      325 SETTABLEKS                       R27 R24 K93 ["observeGraphState"]
      327 DUPCLOSURE                       R27 K94 [PROTO_71]
      328 SETTABLEKS                       R27 R24 K95 ["fitGraphRect"]
      330 DUPCLOSURE                       R27 K96 [PROTO_72]
      331 CAPTURE                          VAL R19
      332 SETTABLEKS                       R27 R24 K97 ["_findNodeInputBinding"]
      334 DUPCLOSURE                       R27 K98 [PROTO_73]
      335 SETTABLEKS                       R27 R24 K99 ["_findNodeOutputBinding"]
      337 DUPCLOSURE                       R27 K100 [PROTO_74]
      338 CAPTURE                          VAL R24
      339 CAPTURE                          VAL R19
      340 SETTABLEKS                       R27 R24 K101 ["deleteNodeInput"]
      342 DUPCLOSURE                       R27 K102 [PROTO_75]
      343 CAPTURE                          VAL R24
      344 CAPTURE                          VAL R19
      345 SETTABLEKS                       R27 R24 K103 ["removeNodeInputConnection"]
      347 DUPCLOSURE                       R27 K104 [PROTO_76]
      348 SETTABLEKS                       R27 R24 K105 ["isAParameterWire"]
      350 DUPCLOSURE                       R27 K106 [PROTO_77]
      351 CAPTURE                          VAL R24
      352 SETTABLEKS                       R27 R24 K107 ["removeOrderedInputPin"]
      354 DUPCLOSURE                       R27 K108 [PROTO_78]
      355 CAPTURE                          VAL R24
      356 CAPTURE                          VAL R19
      357 CAPTURE                          VAL R23
      358 SETTABLEKS                       R27 R24 K109 ["removeNodeOutputConnection"]
      360 DUPCLOSURE                       R27 K110 [PROTO_79]
      361 SETTABLEKS                       R27 R24 K111 ["getParameterWireName"]
      363 DUPCLOSURE                       R27 K112 [PROTO_80]
      364 SETTABLEKS                       R27 R24 K113 ["getParameterWireInputPinId"]
      366 DUPCLOSURE                       R27 K114 [PROTO_81]
      367 CAPTURE                          VAL R24
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R4
      370 SETTABLEKS                       R27 R24 K115 ["setParameterConnection"]
      372 DUPCLOSURE                       R27 K116 [PROTO_82]
      373 CAPTURE                          VAL R23
      374 CAPTURE                          VAL R24
      375 CAPTURE                          VAL R19
      376 CAPTURE                          VAL R21
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R18
      379 SETTABLEKS                       R27 R24 K117 ["setNodeConnection"]
      381 DUPCLOSURE                       R27 K118 [PROTO_83]
      382 CAPTURE                          VAL R22
      383 CAPTURE                          VAL R24
      384 SETTABLEKS                       R27 R24 K119 ["hasDynamicInputPins"]
      386 DUPCLOSURE                       R27 K120 [PROTO_84]
      387 CAPTURE                          VAL R2
      388 SETTABLEKS                       R27 R24 K121 ["nodeTypeHasDynamicInputPins"]
      390 DUPCLOSURE                       R27 K122 [PROTO_85]
      391 SETTABLEKS                       R27 R24 K123 ["reorderPins"]
      393 DUPCLOSURE                       R27 K124 [PROTO_86]
      394 CAPTURE                          VAL R24
      395 SETTABLEKS                       R27 R24 K125 ["renameDynamicInputPin"]
      397 DUPCLOSURE                       R27 K126 [PROTO_87]
      398 CAPTURE                          VAL R24
      399 SETTABLEKS                       R27 R24 K127 ["getDynamicInputPinName"]
      401 DUPCLOSURE                       R27 K128 [PROTO_88]
      402 CAPTURE                          VAL R24
      403 SETTABLEKS                       R27 R24 K129 ["getDynamicInputPinNameFromInputNode"]
      405 DUPCLOSURE                       R27 K130 [PROTO_89]
      406 SETTABLEKS                       R27 R24 K131 ["getDynamicInputPinNameFromInputPinIds"]
      408 DUPCLOSURE                       R27 K132 [PROTO_90]
      409 CAPTURE                          VAL R3
      410 SETTABLEKS                       R27 R24 K133 ["getAnimSavesFolderForTarget"]
      412 DUPCLOSURE                       R27 K134 [PROTO_91]
      413 CAPTURE                          VAL R20
      414 CAPTURE                          VAL R24
      415 CAPTURE                          VAL R3
      416 SETTABLEKS                       R27 R24 K135 ["getOrCreateParentForNewGraph"]
      418 DUPCLOSURE                       R27 K136 [PROTO_92]
      419 CAPTURE                          VAL R24
      420 CAPTURE                          VAL R16
      421 CAPTURE                          VAL R8
      422 SETTABLEKS                       R27 R24 K137 ["createNewAnimationGraph"]
      424 DUPCLOSURE                       R27 K138 [PROTO_93]
      425 CAPTURE                          VAL R8
      426 CAPTURE                          VAL R0
      427 CAPTURE                          VAL R24
      428 CAPTURE                          VAL R20
      429 SETTABLEKS                       R27 R24 K139 ["createNodeOfType"]
      431 DUPCLOSURE                       R27 K140 [PROTO_94]
      432 CAPTURE                          VAL R24
      433 SETTABLEKS                       R27 R24 K141 ["duplicateNodes"]
      435 DUPCLOSURE                       R27 K142 [PROTO_95]
      436 DUPCLOSURE                       R28 K143 [PROTO_96]
      437 CAPTURE                          VAL R17
      438 CAPTURE                          VAL R27
      439 CAPTURE                          VAL R24
      440 SETTABLEKS                       R28 R24 K144 ["pasteInstancesIntoGraph"]
      442 RETURN                           R24 1
