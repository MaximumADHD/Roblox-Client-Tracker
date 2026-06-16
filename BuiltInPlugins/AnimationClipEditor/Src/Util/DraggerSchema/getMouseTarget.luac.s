PROTO_0:
        0 MOVE                             R6 R0
        1 NAMECALL                         R4 R1 K0 ["IsDescendantOf"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+18]
        5 LOADK                            R6 K1 ["BasePart"]
        6 NAMECALL                         R4 R1 K2 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+13]
       10 LOADB                            R4 1
       11 GETTABLEKS                       R6 R1 K3 ["Name"]
       13 GETTABLE                         R5 R2 R6
       14 JUMPIFNOTEQKNIL                  R5 ; [+8]
       16 GETTABLEKS                       R6 R1 K3 ["Name"]
       18 GETTABLE                         R5 R3 R6
       19 JUMPIFNOTEQKNIL                  R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["RootInstance"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETIMPORT                        R5 K3 [RaycastParams.new]
        9 CALL                             R5 0 1
       10 GETUPVAL                         R7 0
       11 CALL                             R7 0 1
       12 JUMPIFNOT                        R7 ; [+7]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K4 ["getRootPart"]
       16 GETTABLEKS                       R7 R0 K0 ["RootInstance"]
       18 CALL                             R6 1 1
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["findRootPart"]
       23 GETTABLEKS                       R7 R0 K0 ["RootInstance"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K9 [Enum.RaycastFilterType.Blacklist]
       28 SETTABLEKS                       R7 R5 K10 ["FilterType"]
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R6
       33 SETLIST                          R7 R8 1 [1]
       35 SETTABLEKS                       R7 R5 K11 ["FilterDescendantsInstances"]
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R5 K12 ["BruteForceAllSlow"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R9 R1 K13 ["Origin"]
       43 GETTABLEKS                       R10 R1 K14 ["Direction"]
       45 MOVE                             R11 R5
       46 NAMECALL                         R7 R7 K15 ["Raycast"]
       48 CALL                             R7 4 1
       49 JUMPIFNOT                        R7 ; [+30]
       50 GETTABLEKS                       R3 R7 K16 ["Instance"]
       52 GETTABLEKS                       R4 R7 K17 ["Distance"]
       54 GETIMPORT                        R8 K19 [Enum.RaycastFilterType.Whitelist]
       56 SETTABLEKS                       R8 R5 K10 ["FilterType"]
       58 SETTABLEKS                       R2 R5 K11 ["FilterDescendantsInstances"]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R10 R1 K13 ["Origin"]
       63 GETTABLEKS                       R11 R1 K14 ["Direction"]
       65 MOVE                             R12 R5
       66 NAMECALL                         R8 R8 K20 ["raycast"]
       68 CALL                             R8 4 1
       69 JUMPIFNOT                        R8 ; [+10]
       70 GETTABLEKS                       R9 R8 K21 ["Position"]
       72 GETTABLEKS                       R11 R7 K21 ["Position"]
       74 NAMECALL                         R9 R9 K22 ["FuzzyEq"]
       76 CALL                             R9 2 1
       77 JUMPIFNOT                        R9 ; [+2]
       78 GETTABLEKS                       R3 R8 K16 ["Instance"]
       80 GETTABLEKS                       R10 R1 K13 ["Origin"]
       82 GETTABLEKS                       R11 R1 K14 ["Direction"]
       84 GETIMPORT                        R12 K3 [RaycastParams.new]
       86 CALL                             R12 0 -1
       87 NAMECALL                         R8 R0 K23 ["gizmoRaycast"]
       89 CALL                             R8 -1 1
       90 JUMPIFNOT                        R8 ; [+15]
       91 NAMECALL                         R9 R0 K24 ["shouldDrawConstraintsOnTop"]
       93 CALL                             R9 1 1
       94 JUMPIF                           R9 ; [+7]
       95 JUMPIFNOT                        R7 ; [+10]
       96 GETTABLEKS                       R9 R8 K17 ["Distance"]
       98 GETTABLEKS                       R10 R7 K17 ["Distance"]
      100 JUMPIFNOTLT                      R9 R10 ; [+5]
      102 GETTABLEKS                       R3 R8 K16 ["Instance"]
      104 GETTABLEKS                       R4 R8 K17 ["Distance"]
      106 GETTABLEKS                       R9 R0 K25 ["VisualizeBones"]
      108 JUMPIFNOT                        R9 ; [+12]
      109 GETUPVAL                         R9 3
      110 GETTABLEKS                       R9 R9 K26 ["getBoneHit"]
      112 MOVE                             R10 R1
      113 GETTABLEKS                       R11 R0 K0 ["RootInstance"]
      115 CALL                             R9 2 2
      116 JUMPIFNOT                        R9 ; [+4]
      117 MOVE                             R11 R9
      118 MOVE                             R12 R9
      119 MOVE                             R13 R10
      120 RETURN                           R11 3
      121 JUMPIFNOT                        R3 ; [+44]
      122 MOVE                             R9 R3
      123 GETUPVAL                         R10 1
      124 GETTABLEKS                       R10 R10 K27 ["getRigInfo"]
      126 GETTABLEKS                       R11 R0 K0 ["RootInstance"]
      128 CALL                             R10 1 1
      129 GETTABLEKS                       R11 R10 K28 ["PartNameToMotor"]
      131 GETTABLEKS                       R12 R10 K29 ["PartNameToAnimConstraint"]
      133 GETTABLEKS                       R14 R0 K0 ["RootInstance"]
      135 MOVE                             R17 R14
      136 NAMECALL                         R15 R9 K30 ["IsDescendantOf"]
      138 CALL                             R15 2 1
      139 MOVE                             R13 R15
      140 JUMPIFNOT                        R13 ; [+19]
      141 LOADK                            R17 K31 ["BasePart"]
      142 NAMECALL                         R15 R9 K32 ["IsA"]
      144 CALL                             R15 2 1
      145 MOVE                             R13 R15
      146 JUMPIFNOT                        R13 ; [+13]
      147 LOADB                            R13 1
      148 GETTABLEKS                       R16 R9 K33 ["Name"]
      150 GETTABLE                         R15 R11 R16
      151 JUMPIFNOTEQKNIL                  R15 ; [+8]
      153 GETTABLEKS                       R16 R9 K33 ["Name"]
      155 GETTABLE                         R15 R12 R16
      156 JUMPIFNOTEQKNIL                  R15 ; [+2]
      158 LOADB                            R13 0 +1
      159 LOADB                            R13 1
      160 JUMPIFNOT                        R9 ; [+5]
      161 JUMPIFNOT                        R13 ; [+4]
      162 MOVE                             R14 R9
      163 MOVE                             R15 R3
      164 MOVE                             R16 R4
      165 RETURN                           R14 3
      166 LOADNIL                          R9
      167 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["RigInfo"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["RigVisualization"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K14 ["LuaFlags"]
       35 GETTABLEKS                       R5 R5 K15 ["GetFFlagRootMotion"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K16 [PROTO_0]
       39 DUPCLOSURE                       R6 K17 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
