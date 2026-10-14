PROTO_0:
        0 DUPTABLE                         R2 K4 [{[1], ["_availableSoftSnaps"], ["_currentSoftSnap"] = }]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K1 ["_availableSoftSnaps"]
        7 GETUPVAL                         R3 0
        8 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       10 GETIMPORT                        R1 K6 [setmetatable]
       12 CALL                             R1 2 1
       13 RETURN                           R1 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_availableSoftSnaps"]
        2 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_availableSoftSnaps"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["_currentSoftSnap"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_availableSoftSnaps"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 LOADNIL                          R3
        8 LOADK                            R4 K2 [∞]
        9 GETTABLEKS                       R5 R0 K0 ["_availableSoftSnaps"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R12 R9 K3 ["Distance"]
       16 SUB                              R11 R12 R1
       17 FASTCALL1                        MATH_ABS R11 ; [+2]
       18 GETIMPORT                        R10 K6 [math.abs]
       20 CALL                             R10 1 1
       21 JUMPIFNOTLT                      R10 R4 ; [+3]
       23 MOVE                             R3 R9
       24 MOVE                             R4 R10
       25 FORGLOOP                         R5 2 ; [-12]
       27 MOVE                             R5 R3
       28 LOADNIL                          R6
       29 GETTABLEKS                       R7 R0 K7 ["_draggerContext"]
       31 NAMECALL                         R7 R7 K8 ["shouldGridSnap"]
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 LOADK                            R7 K9 [0.5]
       36 GETTABLEKS                       R8 R0 K7 ["_draggerContext"]
       38 NAMECALL                         R8 R8 K10 ["getGridSize"]
       40 CALL                             R8 1 1
       41 MUL                              R6 R7 R8
       42 JUMP                             ; [+9]
       43 LOADK                            R7 K11 [0.4]
       44 GETTABLEKS                       R8 R0 K7 ["_draggerContext"]
       46 GETTABLEKS                       R10 R5 K12 ["Point"]
       48 NAMECALL                         R8 R8 K13 ["getHandleScale"]
       50 CALL                             R8 2 1
       51 MUL                              R6 R7 R8
       52 GETTABLEKS                       R7 R0 K7 ["_draggerContext"]
       54 NAMECALL                         R7 R7 K14 ["getSoftSnapMarginFactor"]
       56 CALL                             R7 1 1
       57 MUL                              R6 R6 R7
       58 JUMPIFNOTLT                      R6 R4 ; [+6]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R0 K15 ["_currentSoftSnap"]
       63 LOADNIL                          R7
       64 RETURN                           R7 1
       65 GETTABLEKS                       R9 R5 K3 ["Distance"]
       67 SUB                              R8 R9 R1
       68 FASTCALL1                        MATH_ABS R8 ; [+2]
       69 GETIMPORT                        R7 K6 [math.abs]
       71 CALL                             R7 1 1
       72 JUMPIFNOT                        R2 ; [+3]
       73 ADDK                             R8 R2 K16 [0.01]
       74 JUMPIFNOTLT                      R7 R8 ; [+6]
       76 SETTABLEKS                       R5 R0 K15 ["_currentSoftSnap"]
       78 GETTABLEKS                       R8 R5 K3 ["Distance"]
       80 RETURN                           R8 1
       81 LOADNIL                          R8
       82 SETTABLEKS                       R8 R0 K15 ["_currentSoftSnap"]
       84 LOADNIL                          R8
       85 RETURN                           R8 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_availableSoftSnaps"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
        9 NAMECALL                         R8 R8 K2 ["getGridColor"]
       11 CALL                             R8 1 1
       12 GETTABLEKS                       R9 R0 K1 ["_draggerContext"]
       14 NAMECALL                         R9 R9 K3 ["getChosenColor"]
       16 CALL                             R9 1 1
       17 MOVE                             R10 R1
       18 JUMPIFNOT                        R10 ; [+6]
       19 GETTABLEKS                       R11 R0 K4 ["_currentSoftSnap"]
       21 JUMPIFEQ                         R7 R11 ; [+2]
       23 LOADB                            R10 0 +1
       24 LOADB                            R10 1
       25 GETTABLEKS                       R11 R0 K1 ["_draggerContext"]
       27 GETTABLEKS                       R13 R7 K5 ["Point"]
       29 NAMECALL                         R11 R11 K6 ["getHandleScale"]
       31 CALL                             R11 2 1
       32 LOADK                            R13 K7 ["SnapPoint"]
       33 MOVE                             R14 R6
       34 CONCAT                           R12 R13 R14
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K8 ["createElement"]
       38 LOADK                            R14 K9 ["SphereHandleAdornment"]
       39 DUPTABLE                         R15 K18 [{["AlwaysOnTop"] = True, ["Color3"], ["Radius"], ["CFrame"], ["Adornee"], ["ZIndex"] = 1}]
       40 JUMPIFNOT                        R10 ; [+2]
       41 MOVE                             R16 R9
       42 JUMP                             ; [+1]
       43 MOVE                             R16 R8
       44 SETTABLEKS                       R16 R15 K12 ["Color3"]
       46 JUMPIFNOT                        R10 ; [+2]
       47 LOADK                            R17 K19 [0.2]
       48 JUMP                             ; [+1]
       49 LOADK                            R17 K20 [0.15]
       50 MUL                              R16 R11 R17
       51 SETTABLEKS                       R16 R15 K13 ["Radius"]
       53 GETIMPORT                        R16 K22 [CFrame.new]
       55 GETTABLEKS                       R17 R7 K5 ["Point"]
       57 CALL                             R16 1 1
       58 SETTABLEKS                       R16 R15 K14 ["CFrame"]
       60 GETIMPORT                        R16 K24 [workspace]
       62 GETTABLEKS                       R16 R16 K25 ["Terrain"]
       64 SETTABLEKS                       R16 R15 K15 ["Adornee"]
       66 CALL                             R13 2 1
       67 SETTABLE                         R13 R2 R12
       68 FORGLOOP                         R3 2 ; [-62]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K26 ["createFragment"]
       73 MOVE                             R4 R2
       74 CALL                             R3 1 -1
       75 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 SETTABLEKS                       R3 R3 K6 ["__index"]
       18 DUPCLOSURE                       R4 K7 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R4 R3 K8 ["new"]
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 SETTABLEKS                       R4 R3 K10 ["setSnaps"]
       25 DUPCLOSURE                       R4 K11 [PROTO_2]
       26 SETTABLEKS                       R4 R3 K12 ["clearSnaps"]
       28 DUPCLOSURE                       R4 K13 [PROTO_3]
       29 SETTABLEKS                       R4 R3 K14 ["updateCurrentSnap"]
       31 DUPCLOSURE                       R4 K15 [PROTO_4]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K16 ["render"]
       35 RETURN                           R3 1
