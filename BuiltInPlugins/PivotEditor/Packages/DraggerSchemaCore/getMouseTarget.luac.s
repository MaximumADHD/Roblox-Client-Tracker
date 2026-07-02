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
       59 GETUPVAL                         R11 3
       60 CALL                             R11 0 1
       61 JUMPIFNOT                        R11 ; [+77]
       62 JUMPIFNOT                        R4 ; [+76]
       63 JUMPIF                           R5 ; [+75]
       64 NAMECALL                         R11 R0 K19 ["getMouseLocation"]
       66 CALL                             R11 1 1
       67 LOADN                            R12 7
       68 LOADNIL                          R13
       69 LOADNIL                          R14
       70 LOADNIL                          R15
       71 MOVE                             R16 R2
       72 LOADNIL                          R17
       73 LOADNIL                          R18
       74 FORGPREP                         R16
       75 LOADK                            R23 K20 ["PVInstance"]
       76 NAMECALL                         R21 R20 K21 ["IsA"]
       78 CALL                             R21 2 1
       79 JUMPIFNOT                        R21 ; [+24]
       80 NAMECALL                         R21 R20 K22 ["GetPivot"]
       82 CALL                             R21 1 1
       83 GETTABLEKS                       R24 R21 K17 ["Position"]
       85 NAMECALL                         R22 R0 K23 ["worldToViewportPoint"]
       87 CALL                             R22 2 1
       88 GETIMPORT                        R23 K25 [Vector2.new]
       90 GETTABLEKS                       R24 R22 K26 ["X"]
       92 GETTABLEKS                       R25 R22 K27 ["Y"]
       94 CALL                             R23 2 1
       95 SUB                              R24 R11 R23
       96 GETTABLEKS                       R24 R24 K28 ["Magnitude"]
       98 JUMPIFNOTLT                      R24 R12 ; [+5]
      100 MOVE                             R12 R24
      101 MOVE                             R13 R20
      102 MOVE                             R14 R21
      103 MOVE                             R15 R19
      104 FORGLOOP                         R16 2 ; [-30]
      106 JUMPIFNOT                        R13 ; [+32]
      107 GETIMPORT                        R16 K31 [table.freeze]
      109 DUPTABLE                         R17 K39 [{["RaycastResult"], ["TargetMatrix"], ["TargetSize"] = {0, 0, 0}, ["IsPivot"] = True, ["IsActivePivot"]}]
      110 SETTABLEKS                       R8 R17 K32 ["RaycastResult"]
      112 SETTABLEKS                       R14 R17 K33 ["TargetMatrix"]
      114 LENGTH                           R19 R2
      115 JUMPIFEQ                         R15 R19 ; [+2]
      117 LOADB                            R18 0 +1
      118 LOADB                            R18 1
      119 SETTABLEKS                       R18 R17 K38 ["IsActivePivot"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R17 R14 K17 ["Position"]
      124 GETTABLEKS                       R19 R1 K5 ["Origin"]
      126 SUB                              R18 R17 R19
      127 GETTABLEKS                       R20 R1 K6 ["Direction"]
      129 GETTABLEKS                       R20 R20 K40 ["Unit"]
      131 NAMECALL                         R18 R18 K41 ["Dot"]
      133 CALL                             R18 2 1
      134 MOVE                             R19 R13
      135 LOADNIL                          R20
      136 MOVE                             R21 R18
      137 MOVE                             R22 R16
      138 RETURN                           R19 4
      139 GETTABLEKS                       R13 R1 K5 ["Origin"]
      141 GETTABLEKS                       R14 R1 K6 ["Direction"]
      143 GETIMPORT                        R15 K2 [RaycastParams.new]
      145 CALL                             R15 0 -1
      146 NAMECALL                         R11 R0 K42 ["gizmoRaycast"]
      148 CALL                             R11 -1 1
      149 JUMPIFNOT                        R11 ; [+17]
      150 NAMECALL                         R12 R0 K43 ["shouldDrawConstraintsOnTop"]
      152 CALL                             R12 1 1
      153 JUMPIF                           R12 ; [+8]
      154 JUMPIFNOT                        R10 ; [+7]
      155 JUMPIFNOT                        R10 ; [+11]
      156 GETTABLEKS                       R12 R11 K9 ["Distance"]
      158 GETTABLEKS                       R13 R10 K9 ["Distance"]
      160 JUMPIFNOTLT                      R12 R13 ; [+6]
      162 GETTABLEKS                       R6 R11 K8 ["Instance"]
      164 GETTABLEKS                       R7 R11 K9 ["Distance"]
      166 MOVE                             R8 R11
      167 JUMPIFNOT                        R6 ; [+60]
      168 GETUPVAL                         R12 4
      169 MOVE                             R13 R6
      170 MOVE                             R14 R5
      171 NEWTABLE                         R15 0 0
      173 CALL                             R12 3 1
      174 LOADNIL                          R13
      175 GETUPVAL                         R14 3
      176 CALL                             R14 0 1
      177 JUMPIFNOT                        R14 ; [+45]
      178 LOADNIL                          R14
      179 LOADNIL                          R15
      180 GETTABLEKS                       R16 R8 K8 ["Instance"]
      182 LOADK                            R18 K20 ["PVInstance"]
      183 NAMECALL                         R16 R16 K21 ["IsA"]
      185 CALL                             R16 2 1
      186 JUMPIFNOT                        R16 ; [+25]
      187 NAMECALL                         R17 R0 K44 ["shouldGridSnap"]
      189 CALL                             R17 1 1
      190 JUMPIFNOT                        R17 ; [+4]
      191 NAMECALL                         R16 R0 K45 ["getGridSize"]
      193 CALL                             R16 1 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R16
      196 GETUPVAL                         R17 5
      197 GETTABLEKS                       R17 R17 K46 ["getSurfaceMatrix"]
      199 MOVE                             R18 R1
      200 MOVE                             R19 R8
      201 GETTABLEKS                       R20 R0 K47 ["PreviousTargetMatrix"]
      203 MOVE                             R21 R16
      204 CALL                             R17 4 1
      205 JUMPIFNOT                        R17 ; [+6]
      206 GETTABLEKS                       R14 R17 K48 ["matrix"]
      208 GETTABLEKS                       R15 R17 K49 ["size"]
      210 SETTABLEKS                       R14 R0 K47 ["PreviousTargetMatrix"]
      212 GETIMPORT                        R16 K31 [table.freeze]
      214 DUPTABLE                         R17 K51 [{["RaycastResult"], ["TargetMatrix"], ["TargetSize"], ["IsPivot"] = False}]
      215 SETTABLEKS                       R8 R17 K32 ["RaycastResult"]
      217 SETTABLEKS                       R14 R17 K33 ["TargetMatrix"]
      219 SETTABLEKS                       R15 R17 K34 ["TargetSize"]
      221 CALL                             R16 1 1
      222 MOVE                             R13 R16
      223 MOVE                             R14 R12
      224 MOVE                             R15 R6
      225 MOVE                             R16 R7
      226 MOVE                             R17 R13
      227 RETURN                           R14 4
      228 LOADNIL                          R12
      229 RETURN                           R12 1

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
       17 GETIMPORT                        R5 K5 [script]
       19 GETTABLEKS                       R5 R5 K6 ["Parent"]
       21 GETTABLEKS                       R5 R5 K10 ["getSelectableWithCache"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K9 [require]
       26 GETIMPORT                        R6 K5 [script]
       28 GETTABLEKS                       R6 R6 K6 ["Parent"]
       30 GETTABLEKS                       R6 R6 K11 ["shouldSelectSubPart"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K9 [require]
       35 GETTABLEKS                       R7 R3 K12 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["DragHelper"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R3 K14 ["Flags"]
       44 GETTABLEKS                       R8 R8 K15 ["getFFlagDraggerImprovements"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R9 R3 K12 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["CursorGroupName"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K17 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 RETURN                           R9 1
