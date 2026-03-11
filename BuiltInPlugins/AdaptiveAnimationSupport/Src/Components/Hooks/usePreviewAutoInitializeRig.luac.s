PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 ["preview"] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 3
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K1 ["RBX_AutoRun"]
       14 NAMECALL                         R0 R0 K2 ["GetAttribute"]
       16 CALL                             R0 2 1
       17 JUMPIFEQKNIL                     R0 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R0 R1 K3 ["autoMap"]
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 3
       25 CALL                             R0 2 0
       26 GETUPVAL                         R1 4
       27 GETTABLEKS                       R0 R1 K4 ["enforceTpose"]
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R0 R1 K5 ["applyTposeAdjustment"]
       35 GETUPVAL                         R1 2
       36 GETUPVAL                         R2 3
       37 CALL                             R0 2 0
       38 GETUPVAL                         R0 0
       39 CALL                             R0 0 1
       40 JUMPIFNOT                        R0 ; [+92]
       41 NEWTABLE                         R0 0 2
       43 GETIMPORT                        R3 K9 [Enum.DigitsRigDescriptionSide.Left]
       45 GETIMPORT                        R4 K11 [Enum.DigitsRigDescriptionSide.Right]
       47 SETLIST                          R0 R3 2 [1]
       49 LOADNIL                          R1
       50 LOADNIL                          R2
       51 FORGPREP                         R0
       52 GETIMPORT                        R6 K9 [Enum.DigitsRigDescriptionSide.Left]
       54 JUMPIFNOTEQ                      R4 R6 ; [+4]
       56 GETIMPORT                        R5 K14 [Enum.RigLabel.LeftWrist]
       58 JUMP                             ; [+2]
       59 GETIMPORT                        R5 K16 [Enum.RigLabel.RightWrist]
       61 GETUPVAL                         R6 2
       62 MOVE                             R8 R5
       63 NAMECALL                         R6 R6 K17 ["GetJoint"]
       65 CALL                             R6 2 1
       66 JUMPIFNOT                        R6 ; [+64]
       67 LOADNIL                          R7
       68 GETUPVAL                         R8 2
       69 NAMECALL                         R8 R8 K18 ["GetChildren"]
       71 CALL                             R8 1 3
       72 FORGPREP                         R8
       73 LOADK                            R15 K19 ["DigitsRigDescription"]
       74 NAMECALL                         R13 R12 K20 ["IsA"]
       76 CALL                             R13 2 1
       77 JUMPIFNOT                        R13 ; [+6]
       78 GETTABLEKS                       R13 R12 K21 ["Side"]
       80 JUMPIFNOTEQ                      R13 R4 ; [+3]
       82 MOVE                             R7 R12
       83 JUMP                             ; [+2]
       84 FORGLOOP                         R8 2 ; [-12]
       86 JUMPIFEQKNIL                     R7 ; [+2]
       88 LOADB                            R8 0 +1
       89 LOADB                            R8 1
       90 JUMPIF                           R7 ; [+10]
       91 GETIMPORT                        R9 K24 [Instance.new]
       93 LOADK                            R10 K19 ["DigitsRigDescription"]
       94 CALL                             R9 1 1
       95 SETTABLEKS                       R4 R9 K21 ["Side"]
       97 GETUPVAL                         R10 2
       98 SETTABLEKS                       R10 R9 K25 ["Parent"]
      100 MOVE                             R7 R9
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R9 R10 K26 ["autoMapHand"]
      104 MOVE                             R10 R7
      105 GETUPVAL                         R11 2
      106 GETUPVAL                         R13 4
      107 GETTABLEKS                       R12 R13 K27 ["handRigLabels"]
      109 CALL                             R9 3 0
      110 JUMPIFNOT                        R8 ; [+20]
      111 LOADB                            R9 0
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R10 R13 K27 ["handRigLabels"]
      115 LOADNIL                          R11
      116 LOADNIL                          R12
      117 FORGPREP                         R10
      118 MOVE                             R17 R14
      119 NAMECALL                         R15 R7 K17 ["GetJoint"]
      121 CALL                             R15 2 1
      122 JUMPIFNOT                        R15 ; [+2]
      123 LOADB                            R9 1
      124 JUMP                             ; [+2]
      125 FORGLOOP                         R10 2 ; [-8]
      127 JUMPIF                           R9 ; [+3]
      128 NAMECALL                         R10 R7 K28 ["Destroy"]
      130 CALL                             R10 1 0
      131 FORGLOOP                         R0 2 ; [-80]
      133 GETUPVAL                         R0 2
      134 LOADK                            R2 K1 ["RBX_AutoRun"]
      135 LOADB                            R3 1
      136 NAMECALL                         R0 R0 K29 ["SetAttribute"]
      138 CALL                             R0 3 0
      139 GETUPVAL                         R0 1
      140 JUMPIFNOTEQKS                    R0 K0 ["preview"] ; [+11]
      142 GETUPVAL                         R1 5
      143 GETTABLEKS                       R0 R1 K30 ["SIZE_ENABLED"]
      145 JUMPIFNOT                        R0 ; [+6]
      146 GETUPVAL                         R1 4
      147 GETTABLEKS                       R0 R1 K31 ["autoSize"]
      149 GETUPVAL                         R1 2
      150 GETUPVAL                         R2 3
      151 CALL                             R0 2 0
      152 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R5 0 2
       12 MOVE                             R6 R0
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADK                            R7 K1 ["y"]
       15 JUMP                             ; [+1]
       16 LOADK                            R7 K2 ["n"]
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

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
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAdaptiveAnimationHandRig"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
