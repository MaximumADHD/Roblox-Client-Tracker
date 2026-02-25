PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ControlPointsAdornmentsFolderName"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 JUMPIFNOT                        R1 ; [+60]
       12 NAMECALL                         R4 R1 K2 ["GetChildren"]
       14 CALL                             R4 1 3
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K3 ["Name"]
       18 NEWTABLE                         R10 0 0
       20 SETTABLE                         R10 R2 R9
       21 NAMECALL                         R9 R8 K2 ["GetChildren"]
       23 CALL                             R9 1 3
       24 FORGPREP                         R9
       25 GETTABLEKS                       R15 R8 K3 ["Name"]
       27 GETTABLE                         R14 R2 R15
       28 GETTABLEKS                       R16 R13 K3 ["Name"]
       30 FASTCALL1                        TONUMBER R16 ; [+2]
       31 GETIMPORT                        R15 K5 [tonumber]
       33 CALL                             R15 1 1
       34 GETTABLEKS                       R18 R13 K6 ["Adornee"]
       36 GETTABLEKS                       R17 R18 K7 ["CFrame"]
       38 GETTABLEKS                       R19 R13 K7 ["CFrame"]
       40 NAMECALL                         R17 R17 K8 ["ToWorldSpace"]
       42 CALL                             R17 2 1
       43 GETTABLEKS                       R16 R17 K9 ["p"]
       45 SETTABLE                         R16 R14 R15
       46 FORGLOOP                         R9 2 ; [-22]
       48 FORGLOOP                         R4 2 ; [-33]
       50 MOVE                             R4 R0
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 GETTABLEKS                       R10 R8 K10 ["MeshName"]
       56 GETTABLE                         R9 R2 R10
       57 JUMPIFNOT                        R9 ; [+12]
       58 GETTABLEKS                       R13 R8 K10 ["MeshName"]
       60 GETTABLE                         R12 R2 R13
       61 GETTABLEKS                       R13 R8 K11 ["Index"]
       63 GETTABLE                         R11 R12 R13
       64 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       66 MOVE                             R10 R3
       67 GETIMPORT                        R9 K14 [table.insert]
       69 CALL                             R9 2 0
       70 FORGLOOP                         R4 2 ; [-17]
       72 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["getWeightBalanceOrientedBoundingBox"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["getAxisAlignedBoundingBox"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["MeshName"]
        8 GETTABLE                         R7 R1 R8
        9 JUMPIF                           R7 ; [+5]
       10 GETTABLEKS                       R7 R6 K0 ["MeshName"]
       12 NEWTABLE                         R8 0 0
       14 SETTABLE                         R8 R1 R7
       15 GETTABLEKS                       R8 R6 K0 ["MeshName"]
       17 GETTABLE                         R7 R1 R8
       18 GETTABLEKS                       R8 R6 K1 ["Index"]
       20 LOADB                            R9 1
       21 SETTABLE                         R9 R7 R8
       22 FORGLOOP                         R2 2 ; [-17]
       24 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 NAMECALL                         R3 R0 K2 ["shouldUseLocalSpace"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R2 K3 ["_selectionTable"]
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R1
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K4 ["getWeightBalanceOrientedBoundingBox"]
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 MOVE                             R4 R6
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K5 ["getAxisAlignedBoundingBox"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 MOVE                             R4 R6
       33 JUMP                             ; [0]
       34 SETTABLEKS                       R4 R2 K6 ["_bounds"]
       36 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["_selectionTable"]
        3 JUMPIFEQKNIL                     R2 ; [+10]
        5 GETIMPORT                        R2 K2 [next]
        7 GETTABLEKS                       R3 R0 K0 ["_selectionTable"]
        9 CALL                             R2 1 1
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["_bounds"]
        2 GETTABLEKS                       R3 R4 K1 ["Width"]
        4 GETTABLEKS                       R5 R0 K0 ["_bounds"]
        6 GETTABLEKS                       R4 R5 K2 ["Height"]
        8 GETTABLEKS                       R6 R0 K0 ["_bounds"]
       10 GETTABLEKS                       R5 R6 K3 ["Depth"]
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R2 K6 [Vector3.new]
       15 CALL                             R2 3 1
       16 GETTABLEKS                       R4 R0 K0 ["_bounds"]
       18 GETTABLEKS                       R3 R4 K7 ["CFrame"]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R4 K6 [Vector3.new]
       23 CALL                             R4 0 1
       24 MOVE                             R5 R2
       25 RETURN                           R3 3

PROTO_6:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 GETTABLEKS                       R4 R0 K3 ["_selectionTable"]
       12 GETTABLEKS                       R5 R1 K4 ["MeshName"]
       14 GETTABLE                         R3 R4 R5
       15 JUMPIFEQKNIL                     R3 ; [+13]
       17 GETTABLEKS                       R5 R0 K3 ["_selectionTable"]
       19 GETTABLEKS                       R6 R1 K4 ["MeshName"]
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R5 R1 K5 ["Index"]
       24 GETTABLE                         R3 R4 R5
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_7:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K7 ["Util"]
       15 GETIMPORT                        R3 K9 [require]
       17 GETTABLEKS                       R4 R2 K10 ["BoundingBoxUtil"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K9 [require]
       22 GETTABLEKS                       R5 R2 K11 ["Constants"]
       24 CALL                             R4 1 1
       25 NEWTABLE                         R5 8 0
       27 SETTABLEKS                       R5 R5 K12 ["__index"]
       29 DUPCLOSURE                       R6 K13 [PROTO_0]
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R7 K14 [PROTO_1]
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R8 K15 [PROTO_2]
       36 DUPCLOSURE                       R9 K16 [PROTO_3]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R9 R5 K17 ["new"]
       43 DUPCLOSURE                       R9 K18 [PROTO_4]
       44 SETTABLEKS                       R9 R5 K19 ["isEmpty"]
       46 DUPCLOSURE                       R9 K20 [PROTO_5]
       47 SETTABLEKS                       R9 R5 K21 ["getBoundingBox"]
       49 DUPCLOSURE                       R9 K22 [PROTO_6]
       50 SETTABLEKS                       R9 R5 K23 ["doesContainItem"]
       52 DUPCLOSURE                       R9 K24 [PROTO_7]
       53 SETTABLEKS                       R9 R5 K25 ["isDynamic"]
       55 RETURN                           R5 1
