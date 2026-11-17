PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["isValidTJoint"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["isValidTJoint"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 MOVE                             R1 R0
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R3 1
       17 SETTABLE                         R1 R2 R3
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R3 4
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETUPVAL                         R9 3
       25 GETTABLE                         R8 R9 R7
       26 JUMPIFNOT                        R8 ; [+2]
       27 LOADB                            R9 1
       28 SETTABLE                         R9 R2 R8
       29 FORGLOOP                         R3 2 ; [-6]
       31 GETUPVAL                         R3 5
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

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
       24 JUMPIFNOT                        R7 ; [+8]
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K1 ["isValidTJoint"]
       28 MOVE                             R10 R7
       29 CALL                             R9 1 1
       30 JUMPIFNOT                        R9 ; [+2]
       31 MOVE                             R8 R7
       32 JUMP                             ; [+1]
       33 LOADNIL                          R8
       34 SETTABLE                         R8 R1 R6
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R11 R6 K2 ["Name"]
       38 NAMECALL                         R9 R9 K3 ["GetPropertyChangedSignal"]
       40 CALL                             R9 2 1
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U1
       48 NAMECALL                         R9 R9 K4 ["Connect"]
       50 CALL                             R9 2 1
       51 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       53 MOVE                             R11 R0
       54 MOVE                             R12 R9
       55 GETIMPORT                        R10 K7 [table.insert]
       57 CALL                             R10 2 0
       58 FORGLOOP                         R2 2 ; [-40]
       60 NEWTABLE                         R2 0 0
       62 GETUPVAL                         R3 3
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 GETUPVAL                         R8 0
       67 MOVE                             R10 R7
       68 NAMECALL                         R8 R8 K0 ["GetJoint"]
       70 CALL                             R8 2 1
       71 JUMPIFNOT                        R8 ; [+8]
       72 GETUPVAL                         R10 4
       73 GETTABLEKS                       R10 R10 K1 ["isValidTJoint"]
       75 MOVE                             R11 R8
       76 CALL                             R10 1 1
       77 JUMPIFNOT                        R10 ; [+2]
       78 MOVE                             R9 R8
       79 JUMP                             ; [+1]
       80 LOADNIL                          R9
       81 JUMPIFNOT                        R9 ; [+1]
       82 SETTABLE                         R7 R2 R9
       83 FORGLOOP                         R3 2 ; [-18]
       85 GETUPVAL                         R3 2
       86 MOVE                             R4 R2
       87 CALL                             R3 1 0
       88 NEWTABLE                         R3 0 0
       90 GETUPVAL                         R4 3
       91 LOADNIL                          R5
       92 LOADNIL                          R6
       93 FORGPREP                         R4
       94 GETTABLE                         R9 R1 R8
       95 JUMPIFNOT                        R9 ; [+2]
       96 LOADB                            R10 1
       97 SETTABLE                         R10 R3 R9
       98 FORGLOOP                         R4 2 ; [-5]
      100 GETUPVAL                         R4 1
      101 MOVE                             R5 R3
      102 CALL                             R4 1 0
      103 NEWCLOSURE                       R4 P1
      104 CAPTURE                          VAL R0
      105 RETURN                           R4 1

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
       26 JUMPIFNOT                        R12 ; [+8]
       27 GETUPVAL                         R14 1
       28 GETTABLEKS                       R14 R14 K5 ["isValidTJoint"]
       30 MOVE                             R15 R12
       31 CALL                             R14 1 1
       32 JUMPIFNOT                        R14 ; [+2]
       33 MOVE                             R13 R12
       34 JUMP                             ; [+1]
       35 LOADNIL                          R13
       36 JUMPIFNOT                        R13 ; [+2]
       37 LOADB                            R14 1
       38 SETTABLE                         R14 R0 R13
       39 FORGLOOP                         R7 2 ; [-18]
       41 FORGLOOP                         R1 2 ; [-36]
       43 GETUPVAL                         R1 2
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

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
       81 CAPTURE                          UPVAL U1
       82 MOVE                             R2 R1
       83 CALL                             R2 0 0
       84 NEWTABLE                         R2 0 0
       86 MOVE                             R3 R0
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 LOADK                            R11 K3 ["DigitsRigDescription"]
       91 NAMECALL                         R9 R7 K1 ["IsA"]
       93 CALL                             R9 2 1
       94 JUMPIFNOT                        R9 ; [+4]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R8 R8 K8 ["handRigLabels"]
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K9 ["bodyRigLabels"]
      102 MOVE                             R9 R8
      103 LOADNIL                          R10
      104 LOADNIL                          R11
      105 FORGPREP                         R9
      106 GETTABLEKS                       R16 R13 K10 ["Name"]
      108 NAMECALL                         R14 R7 K11 ["GetPropertyChangedSignal"]
      110 CALL                             R14 2 1
      111 NEWCLOSURE                       R16 P1
      112 CAPTURE                          VAL R1
      113 NAMECALL                         R14 R14 K12 ["Connect"]
      115 CALL                             R14 2 1
      116 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      118 MOVE                             R16 R2
      119 MOVE                             R17 R14
      120 GETIMPORT                        R15 K6 [table.insert]
      122 CALL                             R15 2 0
      123 FORGLOOP                         R9 2 ; [-18]
      125 FORGLOOP                         R3 2 ; [-36]
      127 NEWCLOSURE                       R3 P2
      128 CAPTURE                          VAL R2
      129 RETURN                           R3 1

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
       31 CAPTURE                          UPVAL U0
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
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R0
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 0
       52 DUPTABLE                         R9 K6 [{"mapped", "labelMap", "otherMapped"}]
       53 SETTABLEKS                       R3 R9 K3 ["mapped"]
       55 SETTABLEKS                       R5 R9 K4 ["labelMap"]
       57 SETTABLEKS                       R7 R9 K5 ["otherMapped"]
       59 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["isValidTJoint"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 MOVE                             R1 R0
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R3 1
       17 SETTABLE                         R1 R2 R3
       18 NEWTABLE                         R2 0 0
       20 NEWTABLE                         R3 0 0
       22 GETUPVAL                         R4 4
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 GETUPVAL                         R10 3
       27 GETTABLE                         R9 R10 R8
       28 JUMPIFNOT                        R9 ; [+3]
       29 LOADB                            R10 1
       30 SETTABLE                         R10 R2 R9
       31 SETTABLE                         R8 R3 R9
       32 FORGLOOP                         R4 2 ; [-7]
       34 GETUPVAL                         R4 5
       35 MOVE                             R5 R2
       36 CALL                             R4 1 0
       37 GETUPVAL                         R4 6
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

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
       24 JUMPIFNOT                        R7 ; [+8]
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K1 ["isValidTJoint"]
       28 MOVE                             R10 R7
       29 CALL                             R9 1 1
       30 JUMPIFNOT                        R9 ; [+2]
       31 MOVE                             R8 R7
       32 JUMP                             ; [+1]
       33 LOADNIL                          R8
       34 SETTABLE                         R8 R1 R6
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R11 R6 K2 ["Name"]
       38 NAMECALL                         R9 R9 K3 ["GetPropertyChangedSignal"]
       40 CALL                             R9 2 1
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U2
       49 NAMECALL                         R9 R9 K4 ["Connect"]
       51 CALL                             R9 2 1
       52 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       54 MOVE                             R11 R0
       55 MOVE                             R12 R9
       56 GETIMPORT                        R10 K7 [table.insert]
       58 CALL                             R10 2 0
       59 FORGLOOP                         R2 2 ; [-41]
       61 NEWTABLE                         R2 0 0
       63 GETUPVAL                         R3 3
       64 LOADNIL                          R4
       65 LOADNIL                          R5
       66 FORGPREP                         R3
       67 GETUPVAL                         R8 0
       68 MOVE                             R10 R7
       69 NAMECALL                         R8 R8 K0 ["GetJoint"]
       71 CALL                             R8 2 1
       72 JUMPIFNOT                        R8 ; [+8]
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R10 R10 K1 ["isValidTJoint"]
       76 MOVE                             R11 R8
       77 CALL                             R10 1 1
       78 JUMPIFNOT                        R10 ; [+2]
       79 MOVE                             R9 R8
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 JUMPIFNOT                        R9 ; [+1]
       83 SETTABLE                         R7 R2 R9
       84 FORGLOOP                         R3 2 ; [-18]
       86 GETUPVAL                         R3 2
       87 MOVE                             R4 R2
       88 CALL                             R3 1 0
       89 NEWTABLE                         R3 0 0
       91 GETUPVAL                         R4 3
       92 LOADNIL                          R5
       93 LOADNIL                          R6
       94 FORGPREP                         R4
       95 GETTABLE                         R9 R1 R8
       96 JUMPIFNOT                        R9 ; [+2]
       97 LOADB                            R10 1
       98 SETTABLE                         R10 R3 R9
       99 FORGLOOP                         R4 2 ; [-5]
      101 GETUPVAL                         R4 1
      102 MOVE                             R5 R3
      103 CALL                             R4 1 0
      104 NEWCLOSURE                       R4 P1
      105 CAPTURE                          VAL R0
      106 RETURN                           R4 1

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
       25 JUMPIFNOT                        R12 ; [+8]
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K5 ["isValidTJoint"]
       29 MOVE                             R15 R12
       30 CALL                             R14 1 1
       31 JUMPIFNOT                        R14 ; [+2]
       32 MOVE                             R13 R12
       33 JUMP                             ; [+1]
       34 LOADNIL                          R13
       35 JUMPIFNOT                        R13 ; [+2]
       36 LOADB                            R14 1
       37 SETTABLE                         R14 R0 R13
       38 FORGLOOP                         R7 2 ; [-18]
       40 FORGLOOP                         R1 2 ; [-36]
       42 GETUPVAL                         R1 2
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

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
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R3 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R2
       20 MOVE                             R4 R2
       21 CALL                             R4 0 0
       22 MOVE                             R4 R3
       23 CALL                             R4 0 0
       24 LOADNIL                          R4
       25 GETUPVAL                         R5 0
       26 LOADK                            R7 K0 ["HumanoidRigDescription"]
       27 NAMECALL                         R5 R5 K1 ["IsA"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+10]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K2 ["ChildAdded"]
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 NAMECALL                         R5 R5 K3 ["Connect"]
       39 CALL                             R5 2 1
       40 MOVE                             R4 R5
       41 NEWCLOSURE                       R5 P4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R4
       44 CLOSEUPVALS                      R4
       45 RETURN                           R5 1

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
       31 CAPTURE                          UPVAL U0
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
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R0
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 0
       52 DUPTABLE                         R9 K6 [{"mapped", "labelMap", "otherMapped"}]
       53 SETTABLEKS                       R3 R9 K3 ["mapped"]
       55 SETTABLEKS                       R5 R9 K4 ["labelMap"]
       57 SETTABLEKS                       R7 R9 K5 ["otherMapped"]
       59 RETURN                           R9 1

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
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagAdaptiveAnimationMannequinFix"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 DUPCLOSURE                       R6 K14 [PROTO_8]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R7 K15 [PROTO_19]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R8 K16 [PROTO_20]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R6
       49 RETURN                           R8 1
