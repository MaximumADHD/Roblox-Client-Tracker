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
       20 GETUPVAL                         R0 4
       21 CALL                             R0 0 1
       22 JUMPIFNOT                        R0 ; [+15]
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K3 ["autoAll"]
       26 GETUPVAL                         R1 2
       27 GETUPVAL                         R2 3
       28 GETUPVAL                         R3 0
       29 CALL                             R3 0 -1
       30 CALL                             R0 -1 0
       31 GETUPVAL                         R0 2
       32 LOADK                            R2 K1 ["RBX_AutoRun"]
       33 LOADB                            R3 1
       34 NAMECALL                         R0 R0 K4 ["SetAttribute"]
       36 CALL                             R0 3 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 5
       39 GETTABLEKS                       R0 R0 K3 ["autoAll"]
       41 GETUPVAL                         R1 2
       42 GETUPVAL                         R2 3
       43 CALL                             R0 2 0
       44 GETUPVAL                         R0 0
       45 CALL                             R0 0 1
       46 JUMPIFNOT                        R0 ; [+104]
       47 NEWTABLE                         R0 0 2
       49 GETIMPORT                        R3 K8 [Enum.DigitsRigDescriptionSide.Left]
       51 GETIMPORT                        R4 K10 [Enum.DigitsRigDescriptionSide.Right]
       53 SETLIST                          R0 R3 2 [1]
       55 LOADNIL                          R1
       56 LOADNIL                          R2
       57 FORGPREP                         R0
       58 GETIMPORT                        R6 K8 [Enum.DigitsRigDescriptionSide.Left]
       60 JUMPIFNOTEQ                      R4 R6 ; [+4]
       62 GETIMPORT                        R5 K13 [Enum.RigLabel.LeftWrist]
       64 JUMP                             ; [+2]
       65 GETIMPORT                        R5 K15 [Enum.RigLabel.RightWrist]
       67 GETUPVAL                         R6 2
       68 MOVE                             R8 R5
       69 NAMECALL                         R6 R6 K16 ["GetJoint"]
       71 CALL                             R6 2 1
       72 JUMPIFNOT                        R6 ; [+76]
       73 LOADNIL                          R7
       74 GETUPVAL                         R8 2
       75 NAMECALL                         R8 R8 K17 ["GetChildren"]
       77 CALL                             R8 1 3
       78 FORGPREP                         R8
       79 LOADK                            R15 K18 ["DigitsRigDescription"]
       80 NAMECALL                         R13 R12 K19 ["IsA"]
       82 CALL                             R13 2 1
       83 JUMPIFNOT                        R13 ; [+6]
       84 GETTABLEKS                       R13 R12 K20 ["Side"]
       86 JUMPIFNOTEQ                      R13 R4 ; [+3]
       88 MOVE                             R7 R12
       89 JUMP                             ; [+2]
       90 FORGLOOP                         R8 2 ; [-12]
       92 JUMPIFEQKNIL                     R7 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 JUMPIF                           R7 ; [+22]
       97 GETIMPORT                        R9 K23 [Instance.new]
       99 LOADK                            R10 K18 ["DigitsRigDescription"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R4 R9 K20 ["Side"]
      103 GETUPVAL                         R10 2
      104 SETTABLEKS                       R10 R9 K24 ["Parent"]
      106 GETUPVAL                         R10 6
      107 CALL                             R10 0 1
      108 JUMPIFNOT                        R10 ; [+9]
      109 GETIMPORT                        R11 K8 [Enum.DigitsRigDescriptionSide.Left]
      111 JUMPIFNOTEQ                      R4 R11 ; [+3]
      113 LOADK                            R10 K25 ["LeftHandDescription"]
      114 JUMP                             ; [+1]
      115 LOADK                            R10 K26 ["RightHandDescription"]
      116 SETTABLEKS                       R10 R9 K27 ["Name"]
      118 MOVE                             R7 R9
      119 GETUPVAL                         R9 5
      120 GETTABLEKS                       R9 R9 K28 ["autoMapHand"]
      122 MOVE                             R10 R7
      123 GETUPVAL                         R11 2
      124 GETUPVAL                         R12 5
      125 GETTABLEKS                       R12 R12 K29 ["handRigLabels"]
      127 CALL                             R9 3 0
      128 JUMPIFNOT                        R8 ; [+20]
      129 LOADB                            R9 0
      130 GETUPVAL                         R10 5
      131 GETTABLEKS                       R10 R10 K29 ["handRigLabels"]
      133 LOADNIL                          R11
      134 LOADNIL                          R12
      135 FORGPREP                         R10
      136 MOVE                             R17 R14
      137 NAMECALL                         R15 R7 K16 ["GetJoint"]
      139 CALL                             R15 2 1
      140 JUMPIFNOT                        R15 ; [+2]
      141 LOADB                            R9 1
      142 JUMP                             ; [+2]
      143 FORGLOOP                         R10 2 ; [-8]
      145 JUMPIF                           R9 ; [+3]
      146 NAMECALL                         R10 R7 K30 ["Destroy"]
      148 CALL                             R10 1 0
      149 FORGLOOP                         R0 2 ; [-92]
      151 GETUPVAL                         R0 2
      152 LOADK                            R2 K1 ["RBX_AutoRun"]
      153 LOADB                            R3 1
      154 NAMECALL                         R0 R0 K4 ["SetAttribute"]
      156 CALL                             R0 3 0
      157 GETUPVAL                         R0 1
      158 JUMPIFNOTEQKS                    R0 K0 ["preview"] ; [+11]
      160 GETUPVAL                         R0 7
      161 GETTABLEKS                       R0 R0 K31 ["SIZE_ENABLED"]
      163 JUMPIFNOT                        R0 ; [+6]
      164 GETUPVAL                         R0 5
      165 GETTABLEKS                       R0 R0 K32 ["autoSize"]
      167 GETUPVAL                         R1 2
      168 GETUPVAL                         R2 3
      169 CALL                             R0 2 0
      170 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R0
       15 JUMPIFNOT                        R1 ; [+2]
       16 LOADK                            R7 K1 ["y"]
       17 JUMP                             ; [+1]
       18 LOADK                            R7 K2 ["n"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAdaptiveAnimationHandRig"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAdaptiveAnimationBetaImprovements"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Flags"]
       54 GETTABLEKS                       R7 R7 K15 ["getFFlagAdaptiveAnimationAutomapperFix"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K16 [PROTO_1]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 RETURN                           R7 1
