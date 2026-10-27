PROTO_0:
        0 LOADK                            R6 K0 [{0, -1, 0}]
        1 NAMECALL                         R4 R0 K1 ["VectorToWorldSpace"]
        3 CALL                             R4 2 1
        4 JUMPIFNOTEQKS                    R1 K2 ["leg"] ; [+3]
        6 LOADK                            R5 K0 [{0, -1, 0}]
        7 JUMP                             ; [+13]
        8 GETTABLEKS                       R7 R2 K3 ["X"]
       10 MINUS                            R6 R7
       11 LOADN                            R7 -1
       12 GETTABLEKS                       R9 R2 K4 ["Z"]
       14 MINUS                            R8 R9
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R5 K7 [Vector3.new]
       18 CALL                             R5 3 1
       19 GETTABLEKS                       R5 R5 K8 ["Unit"]
       21 MOVE                             R10 R5
       22 NAMECALL                         R8 R4 K9 ["Dot"]
       24 CALL                             R8 2 1
       25 LOADN                            R9 -1
       26 LOADN                            R10 1
       27 FASTCALL                         MATH_CLAMP ; [+2]
       28 GETIMPORT                        R7 K12 [math.clamp]
       30 CALL                             R7 3 1
       31 FASTCALL1                        MATH_ACOS R7 ; [+2]
       32 GETIMPORT                        R6 K14 [math.acos]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 0
       36 GETTABLE                         R7 R8 R1
       37 GETTABLEKS                       R11 R7 K15 ["restDegrees"]
       39 FASTCALL1                        MATH_RAD R11 ; [+2]
       40 GETIMPORT                        R10 K17 [math.rad]
       42 CALL                             R10 1 1
       43 GETTABLEKS                       R12 R7 K18 ["gain"]
       45 MUL                              R11 R12 R6
       46 ADD                              R9 R10 R11
       47 GETTABLEKS                       R11 R7 K19 ["maxDegrees"]
       49 FASTCALL1                        MATH_RAD R11 ; [+2]
       50 GETIMPORT                        R10 K17 [math.rad]
       52 CALL                             R10 1 1
       53 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       55 GETIMPORT                        R8 K21 [math.min]
       57 CALL                             R8 2 1
       58 JUMPIFNOTEQKS                    R1 K22 ["arm"] ; [+3]
       60 MOVE                             R9 R2
       61 JUMP                             ; [+1]
       62 MINUS                            R9 R2
       63 LOADNIL                          R10
       64 GETIMPORT                        R11 K25 [CFrame.identity]
       66 NEWTABLE                         R12 0 2
       68 MOVE                             R15 R8
       69 MINUS                            R16 R8
       70 SETLIST                          R12 R15 2 [1]
       72 LOADNIL                          R13
       73 LOADNIL                          R14
       74 FORGPREP                         R12
       75 GETIMPORT                        R17 K27 [CFrame.fromAxisAngle]
       77 MOVE                             R18 R3
       78 MOVE                             R19 R16
       79 CALL                             R17 2 1
       80 MOVE                             R20 R4
       81 NAMECALL                         R18 R17 K1 ["VectorToWorldSpace"]
       83 CALL                             R18 2 1
       84 MOVE                             R20 R9
       85 NAMECALL                         R18 R18 K9 ["Dot"]
       87 CALL                             R18 2 1
       88 JUMPIFEQKNIL                     R10 ; [+3]
       90 JUMPIFNOTLT                      R10 R18 ; [+3]
       92 MOVE                             R10 R18
       93 MOVE                             R11 R17
       94 FORGLOOP                         R12 2 ; [-20]
       96 MUL                              R12 R11 R0
       97 RETURN                           R12 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R0 R6
        7 JUMPIFEQKNIL                     R8 ; [+12]
        9 GETUPVAL                         R10 1
       10 GETTABLE                         R9 R10 R6
       11 GETTABLEKS                       R12 R9 K0 ["before"]
       13 GETTABLEKS                       R13 R8 K1 ["CFrame"]
       15 MUL                              R11 R12 R13
       16 GETTABLEKS                       R12 R9 K2 ["after"]
       18 MUL                              R10 R11 R12
       19 SETTABLE                         R10 R2 R7
       20 FORGLOOP                         R3 2 ; [-15]
       22 JUMPIFNOT                        R1 ; [+51]
       23 GETTABLEKS                       R3 R2 K3 ["HumanoidRootPart"]
       25 JUMPIF                           R3 ; [+2]
       26 GETIMPORT                        R3 K5 [CFrame.identity]
       28 GETTABLEKS                       R4 R2 K6 ["LowerTorso"]
       30 JUMPIF                           R4 ; [+2]
       31 GETIMPORT                        R4 K5 [CFrame.identity]
       33 GETTABLEKS                       R6 R3 K7 ["Rotation"]
       35 GETTABLEKS                       R7 R4 K7 ["Rotation"]
       37 MUL                              R5 R6 R7
       38 LOADK                            R8 K8 [{0, 0, -1}]
       39 NAMECALL                         R6 R5 K9 ["VectorToWorldSpace"]
       41 CALL                             R6 2 1
       42 LOADK                            R9 K10 [{1, 0, 0}]
       43 NAMECALL                         R7 R5 K9 ["VectorToWorldSpace"]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R8 2
       47 LOADNIL                          R9
       48 LOADNIL                          R10
       49 FORGPREP                         R8
       50 GETTABLEKS                       R14 R12 K11 ["upper"]
       52 GETTABLE                         R13 R2 R14
       53 JUMPIFEQKNIL                     R13 ; [+18]
       55 GETTABLEKS                       R15 R13 K7 ["Rotation"]
       57 MUL                              R14 R5 R15
       58 GETUPVAL                         R15 3
       59 MOVE                             R16 R14
       60 GETTABLEKS                       R17 R12 K12 ["kind"]
       62 MOVE                             R18 R6
       63 MOVE                             R19 R7
       64 CALL                             R15 4 1
       65 GETTABLEKS                       R16 R12 K13 ["lower"]
       67 NAMECALL                         R18 R14 K14 ["Inverse"]
       69 CALL                             R18 1 1
       70 MUL                              R17 R18 R15
       71 SETTABLE                         R17 R2 R16
       72 FORGLOOP                         R8 2 ; [-23]
       74 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Pose"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R0 R3 K4 ["Name"]
        6 GETTABLE                         R4 R1 R0
        7 JUMPIF                           R4 ; [+2]
        8 GETIMPORT                        R4 K7 [CFrame.identity]
       10 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       12 LOADN                            R4 0
       13 SETTABLEKS                       R4 R3 K8 ["Weight"]
       15 GETUPVAL                         R6 0
       16 GETTABLE                         R5 R6 R0
       17 GETTABLEKS                       R5 R5 K9 ["source"]
       19 GETTABLE                         R4 R2 R5
       20 JUMPIFEQKNIL                     R4 ; [+13]
       22 GETTABLEKS                       R5 R4 K8 ["Weight"]
       24 SETTABLEKS                       R5 R3 K8 ["Weight"]
       26 GETTABLEKS                       R5 R4 K10 ["EasingStyle"]
       28 SETTABLEKS                       R5 R3 K10 ["EasingStyle"]
       30 GETTABLEKS                       R5 R4 K11 ["EasingDirection"]
       32 SETTABLEKS                       R5 R3 K11 ["EasingDirection"]
       34 GETUPVAL                         R6 1
       35 GETTABLE                         R5 R6 R0
       36 JUMPIFEQKNIL                     R5 ; [+15]
       38 MOVE                             R6 R5
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETUPVAL                         R13 2
       43 MOVE                             R14 R10
       44 MOVE                             R15 R1
       45 MOVE                             R16 R2
       46 CALL                             R13 3 -1
       47 NAMECALL                         R11 R3 K12 ["AddSubPose"]
       49 CALL                             R11 -1 0
       50 FORGLOOP                         R6 2 ; [-9]
       52 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["KeyframeSequence"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K4 ["Name"]
        6 SETTABLEKS                       R3 R2 K4 ["Name"]
        8 GETTABLEKS                       R3 R0 K5 ["Loop"]
       10 SETTABLEKS                       R3 R2 K5 ["Loop"]
       12 GETTABLEKS                       R3 R0 K6 ["Priority"]
       14 SETTABLEKS                       R3 R2 K6 ["Priority"]
       16 NAMECALL                         R3 R0 K7 ["GetKeyframes"]
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 NEWTABLE                         R8 0 0
       22 NAMECALL                         R9 R7 K8 ["GetDescendants"]
       24 CALL                             R9 1 3
       25 FORGPREP                         R9
       26 LOADK                            R16 K9 ["Pose"]
       27 NAMECALL                         R14 R13 K10 ["IsA"]
       29 CALL                             R14 2 1
       30 JUMPIFNOT                        R14 ; [+3]
       31 GETTABLEKS                       R14 R13 K4 ["Name"]
       33 SETTABLE                         R13 R8 R14
       34 FORGLOOP                         R9 2 ; [-9]
       36 GETUPVAL                         R9 0
       37 MOVE                             R10 R8
       38 JUMPIFEQKB                       R1 TRUE ; [+2]
       40 LOADB                            R11 0 +1
       41 LOADB                            R11 1
       42 CALL                             R9 2 1
       43 GETIMPORT                        R10 K2 [Instance.new]
       45 LOADK                            R11 K11 ["Keyframe"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R11 R7 K4 ["Name"]
       49 SETTABLEKS                       R11 R10 K4 ["Name"]
       51 GETTABLEKS                       R11 R7 K12 ["Time"]
       53 SETTABLEKS                       R11 R10 K12 ["Time"]
       55 GETUPVAL                         R13 1
       56 LOADK                            R14 K13 ["HumanoidRootPart"]
       57 MOVE                             R15 R9
       58 MOVE                             R16 R8
       59 CALL                             R13 3 1
       60 NAMECALL                         R11 R10 K14 ["AddPose"]
       62 CALL                             R11 2 0
       63 NAMECALL                         R11 R7 K15 ["GetMarkers"]
       65 CALL                             R11 1 3
       66 FORGPREP                         R11
       67 NAMECALL                         R18 R15 K16 ["Clone"]
       69 CALL                             R18 1 -1
       70 NAMECALL                         R16 R10 K17 ["AddMarker"]
       72 CALL                             R16 -1 0
       73 FORGLOOP                         R11 2 ; [-7]
       75 MOVE                             R13 R10
       76 NAMECALL                         R11 R2 K18 ["AddKeyframe"]
       78 CALL                             R11 2 0
       79 FORGLOOP                         R3 2 ; [-60]
       81 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"arm", "leg"}]
        2 DUPTABLE                         R1 K9 [{["restDegrees"] = 8, ["gain"] = 0.45, ["maxDegrees"] = 80}]
        3 SETTABLEKS                       R1 R0 K0 ["arm"]
        5 DUPTABLE                         R1 K13 [{["restDegrees"] = 4, ["gain"] = 0.55, ["maxDegrees"] = 95}]
        6 SETTABLEKS                       R1 R0 K1 ["leg"]
        8 GETIMPORT                        R1 K16 [CFrame.new]
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 LOADN                            R5 -1
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 LOADN                            R8 0
       17 LOADN                            R9 0
       18 LOADN                            R10 1
       19 LOADN                            R11 0
       20 LOADN                            R12 1
       21 LOADN                            R13 0
       22 CALL                             R1 12 1
       23 GETIMPORT                        R2 K16 [CFrame.new]
       25 LOADN                            R3 0
       26 LOADN                            R4 0
       27 LOADN                            R5 0
       28 LOADN                            R6 0
       29 LOADN                            R7 0
       30 LOADN                            R8 -1
       31 LOADN                            R9 0
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 LOADN                            R12 1
       35 LOADN                            R13 0
       36 LOADN                            R14 0
       37 CALL                             R2 12 1
       38 GETIMPORT                        R3 K16 [CFrame.new]
       40 LOADN                            R4 0
       41 LOADN                            R5 0
       42 LOADN                            R6 0
       43 LOADN                            R7 0
       44 LOADN                            R8 0
       45 LOADN                            R9 1
       46 LOADN                            R10 0
       47 LOADN                            R11 1
       48 LOADN                            R12 0
       49 LOADN                            R13 -1
       50 LOADN                            R14 0
       51 LOADN                            R15 0
       52 CALL                             R3 12 1
       53 NEWTABLE                         R4 8 0
       55 DUPTABLE                         R5 K19 [{"c0", "c1"}]
       56 SETTABLEKS                       R1 R5 K17 ["c0"]
       58 SETTABLEKS                       R1 R5 K18 ["c1"]
       60 SETTABLEKS                       R5 R4 K20 ["Torso"]
       62 DUPTABLE                         R5 K19 [{"c0", "c1"}]
       63 GETIMPORT                        R7 K16 [CFrame.new]
       65 LOADN                            R8 0
       66 LOADN                            R9 1
       67 LOADN                            R10 0
       68 CALL                             R7 3 1
       69 MUL                              R6 R7 R1
       70 SETTABLEKS                       R6 R5 K17 ["c0"]
       72 GETIMPORT                        R7 K16 [CFrame.new]
       74 LOADN                            R8 0
       75 LOADK                            R9 K21 [-0.5]
       76 LOADN                            R10 0
       77 CALL                             R7 3 1
       78 MUL                              R6 R7 R1
       79 SETTABLEKS                       R6 R5 K18 ["c1"]
       81 SETTABLEKS                       R5 R4 K22 ["Head"]
       83 DUPTABLE                         R5 K19 [{"c0", "c1"}]
       84 GETIMPORT                        R7 K16 [CFrame.new]
       86 LOADN                            R8 -1
       87 LOADK                            R9 K23 [0.5]
       88 LOADN                            R10 0
       89 CALL                             R7 3 1
       90 MUL                              R6 R7 R2
       91 SETTABLEKS                       R6 R5 K17 ["c0"]
       93 GETIMPORT                        R7 K16 [CFrame.new]
       95 LOADK                            R8 K23 [0.5]
       96 LOADK                            R9 K23 [0.5]
       97 LOADN                            R10 0
       98 CALL                             R7 3 1
       99 MUL                              R6 R7 R2
      100 SETTABLEKS                       R6 R5 K18 ["c1"]
      102 SETTABLEKS                       R5 R4 K24 ["Left Arm"]
      104 DUPTABLE                         R5 K19 [{"c0", "c1"}]
      105 GETIMPORT                        R7 K16 [CFrame.new]
      107 LOADN                            R8 1
      108 LOADK                            R9 K23 [0.5]
      109 LOADN                            R10 0
      110 CALL                             R7 3 1
      111 MUL                              R6 R7 R3
      112 SETTABLEKS                       R6 R5 K17 ["c0"]
      114 GETIMPORT                        R7 K16 [CFrame.new]
      116 LOADK                            R8 K21 [-0.5]
      117 LOADK                            R9 K23 [0.5]
      118 LOADN                            R10 0
      119 CALL                             R7 3 1
      120 MUL                              R6 R7 R3
      121 SETTABLEKS                       R6 R5 K18 ["c1"]
      123 SETTABLEKS                       R5 R4 K25 ["Right Arm"]
      125 DUPTABLE                         R5 K19 [{"c0", "c1"}]
      126 GETIMPORT                        R7 K16 [CFrame.new]
      128 LOADN                            R8 -1
      129 LOADN                            R9 -1
      130 LOADN                            R10 0
      131 CALL                             R7 3 1
      132 MUL                              R6 R7 R2
      133 SETTABLEKS                       R6 R5 K17 ["c0"]
      135 GETIMPORT                        R7 K16 [CFrame.new]
      137 LOADK                            R8 K21 [-0.5]
      138 LOADN                            R9 1
      139 LOADN                            R10 0
      140 CALL                             R7 3 1
      141 MUL                              R6 R7 R2
      142 SETTABLEKS                       R6 R5 K18 ["c1"]
      144 SETTABLEKS                       R5 R4 K26 ["Left Leg"]
      146 DUPTABLE                         R5 K19 [{"c0", "c1"}]
      147 GETIMPORT                        R7 K16 [CFrame.new]
      149 LOADN                            R8 1
      150 LOADN                            R9 -1
      151 LOADN                            R10 0
      152 CALL                             R7 3 1
      153 MUL                              R6 R7 R3
      154 SETTABLEKS                       R6 R5 K17 ["c0"]
      156 GETIMPORT                        R7 K16 [CFrame.new]
      158 LOADK                            R8 K23 [0.5]
      159 LOADN                            R9 1
      160 LOADN                            R10 0
      161 CALL                             R7 3 1
      162 MUL                              R6 R7 R3
      163 SETTABLEKS                       R6 R5 K18 ["c1"]
      165 SETTABLEKS                       R5 R4 K27 ["Right Leg"]
      167 DUPTABLE                         R5 K43 [{"HumanoidRootPart", "LowerTorso", "UpperTorso", "Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
      168 DUPTABLE                         R6 K45 [{["source"] = "HumanoidRootPart"}]
      169 SETTABLEKS                       R6 R5 K28 ["HumanoidRootPart"]
      171 DUPTABLE                         R6 K47 [{["parent"] = "HumanoidRootPart", ["source"] = "Torso"}]
      172 SETTABLEKS                       R6 R5 K29 ["LowerTorso"]
      174 DUPTABLE                         R6 K48 [{["parent"] = "LowerTorso", ["source"] = "Torso"}]
      175 SETTABLEKS                       R6 R5 K30 ["UpperTorso"]
      177 DUPTABLE                         R6 K49 [{["parent"] = "UpperTorso", ["source"] = "Head"}]
      178 SETTABLEKS                       R6 R5 K22 ["Head"]
      180 DUPTABLE                         R6 K50 [{["parent"] = "UpperTorso", ["source"] = "Left Arm"}]
      181 SETTABLEKS                       R6 R5 K31 ["LeftUpperArm"]
      183 DUPTABLE                         R6 K51 [{["parent"] = "LeftUpperArm", ["source"] = "Left Arm"}]
      184 SETTABLEKS                       R6 R5 K32 ["LeftLowerArm"]
      186 DUPTABLE                         R6 K52 [{["parent"] = "LeftLowerArm", ["source"] = "Left Arm"}]
      187 SETTABLEKS                       R6 R5 K33 ["LeftHand"]
      189 DUPTABLE                         R6 K53 [{["parent"] = "UpperTorso", ["source"] = "Right Arm"}]
      190 SETTABLEKS                       R6 R5 K34 ["RightUpperArm"]
      192 DUPTABLE                         R6 K54 [{["parent"] = "RightUpperArm", ["source"] = "Right Arm"}]
      193 SETTABLEKS                       R6 R5 K35 ["RightLowerArm"]
      195 DUPTABLE                         R6 K55 [{["parent"] = "RightLowerArm", ["source"] = "Right Arm"}]
      196 SETTABLEKS                       R6 R5 K36 ["RightHand"]
      198 DUPTABLE                         R6 K56 [{["parent"] = "LowerTorso", ["source"] = "Left Leg"}]
      199 SETTABLEKS                       R6 R5 K37 ["LeftUpperLeg"]
      201 DUPTABLE                         R6 K57 [{["parent"] = "LeftUpperLeg", ["source"] = "Left Leg"}]
      202 SETTABLEKS                       R6 R5 K38 ["LeftLowerLeg"]
      204 DUPTABLE                         R6 K58 [{["parent"] = "LeftLowerLeg", ["source"] = "Left Leg"}]
      205 SETTABLEKS                       R6 R5 K39 ["LeftFoot"]
      207 DUPTABLE                         R6 K59 [{["parent"] = "LowerTorso", ["source"] = "Right Leg"}]
      208 SETTABLEKS                       R6 R5 K40 ["RightUpperLeg"]
      210 DUPTABLE                         R6 K60 [{["parent"] = "RightUpperLeg", ["source"] = "Right Leg"}]
      211 SETTABLEKS                       R6 R5 K41 ["RightLowerLeg"]
      213 DUPTABLE                         R6 K61 [{["parent"] = "RightLowerLeg", ["source"] = "Right Leg"}]
      214 SETTABLEKS                       R6 R5 K42 ["RightFoot"]
      216 NEWTABLE                         R6 0 0
      218 MOVE                             R7 R5
      219 LOADNIL                          R8
      220 LOADNIL                          R9
      221 FORGPREP                         R7
      222 GETTABLEKS                       R12 R11 K46 ["parent"]
      224 JUMPIFEQKNIL                     R12 ; [+17]
      226 GETTABLEKS                       R13 R11 K46 ["parent"]
      228 GETTABLE                         R12 R6 R13
      229 JUMPIF                           R12 ; [+2]
      230 NEWTABLE                         R12 0 0
      232 FASTCALL2                        TABLE_INSERT R12 R10 ; [+5]
      234 MOVE                             R14 R12
      235 MOVE                             R15 R10
      236 GETIMPORT                        R13 K64 [table.insert]
      238 CALL                             R13 2 0
      239 GETTABLEKS                       R13 R11 K46 ["parent"]
      241 SETTABLE                         R12 R6 R13
      242 FORGLOOP                         R7 2 ; [-21]
      244 DUPTABLE                         R7 K65 [{"LowerTorso", "UpperTorso", "Head", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg"}]
      245 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      246 GETIMPORT                        R9 K16 [CFrame.new]
      248 LOADN                            R10 0
      249 LOADN                            R11 -1
      250 LOADN                            R12 0
      251 CALL                             R9 3 1
      252 SETTABLEKS                       R9 R8 K17 ["c0"]
      254 GETIMPORT                        R9 K16 [CFrame.new]
      256 LOADN                            R10 0
      257 LOADK                            R11 K66 [-0.199972]
      258 LOADN                            R12 0
      259 CALL                             R9 3 1
      260 SETTABLEKS                       R9 R8 K18 ["c1"]
      262 SETTABLEKS                       R8 R7 K29 ["LowerTorso"]
      264 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      265 GETIMPORT                        R9 K16 [CFrame.new]
      267 LOADN                            R10 0
      268 LOADK                            R11 K67 [0.200025]
      269 LOADN                            R12 0
      270 CALL                             R9 3 1
      271 SETTABLEKS                       R9 R8 K17 ["c0"]
      273 GETIMPORT                        R9 K16 [CFrame.new]
      275 LOADN                            R10 0
      276 LOADK                            R11 K68 [-0.799986]
      277 LOADN                            R12 0
      278 CALL                             R9 3 1
      279 SETTABLEKS                       R9 R8 K18 ["c1"]
      281 SETTABLEKS                       R8 R7 K30 ["UpperTorso"]
      283 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      284 GETIMPORT                        R9 K16 [CFrame.new]
      286 LOADN                            R10 0
      287 LOADK                            R11 K69 [0.800017]
      288 LOADN                            R12 0
      289 CALL                             R9 3 1
      290 SETTABLEKS                       R9 R8 K17 ["c0"]
      292 GETIMPORT                        R9 K16 [CFrame.new]
      294 LOADN                            R10 0
      295 LOADK                            R11 K70 [-0.586]
      296 LOADN                            R12 0
      297 CALL                             R9 3 1
      298 SETTABLEKS                       R9 R8 K18 ["c1"]
      300 SETTABLEKS                       R8 R7 K22 ["Head"]
      302 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      303 GETIMPORT                        R9 K16 [CFrame.new]
      305 LOADN                            R10 -1
      306 LOADK                            R11 K71 [0.563017]
      307 LOADN                            R12 0
      308 CALL                             R9 3 1
      309 SETTABLEKS                       R9 R8 K17 ["c0"]
      311 GETIMPORT                        R9 K16 [CFrame.new]
      313 LOADK                            R10 K23 [0.5]
      314 LOADK                            R11 K72 [0.394327]
      315 LOADN                            R12 0
      316 CALL                             R9 3 1
      317 SETTABLEKS                       R9 R8 K18 ["c1"]
      319 SETTABLEKS                       R8 R7 K31 ["LeftUpperArm"]
      321 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      322 GETIMPORT                        R9 K16 [CFrame.new]
      324 LOADN                            R10 1
      325 LOADK                            R11 K71 [0.563017]
      326 LOADN                            R12 0
      327 CALL                             R9 3 1
      328 SETTABLEKS                       R9 R8 K17 ["c0"]
      330 GETIMPORT                        R9 K16 [CFrame.new]
      332 LOADK                            R10 K73 [-0.500001]
      333 LOADK                            R11 K72 [0.394327]
      334 LOADN                            R12 0
      335 CALL                             R9 3 1
      336 SETTABLEKS                       R9 R8 K18 ["c1"]
      338 SETTABLEKS                       R8 R7 K34 ["RightUpperArm"]
      340 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      341 GETIMPORT                        R9 K16 [CFrame.new]
      343 LOADK                            R10 K21 [-0.5]
      344 LOADK                            R11 K66 [-0.199972]
      345 LOADN                            R12 0
      346 CALL                             R9 3 1
      347 SETTABLEKS                       R9 R8 K17 ["c0"]
      349 GETIMPORT                        R9 K16 [CFrame.new]
      351 LOADN                            R10 0
      352 LOADK                            R11 K74 [0.420782]
      353 LOADN                            R12 0
      354 CALL                             R9 3 1
      355 SETTABLEKS                       R9 R8 K18 ["c1"]
      357 SETTABLEKS                       R8 R7 K37 ["LeftUpperLeg"]
      359 DUPTABLE                         R8 K19 [{"c0", "c1"}]
      360 GETIMPORT                        R9 K16 [CFrame.new]
      362 LOADK                            R10 K23 [0.5]
      363 LOADK                            R11 K66 [-0.199972]
      364 LOADK                            R12 K75 [-1.9E-05]
      365 CALL                             R9 3 1
      366 SETTABLEKS                       R9 R8 K17 ["c0"]
      368 GETIMPORT                        R9 K16 [CFrame.new]
      370 LOADN                            R10 0
      371 LOADK                            R11 K74 [0.420782]
      372 LOADK                            R12 K76 [-6.7E-05]
      373 CALL                             R9 3 1
      374 SETTABLEKS                       R9 R8 K18 ["c1"]
      376 SETTABLEKS                       R8 R7 K40 ["RightUpperLeg"]
      378 GETTABLEKS                       R9 R7 K29 ["LowerTorso"]
      380 GETTABLEKS                       R9 R9 K17 ["c0"]
      382 GETTABLEKS                       R10 R7 K29 ["LowerTorso"]
      384 GETTABLEKS                       R10 R10 K18 ["c1"]
      386 NAMECALL                         R10 R10 K77 ["Inverse"]
      388 CALL                             R10 1 1
      389 MUL                              R8 R9 R10
      390 GETTABLEKS                       R11 R7 K30 ["UpperTorso"]
      392 GETTABLEKS                       R11 R11 K17 ["c0"]
      394 MUL                              R10 R8 R11
      395 GETTABLEKS                       R11 R7 K30 ["UpperTorso"]
      397 GETTABLEKS                       R11 R11 K18 ["c1"]
      399 NAMECALL                         R11 R11 K77 ["Inverse"]
      401 CALL                             R11 1 1
      402 MUL                              R9 R10 R11
      403 GETIMPORT                        R10 K16 [CFrame.new]
      405 LOADN                            R11 0
      406 LOADK                            R12 K78 [0.41565050000000003]
      407 LOADN                            R13 0
      408 CALL                             R10 3 1
      409 GETIMPORT                        R11 K16 [CFrame.new]
      411 LOADN                            R12 0
      412 LOADK                            R13 K79 [0.39170000000000005]
      413 LOADN                            R14 0
      414 CALL                             R11 3 1
      415 DUPTABLE                         R12 K80 [{"HumanoidRootPart", "LowerTorso", "UpperTorso", "Head", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg"}]
      416 GETIMPORT                        R13 K82 [CFrame.identity]
      418 SETTABLEKS                       R13 R12 K28 ["HumanoidRootPart"]
      420 SETTABLEKS                       R8 R12 K29 ["LowerTorso"]
      422 SETTABLEKS                       R9 R12 K30 ["UpperTorso"]
      424 GETIMPORT                        R13 K16 [CFrame.new]
      426 LOADN                            R14 0
      427 LOADK                            R15 K83 [0.101472]
      428 LOADN                            R16 0
      429 CALL                             R13 3 1
      430 SETTABLEKS                       R13 R12 K22 ["Head"]
      432 SETTABLEKS                       R10 R12 K31 ["LeftUpperArm"]
      434 SETTABLEKS                       R10 R12 K34 ["RightUpperArm"]
      436 SETTABLEKS                       R11 R12 K37 ["LeftUpperLeg"]
      438 SETTABLEKS                       R11 R12 K40 ["RightUpperLeg"]
      440 NEWTABLE                         R13 8 0
      442 LOADK                            R14 K28 ["HumanoidRootPart"]
      443 SETTABLEKS                       R14 R13 K28 ["HumanoidRootPart"]
      445 LOADK                            R14 K29 ["LowerTorso"]
      446 SETTABLEKS                       R14 R13 K20 ["Torso"]
      448 LOADK                            R14 K22 ["Head"]
      449 SETTABLEKS                       R14 R13 K22 ["Head"]
      451 LOADK                            R14 K31 ["LeftUpperArm"]
      452 SETTABLEKS                       R14 R13 K24 ["Left Arm"]
      454 LOADK                            R14 K34 ["RightUpperArm"]
      455 SETTABLEKS                       R14 R13 K25 ["Right Arm"]
      457 LOADK                            R14 K37 ["LeftUpperLeg"]
      458 SETTABLEKS                       R14 R13 K26 ["Left Leg"]
      460 LOADK                            R14 K40 ["RightUpperLeg"]
      461 SETTABLEKS                       R14 R13 K27 ["Right Leg"]
      463 NEWTABLE                         R14 1 0
      465 DUPTABLE                         R15 K86 [{"before", "after"}]
      466 GETIMPORT                        R16 K82 [CFrame.identity]
      468 SETTABLEKS                       R16 R15 K84 ["before"]
      470 GETIMPORT                        R16 K82 [CFrame.identity]
      472 SETTABLEKS                       R16 R15 K85 ["after"]
      474 SETTABLEKS                       R15 R14 K28 ["HumanoidRootPart"]
      476 MOVE                             R15 R13
      477 LOADNIL                          R16
      478 LOADNIL                          R17
      479 FORGPREP                         R15
      480 GETTABLE                         R20 R4 R18
      481 JUMPIFEQKNIL                     R20 ; [+34]
      483 GETTABLE                         R21 R7 R19
      484 GETTABLE                         R22 R5 R19
      485 GETTABLEKS                       R22 R22 K46 ["parent"]
      487 DUPTABLE                         R23 K86 [{"before", "after"}]
      488 GETTABLEKS                       R26 R21 K17 ["c0"]
      490 NAMECALL                         R26 R26 K77 ["Inverse"]
      492 CALL                             R26 1 1
      493 GETTABLE                         R27 R12 R22
      494 NAMECALL                         R27 R27 K77 ["Inverse"]
      496 CALL                             R27 1 1
      497 MUL                              R25 R26 R27
      498 GETTABLEKS                       R26 R20 K17 ["c0"]
      500 MUL                              R24 R25 R26
      501 SETTABLEKS                       R24 R23 K84 ["before"]
      503 GETTABLEKS                       R26 R20 K18 ["c1"]
      505 NAMECALL                         R26 R26 K77 ["Inverse"]
      507 CALL                             R26 1 1
      508 GETTABLE                         R27 R12 R19
      509 MUL                              R25 R26 R27
      510 GETTABLEKS                       R26 R21 K18 ["c1"]
      512 MUL                              R24 R25 R26
      513 SETTABLEKS                       R24 R23 K85 ["after"]
      515 SETTABLE                         R23 R14 R18
      516 FORGLOOP                         R15 2 ; [-37]
      518 NEWTABLE                         R15 0 4
      520 DUPTABLE                         R16 K90 [{["kind"] = "arm", ["upper"] = "LeftUpperArm", ["lower"] = "LeftLowerArm"}]
      521 DUPTABLE                         R17 K91 [{["kind"] = "arm", ["upper"] = "RightUpperArm", ["lower"] = "RightLowerArm"}]
      522 DUPTABLE                         R18 K92 [{["kind"] = "leg", ["upper"] = "LeftUpperLeg", ["lower"] = "LeftLowerLeg"}]
      523 DUPTABLE                         R19 K93 [{["kind"] = "leg", ["upper"] = "RightUpperLeg", ["lower"] = "RightLowerLeg"}]
      524 SETLIST                          R15 R16 4 [1]
      526 DUPCLOSURE                       R16 K94 [PROTO_0]
      527 CAPTURE                          VAL R0
      528 DUPCLOSURE                       R17 K95 [PROTO_1]
      529 CAPTURE                          VAL R13
      530 CAPTURE                          VAL R14
      531 CAPTURE                          VAL R15
      532 CAPTURE                          VAL R16
      533 DUPCLOSURE                       R18 K96 [PROTO_2]
      534 CAPTURE                          VAL R5
      535 CAPTURE                          VAL R6
      536 CAPTURE                          VAL R18
      537 DUPCLOSURE                       R19 K97 [PROTO_3]
      538 CAPTURE                          VAL R17
      539 CAPTURE                          VAL R18
      540 RETURN                           R19 1
