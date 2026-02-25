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
       61 JUMPIFNOT                        R11 ; [+83]
       62 JUMPIFNOT                        R4 ; [+82]
       63 JUMPIF                           R5 ; [+81]
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
       95 SUB                              R25 R11 R23
       96 GETTABLEKS                       R24 R25 K28 ["Magnitude"]
       98 JUMPIFNOTLT                      R24 R12 ; [+5]
      100 MOVE                             R12 R24
      101 MOVE                             R13 R20
      102 MOVE                             R14 R21
      103 MOVE                             R15 R19
      104 FORGLOOP                         R16 2 ; [-30]
      106 JUMPIFNOT                        R13 ; [+38]
      107 GETIMPORT                        R16 K31 [table.freeze]
      109 DUPTABLE                         R17 K37 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot", "IsActivePivot"}]
      110 SETTABLEKS                       R8 R17 K32 ["RaycastResult"]
      112 SETTABLEKS                       R14 R17 K33 ["TargetMatrix"]
      114 LOADK                            R18 K38 [{0, 0, 0}]
      115 SETTABLEKS                       R18 R17 K34 ["TargetSize"]
      117 LOADB                            R18 1
      118 SETTABLEKS                       R18 R17 K35 ["IsPivot"]
      120 LENGTH                           R19 R2
      121 JUMPIFEQ                         R15 R19 ; [+2]
      123 LOADB                            R18 0 +1
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K36 ["IsActivePivot"]
      127 CALL                             R16 1 1
      128 GETTABLEKS                       R17 R14 K17 ["Position"]
      130 GETTABLEKS                       R19 R1 K5 ["Origin"]
      132 SUB                              R18 R17 R19
      133 GETTABLEKS                       R21 R1 K6 ["Direction"]
      135 GETTABLEKS                       R20 R21 K39 ["Unit"]
      137 NAMECALL                         R18 R18 K40 ["Dot"]
      139 CALL                             R18 2 1
      140 MOVE                             R19 R13
      141 LOADNIL                          R20
      142 MOVE                             R21 R18
      143 MOVE                             R22 R16
      144 RETURN                           R19 4
      145 GETTABLEKS                       R13 R1 K5 ["Origin"]
      147 GETTABLEKS                       R14 R1 K6 ["Direction"]
      149 GETIMPORT                        R15 K2 [RaycastParams.new]
      151 CALL                             R15 0 -1
      152 NAMECALL                         R11 R0 K41 ["gizmoRaycast"]
      154 CALL                             R11 -1 1
      155 JUMPIFNOT                        R11 ; [+17]
      156 NAMECALL                         R12 R0 K42 ["shouldDrawConstraintsOnTop"]
      158 CALL                             R12 1 1
      159 JUMPIF                           R12 ; [+8]
      160 JUMPIFNOT                        R10 ; [+7]
      161 JUMPIFNOT                        R10 ; [+11]
      162 GETTABLEKS                       R12 R11 K9 ["Distance"]
      164 GETTABLEKS                       R13 R10 K9 ["Distance"]
      166 JUMPIFNOTLT                      R12 R13 ; [+6]
      168 GETTABLEKS                       R6 R11 K8 ["Instance"]
      170 GETTABLEKS                       R7 R11 K9 ["Distance"]
      172 MOVE                             R8 R11
      173 JUMPIFNOT                        R6 ; [+63]
      174 GETUPVAL                         R12 4
      175 MOVE                             R13 R6
      176 MOVE                             R14 R5
      177 NEWTABLE                         R15 0 0
      179 CALL                             R12 3 1
      180 LOADNIL                          R13
      181 GETUPVAL                         R14 3
      182 CALL                             R14 0 1
      183 JUMPIFNOT                        R14 ; [+48]
      184 LOADNIL                          R14
      185 LOADNIL                          R15
      186 GETTABLEKS                       R16 R8 K8 ["Instance"]
      188 LOADK                            R18 K20 ["PVInstance"]
      189 NAMECALL                         R16 R16 K21 ["IsA"]
      191 CALL                             R16 2 1
      192 JUMPIFNOT                        R16 ; [+25]
      193 NAMECALL                         R17 R0 K43 ["shouldGridSnap"]
      195 CALL                             R17 1 1
      196 JUMPIFNOT                        R17 ; [+4]
      197 NAMECALL                         R16 R0 K44 ["getGridSize"]
      199 CALL                             R16 1 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R16
      202 GETUPVAL                         R18 5
      203 GETTABLEKS                       R17 R18 K45 ["getSurfaceMatrix"]
      205 MOVE                             R18 R1
      206 MOVE                             R19 R8
      207 GETTABLEKS                       R20 R0 K46 ["PreviousTargetMatrix"]
      209 MOVE                             R21 R16
      210 CALL                             R17 4 1
      211 JUMPIFNOT                        R17 ; [+6]
      212 GETTABLEKS                       R14 R17 K47 ["matrix"]
      214 GETTABLEKS                       R15 R17 K48 ["size"]
      216 SETTABLEKS                       R14 R0 K46 ["PreviousTargetMatrix"]
      218 GETIMPORT                        R16 K31 [table.freeze]
      220 DUPTABLE                         R17 K49 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot"}]
      221 SETTABLEKS                       R8 R17 K32 ["RaycastResult"]
      223 SETTABLEKS                       R14 R17 K33 ["TargetMatrix"]
      225 SETTABLEKS                       R15 R17 K34 ["TargetSize"]
      227 LOADB                            R18 0
      228 SETTABLEKS                       R18 R17 K35 ["IsPivot"]
      230 CALL                             R16 1 1
      231 MOVE                             R13 R16
      232 MOVE                             R14 R12
      233 MOVE                             R15 R6
      234 MOVE                             R16 R7
      235 MOVE                             R17 R13
      236 RETURN                           R14 4
      237 LOADNIL                          R12
      238 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETIMPORT                        R7 K5 [script]
       19 GETTABLEKS                       R6 R7 K6 ["Parent"]
       21 GETTABLEKS                       R5 R6 K10 ["getSelectableWithCache"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K9 [require]
       26 GETIMPORT                        R8 K5 [script]
       28 GETTABLEKS                       R7 R8 K6 ["Parent"]
       30 GETTABLEKS                       R6 R7 K11 ["shouldSelectSubPart"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K9 [require]
       35 GETTABLEKS                       R8 R3 K12 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["DragHelper"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R9 R3 K14 ["Flags"]
       44 GETTABLEKS                       R8 R9 K15 ["getFFlagDraggerImprovements"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R10 R3 K12 ["Utility"]
       51 GETTABLEKS                       R9 R10 K16 ["CursorGroupName"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K17 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 RETURN                           R9 1
