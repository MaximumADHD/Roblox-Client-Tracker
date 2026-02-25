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
       10 GETIMPORT                        R6 K7 [Enum.RaycastFilterType.Blacklist]
       12 SETTABLEKS                       R6 R5 K8 ["FilterType"]
       14 NEWTABLE                         R6 0 1
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K9 ["findRootPart"]
       19 GETTABLEKS                       R8 R0 K0 ["RootInstance"]
       21 CALL                             R7 1 -1
       22 SETLIST                          R6 R7 -1 [1]
       24 SETTABLEKS                       R6 R5 K10 ["FilterDescendantsInstances"]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K11 ["BruteForceAllSlow"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R8 R1 K12 ["Origin"]
       32 GETTABLEKS                       R9 R1 K13 ["Direction"]
       34 MOVE                             R10 R5
       35 NAMECALL                         R6 R6 K14 ["Raycast"]
       37 CALL                             R6 4 1
       38 JUMPIFNOT                        R6 ; [+30]
       39 GETTABLEKS                       R3 R6 K15 ["Instance"]
       41 GETTABLEKS                       R4 R6 K16 ["Distance"]
       43 GETIMPORT                        R7 K18 [Enum.RaycastFilterType.Whitelist]
       45 SETTABLEKS                       R7 R5 K8 ["FilterType"]
       47 SETTABLEKS                       R2 R5 K10 ["FilterDescendantsInstances"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R9 R1 K12 ["Origin"]
       52 GETTABLEKS                       R10 R1 K13 ["Direction"]
       54 MOVE                             R11 R5
       55 NAMECALL                         R7 R7 K19 ["raycast"]
       57 CALL                             R7 4 1
       58 JUMPIFNOT                        R7 ; [+10]
       59 GETTABLEKS                       R8 R7 K20 ["Position"]
       61 GETTABLEKS                       R10 R6 K20 ["Position"]
       63 NAMECALL                         R8 R8 K21 ["FuzzyEq"]
       65 CALL                             R8 2 1
       66 JUMPIFNOT                        R8 ; [+2]
       67 GETTABLEKS                       R3 R7 K15 ["Instance"]
       69 GETTABLEKS                       R9 R1 K12 ["Origin"]
       71 GETTABLEKS                       R10 R1 K13 ["Direction"]
       73 GETIMPORT                        R11 K3 [RaycastParams.new]
       75 CALL                             R11 0 -1
       76 NAMECALL                         R7 R0 K22 ["gizmoRaycast"]
       78 CALL                             R7 -1 1
       79 JUMPIFNOT                        R7 ; [+15]
       80 NAMECALL                         R8 R0 K23 ["shouldDrawConstraintsOnTop"]
       82 CALL                             R8 1 1
       83 JUMPIF                           R8 ; [+7]
       84 JUMPIFNOT                        R6 ; [+10]
       85 GETTABLEKS                       R8 R7 K16 ["Distance"]
       87 GETTABLEKS                       R9 R6 K16 ["Distance"]
       89 JUMPIFNOTLT                      R8 R9 ; [+5]
       91 GETTABLEKS                       R3 R7 K15 ["Instance"]
       93 GETTABLEKS                       R4 R7 K16 ["Distance"]
       95 GETTABLEKS                       R8 R0 K24 ["VisualizeBones"]
       97 JUMPIFNOT                        R8 ; [+12]
       98 GETUPVAL                         R9 2
       99 GETTABLEKS                       R8 R9 K25 ["getBoneHit"]
      101 MOVE                             R9 R1
      102 GETTABLEKS                       R10 R0 K0 ["RootInstance"]
      104 CALL                             R8 2 2
      105 JUMPIFNOT                        R8 ; [+4]
      106 MOVE                             R10 R8
      107 MOVE                             R11 R8
      108 MOVE                             R12 R9
      109 RETURN                           R10 3
      110 JUMPIFNOT                        R3 ; [+44]
      111 MOVE                             R8 R3
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R9 R10 K26 ["getRigInfo"]
      115 GETTABLEKS                       R10 R0 K0 ["RootInstance"]
      117 CALL                             R9 1 1
      118 GETTABLEKS                       R10 R9 K27 ["PartNameToMotor"]
      120 GETTABLEKS                       R11 R9 K28 ["PartNameToAnimConstraint"]
      122 GETTABLEKS                       R13 R0 K0 ["RootInstance"]
      124 MOVE                             R16 R13
      125 NAMECALL                         R14 R8 K29 ["IsDescendantOf"]
      127 CALL                             R14 2 1
      128 MOVE                             R12 R14
      129 JUMPIFNOT                        R12 ; [+19]
      130 LOADK                            R16 K30 ["BasePart"]
      131 NAMECALL                         R14 R8 K31 ["IsA"]
      133 CALL                             R14 2 1
      134 MOVE                             R12 R14
      135 JUMPIFNOT                        R12 ; [+13]
      136 LOADB                            R12 1
      137 GETTABLEKS                       R15 R8 K32 ["Name"]
      139 GETTABLE                         R14 R10 R15
      140 JUMPIFNOTEQKNIL                  R14 ; [+8]
      142 GETTABLEKS                       R15 R8 K32 ["Name"]
      144 GETTABLE                         R14 R11 R15
      145 JUMPIFNOTEQKNIL                  R14 ; [+2]
      147 LOADB                            R12 0 +1
      148 LOADB                            R12 1
      149 JUMPIFNOT                        R8 ; [+5]
      150 JUMPIFNOT                        R12 ; [+4]
      151 MOVE                             R13 R8
      152 MOVE                             R14 R3
      153 MOVE                             R15 R4
      154 RETURN                           R13 3
      155 LOADNIL                          R8
      156 RETURN                           R8 1

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
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["RigInfo"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["RigVisualization"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_0]
       32 DUPCLOSURE                       R5 K15 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
