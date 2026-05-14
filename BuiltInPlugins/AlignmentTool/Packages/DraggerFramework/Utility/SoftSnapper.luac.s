PROTO_0:
        0 DUPTABLE                         R2 K3 [{"_draggerContext", "_availableSoftSnaps", "_currentSoftSnap"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K1 ["_availableSoftSnaps"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["_currentSoftSnap"]
       10 GETUPVAL                         R3 0
       11 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       13 GETIMPORT                        R1 K5 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

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
       27 LOADNIL                          R5
       28 GETTABLEKS                       R6 R0 K7 ["_draggerContext"]
       30 NAMECALL                         R6 R6 K8 ["shouldGridSnap"]
       32 CALL                             R6 1 1
       33 JUMPIFNOT                        R6 ; [+8]
       34 LOADK                            R6 K9 [0.5]
       35 GETTABLEKS                       R7 R0 K7 ["_draggerContext"]
       37 NAMECALL                         R7 R7 K10 ["getGridSize"]
       39 CALL                             R7 1 1
       40 MUL                              R5 R6 R7
       41 JUMP                             ; [+9]
       42 LOADK                            R6 K11 [0.4]
       43 GETTABLEKS                       R7 R0 K7 ["_draggerContext"]
       45 GETTABLEKS                       R9 R3 K12 ["Point"]
       47 NAMECALL                         R7 R7 K13 ["getHandleScale"]
       49 CALL                             R7 2 1
       50 MUL                              R5 R6 R7
       51 GETTABLEKS                       R6 R0 K7 ["_draggerContext"]
       53 NAMECALL                         R6 R6 K14 ["getSoftSnapMarginFactor"]
       55 CALL                             R6 1 1
       56 MUL                              R5 R5 R6
       57 JUMPIFNOTLT                      R5 R4 ; [+6]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R0 K15 ["_currentSoftSnap"]
       62 LOADNIL                          R6
       63 RETURN                           R6 1
       64 GETTABLEKS                       R8 R3 K3 ["Distance"]
       66 SUB                              R7 R8 R1
       67 FASTCALL1                        MATH_ABS R7 ; [+2]
       68 GETIMPORT                        R6 K6 [math.abs]
       70 CALL                             R6 1 1
       71 JUMPIFNOT                        R2 ; [+3]
       72 ADDK                             R7 R2 K16 [0.01]
       73 JUMPIFNOTLT                      R6 R7 ; [+6]
       75 SETTABLEKS                       R3 R0 K15 ["_currentSoftSnap"]
       77 GETTABLEKS                       R7 R3 K3 ["Distance"]
       79 RETURN                           R7 1
       80 LOADNIL                          R7
       81 SETTABLEKS                       R7 R0 K15 ["_currentSoftSnap"]
       83 LOADNIL                          R7
       84 RETURN                           R7 1

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
       39 DUPTABLE                         R15 K16 [{"AlwaysOnTop", "Color3", "Radius", "CFrame", "Adornee", "ZIndex"}]
       40 LOADB                            R16 1
       41 SETTABLEKS                       R16 R15 K10 ["AlwaysOnTop"]
       43 JUMPIFNOT                        R10 ; [+2]
       44 MOVE                             R16 R9
       45 JUMP                             ; [+1]
       46 MOVE                             R16 R8
       47 SETTABLEKS                       R16 R15 K11 ["Color3"]
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADK                            R17 K17 [0.2]
       51 JUMP                             ; [+1]
       52 LOADK                            R17 K18 [0.15]
       53 MUL                              R16 R11 R17
       54 SETTABLEKS                       R16 R15 K12 ["Radius"]
       56 GETIMPORT                        R16 K20 [CFrame.new]
       58 GETTABLEKS                       R17 R7 K5 ["Point"]
       60 CALL                             R16 1 1
       61 SETTABLEKS                       R16 R15 K13 ["CFrame"]
       63 GETIMPORT                        R16 K22 [workspace]
       65 GETTABLEKS                       R16 R16 K23 ["Terrain"]
       67 SETTABLEKS                       R16 R15 K14 ["Adornee"]
       69 LOADN                            R16 1
       70 SETTABLEKS                       R16 R15 K15 ["ZIndex"]
       72 CALL                             R13 2 1
       73 SETTABLE                         R13 R2 R12
       74 FORGLOOP                         R3 2 ; [-68]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K24 ["createFragment"]
       79 MOVE                             R4 R2
       80 CALL                             R3 1 -1
       81 RETURN                           R3 -1

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
