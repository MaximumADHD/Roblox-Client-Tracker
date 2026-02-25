PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+25]
        6 LOADK                            R4 K1 ["Motor6D"]
        7 NAMECALL                         R2 R0 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+18]
       11 LOADK                            R4 K3 ["Bone"]
       12 NAMECALL                         R2 R0 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+13]
       16 LOADK                            R4 K4 ["Attachment"]
       17 NAMECALL                         R2 R0 K2 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+8]
       21 LOADK                            R4 K5 ["AnimationConstraint"]
       22 NAMECALL                         R2 R0 K2 ["IsA"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 2
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+2]
       29 MOVE                             R1 R0
       30 JUMP                             ; [+1]
       31 LOADNIL                          R1
       32 GETUPVAL                         R2 3
       33 GETUPVAL                         R3 1
       34 SETTABLE                         R1 R2 R3
       35 NEWTABLE                         R2 0 0
       37 GETUPVAL                         R3 4
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 GETUPVAL                         R9 3
       42 GETTABLE                         R8 R9 R7
       43 JUMPIFNOT                        R8 ; [+2]
       44 LOADB                            R9 1
       45 SETTABLE                         R9 R2 R8
       46 FORGLOOP                         R3 2 ; [-6]
       48 GETUPVAL                         R3 5
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
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
       24 JUMPIFNOT                        R7 ; [+25]
       25 LOADK                            R11 K1 ["Motor6D"]
       26 NAMECALL                         R9 R7 K2 ["IsA"]
       28 CALL                             R9 2 1
       29 JUMPIF                           R9 ; [+18]
       30 LOADK                            R11 K3 ["Bone"]
       31 NAMECALL                         R9 R7 K2 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIF                           R9 ; [+13]
       35 LOADK                            R11 K4 ["Attachment"]
       36 NAMECALL                         R9 R7 K2 ["IsA"]
       38 CALL                             R9 2 1
       39 JUMPIF                           R9 ; [+8]
       40 LOADK                            R11 K5 ["AnimationConstraint"]
       41 NAMECALL                         R9 R7 K2 ["IsA"]
       43 CALL                             R9 2 1
       44 JUMPIFNOT                        R9 ; [+5]
       45 GETUPVAL                         R9 4
       46 CALL                             R9 0 1
       47 JUMPIFNOT                        R9 ; [+2]
       48 MOVE                             R8 R7
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 SETTABLE                         R8 R1 R6
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R11 R6 K6 ["Name"]
       55 NAMECALL                         R9 R9 K7 ["GetPropertyChangedSignal"]
       57 CALL                             R9 2 1
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U1
       65 NAMECALL                         R9 R9 K8 ["Connect"]
       67 CALL                             R9 2 1
       68 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       70 MOVE                             R11 R0
       71 MOVE                             R12 R9
       72 GETIMPORT                        R10 K11 [table.insert]
       74 CALL                             R10 2 0
       75 FORGLOOP                         R2 2 ; [-57]
       77 NEWTABLE                         R2 0 0
       79 GETUPVAL                         R3 3
       80 LOADNIL                          R4
       81 LOADNIL                          R5
       82 FORGPREP                         R3
       83 GETUPVAL                         R8 0
       84 MOVE                             R10 R7
       85 NAMECALL                         R8 R8 K0 ["GetJoint"]
       87 CALL                             R8 2 1
       88 JUMPIFNOT                        R8 ; [+25]
       89 LOADK                            R12 K1 ["Motor6D"]
       90 NAMECALL                         R10 R8 K2 ["IsA"]
       92 CALL                             R10 2 1
       93 JUMPIF                           R10 ; [+18]
       94 LOADK                            R12 K3 ["Bone"]
       95 NAMECALL                         R10 R8 K2 ["IsA"]
       97 CALL                             R10 2 1
       98 JUMPIF                           R10 ; [+13]
       99 LOADK                            R12 K4 ["Attachment"]
      100 NAMECALL                         R10 R8 K2 ["IsA"]
      102 CALL                             R10 2 1
      103 JUMPIF                           R10 ; [+8]
      104 LOADK                            R12 K5 ["AnimationConstraint"]
      105 NAMECALL                         R10 R8 K2 ["IsA"]
      107 CALL                             R10 2 1
      108 JUMPIFNOT                        R10 ; [+5]
      109 GETUPVAL                         R10 4
      110 CALL                             R10 0 1
      111 JUMPIFNOT                        R10 ; [+2]
      112 MOVE                             R9 R8
      113 JUMP                             ; [+1]
      114 LOADNIL                          R9
      115 JUMPIFNOT                        R9 ; [+1]
      116 SETTABLE                         R7 R2 R9
      117 FORGLOOP                         R3 2 ; [-35]
      119 GETUPVAL                         R3 2
      120 MOVE                             R4 R2
      121 CALL                             R3 1 0
      122 NEWTABLE                         R3 0 0
      124 GETUPVAL                         R4 3
      125 LOADNIL                          R5
      126 LOADNIL                          R6
      127 FORGPREP                         R4
      128 GETTABLE                         R9 R1 R8
      129 JUMPIFNOT                        R9 ; [+2]
      130 LOADB                            R10 1
      131 SETTABLE                         R10 R3 R9
      132 FORGLOOP                         R4 2 ; [-5]
      134 GETUPVAL                         R4 1
      135 MOVE                             R5 R3
      136 CALL                             R4 1 0
      137 NEWCLOSURE                       R4 P1
      138 CAPTURE                          VAL R0
      139 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["allRigLabels"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["useState"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["useState"]
       12 NEWTABLE                         R5 0 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R0
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 0
       30 DUPTABLE                         R6 K5 [{"mapped", "labelMap"}]
       31 SETTABLEKS                       R2 R6 K3 ["mapped"]
       33 SETTABLEKS                       R4 R6 K4 ["labelMap"]
       35 RETURN                           R6 1

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
       37 DUPCLOSURE                       R5 K13 [PROTO_3]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 RETURN                           R5 1
