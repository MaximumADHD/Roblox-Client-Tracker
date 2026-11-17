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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["CIRCLE_SEGMENTS"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["radius"]
       20 LOADK                            R5 K5 ["z"]
       21 CALL                             R2 3 1
       22 MOVE                             R5 R2
       23 LOADB                            R6 1
       24 NAMECALL                         R3 R0 K6 ["AddPath"]
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K7 ["Heartbeat"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 NAMECALL                         R3 R3 K8 ["Connect"]
       37 CALL                             R3 2 1
       38 NEWCLOSURE                       R4 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 RETURN                           R4 1

PROTO_3:
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
       15 GETUPVAL                         R5 5
       16 CALL                             R5 0 1
       17 JUMPIFNOT                        R5 ; [+13]
       18 NEWTABLE                         R4 0 4
       20 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       22 GETTABLEKS                       R6 R0 K3 ["jointInstance"]
       24 GETTABLEKS                       R7 R0 K4 ["radius"]
       26 GETTABLEKS                       R8 R0 K5 ["color"]
       28 SETLIST                          R4 R5 4 [1]
       30 JUMP                             ; [+10]
       31 NEWTABLE                         R4 0 3
       33 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       35 GETTABLEKS                       R6 R0 K3 ["jointInstance"]
       37 GETTABLEKS                       R7 R0 K4 ["radius"]
       39 SETLIST                          R4 R5 3 [1]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K6 ["createElement"]
       45 LOADK                            R3 K7 ["WireframeHandleAdornment"]
       46 DUPTABLE                         R4 K17 [{["Adornee"], ["AlwaysOnTop"], ["Transparency"], ["ZIndex"] = 0, ["Color3"], ["CFrame"] = , ["ref"]}]
       47 GETTABLEKS                       R5 R0 K2 ["adorneePart"]
       49 SETTABLEKS                       R5 R4 K8 ["Adornee"]
       51 GETUPVAL                         R6 5
       52 CALL                             R6 0 1
       53 JUMPIFNOT                        R6 ; [+2]
       54 LOADB                            R5 1
       55 JUMP                             ; [+3]
       56 GETTABLEKS                       R6 R0 K19 ["alwaysOnTop"]
       58 ORK                              R5 R6 K18 [False]
       59 SETTABLEKS                       R5 R4 K9 ["AlwaysOnTop"]
       61 GETUPVAL                         R5 2
       62 GETTABLEKS                       R5 R5 K20 ["WIRE_TRANSPARENCY"]
       64 SETTABLEKS                       R5 R4 K10 ["Transparency"]
       66 GETTABLEKS                       R5 R0 K5 ["color"]
       68 SETTABLEKS                       R5 R4 K13 ["Color3"]
       70 SETTABLEKS                       R1 R4 K16 ["ref"]
       72 CALL                             R2 2 -1
       73 RETURN                           R2 -1

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
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAdaptiveAnimationHandRigQoL"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K18 [game]
       52 LOADK                            R8 K19 ["RunService"]
       53 NAMECALL                         R6 R6 K20 ["GetService"]
       55 CALL                             R6 2 1
       56 DUPCLOSURE                       R7 K21 [PROTO_3]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 RETURN                           R7 1
