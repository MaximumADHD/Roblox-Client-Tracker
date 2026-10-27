PROTO_0:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K0 ["X"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+19]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+12]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K0 ["X"]
       17 JUMPIFEQKN                       R3 K2 [Infinity] ; [+7]
       19 GETTABLEKS                       R3 R0 K1 ["Y"]
       21 JUMPIFEQKN                       R3 K2 [Infinity] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 NOT                              R1 R2
       26 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K0 ["X"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+31]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+24]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K2 ["Z"]
       17 GETTABLEKS                       R4 R0 K2 ["Z"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+17]
       21 LOADB                            R2 1
       22 GETTABLEKS                       R3 R0 K0 ["X"]
       24 JUMPIFEQKN                       R3 K3 [Infinity] ; [+12]
       26 LOADB                            R2 1
       27 GETTABLEKS                       R3 R0 K1 ["Y"]
       29 JUMPIFEQKN                       R3 K3 [Infinity] ; [+7]
       31 GETTABLEKS                       R3 R0 K2 ["Z"]
       33 JUMPIFEQKN                       R3 K3 [Infinity] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 NOT                              R1 R2
       38 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 LOADK                            R2 K1 [{0, 0, 0}]
        5 LOADK                            R3 K2 [{0, 0, 1}]
        6 LOADB                            R4 0
        7 RETURN                           R2 3
        8 LOADK                            R4 K3 ["Humanoid"]
        9 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+5]
       14 LOADK                            R3 K1 [{0, 0, 0}]
       15 LOADK                            R4 K2 [{0, 0, 1}]
       16 LOADB                            R5 0
       17 RETURN                           R3 3
       18 LOADK                            R5 K5 ["InputContexts"]
       19 NAMECALL                         R3 R0 K4 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+5]
       24 LOADK                            R4 K1 [{0, 0, 0}]
       25 LOADK                            R5 K2 [{0, 0, 1}]
       26 LOADB                            R6 0
       27 RETURN                           R4 3
       28 LOADK                            R6 K6 ["CharacterContext"]
       29 NAMECALL                         R4 R3 K4 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 JUMPIFNOTEQKNIL                  R4 ; [+5]
       34 LOADK                            R5 K1 [{0, 0, 0}]
       35 LOADK                            R6 K2 [{0, 0, 1}]
       36 LOADB                            R7 0
       37 RETURN                           R5 3
       38 LOADK                            R7 K7 ["CameraContext"]
       39 NAMECALL                         R5 R3 K4 ["FindFirstChild"]
       41 CALL                             R5 2 1
       42 GETTABLEKS                       R6 R4 K8 ["MoveAction"]
       44 MOVE                             R7 R5
       45 JUMPIFNOT                        R7 ; [+2]
       46 GETTABLEKS                       R7 R5 K9 ["CameraAction"]
       48 LOADK                            R10 K10 ["RotationAction"]
       49 NAMECALL                         R8 R4 K4 ["FindFirstChild"]
       51 CALL                             R8 2 1
       52 LOADB                            R9 0
       53 JUMPIFEQKNIL                     R8 ; [+4]
       55 NAMECALL                         R9 R8 K11 ["GetState"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K12 [PROTO_0]
       59 DUPCLOSURE                       R11 K13 [PROTO_1]
       60 JUMPIFEQKNIL                     R6 ; [+5]
       62 NAMECALL                         R12 R6 K11 ["GetState"]
       64 CALL                             R12 1 1
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R12 K16 [Vector2.new]
       68 LOADN                            R13 0
       69 LOADN                            R14 0
       70 CALL                             R12 2 1
       71 LOADNIL                          R13
       72 GETUPVAL                         R14 0
       73 JUMPIFNOT                        R14 ; [+8]
       74 NAMECALL                         R14 R0 K17 ["GetCameraState"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R14 R14 K18 ["CFrame"]
       79 GETTABLEKS                       R13 R14 K19 ["LookVector"]
       81 JUMP                             ; [+47]
       82 GETUPVAL                         R14 1
       83 JUMPIFNOT                        R14 ; [+37]
       84 GETIMPORT                        R14 K21 [pcall]
       86 NEWCLOSURE                       R15 P2
       87 CAPTURE                          VAL R0
       88 CALL                             R14 1 2
       89 JUMPIFNOT                        R14 ; [+21]
       90 JUMPIFNOT                        R15 ; [+20]
       91 GETTABLEKS                       R16 R15 K18 ["CFrame"]
       93 GETIMPORT                        R17 K23 [CFrame.identity]
       95 JUMPIFEQ                         R16 R17 ; [+15]
       97 GETTABLEKS                       R17 R15 K24 ["FieldOfView"]
       99 LOADN                            R18 0
      100 JUMPIFNOTLT                      R18 R17 ; [+10]
      102 GETTABLEKS                       R17 R15 K25 ["ViewportSize"]
      104 GETTABLEKS                       R17 R17 K26 ["Magnitude"]
      106 LOADN                            R18 0
      107 JUMPIFNOTLT                      R18 R17 ; [+3]
      109 GETTABLEKS                       R13 R16 K19 ["LookVector"]
      111 JUMPIF                           R13 ; [+17]
      112 JUMPIFEQKNIL                     R7 ; [+6]
      114 NAMECALL                         R16 R7 K11 ["GetState"]
      116 CALL                             R16 1 1
      117 MOVE                             R13 R16
      118 JUMP                             ; [+10]
      119 LOADK                            R13 K1 [{0, 0, 0}]
      120 JUMP                             ; [+8]
      121 JUMPIFEQKNIL                     R7 ; [+6]
      123 NAMECALL                         R14 R7 K11 ["GetState"]
      125 CALL                             R14 1 1
      126 MOVE                             R13 R14
      127 JUMP                             ; [+1]
      128 LOADK                            R13 K1 [{0, 0, 0}]
      129 LOADB                            R15 1
      130 GETTABLEKS                       R16 R12 K27 ["X"]
      132 GETTABLEKS                       R17 R12 K27 ["X"]
      134 JUMPIFNOTEQ                      R16 R17 ; [+19]
      136 LOADB                            R15 1
      137 GETTABLEKS                       R16 R12 K28 ["Y"]
      139 GETTABLEKS                       R17 R12 K28 ["Y"]
      141 JUMPIFNOTEQ                      R16 R17 ; [+12]
      143 LOADB                            R15 1
      144 GETTABLEKS                       R16 R12 K27 ["X"]
      146 JUMPIFEQKN                       R16 K29 [Infinity] ; [+7]
      148 GETTABLEKS                       R16 R12 K28 ["Y"]
      150 JUMPIFEQKN                       R16 K29 [Infinity] ; [+2]
      152 LOADB                            R15 0 +1
      153 LOADB                            R15 1
      154 NOT                              R14 R15
      155 JUMPIFNOT                        R14 ; [+81]
      156 MOVE                             R15 R13
      157 LOADB                            R16 1
      158 GETTABLEKS                       R17 R15 K27 ["X"]
      160 GETTABLEKS                       R18 R15 K27 ["X"]
      162 JUMPIFNOTEQ                      R17 R18 ; [+31]
      164 LOADB                            R16 1
      165 GETTABLEKS                       R17 R15 K28 ["Y"]
      167 GETTABLEKS                       R18 R15 K28 ["Y"]
      169 JUMPIFNOTEQ                      R17 R18 ; [+24]
      171 LOADB                            R16 1
      172 GETTABLEKS                       R17 R15 K30 ["Z"]
      174 GETTABLEKS                       R18 R15 K30 ["Z"]
      176 JUMPIFNOTEQ                      R17 R18 ; [+17]
      178 LOADB                            R16 1
      179 GETTABLEKS                       R17 R15 K27 ["X"]
      181 JUMPIFEQKN                       R17 K29 [Infinity] ; [+12]
      183 LOADB                            R16 1
      184 GETTABLEKS                       R17 R15 K28 ["Y"]
      186 JUMPIFEQKN                       R17 K29 [Infinity] ; [+7]
      188 GETTABLEKS                       R17 R15 K30 ["Z"]
      190 JUMPIFEQKN                       R17 K29 [Infinity] ; [+2]
      192 LOADB                            R16 0 +1
      193 LOADB                            R16 1
      194 NOT                              R14 R16
      195 JUMPIFNOT                        R14 ; [+41]
      196 GETTABLEKS                       R14 R13 K26 ["Magnitude"]
      198 LOADN                            R15 0
      199 JUMPIFNOTLT                      R15 R14 ; [+37]
      201 JUMPIFNOT                        R2 ; [+18]
      202 NAMECALL                         R14 R2 K11 ["GetState"]
      204 CALL                             R14 1 1
      205 GETIMPORT                        R15 K34 [Enum.HumanoidStateType.Swimming]
      207 JUMPIFEQ                         R14 R15 ; [+12]
      209 GETTABLEKS                       R15 R13 K27 ["X"]
      211 LOADN                            R16 0
      212 GETTABLEKS                       R17 R13 K30 ["Z"]
      214 FASTCALL                         VECTOR ; [+2]
      215 GETIMPORT                        R14 K36 [Vector3.new]
      217 CALL                             R14 3 1
      218 GETTABLEKS                       R13 R14 K37 ["Unit"]
      220 LOADK                            R16 K38 [{0, 1, 0}]
      221 NAMECALL                         R14 R13 K39 ["Cross"]
      223 CALL                             R14 2 1
      224 GETTABLEKS                       R14 R14 K37 ["Unit"]
      226 GETTABLEKS                       R17 R12 K28 ["Y"]
      228 MUL                              R16 R13 R17
      229 GETTABLEKS                       R18 R12 K27 ["X"]
      231 MUL                              R17 R14 R18
      232 ADD                              R15 R16 R17
      233 MOVE                             R16 R15
      234 MOVE                             R17 R13
      235 MOVE                             R18 R9
      236 RETURN                           R16 3
      237 LOADK                            R14 K1 [{0, 0, 0}]
      238 LOADK                            R15 K2 [{0, 0, 1}]
      239 LOADB                            R16 0
      240 RETURN                           R14 3

PROTO_4:
        0 LOADK                            R3 K0 ["InputContexts"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["PlayerModule"]
        9 GETTABLEKS                       R1 R1 K0 ["InputContexts"]
       11 NAMECALL                         R1 R1 K3 ["Clone"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K4 ["CharacterContext"]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K5 ["Enabled"]
       19 GETTABLEKS                       R2 R1 K6 ["CameraContext"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K5 ["Enabled"]
       24 SETTABLEKS                       R0 R1 K7 ["Parent"]
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["CFrame"]
        9 GETTABLEKS                       R2 R2 K6 ["LookVector"]
       11 NAMECALL                         R0 R0 K7 ["Fire"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K5 ["RotationType"]
        9 GETIMPORT                        R4 K7 [Enum.RotationType.CameraRelative]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 NAMECALL                         R0 R0 K8 ["Fire"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["InputContexts"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R4 K2 ["CharacterContext"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 LOADK                            R5 K3 ["CameraContext"]
       13 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 0
       19 JUMPIFNOT                        R4 ; [+23]
       20 LOADK                            R6 K4 ["RotationAction"]
       21 NAMECALL                         R4 R2 K1 ["FindFirstChild"]
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+150]
       25 LOADK                            R7 K5 ["RotationScriptableBinding"]
       26 NAMECALL                         R5 R4 K1 ["FindFirstChild"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+145]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K6 ["RotationType"]
       33 GETIMPORT                        R10 K9 [Enum.RotationType.CameraRelative]
       35 JUMPIFEQ                         R9 R10 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 NAMECALL                         R6 R5 K10 ["Fire"]
       41 CALL                             R6 2 0
       42 RETURN                           R0 0
       43 LOADB                            R4 1
       44 GETUPVAL                         R5 2
       45 JUMPIFNOT                        R5 ; [+26]
       46 GETIMPORT                        R5 K12 [pcall]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R0
       50 CALL                             R5 1 2
       51 JUMPIFNOT                        R5 ; [+20]
       52 JUMPIFNOT                        R6 ; [+19]
       53 GETTABLEKS                       R7 R6 K13 ["CFrame"]
       55 GETIMPORT                        R8 K15 [CFrame.identity]
       57 JUMPIFEQ                         R7 R8 ; [+14]
       59 GETTABLEKS                       R8 R6 K16 ["FieldOfView"]
       61 LOADN                            R9 0
       62 JUMPIFNOTLT                      R9 R8 ; [+9]
       64 GETTABLEKS                       R8 R6 K17 ["ViewportSize"]
       66 GETTABLEKS                       R8 R8 K18 ["Magnitude"]
       68 LOADN                            R9 0
       69 JUMPIFNOTLT                      R9 R8 ; [+2]
       71 LOADB                            R4 0
       72 JUMPIFNOT                        R4 ; [+45]
       73 LOADK                            R7 K19 ["CameraAction"]
       74 NAMECALL                         R5 R3 K1 ["FindFirstChild"]
       76 CALL                             R5 2 1
       77 JUMPIFNOT                        R5 ; [+40]
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R6 R6 K20 ["CurrentCamera"]
       81 GETUPVAL                         R7 4
       82 JUMPIFNOT                        R7 ; [+28]
       83 LOADK                            R9 K21 ["CameraScriptableBinding"]
       84 NAMECALL                         R7 R5 K1 ["FindFirstChild"]
       86 CALL                             R7 2 1
       87 JUMPIFNOT                        R7 ; [+15]
       88 GETIMPORT                        R8 K12 [pcall]
       90 NEWCLOSURE                       R9 P1
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CALL                             R8 1 2
       94 JUMPIF                           R8 ; [+23]
       95 GETTABLEKS                       R12 R6 K13 ["CFrame"]
       97 GETTABLEKS                       R12 R12 K22 ["LookVector"]
       99 NAMECALL                         R10 R5 K10 ["Fire"]
      101 CALL                             R10 2 0
      102 JUMP                             ; [+15]
      103 GETTABLEKS                       R10 R6 K13 ["CFrame"]
      105 GETTABLEKS                       R10 R10 K22 ["LookVector"]
      107 NAMECALL                         R8 R5 K10 ["Fire"]
      109 CALL                             R8 2 0
      110 JUMP                             ; [+7]
      111 GETTABLEKS                       R9 R6 K13 ["CFrame"]
      113 GETTABLEKS                       R9 R9 K22 ["LookVector"]
      115 NAMECALL                         R7 R5 K10 ["Fire"]
      117 CALL                             R7 2 0
      118 LOADK                            R7 K4 ["RotationAction"]
      119 NAMECALL                         R5 R2 K1 ["FindFirstChild"]
      121 CALL                             R5 2 1
      122 JUMPIFNOT                        R5 ; [+52]
      123 GETUPVAL                         R6 4
      124 JUMPIFNOT                        R6 ; [+38]
      125 LOADK                            R8 K5 ["RotationScriptableBinding"]
      126 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
      128 CALL                             R6 2 1
      129 JUMPIFNOT                        R6 ; [+20]
      130 GETIMPORT                        R7 K12 [pcall]
      132 NEWCLOSURE                       R8 P2
      133 CAPTURE                          VAL R6
      134 CAPTURE                          UPVAL U1
      135 CALL                             R7 1 2
      136 JUMPIF                           R7 ; [+38]
      137 GETUPVAL                         R12 1
      138 GETTABLEKS                       R12 R12 K6 ["RotationType"]
      140 GETIMPORT                        R13 K9 [Enum.RotationType.CameraRelative]
      142 JUMPIFEQ                         R12 R13 ; [+2]
      144 LOADB                            R11 0 +1
      145 LOADB                            R11 1
      146 NAMECALL                         R9 R5 K10 ["Fire"]
      148 CALL                             R9 2 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R10 1
      151 GETTABLEKS                       R10 R10 K6 ["RotationType"]
      153 GETIMPORT                        R11 K9 [Enum.RotationType.CameraRelative]
      155 JUMPIFEQ                         R10 R11 ; [+2]
      157 LOADB                            R9 0 +1
      158 LOADB                            R9 1
      159 NAMECALL                         R7 R5 K10 ["Fire"]
      161 CALL                             R7 2 0
      162 RETURN                           R0 0
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R9 R9 K6 ["RotationType"]
      166 GETIMPORT                        R10 K9 [Enum.RotationType.CameraRelative]
      168 JUMPIFEQ                         R9 R10 ; [+2]
      170 LOADB                            R8 0 +1
      171 LOADB                            R8 1
      172 NAMECALL                         R6 R5 K10 ["Fire"]
      174 CALL                             R6 2 0
      175 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["get"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADK                            R4 K1 ["InputContexts"]
        8 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 LOADK                            R5 K3 ["CharacterContext"]
       14 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 NAMECALL                         R4 R1 K4 ["GetAbilities"]
       21 CALL                             R4 1 3
       22 FORGPREP                         R4
       23 MOVE                             R12 R8
       24 LOADK                            R13 K5 ["Action"]
       25 CONCAT                           R11 R12 R13
       26 NAMECALL                         R9 R3 K2 ["FindFirstChild"]
       28 CALL                             R9 2 1
       29 JUMPIFNOT                        R9 ; [+7]
       30 MOVE                             R12 R8
       31 NAMECALL                         R13 R9 K6 ["GetState"]
       33 CALL                             R13 1 -1
       34 NAMECALL                         R10 R1 K7 ["SendInput"]
       36 CALL                             R10 -1 0
       37 FORGLOOP                         R4 2 ; [-15]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K8 ["_calculatePlayerInputValues"]
       42 MOVE                             R5 R0
       43 CALL                             R4 1 3
       44 LOADK                            R9 K9 ["Move"]
       45 MOVE                             R10 R4
       46 NAMECALL                         R7 R1 K7 ["SendInput"]
       48 CALL                             R7 3 0
       49 LOADK                            R9 K10 ["CameraLookDirection"]
       50 MOVE                             R10 R5
       51 NAMECALL                         R7 R1 K7 ["SendInput"]
       53 CALL                             R7 3 0
       54 LOADK                            R9 K11 ["CameraRelativeRotation"]
       55 MOVE                             R10 R6
       56 NAMECALL                         R7 R1 K7 ["SendInput"]
       58 CALL                             R7 3 0
       59 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADK                            R4 K1 ["Humanoid"]
        6 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 LOADK                            R5 K3 ["InputContexts"]
       13 NAMECALL                         R3 R0 K2 ["FindFirstChild"]
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 RETURN                           R0 0
       19 LOADK                            R6 K4 ["CharacterContext"]
       20 NAMECALL                         R4 R3 K2 ["FindFirstChild"]
       22 CALL                             R4 2 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R4 K5 ["JumpAction"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K6 ["_calculatePlayerInputValues"]
       31 MOVE                             R7 R0
       32 CALL                             R6 1 3
       33 MOVE                             R11 R6
       34 NAMECALL                         R9 R2 K7 ["Move"]
       36 CALL                             R9 2 0
       37 NOT                              R9 R8
       38 SETTABLEKS                       R9 R2 K8 ["AutoRotate"]
       40 JUMPIFNOT                        R8 ; [+37]
       41 GETTABLEKS                       R9 R2 K9 ["SeatPart"]
       43 JUMPIFNOTEQKNIL                  R9 ; [+34]
       45 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       47 JUMPIFEQKNIL                     R9 ; [+30]
       49 GETTABLEKS                       R9 R2 K11 ["Sit"]
       51 JUMPIF                           R9 ; [+26]
       52 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       54 NAMECALL                         R9 R9 K12 ["IsGrounded"]
       56 CALL                             R9 1 1
       57 JUMPIF                           R9 ; [+20]
       58 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       60 GETIMPORT                        R10 K15 [CFrame.new]
       62 GETTABLEKS                       R11 R2 K10 ["RootPart"]
       64 GETTABLEKS                       R11 R11 K13 ["CFrame"]
       66 GETTABLEKS                       R11 R11 K16 ["Position"]
       68 GETTABLEKS                       R13 R2 K10 ["RootPart"]
       70 GETTABLEKS                       R13 R13 K13 ["CFrame"]
       72 GETTABLEKS                       R13 R13 K16 ["Position"]
       74 ADD                              R12 R13 R7
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K13 ["CFrame"]
       78 JUMPIFEQKNIL                     R5 ; [+5]
       80 NAMECALL                         R9 R5 K17 ["GetState"]
       82 CALL                             R9 1 1
       83 JUMP                             ; [+1]
       84 LOADB                            R9 0
       85 SETTABLEKS                       R9 R2 K18 ["Jump"]
       87 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["Move"]
        1 LOADK                            R4 K1 [{0, 0, 0}]
        2 LOADN                            R5 1
        3 NAMECALL                         R1 R0 K2 ["AddVector3Field"]
        5 CALL                             R1 4 0
        6 LOADK                            R3 K3 ["Jump"]
        7 LOADB                            R4 0
        8 NAMECALL                         R1 R0 K4 ["AddBoolField"]
       10 CALL                             R1 3 0
       11 LOADK                            R3 K5 ["RotateToLookDirection"]
       12 LOADB                            R4 0
       13 NAMECALL                         R1 R0 K4 ["AddBoolField"]
       15 CALL                             R1 3 0
       16 LOADK                            R3 K6 ["LookDirection"]
       17 LOADK                            R4 K7 [{0, 0, 1}]
       18 NAMECALL                         R1 R0 K8 ["AddUnitVector3Field"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["setupPlayerControlState"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 DUPCLOSURE                       R1 K0 [PROTO_12]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["setupPlayerControlState"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R3 R0 K3 ["ChildAdded"]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R3 K4 ["Connect"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 DUPCLOSURE                       R1 K0 [PROTO_13]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETTABLEKS                       R2 R0 K1 ["Character"]
        5 JUMPIFNOT                        R2 ; [+21]
        6 GETTABLEKS                       R2 R0 K1 ["Character"]
        8 DUPCLOSURE                       R3 K2 [PROTO_12]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R6 0
       12 NAMECALL                         R4 R2 K3 ["FindFirstChildOfClass"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["setupPlayerControlState"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETTABLEKS                       R5 R2 K5 ["ChildAdded"]
       23 MOVE                             R7 R3
       24 NAMECALL                         R5 R5 K6 ["Connect"]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R2 R0 K7 ["CharacterAdded"]
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K6 ["Connect"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R0 K0 ["FindFirstChildOfClass"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 RETURN                           R0 0
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETIMPORT                        R1 K4 [Instance.new]
       17 GETUPVAL                         R2 1
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 2
       20 SETTABLEKS                       R2 R1 K5 ["Owner"]
       22 SETTABLEKS                       R0 R1 K6 ["Parent"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K7 ["setupPlayerControlState"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 GETTABLEKS                       R2 R0 K0 ["Character"]
        7 JUMPIFNOT                        R2 ; [+30]
        8 GETTABLEKS                       R2 R0 K0 ["Character"]
       10 GETUPVAL                         R3 0
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETUPVAL                         R5 1
       13 NAMECALL                         R3 R2 K1 ["FindFirstChildOfClass"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+8]
       17 JUMP                             ; [+20]
       18 JUMP                             ; [+6]
       19 GETUPVAL                         R5 1
       20 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+1]
       24 JUMP                             ; [+13]
       25 GETIMPORT                        R3 K5 [Instance.new]
       27 GETUPVAL                         R4 1
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R0 R3 K6 ["Owner"]
       31 SETTABLEKS                       R2 R3 K7 ["Parent"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K8 ["setupPlayerControlState"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 GETTABLEKS                       R2 R0 K9 ["CharacterAdded"]
       40 MOVE                             R4 R1
       41 NAMECALL                         R2 R2 K10 ["Connect"]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["Character"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 0
        6 JUMPIFNOT                        R5 ; [+6]
        7 GETUPVAL                         R7 1
        8 NAMECALL                         R5 R3 K1 ["FindFirstChildOfClass"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R7 1
       14 NAMECALL                         R5 R3 K2 ["FindFirstChild"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 JUMPIF                           R4 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R1 K3 ["humanoid"]
       22 JUMPIF                           R5 ; [+1]
       23 RETURN                           R0 0
       24 JUMPIFNOT                        R2 ; [+5]
       25 LOADK                            R8 K4 ["InputContexts"]
       26 NAMECALL                         R6 R0 K2 ["FindFirstChild"]
       28 CALL                             R6 2 1
       29 JUMP                             ; [+10]
       30 GETIMPORT                        R6 K6 [script]
       32 GETTABLEKS                       R6 R6 K7 ["Parent"]
       34 GETTABLEKS                       R6 R6 K7 ["Parent"]
       36 LOADK                            R8 K4 ["InputContexts"]
       37 NAMECALL                         R6 R6 K2 ["FindFirstChild"]
       39 CALL                             R6 2 1
       40 MOVE                             R7 R6
       41 JUMPIFNOT                        R7 ; [+4]
       42 LOADK                            R9 K8 ["CharacterContext"]
       43 NAMECALL                         R7 R6 K2 ["FindFirstChild"]
       45 CALL                             R7 2 1
       46 JUMPIF                           R7 ; [+1]
       47 RETURN                           R0 0
       48 LOADK                            R10 K9 ["MoveAction"]
       49 NAMECALL                         R8 R7 K2 ["FindFirstChild"]
       51 CALL                             R8 2 1
       52 LOADK                            R11 K10 ["JumpAction"]
       53 NAMECALL                         R9 R7 K2 ["FindFirstChild"]
       55 CALL                             R9 2 1
       56 JUMPIFNOT                        R8 ; [+4]
       57 NAMECALL                         R10 R8 K11 ["GetState"]
       59 CALL                             R10 1 1
       60 JUMP                             ; [+2]
       61 GETIMPORT                        R10 K14 [Vector2.zero]
       63 JUMPIFNOT                        R9 ; [+4]
       64 NAMECALL                         R11 R9 K11 ["GetState"]
       66 CALL                             R11 1 1
       67 JUMP                             ; [+1]
       68 LOADB                            R11 0
       69 MOVE                             R14 R5
       70 GETTABLEKS                       R16 R10 K15 ["X"]
       72 LOADN                            R17 0
       73 GETTABLEKS                       R19 R10 K16 ["Y"]
       75 MINUS                            R18 R19
       76 FASTCALL                         VECTOR ; [+2]
       77 GETIMPORT                        R15 K19 [Vector3.new]
       79 CALL                             R15 3 1
       80 NAMECALL                         R12 R1 K20 ["calculateRawMoveVector"]
       82 CALL                             R12 3 1
       83 GETUPVAL                         R14 2
       84 GETTABLEKS                       R14 R14 K21 ["RotationType"]
       86 GETIMPORT                        R15 K24 [Enum.RotationType.CameraRelative]
       88 JUMPIFEQ                         R14 R15 ; [+2]
       90 LOADB                            R13 0 +1
       91 LOADB                            R13 1
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K25 ["CurrentCamera"]
       95 JUMPIFNOT                        R15 ; [+8]
       96 GETUPVAL                         R14 3
       97 GETTABLEKS                       R14 R14 K25 ["CurrentCamera"]
       99 GETTABLEKS                       R14 R14 K26 ["CFrame"]
      101 GETTABLEKS                       R14 R14 K27 ["LookVector"]
      103 JUMPIF                           R14 ; [+1]
      104 LOADK                            R14 K28 [{0, 0, 1}]
      105 GETTABLEKS                       R16 R14 K15 ["X"]
      107 LOADN                            R17 0
      108 GETTABLEKS                       R18 R14 K29 ["Z"]
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R15 K19 [Vector3.new]
      113 CALL                             R15 3 1
      114 GETTABLEKS                       R17 R15 K30 ["Magnitude"]
      116 LOADK                            R18 K31 [0.001]
      117 JUMPIFNOTLT                      R18 R17 ; [+4]
      119 GETTABLEKS                       R16 R15 K32 ["Unit"]
      121 JUMP                             ; [+1]
      122 LOADK                            R16 K28 [{0, 0, 1}]
      123 DUPTABLE                         R17 K36 [{"Move", "RotateToLookDirection", "LookDirection"}]
      124 SETTABLEKS                       R12 R17 K33 ["Move"]
      126 SETTABLEKS                       R13 R17 K34 ["RotateToLookDirection"]
      128 SETTABLEKS                       R16 R17 K35 ["LookDirection"]
      130 GETUPVAL                         R18 4
      131 JUMPIFNOT                        R18 ; [+9]
      132 GETUPVAL                         R18 5
      133 GETTABLEKS                       R18 R18 K37 ["get"]
      135 MOVE                             R19 R0
      136 CALL                             R18 1 1
      137 NAMECALL                         R18 R18 K38 ["isEnabled"]
      139 CALL                             R18 1 1
      140 JUMPIF                           R18 ; [+2]
      141 SETTABLEKS                       R11 R17 K39 ["Jump"]
      143 MOVE                             R20 R17
      144 NAMECALL                         R18 R4 K40 ["UpdateFields"]
      146 CALL                             R18 2 0
      147 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADK                            R4 K1 ["Humanoid"]
        6 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 LOADNIL                          R3
       13 GETUPVAL                         R4 0
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETUPVAL                         R6 1
       16 NAMECALL                         R4 R1 K3 ["FindFirstChildOfClass"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R6 1
       22 NAMECALL                         R4 R1 K2 ["FindFirstChild"]
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 RETURN                           R0 0
       29 NAMECALL                         R4 R3 K4 ["GetState"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K5 ["Move"]
       34 GETTABLEKS                       R6 R4 K6 ["Jump"]
       36 GETTABLEKS                       R7 R4 K7 ["RotateToLookDirection"]
       38 GETTABLEKS                       R8 R4 K8 ["LookDirection"]
       40 JUMPIFNOT                        R5 ; [+4]
       41 MOVE                             R11 R5
       42 NAMECALL                         R9 R2 K5 ["Move"]
       44 CALL                             R9 2 0
       45 NOT                              R9 R7
       46 SETTABLEKS                       R9 R2 K9 ["AutoRotate"]
       48 JUMPIFNOT                        R7 ; [+39]
       49 JUMPIFEQKNIL                     R8 ; [+38]
       51 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       53 JUMPIFEQKNIL                     R9 ; [+34]
       55 GETTABLEKS                       R9 R2 K11 ["Sit"]
       57 JUMPIF                           R9 ; [+30]
       58 GETTABLEKS                       R9 R2 K12 ["SeatPart"]
       60 JUMPIFNOTEQKNIL                  R9 ; [+27]
       62 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       64 NAMECALL                         R9 R9 K13 ["IsGrounded"]
       66 CALL                             R9 1 1
       67 JUMPIF                           R9 ; [+20]
       68 GETTABLEKS                       R9 R2 K10 ["RootPart"]
       70 GETIMPORT                        R10 K16 [CFrame.new]
       72 GETTABLEKS                       R11 R2 K10 ["RootPart"]
       74 GETTABLEKS                       R11 R11 K14 ["CFrame"]
       76 GETTABLEKS                       R11 R11 K17 ["Position"]
       78 GETTABLEKS                       R13 R2 K10 ["RootPart"]
       80 GETTABLEKS                       R13 R13 K14 ["CFrame"]
       82 GETTABLEKS                       R13 R13 K17 ["Position"]
       84 ADD                              R12 R13 R8
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K14 ["CFrame"]
       88 ORK                              R9 R6 K18 [False]
       89 SETTABLEKS                       R9 R2 K6 ["Jump"]
       91 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 LOADK                            R3 K5 ["CommonUtils"]
       10 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETTABLEKS                       R1 R0 K7 ["get"]
       16 LOADK                            R2 K8 ["FlagUtil"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K9 ["getUserFlag"]
       20 LOADK                            R3 K10 ["UserPlayerScriptsFireThroughScriptableBindings"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R1 K9 ["getUserFlag"]
       24 LOADK                            R4 K11 ["UserPlayerScriptsUseReplicatedCameraAPI"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K9 ["getUserFlag"]
       28 LOADK                            R5 K12 ["UserPlayerScriptsStopFireCameraAction"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R1 K9 ["getUserFlag"]
       32 LOADK                            R6 K13 ["UserPlayerScriptsSAuthDirectAPIs2"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K9 ["getUserFlag"]
       36 LOADK                            R7 K14 ["UserPlayerScriptsCCLIntegrationD"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K16 [game]
       40 LOADK                            R9 K17 ["StarterPlayer"]
       41 NAMECALL                         R7 R7 K18 ["GetService"]
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K20 [UserSettings]
       46 CALL                             R8 0 1
       47 LOADK                            R10 K21 ["UserGameSettings"]
       48 NAMECALL                         R8 R8 K18 ["GetService"]
       50 CALL                             R8 2 1
       51 GETIMPORT                        R9 K16 [game]
       53 LOADK                            R11 K22 ["Workspace"]
       54 NAMECALL                         R9 R9 K18 ["GetService"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K1 [require]
       59 GETIMPORT                        R11 K3 [script]
       61 GETTABLEKS                       R11 R11 K4 ["Parent"]
       63 LOADK                            R13 K23 ["AvatarAbilitiesInterface"]
       64 NAMECALL                         R11 R11 K6 ["WaitForChild"]
       66 CALL                             R11 2 -1
       67 CALL                             R10 -1 1
       68 GETTABLEKS                       R11 R1 K9 ["getUserFlag"]
       70 LOADK                            R12 K24 ["UserAbilitiesUserInterfaceB"]
       71 CALL                             R11 1 1
       72 JUMPIFNOT                        R11 ; [+2]
       73 LOADK                            R12 K25 ["ControlState"]
       74 JUMP                             ; [+1]
       75 LOADK                            R12 K26 ["PlayerControlState"]
       76 NEWTABLE                         R13 16 0
       78 SETTABLEKS                       R13 R13 K27 ["__index"]
       80 DUPCLOSURE                       R14 K28 [PROTO_3]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R14 R13 K29 ["_calculatePlayerInputValues"]
       85 DUPCLOSURE                       R14 K30 [PROTO_4]
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R14 R13 K31 ["CloneInputsIfAbsent"]
       89 DUPCLOSURE                       R14 K32 [PROTO_8]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R14 R13 K33 ["FireCustomInputs"]
       97 DUPCLOSURE                       R14 K34 [PROTO_9]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R13
      100 SETTABLEKS                       R14 R13 K35 ["SendInputToCCLCharacter"]
      102 DUPCLOSURE                       R14 K36 [PROTO_10]
      103 CAPTURE                          VAL R13
      104 SETTABLEKS                       R14 R13 K37 ["SendInputToHumanoidForServerAuth"]
      106 DUPCLOSURE                       R14 K38 [PROTO_11]
      107 SETTABLEKS                       R14 R13 K39 ["setupPlayerControlState"]
      109 DUPCLOSURE                       R14 K40 [PROTO_14]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 SETTABLEKS                       R14 R13 K41 ["watchForPlayerControlState"]
      114 DUPCLOSURE                       R14 K42 [PROTO_16]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R13
      118 SETTABLEKS                       R14 R13 K43 ["createPlayerControlState"]
      120 DUPCLOSURE                       R14 K44 [PROTO_17]
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R10
      127 SETTABLEKS                       R14 R13 K45 ["writeInputToPCS"]
      129 DUPCLOSURE                       R14 K46 [PROTO_18]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R14 R13 K47 ["processPCSInputs"]
      134 RETURN                           R13 1
