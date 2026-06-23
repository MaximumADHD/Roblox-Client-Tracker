PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["getGlobalCoordinateFrame"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["jointInstance"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R1 K5 ["Position"]
       15 GETTABLEKS                       R3 R0 K6 ["CFrame"]
       17 GETTABLEKS                       R3 R3 K5 ["Position"]
       19 GETIMPORT                        R4 K8 [CFrame.lookAt]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R3
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K6 ["CFrame"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["adorneePart"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 NAMECALL                         R2 R0 K2 ["Clear"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+29]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["CIRCLE_SEGMENTS"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K4 ["radius"]
       23 LOADK                            R5 K5 ["z"]
       24 CALL                             R2 3 1
       25 MOVE                             R5 R2
       26 LOADB                            R6 1
       27 NAMECALL                         R3 R0 K6 ["AddPath"]
       29 CALL                             R3 3 0
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K7 ["Heartbeat"]
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
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K9 ["DEPRECATED_circlePoints"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 GETUPVAL                         R5 6
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+15]
       19 NEWTABLE                         R4 0 5
       21 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       23 GETTABLEKS                       R6 R0 K3 ["jointInstance"]
       25 GETTABLEKS                       R7 R0 K4 ["radius"]
       27 GETTABLEKS                       R8 R0 K5 ["color"]
       29 GETTABLEKS                       R9 R0 K6 ["DEPRECATED_circlePoints"]
       31 SETLIST                          R4 R5 5 [1]
       33 JUMP                             ; [+12]
       34 NEWTABLE                         R4 0 4
       36 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       38 GETTABLEKS                       R6 R0 K3 ["jointInstance"]
       40 GETTABLEKS                       R7 R0 K4 ["radius"]
       42 GETTABLEKS                       R8 R0 K6 ["DEPRECATED_circlePoints"]
       44 SETLIST                          R4 R5 4 [1]
       46 CALL                             R2 2 0
       47 LOADNIL                          R2
       48 GETUPVAL                         R3 1
       49 CALL                             R3 0 1
       50 JUMPIF                           R3 ; [+2]
       51 GETTABLEKS                       R2 R0 K7 ["DEPRECATED_sphereCf"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K8 ["createElement"]
       56 LOADK                            R4 K9 ["WireframeHandleAdornment"]
       57 DUPTABLE                         R5 K17 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
       58 GETTABLEKS                       R6 R0 K2 ["adorneePart"]
       60 SETTABLEKS                       R6 R5 K10 ["Adornee"]
       62 GETUPVAL                         R7 6
       63 CALL                             R7 0 1
       64 JUMPIFNOT                        R7 ; [+2]
       65 LOADB                            R6 1
       66 JUMP                             ; [+8]
       67 GETUPVAL                         R7 1
       68 CALL                             R7 0 1
       69 JUMPIFNOT                        R7 ; [+4]
       70 GETTABLEKS                       R7 R0 K19 ["alwaysOnTop"]
       72 ORK                              R6 R7 K18 [False]
       73 JUMP                             ; [+1]
       74 LOADB                            R6 1
       75 SETTABLEKS                       R6 R5 K11 ["AlwaysOnTop"]
       77 GETUPVAL                         R7 1
       78 CALL                             R7 0 1
       79 JUMPIFNOT                        R7 ; [+4]
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K20 ["WIRE_TRANSPARENCY"]
       83 JUMP                             ; [+1]
       84 LOADN                            R6 0
       85 SETTABLEKS                       R6 R5 K12 ["Transparency"]
       87 LOADN                            R6 0
       88 SETTABLEKS                       R6 R5 K13 ["ZIndex"]
       90 GETTABLEKS                       R6 R0 K5 ["color"]
       92 SETTABLEKS                       R6 R5 K14 ["Color3"]
       94 GETUPVAL                         R7 1
       95 CALL                             R7 0 1
       96 JUMPIF                           R7 ; [+2]
       97 MOVE                             R6 R2
       98 JUMP                             ; [+1]
       99 LOADNIL                          R6
      100 SETTABLEKS                       R6 R5 K15 ["CFrame"]
      102 SETTABLEKS                       R1 R5 K16 ["ref"]
      104 CALL                             R3 2 -1
      105 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Adornments"]
       29 GETTABLEKS                       R4 R4 K12 ["buildCircle"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Resources"]
       38 GETTABLEKS                       R5 R5 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAdaptiveAnimationQoL"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K17 ["getFFlagAdaptiveAnimationHandRigQoL"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K19 [game]
       61 LOADK                            R9 K20 ["RunService"]
       62 NAMECALL                         R7 R7 K21 ["GetService"]
       64 CALL                             R7 2 1
       65 DUPCLOSURE                       R8 K22 [PROTO_4]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 RETURN                           R8 1
