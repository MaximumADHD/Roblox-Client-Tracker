PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Part"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 [{1, 1, 1}]
        5 SETTABLEKS                       R1 R0 K5 ["Size"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K6 ["Anchored"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K7 ["CanCollide"]
       13 LOADK                            R1 K8 ["TrailDot"]
       14 SETTABLEKS                       R1 R0 K9 ["Name"]
       16 LOADN                            R1 1
       17 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       19 GETIMPORT                        R1 K2 [Instance.new]
       21 LOADK                            R2 K11 ["ImageHandleAdornment"]
       22 CALL                             R1 1 1
       23 LOADK                            R2 K12 ["TrailDotImage"]
       24 SETTABLEKS                       R2 R1 K9 ["Name"]
       26 GETUPVAL                         R2 0
       27 SETTABLEKS                       R2 R1 K5 ["Size"]
       29 LOADK                            R2 K13 [{0, 0, -0.1}]
       30 SETTABLEKS                       R2 R1 K14 ["SizeRelativeOffset"]
       32 GETUPVAL                         R2 1
       33 SETTABLEKS                       R2 R1 K15 ["AlwaysOnTop"]
       35 GETUPVAL                         R2 2
       36 SETTABLEKS                       R2 R1 K16 ["Image"]
       38 SETTABLEKS                       R0 R1 K17 ["Adornee"]
       40 SETTABLEKS                       R0 R1 K18 ["Parent"]
       42 GETIMPORT                        R2 K2 [Instance.new]
       44 LOADK                            R3 K3 ["Part"]
       45 CALL                             R2 1 1
       46 LOADK                            R3 K19 [{2, 2, 2}]
       47 SETTABLEKS                       R3 R2 K5 ["Size"]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R2 K6 ["Anchored"]
       52 LOADB                            R3 0
       53 SETTABLEKS                       R3 R2 K7 ["CanCollide"]
       55 LOADK                            R3 K20 ["EndWaypoint"]
       56 SETTABLEKS                       R3 R2 K9 ["Name"]
       58 LOADN                            R3 1
       59 SETTABLEKS                       R3 R2 K10 ["Transparency"]
       61 GETIMPORT                        R3 K2 [Instance.new]
       63 LOADK                            R4 K11 ["ImageHandleAdornment"]
       64 CALL                             R3 1 1
       65 LOADK                            R4 K12 ["TrailDotImage"]
       66 SETTABLEKS                       R4 R3 K9 ["Name"]
       68 GETUPVAL                         R4 0
       69 SETTABLEKS                       R4 R3 K5 ["Size"]
       71 LOADK                            R4 K13 [{0, 0, -0.1}]
       72 SETTABLEKS                       R4 R3 K14 ["SizeRelativeOffset"]
       74 GETUPVAL                         R4 1
       75 SETTABLEKS                       R4 R3 K15 ["AlwaysOnTop"]
       77 GETUPVAL                         R4 2
       78 SETTABLEKS                       R4 R3 K16 ["Image"]
       80 SETTABLEKS                       R2 R3 K17 ["Adornee"]
       82 SETTABLEKS                       R2 R3 K18 ["Parent"]
       84 GETIMPORT                        R4 K2 [Instance.new]
       86 LOADK                            R5 K21 ["BillboardGui"]
       87 CALL                             R4 1 1
       88 LOADK                            R5 K22 ["EndWaypointBillboard"]
       89 SETTABLEKS                       R5 R4 K9 ["Name"]
       91 GETUPVAL                         R5 3
       92 SETTABLEKS                       R5 R4 K5 ["Size"]
       94 LOADN                            R5 0
       95 SETTABLEKS                       R5 R4 K23 ["LightInfluence"]
       97 GETUPVAL                         R5 4
       98 SETTABLEKS                       R5 R4 K24 ["SizeOffset"]
      100 LOADB                            R5 1
      101 SETTABLEKS                       R5 R4 K15 ["AlwaysOnTop"]
      103 SETTABLEKS                       R2 R4 K17 ["Adornee"]
      105 SETTABLEKS                       R2 R4 K18 ["Parent"]
      107 GETIMPORT                        R5 K2 [Instance.new]
      109 LOADK                            R6 K25 ["ImageLabel"]
      110 CALL                             R5 1 1
      111 GETUPVAL                         R6 5
      112 SETTABLEKS                       R6 R5 K16 ["Image"]
      114 LOADN                            R6 1
      115 SETTABLEKS                       R6 R5 K26 ["BackgroundTransparency"]
      117 GETIMPORT                        R6 K28 [UDim2.new]
      119 LOADN                            R7 1
      120 LOADN                            R8 0
      121 LOADN                            R9 1
      122 LOADN                            R10 0
      123 CALL                             R6 4 1
      124 SETTABLEKS                       R6 R5 K5 ["Size"]
      126 SETTABLEKS                       R4 R5 K18 ["Parent"]
      128 GETIMPORT                        R6 K2 [Instance.new]
      130 LOADK                            R7 K3 ["Part"]
      131 CALL                             R6 1 1
      132 LOADK                            R7 K19 [{2, 2, 2}]
      133 SETTABLEKS                       R7 R6 K5 ["Size"]
      135 LOADB                            R7 1
      136 SETTABLEKS                       R7 R6 K6 ["Anchored"]
      138 LOADB                            R7 0
      139 SETTABLEKS                       R7 R6 K7 ["CanCollide"]
      141 LOADK                            R7 K29 ["FailureWaypoint"]
      142 SETTABLEKS                       R7 R6 K9 ["Name"]
      144 LOADN                            R7 1
      145 SETTABLEKS                       R7 R6 K10 ["Transparency"]
      147 GETIMPORT                        R7 K2 [Instance.new]
      149 LOADK                            R8 K11 ["ImageHandleAdornment"]
      150 CALL                             R7 1 1
      151 LOADK                            R8 K12 ["TrailDotImage"]
      152 SETTABLEKS                       R8 R7 K9 ["Name"]
      154 GETUPVAL                         R8 0
      155 SETTABLEKS                       R8 R7 K5 ["Size"]
      157 LOADK                            R8 K13 [{0, 0, -0.1}]
      158 SETTABLEKS                       R8 R7 K14 ["SizeRelativeOffset"]
      160 GETUPVAL                         R8 1
      161 SETTABLEKS                       R8 R7 K15 ["AlwaysOnTop"]
      163 GETUPVAL                         R8 2
      164 SETTABLEKS                       R8 R7 K16 ["Image"]
      166 SETTABLEKS                       R6 R7 K17 ["Adornee"]
      168 SETTABLEKS                       R6 R7 K18 ["Parent"]
      170 GETIMPORT                        R8 K2 [Instance.new]
      172 LOADK                            R9 K21 ["BillboardGui"]
      173 CALL                             R8 1 1
      174 LOADK                            R9 K30 ["FailureWaypointBillboard"]
      175 SETTABLEKS                       R9 R8 K9 ["Name"]
      177 GETUPVAL                         R9 3
      178 SETTABLEKS                       R9 R8 K5 ["Size"]
      180 LOADN                            R9 0
      181 SETTABLEKS                       R9 R8 K23 ["LightInfluence"]
      183 GETUPVAL                         R9 6
      184 SETTABLEKS                       R9 R8 K24 ["SizeOffset"]
      186 LOADB                            R9 1
      187 SETTABLEKS                       R9 R8 K15 ["AlwaysOnTop"]
      189 SETTABLEKS                       R6 R8 K17 ["Adornee"]
      191 SETTABLEKS                       R6 R8 K18 ["Parent"]
      193 GETIMPORT                        R9 K2 [Instance.new]
      195 LOADK                            R10 K31 ["Frame"]
      196 CALL                             R9 1 1
      197 LOADN                            R10 1
      198 SETTABLEKS                       R10 R9 K26 ["BackgroundTransparency"]
      200 GETIMPORT                        R10 K28 [UDim2.new]
      202 LOADN                            R11 0
      203 LOADN                            R12 0
      204 LOADN                            R13 0
      205 LOADN                            R14 0
      206 CALL                             R10 4 1
      207 SETTABLEKS                       R10 R9 K5 ["Size"]
      209 GETIMPORT                        R10 K28 [UDim2.new]
      211 LOADK                            R11 K32 [0.5]
      212 LOADN                            R12 0
      213 LOADN                            R13 1
      214 LOADN                            R14 0
      215 CALL                             R10 4 1
      216 SETTABLEKS                       R10 R9 K33 ["Position"]
      218 SETTABLEKS                       R8 R9 K18 ["Parent"]
      220 GETIMPORT                        R10 K2 [Instance.new]
      222 LOADK                            R11 K25 ["ImageLabel"]
      223 CALL                             R10 1 1
      224 GETUPVAL                         R11 5
      225 SETTABLEKS                       R11 R10 K16 ["Image"]
      227 LOADN                            R11 1
      228 SETTABLEKS                       R11 R10 K26 ["BackgroundTransparency"]
      230 GETIMPORT                        R11 K28 [UDim2.new]
      232 LOADN                            R12 0
      233 GETUPVAL                         R15 3
      234 GETTABLEKS                       R15 R15 K35 ["X"]
      236 GETTABLEKS                       R15 R15 K36 ["Offset"]
      238 MINUS                            R14 R15
      239 DIVK                             R13 R14 K34 [2]
      240 LOADN                            R14 0
      241 GETUPVAL                         R16 3
      242 GETTABLEKS                       R16 R16 K37 ["Y"]
      244 GETTABLEKS                       R16 R16 K36 ["Offset"]
      246 MINUS                            R15 R16
      247 CALL                             R11 4 1
      248 SETTABLEKS                       R11 R10 K33 ["Position"]
      250 GETUPVAL                         R11 3
      251 SETTABLEKS                       R11 R10 K5 ["Size"]
      253 SETTABLEKS                       R9 R10 K18 ["Parent"]
      255 MOVE                             R11 R0
      256 MOVE                             R12 R2
      257 MOVE                             R13 R6
      258 RETURN                           R11 3

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 LOADK                            R3 K1 ["ClickToMoveDisplay"]
        4 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R2 K5 [Instance.new]
       10 LOADK                            R3 K6 ["Model"]
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 LOADK                            R2 K1 ["ClickToMoveDisplay"]
       14 SETTABLEKS                       R2 R1 K7 ["Name"]
       16 SETTABLEKS                       R0 R1 K8 ["Parent"]
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+53]
        2 GETUPVAL                         R2 1
        3 NEWTABLE                         R3 0 2
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K0 ["CurrentCamera"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K1 ["Character"]
       11 SETLIST                          R3 R4 2 [1]
       13 SETTABLEKS                       R3 R2 K2 ["FilterDescendantsInstances"]
       15 GETUPVAL                         R2 2
       16 LOADK                            R5 K3 [{0, 2.5, 0}]
       17 ADD                              R4 R1 R5
       18 LOADK                            R5 K4 [{-0, -10, -0}]
       19 GETUPVAL                         R6 1
       20 NAMECALL                         R2 R2 K5 ["Raycast"]
       22 CALL                             R2 4 1
       23 JUMPIFNOT                        R2 ; [+81]
       24 GETIMPORT                        R3 K8 [CFrame.lookAlong]
       26 GETTABLEKS                       R4 R2 K9 ["Position"]
       28 GETTABLEKS                       R5 R2 K10 ["Normal"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K6 ["CFrame"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K0 ["CurrentCamera"]
       36 LOADK                            R7 K11 ["ClickToMoveDisplay"]
       37 NAMECALL                         R5 R4 K12 ["FindFirstChild"]
       39 CALL                             R5 2 1
       40 JUMPIF                           R5 ; [+10]
       41 GETIMPORT                        R6 K15 [Instance.new]
       43 LOADK                            R7 K16 ["Model"]
       44 CALL                             R6 1 1
       45 MOVE                             R5 R6
       46 LOADK                            R6 K11 ["ClickToMoveDisplay"]
       47 SETTABLEKS                       R6 R5 K17 ["Name"]
       49 SETTABLEKS                       R4 R5 K18 ["Parent"]
       51 MOVE                             R3 R5
       52 SETTABLEKS                       R3 R0 K18 ["Parent"]
       54 RETURN                           R0 0
       55 GETIMPORT                        R2 K20 [Ray.new]
       57 LOADK                            R4 K3 [{0, 2.5, 0}]
       58 ADD                              R3 R1 R4
       59 LOADK                            R4 K21 [{0, -10, 0}]
       60 CALL                             R2 2 1
       61 GETUPVAL                         R3 2
       62 MOVE                             R5 R2
       63 NEWTABLE                         R6 0 2
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K0 ["CurrentCamera"]
       68 GETUPVAL                         R8 3
       69 GETTABLEKS                       R8 R8 K1 ["Character"]
       71 SETLIST                          R6 R7 2 [1]
       73 NAMECALL                         R3 R3 K22 ["FindPartOnRayWithIgnoreList"]
       75 CALL                             R3 3 3
       76 JUMPIFNOT                        R3 ; [+28]
       77 GETIMPORT                        R6 K23 [CFrame.new]
       79 MOVE                             R7 R4
       80 ADD                              R8 R4 R5
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R0 K6 ["CFrame"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K0 ["CurrentCamera"]
       87 LOADK                            R10 K11 ["ClickToMoveDisplay"]
       88 NAMECALL                         R8 R7 K12 ["FindFirstChild"]
       90 CALL                             R8 2 1
       91 JUMPIF                           R8 ; [+10]
       92 GETIMPORT                        R9 K15 [Instance.new]
       94 LOADK                            R10 K16 ["Model"]
       95 CALL                             R9 1 1
       96 MOVE                             R8 R9
       97 LOADK                            R9 K11 ["ClickToMoveDisplay"]
       98 SETTABLEKS                       R9 R8 K17 ["Name"]
      100 SETTABLEKS                       R7 R8 K18 ["Parent"]
      102 MOVE                             R6 R8
      103 SETTABLEKS                       R6 R0 K18 ["Parent"]
      105 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["DisplayModel"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Clone"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R2 K2 ["NewDisplayModel"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K3 ["DisplayModel"]
       14 SETTABLEKS                       R1 R2 K4 ["ClosestWayPoint"]
       16 RETURN                           R2 1

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["Destroyed"]
        3 GETTABLEKS                       R1 R0 K1 ["Tween"]
        5 NAMECALL                         R1 R1 K2 ["Cancel"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["DisplayModel"]
       10 NAMECALL                         R1 R1 K4 ["Destroy"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Clone"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [TweenInfo.new]
        2 LOADK                            R2 K3 [0.5]
        3 GETIMPORT                        R3 K7 [Enum.EasingStyle.Sine]
        5 GETIMPORT                        R4 K10 [Enum.EasingDirection.Out]
        7 LOADN                            R5 -1
        8 LOADB                            R6 1
        9 CALL                             R1 5 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R4 R0 K11 ["DisplayModel"]
       13 GETTABLEKS                       R4 R4 K12 ["EndWaypointBillboard"]
       15 MOVE                             R5 R1
       16 DUPTABLE                         R6 K14 [{"SizeOffset"}]
       17 GETUPVAL                         R7 1
       18 SETTABLEKS                       R7 R6 K13 ["SizeOffset"]
       20 NAMECALL                         R2 R2 K15 ["Create"]
       22 CALL                             R2 4 1
       23 NAMECALL                         R3 R2 K16 ["Play"]
       25 CALL                             R3 1 0
       26 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["DisplayModel"]
        2 GETTABLEKS                       R2 R2 K1 ["Position"]
        4 SUB                              R3 R1 R2
        5 GETTABLEKS                       R4 R0 K0 ["DisplayModel"]
        7 GETTABLEKS                       R4 R4 K2 ["EndWaypointBillboard"]
        9 LOADN                            R6 0
       10 GETTABLEKS                       R7 R3 K3 ["Y"]
       12 LOADN                            R8 0
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R5 K6 [Vector3.new]
       16 CALL                             R5 3 1
       17 SETTABLEKS                       R5 R4 K7 ["StudsOffset"]
       19 GETIMPORT                        R4 K9 [TweenInfo.new]
       21 LOADN                            R5 1
       22 GETIMPORT                        R6 K13 [Enum.EasingStyle.Sine]
       24 GETIMPORT                        R7 K16 [Enum.EasingDirection.Out]
       26 CALL                             R4 3 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R7 R0 K0 ["DisplayModel"]
       30 GETTABLEKS                       R7 R7 K2 ["EndWaypointBillboard"]
       32 MOVE                             R8 R4
       33 DUPTABLE                         R9 K18 [{["StudsOffset"] = {0, 0, 0}}]
       34 NAMECALL                         R5 R5 K19 ["Create"]
       36 CALL                             R5 4 1
       37 NAMECALL                         R6 R5 K20 ["Play"]
       39 CALL                             R6 1 0
       40 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Tween"]
        3 GETTABLEKS                       R0 R0 K1 ["Completed"]
        5 NAMECALL                         R0 R0 K2 ["Wait"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["Destroyed"]
       11 JUMPIF                           R0 ; [+7]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 0
       14 NAMECALL                         R1 R1 K4 ["CreateTween"]
       16 CALL                             R1 1 1
       17 SETTABLEKS                       R1 R0 K0 ["Tween"]
       19 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R3 K2 ["NewDisplayModel"]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K3 ["DisplayModel"]
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R3 K4 ["Destroyed"]
       17 JUMPIFNOT                        R2 ; [+19]
       18 SUB                              R4 R2 R0
       19 GETTABLEKS                       R4 R4 K5 ["Magnitude"]
       21 LOADN                            R5 5
       22 JUMPIFNOTLT                      R5 R4 ; [+14]
       24 MOVE                             R6 R2
       25 NAMECALL                         R4 R3 K6 ["TweenInFrom"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K7 ["Tween"]
       30 GETIMPORT                        R4 K10 [coroutine.wrap]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R3
       34 CALL                             R4 1 1
       35 CALL                             R4 0 0
       36 JUMP                             ; [+5]
       37 NAMECALL                         R4 R3 K11 ["CreateTween"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K7 ["Tween"]
       42 SETTABLEKS                       R1 R3 K12 ["ClosestWayPoint"]
       44 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["DisplayModel"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["Parent"]
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["DisplayModel"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Clone"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+53]
       10 GETUPVAL                         R3 3
       11 NEWTABLE                         R4 0 2
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["CurrentCamera"]
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K2 ["Character"]
       19 SETLIST                          R4 R5 2 [1]
       21 SETTABLEKS                       R4 R3 K3 ["FilterDescendantsInstances"]
       23 GETUPVAL                         R3 4
       24 LOADK                            R6 K4 [{0, 2.5, 0}]
       25 ADD                              R5 R1 R6
       26 LOADK                            R6 K5 [{-0, -10, -0}]
       27 GETUPVAL                         R7 3
       28 NAMECALL                         R3 R3 K6 ["Raycast"]
       30 CALL                             R3 4 1
       31 JUMPIFNOT                        R3 ; [+81]
       32 GETIMPORT                        R4 K9 [CFrame.lookAlong]
       34 GETTABLEKS                       R5 R3 K10 ["Position"]
       36 GETTABLEKS                       R6 R3 K11 ["Normal"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R2 K7 ["CFrame"]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K1 ["CurrentCamera"]
       44 LOADK                            R8 K12 ["ClickToMoveDisplay"]
       45 NAMECALL                         R6 R5 K13 ["FindFirstChild"]
       47 CALL                             R6 2 1
       48 JUMPIF                           R6 ; [+10]
       49 GETIMPORT                        R7 K16 [Instance.new]
       51 LOADK                            R8 K17 ["Model"]
       52 CALL                             R7 1 1
       53 MOVE                             R6 R7
       54 LOADK                            R7 K12 ["ClickToMoveDisplay"]
       55 SETTABLEKS                       R7 R6 K18 ["Name"]
       57 SETTABLEKS                       R5 R6 K19 ["Parent"]
       59 MOVE                             R4 R6
       60 SETTABLEKS                       R4 R2 K19 ["Parent"]
       62 RETURN                           R2 1
       63 GETIMPORT                        R3 K21 [Ray.new]
       65 LOADK                            R5 K4 [{0, 2.5, 0}]
       66 ADD                              R4 R1 R5
       67 LOADK                            R5 K22 [{0, -10, 0}]
       68 CALL                             R3 2 1
       69 GETUPVAL                         R4 4
       70 MOVE                             R6 R3
       71 NEWTABLE                         R7 0 2
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K1 ["CurrentCamera"]
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R9 R9 K2 ["Character"]
       79 SETLIST                          R7 R8 2 [1]
       81 NAMECALL                         R4 R4 K23 ["FindPartOnRayWithIgnoreList"]
       83 CALL                             R4 3 3
       84 JUMPIFNOT                        R4 ; [+28]
       85 GETIMPORT                        R7 K24 [CFrame.new]
       87 MOVE                             R8 R5
       88 ADD                              R9 R5 R6
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R2 K7 ["CFrame"]
       92 GETUPVAL                         R8 4
       93 GETTABLEKS                       R8 R8 K1 ["CurrentCamera"]
       95 LOADK                            R11 K12 ["ClickToMoveDisplay"]
       96 NAMECALL                         R9 R8 K13 ["FindFirstChild"]
       98 CALL                             R9 2 1
       99 JUMPIF                           R9 ; [+10]
      100 GETIMPORT                        R10 K16 [Instance.new]
      102 LOADK                            R11 K17 ["Model"]
      103 CALL                             R10 1 1
      104 MOVE                             R9 R10
      105 LOADK                            R10 K12 ["ClickToMoveDisplay"]
      106 SETTABLEKS                       R10 R9 K18 ["Name"]
      108 SETTABLEKS                       R8 R9 K19 ["Parent"]
      110 MOVE                             R7 R9
      111 SETTABLEKS                       R7 R2 K19 ["Parent"]
      113 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R1 K1 [wait]
        2 LOADK                            R2 K2 [0.125]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K5 [TweenInfo.new]
        6 LOADK                            R2 K6 [0.0625]
        7 GETIMPORT                        R3 K10 [Enum.EasingStyle.Sine]
        9 GETIMPORT                        R4 K13 [Enum.EasingDirection.Out]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R4 R0 K14 ["DisplayModel"]
       15 GETTABLEKS                       R4 R4 K15 ["FailureWaypointBillboard"]
       17 MOVE                             R5 R1
       18 DUPTABLE                         R6 K17 [{"SizeOffset"}]
       19 GETUPVAL                         R7 1
       20 SETTABLEKS                       R7 R6 K16 ["SizeOffset"]
       22 NAMECALL                         R2 R2 K18 ["Create"]
       24 CALL                             R2 4 1
       25 NAMECALL                         R3 R2 K19 ["Play"]
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R5 R0 K14 ["DisplayModel"]
       31 GETTABLEKS                       R5 R5 K15 ["FailureWaypointBillboard"]
       33 GETTABLEKS                       R5 R5 K20 ["Frame"]
       35 MOVE                             R6 R1
       36 DUPTABLE                         R7 K23 [{["Rotation"] = 10}]
       37 NAMECALL                         R3 R3 K18 ["Create"]
       39 CALL                             R3 4 1
       40 NAMECALL                         R4 R3 K19 ["Play"]
       42 CALL                             R4 1 0
       43 GETTABLEKS                       R4 R2 K24 ["Completed"]
       45 NAMECALL                         R4 R4 K0 ["wait"]
       47 CALL                             R4 1 0
       48 GETIMPORT                        R4 K5 [TweenInfo.new]
       50 LOADK                            R5 K2 [0.125]
       51 GETIMPORT                        R6 K10 [Enum.EasingStyle.Sine]
       53 GETIMPORT                        R7 K13 [Enum.EasingDirection.Out]
       55 LOADN                            R8 3
       56 LOADB                            R9 1
       57 CALL                             R4 5 1
       58 MOVE                             R1 R4
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R6 R0 K14 ["DisplayModel"]
       62 GETTABLEKS                       R6 R6 K15 ["FailureWaypointBillboard"]
       64 MOVE                             R7 R1
       65 DUPTABLE                         R8 K17 [{"SizeOffset"}]
       66 GETUPVAL                         R9 2
       67 SETTABLEKS                       R9 R8 K16 ["SizeOffset"]
       69 NAMECALL                         R4 R4 K18 ["Create"]
       71 CALL                             R4 4 1
       72 NAMECALL                         R5 R4 K19 ["Play"]
       74 CALL                             R5 1 0
       75 GETIMPORT                        R5 K5 [TweenInfo.new]
       77 LOADK                            R6 K2 [0.125]
       78 GETIMPORT                        R7 K10 [Enum.EasingStyle.Sine]
       80 GETIMPORT                        R8 K13 [Enum.EasingDirection.Out]
       82 LOADN                            R9 3
       83 LOADB                            R10 1
       84 CALL                             R5 5 1
       85 MOVE                             R1 R5
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R7 R0 K14 ["DisplayModel"]
       89 GETTABLEKS                       R7 R7 K15 ["FailureWaypointBillboard"]
       91 GETTABLEKS                       R7 R7 K20 ["Frame"]
       93 GETTABLEKS                       R7 R7 K25 ["ImageLabel"]
       95 MOVE                             R8 R1
       96 DUPTABLE                         R9 K27 [{"ImageColor3"}]
       97 GETIMPORT                        R10 K29 [Color3.new]
       99 LOADK                            R11 K30 [0.75]
      100 LOADK                            R12 K30 [0.75]
      101 LOADK                            R13 K30 [0.75]
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K26 ["ImageColor3"]
      105 NAMECALL                         R5 R5 K18 ["Create"]
      107 CALL                             R5 4 1
      108 NAMECALL                         R6 R5 K19 ["Play"]
      110 CALL                             R6 1 0
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R8 R0 K14 ["DisplayModel"]
      114 GETTABLEKS                       R8 R8 K15 ["FailureWaypointBillboard"]
      116 GETTABLEKS                       R8 R8 K20 ["Frame"]
      118 MOVE                             R9 R1
      119 DUPTABLE                         R10 K32 [{["Rotation"] = -10}]
      120 NAMECALL                         R6 R6 K18 ["Create"]
      122 CALL                             R6 4 1
      123 NAMECALL                         R7 R6 K19 ["Play"]
      125 CALL                             R7 1 0
      126 GETTABLEKS                       R7 R4 K24 ["Completed"]
      128 NAMECALL                         R7 R7 K0 ["wait"]
      130 CALL                             R7 1 0
      131 GETIMPORT                        R7 K5 [TweenInfo.new]
      133 LOADK                            R8 K6 [0.0625]
      134 GETIMPORT                        R9 K10 [Enum.EasingStyle.Sine]
      136 GETIMPORT                        R10 K13 [Enum.EasingDirection.Out]
      138 CALL                             R7 3 1
      139 MOVE                             R1 R7
      140 GETUPVAL                         R7 0
      141 GETTABLEKS                       R9 R0 K14 ["DisplayModel"]
      143 GETTABLEKS                       R9 R9 K15 ["FailureWaypointBillboard"]
      145 MOVE                             R10 R1
      146 DUPTABLE                         R11 K17 [{"SizeOffset"}]
      147 GETUPVAL                         R12 3
      148 SETTABLEKS                       R12 R11 K16 ["SizeOffset"]
      150 NAMECALL                         R7 R7 K18 ["Create"]
      152 CALL                             R7 4 1
      153 NAMECALL                         R8 R7 K19 ["Play"]
      155 CALL                             R8 1 0
      156 GETUPVAL                         R8 0
      157 GETTABLEKS                       R10 R0 K14 ["DisplayModel"]
      159 GETTABLEKS                       R10 R10 K15 ["FailureWaypointBillboard"]
      161 GETTABLEKS                       R10 R10 K20 ["Frame"]
      163 MOVE                             R11 R1
      164 DUPTABLE                         R12 K34 [{["Rotation"] = 0}]
      165 NAMECALL                         R8 R8 K18 ["Create"]
      167 CALL                             R8 4 1
      168 NAMECALL                         R9 R8 K19 ["Play"]
      170 CALL                             R9 1 0
      171 GETTABLEKS                       R9 R7 K24 ["Completed"]
      173 NAMECALL                         R9 R9 K0 ["wait"]
      175 CALL                             R9 1 0
      176 GETIMPORT                        R9 K1 [wait]
      178 LOADK                            R10 K2 [0.125]
      179 CALL                             R9 1 0
      180 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["NewDisplayModel"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K3 ["DisplayModel"]
       14 RETURN                           R1 1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R1 R0 K0 ["LoadAnimation"]
        7 CALL                             R1 2 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R2 0
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 [""]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 GETIMPORT                        R2 K7 [Enum.AnimationPriority.Action]
       19 SETTABLEKS                       R2 R1 K8 ["Priority"]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K9 ["Looped"]
       25 GETUPVAL                         R1 0
       26 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Character"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 LOADK                            R3 K1 ["Humanoid"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildOfClass"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 LOADN                            R6 1
        4 LENGTH                           R7 R0
        5 SUBK                             R4 R7 K0 [1]
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 GETTABLE                         R9 R0 R6
        9 GETTABLEKS                       R9 R9 K1 ["Position"]
       11 LENGTH                           R11 R0
       12 GETTABLE                         R10 R0 R11
       13 GETTABLEKS                       R10 R10 K1 ["Position"]
       15 SUB                              R8 R9 R10
       16 GETTABLEKS                       R8 R8 K2 ["Magnitude"]
       18 LOADN                            R9 3
       19 JUMPIFLT                         R8 R9 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 LOADB                            R8 0
       24 MODK                             R9 R6 K3 [2]
       25 JUMPIFNOTEQKN                    R9 K4 [0] ; [+2]
       27 NOT                              R8 R7
       28 JUMPIFNOT                        R8 ; [+10]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K5 ["new"]
       32 GETTABLE                         R10 R0 R6
       33 GETTABLEKS                       R10 R10 K1 ["Position"]
       35 MOVE                             R11 R6
       36 CALL                             R9 2 1
       37 SETTABLE                         R9 R2 R3
       38 ADDK                             R3 R3 K0 [1]
       39 FORNLOOP                         R4
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K5 ["new"]
       43 LENGTH                           R6 R0
       44 GETTABLE                         R5 R0 R6
       45 GETTABLEKS                       R5 R5 K1 ["Position"]
       47 LENGTH                           R6 R0
       48 MOVE                             R7 R1
       49 CALL                             R4 3 1
       50 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       52 MOVE                             R6 R2
       53 MOVE                             R7 R4
       54 GETIMPORT                        R5 K8 [table.insert]
       56 CALL                             R5 2 0
       57 NEWTABLE                         R5 0 0
       59 LOADN                            R3 1
       60 LENGTH                           R8 R2
       61 LOADN                            R6 1
       62 LOADN                            R7 -1
       63 FORNPREP                         R6
       64 GETTABLE                         R9 R2 R8
       65 SETTABLE                         R9 R5 R3
       66 ADDK                             R3 R3 K0 [1]
       67 FORNLOOP                         R6
       68 RETURN                           R5 1

PROTO_20:
        0 SUBK                             R4 R0 K1 [10]
        1 LOADN                            R5 0
        2 LOADN                            R6 90
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R3 K4 [math.clamp]
        6 CALL                             R3 3 1
        7 DIVK                             R2 R3 K0 [90]
        8 MULK                             R4 R2 K6 [1.5]
        9 ADDK                             R3 R4 K5 [1]
       10 MUL                              R4 R1 R3
       11 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 LOADN                            R1 1
        3 LOADN                            R2 -1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 GETTABLEKS                       R5 R4 K0 ["ClosestWayPoint"]
        9 JUMPIFNOTLE                      R5 R0 ; [+10]
       11 NAMECALL                         R5 R4 K1 ["Destroy"]
       13 CALL                             R5 1 0
       14 GETUPVAL                         R5 0
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R5 R3
       17 JUMP                             ; [+1]
       18 RETURN                           R0 0
       19 FORNLOOP                         R1
       20 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["UnbindFromRenderStep"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
       13 GETTABLEKS                       R0 R0 K3 ["CFrame"]
       15 GETTABLEKS                       R0 R0 K4 ["Position"]
       17 LOADN                            R3 1
       18 GETUPVAL                         R4 0
       19 LENGTH                           R1 R4
       20 LOADN                            R2 1
       21 FORNPREP                         R1
       22 GETUPVAL                         R5 0
       23 GETTABLE                         R4 R5 R3
       24 GETTABLEKS                       R4 R4 K5 ["DisplayModel"]
       26 LOADK                            R6 K6 ["TrailDotImage"]
       27 NAMECALL                         R4 R4 K7 ["FindFirstChild"]
       29 CALL                             R4 2 1
       30 JUMPIFNOT                        R4 ; [+23]
       31 GETUPVAL                         R7 0
       32 GETTABLE                         R6 R7 R3
       33 GETTABLEKS                       R6 R6 K5 ["DisplayModel"]
       35 GETTABLEKS                       R6 R6 K4 ["Position"]
       37 SUB                              R5 R6 R0
       38 GETTABLEKS                       R5 R5 K8 ["Magnitude"]
       40 GETUPVAL                         R7 4
       41 SUBK                             R10 R5 K10 [10]
       42 LOADN                            R11 0
       43 LOADN                            R12 90
       44 FASTCALL                         MATH_CLAMP ; [+2]
       45 GETIMPORT                        R9 K13 [math.clamp]
       47 CALL                             R9 3 1
       48 DIVK                             R8 R9 K9 [90]
       49 MULK                             R10 R8 K15 [1.5]
       50 ADDK                             R9 R10 K14 [1]
       51 MUL                              R6 R7 R9
       52 SETTABLEKS                       R6 R4 K16 ["Size"]
       54 FORNLOOP                         R1
       55 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R2
        9 LOADK                            R5 K1 ["ClickToMoveResizeTrail"]
       10 GETUPVAL                         R6 0
       11 CONCAT                           R4 R5 R6
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 GETUPVAL                         R6 2
       19 MOVE                             R8 R4
       20 GETIMPORT                        R10 K5 [Enum.RenderPriority.Camera]
       22 GETTABLEKS                       R10 R10 K6 ["Value"]
       24 SUBK                             R9 R10 K0 [1]
       25 MOVE                             R10 R5
       26 NAMECALL                         R6 R6 K7 ["BindToRenderStep"]
       28 CALL                             R6 4 0
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 MOVE                             R7 R6
       33 MOVE                             R8 R3
       34 RETURN                           R7 2

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["RunFailureTween"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Hide"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["new"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 SETUPVAL                         R1 0
       12 GETIMPORT                        R2 K4 [coroutine.wrap]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R1
       16 CALL                             R2 1 1
       17 CALL                             R2 0 0
       18 CLOSEUPVALS                      R1
       19 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Character"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 LOADK                            R4 K1 ["Humanoid"]
        5 NAMECALL                         R2 R1 K2 ["FindFirstChildOfClass"]
        7 CALL                             R2 2 1
        8 MOVE                             R0 R2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R0
       11 JUMPIFNOT                        R0 ; [+29]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 GETUPVAL                         R1 1
       15 JUMP                             ; [+22]
       16 GETUPVAL                         R4 2
       17 NAMECALL                         R2 R0 K3 ["LoadAnimation"]
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R3 1
       22 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       24 LOADK                            R4 K4 [""]
       25 GETIMPORT                        R2 K6 [assert]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 1
       29 GETIMPORT                        R3 K10 [Enum.AnimationPriority.Action]
       31 SETTABLEKS                       R3 R2 K11 ["Priority"]
       33 GETUPVAL                         R2 1
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K12 ["Looped"]
       37 GETUPVAL                         R1 1
       38 NAMECALL                         R2 R1 K13 ["Play"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["IsPlaying"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["Stop"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_30:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 4
        2 CALL                             R1 0 3
        3 SETUPVAL                         R1 1
        4 SETUPVAL                         R2 2
        5 SETUPVAL                         R3 3
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_32:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MOVE                             R2 R0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 4
        7 CALL                             R1 0 3
        8 SETUPVAL                         R1 1
        9 SETUPVAL                         R2 2
       10 SETUPVAL                         R3 3
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["X"]
        3 RETURN                           R0 1

PROTO_34:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 4
        2 CALL                             R1 0 3
        3 SETUPVAL                         R1 1
        4 SETUPVAL                         R2 2
        5 SETUPVAL                         R3 3
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_36:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 4
        2 CALL                             R1 0 3
        3 SETUPVAL                         R1 1
        4 SETUPVAL                         R2 2
        5 SETUPVAL                         R3 3
        6 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["rbxasset://textures/ui/traildot.png"]
        4 LOADK                            R2 K1 ["rbxasset://textures/ui/waypoint.png"]
        5 LOADB                            R3 0
        6 GETIMPORT                        R4 K4 [UDim2.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 42
       10 LOADN                            R7 0
       11 LOADN                            R8 50
       12 CALL                             R4 4 1
       13 GETIMPORT                        R5 K6 [Vector2.new]
       15 LOADN                            R6 0
       16 LOADK                            R7 K7 [0.5]
       17 CALL                             R5 2 1
       18 GETIMPORT                        R6 K6 [Vector2.new]
       20 LOADN                            R7 0
       21 LOADN                            R8 1
       22 CALL                             R6 2 1
       23 GETIMPORT                        R7 K6 [Vector2.new]
       25 LOADN                            R8 0
       26 LOADK                            R9 K7 [0.5]
       27 CALL                             R7 2 1
       28 GETIMPORT                        R8 K6 [Vector2.new]
       30 LOADK                            R9 K8 [0.1]
       31 LOADK                            R10 K7 [0.5]
       32 CALL                             R8 2 1
       33 GETIMPORT                        R9 K6 [Vector2.new]
       35 LOADK                            R10 K9 [-0.1]
       36 LOADK                            R11 K7 [0.5]
       37 CALL                             R9 2 1
       38 GETIMPORT                        R10 K6 [Vector2.new]
       40 LOADK                            R11 K10 [1.5]
       41 LOADK                            R12 K10 [1.5]
       42 CALL                             R10 2 1
       43 GETIMPORT                        R11 K12 [RaycastParams.new]
       45 CALL                             R11 0 1
       46 GETIMPORT                        R12 K16 [Enum.RaycastFilterType.Exclude]
       48 SETTABLEKS                       R12 R11 K17 ["FilterType"]
       50 GETIMPORT                        R12 K19 [game]
       52 LOADK                            R14 K20 ["Players"]
       53 NAMECALL                         R12 R12 K21 ["GetService"]
       55 CALL                             R12 2 1
       56 GETIMPORT                        R13 K19 [game]
       58 LOADK                            R15 K22 ["TweenService"]
       59 NAMECALL                         R13 R13 K21 ["GetService"]
       61 CALL                             R13 2 1
       62 GETIMPORT                        R14 K19 [game]
       64 LOADK                            R16 K23 ["RunService"]
       65 NAMECALL                         R14 R14 K21 ["GetService"]
       67 CALL                             R14 2 1
       68 GETIMPORT                        R15 K19 [game]
       70 LOADK                            R17 K24 ["Workspace"]
       71 NAMECALL                         R15 R15 K21 ["GetService"]
       73 CALL                             R15 2 1
       74 GETIMPORT                        R16 K26 [require]
       76 GETIMPORT                        R17 K28 [script]
       78 GETTABLEKS                       R17 R17 K29 ["Parent"]
       80 GETTABLEKS                       R17 R17 K29 ["Parent"]
       82 LOADK                            R19 K30 ["CommonUtils"]
       83 NAMECALL                         R17 R17 K31 ["WaitForChild"]
       85 CALL                             R17 2 -1
       86 CALL                             R16 -1 1
       87 GETTABLEKS                       R17 R16 K32 ["get"]
       89 LOADK                            R18 K33 ["FlagUtil"]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R18 R17 K34 ["getUserFlag"]
       93 LOADK                            R19 K35 ["UserRaycastUpdateAPI2"]
       94 CALL                             R18 1 1
       95 GETTABLEKS                       R19 R12 K36 ["LocalPlayer"]
       97 NEWCLOSURE                       R20 P0
       98 CAPTURE                          REF R10
       99 CAPTURE                          REF R3
      100 CAPTURE                          REF R1
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          REF R2
      104 CAPTURE                          VAL R7
      105 MOVE                             R21 R20
      106 CALL                             R21 0 3
      107 DUPCLOSURE                       R24 K37 [PROTO_1]
      108 CAPTURE                          VAL R15
      109 DUPCLOSURE                       R25 K38 [PROTO_2]
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R19
      114 NEWTABLE                         R26 4 0
      116 SETTABLEKS                       R26 R26 K39 ["__index"]
      118 DUPCLOSURE                       R27 K40 [PROTO_3]
      119 SETTABLEKS                       R27 R26 K41 ["Destroy"]
      121 NEWCLOSURE                       R27 P4
      122 CAPTURE                          REF R21
      123 CAPTURE                          VAL R25
      124 SETTABLEKS                       R27 R26 K42 ["NewDisplayModel"]
      126 DUPCLOSURE                       R27 K43 [PROTO_5]
      127 CAPTURE                          VAL R26
      128 SETTABLEKS                       R27 R26 K3 ["new"]
      130 NEWTABLE                         R27 8 0
      132 SETTABLEKS                       R27 R27 K39 ["__index"]
      134 DUPCLOSURE                       R28 K44 [PROTO_6]
      135 SETTABLEKS                       R28 R27 K41 ["Destroy"]
      137 NEWCLOSURE                       R28 P7
      138 CAPTURE                          REF R22
      139 CAPTURE                          VAL R25
      140 SETTABLEKS                       R28 R27 K42 ["NewDisplayModel"]
      142 DUPCLOSURE                       R28 K45 [PROTO_8]
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R6
      145 SETTABLEKS                       R28 R27 K46 ["CreateTween"]
      147 DUPCLOSURE                       R28 K47 [PROTO_9]
      148 CAPTURE                          VAL R13
      149 SETTABLEKS                       R28 R27 K48 ["TweenInFrom"]
      151 DUPCLOSURE                       R28 K49 [PROTO_11]
      152 CAPTURE                          VAL R27
      153 SETTABLEKS                       R28 R27 K3 ["new"]
      155 NEWTABLE                         R28 8 0
      157 SETTABLEKS                       R28 R28 K39 ["__index"]
      159 DUPCLOSURE                       R29 K50 [PROTO_12]
      160 SETTABLEKS                       R29 R28 K51 ["Hide"]
      162 DUPCLOSURE                       R29 K52 [PROTO_13]
      163 SETTABLEKS                       R29 R28 K41 ["Destroy"]
      165 NEWCLOSURE                       R29 P13
      166 CAPTURE                          REF R23
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R19
      172 SETTABLEKS                       R29 R28 K42 ["NewDisplayModel"]
      174 DUPCLOSURE                       R29 K53 [PROTO_15]
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R7
      179 SETTABLEKS                       R29 R28 K54 ["RunFailureTween"]
      181 DUPCLOSURE                       R29 K55 [PROTO_16]
      182 CAPTURE                          VAL R28
      183 SETTABLEKS                       R29 R28 K3 ["new"]
      185 GETIMPORT                        R29 K57 [Instance.new]
      187 LOADK                            R30 K58 ["Animation"]
      188 CALL                             R29 1 1
      189 LOADK                            R30 K59 ["rbxassetid://2874840706"]
      190 SETTABLEKS                       R30 R29 K60 ["AnimationId"]
      192 LOADNIL                          R30
      193 NEWCLOSURE                       R31 P16
      194 CAPTURE                          REF R30
      195 CAPTURE                          VAL R29
      196 DUPCLOSURE                       R32 K61 [PROTO_18]
      197 CAPTURE                          VAL R19
      198 DUPCLOSURE                       R33 K62 [PROTO_19]
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R27
      201 DUPCLOSURE                       R34 K63 [PROTO_20]
      202 LOADN                            R35 0
      203 NEWCLOSURE                       R36 P20
      204 CAPTURE                          REF R35
      205 CAPTURE                          VAL R33
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R15
      208 CAPTURE                          REF R10
      209 SETTABLEKS                       R36 R0 K64 ["CreatePathDisplay"]
      211 LOADNIL                          R36
      212 NEWCLOSURE                       R37 P21
      213 CAPTURE                          REF R36
      214 CAPTURE                          VAL R28
      215 SETTABLEKS                       R37 R0 K65 ["DisplayFailureWaypoint"]
      217 DUPCLOSURE                       R37 K66 [PROTO_27]
      218 CAPTURE                          VAL R27
      219 SETTABLEKS                       R37 R0 K67 ["CreateEndWaypoint"]
      221 NEWCLOSURE                       R37 P23
      222 CAPTURE                          VAL R19
      223 CAPTURE                          REF R30
      224 CAPTURE                          VAL R29
      225 SETTABLEKS                       R37 R0 K68 ["PlayFailureAnimation"]
      227 NEWCLOSURE                       R37 P24
      228 CAPTURE                          REF R30
      229 SETTABLEKS                       R37 R0 K69 ["CancelFailureAnimation"]
      231 NEWCLOSURE                       R37 P25
      232 CAPTURE                          REF R1
      233 CAPTURE                          REF R21
      234 CAPTURE                          REF R22
      235 CAPTURE                          REF R23
      236 CAPTURE                          VAL R20
      237 SETTABLEKS                       R37 R0 K70 ["SetWaypointTexture"]
      239 NEWCLOSURE                       R37 P26
      240 CAPTURE                          REF R1
      241 SETTABLEKS                       R37 R0 K71 ["GetWaypointTexture"]
      243 NEWCLOSURE                       R37 P27
      244 CAPTURE                          REF R10
      245 CAPTURE                          REF R21
      246 CAPTURE                          REF R22
      247 CAPTURE                          REF R23
      248 CAPTURE                          VAL R20
      249 SETTABLEKS                       R37 R0 K72 ["SetWaypointRadius"]
      251 NEWCLOSURE                       R37 P28
      252 CAPTURE                          REF R10
      253 SETTABLEKS                       R37 R0 K73 ["GetWaypointRadius"]
      255 NEWCLOSURE                       R37 P29
      256 CAPTURE                          REF R2
      257 CAPTURE                          REF R21
      258 CAPTURE                          REF R22
      259 CAPTURE                          REF R23
      260 CAPTURE                          VAL R20
      261 SETTABLEKS                       R37 R0 K74 ["SetEndWaypointTexture"]
      263 NEWCLOSURE                       R37 P30
      264 CAPTURE                          REF R2
      265 SETTABLEKS                       R37 R0 K75 ["GetEndWaypointTexture"]
      267 NEWCLOSURE                       R37 P31
      268 CAPTURE                          REF R3
      269 CAPTURE                          REF R21
      270 CAPTURE                          REF R22
      271 CAPTURE                          REF R23
      272 CAPTURE                          VAL R20
      273 SETTABLEKS                       R37 R0 K76 ["SetWaypointsAlwaysOnTop"]
      275 NEWCLOSURE                       R37 P32
      276 CAPTURE                          REF R3
      277 SETTABLEKS                       R37 R0 K77 ["GetWaypointsAlwaysOnTop"]
      279 CLOSEUPVALS                      R1
      280 RETURN                           R0 1
