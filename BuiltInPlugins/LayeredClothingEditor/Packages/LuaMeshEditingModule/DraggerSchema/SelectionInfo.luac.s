PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ControlPointsAdornmentsFolderName"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 JUMPIFNOT                        R1 ; [+63]
       12 GETIMPORT                        R4 K3 [ipairs]
       14 NAMECALL                         R5 R1 K4 ["GetChildren"]
       16 CALL                             R5 1 -1
       17 CALL                             R4 -1 3
       18 FORGPREP_INEXT                   R4
       19 GETTABLEKS                       R9 R8 K5 ["Name"]
       21 NEWTABLE                         R10 0 0
       23 SETTABLE                         R10 R2 R9
       24 GETIMPORT                        R9 K3 [ipairs]
       26 NAMECALL                         R10 R8 K4 ["GetChildren"]
       28 CALL                             R10 1 -1
       29 CALL                             R9 -1 3
       30 FORGPREP_INEXT                   R9
       31 GETTABLEKS                       R15 R8 K5 ["Name"]
       33 GETTABLE                         R14 R2 R15
       34 GETTABLEKS                       R16 R13 K5 ["Name"]
       36 FASTCALL1                        TONUMBER R16 ; [+2]
       37 GETIMPORT                        R15 K7 [tonumber]
       39 CALL                             R15 1 1
       40 GETTABLEKS                       R18 R13 K8 ["Adornee"]
       42 GETTABLEKS                       R17 R18 K9 ["CFrame"]
       44 GETTABLEKS                       R19 R13 K9 ["CFrame"]
       46 NAMECALL                         R17 R17 K10 ["ToWorldSpace"]
       48 CALL                             R17 2 1
       49 GETTABLEKS                       R16 R17 K11 ["p"]
       51 SETTABLE                         R16 R14 R15
       52 FORGLOOP                         R9 2 [inext] ; [-22]
       54 FORGLOOP                         R4 2 [inext] ; [-36]
       56 GETIMPORT                        R4 K13 [pairs]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 3
       60 FORGPREP_NEXT                    R4
       61 GETTABLEKS                       R13 R8 K14 ["MeshName"]
       63 GETTABLE                         R12 R2 R13
       64 GETTABLEKS                       R13 R8 K15 ["Index"]
       66 GETTABLE                         R11 R12 R13
       67 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       69 MOVE                             R10 R3
       70 GETIMPORT                        R9 K18 [table.insert]
       72 CALL                             R9 2 0
       73 FORGLOOP                         R4 2 ; [-13]
       75 RETURN                           R3 1

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
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R8 R6 K2 ["MeshName"]
        9 GETTABLE                         R7 R1 R8
       10 JUMPIF                           R7 ; [+5]
       11 GETTABLEKS                       R7 R6 K2 ["MeshName"]
       13 NEWTABLE                         R8 0 0
       15 SETTABLE                         R8 R1 R7
       16 GETTABLEKS                       R8 R6 K2 ["MeshName"]
       18 GETTABLE                         R7 R1 R8
       19 GETTABLEKS                       R8 R6 K3 ["Index"]
       21 LOADB                            R9 1
       22 SETTABLE                         R9 R7 R8
       23 FORGLOOP                         R2 2 [inext] ; [-17]
       25 RETURN                           R1 1

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
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K5 ["getAxisAlignedBoundingBox"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 MOVE                             R4 R6
       33 SETTABLEKS                       R4 R2 K6 ["_bounds"]
       35 RETURN                           R2 1

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
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETTABLEKS                       R3 R2 K8 ["Util"]
       21 GETIMPORT                        R4 K10 [require]
       23 GETTABLEKS                       R5 R3 K11 ["BoundingBoxUtil"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K10 [require]
       28 GETTABLEKS                       R6 R3 K12 ["Constants"]
       30 CALL                             R5 1 1
       31 NEWTABLE                         R6 8 0
       33 SETTABLEKS                       R6 R6 K13 ["__index"]
       35 DUPCLOSURE                       R7 K14 [PROTO_0]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R8 K15 [PROTO_1]
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R4
       41 DUPCLOSURE                       R9 K16 [PROTO_2]
       42 DUPCLOSURE                       R10 K17 [PROTO_3]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R10 R6 K18 ["new"]
       49 DUPCLOSURE                       R10 K19 [PROTO_4]
       50 SETTABLEKS                       R10 R6 K20 ["isEmpty"]
       52 DUPCLOSURE                       R10 K21 [PROTO_5]
       53 SETTABLEKS                       R10 R6 K22 ["getBoundingBox"]
       55 DUPCLOSURE                       R10 K23 [PROTO_6]
       56 SETTABLEKS                       R10 R6 K24 ["doesContainItem"]
       58 DUPCLOSURE                       R10 K25 [PROTO_7]
       59 SETTABLEKS                       R10 R6 K26 ["isDynamic"]
       61 RETURN                           R6 1
