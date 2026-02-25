PROTO_0:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["cameraCFrame"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["initSucceded"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["animStartCFrame"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["animTargetCFrame"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["windhoseSimulation"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["lastTick"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["currentTime"]
       21 LOADN                            R1 10
       22 SETTABLEKS                       R1 R0 K7 ["windScaleFactor"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K8 ["spinX"]
       27 LOADK                            R1 K9 [1.5707963267949]
       28 SETTABLEKS                       R1 R0 K10 ["spinY"]
       30 GETIMPORT                        R3 K12 [workspace]
       32 GETTABLEKS                       R2 R3 K13 ["GlobalWind"]
       34 GETTABLEKS                       R1 R2 K14 ["Magnitude"]
       36 SETTABLEKS                       R1 R0 K15 ["windSpeed"]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K16 ["lastWind"]
       41 RETURN                           R0 0

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["worldModel"]
        2 SETTABLEKS                       R2 R0 K1 ["viewportCamera"]
        4 SETTABLEKS                       R3 R0 K2 ["viewport"]
        6 SETTABLEKS                       R4 R0 K3 ["onWindChanged"]
        8 SETTABLEKS                       R5 R0 K4 ["onWindowMoved"]
       10 SETTABLEKS                       R6 R0 K5 ["onisChangingPitchChanged"]
       12 SETTABLEKS                       R7 R0 K6 ["onisChangingYawChanged"]
       14 LOADK                            R10 K7 ["UnitSelectRingXZ"]
       15 NAMECALL                         R8 R1 K8 ["WaitForChild"]
       17 CALL                             R8 2 1
       18 SETTABLEKS                       R8 R0 K9 ["selectRing"]
       20 LOADK                            R10 K10 ["UnitSelectStickDownPositiveZ"]
       21 NAMECALL                         R8 R1 K8 ["WaitForChild"]
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R0 K11 ["selectStick"]
       26 LOADK                            R10 K12 ["ArrowTipDownPositiveZ"]
       27 NAMECALL                         R8 R1 K8 ["WaitForChild"]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R0 K13 ["selectArrow"]
       32 GETTABLEKS                       R8 R0 K11 ["selectStick"]
       34 GETIMPORT                        R9 K16 [Color3.new]
       36 LOADN                            R10 0
       37 LOADN                            R11 0
       38 LOADN                            R12 1
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R9 R8 K17 ["Color"]
       42 GETTABLEKS                       R8 R0 K9 ["selectRing"]
       44 GETTABLEKS                       R12 R0 K9 ["selectRing"]
       46 GETTABLEKS                       R11 R12 K18 ["Size"]
       48 GETTABLEKS                       R10 R11 K19 ["x"]
       50 LOADN                            R12 2
       51 GETTABLEKS                       R15 R0 K9 ["selectRing"]
       53 GETTABLEKS                       R14 R15 K18 ["Size"]
       55 GETTABLEKS                       R13 R14 K20 ["y"]
       57 MUL                              R11 R12 R13
       58 GETTABLEKS                       R14 R0 K9 ["selectRing"]
       60 GETTABLEKS                       R13 R14 K18 ["Size"]
       62 GETTABLEKS                       R12 R13 K21 ["z"]
       64 FASTCALL                         VECTOR ; [+2]
       65 GETIMPORT                        R9 K23 [Vector3.new]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K18 ["Size"]
       70 GETTABLEKS                       R9 R0 K9 ["selectRing"]
       72 GETTABLEKS                       R8 R9 K18 ["Size"]
       74 SETTABLEKS                       R8 R0 K24 ["selectRingOrigSize"]
       76 GETTABLEKS                       R8 R0 K11 ["selectStick"]
       78 LOADN                            R11 4
       79 GETTABLEKS                       R14 R0 K11 ["selectStick"]
       81 GETTABLEKS                       R13 R14 K18 ["Size"]
       83 GETTABLEKS                       R12 R13 K19 ["x"]
       85 MUL                              R10 R11 R12
       86 LOADN                            R12 4
       87 GETTABLEKS                       R15 R0 K11 ["selectStick"]
       89 GETTABLEKS                       R14 R15 K18 ["Size"]
       91 GETTABLEKS                       R13 R14 K20 ["y"]
       93 MUL                              R11 R12 R13
       94 GETTABLEKS                       R14 R0 K11 ["selectStick"]
       96 GETTABLEKS                       R13 R14 K18 ["Size"]
       98 GETTABLEKS                       R12 R13 K21 ["z"]
      100 FASTCALL                         VECTOR ; [+2]
      101 GETIMPORT                        R9 K23 [Vector3.new]
      103 CALL                             R9 3 1
      104 SETTABLEKS                       R9 R8 K18 ["Size"]
      106 GETTABLEKS                       R9 R0 K11 ["selectStick"]
      108 GETTABLEKS                       R8 R9 K18 ["Size"]
      110 SETTABLEKS                       R8 R0 K25 ["selectStickOrigSize"]
      112 GETTABLEKS                       R8 R0 K13 ["selectArrow"]
      114 LOADN                            R11 4
      115 GETTABLEKS                       R14 R0 K13 ["selectArrow"]
      117 GETTABLEKS                       R13 R14 K18 ["Size"]
      119 GETTABLEKS                       R12 R13 K19 ["x"]
      121 MUL                              R10 R11 R12
      122 LOADN                            R12 4
      123 GETTABLEKS                       R15 R0 K13 ["selectArrow"]
      125 GETTABLEKS                       R14 R15 K18 ["Size"]
      127 GETTABLEKS                       R13 R14 K20 ["y"]
      129 MUL                              R11 R12 R13
      130 LOADN                            R13 2
      131 GETTABLEKS                       R16 R0 K13 ["selectArrow"]
      133 GETTABLEKS                       R15 R16 K18 ["Size"]
      135 GETTABLEKS                       R14 R15 K21 ["z"]
      137 MUL                              R12 R13 R14
      138 FASTCALL                         VECTOR ; [+2]
      139 GETIMPORT                        R9 K23 [Vector3.new]
      141 CALL                             R9 3 1
      142 SETTABLEKS                       R9 R8 K18 ["Size"]
      144 GETTABLEKS                       R9 R0 K13 ["selectArrow"]
      146 GETTABLEKS                       R8 R9 K18 ["Size"]
      148 SETTABLEKS                       R8 R0 K26 ["selectArrowOrigSize"]
      150 GETIMPORT                        R8 K28 [Instance.new]
      152 LOADK                            R9 K29 ["Part"]
      153 CALL                             R8 1 1
      154 SETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      156 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      158 SETTABLEKS                       R1 R8 K31 ["Parent"]
      160 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      162 GETTABLEKS                       R10 R0 K9 ["selectRing"]
      164 GETTABLEKS                       R9 R10 K32 ["Material"]
      166 SETTABLEKS                       R9 R8 K32 ["Material"]
      168 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      170 GETIMPORT                        R9 K16 [Color3.new]
      172 LOADN                            R10 0
      173 LOADN                            R11 1
      174 LOADN                            R12 0
      175 CALL                             R9 3 1
      176 SETTABLEKS                       R9 R8 K17 ["Color"]
      178 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      180 LOADN                            R9 1
      181 SETTABLEKS                       R9 R8 K33 ["Transparency"]
      183 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      185 LOADK                            R10 K34 [0.05]
      186 LOADK                            R11 K34 [0.05]
      187 GETTABLEKS                       R15 R0 K9 ["selectRing"]
      189 GETTABLEKS                       R14 R15 K18 ["Size"]
      191 GETTABLEKS                       R13 R14 K21 ["z"]
      193 DIVK                             R12 R13 K35 [2]
      194 FASTCALL                         VECTOR ; [+2]
      195 GETIMPORT                        R9 K23 [Vector3.new]
      197 CALL                             R9 3 1
      198 SETTABLEKS                       R9 R8 K18 ["Size"]
      200 GETTABLEKS                       R8 R0 K30 ["ringDragIndicatorPart"]
      202 GETIMPORT                        R9 K37 [CFrame.new]
      204 GETTABLEKS                       R13 R0 K9 ["selectRing"]
      206 GETTABLEKS                       R12 R13 K36 ["CFrame"]
      208 GETTABLEKS                       R11 R12 K38 ["Position"]
      210 LOADN                            R13 0
      211 LOADN                            R14 0
      212 GETTABLEKS                       R18 R0 K9 ["selectRing"]
      214 GETTABLEKS                       R17 R18 K18 ["Size"]
      216 GETTABLEKS                       R16 R17 K21 ["z"]
      218 DIVK                             R15 R16 K35 [2]
      219 FASTCALL                         VECTOR ; [+2]
      220 GETIMPORT                        R12 K23 [Vector3.new]
      222 CALL                             R12 3 1
      223 ADD                              R10 R11 R12
      224 CALL                             R9 1 1
      225 SETTABLEKS                       R9 R8 K36 ["CFrame"]
      227 LOADB                            R8 1
      228 SETTABLEKS                       R8 R0 K39 ["initSucceded"]
      230 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["windChanged"]
        2 JUMPIF                           R1 ; [+154]
        3 GETTABLEKS                       R1 R0 K1 ["isScaling"]
        5 JUMPIF                           R1 ; [+151]
        6 GETTABLEKS                       R1 R0 K2 ["isChangingPitch"]
        8 JUMPIF                           R1 ; [+148]
        9 GETTABLEKS                       R1 R0 K3 ["isChangingYaw"]
       11 JUMPIF                           R1 ; [+145]
       12 GETTABLEKS                       R1 R0 K4 ["lastWind"]
       14 GETIMPORT                        R3 K6 [workspace]
       16 GETTABLEKS                       R2 R3 K7 ["GlobalWind"]
       18 JUMPIFEQ                         R1 R2 ; [+138]
       20 GETIMPORT                        R2 K6 [workspace]
       22 GETTABLEKS                       R1 R2 K7 ["GlobalWind"]
       24 GETIMPORT                        R4 K6 [workspace]
       26 GETTABLEKS                       R3 R4 K7 ["GlobalWind"]
       28 NAMECALL                         R1 R1 K8 ["Dot"]
       30 CALL                             R1 2 1
       31 LOADN                            R2 0
       32 JUMPIFNOTLT                      R2 R1 ; [+59]
       34 GETIMPORT                        R4 K6 [workspace]
       36 GETTABLEKS                       R3 R4 K7 ["GlobalWind"]
       38 GETTABLEKS                       R2 R3 K9 ["Unit"]
       40 MINUS                            R1 R2
       41 LOADN                            R2 0
       42 GETTABLEKS                       R3 R1 K10 ["z"]
       44 LOADN                            R4 0
       45 JUMPIFNOTLT                      R3 R4 ; [+2]
       47 LOADK                            R2 K11 [3.14159265358979]
       48 GETTABLEKS                       R3 R1 K10 ["z"]
       50 JUMPIFEQKN                       R3 K12 [0] ; [+14]
       52 GETTABLEKS                       R6 R1 K13 ["x"]
       54 GETTABLEKS                       R7 R1 K10 ["z"]
       56 DIV                              R5 R6 R7
       57 FASTCALL1                        MATH_ATAN R5 ; [+2]
       58 GETIMPORT                        R4 K16 [math.atan]
       60 CALL                             R4 1 1
       61 ADD                              R3 R2 R4
       62 SETTABLEKS                       R3 R0 K17 ["spinY"]
       64 JUMP                             ; [+12]
       65 GETTABLEKS                       R3 R1 K13 ["x"]
       67 LOADN                            R4 0
       68 JUMPIFNOTLT                      R4 R3 ; [+5]
       70 ADDK                             R3 R2 K18 [1.5707963267949]
       71 SETTABLEKS                       R3 R0 K17 ["spinY"]
       73 JUMP                             ; [+3]
       74 SUBK                             R3 R2 K18 [1.5707963267949]
       75 SETTABLEKS                       R3 R0 K17 ["spinY"]
       77 GETTABLEKS                       R6 R1 K19 ["y"]
       79 MINUS                            R5 R6
       80 LOADN                            R6 255
       81 LOADN                            R7 1
       82 FASTCALL                         MATH_CLAMP ; [+2]
       83 GETIMPORT                        R4 K21 [math.clamp]
       85 CALL                             R4 3 1
       86 FASTCALL1                        MATH_ASIN R4 ; [+2]
       87 GETIMPORT                        R3 K23 [math.asin]
       89 CALL                             R3 1 1
       90 SETTABLEKS                       R3 R0 K24 ["spinX"]
       92 GETTABLEKS                       R1 R0 K4 ["lastWind"]
       94 GETIMPORT                        R3 K6 [workspace]
       96 GETTABLEKS                       R2 R3 K7 ["GlobalWind"]
       98 JUMPIFEQ                         R1 R2 ; [+38]
      100 GETTABLEKS                       R1 R0 K25 ["selectStick"]
      102 GETIMPORT                        R3 K28 [CFrame.fromEulerAnglesYXZ]
      104 LOADN                            R4 0
      105 GETTABLEKS                       R5 R0 K17 ["spinY"]
      107 LOADN                            R6 0
      108 CALL                             R3 3 1
      109 GETIMPORT                        R4 K28 [CFrame.fromEulerAnglesYXZ]
      111 GETTABLEKS                       R5 R0 K24 ["spinX"]
      113 LOADN                            R6 0
      114 LOADN                            R7 0
      115 CALL                             R4 3 1
      116 MUL                              R2 R3 R4
      117 SETTABLEKS                       R2 R1 K26 ["CFrame"]
      119 GETTABLEKS                       R1 R0 K25 ["selectStick"]
      121 GETTABLEKS                       R4 R0 K25 ["selectStick"]
      123 GETTABLEKS                       R3 R4 K26 ["CFrame"]
      125 GETTABLEKS                       R6 R0 K25 ["selectStick"]
      127 GETTABLEKS                       R5 R6 K26 ["CFrame"]
      129 GETTABLEKS                       R4 R5 K29 ["LookVector"]
      131 SUB                              R2 R3 R4
      132 SETTABLEKS                       R2 R1 K26 ["CFrame"]
      134 GETTABLEKS                       R1 R0 K30 ["onWindChanged"]
      136 CALL                             R1 0 0
      137 GETIMPORT                        R4 K6 [workspace]
      139 GETTABLEKS                       R3 R4 K7 ["GlobalWind"]
      141 GETTABLEKS                       R2 R3 K31 ["Magnitude"]
      143 LOADN                            R3 0
      144 LOADK                            R4 K32 [999.9]
      145 FASTCALL                         MATH_CLAMP ; [+2]
      146 GETIMPORT                        R1 K21 [math.clamp]
      148 CALL                             R1 3 1
      149 SETTABLEKS                       R1 R0 K33 ["windSpeed"]
      151 GETIMPORT                        R2 K6 [workspace]
      153 GETTABLEKS                       R1 R2 K7 ["GlobalWind"]
      155 SETTABLEKS                       R1 R0 K4 ["lastWind"]
      157 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hover"]
        3 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["hover"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["isHoveringOverRing"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["isHoveringOverStick"]
        9 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["updatePickRay"]
        4 CALL                             R3 3 0
        5 GETIMPORT                        R3 K3 [RaycastParams.new]
        7 CALL                             R3 0 1
        8 GETIMPORT                        R4 K7 [Enum.RaycastFilterType.Blacklist]
       10 SETTABLEKS                       R4 R3 K8 ["FilterType"]
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R6 R0 K9 ["windhoseSimulation"]
       16 GETTABLEKS                       R5 R6 K10 ["cone"]
       18 SETLIST                          R4 R5 1 [1]
       20 SETTABLEKS                       R4 R3 K11 ["FilterDescendantsInstances"]
       22 GETTABLEKS                       R4 R0 K12 ["worldModel"]
       24 GETTABLEKS                       R7 R0 K13 ["ray"]
       26 GETTABLEKS                       R6 R7 K14 ["Origin"]
       28 GETTABLEKS                       R9 R0 K13 ["ray"]
       30 GETTABLEKS                       R8 R9 K15 ["Direction"]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K16 ["planeTestRayLength"]
       35 MUL                              R7 R8 R9
       36 MOVE                             R8 R3
       37 NAMECALL                         R4 R4 K17 ["Raycast"]
       39 CALL                             R4 4 1
       40 JUMPIFNOT                        R4 ; [+43]
       41 GETTABLEKS                       R5 R0 K18 ["selectRing"]
       43 GETTABLEKS                       R6 R4 K19 ["Instance"]
       45 JUMPIFNOTEQ                      R5 R6 ; [+5]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R0 K20 ["isHoveringOverRing"]
       50 JUMP                             ; [+3]
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R0 K20 ["isHoveringOverRing"]
       54 GETTABLEKS                       R5 R0 K21 ["selectStick"]
       56 GETTABLEKS                       R6 R4 K19 ["Instance"]
       58 JUMPIFNOTEQ                      R5 R6 ; [+8]
       60 LOADB                            R5 1
       61 SETTABLEKS                       R5 R0 K22 ["isHoveringOverStick"]
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R0 K20 ["isHoveringOverRing"]
       66 JUMP                             ; [+3]
       67 LOADB                            R5 0
       68 SETTABLEKS                       R5 R0 K22 ["isHoveringOverStick"]
       70 GETTABLEKS                       R5 R0 K23 ["selectArrow"]
       72 GETTABLEKS                       R6 R4 K19 ["Instance"]
       74 JUMPIFNOTEQ                      R5 R6 ; [+5]
       76 LOADB                            R5 1
       77 SETTABLEKS                       R5 R0 K22 ["isHoveringOverStick"]
       79 RETURN                           R0 0
       80 LOADB                            R5 0
       81 SETTABLEKS                       R5 R0 K24 ["isHoveringOverArrow"]
       83 RETURN                           R0 0
       84 LOADB                            R5 0
       85 SETTABLEKS                       R5 R0 K20 ["isHoveringOverRing"]
       87 LOADB                            R5 0
       88 SETTABLEKS                       R5 R0 K24 ["isHoveringOverArrow"]
       90 LOADB                            R5 0
       91 SETTABLEKS                       R5 R0 K22 ["isHoveringOverStick"]
       93 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["initSucceded"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["isInvalidCameraType"]
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 NAMECALL                         R3 R0 K2 ["processRaycast"]
       14 CALL                             R3 3 0
       15 GETTABLEKS                       R3 R0 K3 ["ray"]
       17 LOADNIL                          R4
       18 GETTABLEKS                       R5 R0 K4 ["isChangingYaw"]
       20 JUMPIFNOT                        R5 ; [+90]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K5 ["getRayPlaneHit"]
       24 GETTABLEKS                       R6 R3 K6 ["Origin"]
       26 GETTABLEKS                       R8 R3 K6 ["Origin"]
       28 GETTABLEKS                       R10 R3 K7 ["Direction"]
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R11 R12 K8 ["planeTestRayLength"]
       33 MUL                              R9 R10 R11
       34 ADD                              R7 R8 R9
       35 LOADK                            R8 K9 [{0, 1, 0}]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K10 ["selectRingXZDistance"]
       39 CALL                             R5 4 1
       40 MOVE                             R4 R5
       41 GETTABLEKS                       R5 R0 K11 ["rayHitLastFrame"]
       43 JUMPIF                           R5 ; [+2]
       44 SETTABLEKS                       R4 R0 K11 ["rayHitLastFrame"]
       46 LOADK                            R6 K12 [{0, 0, 0}]
       47 SUB                              R5 R4 R6
       48 GETTABLEKS                       R7 R5 K13 ["x"]
       50 LOADN                            R8 0
       51 GETTABLEKS                       R9 R5 K14 ["z"]
       53 FASTCALL                         VECTOR ; [+2]
       54 GETIMPORT                        R6 K17 [Vector3.new]
       56 CALL                             R6 3 1
       57 MOVE                             R5 R6
       58 GETTABLEKS                       R5 R5 K18 ["Unit"]
       60 GETTABLEKS                       R8 R0 K11 ["rayHitLastFrame"]
       62 LOADK                            R9 K12 [{0, 0, 0}]
       63 SUB                              R7 R8 R9
       64 GETTABLEKS                       R6 R7 K18 ["Unit"]
       66 GETTABLEKS                       R8 R6 K13 ["x"]
       68 LOADN                            R9 0
       69 GETTABLEKS                       R10 R6 K14 ["z"]
       71 FASTCALL                         VECTOR ; [+2]
       72 GETIMPORT                        R7 K17 [Vector3.new]
       74 CALL                             R7 3 1
       75 MOVE                             R6 R7
       76 GETTABLEKS                       R6 R6 K18 ["Unit"]
       78 LOADNIL                          R7
       79 MOVE                             R11 R6
       80 NAMECALL                         R9 R5 K19 ["Cross"]
       82 CALL                             R9 2 1
       83 GETTABLEKS                       R8 R9 K20 ["y"]
       85 LOADN                            R9 0
       86 JUMPIFNOTLE                      R9 R8 ; [+3]
       88 LOADN                            R7 255
       89 JUMP                             ; [+1]
       90 LOADN                            R7 1
       91 GETTABLEKS                       R8 R0 K21 ["spinY"]
       93 MOVE                             R14 R6
       94 NAMECALL                         R12 R5 K22 ["Dot"]
       96 CALL                             R12 2 1
       97 LOADN                            R13 255
       98 LOADN                            R14 1
       99 FASTCALL                         MATH_CLAMP ; [+2]
      100 GETIMPORT                        R11 K25 [math.clamp]
      102 CALL                             R11 3 1
      103 FASTCALL1                        MATH_ACOS R11 ; [+2]
      104 GETIMPORT                        R10 K27 [math.acos]
      106 CALL                             R10 1 1
      107 MUL                              R9 R7 R10
      108 ADD                              R8 R8 R9
      109 SETTABLEKS                       R8 R0 K21 ["spinY"]
      111 GETTABLEKS                       R5 R0 K28 ["isChangingPitch"]
      113 JUMPIFNOT                        R5 ; [+74]
      114 GETUPVAL                         R6 0
      115 GETTABLEKS                       R5 R6 K5 ["getRayPlaneHit"]
      117 GETTABLEKS                       R6 R3 K6 ["Origin"]
      119 GETTABLEKS                       R8 R3 K6 ["Origin"]
      121 GETTABLEKS                       R10 R3 K7 ["Direction"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R11 R12 K8 ["planeTestRayLength"]
      126 MUL                              R9 R10 R11
      127 ADD                              R7 R8 R9
      128 GETTABLEKS                       R10 R0 K29 ["selectStick"]
      130 GETTABLEKS                       R9 R10 K30 ["CFrame"]
      132 GETTABLEKS                       R8 R9 K31 ["RightVector"]
      134 LOADN                            R9 0
      135 CALL                             R5 4 1
      136 MOVE                             R4 R5
      137 GETIMPORT                        R6 K33 [CFrame.fromEulerAnglesYXZ]
      139 LOADN                            R7 0
      140 GETTABLEKS                       R8 R0 K21 ["spinY"]
      142 LOADN                            R9 0
      143 CALL                             R6 3 1
      144 GETTABLEKS                       R5 R6 K34 ["LookVector"]
      146 MOVE                             R8 R4
      147 NAMECALL                         R6 R5 K22 ["Dot"]
      149 CALL                             R6 2 1
      150 LOADN                            R7 0
      151 JUMPIFNOTLT                      R6 R7 ; [+36]
      153 GETTABLEKS                       R6 R0 K11 ["rayHitLastFrame"]
      155 JUMPIF                           R6 ; [+2]
      156 SETTABLEKS                       R4 R0 K11 ["rayHitLastFrame"]
      158 LOADK                            R7 K12 [{0, 0, 0}]
      159 SUB                              R6 R4 R7
      160 GETTABLEKS                       R6 R6 K18 ["Unit"]
      162 GETTABLEKS                       R8 R6 K13 ["x"]
      164 LOADN                            R9 0
      165 GETTABLEKS                       R10 R6 K14 ["z"]
      167 FASTCALL                         VECTOR ; [+2]
      168 GETIMPORT                        R7 K17 [Vector3.new]
      170 CALL                             R7 3 1
      171 GETTABLEKS                       R7 R7 K18 ["Unit"]
      173 GETTABLEKS                       R11 R6 K20 ["y"]
      175 MINUS                            R10 R11
      176 LOADN                            R11 255
      177 LOADN                            R12 1
      178 FASTCALL                         MATH_CLAMP ; [+2]
      179 GETIMPORT                        R9 K25 [math.clamp]
      181 CALL                             R9 3 1
      182 FASTCALL1                        MATH_ASIN R9 ; [+2]
      183 GETIMPORT                        R8 K36 [math.asin]
      185 CALL                             R8 1 1
      186 SETTABLEKS                       R8 R0 K37 ["spinX"]
      188 SETTABLEKS                       R4 R0 K11 ["rayHitLastFrame"]
      190 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mouseDownPosition"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        7 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        9 JUMPIFNOTEQ                      R2 R3 ; [+104]
       11 GETTABLEKS                       R3 R1 K5 ["Position"]
       13 GETTABLEKS                       R2 R3 K6 ["x"]
       15 GETTABLEKS                       R4 R1 K5 ["Position"]
       17 GETTABLEKS                       R3 R4 K7 ["y"]
       19 GETTABLEKS                       R8 R0 K0 ["mouseDownPosition"]
       21 GETTABLEKS                       R7 R8 K6 ["x"]
       23 SUB                              R6 R7 R2
       24 FASTCALL1                        MATH_ABS R6 ; [+2]
       25 GETIMPORT                        R5 K10 [math.abs]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R9 R0 K0 ["mouseDownPosition"]
       30 GETTABLEKS                       R8 R9 K7 ["y"]
       32 SUB                              R7 R8 R3
       33 FASTCALL1                        MATH_ABS R7 ; [+2]
       34 GETIMPORT                        R6 K10 [math.abs]
       36 CALL                             R6 1 1
       37 ADD                              R4 R5 R6
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K11 ["dragDelta"]
       41 JUMPIFNOTLT                      R5 R4 ; [+72]
       43 GETTABLEKS                       R9 R0 K12 ["mouseDownGuiPosition"]
       45 GETTABLEKS                       R8 R9 K13 ["X"]
       47 GETTABLEKS                       R7 R8 K14 ["Offset"]
       49 ADD                              R6 R7 R2
       50 GETTABLEKS                       R8 R0 K0 ["mouseDownPosition"]
       52 GETTABLEKS                       R7 R8 K6 ["x"]
       54 SUB                              R5 R6 R7
       55 GETTABLEKS                       R10 R0 K12 ["mouseDownGuiPosition"]
       57 GETTABLEKS                       R9 R10 K15 ["Y"]
       59 GETTABLEKS                       R8 R9 K14 ["Offset"]
       61 ADD                              R7 R8 R3
       62 GETTABLEKS                       R9 R0 K0 ["mouseDownPosition"]
       64 GETTABLEKS                       R8 R9 K7 ["y"]
       66 SUB                              R6 R7 R8
       67 GETTABLEKS                       R7 R0 K16 ["isChangingYaw"]
       69 JUMPIF                           R7 ; [+6]
       70 GETTABLEKS                       R7 R0 K17 ["isChangingPitch"]
       72 JUMPIF                           R7 ; [+3]
       73 GETTABLEKS                       R7 R0 K18 ["isScaling"]
       75 JUMPIFNOT                        R7 ; [+8]
       76 MOVE                             R9 R2
       77 MOVE                             R10 R3
       78 NAMECALL                         R7 R0 K19 ["onMouseMove"]
       80 CALL                             R7 3 0
       81 LOADB                            R7 1
       82 SETTABLEKS                       R7 R0 K20 ["windChanged"]
       84 GETTABLEKS                       R7 R0 K16 ["isChangingYaw"]
       86 JUMPIF                           R7 ; [+27]
       87 GETTABLEKS                       R7 R0 K17 ["isChangingPitch"]
       89 JUMPIF                           R7 ; [+24]
       90 GETTABLEKS                       R7 R0 K18 ["isScaling"]
       92 JUMPIF                           R7 ; [+21]
       93 GETTABLEKS                       R7 R0 K21 ["viewport"]
       95 GETIMPORT                        R8 K24 [UDim2.new]
       97 GETTABLEKS                       R11 R0 K12 ["mouseDownGuiPosition"]
       99 GETTABLEKS                       R10 R11 K13 ["X"]
      101 GETTABLEKS                       R9 R10 K25 ["Scale"]
      103 MOVE                             R10 R5
      104 GETTABLEKS                       R13 R0 K12 ["mouseDownGuiPosition"]
      106 GETTABLEKS                       R12 R13 K15 ["Y"]
      108 GETTABLEKS                       R11 R12 K25 ["Scale"]
      110 MOVE                             R12 R6
      111 CALL                             R8 4 1
      112 SETTABLEKS                       R8 R7 K5 ["Position"]
      114 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R0 K4 ["isChangingYaw"]
        9 LOADB                            R2 0
       10 SETTABLEKS                       R2 R0 K5 ["isChangingPitch"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R0 K6 ["isScaling"]
       15 GETTABLEKS                       R2 R0 K7 ["ringDragIndicatorPart"]
       17 LOADN                            R3 1
       18 SETTABLEKS                       R3 R2 K8 ["Transparency"]
       20 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       22 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
       24 JUMPIFNOTEQ                      R2 R3 ; [+7]
       26 GETTABLEKS                       R2 R0 K9 ["mouseDownPosition"]
       28 JUMPIFNOT                        R2 ; [+3]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K9 ["mouseDownPosition"]
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetGuiInset"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R8 R0 K1 ["viewport"]
        6 GETTABLEKS                       R7 R8 K2 ["AbsolutePosition"]
        8 GETTABLEKS                       R6 R7 K3 ["x"]
       10 SUB                              R5 R1 R6
       11 GETTABLEKS                       R6 R3 K3 ["x"]
       13 SUB                              R4 R5 R6
       14 GETTABLEKS                       R9 R0 K1 ["viewport"]
       16 GETTABLEKS                       R8 R9 K2 ["AbsolutePosition"]
       18 GETTABLEKS                       R7 R8 K4 ["y"]
       20 SUB                              R6 R2 R7
       21 GETTABLEKS                       R7 R3 K4 ["y"]
       23 SUB                              R5 R6 R7
       24 RETURN                           R4 2

PROTO_10:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["screenPointToViewport"]
        4 CALL                             R3 3 2
        5 GETTABLEKS                       R8 R0 K1 ["viewport"]
        7 GETTABLEKS                       R7 R8 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R6 R7 K3 ["x"]
       11 DIV                              R5 R3 R6
       12 GETTABLEKS                       R9 R0 K1 ["viewport"]
       14 GETTABLEKS                       R8 R9 K2 ["AbsoluteSize"]
       16 GETTABLEKS                       R7 R8 K4 ["y"]
       18 DIV                              R6 R4 R7
       19 GETTABLEKS                       R7 R0 K5 ["viewportCamera"]
       21 MOVE                             R9 R5
       22 MOVE                             R10 R6
       23 LOADN                            R11 0
       24 NAMECALL                         R7 R7 K6 ["ViewportPointToRay"]
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R0 K7 ["ray"]
       29 GETTABLEKS                       R7 R0 K8 ["cameraCFrame"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R7 R0 K8 ["cameraCFrame"]
       36 GETTABLEKS                       R10 R0 K7 ["ray"]
       38 GETTABLEKS                       R9 R10 K9 ["Direction"]
       40 NAMECALL                         R7 R7 K10 ["VectorToWorldSpace"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R0 K11 ["direction"]
       45 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["initSucceded"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R0 K1 ["processRaycast"]
        8 CALL                             R3 3 0
        9 GETIMPORT                        R3 K4 [Vector2.new]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R0 K5 ["mouseDownPosition"]
       16 GETTABLEKS                       R4 R0 K6 ["viewport"]
       18 GETTABLEKS                       R3 R4 K7 ["Position"]
       20 SETTABLEKS                       R3 R0 K8 ["mouseDownGuiPosition"]
       22 GETTABLEKS                       R3 R0 K9 ["isHoveringOverStick"]
       24 JUMPIF                           R3 ; [+2]
       25 GETTABLEKS                       R3 R0 K10 ["isHoveringOverArrow"]
       27 SETTABLEKS                       R3 R0 K11 ["isChangingPitch"]
       29 GETTABLEKS                       R4 R0 K11 ["isChangingPitch"]
       31 NOT                              R3 R4
       32 JUMPIFNOT                        R3 ; [+6]
       33 GETTABLEKS                       R4 R0 K12 ["isScaling"]
       35 NOT                              R3 R4
       36 JUMPIFNOT                        R3 ; [+2]
       37 GETTABLEKS                       R3 R0 K13 ["isHoveringOverRing"]
       39 SETTABLEKS                       R3 R0 K14 ["isChangingYaw"]
       41 GETTABLEKS                       R3 R0 K15 ["ringDragIndicatorPart"]
       43 GETTABLEKS                       R5 R0 K14 ["isChangingYaw"]
       45 JUMPIFNOT                        R5 ; [+2]
       46 LOADN                            R4 0
       47 JUMP                             ; [+1]
       48 LOADN                            R4 1
       49 SETTABLEKS                       R4 R3 K16 ["Transparency"]
       51 GETTABLEKS                       R3 R0 K14 ["isChangingYaw"]
       53 JUMPIFNOT                        R3 ; [+10]
       54 GETTABLEKS                       R3 R0 K17 ["onisChangingYawChanged"]
       56 CALL                             R3 0 0
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R4 R3 K18 ["greenCircleCount"]
       60 ADDK                             R4 R4 K19 [1]
       61 SETTABLEKS                       R4 R3 K18 ["greenCircleCount"]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R3 R0 K11 ["isChangingPitch"]
       66 JUMPIFNOT                        R3 ; [+3]
       67 GETTABLEKS                       R3 R0 K20 ["onisChangingPitchChanged"]
       69 CALL                             R3 0 0
       70 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["viewportCamera"]
        2 GETTABLEKS                       R3 R0 K1 ["selectStick"]
        4 GETTABLEKS                       R4 R0 K2 ["selectRing"]
        6 GETTABLEKS                       R5 R0 K3 ["selectArrow"]
        8 GETTABLEKS                       R6 R0 K4 ["isHoveringOverStick"]
       10 GETTABLEKS                       R7 R0 K5 ["isHoveringOverRing"]
       12 GETTABLEKS                       R8 R0 K6 ["isHoveringOverArrow"]
       14 GETTABLEKS                       R9 R0 K7 ["isChangingPitch"]
       16 GETTABLEKS                       R10 R0 K8 ["isChangingYaw"]
       18 GETTABLEKS                       R11 R0 K9 ["isScaling"]
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 RETURN                           R0 0
       23 NAMECALL                         R12 R0 K10 ["loadValuesFromGlobalWind"]
       25 CALL                             R12 1 0
       26 GETTABLEKS                       R12 R0 K11 ["windChanged"]
       28 JUMPIFNOT                        R12 ; [+23]
       29 GETIMPORT                        R12 K13 [workspace]
       31 GETTABLEKS                       R16 R0 K1 ["selectStick"]
       33 GETTABLEKS                       R15 R16 K14 ["CFrame"]
       35 GETTABLEKS                       R14 R15 K15 ["LookVector"]
       37 GETIMPORT                        R17 K13 [workspace]
       39 GETTABLEKS                       R16 R17 K16 ["GlobalWind"]
       41 GETTABLEKS                       R15 R16 K17 ["Magnitude"]
       43 MUL                              R13 R14 R15
       44 SETTABLEKS                       R13 R12 K16 ["GlobalWind"]
       46 GETTABLEKS                       R12 R0 K18 ["onWindChanged"]
       48 CALL                             R12 0 0
       49 LOADB                            R12 0
       50 SETTABLEKS                       R12 R0 K11 ["windChanged"]
       52 GETTABLEKS                       R12 R0 K19 ["windhoseSimulation"]
       54 GETTABLEKS                       R13 R0 K20 ["windSpeed"]
       56 SETTABLEKS                       R13 R12 K20 ["windSpeed"]
       58 GETTABLEKS                       R12 R0 K19 ["windhoseSimulation"]
       60 GETTABLEKS                       R14 R5 K14 ["CFrame"]
       62 GETTABLEKS                       R13 R14 K15 ["LookVector"]
       64 SETTABLEKS                       R13 R12 K21 ["windDir"]
       66 GETTABLEKS                       R12 R0 K19 ["windhoseSimulation"]
       68 GETTABLEKS                       R13 R0 K22 ["spinY"]
       70 SETTABLEKS                       R13 R12 K22 ["spinY"]
       72 GETTABLEKS                       R12 R0 K19 ["windhoseSimulation"]
       74 GETTABLEKS                       R13 R0 K23 ["spinX"]
       76 SETTABLEKS                       R13 R12 K23 ["spinX"]
       78 GETIMPORT                        R12 K25 [tick]
       80 CALL                             R12 0 1
       81 GETTABLEKS                       R14 R0 K26 ["lastTick"]
       83 SUB                              R13 R12 R14
       84 GETIMPORT                        R14 K28 [CFrame.new]
       86 GETTABLEKS                       R17 R2 K14 ["CFrame"]
       88 GETTABLEKS                       R16 R17 K29 ["Position"]
       90 GETTABLEKS                       R15 R16 K30 ["X"]
       92 GETTABLEKS                       R18 R2 K14 ["CFrame"]
       94 GETTABLEKS                       R17 R18 K29 ["Position"]
       96 GETTABLEKS                       R16 R17 K31 ["Y"]
       98 GETTABLEKS                       R20 R2 K14 ["CFrame"]
      100 GETTABLEKS                       R19 R20 K29 ["Position"]
      102 GETTABLEKS                       R18 R19 K32 ["Z"]
      104 LOADK                            R20 K33 [0.001]
      105 MUL                              R19 R20 R13
      106 ADD                              R17 R18 R19
      107 CALL                             R14 3 1
      108 SETTABLEKS                       R14 R2 K14 ["CFrame"]
      110 GETIMPORT                        R15 K35 [CFrame.fromEulerAnglesYXZ]
      112 LOADN                            R16 0
      113 GETTABLEKS                       R17 R0 K22 ["spinY"]
      115 LOADN                            R18 0
      116 CALL                             R15 3 1
      117 GETIMPORT                        R16 K35 [CFrame.fromEulerAnglesYXZ]
      119 GETTABLEKS                       R17 R0 K23 ["spinX"]
      121 LOADN                            R18 0
      122 LOADN                            R19 0
      123 CALL                             R16 3 1
      124 MUL                              R14 R15 R16
      125 SETTABLEKS                       R14 R3 K14 ["CFrame"]
      127 GETTABLEKS                       R15 R3 K14 ["CFrame"]
      129 GETTABLEKS                       R17 R3 K14 ["CFrame"]
      131 GETTABLEKS                       R16 R17 K15 ["LookVector"]
      133 SUB                              R14 R15 R16
      134 SETTABLEKS                       R14 R3 K14 ["CFrame"]
      136 GETTABLEKS                       R14 R0 K36 ["ringDragIndicatorPart"]
      138 GETIMPORT                        R15 K35 [CFrame.fromEulerAnglesYXZ]
      140 LOADN                            R16 0
      141 GETTABLEKS                       R17 R0 K22 ["spinY"]
      143 LOADN                            R18 0
      144 CALL                             R15 3 1
      145 SETTABLEKS                       R15 R14 K14 ["CFrame"]
      147 GETTABLEKS                       R14 R0 K36 ["ringDragIndicatorPart"]
      149 GETTABLEKS                       R17 R0 K36 ["ringDragIndicatorPart"]
      151 GETTABLEKS                       R16 R17 K14 ["CFrame"]
      153 GETTABLEKS                       R20 R0 K36 ["ringDragIndicatorPart"]
      155 GETTABLEKS                       R19 R20 K14 ["CFrame"]
      157 GETTABLEKS                       R18 R19 K15 ["LookVector"]
      159 DIVK                             R17 R18 K37 [2]
      160 SUB                              R15 R16 R17
      161 SETTABLEKS                       R15 R14 K14 ["CFrame"]
      163 GETTABLEKS                       R14 R0 K36 ["ringDragIndicatorPart"]
      165 GETTABLEKS                       R17 R0 K36 ["ringDragIndicatorPart"]
      167 GETTABLEKS                       R16 R17 K14 ["CFrame"]
      169 LOADK                            R17 K38 [{0, 0.5, 0}]
      170 SUB                              R15 R16 R17
      171 SETTABLEKS                       R15 R14 K14 ["CFrame"]
      173 GETTABLEKS                       R15 R3 K14 ["CFrame"]
      175 LOADK                            R18 K39 [0.5]
      176 GETTABLEKS                       R21 R5 K40 ["Size"]
      178 GETTABLEKS                       R20 R21 K41 ["z"]
      180 GETTABLEKS                       R22 R3 K40 ["Size"]
      182 GETTABLEKS                       R21 R22 K41 ["z"]
      184 ADD                              R19 R20 R21
      185 MUL                              R17 R18 R19
      186 GETTABLEKS                       R19 R3 K14 ["CFrame"]
      188 GETTABLEKS                       R18 R19 K15 ["LookVector"]
      190 MUL                              R16 R17 R18
      191 ADD                              R14 R15 R16
      192 SETTABLEKS                       R14 R5 K14 ["CFrame"]
      194 GETTABLEKS                       R15 R0 K19 ["windhoseSimulation"]
      196 GETTABLEKS                       R14 R15 K42 ["cone"]
      198 GETIMPORT                        R16 K35 [CFrame.fromEulerAnglesYXZ]
      200 LOADN                            R17 0
      201 GETTABLEKS                       R18 R0 K22 ["spinY"]
      203 LOADN                            R19 0
      204 CALL                             R16 3 1
      205 GETIMPORT                        R17 K35 [CFrame.fromEulerAnglesYXZ]
      207 GETTABLEKS                       R18 R0 K23 ["spinX"]
      209 LOADN                            R19 0
      210 LOADN                            R20 0
      211 CALL                             R17 3 1
      212 MUL                              R15 R16 R17
      213 SETTABLEKS                       R15 R14 K14 ["CFrame"]
      215 GETTABLEKS                       R15 R0 K19 ["windhoseSimulation"]
      217 GETTABLEKS                       R14 R15 K43 ["physicallyAnimate"]
      219 JUMPIFNOT                        R14 ; [+19]
      220 GETTABLEKS                       R15 R0 K19 ["windhoseSimulation"]
      222 GETTABLEKS                       R14 R15 K42 ["cone"]
      224 GETIMPORT                        R15 K45 [CFrame.lookAt]
      226 LOADN                            R17 251
      227 GETTABLEKS                       R19 R5 K14 ["CFrame"]
      229 GETTABLEKS                       R18 R19 K15 ["LookVector"]
      231 MUL                              R16 R17 R18
      232 LOADN                            R18 246
      233 GETTABLEKS                       R19 R5 K29 ["Position"]
      235 MUL                              R17 R18 R19
      236 CALL                             R15 2 1
      237 SETTABLEKS                       R15 R14 K14 ["CFrame"]
      239 GETIMPORT                        R16 K47 [game]
      241 GETTABLEKS                       R15 R16 K48 ["Workspace"]
      243 GETTABLEKS                       R14 R15 K49 ["CurrentCamera"]
      245 JUMPIF                           R9 ; [+15]
      246 JUMPIF                           R11 ; [+14]
      247 JUMPIF                           R8 ; [+13]
      248 JUMPIF                           R6 ; [+12]
      249 JUMPIF                           R7 ; [+1]
      250 JUMPIFNOT                        R10 ; [+10]
      251 GETTABLEKS                       R16 R0 K50 ["selectRingOrigSize"]
      253 LOADK                            R17 K51 [{0.05, 0.05, 0.05}]
      254 ADD                              R15 R16 R17
      255 SETTABLEKS                       R15 R4 K40 ["Size"]
      257 LOADN                            R15 0
      258 SETTABLEKS                       R15 R4 K52 ["Transparency"]
      260 JUMP                             ; [+7]
      261 GETTABLEKS                       R15 R0 K50 ["selectRingOrigSize"]
      263 SETTABLEKS                       R15 R4 K40 ["Size"]
      265 LOADK                            R15 K53 [0.2]
      266 SETTABLEKS                       R15 R4 K52 ["Transparency"]
      268 JUMPIF                           R10 ; [+13]
      269 JUMPIF                           R11 ; [+12]
      270 JUMPIF                           R6 ; [+1]
      271 JUMPIFNOT                        R9 ; [+10]
      272 GETTABLEKS                       R16 R0 K54 ["selectStickOrigSize"]
      274 LOADK                            R17 K55 [{0.1, 0.1, -0.75}]
      275 ADD                              R15 R16 R17
      276 SETTABLEKS                       R15 R3 K40 ["Size"]
      278 LOADN                            R15 0
      279 SETTABLEKS                       R15 R3 K52 ["Transparency"]
      281 JUMP                             ; [+9]
      282 GETTABLEKS                       R16 R0 K54 ["selectStickOrigSize"]
      284 LOADK                            R17 K56 [{0.05, 0.05, -0.75}]
      285 ADD                              R15 R16 R17
      286 SETTABLEKS                       R15 R3 K40 ["Size"]
      288 LOADK                            R15 K53 [0.2]
      289 SETTABLEKS                       R15 R3 K52 ["Transparency"]
      291 GETTABLEKS                       R17 R3 K40 ["Size"]
      293 GETTABLEKS                       R16 R17 K57 ["x"]
      295 GETTABLEKS                       R18 R3 K40 ["Size"]
      297 GETTABLEKS                       R17 R18 K58 ["y"]
      299 GETTABLEKS                       R20 R3 K40 ["Size"]
      301 GETTABLEKS                       R19 R20 K41 ["z"]
      303 GETTABLEKS                       R20 R0 K59 ["windScaleFactor"]
      305 MUL                              R18 R19 R20
      306 FASTCALL                         VECTOR ; [+2]
      307 GETIMPORT                        R15 K61 [Vector3.new]
      309 CALL                             R15 3 1
      310 SETTABLEKS                       R15 R3 K40 ["Size"]
      312 JUMPIF                           R10 ; [+13]
      313 JUMPIF                           R11 ; [+12]
      314 JUMPIF                           R6 ; [+1]
      315 JUMPIFNOT                        R9 ; [+10]
      316 GETTABLEKS                       R16 R0 K62 ["selectArrowOrigSize"]
      318 LOADK                            R17 K51 [{0.05, 0.05, 0.05}]
      319 ADD                              R15 R16 R17
      320 SETTABLEKS                       R15 R5 K40 ["Size"]
      322 LOADN                            R15 0
      323 SETTABLEKS                       R15 R5 K52 ["Transparency"]
      325 JUMP                             ; [+10]
      326 GETTABLEKS                       R15 R0 K62 ["selectArrowOrigSize"]
      328 SETTABLEKS                       R15 R5 K40 ["Size"]
      330 LOADK                            R15 K53 [0.2]
      331 SETTABLEKS                       R15 R5 K52 ["Transparency"]
      333 LOADN                            R15 1
      334 SETTABLEKS                       R15 R0 K59 ["windScaleFactor"]
      336 GETTABLEKS                       R15 R14 K14 ["CFrame"]
      338 GETIMPORT                        R16 K64 [CFrame.fromMatrix]
      340 GETTABLEKS                       R20 R15 K15 ["LookVector"]
      342 MINUS                            R19 R20
      343 GETUPVAL                         R21 0
      344 GETTABLEKS                       R20 R21 K65 ["cameraDistance"]
      346 MUL                              R18 R19 R20
      347 LOADK                            R19 K66 [{0, -0.5, 0}]
      348 ADD                              R17 R18 R19
      349 GETTABLEKS                       R18 R15 K67 ["RightVector"]
      351 GETTABLEKS                       R19 R15 K68 ["UpVector"]
      353 GETTABLEKS                       R21 R15 K15 ["LookVector"]
      355 MINUS                            R20 R21
      356 CALL                             R16 4 1
      357 SETTABLEKS                       R16 R2 K14 ["CFrame"]
      359 GETTABLEKS                       R16 R2 K14 ["CFrame"]
      361 GETTABLEKS                       R17 R0 K69 ["cameraCFrame"]
      363 JUMPIFEQ                         R16 R17 ; [+27]
      365 GETTABLEKS                       R16 R2 K14 ["CFrame"]
      367 SETTABLEKS                       R16 R0 K69 ["cameraCFrame"]
      369 GETTABLEKS                       R16 R0 K70 ["viewport"]
      371 GETTABLEKS                       R19 R0 K69 ["cameraCFrame"]
      373 GETTABLEKS                       R21 R0 K69 ["cameraCFrame"]
      375 GETTABLEKS                       R20 R21 K29 ["Position"]
      377 SUB                              R18 R19 R20
      378 GETIMPORT                        R20 K28 [CFrame.new]
      380 LOADN                            R21 255
      381 LOADN                            R22 255
      382 LOADN                            R23 255
      383 CALL                             R20 3 -1
      384 NAMECALL                         R18 R18 K71 ["ToWorldSpace"]
      386 CALL                             R18 -1 1
      387 GETTABLEKS                       R17 R18 K29 ["Position"]
      389 SETTABLEKS                       R17 R16 K72 ["LightDirection"]
      391 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onInputChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onInputEnded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["afterCamera"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R3 P1
        3 CAPTURE                          VAL R0
        4 GETTABLEKS                       R4 R0 K0 ["inputChangedConnection"]
        6 JUMPIFEQKNIL                     R4 ; [+6]
        8 GETTABLEKS                       R4 R0 K0 ["inputChangedConnection"]
       10 NAMECALL                         R4 R4 K1 ["Disconnect"]
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R0 K2 ["inputEndedConnection"]
       15 JUMPIFEQKNIL                     R4 ; [+6]
       17 GETTABLEKS                       R4 R0 K2 ["inputEndedConnection"]
       19 NAMECALL                         R4 R4 K1 ["Disconnect"]
       21 CALL                             R4 1 0
       22 JUMPIFNOT                        R1 ; [+51]
       23 GETTABLEKS                       R4 R0 K3 ["initSucceded"]
       25 JUMPIFNOT                        R4 ; [+48]
       26 GETUPVAL                         R4 0
       27 CALL                             R4 0 1
       28 SETTABLEKS                       R4 R0 K4 ["windhoseSimulation"]
       30 GETTABLEKS                       R4 R0 K4 ["windhoseSimulation"]
       32 GETTABLEKS                       R6 R0 K5 ["worldModel"]
       34 NAMECALL                         R4 R4 K6 ["init"]
       36 CALL                             R4 2 0
       37 GETIMPORT                        R4 K8 [tick]
       39 CALL                             R4 0 1
       40 SETTABLEKS                       R4 R0 K9 ["lastTick"]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          VAL R0
       44 GETUPVAL                         R5 1
       45 LOADK                            R7 K10 ["WindControlAfterCamera"]
       46 GETIMPORT                        R10 K15 [Enum.RenderPriority.Camera]
       48 GETTABLEKS                       R9 R10 K16 ["Value"]
       50 ADDK                             R8 R9 K11 [1]
       51 MOVE                             R9 R4
       52 NAMECALL                         R5 R5 K17 ["BindToRenderStep"]
       54 CALL                             R5 4 0
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R5 R6 K18 ["InputChanged"]
       58 MOVE                             R7 R2
       59 NAMECALL                         R5 R5 K19 ["connect"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R0 K0 ["inputChangedConnection"]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R5 R6 K20 ["InputEnded"]
       67 MOVE                             R7 R3
       68 NAMECALL                         R5 R5 K19 ["connect"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R0 K2 ["inputEndedConnection"]
       73 RETURN                           R0 0
       74 GETUPVAL                         R4 1
       75 LOADK                            R6 K10 ["WindControlAfterCamera"]
       76 NAMECALL                         R4 R4 K21 ["UnbindFromRenderStep"]
       78 CALL                             R4 2 0
       79 GETTABLEKS                       R4 R0 K4 ["windhoseSimulation"]
       81 JUMPIFEQKNIL                     R4 ; [+9]
       83 GETTABLEKS                       R4 R0 K4 ["windhoseSimulation"]
       85 NAMECALL                         R4 R4 K22 ["destroy"]
       87 CALL                             R4 1 0
       88 LOADNIL                          R4
       89 SETTABLEKS                       R4 R0 K4 ["windhoseSimulation"]
       91 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["UserInputService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R5 K9 [script]
       23 GETTABLEKS                       R4 R5 K10 ["class"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K7 [require]
       28 GETIMPORT                        R6 K9 [script]
       30 GETTABLEKS                       R5 R6 K11 ["constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K7 [require]
       35 GETIMPORT                        R7 K9 [script]
       37 GETTABLEKS                       R6 R7 K12 ["Util"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K7 [require]
       42 GETIMPORT                        R8 K9 [script]
       44 GETTABLEKS                       R7 R8 K13 ["WindhoseSimulation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K7 [require]
       49 GETIMPORT                        R12 K9 [script]
       51 GETTABLEKS                       R11 R12 K14 ["Parent"]
       53 GETTABLEKS                       R10 R11 K14 ["Parent"]
       55 GETTABLEKS                       R9 R10 K12 ["Util"]
       57 GETTABLEKS                       R8 R9 K15 ["AnalyticsGlobals"]
       59 CALL                             R7 1 1
       60 MOVE                             R8 R3
       61 DUPCLOSURE                       R9 K16 [PROTO_0]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_1]
       64 SETTABLEKS                       R9 R8 K18 ["init"]
       66 DUPCLOSURE                       R9 K19 [PROTO_2]
       67 SETTABLEKS                       R9 R8 K20 ["loadValuesFromGlobalWind"]
       69 DUPCLOSURE                       R9 K21 [PROTO_3]
       70 SETTABLEKS                       R9 R8 K22 ["onMouseEnter"]
       72 DUPCLOSURE                       R9 K23 [PROTO_4]
       73 SETTABLEKS                       R9 R8 K24 ["onMouseLeave"]
       75 DUPCLOSURE                       R9 K25 [PROTO_5]
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R9 R8 K26 ["processRaycast"]
       79 DUPCLOSURE                       R9 K27 [PROTO_6]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R9 R8 K28 ["onMouseMove"]
       84 DUPCLOSURE                       R9 K29 [PROTO_7]
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R9 R8 K30 ["onInputChanged"]
       88 DUPCLOSURE                       R9 K31 [PROTO_8]
       89 SETTABLEKS                       R9 R8 K32 ["onInputEnded"]
       91 DUPCLOSURE                       R9 K33 [PROTO_9]
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R9 R8 K34 ["screenPointToViewport"]
       95 DUPCLOSURE                       R9 K35 [PROTO_10]
       96 SETTABLEKS                       R9 R8 K36 ["updatePickRay"]
       98 DUPCLOSURE                       R9 K37 [PROTO_11]
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R9 R8 K38 ["onMouseButton1Down"]
      102 DUPCLOSURE                       R9 K39 [PROTO_12]
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R9 R8 K40 ["afterCamera"]
      106 DUPCLOSURE                       R9 K41 [PROTO_16]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R9 R8 K42 ["setEnabled"]
      112 RETURN                           R8 1
