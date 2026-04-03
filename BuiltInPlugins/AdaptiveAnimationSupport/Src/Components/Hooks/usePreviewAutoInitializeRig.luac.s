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
       21 GETTABLEKS                       R0 R1 K3 ["autoAll"]
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 3
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 0
       27 CALL                             R0 0 1
       28 JUMPIFNOT                        R0 ; [+104]
       29 NEWTABLE                         R0 0 2
       31 GETIMPORT                        R3 K7 [Enum.DigitsRigDescriptionSide.Left]
       33 GETIMPORT                        R4 K9 [Enum.DigitsRigDescriptionSide.Right]
       35 SETLIST                          R0 R3 2 [1]
       37 LOADNIL                          R1
       38 LOADNIL                          R2
       39 FORGPREP                         R0
       40 GETIMPORT                        R6 K7 [Enum.DigitsRigDescriptionSide.Left]
       42 JUMPIFNOTEQ                      R4 R6 ; [+4]
       44 GETIMPORT                        R5 K12 [Enum.RigLabel.LeftWrist]
       46 JUMP                             ; [+2]
       47 GETIMPORT                        R5 K14 [Enum.RigLabel.RightWrist]
       49 GETUPVAL                         R6 2
       50 MOVE                             R8 R5
       51 NAMECALL                         R6 R6 K15 ["GetJoint"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+76]
       55 LOADNIL                          R7
       56 GETUPVAL                         R8 2
       57 NAMECALL                         R8 R8 K16 ["GetChildren"]
       59 CALL                             R8 1 3
       60 FORGPREP                         R8
       61 LOADK                            R15 K17 ["DigitsRigDescription"]
       62 NAMECALL                         R13 R12 K18 ["IsA"]
       64 CALL                             R13 2 1
       65 JUMPIFNOT                        R13 ; [+6]
       66 GETTABLEKS                       R13 R12 K19 ["Side"]
       68 JUMPIFNOTEQ                      R13 R4 ; [+3]
       70 MOVE                             R7 R12
       71 JUMP                             ; [+2]
       72 FORGLOOP                         R8 2 ; [-12]
       74 JUMPIFEQKNIL                     R7 ; [+2]
       76 LOADB                            R8 0 +1
       77 LOADB                            R8 1
       78 JUMPIF                           R7 ; [+22]
       79 GETIMPORT                        R9 K22 [Instance.new]
       81 LOADK                            R10 K17 ["DigitsRigDescription"]
       82 CALL                             R9 1 1
       83 SETTABLEKS                       R4 R9 K19 ["Side"]
       85 GETUPVAL                         R10 2
       86 SETTABLEKS                       R10 R9 K23 ["Parent"]
       88 GETUPVAL                         R10 5
       89 CALL                             R10 0 1
       90 JUMPIFNOT                        R10 ; [+9]
       91 GETIMPORT                        R11 K7 [Enum.DigitsRigDescriptionSide.Left]
       93 JUMPIFNOTEQ                      R4 R11 ; [+3]
       95 LOADK                            R10 K24 ["LeftHandDescription"]
       96 JUMP                             ; [+1]
       97 LOADK                            R10 K25 ["RightHandDescription"]
       98 SETTABLEKS                       R10 R9 K26 ["Name"]
      100 MOVE                             R7 R9
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R9 R10 K27 ["autoMapHand"]
      104 MOVE                             R10 R7
      105 GETUPVAL                         R11 2
      106 GETUPVAL                         R13 4
      107 GETTABLEKS                       R12 R13 K28 ["handRigLabels"]
      109 CALL                             R9 3 0
      110 JUMPIFNOT                        R8 ; [+20]
      111 LOADB                            R9 0
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R10 R13 K28 ["handRigLabels"]
      115 LOADNIL                          R11
      116 LOADNIL                          R12
      117 FORGPREP                         R10
      118 MOVE                             R17 R14
      119 NAMECALL                         R15 R7 K15 ["GetJoint"]
      121 CALL                             R15 2 1
      122 JUMPIFNOT                        R15 ; [+2]
      123 LOADB                            R9 1
      124 JUMP                             ; [+2]
      125 FORGLOOP                         R10 2 ; [-8]
      127 JUMPIF                           R9 ; [+3]
      128 NAMECALL                         R10 R7 K29 ["Destroy"]
      130 CALL                             R10 1 0
      131 FORGLOOP                         R0 2 ; [-92]
      133 GETUPVAL                         R0 2
      134 LOADK                            R2 K1 ["RBX_AutoRun"]
      135 LOADB                            R3 1
      136 NAMECALL                         R0 R0 K30 ["SetAttribute"]
      138 CALL                             R0 3 0
      139 GETUPVAL                         R0 1
      140 JUMPIFNOTEQKS                    R0 K0 ["preview"] ; [+11]
      142 GETUPVAL                         R1 6
      143 GETTABLEKS                       R0 R1 K31 ["SIZE_ENABLED"]
      145 JUMPIFNOT                        R0 ; [+6]
      146 GETUPVAL                         R1 4
      147 GETTABLEKS                       R0 R1 K32 ["autoSize"]
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
       10 CAPTURE                          UPVAL U4
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R0
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADK                            R7 K1 ["y"]
       16 JUMP                             ; [+1]
       17 LOADK                            R7 K2 ["n"]
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFFlagAdaptiveAnimationBetaImprovements"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 RETURN                           R6 1
