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
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["LUAU_ANALYZE_ERROR"]
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
       33 GETTABLEKS                       R4 R0 K14 ["_selectedPoint"]
       35 GETTABLEKS                       R4 R4 K15 ["limb"]
       37 SETLIST                          R3 R4 1 [1]
       39 SETTABLEKS                       R3 R2 K16 ["FilterDescendantsInstances"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R5 R1 K17 ["Origin"]
       44 GETTABLEKS                       R6 R1 K18 ["Direction"]
       46 MOVE                             R7 R2
       47 NAMECALL                         R3 R3 K19 ["Raycast"]
       49 CALL                             R3 4 1
       50 LOADNIL                          R4
       51 JUMPIFNOTEQKNIL                  R3 ; [+25]
       53 GETTABLEKS                       R5 R0 K14 ["_selectedPoint"]
       55 GETTABLEKS                       R5 R5 K15 ["limb"]
       57 GETTABLEKS                       R9 R1 K17 ["Origin"]
       59 GETTABLEKS                       R11 R1 K18 ["Direction"]
       61 GETTABLEKS                       R11 R11 K20 ["Unit"]
       63 GETTABLEKS                       R13 R5 K21 ["Position"]
       65 GETTABLEKS                       R14 R1 K17 ["Origin"]
       67 SUB                              R12 R13 R14
       68 GETTABLEKS                       R12 R12 K22 ["Magnitude"]
       70 MUL                              R10 R11 R12
       71 ADD                              R8 R9 R10
       72 NAMECALL                         R6 R5 K23 ["GetClosestPointOnSurface"]
       74 CALL                             R6 2 1
       75 MOVE                             R4 R6
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R4 R3 K21 ["Position"]
       79 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       81 GETTABLEKS                       R5 R5 K24 ["projectionEnabled"]
       83 JUMPIFNOT                        R5 ; [+70]
       84 LOADNIL                          R5
       85 LOADN                            R6 10
       86 LOADN                            R7 0
       87 JUMPIFNOTLT                      R7 R6 ; [+34]
       89 SUBK                             R6 R6 K25 [1]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R10 R1 K17 ["Origin"]
       93 GETTABLEKS                       R12 R1 K18 ["Direction"]
       95 MULK                             R11 R12 K26 [0.05]
       96 ADD                              R9 R10 R11
       97 GETTABLEKS                       R11 R1 K18 ["Direction"]
       99 MINUS                            R10 R11
      100 MOVE                             R11 R2
      101 NAMECALL                         R7 R7 K19 ["Raycast"]
      103 CALL                             R7 4 1
      104 JUMPIFEQKNIL                     R7 ; [+16]
      106 JUMPIFNOTEQKNIL                  R7 ; [+2]
      108 LOADB                            R9 0 +1
      109 LOADB                            R9 1
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K1 ["LUAU_ANALYZE_ERROR"]
      113 FASTCALL2                        ASSERT R9 R10 ; [+3]
      115 GETIMPORT                        R8 K3 [assert]
      117 CALL                             R8 2 0
      118 GETTABLEKS                       R5 R7 K21 ["Position"]
      120 JUMP                             ; [+1]
      121 JUMPBACK                         ; [-36]
      122 MOVE                             R9 R5
      123 LOADK                            R10 K27 [0.5]
      124 NAMECALL                         R7 R4 K28 ["Lerp"]
      126 CALL                             R7 3 1
      127 GETTABLEKS                       R8 R0 K0 ["_updatePointPositionCallback"]
      129 GETIMPORT                        R10 K30 [CFrame.new]
      131 GETTABLEKS                       R11 R0 K4 ["_draggerContext"]
      133 GETTABLEKS                       R11 R11 K31 ["worldModel"]
      135 GETTABLEKS                       R11 R11 K32 ["PrimaryPart"]
      137 GETTABLEKS                       R11 R11 K29 ["CFrame"]
      139 MOVE                             R13 R7
      140 NAMECALL                         R11 R11 K33 ["PointToObjectSpace"]
      142 CALL                             R11 2 -1
      143 CALL                             R10 -1 1
      144 GETTABLEKS                       R11 R0 K14 ["_selectedPoint"]
      146 GETTABLEKS                       R11 R11 K34 ["getCFrame"]
      148 CALL                             R11 0 1
      149 GETTABLEKS                       R11 R11 K35 ["Rotation"]
      151 MUL                              R9 R10 R11
      152 CALL                             R8 1 0
      153 RETURN                           R0 0
      154 GETTABLEKS                       R5 R0 K0 ["_updatePointPositionCallback"]
      156 GETIMPORT                        R7 K30 [CFrame.new]
      158 GETTABLEKS                       R8 R0 K4 ["_draggerContext"]
      160 GETTABLEKS                       R8 R8 K31 ["worldModel"]
      162 GETTABLEKS                       R8 R8 K32 ["PrimaryPart"]
      164 GETTABLEKS                       R8 R8 K29 ["CFrame"]
      166 MOVE                             R10 R4
      167 NAMECALL                         R8 R8 K33 ["PointToObjectSpace"]
      169 CALL                             R8 2 -1
      170 CALL                             R7 -1 1
      171 GETTABLEKS                       R8 R0 K14 ["_selectedPoint"]
      173 GETTABLEKS                       R8 R8 K34 ["getCFrame"]
      175 CALL                             R8 0 1
      176 GETTABLEKS                       R8 R8 K35 ["Rotation"]
      178 MUL                              R6 R7 R8
      179 CALL                             R5 1 0
      180 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R1 K1 ["onFreeformDragEnd"]
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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["EditingTools"]
       21 GETTABLEKS                       R3 R3 K13 ["BodyPointsTool"]
       23 GETTABLEKS                       R3 R3 K14 ["Types"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R1 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K15 ["Util"]
       32 GETTABLEKS                       R4 R4 K16 ["Constants"]
       34 CALL                             R3 1 1
       35 NEWTABLE                         R4 8 0
       37 SETTABLEKS                       R4 R4 K17 ["__index"]
       39 DUPCLOSURE                       R5 K18 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R5 R4 K19 ["new"]
       43 DUPCLOSURE                       R5 K20 [PROTO_1]
       44 SETTABLEKS                       R5 R4 K21 ["render"]
       46 DUPCLOSURE                       R5 K22 [PROTO_2]
       47 SETTABLEKS                       R5 R4 K23 ["rotate"]
       49 DUPCLOSURE                       R5 K24 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R5 R4 K25 ["update"]
       54 DUPCLOSURE                       R5 K26 [PROTO_4]
       55 SETTABLEKS                       R5 R4 K27 ["destroy"]
       57 RETURN                           R4 1
