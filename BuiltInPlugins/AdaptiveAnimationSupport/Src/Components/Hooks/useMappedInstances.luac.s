PROTO_0:
        0 JUMPIFNOT                        R0 ; [+24]
        1 LOADK                            R3 K0 ["Motor6D"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+18]
        6 LOADK                            R3 K2 ["Bone"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+13]
       11 LOADK                            R3 K3 ["Attachment"]
       12 NAMECALL                         R1 R0 K1 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+8]
       16 LOADK                            R3 K4 ["AnimationConstraint"]
       17 NAMECALL                         R1 R0 K1 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+4]
       21 GETUPVAL                         R1 0
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+1]
       24 RETURN                           R0 1
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 1
       10 SETTABLE                         R1 R2 R3
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R3 4
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R9 3
       18 GETTABLE                         R8 R9 R7
       19 JUMPIFNOT                        R8 ; [+2]
       20 LOADB                            R9 1
       21 SETTABLE                         R9 R2 R8
       22 FORGLOOP                         R3 2 ; [-6]
       24 GETUPVAL                         R3 5
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 NEWTABLE                         R0 0 0
       13 NEWTABLE                         R1 0 0
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 0
       20 MOVE                             R9 R6
       21 NAMECALL                         R7 R7 K0 ["GetJoint"]
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 4
       25 MOVE                             R9 R7
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R1 R6
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R11 R6 K1 ["Name"]
       31 NAMECALL                         R9 R9 K2 ["GetPropertyChangedSignal"]
       33 CALL                             R9 2 1
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R9 R9 K3 ["Connect"]
       43 CALL                             R9 2 1
       44 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       46 MOVE                             R11 R0
       47 MOVE                             R12 R9
       48 GETIMPORT                        R10 K6 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R2 2 ; [-33]
       53 NEWTABLE                         R2 0 0
       55 GETUPVAL                         R3 3
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 GETUPVAL                         R8 0
       60 MOVE                             R10 R7
       61 NAMECALL                         R8 R8 K0 ["GetJoint"]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 4
       65 MOVE                             R10 R8
       66 CALL                             R9 1 1
       67 JUMPIFNOT                        R9 ; [+1]
       68 SETTABLE                         R7 R2 R9
       69 FORGLOOP                         R3 2 ; [-11]
       71 GETUPVAL                         R3 2
       72 MOVE                             R4 R2
       73 CALL                             R3 1 0
       74 NEWTABLE                         R3 0 0
       76 GETUPVAL                         R4 3
       77 LOADNIL                          R5
       78 LOADNIL                          R6
       79 FORGPREP                         R4
       80 GETTABLE                         R9 R1 R8
       81 JUMPIFNOT                        R9 ; [+2]
       82 LOADB                            R10 1
       83 SETTABLE                         R10 R3 R9
       84 FORGLOOP                         R4 2 ; [-5]
       86 GETUPVAL                         R4 1
       87 MOVE                             R5 R3
       88 CALL                             R4 1 0
       89 NEWCLOSURE                       R4 P1
       90 CAPTURE                          VAL R0
       91 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADK                            R9 K0 ["DigitsRigDescription"]
        7 NAMECALL                         R7 R5 K1 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+4]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K2 ["handRigLabels"]
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["bodyRigLabels"]
       18 MOVE                             R7 R6
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 MOVE                             R14 R11
       23 NAMECALL                         R12 R5 K4 ["GetJoint"]
       25 CALL                             R12 2 1
       26 GETUPVAL                         R13 2
       27 MOVE                             R14 R12
       28 CALL                             R13 1 1
       29 JUMPIFNOT                        R13 ; [+2]
       30 LOADB                            R14 1
       31 SETTABLE                         R14 R0 R13
       32 FORGLOOP                         R7 2 ; [-11]
       34 FORGLOOP                         R1 2 ; [-29]
       36 GETUPVAL                         R1 3
       37 MOVE                             R2 R0
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R0 0 0
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["HumanoidRigDescription"]
       11 NAMECALL                         R1 R1 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+20]
       15 GETUPVAL                         R1 0
       16 NAMECALL                         R1 R1 K2 ["GetChildren"]
       18 CALL                             R1 1 3
       19 FORGPREP                         R1
       20 LOADK                            R8 K3 ["DigitsRigDescription"]
       21 NAMECALL                         R6 R5 K1 ["IsA"]
       23 CALL                             R6 2 1
       24 JUMPIFNOT                        R6 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       27 MOVE                             R7 R0
       28 MOVE                             R8 R5
       29 GETIMPORT                        R6 K6 [table.insert]
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-13]
       34 JUMP                             ; [+43]
       35 GETUPVAL                         R1 0
       36 LOADK                            R3 K3 ["DigitsRigDescription"]
       37 NAMECALL                         R1 R1 K1 ["IsA"]
       39 CALL                             R1 2 1
       40 JUMPIFNOT                        R1 ; [+37]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K7 ["Parent"]
       44 JUMPIFNOT                        R1 ; [+33]
       45 LOADK                            R4 K0 ["HumanoidRigDescription"]
       46 NAMECALL                         R2 R1 K1 ["IsA"]
       48 CALL                             R2 2 1
       49 JUMPIFNOT                        R2 ; [+28]
       50 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       52 MOVE                             R3 R0
       53 MOVE                             R4 R1
       54 GETIMPORT                        R2 K6 [table.insert]
       56 CALL                             R2 2 0
       57 NAMECALL                         R2 R1 K2 ["GetChildren"]
       59 CALL                             R2 1 3
       60 FORGPREP                         R2
       61 LOADK                            R9 K3 ["DigitsRigDescription"]
       62 NAMECALL                         R7 R6 K1 ["IsA"]
       64 CALL                             R7 2 1
       65 JUMPIFNOT                        R7 ; [+10]
       66 GETUPVAL                         R7 0
       67 JUMPIFEQ                         R6 R7 ; [+8]
       69 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       71 MOVE                             R8 R0
       72 MOVE                             R9 R6
       73 GETIMPORT                        R7 K6 [table.insert]
       75 CALL                             R7 2 0
       76 FORGLOOP                         R2 2 ; [-16]
       78 NEWCLOSURE                       R1 P0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U1
       83 MOVE                             R2 R1
       84 CALL                             R2 0 0
       85 NEWTABLE                         R2 0 0
       87 MOVE                             R3 R0
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 LOADK                            R11 K3 ["DigitsRigDescription"]
       92 NAMECALL                         R9 R7 K1 ["IsA"]
       94 CALL                             R9 2 1
       95 JUMPIFNOT                        R9 ; [+4]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K8 ["handRigLabels"]
       99 JUMP                             ; [+3]
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R8 R8 K9 ["bodyRigLabels"]
      103 MOVE                             R9 R8
      104 LOADNIL                          R10
      105 LOADNIL                          R11
      106 FORGPREP                         R9
      107 GETTABLEKS                       R16 R13 K10 ["Name"]
      109 NAMECALL                         R14 R7 K11 ["GetPropertyChangedSignal"]
      111 CALL                             R14 2 1
      112 NEWCLOSURE                       R16 P1
      113 CAPTURE                          VAL R1
      114 NAMECALL                         R14 R14 K12 ["Connect"]
      116 CALL                             R14 2 1
      117 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      119 MOVE                             R16 R2
      120 MOVE                             R17 R14
      121 GETIMPORT                        R15 K6 [table.insert]
      123 CALL                             R15 2 0
      124 FORGLOOP                         R9 2 ; [-18]
      126 FORGLOOP                         R3 2 ; [-36]
      128 NEWCLOSURE                       R3 P2
      129 CAPTURE                          VAL R2
      130 RETURN                           R3 1

PROTO_8:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["bodyRigLabels"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K1 ["useState"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K1 ["useState"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U2
       32 NEWTABLE                         R11 0 2
       34 MOVE                             R12 R0
       35 MOVE                             R13 R2
       36 SETLIST                          R11 R12 2 [1]
       38 CALL                             R9 2 0
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 NEWTABLE                         R11 0 1
       49 MOVE                             R12 R0
       50 SETLIST                          R11 R12 1 [1]
       52 CALL                             R9 2 0
       53 DUPTABLE                         R9 K6 [{"mapped", "labelMap", "otherMapped"}]
       54 SETTABLEKS                       R3 R9 K3 ["mapped"]
       56 SETTABLEKS                       R5 R9 K4 ["labelMap"]
       58 SETTABLEKS                       R7 R9 K5 ["otherMapped"]
       60 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 1
       10 SETTABLE                         R1 R2 R3
       11 NEWTABLE                         R2 0 0
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 4
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETUPVAL                         R10 3
       20 GETTABLE                         R9 R10 R8
       21 JUMPIFNOT                        R9 ; [+3]
       22 LOADB                            R10 1
       23 SETTABLE                         R10 R2 R9
       24 SETTABLE                         R8 R3 R9
       25 FORGLOOP                         R4 2 ; [-7]
       27 GETUPVAL                         R4 5
       28 MOVE                             R5 R2
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 6
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 NEWTABLE                         R0 0 0
       13 NEWTABLE                         R1 0 0
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 0
       20 MOVE                             R9 R6
       21 NAMECALL                         R7 R7 K0 ["GetJoint"]
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 4
       25 MOVE                             R9 R7
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R1 R6
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R11 R6 K1 ["Name"]
       31 NAMECALL                         R9 R9 K2 ["GetPropertyChangedSignal"]
       33 CALL                             R9 2 1
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 NAMECALL                         R9 R9 K3 ["Connect"]
       44 CALL                             R9 2 1
       45 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       47 MOVE                             R11 R0
       48 MOVE                             R12 R9
       49 GETIMPORT                        R10 K6 [table.insert]
       51 CALL                             R10 2 0
       52 FORGLOOP                         R2 2 ; [-34]
       54 NEWTABLE                         R2 0 0
       56 GETUPVAL                         R3 3
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 GETUPVAL                         R8 0
       61 MOVE                             R10 R7
       62 NAMECALL                         R8 R8 K0 ["GetJoint"]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 4
       66 MOVE                             R10 R8
       67 CALL                             R9 1 1
       68 JUMPIFNOT                        R9 ; [+1]
       69 SETTABLE                         R7 R2 R9
       70 FORGLOOP                         R3 2 ; [-11]
       72 GETUPVAL                         R3 2
       73 MOVE                             R4 R2
       74 CALL                             R3 1 0
       75 NEWTABLE                         R3 0 0
       77 GETUPVAL                         R4 3
       78 LOADNIL                          R5
       79 LOADNIL                          R6
       80 FORGPREP                         R4
       81 GETTABLE                         R9 R1 R8
       82 JUMPIFNOT                        R9 ; [+2]
       83 LOADB                            R10 1
       84 SETTABLE                         R10 R3 R9
       85 FORGLOOP                         R4 2 ; [-5]
       87 GETUPVAL                         R4 1
       88 MOVE                             R5 R3
       89 CALL                             R4 1 0
       90 NEWCLOSURE                       R4 P1
       91 CAPTURE                          VAL R0
       92 RETURN                           R4 1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["HumanoidRigDescription"]
        4 NAMECALL                         R1 R1 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+20]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K2 ["GetChildren"]
       11 CALL                             R1 1 3
       12 FORGPREP                         R1
       13 LOADK                            R8 K3 ["DigitsRigDescription"]
       14 NAMECALL                         R6 R5 K1 ["IsA"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       20 MOVE                             R7 R0
       21 MOVE                             R8 R5
       22 GETIMPORT                        R6 K6 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-13]
       27 RETURN                           R0 1
       28 GETUPVAL                         R1 0
       29 LOADK                            R3 K3 ["DigitsRigDescription"]
       30 NAMECALL                         R1 R1 K1 ["IsA"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+37]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K7 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+33]
       38 LOADK                            R4 K0 ["HumanoidRigDescription"]
       39 NAMECALL                         R2 R1 K1 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+28]
       43 FASTCALL2                        TABLE_INSERT R0 R1 ; [+5]
       45 MOVE                             R3 R0
       46 MOVE                             R4 R1
       47 GETIMPORT                        R2 K6 [table.insert]
       49 CALL                             R2 2 0
       50 NAMECALL                         R2 R1 K2 ["GetChildren"]
       52 CALL                             R2 1 3
       53 FORGPREP                         R2
       54 LOADK                            R9 K3 ["DigitsRigDescription"]
       55 NAMECALL                         R7 R6 K1 ["IsA"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+10]
       59 GETUPVAL                         R7 0
       60 JUMPIFEQ                         R6 R7 ; [+8]
       62 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       64 MOVE                             R8 R0
       65 MOVE                             R9 R6
       66 GETIMPORT                        R7 K6 [table.insert]
       68 CALL                             R7 2 0
       69 FORGLOOP                         R2 2 ; [-16]
       71 RETURN                           R0 1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 3
        4 FORGPREP                         R1
        5 LOADK                            R9 K0 ["DigitsRigDescription"]
        6 NAMECALL                         R7 R5 K1 ["IsA"]
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+4]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["handRigLabels"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K3 ["bodyRigLabels"]
       17 MOVE                             R7 R6
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 MOVE                             R14 R11
       22 NAMECALL                         R12 R5 K4 ["GetJoint"]
       24 CALL                             R12 2 1
       25 GETUPVAL                         R13 2
       26 MOVE                             R14 R12
       27 CALL                             R13 1 1
       28 JUMPIFNOT                        R13 ; [+2]
       29 LOADB                            R14 1
       30 SETTABLE                         R14 R0 R13
       31 FORGLOOP                         R7 2 ; [-11]
       33 FORGLOOP                         R1 2 ; [-29]
       35 GETUPVAL                         R1 3
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 CALL                             R0 0 3
       15 FORGPREP                         R0
       16 LOADK                            R8 K4 ["DigitsRigDescription"]
       17 NAMECALL                         R6 R4 K5 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["handRigLabels"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["bodyRigLabels"]
       28 MOVE                             R6 R5
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETTABLEKS                       R13 R10 K8 ["Name"]
       34 NAMECALL                         R11 R4 K9 ["GetPropertyChangedSignal"]
       36 CALL                             R11 2 1
       37 NEWCLOSURE                       R13 P0
       38 CAPTURE                          UPVAL U3
       39 NAMECALL                         R11 R11 K10 ["Connect"]
       41 CALL                             R11 2 1
       42 GETUPVAL                         R13 0
       43 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       45 MOVE                             R14 R11
       46 GETIMPORT                        R12 K12 [table.insert]
       48 CALL                             R12 2 0
       49 FORGLOOP                         R6 2 ; [-18]
       51 FORGLOOP                         R0 2 ; [-36]
       53 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R3 K0 ["DigitsRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K0 ["Disconnect"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R0 0 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U1
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R2
       21 MOVE                             R4 R2
       22 CALL                             R4 0 0
       23 MOVE                             R4 R3
       24 CALL                             R4 0 0
       25 LOADNIL                          R4
       26 GETUPVAL                         R5 0
       27 LOADK                            R7 K0 ["HumanoidRigDescription"]
       28 NAMECALL                         R5 R5 K1 ["IsA"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+10]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K2 ["ChildAdded"]
       35 NEWCLOSURE                       R7 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 NAMECALL                         R5 R5 K3 ["Connect"]
       40 CALL                             R5 2 1
       41 MOVE                             R4 R5
       42 NEWCLOSURE                       R5 P4
       43 CAPTURE                          VAL R0
       44 CAPTURE                          REF R4
       45 CLOSEUPVALS                      R4
       46 RETURN                           R5 1

PROTO_19:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["bodyRigLabels"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K1 ["useState"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K1 ["useState"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U2
       32 NEWTABLE                         R11 0 2
       34 MOVE                             R12 R0
       35 MOVE                             R13 R2
       36 SETLIST                          R11 R12 2 [1]
       38 CALL                             R9 2 0
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 NEWTABLE                         R11 0 1
       49 MOVE                             R12 R0
       50 SETLIST                          R11 R12 1 [1]
       52 CALL                             R9 2 0
       53 DUPTABLE                         R9 K6 [{"mapped", "labelMap", "otherMapped"}]
       54 SETTABLEKS                       R3 R9 K3 ["mapped"]
       56 SETTABLEKS                       R5 R9 K4 ["labelMap"]
       58 SETTABLEKS                       R7 R9 K5 ["otherMapped"]
       60 RETURN                           R9 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagAdaptiveAnimationConstraints"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagAdaptiveAnimationMannequinFix"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K14 [PROTO_0]
       47 CAPTURE                          VAL R4
       48 DUPCLOSURE                       R7 K15 [PROTO_8]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R8 K16 [PROTO_19]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R9 K17 [PROTO_20]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 RETURN                           R9 1
