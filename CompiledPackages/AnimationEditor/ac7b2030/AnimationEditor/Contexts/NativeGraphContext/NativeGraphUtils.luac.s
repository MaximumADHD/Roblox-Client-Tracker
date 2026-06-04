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
       56 JUMPIFNOT                        R5 ; [+1]
       57 LOADK                            R2 K8 ["Enum"]
       58 GETUPVAL                         R5 1
       59 CALL                             R5 0 1
       60 JUMPIFNOT                        R5 ; [+3]
       61 JUMPIFNOTEQKS                    R2 K9 ["number"] ; [+2]
       63 LOADK                            R2 K10 ["Number"]
       64 RETURN                           R2 1

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
       30 GETTABLEKS                       R5 R5 K10 ["Size"]
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
       30 GETTABLEKS                       R5 R5 K10 ["Collapsed"]
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
       30 GETTABLEKS                       R5 R5 K10 ["DisplayName"]
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K11 ["SetAttribute"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R2 K0 ["Parameter_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_14:
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

PROTO_15:
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
       60 DUPTABLE                         R11 K14 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties", "targetWireInputPinId"}]
       61 GETUPVAL                         R12 6
       62 SETTABLEKS                       R12 R11 K7 ["wireId"]
       64 SETTABLEKS                       R7 R11 K8 ["inputNodeId"]
       66 SETTABLEKS                       R10 R11 K9 ["inputNodePinId"]
       68 SETTABLEKS                       R6 R11 K10 ["outputNodeId"]
       70 LOADK                            R12 K15 ["Output"]
       71 SETTABLEKS                       R12 R11 K11 ["outputNodePinId"]
       73 GETUPVAL                         R12 7
       74 MOVE                             R13 R0
       75 CALL                             R12 1 1
       76 SETTABLEKS                       R12 R11 K12 ["properties"]
       78 SETTABLEKS                       R5 R11 K13 ["targetWireInputPinId"]
       80 RETURN                           R11 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["inputNodeId"]
       10 JUMPIFEQKNIL                     R11 ; [+134]
       12 GETTABLEKS                       R11 R10 K1 ["outputNodeId"]
       14 JUMPIFEQKNIL                     R11 ; [+130]
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R12 R10 K0 ["inputNodeId"]
       19 CALL                             R11 1 1
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R13 R10 K1 ["outputNodeId"]
       23 CALL                             R12 1 1
       24 GETUPVAL                         R13 1
       25 CALL                             R13 0 1
       26 JUMPIFNOT                        R13 ; [+58]
       27 DUPTABLE                         R13 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       28 GETTABLEKS                       R14 R10 K2 ["wireId"]
       30 SETTABLEKS                       R14 R13 K2 ["wireId"]
       32 GETTABLEKS                       R14 R10 K0 ["inputNodeId"]
       34 SETTABLEKS                       R14 R13 K0 ["inputNodeId"]
       36 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       38 SETTABLEKS                       R14 R13 K3 ["inputNodePinId"]
       40 GETTABLEKS                       R14 R10 K1 ["outputNodeId"]
       42 SETTABLEKS                       R14 R13 K1 ["outputNodeId"]
       44 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
       46 SETTABLEKS                       R14 R13 K4 ["outputNodePinId"]
       48 GETTABLEKS                       R14 R10 K5 ["properties"]
       50 SETTABLEKS                       R14 R13 K5 ["properties"]
       52 GETTABLEKS                       R14 R10 K7 ["targetWireInputPinId"]
       54 JUMPIFEQKNIL                     R14 ; [+19]
       56 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       58 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       60 GETTABLE                         R15 R16 R14
       61 JUMPIF                           R15 ; [+5]
       62 GETTABLEKS                       R15 R11 K8 ["inputLabelNodesByPinName"]
       64 NEWTABLE                         R16 0 0
       66 SETTABLE                         R16 R15 R14
       67 GETTABLEKS                       R16 R11 K8 ["inputLabelNodesByPinName"]
       69 GETTABLE                         R15 R16 R14
       70 GETTABLEKS                       R16 R10 K7 ["targetWireInputPinId"]
       72 SETTABLE                         R13 R15 R16
       73 JUMP                             ; [+5]
       74 GETTABLEKS                       R14 R11 K9 ["inputNodesByPinName"]
       76 GETTABLEKS                       R15 R10 K3 ["inputNodePinId"]
       78 SETTABLE                         R13 R14 R15
       79 GETTABLEKS                       R14 R12 K10 ["outputNodesByPinName"]
       81 GETTABLEKS                       R15 R10 K4 ["outputNodePinId"]
       83 SETTABLE                         R13 R14 R15
       84 JUMP                             ; [+60]
       85 GETTABLEKS                       R13 R11 K9 ["inputNodesByPinName"]
       87 GETTABLEKS                       R14 R10 K3 ["inputNodePinId"]
       89 DUPTABLE                         R15 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
       90 GETTABLEKS                       R16 R10 K2 ["wireId"]
       92 SETTABLEKS                       R16 R15 K2 ["wireId"]
       94 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
       96 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
       98 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
      100 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
      102 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
      104 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
      106 GETTABLEKS                       R16 R10 K4 ["outputNodePinId"]
      108 SETTABLEKS                       R16 R15 K4 ["outputNodePinId"]
      110 GETTABLEKS                       R16 R10 K5 ["properties"]
      112 SETTABLEKS                       R16 R15 K5 ["properties"]
      114 SETTABLE                         R15 R13 R14
      115 GETTABLEKS                       R13 R12 K10 ["outputNodesByPinName"]
      117 GETTABLEKS                       R14 R10 K4 ["outputNodePinId"]
      119 DUPTABLE                         R15 K6 [{"wireId", "inputNodeId", "inputNodePinId", "outputNodeId", "outputNodePinId", "properties"}]
      120 GETTABLEKS                       R16 R10 K2 ["wireId"]
      122 SETTABLEKS                       R16 R15 K2 ["wireId"]
      124 GETTABLEKS                       R16 R10 K0 ["inputNodeId"]
      126 SETTABLEKS                       R16 R15 K0 ["inputNodeId"]
      128 GETTABLEKS                       R16 R10 K3 ["inputNodePinId"]
      130 SETTABLEKS                       R16 R15 K3 ["inputNodePinId"]
      132 GETTABLEKS                       R16 R10 K1 ["outputNodeId"]
      134 SETTABLEKS                       R16 R15 K1 ["outputNodeId"]
      136 GETTABLEKS                       R16 R10 K4 ["outputNodePinId"]
      138 SETTABLEKS                       R16 R15 K4 ["outputNodePinId"]
      140 GETTABLEKS                       R16 R10 K5 ["properties"]
      142 SETTABLEKS                       R16 R15 K5 ["properties"]
      144 SETTABLE                         R15 R13 R14
      145 FORGLOOP                         R6 2 ; [-138]
      147 FORGLOOP                         R1 2 ; [-144]
      149 RETURN                           R0 0

PROTO_21:
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
       12 CAPTURE                          UPVAL U2
       13 MOVE                             R6 R5
       14 MOVE                             R7 R2
       15 CALL                             R6 1 0
       16 MOVE                             R6 R5
       17 MOVE                             R7 R3
       18 CALL                             R6 1 0
       19 MOVE                             R6 R1
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETIMPORT                        R11 K2 [table.freeze]
       25 MOVE                             R12 R10
       26 CALL                             R11 1 0
       27 FORGLOOP                         R6 2 ; [-5]
       29 GETIMPORT                        R6 K2 [table.freeze]
       31 MOVE                             R7 R1
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1

PROTO_22:
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
       35 CALL                             R7 1 -1
       36 RETURN                           R7 -1

PROTO_23:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^param::(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       37 GETTABLEKS                       R6 R6 K8 ["of"]
       39 MOVE                             R7 R1
       40 CALL                             R6 1 1
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K9 ["createComputed"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K9 ["createComputed"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CALL                             R8 1 -1
       59 RETURN                           R8 -1

PROTO_27:
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

PROTO_28:
        0 DUPTABLE                         R1 K2 [{"instance", "name"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["instance"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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
       21 DUPCLOSURE                       R4 K5 [PROTO_32]
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

PROTO_35:
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

PROTO_36:
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
       27 DUPCLOSURE                       R8 K6 [PROTO_29]
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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
       83 DUPCLOSURE                       R8 K15 [PROTO_39]
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_42]
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchMap"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_45]
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

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderInfo"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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
       21 DUPCLOSURE                       R7 K4 [PROTO_51]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U2
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["switchMap"]
       29 MOVE                             R7 R4
       30 DUPCLOSURE                       R8 K5 [PROTO_52]
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K3 ["switchMap"]
       38 MOVE                             R8 R4
       39 DUPCLOSURE                       R9 K6 [PROTO_53]
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U2
       43 CALL                             R7 2 1
       44 MOVE                             R10 R3
       45 NAMECALL                         R8 R1 K7 ["observeIsSelected"]
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K8 ["createComputed"]
       51 NEWCLOSURE                       R10 P3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 CALL                             R9 1 -1
       58 RETURN                           R9 -1

PROTO_56:
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
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K12 ["graph"]
       59 GETTABLEKS                       R8 R8 K15 ["Parent"]
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
       80 GETUPVAL                         R3 1
       81 GETTABLEKS                       R3 R3 K12 ["graph"]
       83 RETURN                           R3 1

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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
       18 DUPCLOSURE                       R6 K4 [PROTO_57]
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

PROTO_60:
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

PROTO_61:
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
       70 DUPTABLE                         R17 K24 [{"inputPinIds", "outputPinToConnectionMap", "inputPinToConnectionMap", "inputLabelPinToConnectionMap", "className", "id", "index", "name", "nodeType", "props", "state"}]
       71 GETTABLEKS                       R18 R11 K14 ["inputPinIds"]
       73 SETTABLEKS                       R18 R17 K14 ["inputPinIds"]
       75 SETTABLEKS                       R14 R17 K15 ["outputPinToConnectionMap"]
       77 SETTABLEKS                       R13 R17 K16 ["inputPinToConnectionMap"]
       79 SETTABLEKS                       R15 R17 K17 ["inputLabelPinToConnectionMap"]
       81 GETTABLEKS                       R18 R11 K6 ["nodeType"]
       83 GETTABLEKS                       R18 R18 K25 ["Name"]
       85 SETTABLEKS                       R18 R17 K18 ["className"]
       87 GETTABLEKS                       R18 R11 K0 ["nodeId"]
       89 SETTABLEKS                       R18 R17 K19 ["id"]
       91 LOADNIL                          R18
       92 SETTABLEKS                       R18 R17 K20 ["index"]
       94 GETTABLEKS                       R18 R11 K21 ["name"]
       96 SETTABLEKS                       R18 R17 K21 ["name"]
       98 GETTABLEKS                       R19 R11 K6 ["nodeType"]
      100 FASTCALL1                        TOSTRING R19 ; [+2]
      101 GETIMPORT                        R18 K27 [tostring]
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K6 ["nodeType"]
      106 LOADNIL                          R18
      107 SETTABLEKS                       R18 R17 K22 ["props"]
      109 LOADNIL                          R18
      110 SETTABLEKS                       R18 R17 K23 ["state"]
      112 CALL                             R16 1 1
      113 GETTABLEKS                       R17 R11 K0 ["nodeId"]
      115 SETTABLE                         R16 R6 R17
      116 FORGLOOP                         R7 2 ; [-98]
      118 MOVE                             R7 R3
      119 LOADNIL                          R8
      120 LOADNIL                          R9
      121 FORGPREP                         R7
      122 GETTABLEKS                       R13 R11 K0 ["nodeId"]
      124 GETTABLE                         R12 R4 R13
      125 NEWTABLE                         R13 0 0
      127 JUMPIFNOT                        R12 ; [+10]
      128 GETTABLEKS                       R14 R12 K3 ["outputNodesByPinName"]
      130 LOADNIL                          R15
      131 LOADNIL                          R16
      132 FORGPREP                         R14
      133 GETTABLEKS                       R19 R18 K4 ["outputNodePinId"]
      135 SETTABLE                         R18 R13 R19
      136 FORGLOOP                         R14 2 ; [-4]
      138 GETIMPORT                        R14 K13 [table.freeze]
      140 DUPTABLE                         R15 K29 [{"inputPinIds", "inputPinToConnectionMap", "inputLabelPinToConnectionMap", "outputPinToConnectionMap", "className", "id", "nodeType", "name", "parentId"}]
      141 NEWTABLE                         R16 0 0
      143 SETTABLEKS                       R16 R15 K14 ["inputPinIds"]
      145 NEWTABLE                         R16 0 0
      147 SETTABLEKS                       R16 R15 K16 ["inputPinToConnectionMap"]
      149 NEWTABLE                         R16 0 0
      151 SETTABLEKS                       R16 R15 K17 ["inputLabelPinToConnectionMap"]
      153 SETTABLEKS                       R13 R15 K15 ["outputPinToConnectionMap"]
      155 GETUPVAL                         R16 5
      156 GETTABLEKS                       R16 R16 K30 ["PARAMETER_NODE_CLASSNAME"]
      158 SETTABLEKS                       R16 R15 K18 ["className"]
      160 GETTABLEKS                       R16 R11 K0 ["nodeId"]
      162 SETTABLEKS                       R16 R15 K19 ["id"]
      164 GETTABLEKS                       R16 R11 K31 ["parameterType"]
      166 SETTABLEKS                       R16 R15 K6 ["nodeType"]
      168 GETTABLEKS                       R16 R11 K32 ["parameterData"]
      170 GETTABLEKS                       R16 R16 K33 ["parameterBindingName"]
      172 SETTABLEKS                       R16 R15 K21 ["name"]
      174 LOADNIL                          R16
      175 SETTABLEKS                       R16 R15 K28 ["parentId"]
      177 CALL                             R14 1 1
      178 GETTABLEKS                       R15 R11 K0 ["nodeId"]
      180 SETTABLE                         R14 R6 R15
      181 FORGLOOP                         R7 2 ; [-60]
      183 GETIMPORT                        R7 K13 [table.freeze]
      185 DUPTABLE                         R8 K37 [{"graphInstanceId", "lookup", "output"}]
      186 JUMPIFNOT                        R1 ; [+6]
      187 GETUPVAL                         R9 6
      188 MOVE                             R11 R1
      189 NAMECALL                         R9 R9 K38 ["instanceToId"]
      191 CALL                             R9 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R9
      194 SETTABLEKS                       R9 R8 K34 ["graphInstanceId"]
      196 GETIMPORT                        R9 K13 [table.freeze]
      198 MOVE                             R10 R6
      199 CALL                             R9 1 1
      200 SETTABLEKS                       R9 R8 K35 ["lookup"]
      202 SETTABLEKS                       R5 R8 K36 ["output"]
      204 CALL                             R7 1 -1
      205 RETURN                           R7 -1

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"nodeProps", "nodeId"}]
        4 SETTABLEKS                       R1 R2 K0 ["nodeProps"]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["nodeId"]
        9 RETURN                           R2 1

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETTABLEKS                       R4 R0 K0 ["lookup"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R5 R3 K1 ["outputPinToConnectionMap"]
        8 GETTABLE                         R4 R5 R2
        9 RETURN                           R4 1

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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
       23 JUMPIFNOT                        R5 ; [+92]
       24 GETTABLEKS                       R7 R5 K4 ["Parent"]
       26 JUMPIFNOT                        R7 ; [+89]
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
      113 LOADNIL                          R7
      114 SETTABLEKS                       R7 R5 K4 ["Parent"]
      116 GETUPVAL                         R7 0
      117 GETTABLEKS                       R7 R7 K13 ["removeOrderedInputPin"]
      119 MOVE                             R8 R0
      120 MOVE                             R9 R1
      121 GETTABLEKS                       R10 R4 K3 ["inputNodeId"]
      123 GETTABLEKS                       R11 R4 K9 ["inputNodePinId"]
      125 CALL                             R7 4 0
      126 LOADB                            R7 1
      127 RETURN                           R7 1

PROTO_75:
        0 LOADK                            R2 K0 ["connectionHint_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_76:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^connectionHint_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_77:
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

PROTO_78:
        0 MOVE                             R9 R2
        1 NAMECALL                         R7 R0 K0 ["idToInstance"]
        3 CALL                             R7 2 1
        4 MOVE                             R10 R4
        5 NAMECALL                         R8 R0 K0 ["idToInstance"]
        7 CALL                             R8 2 1
        8 JUMPIFEQKNIL                     R7 ; [+18]
       10 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       11 NAMECALL                         R9 R7 K2 ["IsA"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+12]
       15 JUMPIFEQKNIL                     R8 ; [+11]
       17 LOADK                            R11 K1 ["AnimationNodeDefinition"]
       18 NAMECALL                         R9 R8 K2 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIF                           R9 ; [+6]
       22 LOADK                            R11 K3 ["Folder"]
       23 NAMECALL                         R9 R8 K2 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIF                           R9 ; [+1]
       27 RETURN                           R0 0
       28 LOADK                            R11 K4 ["AnimationGraphDefinition"]
       29 NAMECALL                         R9 R7 K5 ["FindFirstAncestorWhichIsA"]
       31 CALL                             R9 2 1
       32 JUMPIF                           R9 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K6 ["_findNodeOutputBinding"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R4
       39 MOVE                             R13 R5
       40 CALL                             R10 3 1
       41 JUMPIFNOT                        R10 ; [+6]
       42 GETTABLEKS                       R13 R10 K7 ["wireId"]
       44 NAMECALL                         R11 R0 K0 ["idToInstance"]
       46 CALL                             R11 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R11
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K8 ["_findNodeInputBinding"]
       52 MOVE                             R13 R1
       53 MOVE                             R14 R2
       54 MOVE                             R15 R3
       55 GETUPVAL                         R17 1
       56 CALL                             R17 0 1
       57 JUMPIFNOT                        R17 ; [+2]
       58 MOVE                             R16 R6
       59 JUMP                             ; [+1]
       60 LOADNIL                          R16
       61 CALL                             R12 4 1
       62 JUMPIFNOT                        R12 ; [+6]
       63 GETTABLEKS                       R15 R12 K7 ["wireId"]
       65 NAMECALL                         R13 R0 K0 ["idToInstance"]
       67 CALL                             R13 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R13
       70 LOADK                            R16 K3 ["Folder"]
       71 NAMECALL                         R14 R8 K2 ["IsA"]
       73 CALL                             R14 2 1
       74 JUMPIFNOT                        R14 ; [+41]
       75 LOADNIL                          R14
       76 GETUPVAL                         R15 1
       77 CALL                             R15 0 1
       78 JUMPIFNOT                        R15 ; [+19]
       79 JUMPIFEQKNIL                     R6 ; [+18]
       81 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
       83 CALL                             R15 1 1
       84 GETTABLE                         R16 R15 R6
       85 JUMPIFNOT                        R16 ; [+12]
       86 MOVE                             R19 R16
       87 NAMECALL                         R17 R7 K10 ["FindFirstChild"]
       89 CALL                             R17 2 1
       90 JUMPIFEQKNIL                     R17 ; [+7]
       92 LOADK                            R20 K11 ["ObjectValue"]
       93 NAMECALL                         R18 R17 K2 ["IsA"]
       95 CALL                             R18 2 1
       96 JUMPIFNOT                        R18 ; [+1]
       97 MOVE                             R14 R17
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K12 ["setParameterConnection"]
      101 MOVE                             R16 R0
      102 MOVE                             R17 R9
      103 MOVE                             R18 R7
      104 MOVE                             R19 R2
      105 MOVE                             R20 R3
      106 MOVE                             R21 R8
      107 MOVE                             R22 R13
      108 GETUPVAL                         R24 1
      109 CALL                             R24 0 1
      110 JUMPIFNOT                        R24 ; [+2]
      111 MOVE                             R23 R14
      112 JUMP                             ; [+1]
      113 LOADNIL                          R23
      114 CALL                             R15 8 -1
      115 RETURN                           R15 -1
      116 LOADNIL                          R14
      117 GETUPVAL                         R15 0
      118 GETTABLEKS                       R15 R15 K13 ["hasDynamicInputPins"]
      120 MOVE                             R16 R1
      121 MOVE                             R17 R2
      122 CALL                             R15 2 1
      123 JUMPIFNOT                        R15 ; [+132]
      124 NAMECALL                         R15 R7 K9 ["GetOrderedInputPinNames"]
      126 CALL                             R15 1 1
      127 JUMPIFNOT                        R10 ; [+7]
      128 GETIMPORT                        R16 K16 [table.find]
      130 MOVE                             R17 R15
      131 GETTABLEKS                       R18 R10 K17 ["inputNodePinId"]
      133 CALL                             R16 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R16
      136 JUMPIFNOT                        R16 ; [+5]
      137 GETIMPORT                        R17 K19 [table.remove]
      139 MOVE                             R18 R15
      140 MOVE                             R19 R16
      141 CALL                             R17 2 0
      142 JUMPIFNOT                        R12 ; [+7]
      143 GETIMPORT                        R17 K16 [table.find]
      145 MOVE                             R18 R15
      146 GETTABLEKS                       R19 R12 K17 ["inputNodePinId"]
      148 CALL                             R17 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R17
      151 JUMPIFNOT                        R17 ; [+5]
      152 GETIMPORT                        R18 K19 [table.remove]
      154 MOVE                             R19 R15
      155 MOVE                             R20 R17
      156 CALL                             R18 2 0
      157 GETUPVAL                         R19 2
      158 CALL                             R19 0 1
      159 JUMPIFNOT                        R19 ; [+36]
      160 GETUPVAL                         R19 3
      161 GETTABLEKS                       R19 R19 K20 ["NODE_CONFIGURATION_NAME"]
      163 LOADK                            R22 K21 ["Configuration"]
      164 NAMECALL                         R20 R8 K2 ["IsA"]
      166 CALL                             R20 2 1
      167 JUMPIFNOT                        R20 ; [+2]
      168 MOVE                             R18 R8
      169 JUMP                             ; [+17]
      170 MOVE                             R22 R19
      171 NAMECALL                         R20 R8 K10 ["FindFirstChild"]
      173 CALL                             R20 2 1
      174 JUMPIFEQKNIL                     R20 ; [+3]
      176 MOVE                             R18 R20
      177 JUMP                             ; [+9]
      178 GETIMPORT                        R20 K24 [Instance.new]
      180 LOADK                            R21 K21 ["Configuration"]
      181 CALL                             R20 1 1
      182 SETTABLEKS                       R19 R20 K25 ["Name"]
      184 SETTABLEKS                       R8 R20 K26 ["Parent"]
      186 MOVE                             R18 R20
      187 GETUPVAL                         R20 3
      188 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      190 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      192 NAMECALL                         R18 R18 K29 ["GetAttribute"]
      194 CALL                             R18 2 1
      195 JUMP                             ; [+8]
      196 GETUPVAL                         R20 3
      197 GETTABLEKS                       R20 R20 K27 ["NODE_ATTRIBUTES"]
      199 GETTABLEKS                       R20 R20 K28 ["DisplayName"]
      201 NAMECALL                         R18 R8 K29 ["GetAttribute"]
      203 CALL                             R18 2 1
      204 GETUPVAL                         R19 4
      205 CALL                             R19 0 1
      206 JUMPIFNOT                        R19 ; [+33]
      207 GETTABLEKS                       R21 R1 K30 ["lookup"]
      209 GETTABLE                         R20 R21 R4
      210 JUMPIFNOT                        R20 ; [+6]
      211 GETTABLEKS                       R20 R1 K30 ["lookup"]
      213 GETTABLE                         R19 R20 R4
      214 GETTABLEKS                       R19 R19 K31 ["name"]
      216 JUMPIF                           R19 ; [+2]
      217 GETTABLEKS                       R19 R8 K25 ["Name"]
      219 LOADK                            R22 K32 ["Node%d*$"]
      220 LOADK                            R23 K33 [""]
      221 NAMECALL                         R20 R19 K34 ["gsub"]
      223 CALL                             R20 3 1
      224 MOVE                             R19 R20
      225 GETUPVAL                         R20 0
      226 GETTABLEKS                       R20 R20 K35 ["getDynamicInputPinNameFromInputPinIds"]
      228 MOVE                             R21 R15
      229 JUMPIFNOT                        R18 ; [+6]
      230 FASTCALL1                        TOSTRING R18 ; [+3]
      231 MOVE                             R23 R18
      232 GETIMPORT                        R22 K37 [tostring]
      234 CALL                             R22 1 1
      235 JUMP                             ; [+1]
      236 MOVE                             R22 R19
      237 CALL                             R20 2 1
      238 MOVE                             R14 R20
      239 JUMP                             ; [+17]
      240 GETUPVAL                         R19 0
      241 GETTABLEKS                       R19 R19 K35 ["getDynamicInputPinNameFromInputPinIds"]
      243 MOVE                             R20 R15
      244 JUMPIFNOT                        R18 ; [+6]
      245 FASTCALL1                        TOSTRING R18 ; [+3]
      246 MOVE                             R22 R18
      247 GETIMPORT                        R21 K37 [tostring]
      249 CALL                             R21 1 1
      250 JUMP                             ; [+2]
      251 GETTABLEKS                       R21 R8 K25 ["Name"]
      253 CALL                             R19 2 1
      254 MOVE                             R14 R19
      255 JUMP                             ; [+1]
      256 MOVE                             R14 R3
      257 JUMPIFEQ                         R14 R3 ; [+9]
      259 GETUPVAL                         R15 0
      260 GETTABLEKS                       R15 R15 K8 ["_findNodeInputBinding"]
      262 MOVE                             R16 R1
      263 MOVE                             R17 R2
      264 MOVE                             R18 R14
      265 CALL                             R15 3 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R15
      268 JUMPIFNOT                        R15 ; [+6]
      269 GETTABLEKS                       R18 R15 K7 ["wireId"]
      271 NAMECALL                         R16 R0 K0 ["idToInstance"]
      273 CALL                             R16 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R16
      276 JUMPIFEQKNIL                     R13 ; [+13]
      278 MOVE                             R20 R9
      279 NAMECALL                         R18 R13 K38 ["IsDescendantOf"]
      281 CALL                             R18 2 1
      282 JUMPIFNOT                        R18 ; [+7]
      283 LOADK                            R20 K11 ["ObjectValue"]
      284 NAMECALL                         R18 R13 K2 ["IsA"]
      286 CALL                             R18 2 1
      287 JUMPIFNOT                        R18 ; [+2]
      288 MOVE                             R17 R13
      289 JUMP                             ; [+32]
      290 JUMPIFEQKNIL                     R16 ; [+13]
      292 MOVE                             R20 R9
      293 NAMECALL                         R18 R16 K38 ["IsDescendantOf"]
      295 CALL                             R18 2 1
      296 JUMPIFNOT                        R18 ; [+7]
      297 LOADK                            R20 K11 ["ObjectValue"]
      298 NAMECALL                         R18 R16 K2 ["IsA"]
      300 CALL                             R18 2 1
      301 JUMPIFNOT                        R18 ; [+2]
      302 MOVE                             R17 R16
      303 JUMP                             ; [+18]
      304 JUMPIFEQKNIL                     R11 ; [+13]
      306 MOVE                             R20 R9
      307 NAMECALL                         R18 R11 K38 ["IsDescendantOf"]
      309 CALL                             R18 2 1
      310 JUMPIFNOT                        R18 ; [+7]
      311 LOADK                            R20 K11 ["ObjectValue"]
      312 NAMECALL                         R18 R11 K2 ["IsA"]
      314 CALL                             R18 2 1
      315 JUMPIFNOT                        R18 ; [+2]
      316 MOVE                             R17 R11
      317 JUMP                             ; [+4]
      318 GETIMPORT                        R17 K24 [Instance.new]
      320 LOADK                            R18 K11 ["ObjectValue"]
      321 CALL                             R17 1 1
      322 JUMPIFNOT                        R16 ; [+5]
      323 JUMPIFEQ                         R16 R17 ; [+4]
      325 LOADNIL                          R18
      326 SETTABLEKS                       R18 R16 K26 ["Parent"]
      328 JUMPIFNOT                        R11 ; [+5]
      329 JUMPIFEQ                         R11 R17 ; [+4]
      331 LOADNIL                          R18
      332 SETTABLEKS                       R18 R11 K26 ["Parent"]
      334 JUMPIFNOT                        R13 ; [+5]
      335 JUMPIFEQ                         R13 R17 ; [+4]
      337 LOADNIL                          R18
      338 SETTABLEKS                       R18 R13 K26 ["Parent"]
      340 NAMECALL                         R18 R7 K39 ["GetChildren"]
      342 CALL                             R18 1 3
      343 FORGPREP                         R18
      344 LOADK                            R25 K11 ["ObjectValue"]
      345 NAMECALL                         R23 R22 K2 ["IsA"]
      347 CALL                             R23 2 1
      348 JUMPIFNOT                        R23 ; [+9]
      349 GETTABLEKS                       R23 R22 K25 ["Name"]
      351 JUMPIFNOTEQ                      R23 R14 ; [+6]
      353 JUMPIFEQ                         R22 R17 ; [+4]
      355 LOADNIL                          R23
      356 SETTABLEKS                       R23 R22 K26 ["Parent"]
      358 FORGLOOP                         R18 2 ; [-15]
      360 NAMECALL                         R18 R7 K9 ["GetOrderedInputPinNames"]
      362 CALL                             R18 1 1
      363 JUMPIFEQ                         R14 R3 ; [+19]
      365 GETIMPORT                        R19 K16 [table.find]
      367 MOVE                             R20 R18
      368 MOVE                             R21 R3
      369 CALL                             R19 2 1
      370 GETIMPORT                        R20 K16 [table.find]
      372 MOVE                             R21 R18
      373 MOVE                             R22 R14
      374 CALL                             R20 2 1
      375 JUMPIFNOT                        R19 ; [+1]
      376 SETTABLE                         R14 R18 R19
      377 JUMPIFNOT                        R20 ; [+5]
      378 GETIMPORT                        R21 K19 [table.remove]
      380 MOVE                             R22 R18
      381 MOVE                             R23 R20
      382 CALL                             R21 2 0
      383 GETIMPORT                        R19 K16 [table.find]
      385 MOVE                             R20 R18
      386 MOVE                             R21 R14
      387 CALL                             R19 2 1
      388 JUMPIF                           R19 ; [+7]
      389 FASTCALL2                        TABLE_INSERT R18 R14 ; [+5]
      391 MOVE                             R20 R18
      392 MOVE                             R21 R14
      393 GETIMPORT                        R19 K41 [table.insert]
      395 CALL                             R19 2 0
      396 MOVE                             R21 R18
      397 NAMECALL                         R19 R7 K42 ["SetOrderedInputPinNames"]
      399 CALL                             R19 2 0
      400 SETTABLEKS                       R14 R17 K25 ["Name"]
      402 SETTABLEKS                       R8 R17 K43 ["Value"]
      404 SETTABLEKS                       R7 R17 K26 ["Parent"]
      406 MOVE                             R21 R17
      407 NAMECALL                         R19 R0 K44 ["instanceToId"]
      409 CALL                             R19 2 1
      410 MOVE                             R20 R14
      411 RETURN                           R19 2

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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

PROTO_85:
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

PROTO_86:
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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K6 ["getOrCreateAnimSavesFolder"]
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
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K18 ["setNodePosition"]
       50 MOVE                             R7 R5
       51 GETIMPORT                        R8 K21 [Vector2.zero]
       53 CALL                             R6 2 0
       54 SETTABLEKS                       R3 R4 K17 ["Parent"]
       56 RETURN                           R4 1

PROTO_87:
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
       38 GETTABLEKS                       R6 R1 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K15 ["Instances"]
       42 GETTABLEKS                       R6 R6 K16 ["InstanceRegistry"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["Instances"]
       51 GETTABLEKS                       R7 R7 K17 ["InstanceSelectionRegistry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K18 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K19 ["NativeGraphContext"]
       60 GETTABLEKS                       R8 R8 K20 ["NewAnimationNode"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K21 ["Parent"]
       67 GETTABLEKS                       R9 R9 K22 ["NodeGraphing"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K23 ["NodeViewTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R1 K10 ["Util"]
       79 GETTABLEKS                       R11 R11 K24 ["Signals"]
       81 GETTABLEKS                       R11 R11 K25 ["Experimental"]
       83 GETTABLEKS                       R11 R11 K26 ["SignalExperimentalUtils"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R1 K21 ["Parent"]
       90 GETTABLEKS                       R12 R12 K24 ["Signals"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K10 ["Util"]
       97 GETTABLEKS                       R13 R13 K24 ["Signals"]
       99 GETTABLEKS                       R13 R13 K27 ["SignalsAnimationUtils"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R1 K10 ["Util"]
      106 GETTABLEKS                       R14 R14 K24 ["Signals"]
      108 GETTABLEKS                       R14 R14 K28 ["SignalsInstanceUtils"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R1 K10 ["Util"]
      115 GETTABLEKS                       R15 R15 K24 ["Signals"]
      117 GETTABLEKS                       R15 R15 K29 ["TypedInstanceSignals"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R1 K10 ["Util"]
      124 GETTABLEKS                       R16 R16 K30 ["getDeduplicatedName"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R1 K31 ["Flags"]
      131 GETTABLEKS                       R17 R17 K32 ["getFFlagAnimGraphUIInputPanelUseUIName"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R1 K31 ["Flags"]
      138 GETTABLEKS                       R18 R18 K33 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R1 K31 ["Flags"]
      145 GETTABLEKS                       R19 R19 K34 ["getFFlagAnimationEditorMoveDisplayNameToConfig"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R1 K10 ["Util"]
      152 GETTABLEKS                       R20 R20 K35 ["parseAnimationNodeType"]
      154 CALL                             R19 1 1
      155 NEWTABLE                         R20 64 0
      157 DUPCLOSURE                       R21 K36 [PROTO_0]
      158 DUPCLOSURE                       R22 K37 [PROTO_2]
      159 CAPTURE                          VAL R13
      160 DUPCLOSURE                       R23 K38 [PROTO_3]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R4
      163 SETTABLEKS                       R23 R20 K39 ["getOrCreateParameterInstance"]
      165 DUPCLOSURE                       R23 K40 [PROTO_4]
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R23 R20 K41 ["createExistingParameterInstance"]
      170 DUPCLOSURE                       R23 K42 [PROTO_6]
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R17
      173 SETTABLEKS                       R23 R20 K43 ["getParameterType"]
      175 DUPCLOSURE                       R23 K44 [PROTO_7]
      176 SETTABLEKS                       R23 R20 K45 ["setParameterBindingName"]
      178 DUPCLOSURE                       R23 K46 [PROTO_8]
      179 CAPTURE                          VAL R4
      180 SETTABLEKS                       R23 R20 K47 ["getNodePosition"]
      182 DUPCLOSURE                       R23 K48 [PROTO_9]
      183 CAPTURE                          VAL R4
      184 SETTABLEKS                       R23 R20 K49 ["setNodePosition"]
      186 DUPCLOSURE                       R23 K50 [PROTO_10]
      187 CAPTURE                          VAL R4
      188 SETTABLEKS                       R23 R20 K51 ["setNodeSize"]
      190 DUPCLOSURE                       R23 K52 [PROTO_11]
      191 CAPTURE                          VAL R4
      192 SETTABLEKS                       R23 R20 K53 ["setNodeIsCollapsed"]
      194 DUPCLOSURE                       R23 K54 [PROTO_12]
      195 CAPTURE                          VAL R4
      196 SETTABLEKS                       R23 R20 K55 ["setDisplayName"]
      198 DUPCLOSURE                       R23 K56 [PROTO_13]
      199 SETTABLEKS                       R23 R20 K57 ["getParameterInstanceName"]
      201 DUPCLOSURE                       R23 K58 [PROTO_14]
      202 CAPTURE                          VAL R20
      203 SETTABLEKS                       R23 R20 K59 ["getAllParameterInstancesFromName"]
      205 DUPCLOSURE                       R23 K60 [PROTO_16]
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R20
      211 SETTABLEKS                       R23 R20 K61 ["observeWireInfo"]
      213 DUPCLOSURE                       R23 K62 [PROTO_22]
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R17
      218 SETTABLEKS                       R23 R20 K63 ["observeNodeConnectionMap"]
      220 DUPCLOSURE                       R23 K64 [PROTO_23]
      221 SETTABLEKS                       R23 R20 K65 ["matchParameterBinding"]
      223 DUPCLOSURE                       R23 K66 [PROTO_26]
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R10
      228 SETTABLEKS                       R23 R20 K67 ["observeParameterNodeInfo"]
      230 DUPCLOSURE                       R23 K68 [PROTO_36]
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R14
      236 SETTABLEKS                       R23 R20 K69 ["observeNodeProps"]
      238 DUPCLOSURE                       R23 K70 [PROTO_38]
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R10
      241 SETTABLEKS                       R23 R20 K71 ["observeNodeType"]
      243 DUPCLOSURE                       R23 K72 [PROTO_41]
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R22
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R20
      250 CAPTURE                          VAL R10
      251 SETTABLEKS                       R23 R20 K73 ["observeNodeInfo"]
      253 DUPCLOSURE                       R23 K74 [PROTO_44]
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R20
      256 SETTABLEKS                       R23 R20 K75 ["observeNodeInfoLookupList"]
      258 DUPCLOSURE                       R23 K76 [PROTO_47]
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R20
      263 SETTABLEKS                       R23 R20 K77 ["observeParameterNodeInfoLookupList"]
      265 DUPCLOSURE                       R23 K78 [PROTO_50]
      266 CAPTURE                          VAL R13
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R10
      269 SETTABLEKS                       R23 R20 K79 ["observeRenderInfoMap"]
      271 DUPCLOSURE                       R23 K80 [PROTO_55]
      272 CAPTURE                          VAL R13
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R4
      275 CAPTURE                          VAL R14
      276 CAPTURE                          VAL R10
      277 SETTABLEKS                       R23 R20 K81 ["observeRenderInfo"]
      279 DUPCLOSURE                       R23 K82 [PROTO_59]
      280 CAPTURE                          VAL R12
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R13
      283 SETTABLEKS                       R23 R20 K83 ["observeEditingAnimationGraphDefinition"]
      285 DUPCLOSURE                       R23 K84 [PROTO_67]
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R17
      290 CAPTURE                          VAL R4
      291 SETTABLEKS                       R23 R20 K85 ["observeGraphState"]
      293 DUPCLOSURE                       R23 K86 [PROTO_68]
      294 SETTABLEKS                       R23 R20 K87 ["fitGraphRect"]
      296 DUPCLOSURE                       R23 K88 [PROTO_69]
      297 CAPTURE                          VAL R17
      298 SETTABLEKS                       R23 R20 K89 ["_findNodeInputBinding"]
      300 DUPCLOSURE                       R23 K90 [PROTO_70]
      301 SETTABLEKS                       R23 R20 K91 ["_findNodeOutputBinding"]
      303 DUPCLOSURE                       R23 K92 [PROTO_71]
      304 CAPTURE                          VAL R20
      305 CAPTURE                          VAL R17
      306 SETTABLEKS                       R23 R20 K93 ["removeNodeInputConnection"]
      308 DUPCLOSURE                       R23 K94 [PROTO_72]
      309 SETTABLEKS                       R23 R20 K95 ["isAParameterWire"]
      311 DUPCLOSURE                       R23 K96 [PROTO_73]
      312 CAPTURE                          VAL R20
      313 SETTABLEKS                       R23 R20 K97 ["removeOrderedInputPin"]
      315 DUPCLOSURE                       R23 K98 [PROTO_74]
      316 CAPTURE                          VAL R20
      317 CAPTURE                          VAL R17
      318 SETTABLEKS                       R23 R20 K99 ["removeNodeOutputConnection"]
      320 DUPCLOSURE                       R23 K100 [PROTO_75]
      321 SETTABLEKS                       R23 R20 K101 ["getParameterWireName"]
      323 DUPCLOSURE                       R23 K102 [PROTO_76]
      324 SETTABLEKS                       R23 R20 K103 ["getParameterWireInputPinId"]
      326 DUPCLOSURE                       R23 K104 [PROTO_77]
      327 CAPTURE                          VAL R20
      328 CAPTURE                          VAL R17
      329 CAPTURE                          VAL R4
      330 SETTABLEKS                       R23 R20 K105 ["setParameterConnection"]
      332 DUPCLOSURE                       R23 K106 [PROTO_78]
      333 CAPTURE                          VAL R20
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R18
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R16
      338 SETTABLEKS                       R23 R20 K107 ["setNodeConnection"]
      340 DUPCLOSURE                       R23 K108 [PROTO_79]
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R20
      343 SETTABLEKS                       R23 R20 K109 ["hasDynamicInputPins"]
      345 DUPCLOSURE                       R23 K110 [PROTO_80]
      346 CAPTURE                          VAL R2
      347 SETTABLEKS                       R23 R20 K111 ["nodeTypeHasDynamicInputPins"]
      349 DUPCLOSURE                       R23 K112 [PROTO_81]
      350 SETTABLEKS                       R23 R20 K113 ["reorderPins"]
      352 DUPCLOSURE                       R23 K114 [PROTO_82]
      353 CAPTURE                          VAL R20
      354 SETTABLEKS                       R23 R20 K115 ["renameDynamicInputPin"]
      356 DUPCLOSURE                       R23 K116 [PROTO_83]
      357 CAPTURE                          VAL R20
      358 SETTABLEKS                       R23 R20 K117 ["getDynamicInputPinName"]
      360 DUPCLOSURE                       R23 K118 [PROTO_84]
      361 CAPTURE                          VAL R20
      362 SETTABLEKS                       R23 R20 K119 ["getDynamicInputPinNameFromInputNode"]
      364 DUPCLOSURE                       R23 K120 [PROTO_85]
      365 SETTABLEKS                       R23 R20 K121 ["getDynamicInputPinNameFromInputPinIds"]
      367 DUPCLOSURE                       R23 K122 [PROTO_86]
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R15
      370 CAPTURE                          VAL R7
      371 CAPTURE                          VAL R20
      372 SETTABLEKS                       R23 R20 K123 ["createNewAnimationGraph"]
      374 DUPCLOSURE                       R23 K124 [PROTO_87]
      375 CAPTURE                          VAL R7
      376 CAPTURE                          VAL R0
      377 CAPTURE                          VAL R20
      378 SETTABLEKS                       R23 R20 K125 ["createNodeOfType"]
      380 RETURN                           R20 1
