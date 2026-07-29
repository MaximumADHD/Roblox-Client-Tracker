PROTO_0:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 CALL                             R5 1 1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 GETIMPORT                        R9 K2 [RaycastParams.new]
        8 CALL                             R9 0 1
        9 LOADB                            R10 1
       10 SETTABLEKS                       R10 R9 K3 ["BruteForceAllSlow"]
       12 GETUPVAL                         R10 1
       13 SETTABLEKS                       R10 R9 K4 ["CollisionGroup"]
       15 GETUPVAL                         R10 2
       16 GETTABLEKS                       R12 R1 K5 ["Origin"]
       18 GETTABLEKS                       R13 R1 K6 ["Direction"]
       20 MOVE                             R14 R9
       21 NAMECALL                         R10 R10 K7 ["Raycast"]
       23 CALL                             R10 4 1
       24 JUMPIFNOT                        R10 ; [+34]
       25 GETTABLEKS                       R6 R10 K8 ["Instance"]
       27 GETTABLEKS                       R7 R10 K9 ["Distance"]
       29 MOVE                             R8 R10
       30 GETIMPORT                        R11 K13 [Enum.RaycastFilterType.Whitelist]
       32 SETTABLEKS                       R11 R9 K14 ["FilterType"]
       34 SETTABLEKS                       R2 R9 K15 ["FilterDescendantsInstances"]
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R13 R1 K5 ["Origin"]
       39 GETTABLEKS                       R14 R1 K6 ["Direction"]
       41 MOVE                             R15 R9
       42 NAMECALL                         R11 R11 K16 ["raycast"]
       44 CALL                             R11 4 1
       45 JUMPIFNOT                        R11 ; [+13]
       46 AND                              R12 R3 R5
       47 JUMPIF                           R12 ; [+8]
       48 GETTABLEKS                       R13 R11 K17 ["Position"]
       50 GETTABLEKS                       R15 R10 K17 ["Position"]
       52 NAMECALL                         R13 R13 K18 ["FuzzyEq"]
       54 CALL                             R13 2 1
       55 JUMPIFNOT                        R13 ; [+3]
       56 GETTABLEKS                       R6 R11 K8 ["Instance"]
       58 MOVE                             R8 R11
       59 JUMPIFNOT                        R4 ; [+77]
       60 JUMPIF                           R5 ; [+76]
       61 NAMECALL                         R11 R0 K19 ["getMouseLocation"]
       63 CALL                             R11 1 1
       64 LOADN                            R12 7
       65 LOADNIL                          R13
       66 LOADNIL                          R14
       67 LOADNIL                          R15
       68 MOVE                             R16 R2
       69 LOADNIL                          R17
       70 LOADNIL                          R18
       71 FORGPREP                         R16
       72 LOADK                            R23 K20 ["PVInstance"]
       73 NAMECALL                         R21 R20 K21 ["IsA"]
       75 CALL                             R21 2 1
       76 JUMPIFNOT                        R21 ; [+24]
       77 NAMECALL                         R21 R20 K22 ["GetPivot"]
       79 CALL                             R21 1 1
       80 GETTABLEKS                       R24 R21 K17 ["Position"]
       82 NAMECALL                         R22 R0 K23 ["worldToViewportPoint"]
       84 CALL                             R22 2 1
       85 GETIMPORT                        R23 K25 [Vector2.new]
       87 GETTABLEKS                       R24 R22 K26 ["X"]
       89 GETTABLEKS                       R25 R22 K27 ["Y"]
       91 CALL                             R23 2 1
       92 SUB                              R24 R11 R23
       93 GETTABLEKS                       R24 R24 K28 ["Magnitude"]
       95 JUMPIFNOTLT                      R24 R12 ; [+5]
       97 MOVE                             R12 R24
       98 MOVE                             R13 R20
       99 MOVE                             R14 R21
      100 MOVE                             R15 R19
      101 FORGLOOP                         R16 2 ; [-30]
      103 JUMPIFNOT                        R13 ; [+33]
      104 GETIMPORT                        R16 K31 [table.freeze]
      106 DUPTABLE                         R17 K39 [{["RaycastResult"], ["TargetMatrix"], ["TargetSize"] = {0, 0, 0}, ["IsPivot"] = True, ["IsActivePivot"]}]
      107 SETTABLEKS                       R8 R17 K32 ["RaycastResult"]
      109 SETTABLEKS                       R14 R17 K33 ["TargetMatrix"]
      111 LENGTH                           R19 R2
      112 JUMPIFEQ                         R15 R19 ; [+2]
      114 LOADB                            R18 0 +1
      115 LOADB                            R18 1
      116 SETTABLEKS                       R18 R17 K38 ["IsActivePivot"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R14 K17 ["Position"]
      121 GETTABLEKS                       R19 R1 K5 ["Origin"]
      123 SUB                              R18 R17 R19
      124 GETTABLEKS                       R20 R1 K6 ["Direction"]
      126 GETTABLEKS                       R20 R20 K40 ["Unit"]
      128 NAMECALL                         R18 R18 K41 ["Dot"]
      130 CALL                             R18 2 1
      131 MOVE                             R7 R18
      132 MOVE                             R18 R13
      133 LOADNIL                          R19
      134 MOVE                             R20 R7
      135 MOVE                             R21 R16
      136 RETURN                           R18 4
      137 GETTABLEKS                       R13 R1 K5 ["Origin"]
      139 GETTABLEKS                       R14 R1 K6 ["Direction"]
      141 GETIMPORT                        R15 K2 [RaycastParams.new]
      143 CALL                             R15 0 -1
      144 NAMECALL                         R11 R0 K42 ["gizmoRaycast"]
      146 CALL                             R11 -1 1
      147 JUMPIFNOT                        R11 ; [+17]
      148 NAMECALL                         R12 R0 K43 ["shouldDrawConstraintsOnTop"]
      150 CALL                             R12 1 1
      151 JUMPIF                           R12 ; [+8]
      152 JUMPIFNOT                        R10 ; [+7]
      153 JUMPIFNOT                        R10 ; [+11]
      154 GETTABLEKS                       R12 R11 K9 ["Distance"]
      156 GETTABLEKS                       R13 R10 K9 ["Distance"]
      158 JUMPIFNOTLT                      R12 R13 ; [+6]
      160 GETTABLEKS                       R6 R11 K8 ["Instance"]
      162 GETTABLEKS                       R7 R11 K9 ["Distance"]
      164 MOVE                             R8 R11
      165 JUMPIFNOT                        R6 ; [+64]
      166 GETUPVAL                         R12 3
      167 MOVE                             R13 R6
      168 MOVE                             R14 R5
      169 NEWTABLE                         R15 0 0
      171 CALL                             R12 3 1
      172 LOADNIL                          R13
      173 LOADNIL                          R14
      174 GETTABLEKS                       R15 R8 K8 ["Instance"]
      176 LOADK                            R17 K20 ["PVInstance"]
      177 NAMECALL                         R15 R15 K21 ["IsA"]
      179 CALL                             R15 2 1
      180 JUMPIFNOT                        R15 ; [+34]
      181 NAMECALL                         R16 R0 K44 ["shouldGridSnap"]
      183 CALL                             R16 1 1
      184 JUMPIFNOT                        R16 ; [+4]
      185 NAMECALL                         R15 R0 K45 ["getGridSize"]
      187 CALL                             R15 1 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R15
      190 GETUPVAL                         R17 4
      191 CALL                             R17 0 1
      192 JUMPIFNOT                        R17 ; [+4]
      193 NAMECALL                         R16 R0 K46 ["shouldUseBoundingBoxes"]
      195 CALL                             R16 1 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R16
      198 GETUPVAL                         R17 5
      199 GETTABLEKS                       R17 R17 K47 ["getSurfaceMatrix"]
      201 MOVE                             R18 R1
      202 MOVE                             R19 R8
      203 GETTABLEKS                       R20 R0 K48 ["PreviousTargetMatrix"]
      205 MOVE                             R21 R15
      206 MOVE                             R22 R16
      207 CALL                             R17 5 1
      208 JUMPIFNOT                        R17 ; [+6]
      209 GETTABLEKS                       R13 R17 K49 ["matrix"]
      211 GETTABLEKS                       R14 R17 K50 ["size"]
      213 SETTABLEKS                       R13 R0 K48 ["PreviousTargetMatrix"]
      215 GETIMPORT                        R15 K31 [table.freeze]
      217 DUPTABLE                         R16 K52 [{["RaycastResult"], ["TargetMatrix"], ["TargetSize"], ["IsPivot"] = False}]
      218 SETTABLEKS                       R8 R16 K32 ["RaycastResult"]
      220 SETTABLEKS                       R13 R16 K33 ["TargetMatrix"]
      222 SETTABLEKS                       R14 R16 K34 ["TargetSize"]
      224 CALL                             R15 1 1
      225 MOVE                             R16 R12
      226 MOVE                             R17 R6
      227 MOVE                             R18 R7
      228 MOVE                             R19 R15
      229 RETURN                           R16 4
      230 LOADNIL                          R12
      231 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETTABLEKS                       R5 R3 K10 ["Flags"]
       19 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K9 [require]
       24 GETIMPORT                        R6 K5 [script]
       26 GETTABLEKS                       R6 R6 K6 ["Parent"]
       28 GETTABLEKS                       R6 R6 K12 ["getSelectableWithCache"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K9 [require]
       33 GETIMPORT                        R7 K5 [script]
       35 GETTABLEKS                       R7 R7 K6 ["Parent"]
       37 GETTABLEKS                       R7 R7 K13 ["shouldSelectSubPart"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R3 K14 ["Utility"]
       44 GETTABLEKS                       R8 R8 K15 ["DragHelper"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R9 R3 K14 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["CursorGroupName"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K17 [PROTO_0]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 RETURN                           R9 1
