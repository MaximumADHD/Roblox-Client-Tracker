PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["selectedPoints"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [1] ; [+8]
        5 GETTABLEKS                       R1 R0 K2 ["createUpdatePointPosition"]
        7 GETTABLEKS                       R3 R0 K0 ["selectedPoints"]
        9 GETTABLEN                        R2 R3 1
       10 CALL                             R1 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETTABLEKS                       R2 R0 K3 ["onFreeformDragBegin"]
       15 CALL                             R2 0 0
       16 DUPTABLE                         R3 K7 [{"_draggerContext", "_selectedPoint", "_updatePointPositionCallback"}]
       17 SETTABLEKS                       R0 R3 K4 ["_draggerContext"]
       19 GETTABLEKS                       R5 R0 K0 ["selectedPoints"]
       21 GETTABLEN                        R4 R5 1
       22 SETTABLEKS                       R4 R3 K5 ["_selectedPoint"]
       24 SETTABLEKS                       R1 R3 K6 ["_updatePointPositionCallback"]
       26 GETUPVAL                         R4 0
       27 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       29 GETIMPORT                        R2 K9 [setmetatable]
       31 CALL                             R2 2 1
       32 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_updatePointPositionCallback"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K0 ["_updatePointPositionCallback"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K1 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K3 [assert]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K4 ["_draggerContext"]
       21 NAMECALL                         R1 R1 K5 ["getMouseRay"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K8 [RaycastParams.new]
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K12 [Enum.RaycastFilterType.Include]
       29 SETTABLEKS                       R3 R2 K13 ["FilterType"]
       31 NEWTABLE                         R3 0 1
       33 GETTABLEKS                       R5 R0 K14 ["_selectedPoint"]
       35 GETTABLEKS                       R4 R5 K15 ["limb"]
       37 SETLIST                          R3 R4 1 [1]
       39 SETTABLEKS                       R3 R2 K16 ["FilterDescendantsInstances"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R5 R1 K17 ["Origin"]
       44 GETTABLEKS                       R6 R1 K18 ["Direction"]
       46 MOVE                             R7 R2
       47 NAMECALL                         R3 R3 K19 ["Raycast"]
       49 CALL                             R3 4 1
       50 LOADNIL                          R4
       51 GETUPVAL                         R5 2
       52 JUMPIFNOT                        R5 ; [+29]
       53 JUMPIFNOTEQKNIL                  R3 ; [+25]
       55 GETTABLEKS                       R6 R0 K14 ["_selectedPoint"]
       57 GETTABLEKS                       R5 R6 K15 ["limb"]
       59 GETTABLEKS                       R9 R1 K17 ["Origin"]
       61 GETTABLEKS                       R12 R1 K18 ["Direction"]
       63 GETTABLEKS                       R11 R12 K20 ["Unit"]
       65 GETTABLEKS                       R14 R5 K21 ["Position"]
       67 GETTABLEKS                       R15 R1 K17 ["Origin"]
       69 SUB                              R13 R14 R15
       70 GETTABLEKS                       R12 R13 K22 ["Magnitude"]
       72 MUL                              R10 R11 R12
       73 ADD                              R8 R9 R10
       74 NAMECALL                         R6 R5 K23 ["GetClosestPointOnSurface"]
       76 CALL                             R6 2 1
       77 MOVE                             R4 R6
       78 JUMP                             ; [+20]
       79 GETTABLEKS                       R4 R3 K21 ["Position"]
       81 JUMP                             ; [+17]
       82 JUMPIFNOTEQKNIL                  R3 ; [+2]
       84 RETURN                           R0 0
       85 JUMPIFNOTEQKNIL                  R3 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R7 R8 K1 ["LUAU_ANALYZE_ERROR"]
       92 FASTCALL2                        ASSERT R6 R7 ; [+3]
       94 GETIMPORT                        R5 K3 [assert]
       96 CALL                             R5 2 0
       97 GETTABLEKS                       R4 R3 K21 ["Position"]
       99 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
      101 GETTABLEKS                       R5 R6 K24 ["projectionEnabled"]
      103 JUMPIFNOT                        R5 ; [+70]
      104 LOADNIL                          R5
      105 LOADN                            R6 10
      106 LOADN                            R7 0
      107 JUMPIFNOTLT                      R7 R6 ; [+34]
      109 SUBK                             R6 R6 K25 [1]
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R10 R1 K17 ["Origin"]
      113 GETTABLEKS                       R12 R1 K18 ["Direction"]
      115 MULK                             R11 R12 K26 [0.05]
      116 ADD                              R9 R10 R11
      117 GETTABLEKS                       R11 R1 K18 ["Direction"]
      119 MINUS                            R10 R11
      120 MOVE                             R11 R2
      121 NAMECALL                         R7 R7 K19 ["Raycast"]
      123 CALL                             R7 4 1
      124 JUMPIFEQKNIL                     R7 ; [+16]
      126 JUMPIFNOTEQKNIL                  R7 ; [+2]
      128 LOADB                            R9 0 +1
      129 LOADB                            R9 1
      130 GETUPVAL                         R11 0
      131 GETTABLEKS                       R10 R11 K1 ["LUAU_ANALYZE_ERROR"]
      133 FASTCALL2                        ASSERT R9 R10 ; [+3]
      135 GETIMPORT                        R8 K3 [assert]
      137 CALL                             R8 2 0
      138 GETTABLEKS                       R5 R7 K21 ["Position"]
      140 JUMP                             ; [+1]
      141 JUMPBACK                         ; [-36]
      142 MOVE                             R9 R5
      143 LOADK                            R10 K27 [0.5]
      144 NAMECALL                         R7 R4 K28 ["Lerp"]
      146 CALL                             R7 3 1
      147 GETTABLEKS                       R8 R0 K0 ["_updatePointPositionCallback"]
      149 GETIMPORT                        R10 K30 [CFrame.new]
      151 GETTABLEKS                       R14 R0 K4 ["_draggerContext"]
      153 GETTABLEKS                       R13 R14 K31 ["worldModel"]
      155 GETTABLEKS                       R12 R13 K32 ["PrimaryPart"]
      157 GETTABLEKS                       R11 R12 K29 ["CFrame"]
      159 MOVE                             R13 R7
      160 NAMECALL                         R11 R11 K33 ["PointToObjectSpace"]
      162 CALL                             R11 2 -1
      163 CALL                             R10 -1 1
      164 GETTABLEKS                       R13 R0 K14 ["_selectedPoint"]
      166 GETTABLEKS                       R12 R13 K34 ["getCFrame"]
      168 CALL                             R12 0 1
      169 GETTABLEKS                       R11 R12 K35 ["Rotation"]
      171 MUL                              R9 R10 R11
      172 CALL                             R8 1 0
      173 RETURN                           R0 0
      174 GETTABLEKS                       R5 R0 K0 ["_updatePointPositionCallback"]
      176 GETIMPORT                        R7 K30 [CFrame.new]
      178 GETTABLEKS                       R11 R0 K4 ["_draggerContext"]
      180 GETTABLEKS                       R10 R11 K31 ["worldModel"]
      182 GETTABLEKS                       R9 R10 K32 ["PrimaryPart"]
      184 GETTABLEKS                       R8 R9 K29 ["CFrame"]
      186 MOVE                             R10 R4
      187 NAMECALL                         R8 R8 K33 ["PointToObjectSpace"]
      189 CALL                             R8 2 -1
      190 CALL                             R7 -1 1
      191 GETTABLEKS                       R10 R0 K14 ["_selectedPoint"]
      193 GETTABLEKS                       R9 R10 K34 ["getCFrame"]
      195 CALL                             R9 0 1
      196 GETTABLEKS                       R8 R9 K35 ["Rotation"]
      198 MUL                              R6 R7 R8
      199 CALL                             R5 1 0
      200 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R2 K1 ["onFreeformDragEnd"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R7 R1 K10 ["Src"]
       17 GETTABLEKS                       R6 R7 K11 ["Components"]
       19 GETTABLEKS                       R5 R6 K12 ["EditingTools"]
       21 GETTABLEKS                       R4 R5 K13 ["BodyPointsTool"]
       23 GETTABLEKS                       R3 R4 K14 ["Types"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R6 R1 K10 ["Src"]
       30 GETTABLEKS                       R5 R6 K15 ["Util"]
       32 GETTABLEKS                       R4 R5 K16 ["Constants"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K1 [game]
       37 LOADK                            R6 K17 ["AvatarPreviewerEditingToolsDraggerClosestPoint"]
       38 LOADB                            R7 0
       39 NAMECALL                         R4 R4 K18 ["DefineFastFlag"]
       41 CALL                             R4 3 1
       42 NEWTABLE                         R5 8 0
       44 SETTABLEKS                       R5 R5 K19 ["__index"]
       46 DUPCLOSURE                       R6 K20 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R6 R5 K21 ["new"]
       50 DUPCLOSURE                       R6 K22 [PROTO_1]
       51 SETTABLEKS                       R6 R5 K23 ["render"]
       53 DUPCLOSURE                       R6 K24 [PROTO_2]
       54 SETTABLEKS                       R6 R5 K25 ["rotate"]
       56 DUPCLOSURE                       R6 K26 [PROTO_3]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K27 ["update"]
       62 DUPCLOSURE                       R6 K28 [PROTO_4]
       63 SETTABLEKS                       R6 R5 K29 ["destroy"]
       65 RETURN                           R5 1
