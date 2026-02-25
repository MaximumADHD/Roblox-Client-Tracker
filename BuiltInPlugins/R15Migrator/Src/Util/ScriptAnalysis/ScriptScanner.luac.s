PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Variables"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K1 ["IsHumanoidVariable"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+26]
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R8 1
       12 GETUPVAL                         R9 2
       13 MOVE                             R10 R4
       14 NAMECALL                         R6 R6 K2 ["FindVariableAccess"]
       16 CALL                             R6 4 1
       17 JUMPIFNOT                        R6 ; [+18]
       18 NEWTABLE                         R6 0 1
       20 GETUPVAL                         R10 4
       21 GETTABLEKS                       R9 R10 K3 ["Conversions"]
       23 GETTABLEKS                       R8 R9 K4 ["Humanoid"]
       25 GETUPVAL                         R9 5
       26 GETTABLE                         R7 R8 R9
       27 SETLIST                          R6 R7 1 [1]
       29 SETUPVAL                         R6 3
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R6 R7 K5 ["HumanoidKey"]
       33 SETUPVAL                         R6 6
       34 LOADB                            R6 1
       35 RETURN                           R6 1
       36 FORGLOOP                         R1 2 ; [-32]
       38 LOADB                            R1 0
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["PartKey"]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R7 R8 K1 ["Conversions"]
        6 GETTABLEKS                       R6 R7 K2 ["Parts"]
        8 GETTABLE                         R5 R6 R2
        9 JUMPIF                           R5 ; [+2]
       10 NEWTABLE                         R5 0 0
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K3 ["TraverseUp"]
       15 MOVE                             R7 R0
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R5
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          REF R4
       24 CALL                             R6 2 0
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R6 R9 K4 ["HumanoidNames"]
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 GETUPVAL                         R11 2
       32 MOVE                             R13 R3
       33 MOVE                             R14 R1
       34 MOVE                             R15 R10
       35 NAMECALL                         R11 R11 K5 ["FindVariableAccess"]
       37 CALL                             R11 4 1
       38 JUMPIFNOT                        R11 ; [+15]
       39 NEWTABLE                         R11 0 1
       41 GETUPVAL                         R15 0
       42 GETTABLEKS                       R14 R15 K1 ["Conversions"]
       44 GETTABLEKS                       R13 R14 K6 ["Humanoid"]
       46 GETTABLE                         R12 R13 R2
       47 SETLIST                          R11 R12 1 [1]
       49 MOVE                             R5 R11
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R4 R11 K7 ["HumanoidKey"]
       53 JUMP                             ; [+2]
       54 FORGLOOP                         R6 2 ; [-24]
       56 CLOSEUPVALS                      R4
       57 RETURN                           R4 2

PROTO_2:
        0 GETUPVAL                         R1 2
        1 GETTABLEKS                       R3 R0 K0 ["Variables"]
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 NAMECALL                         R1 R1 K1 ["FindVariableAssignment"]
        7 CALL                             R1 4 2
        8 SETUPVAL                         R1 0
        9 SETUPVAL                         R2 1
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 0
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 5
       16 SETTABLEKS                       R2 R1 K2 ["Value"]
       18 LOADB                            R1 1
       19 RETURN                           R1 1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["TraverseUp"]
        5 MOVE                             R7 R0
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          REF R4
        8 CAPTURE                          REF R5
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CALL                             R6 2 0
       14 CLOSEUPVALS                      R4
       15 RETURN                           R4 2

PROTO_4:
        0 LOADNIL                          R8
        1 LOADNIL                          R9
        2 GETUPVAL                         R11 0
        3 GETTABLEKS                       R10 R11 K0 ["TraverseUp"]
        5 MOVE                             R11 R0
        6 NEWCLOSURE                       R12 P0
        7 CAPTURE                          REF R8
        8 CAPTURE                          REF R9
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R4
       13 CALL                             R10 2 0
       14 MOVE                             R7 R8
       15 CLOSEUPVALS                      R8
       16 GETUPVAL                         R8 2
       17 MOVE                             R9 R0
       18 MOVE                             R10 R2
       19 MOVE                             R11 R4
       20 MOVE                             R12 R5
       21 CALL                             R8 4 2
       22 MOVE                             R12 R4
       23 MOVE                             R13 R7
       24 MOVE                             R14 R8
       25 MOVE                             R15 R6
       26 ADD                              R16 R2 R1
       27 ADD                              R17 R3 R1
       28 MOVE                             R18 R9
       29 NAMECALL                         R10 R0 K1 ["AddIssue"]
       31 CALL                             R10 8 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["Issues"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETTABLEKS                       R6 R5 K3 ["Type"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K4 ["PartKey"]
       11 JUMPIFNOTEQ                      R6 R7 ; [+17]
       13 GETTABLEKS                       R6 R5 K5 ["VariableName"]
       15 JUMPIFNOT                        R6 ; [+13]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R8 2
       18 GETUPVAL                         R9 3
       19 GETTABLEKS                       R10 R5 K5 ["VariableName"]
       21 NAMECALL                         R6 R6 K6 ["FindVariableAccess"]
       23 CALL                             R6 4 1
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETUPVAL                         R6 4
       26 SETTABLEKS                       R6 R5 K7 ["Suggestions"]
       28 RETURN                           R0 0
       29 FORGLOOP                         R1 2 [inext] ; [-24]
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["TraverseUp"]
        3 MOVE                             R6 R0
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R4
       10 CALL                             R5 2 0
       11 GETIMPORT                        R5 K2 [ipairs]
       13 GETTABLEKS                       R6 R0 K3 ["Issues"]
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 GETTABLEKS                       R10 R9 K4 ["Type"]
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R11 R12 K5 ["PartKey"]
       22 JUMPIFNOTEQ                      R10 R11 ; [+19]
       24 GETTABLEKS                       R11 R9 K6 ["Range"]
       26 GETTABLEKS                       R10 R11 K7 ["startLine"]
       28 JUMPIFNOTEQ                      R10 R3 ; [+13]
       30 GETUPVAL                         R10 2
       31 MOVE                             R12 R2
       32 MOVE                             R13 R1
       33 GETTABLEKS                       R14 R9 K8 ["InstanceName"]
       35 NAMECALL                         R10 R10 K9 ["FindVariableAccess"]
       37 CALL                             R10 4 1
       38 JUMPIFNOT                        R10 ; [+3]
       39 SETTABLEKS                       R4 R9 K10 ["Suggestions"]
       41 RETURN                           R0 0
       42 FORGLOOP                         R5 2 [inext] ; [-26]
       44 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Variables"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 0
        6 GETUPVAL                         R8 1
        7 GETUPVAL                         R9 2
        8 MOVE                             R10 R4
        9 NAMECALL                         R6 R6 K1 ["FindVariableAccess"]
       11 CALL                             R6 4 1
       12 JUMPIFNOT                        R6 ; [+28]
       13 GETTABLEKS                       R6 R5 K2 ["Value"]
       15 GETUPVAL                         R7 3
       16 JUMPIFEQ                         R6 R7 ; [+24]
       18 GETIMPORT                        R6 K5 [string.find]
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R4
       22 CALL                             R6 2 2
       23 GETUPVAL                         R8 4
       24 MOVE                             R10 R4
       25 MOVE                             R11 R4
       26 GETUPVAL                         R13 5
       27 GETTABLEKS                       R12 R13 K6 ["ReferenceKey"]
       29 GETUPVAL                         R13 6
       30 MOVE                             R14 R6
       31 MOVE                             R15 R7
       32 NEWTABLE                         R16 0 1
       34 GETUPVAL                         R17 3
       35 SETLIST                          R16 R17 1 [1]
       37 NAMECALL                         R8 R8 K7 ["AddIssue"]
       39 CALL                             R8 8 0
       40 RETURN                           R0 0
       41 FORGLOOP                         R1 2 ; [-37]
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["TraverseUp"]
        3 MOVE                             R6 R0
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CALL                             R5 2 0
       13 LOADB                            R5 0
       14 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R12 0
        1 GETTABLEKS                       R11 R12 K0 ["Conversions"]
        3 GETTABLE                         R10 R11 R0
        4 GETTABLE                         R9 R10 R6
        5 JUMPIF                           R9 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R10 1
        8 GETTABLEKS                       R12 R2 K1 ["Variables"]
       10 MOVE                             R13 R7
       11 MOVE                             R14 R4
       12 NAMECALL                         R10 R10 K2 ["FindVariableAssignment"]
       14 CALL                             R10 4 1
       15 GETTABLE                         R11 R9 R1
       16 JUMPIFEQ                         R6 R11 ; [+15]
       18 MOVE                             R13 R6
       19 MOVE                             R14 R10
       20 MOVE                             R15 R1
       21 MOVE                             R16 R8
       22 ADD                              R17 R4 R3
       23 ADD                              R18 R5 R3
       24 NEWTABLE                         R19 0 1
       26 GETTABLE                         R20 R9 R1
       27 SETLIST                          R19 R20 1 [1]
       29 NAMECALL                         R11 R2 K3 ["AddIssue"]
       31 CALL                             R11 8 0
       32 GETUPVAL                         R11 2
       33 MOVE                             R12 R2
       34 MOVE                             R13 R4
       35 MOVE                             R14 R7
       36 MOVE                             R15 R8
       37 GETTABLEKS                       R16 R9 K4 ["Part"]
       39 CALL                             R11 5 0
       40 GETTABLEKS                       R12 R9 K4 ["Part"]
       42 LENGTH                           R11 R12
       43 JUMPIFNOTEQKN                    R11 K5 [1] ; [+17]
       45 GETTABLEKS                       R12 R9 K4 ["Part"]
       47 GETTABLEN                        R11 R12 1
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R12 R13 K6 ["TraverseUp"]
       51 MOVE                             R13 R2
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R8
       60 CALL                             R12 2 0
       61 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["AttachmentsKey"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["AttachmentKey"]
        8 GETVARARGS                       R3 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["JointsKey"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["JointKey"]
        8 GETVARARGS                       R3 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["isR6Animation"]
        3 MOVE                             R8 R4
        4 LOADB                            R9 1
        5 CALL                             R7 2 1
        6 JUMPIF                           R7 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R9 R0 K1 ["Variables"]
       11 MOVE                             R10 R5
       12 MOVE                             R11 R2
       13 NAMECALL                         R7 R7 K2 ["FindVariableAssignment"]
       15 CALL                             R7 4 1
       16 MOVE                             R10 R4
       17 MOVE                             R11 R7
       18 GETUPVAL                         R13 2
       19 GETTABLEKS                       R12 R13 K3 ["AnimationKey"]
       21 MOVE                             R13 R6
       22 ADD                              R14 R2 R1
       23 ADD                              R15 R3 R1
       24 NEWTABLE                         R16 0 1
       26 GETUPVAL                         R18 0
       27 GETTABLEKS                       R17 R18 K4 ["getConvertedAssetUrl"]
       29 MOVE                             R18 R4
       30 CALL                             R17 1 -1
       31 SETLIST                          R16 R17 -1 [1]
       33 NAMECALL                         R8 R0 K5 ["AddIssue"]
       35 CALL                             R8 8 0
       36 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R9 R0 K0 ["Variables"]
        3 MOVE                             R10 R5
        4 MOVE                             R11 R2
        5 NAMECALL                         R7 R7 K1 ["FindVariableAssignment"]
        7 CALL                             R7 4 1
        8 MOVE                             R10 R4
        9 MOVE                             R11 R7
       10 GETUPVAL                         R13 1
       11 GETTABLEKS                       R12 R13 K2 ["RigTypeKey"]
       13 MOVE                             R13 R6
       14 ADD                              R14 R2 R1
       15 ADD                              R15 R3 R1
       16 NEWTABLE                         R16 0 1
       18 GETUPVAL                         R18 1
       19 GETTABLEKS                       R17 R18 K3 ["R15RigType"]
       21 SETLIST                          R16 R17 1 [1]
       23 NAMECALL                         R8 R0 K4 ["AddIssue"]
       25 CALL                             R8 8 0
       26 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["Offset"]
        5 GETVARARGS                       R2 5
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 GETUPVAL                         R11 2
        9 GETTABLEKS                       R10 R11 K1 ["TraverseUp"]
       11 MOVE                             R11 R0
       12 NEWCLOSURE                       R12 P0
       13 CAPTURE                          REF R8
       14 CAPTURE                          REF R9
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R4
       19 CALL                             R10 2 0
       20 MOVE                             R7 R8
       21 CLOSEUPVALS                      R8
       22 GETUPVAL                         R8 4
       23 MOVE                             R9 R0
       24 MOVE                             R10 R2
       25 MOVE                             R11 R4
       26 MOVE                             R12 R5
       27 CALL                             R8 4 2
       28 MOVE                             R12 R4
       29 MOVE                             R13 R7
       30 MOVE                             R14 R8
       31 MOVE                             R15 R6
       32 ADD                              R16 R2 R1
       33 ADD                              R17 R3 R1
       34 MOVE                             R18 R9
       35 NAMECALL                         R10 R0 K2 ["AddIssue"]
       37 CALL                             R10 8 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 LOADNIL                          R6
        2 LOADNIL                          R7
        3 GETUPVAL                         R9 1
        4 GETTABLEKS                       R8 R9 K0 ["TraverseUp"]
        6 MOVE                             R9 R5
        7 NEWCLOSURE                       R10 P0
        8 CAPTURE                          REF R6
        9 CAPTURE                          REF R7
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CALL                             R8 2 0
       15 CLOSEUPVALS                      R6
       16 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["Offset"]
        6 GETVARARGS                       R3 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["Offset"]
        6 GETVARARGS                       R3 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["Offset"]
        6 GETVARARGS                       R3 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_19:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["Offset"]
        6 GETVARARGS                       R3 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["Lines"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R7 R5 K3 ["Text"]
        9 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       11 GETUPVAL                         R10 1
       12 GETTABLEKS                       R9 R10 K5 ["GetPartNames"]
       14 CALL                             R9 0 1
       15 LOADB                            R10 1
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CALL                             R6 5 0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R7 R5 K3 ["Text"]
       26 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R9 R10 K6 ["GetR15PartNames"]
       31 CALL                             R9 0 1
       32 LOADB                            R10 1
       33 NEWCLOSURE                       R11 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CALL                             R6 5 0
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R7 R5 K3 ["Text"]
       41 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K7 ["GetAttachmentNames"]
       46 CALL                             R9 0 1
       47 LOADB                            R10 1
       48 NEWCLOSURE                       R11 P2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R5
       52 CALL                             R6 5 0
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R7 R5 K3 ["Text"]
       56 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R9 R10 K8 ["GetJointNames"]
       61 CALL                             R9 0 1
       62 LOADB                            R10 1
       63 NEWCLOSURE                       R11 P3
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CALL                             R6 5 0
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R7 R5 K3 ["Text"]
       71 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       73 NEWTABLE                         R9 0 1
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R10 R11 K9 ["R6RigType"]
       78 SETLIST                          R9 R10 1 [1]
       80 LOADB                            R10 0
       81 NEWCLOSURE                       R11 P4
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R5
       85 CALL                             R6 5 0
       86 GETUPVAL                         R6 8
       87 GETTABLEKS                       R7 R5 K3 ["Text"]
       89 GETTABLEKS                       R8 R5 K4 ["LineNo"]
       91 NEWCLOSURE                       R9 P5
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R5
       95 CALL                             R6 3 0
       96 FORGLOOP                         R1 2 [inext] ; [-91]
       98 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["Issues"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETUPVAL                         R6 0
        7 GETUPVAL                         R10 1
        8 NAMECALL                         R8 R5 K3 ["ConvertToDiagnostic"]
       10 CALL                             R8 2 -1
       11 NAMECALL                         R6 R6 K4 ["AddDiagnostic"]
       13 CALL                             R6 -1 0
       14 FORGLOOP                         R1 2 [inext] ; [-9]
       16 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R4 R0 K0 ["range"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["StartKey"]
        5 GETTABLE                         R3 R4 R5
        6 GETTABLEKS                       R2 R3 K2 ["line"]
        8 GETTABLEKS                       R5 R1 K0 ["range"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K1 ["StartKey"]
       13 GETTABLE                         R4 R5 R6
       14 GETTABLEKS                       R3 R4 K2 ["line"]
       16 JUMPIFNOTLT                      R2 R3 ; [+3]
       18 LOADB                            R2 1
       19 RETURN                           R2 1
       20 GETTABLEKS                       R4 R0 K0 ["range"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K1 ["StartKey"]
       25 GETTABLE                         R3 R4 R5
       26 GETTABLEKS                       R2 R3 K2 ["line"]
       28 GETTABLEKS                       R5 R1 K0 ["range"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K1 ["StartKey"]
       33 GETTABLE                         R4 R5 R6
       34 GETTABLEKS                       R3 R4 K2 ["line"]
       36 JUMPIFNOTEQ                      R2 R3 ; [+22]
       38 GETTABLEKS                       R5 R0 K0 ["range"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K1 ["StartKey"]
       43 GETTABLE                         R4 R5 R6
       44 GETTABLEKS                       R3 R4 K3 ["character"]
       46 GETTABLEKS                       R6 R1 K0 ["range"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K1 ["StartKey"]
       51 GETTABLE                         R5 R6 R7
       52 GETTABLEKS                       R4 R5 K3 ["character"]
       54 JUMPIFLE                         R3 R4 ; [+2]
       56 LOADB                            R2 0 +1
       57 LOADB                            R2 1
       58 RETURN                           R2 1
       59 LOADB                            R2 0
       60 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R3 R0 K1 ["TraverseBF"]
        9 CALL                             R3 2 0
       10 GETIMPORT                        R3 K4 [table.sort]
       12 MOVE                             R4 R2
       13 DUPCLOSURE                       R5 K5 [PROTO_22]
       14 CAPTURE                          UPVAL U1
       15 CALL                             R3 2 0
       16 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R4 R3 K0 ["TraverseBF"]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R3
        9 MOVE                             R6 R2
       10 CALL                             R4 2 1
       11 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R3 R0 K4 ["Src"]
        9 GETTABLEKS                       R2 R3 K5 ["Util"]
       11 GETTABLEKS                       R1 R2 K6 ["ScriptAnalysis"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["buildBlockTree"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["findR6Names"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["findAssetId"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R1 K12 ["R6Info"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R1 K13 ["StatementParser"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K8 [require]
       40 GETTABLEKS                       R8 R1 K14 ["BlockTree"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K8 [require]
       45 GETTABLEKS                       R9 R1 K15 ["Constants"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K8 [require]
       50 GETTABLEKS                       R10 R1 K16 ["DiagnosticList"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K8 [require]
       55 GETTABLEKS                       R14 R0 K4 ["Src"]
       57 GETTABLEKS                       R13 R14 K5 ["Util"]
       59 GETTABLEKS                       R12 R13 K17 ["AnimationConversion"]
       61 GETTABLEKS                       R11 R12 K18 ["AnimationConversionManager"]
       63 CALL                             R10 1 1
       64 NEWTABLE                         R11 1 0
       66 DUPCLOSURE                       R12 K19 [PROTO_1]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R13 K20 [PROTO_3]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R14 K21 [PROTO_4]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R12
       77 DUPCLOSURE                       R15 K22 [PROTO_6]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 DUPCLOSURE                       R16 K23 [PROTO_8]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 DUPCLOSURE                       R17 K24 [PROTO_9]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 DUPCLOSURE                       R18 K25 [PROTO_10]
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R5
       94 DUPCLOSURE                       R19 K26 [PROTO_11]
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R5
       97 DUPCLOSURE                       R20 K27 [PROTO_12]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R5
      101 DUPCLOSURE                       R21 K28 [PROTO_13]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 DUPCLOSURE                       R22 K29 [PROTO_20]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R20
      115 DUPCLOSURE                       R23 K30 [PROTO_23]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R8
      118 DUPCLOSURE                       R24 K31 [PROTO_24]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R22
      121 CAPTURE                          VAL R23
      122 SETTABLEKS                       R24 R11 K32 ["ScanScript"]
      124 RETURN                           R11 1
