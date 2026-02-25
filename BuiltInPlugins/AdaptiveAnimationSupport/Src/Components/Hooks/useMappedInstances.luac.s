PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetJoint"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+17]
        6 LOADK                            R4 K1 ["Motor6D"]
        7 NAMECALL                         R2 R0 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+10]
       11 LOADK                            R4 K3 ["Bone"]
       12 NAMECALL                         R2 R0 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+5]
       16 LOADK                            R4 K4 ["Attachment"]
       17 NAMECALL                         R2 R0 K2 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 MOVE                             R1 R0
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 1
       26 SETTABLE                         R1 R2 R3
       27 NEWTABLE                         R2 0 0
       29 GETUPVAL                         R3 3
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 GETUPVAL                         R9 2
       34 GETTABLE                         R8 R9 R7
       35 JUMPIFNOT                        R8 ; [+2]
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R2 R8
       38 FORGLOOP                         R3 2 ; [-6]
       40 GETUPVAL                         R3 4
       41 MOVE                             R4 R2
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

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
       24 JUMPIFNOT                        R7 ; [+17]
       25 LOADK                            R11 K1 ["Motor6D"]
       26 NAMECALL                         R9 R7 K2 ["IsA"]
       28 CALL                             R9 2 1
       29 JUMPIF                           R9 ; [+10]
       30 LOADK                            R11 K3 ["Bone"]
       31 NAMECALL                         R9 R7 K2 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIF                           R9 ; [+5]
       35 LOADK                            R11 K4 ["Attachment"]
       36 NAMECALL                         R9 R7 K2 ["IsA"]
       38 CALL                             R9 2 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 MOVE                             R8 R7
       41 JUMP                             ; [+1]
       42 LOADNIL                          R8
       43 SETTABLE                         R8 R1 R6
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R11 R6 K5 ["Name"]
       47 NAMECALL                         R9 R9 K6 ["GetPropertyChangedSignal"]
       49 CALL                             R9 2 1
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U1
       56 NAMECALL                         R9 R9 K7 ["Connect"]
       58 CALL                             R9 2 1
       59 FASTCALL2                        TABLE_INSERT R0 R9 ; [+5]
       61 MOVE                             R11 R0
       62 MOVE                             R12 R9
       63 GETIMPORT                        R10 K10 [table.insert]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R2 2 ; [-48]
       68 NEWTABLE                         R2 0 0
       70 GETUPVAL                         R3 3
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 GETUPVAL                         R8 0
       75 MOVE                             R10 R7
       76 NAMECALL                         R8 R8 K0 ["GetJoint"]
       78 CALL                             R8 2 1
       79 JUMPIFNOT                        R8 ; [+17]
       80 LOADK                            R12 K1 ["Motor6D"]
       81 NAMECALL                         R10 R8 K2 ["IsA"]
       83 CALL                             R10 2 1
       84 JUMPIF                           R10 ; [+10]
       85 LOADK                            R12 K3 ["Bone"]
       86 NAMECALL                         R10 R8 K2 ["IsA"]
       88 CALL                             R10 2 1
       89 JUMPIF                           R10 ; [+5]
       90 LOADK                            R12 K4 ["Attachment"]
       91 NAMECALL                         R10 R8 K2 ["IsA"]
       93 CALL                             R10 2 1
       94 JUMPIFNOT                        R10 ; [+2]
       95 MOVE                             R9 R8
       96 JUMP                             ; [+1]
       97 LOADNIL                          R9
       98 JUMPIFNOT                        R9 ; [+1]
       99 SETTABLE                         R7 R2 R9
      100 FORGLOOP                         R3 2 ; [-27]
      102 GETUPVAL                         R3 2
      103 MOVE                             R4 R2
      104 CALL                             R3 1 0
      105 NEWTABLE                         R3 0 0
      107 GETUPVAL                         R4 3
      108 LOADNIL                          R5
      109 LOADNIL                          R6
      110 FORGPREP                         R4
      111 GETTABLE                         R9 R1 R8
      112 JUMPIFNOT                        R9 ; [+2]
      113 LOADB                            R10 1
      114 SETTABLE                         R10 R3 R9
      115 FORGLOOP                         R4 2 ; [-5]
      117 GETUPVAL                         R4 1
      118 MOVE                             R5 R3
      119 CALL                             R4 1 0
      120 NEWCLOSURE                       R4 P1
      121 CAPTURE                          VAL R0
      122 RETURN                           R4 1

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
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R0
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 0
       29 DUPTABLE                         R6 K5 [{"mapped", "labelMap"}]
       30 SETTABLEKS                       R2 R6 K3 ["mapped"]
       32 SETTABLEKS                       R4 R6 K4 ["labelMap"]
       34 RETURN                           R6 1

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
       28 DUPCLOSURE                       R4 K11 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 RETURN                           R4 1
