PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 MOVE                             R1 R4
        7 GETTABLEKS                       R5 R0 K4 ["Y"]
        9 FASTCALL1                        MATH_ABS R5 ; [+2]
       10 GETIMPORT                        R4 K3 [math.abs]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 GETTABLEKS                       R4 R0 K5 ["Z"]
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K3 [math.abs]
       19 CALL                             R3 1 1
       20 JUMPIFNOTLE                      R2 R1 ; [+14]
       22 JUMPIFNOTLE                      R3 R1 ; [+12]
       24 GETTABLEKS                       R5 R0 K0 ["X"]
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+4]
       29 GETIMPORT                        R4 K9 [Enum.NormalId.Right]
       31 RETURN                           R4 1
       32 GETIMPORT                        R4 K11 [Enum.NormalId.Left]
       34 RETURN                           R4 1
       35 JUMPIFNOTLE                      R1 R2 ; [+14]
       37 JUMPIFNOTLE                      R3 R2 ; [+12]
       39 GETTABLEKS                       R5 R0 K4 ["Y"]
       41 LOADN                            R6 0
       42 JUMPIFNOTLT                      R6 R5 ; [+4]
       44 GETIMPORT                        R4 K13 [Enum.NormalId.Top]
       46 RETURN                           R4 1
       47 GETIMPORT                        R4 K15 [Enum.NormalId.Bottom]
       49 RETURN                           R4 1
       50 GETTABLEKS                       R5 R0 K5 ["Z"]
       52 LOADN                            R6 0
       53 JUMPIFNOTLT                      R6 R5 ; [+4]
       55 GETIMPORT                        R4 K17 [Enum.NormalId.Back]
       57 RETURN                           R4 1
       58 GETIMPORT                        R4 K19 [Enum.NormalId.Front]
       60 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 GETIMPORT                        R5 K6 [Enum.NormalId.Top]
        8 JUMPIFNOTEQ                      R1 R5 ; [+16]
       10 GETIMPORT                        R5 K9 [CFrame.new]
       12 LOADN                            R6 0
       13 DIVK                             R7 R3 K10 [2]
       14 LOADN                            R8 0
       15 CALL                             R5 3 1
       16 LOADK                            R8 K11 [0.04]
       17 FASTCALL3                        VECTOR R2 R8 R4
       19 MOVE                             R7 R2
       20 MOVE                             R9 R4
       21 GETIMPORT                        R6 K13 [Vector3.new]
       23 CALL                             R6 3 1
       24 RETURN                           R5 2
       25 GETIMPORT                        R5 K15 [Enum.NormalId.Bottom]
       27 JUMPIFNOTEQ                      R1 R5 ; [+17]
       29 GETIMPORT                        R5 K9 [CFrame.new]
       31 LOADN                            R6 0
       32 MINUS                            R8 R3
       33 DIVK                             R7 R8 K10 [2]
       34 LOADN                            R8 0
       35 CALL                             R5 3 1
       36 LOADK                            R8 K11 [0.04]
       37 FASTCALL3                        VECTOR R2 R8 R4
       39 MOVE                             R7 R2
       40 MOVE                             R9 R4
       41 GETIMPORT                        R6 K13 [Vector3.new]
       43 CALL                             R6 3 1
       44 RETURN                           R5 2
       45 GETIMPORT                        R5 K17 [Enum.NormalId.Front]
       47 JUMPIFNOTEQ                      R1 R5 ; [+17]
       49 GETIMPORT                        R5 K9 [CFrame.new]
       51 LOADN                            R6 0
       52 LOADN                            R7 0
       53 MINUS                            R9 R4
       54 DIVK                             R8 R9 K10 [2]
       55 CALL                             R5 3 1
       56 LOADK                            R9 K11 [0.04]
       57 FASTCALL3                        VECTOR R2 R3 R9
       59 MOVE                             R7 R2
       60 MOVE                             R8 R3
       61 GETIMPORT                        R6 K13 [Vector3.new]
       63 CALL                             R6 3 1
       64 RETURN                           R5 2
       65 GETIMPORT                        R5 K19 [Enum.NormalId.Back]
       67 JUMPIFNOTEQ                      R1 R5 ; [+16]
       69 GETIMPORT                        R5 K9 [CFrame.new]
       71 LOADN                            R6 0
       72 LOADN                            R7 0
       73 DIVK                             R8 R4 K10 [2]
       74 CALL                             R5 3 1
       75 LOADK                            R9 K11 [0.04]
       76 FASTCALL3                        VECTOR R2 R3 R9
       78 MOVE                             R7 R2
       79 MOVE                             R8 R3
       80 GETIMPORT                        R6 K13 [Vector3.new]
       82 CALL                             R6 3 1
       83 RETURN                           R5 2
       84 GETIMPORT                        R5 K21 [Enum.NormalId.Left]
       86 JUMPIFNOTEQ                      R1 R5 ; [+17]
       88 GETIMPORT                        R5 K9 [CFrame.new]
       90 MINUS                            R7 R2
       91 DIVK                             R6 R7 K10 [2]
       92 LOADN                            R7 0
       93 LOADN                            R8 0
       94 CALL                             R5 3 1
       95 LOADK                            R7 K11 [0.04]
       96 FASTCALL3                        VECTOR R7 R3 R4
       98 MOVE                             R8 R3
       99 MOVE                             R9 R4
      100 GETIMPORT                        R6 K13 [Vector3.new]
      102 CALL                             R6 3 1
      103 RETURN                           R5 2
      104 GETIMPORT                        R5 K9 [CFrame.new]
      106 DIVK                             R6 R2 K10 [2]
      107 LOADN                            R7 0
      108 LOADN                            R8 0
      109 CALL                             R5 3 1
      110 LOADK                            R7 K11 [0.04]
      111 FASTCALL3                        VECTOR R7 R3 R4
      113 MOVE                             R8 R3
      114 MOVE                             R9 R4
      115 GETIMPORT                        R6 K13 [Vector3.new]
      117 CALL                             R6 3 1
      118 RETURN                           R5 2

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_plugin"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["_active"]
       13 SETTABLEKS                       R1 R2 K4 ["_raycastParams"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K5 ["_originalSelection"]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K6 ["_indicatorHidden"]
       22 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_lastHitPart"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_lastHitFace"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_active"]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K1 ["Get"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K2 ["_originalSelection"]
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K3 ["_indicatorHidden"]
       16 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["_clearAdornment"]
        2 CALL                             R1 1 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["_indicatorHidden"]
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_active"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+4]
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R0 K1 ["_updatePosition"]
        8 CALL                             R3 2 0
        9 NAMECALL                         R3 R0 K2 ["_updatePulse"]
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_active"]
        7 NAMECALL                         R1 R0 K1 ["_clearAdornment"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R3 R0 K2 ["_originalSelection"]
       13 NAMECALL                         R1 R1 K3 ["Set"]
       15 CALL                             R1 2 0
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K2 ["_originalSelection"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K4 ["_lastHitPart"]
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K5 ["_lastHitFace"]
       26 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_lastHitPart"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K1 ["_lastHitFace"]
        5 GETTABLEKS                       R2 R0 K2 ["_indicatorHidden"]
        7 JUMPIF                           R2 ; [+35]
        8 NAMECALL                         R2 R0 K3 ["_clearAdornment"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K6 [Instance.new]
       13 LOADK                            R3 K7 ["BoxHandleAdornment"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R1 R2 K8 ["Adornee"]
       17 GETUPVAL                         R3 0
       18 SETTABLEKS                       R3 R2 K9 ["Color3"]
       20 LOADK                            R3 K10 [0.5]
       21 SETTABLEKS                       R3 R2 K11 ["Transparency"]
       23 LOADN                            R3 5
       24 SETTABLEKS                       R3 R2 K12 ["ZIndex"]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K13 ["AlwaysOnTop"]
       29 GETUPVAL                         R3 1
       30 SETTABLEKS                       R3 R2 K14 ["Parent"]
       32 SETTABLEKS                       R2 R0 K15 ["_adornment"]
       34 GETUPVAL                         R3 2
       35 NEWTABLE                         R5 0 1
       37 MOVE                             R6 R1
       38 SETLIST                          R5 R6 1 [1]
       40 NAMECALL                         R3 R3 K16 ["Set"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_lastHitFace"]
        2 GETTABLEKS                       R2 R0 K1 ["_indicatorHidden"]
        4 JUMPIF                           R2 ; [+23]
        5 GETTABLEKS                       R3 R0 K2 ["_lastHitPart"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R0 K2 ["_lastHitPart"]
       10 GETTABLEKS                       R2 R2 K3 ["Size"]
       12 JUMP                             ; [+4]
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R2 K6 [Vector3.new]
       16 CALL                             R2 0 1
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R2
       19 MOVE                             R5 R1
       20 CALL                             R3 2 2
       21 GETTABLEKS                       R5 R0 K7 ["_adornment"]
       23 JUMPIFNOT                        R5 ; [+4]
       24 SETTABLEKS                       R3 R5 K8 ["CFrame"]
       26 SETTABLEKS                       R4 R5 K3 ["Size"]
       28 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["Instance"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETTABLEKS                       R2 R1 K0 ["Instance"]
        6 LOADK                            R4 K1 ["BasePart"]
        7 NAMECALL                         R2 R2 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+19]
       11 NAMECALL                         R2 R0 K3 ["_clearAdornment"]
       13 CALL                             R2 1 0
       14 GETTABLEKS                       R2 R0 K4 ["_lastHitPart"]
       16 JUMPIFNOT                        R2 ; [+12]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R0 K4 ["_lastHitPart"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R0 K5 ["_lastHitFace"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R4 R0 K6 ["_originalSelection"]
       26 NAMECALL                         R2 R2 K7 ["Set"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R2 R1 K0 ["Instance"]
       32 GETTABLEKS                       R3 R2 K8 ["CFrame"]
       34 GETTABLEKS                       R5 R1 K9 ["Normal"]
       36 NAMECALL                         R3 R3 K10 ["VectorToObjectSpace"]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 1
       40 MOVE                             R5 R3
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R5 R0 K4 ["_lastHitPart"]
       44 JUMPIFEQ                         R5 R2 ; [+5]
       46 MOVE                             R7 R2
       47 NAMECALL                         R5 R0 K11 ["_updateHitPart"]
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R5 R0 K5 ["_lastHitFace"]
       52 JUMPIFEQ                         R5 R4 ; [+5]
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R0 K12 ["_updateHitFace"]
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_adornment"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETIMPORT                        R6 K6 [os.clock]
        5 CALL                             R6 0 1
        6 MULK                             R5 R6 K3 [6.28318530717959]
        7 FASTCALL1                        MATH_SIN R5 ; [+2]
        8 GETIMPORT                        R4 K9 [math.sin]
       10 CALL                             R4 1 1
       11 MULK                             R3 R4 K2 [0.2]
       12 ADDK                             R2 R3 K1 [0.5]
       13 SETTABLEKS                       R2 R1 K10 ["Transparency"]
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_adornment"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K1 ["Destroy"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K0 ["_adornment"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [Color3.fromRGB]
       15 LOADN                            R3 255
       16 LOADN                            R4 255
       17 LOADN                            R5 255
       18 CALL                             R2 3 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 DUPCLOSURE                       R4 K9 [PROTO_1]
       21 NEWTABLE                         R5 16 0
       23 SETTABLEKS                       R5 R5 K10 ["__index"]
       25 DUPCLOSURE                       R6 K11 [PROTO_2]
       26 CAPTURE                          VAL R5
       27 SETTABLEKS                       R6 R5 K12 ["new"]
       29 DUPCLOSURE                       R6 K13 [PROTO_3]
       30 SETTABLEKS                       R6 R5 K14 ["getLastHitPart"]
       32 DUPCLOSURE                       R6 K15 [PROTO_4]
       33 SETTABLEKS                       R6 R5 K16 ["getLastHitFace"]
       35 DUPCLOSURE                       R6 K17 [PROTO_5]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R6 R5 K18 ["start"]
       39 DUPCLOSURE                       R6 K19 [PROTO_6]
       40 SETTABLEKS                       R6 R5 K20 ["hideIndicator"]
       42 DUPCLOSURE                       R6 K21 [PROTO_7]
       43 SETTABLEKS                       R6 R5 K22 ["tick"]
       45 DUPCLOSURE                       R6 K23 [PROTO_8]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K24 ["stop"]
       49 DUPCLOSURE                       R6 K25 [PROTO_9]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R6 R5 K26 ["_updateHitPart"]
       55 DUPCLOSURE                       R6 K27 [PROTO_10]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R6 R5 K28 ["_updateHitFace"]
       59 DUPCLOSURE                       R6 K29 [PROTO_11]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R6 R5 K30 ["_updatePosition"]
       64 DUPCLOSURE                       R6 K31 [PROTO_12]
       65 SETTABLEKS                       R6 R5 K32 ["_updatePulse"]
       67 DUPCLOSURE                       R6 K33 [PROTO_13]
       68 SETTABLEKS                       R6 R5 K34 ["_clearAdornment"]
       70 RETURN                           R5 1
