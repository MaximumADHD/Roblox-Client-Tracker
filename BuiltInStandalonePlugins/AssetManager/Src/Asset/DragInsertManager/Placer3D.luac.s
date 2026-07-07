PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_plugin"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["_active"]
       13 SETTABLEKS                       R1 R2 K4 ["_raycastParams"]
       15 GETIMPORT                        R3 K7 [CFrame.new]
       17 CALL                             R3 0 1
       18 SETTABLEKS                       R3 R2 K8 ["_insertRotation"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K9 ["_indicatorHidden"]
       23 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_lastHitPosition"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_insertRotation"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_active"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["_lastHitPosition"]
       10 GETIMPORT                        R1 K4 [CFrame.new]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["_insertRotation"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K6 ["_indicatorHidden"]
       18 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_clearAdornment"]
        2 CALL                             R1 1 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["_indicatorHidden"]
        6 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_active"]
        7 NAMECALL                         R1 R0 K1 ["_clearAdornment"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K2 ["_lastHitPart"]
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_adornment"]
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K1 ["_lastHitPart"]
        6 JUMPIFEQ                         R2 R1 ; [+32]
        8 NAMECALL                         R2 R0 K2 ["_clearAdornment"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K5 [Instance.new]
       13 LOADK                            R3 K6 ["BoxHandleAdornment"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R1 R2 K7 ["Adornee"]
       17 GETIMPORT                        R3 K9 [Color3.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 LOADN                            R6 1
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K8 ["Color3"]
       25 LOADK                            R3 K10 [{4, 4, 4}]
       26 SETTABLEKS                       R3 R2 K11 ["Size"]
       28 LOADN                            R3 5
       29 SETTABLEKS                       R3 R2 K12 ["ZIndex"]
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R2 K13 ["AlwaysOnTop"]
       34 GETUPVAL                         R3 0
       35 SETTABLEKS                       R3 R2 K14 ["Parent"]
       37 SETTABLEKS                       R2 R0 K0 ["_adornment"]
       39 GETTABLEKS                       R2 R1 K15 ["CFrame"]
       41 GETTABLEKS                       R4 R0 K16 ["_lastHitPosition"]
       43 JUMPIF                           R4 ; [+4]
       44 FASTCALL                         VECTOR ; [+2]
       45 GETIMPORT                        R4 K18 [Vector3.new]
       47 CALL                             R4 0 1
       48 NAMECALL                         R2 R2 K19 ["PointToObjectSpace"]
       50 CALL                             R2 2 1
       51 GETTABLEKS                       R3 R0 K0 ["_adornment"]
       53 GETIMPORT                        R4 K20 [CFrame.new]
       55 MOVE                             R5 R2
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K15 ["CFrame"]
       59 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["Instance"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETTABLEKS                       R2 R1 K0 ["Instance"]
        6 LOADK                            R4 K1 ["BasePart"]
        7 NAMECALL                         R2 R2 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+7]
       11 NAMECALL                         R2 R0 K3 ["_clearAdornment"]
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K4 ["_lastHitPart"]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K0 ["Instance"]
       20 GETTABLEKS                       R3 R1 K5 ["Position"]
       22 SETTABLEKS                       R3 R0 K6 ["_lastHitPosition"]
       24 GETTABLEKS                       R4 R0 K7 ["_indicatorHidden"]
       26 JUMPIF                           R4 ; [+4]
       27 MOVE                             R6 R2
       28 NAMECALL                         R4 R0 K8 ["_updateIndicator"]
       30 CALL                             R4 2 0
       31 SETTABLEKS                       R2 R0 K4 ["_lastHitPart"]
       33 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_adornment"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R6 K6 [os.clock]
        6 CALL                             R6 0 1
        7 MULK                             R5 R6 K3 [6.28318530717959]
        8 FASTCALL1                        MATH_SIN R5 ; [+2]
        9 GETIMPORT                        R4 K9 [math.sin]
       11 CALL                             R4 1 1
       12 MULK                             R3 R4 K2 [0.2]
       13 ADDK                             R2 R3 K1 [0.5]
       14 SETTABLEKS                       R2 R1 K10 ["Transparency"]
       16 RETURN                           R0 0

PROTO_10:
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
        7 NEWTABLE                         R1 16 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["getLastHitPosition"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 SETTABLEKS                       R2 R1 K10 ["getInsertRotation"]
       21 DUPCLOSURE                       R2 K11 [PROTO_3]
       22 SETTABLEKS                       R2 R1 K12 ["start"]
       24 DUPCLOSURE                       R2 K13 [PROTO_4]
       25 SETTABLEKS                       R2 R1 K14 ["hideIndicator"]
       27 DUPCLOSURE                       R2 K15 [PROTO_5]
       28 SETTABLEKS                       R2 R1 K16 ["tick"]
       30 DUPCLOSURE                       R2 K17 [PROTO_6]
       31 SETTABLEKS                       R2 R1 K18 ["stop"]
       33 DUPCLOSURE                       R2 K19 [PROTO_7]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R1 K20 ["_updateIndicator"]
       37 DUPCLOSURE                       R2 K21 [PROTO_8]
       38 SETTABLEKS                       R2 R1 K22 ["_updatePosition"]
       40 DUPCLOSURE                       R2 K23 [PROTO_9]
       41 SETTABLEKS                       R2 R1 K24 ["_updatePulse"]
       43 DUPCLOSURE                       R2 K25 [PROTO_10]
       44 SETTABLEKS                       R2 R1 K26 ["_clearAdornment"]
       46 RETURN                           R1 1
