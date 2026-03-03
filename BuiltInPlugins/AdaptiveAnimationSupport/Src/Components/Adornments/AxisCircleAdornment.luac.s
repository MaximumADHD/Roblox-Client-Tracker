PROTO_0:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["getGlobalCoordinateFrame"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["jointInstance"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R1 K5 ["Position"]
       15 GETTABLEKS                       R4 R0 K6 ["CFrame"]
       17 GETTABLEKS                       R3 R4 K5 ["Position"]
       19 GETIMPORT                        R4 K8 [CFrame.lookAt]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R3
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R7 R8 K6 ["CFrame"]
       28 NAMECALL                         R7 R7 K9 ["Inverse"]
       30 CALL                             R7 1 1
       31 MUL                              R6 R7 R4
       32 SETTABLEKS                       R6 R5 K6 ["CFrame"]
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["Clear"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Clear"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["adorneePart"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 NAMECALL                         R2 R0 K2 ["Clear"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+29]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R3 R4 K3 ["CIRCLE_SEGMENTS"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K4 ["radius"]
       23 LOADK                            R5 K5 ["z"]
       24 CALL                             R2 3 1
       25 MOVE                             R5 R2
       26 LOADB                            R6 1
       27 NAMECALL                         R3 R0 K6 ["AddPath"]
       29 CALL                             R3 3 0
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R3 R4 K7 ["Heartbeat"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 NAMECALL                         R3 R3 K8 ["Connect"]
       40 CALL                             R3 2 1
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 RETURN                           R4 1
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R2 R3 K9 ["DEPRECATED_circlePoints"]
       48 JUMPIFNOT                        R2 ; [+18]
       49 GETTABLEKS                       R5 R2 K10 ["x"]
       51 LOADB                            R6 1
       52 NAMECALL                         R3 R0 K6 ["AddPath"]
       54 CALL                             R3 3 0
       55 GETTABLEKS                       R5 R2 K11 ["y"]
       57 LOADB                            R6 1
       58 NAMECALL                         R3 R0 K6 ["AddPath"]
       60 CALL                             R3 3 0
       61 GETTABLEKS                       R5 R2 K5 ["z"]
       63 LOADB                            R6 1
       64 NAMECALL                         R3 R0 K6 ["AddPath"]
       66 CALL                             R3 3 0
       67 NEWCLOSURE                       R3 P2
       68 CAPTURE                          VAL R0
       69 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 NEWTABLE                         R4 0 4
       18 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       20 GETTABLEKS                       R6 R0 K3 ["jointInstance"]
       22 GETTABLEKS                       R7 R0 K4 ["radius"]
       24 GETTABLEKS                       R8 R0 K5 ["DEPRECATED_circlePoints"]
       26 SETLIST                          R4 R5 4 [1]
       28 CALL                             R2 2 0
       29 LOADNIL                          R2
       30 GETUPVAL                         R3 1
       31 CALL                             R3 0 1
       32 JUMPIF                           R3 ; [+2]
       33 GETTABLEKS                       R2 R0 K6 ["DEPRECATED_sphereCf"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K7 ["createElement"]
       38 LOADK                            R4 K8 ["WireframeHandleAdornment"]
       39 DUPTABLE                         R5 K16 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
       40 GETTABLEKS                       R6 R0 K2 ["adorneePart"]
       42 SETTABLEKS                       R6 R5 K9 ["Adornee"]
       44 GETUPVAL                         R7 1
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+4]
       47 GETTABLEKS                       R7 R0 K18 ["alwaysOnTop"]
       49 ORK                              R6 R7 K17 [False]
       50 JUMP                             ; [+1]
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R5 K10 ["AlwaysOnTop"]
       54 GETUPVAL                         R7 1
       55 CALL                             R7 0 1
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADK                            R6 K19 [0.2]
       58 JUMP                             ; [+1]
       59 LOADN                            R6 0
       60 SETTABLEKS                       R6 R5 K11 ["Transparency"]
       62 LOADN                            R6 0
       63 SETTABLEKS                       R6 R5 K12 ["ZIndex"]
       65 GETTABLEKS                       R6 R0 K20 ["color"]
       67 SETTABLEKS                       R6 R5 K13 ["Color3"]
       69 GETUPVAL                         R7 1
       70 CALL                             R7 0 1
       71 JUMPIF                           R7 ; [+2]
       72 MOVE                             R6 R2
       73 JUMP                             ; [+1]
       74 LOADNIL                          R6
       75 SETTABLEKS                       R6 R5 K14 ["CFrame"]
       77 SETTABLEKS                       R1 R5 K15 ["ref"]
       79 CALL                             R3 2 -1
       80 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["Adornments"]
       29 GETTABLEKS                       R4 R5 K12 ["buildCircle"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Resources"]
       38 GETTABLEKS                       R5 R6 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Flags"]
       47 GETTABLEKS                       R6 R7 K16 ["getFFlagAdaptiveAnimationQoL"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K18 [game]
       52 LOADK                            R8 K19 ["RunService"]
       53 NAMECALL                         R6 R6 K20 ["GetService"]
       55 CALL                             R6 2 1
       56 DUPCLOSURE                       R7 K21 [PROTO_4]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 RETURN                           R7 1
