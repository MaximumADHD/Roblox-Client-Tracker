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
        6 LOADNIL                          R7
        7 GETUPVAL                         R8 1
        8 CALL                             R8 0 1
        9 JUMPIFNOT                        R8 ; [+5]
       10 GETTABLEKS                       R7 R6 K2 ["Archivable"]
       12 LOADB                            R8 0
       13 SETTABLEKS                       R8 R6 K2 ["Archivable"]
       15 LOADK                            R10 K3 ["Weld"]
       16 NAMECALL                         R8 R6 K4 ["FindFirstChildWhichIsA"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+3]
       20 NAMECALL                         R9 R8 K5 ["Destroy"]
       22 CALL                             R9 1 0
       23 SETTABLEKS                       R1 R6 K6 ["Size"]
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R9 R10 K7 ["isLegacyAccessory"]
       28 MOVE                             R10 R6
       29 CALL                             R9 1 1
       30 JUMPIFNOT                        R9 ; [+7]
       31 JUMPIFNOT                        R5 ; [+6]
       32 GETUPVAL                         R9 0
       33 MOVE                             R11 R6
       34 MOVE                             R12 R5
       35 NAMECALL                         R9 R9 K8 ["setSpecialMeshScale"]
       37 CALL                             R9 3 0
       38 GETUPVAL                         R9 0
       39 MOVE                             R11 R6
       40 GETTABLEKS                       R12 R6 K9 ["Parent"]
       42 MOVE                             R13 R4
       43 MOVE                             R14 R2
       44 MOVE                             R15 R3
       45 NAMECALL                         R9 R9 K10 ["createOrReuseAttachmentInstance"]
       47 CALL                             R9 6 0
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R11 R6 K9 ["Parent"]
       51 MOVE                             R12 R6
       52 MOVE                             R13 R4
       53 GETTABLEKS                       R14 R0 K11 ["autoscale"]
       55 NAMECALL                         R9 R9 K12 ["attachClothingItem"]
       57 CALL                             R9 5 0
       58 GETUPVAL                         R9 1
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+2]
       61 SETTABLEKS                       R7 R6 K2 ["Archivable"]
       63 RETURN                           R0 0

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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R4 K1 [script]
        7 GETTABLEKS                       R3 R4 K2 ["Parent"]
        9 GETTABLEKS                       R2 R3 K2 ["Parent"]
       11 GETTABLEKS                       R1 R2 K2 ["Parent"]
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
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R8 R1 K9 ["Flags"]
       37 GETTABLEKS                       R7 R8 K10 ["GetFFlagAFTSelectHandleOnly"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 8 0
       42 SETTABLEKS                       R7 R7 K11 ["__index"]
       44 DUPCLOSURE                       R8 K12 [PROTO_0]
       45 CAPTURE                          VAL R7
       46 SETTABLEKS                       R8 R7 K13 ["new"]
       48 DUPCLOSURE                       R8 K14 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R8 R7 K15 ["transform"]
       54 DUPCLOSURE                       R8 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R7 K17 ["deform"]
       59 DUPCLOSURE                       R8 K18 [PROTO_3]
       60 SETTABLEKS                       R8 R7 K19 ["destroy"]
       62 RETURN                           R7 1
