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
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["handRigLabels"]
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K3 ["bodyRigLabels"]
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
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R1 R2 K7 ["Parent"]
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
       96 GETUPVAL                         R9 2
       97 GETTABLEKS                       R8 R9 K8 ["handRigLabels"]
       99 JUMP                             ; [+3]
      100 GETUPVAL                         R9 2
      101 GETTABLEKS                       R8 R9 K9 ["bodyRigLabels"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["bodyRigLabels"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K1 ["useState"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 2
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K1 ["useState"]
       20 NEWTABLE                         R8 0 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K2 ["useEffect"]
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
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K2 ["useEffect"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Flags"]
       34 GETTABLEKS                       R5 R6 K12 ["getFFlagAdaptiveAnimationConstraints"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R6 K14 [PROTO_8]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
