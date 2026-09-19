PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 NEWTABLE                         R4 4 0
        5 GETUPVAL                         R5 0
        6 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        8 GETIMPORT                        R3 K1 [setmetatable]
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R0 R3 K2 ["model"]
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADB                            R4 1
       16 JUMP                             ; [+1]
       17 MOVE                             R4 R1
       18 SETTABLEKS                       R4 R3 K3 ["autoscale"]
       20 GETTABLEKS                       R4 R3 K2 ["model"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K4 ["Archivable"]
       25 GETTABLEKS                       R4 R3 K2 ["model"]
       27 LOADK                            R6 K5 ["BasePart"]
       28 NAMECALL                         R4 R4 K6 ["IsA"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+5]
       32 GETTABLEKS                       R4 R3 K2 ["model"]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K7 ["Anchored"]
       37 GETIMPORT                        R4 K9 [ipairs]
       39 GETTABLEKS                       R5 R3 K2 ["model"]
       41 NAMECALL                         R5 R5 K10 ["GetDescendants"]
       43 CALL                             R5 1 -1
       44 CALL                             R4 -1 3
       45 FORGPREP_INEXT                   R4
       46 LOADK                            R11 K5 ["BasePart"]
       47 NAMECALL                         R9 R8 K6 ["IsA"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+3]
       51 LOADB                            R9 0
       52 SETTABLEKS                       R9 R8 K7 ["Anchored"]
       54 FORGLOOP                         R4 2 [inext] ; [-9]
       56 SETTABLEKS                       R2 R3 K11 ["id"]
       58 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R8 R0 K0 ["model"]
        3 NAMECALL                         R6 R6 K1 ["getHandle"]
        5 CALL                             R6 2 1
        6 LOADK                            R9 K2 ["Weld"]
        7 NAMECALL                         R7 R6 K3 ["FindFirstChildWhichIsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+3]
       11 NAMECALL                         R8 R7 K4 ["Destroy"]
       13 CALL                             R8 1 0
       14 SETTABLEKS                       R1 R6 K5 ["Size"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K6 ["isLegacyAccessory"]
       19 MOVE                             R9 R6
       20 CALL                             R8 1 1
       21 JUMPIFNOT                        R8 ; [+7]
       22 JUMPIFNOT                        R5 ; [+6]
       23 GETUPVAL                         R8 0
       24 MOVE                             R10 R6
       25 MOVE                             R11 R5
       26 NAMECALL                         R8 R8 K7 ["setSpecialMeshScale"]
       28 CALL                             R8 3 0
       29 GETUPVAL                         R8 0
       30 MOVE                             R10 R6
       31 GETTABLEKS                       R11 R6 K8 ["Parent"]
       33 MOVE                             R12 R4
       34 MOVE                             R13 R2
       35 MOVE                             R14 R3
       36 NAMECALL                         R8 R8 K9 ["createOrReuseAttachmentInstance"]
       38 CALL                             R8 6 0
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R10 R6 K8 ["Parent"]
       42 MOVE                             R11 R6
       43 MOVE                             R12 R4
       44 GETTABLEKS                       R13 R0 K10 ["autoscale"]
       46 NAMECALL                         R8 R8 K11 ["attachClothingItem"]
       48 CALL                             R8 5 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["model"]
        3 NAMECALL                         R3 R3 K1 ["getHandle"]
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 1
        7 MOVE                             R6 R3
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 NAMECALL                         R4 R4 K2 ["deformClothing"]
       12 CALL                             R4 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["model"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["model"]
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["AccessoryUtil"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K6 ["getModelFromBackend"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["WrapUtil"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K8 ["ItemCharacteristics"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 8 0
       35 SETTABLEKS                       R6 R6 K9 ["__index"]
       37 DUPCLOSURE                       R7 K10 [PROTO_0]
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R7 R6 K11 ["new"]
       41 DUPCLOSURE                       R7 K12 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R7 R6 K13 ["transform"]
       46 DUPCLOSURE                       R7 K14 [PROTO_2]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R7 R6 K15 ["deform"]
       51 DUPCLOSURE                       R7 K16 [PROTO_3]
       52 SETTABLEKS                       R7 R6 K17 ["destroy"]
       54 RETURN                           R6 1
