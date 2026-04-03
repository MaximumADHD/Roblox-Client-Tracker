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
       13 GETTABLEKS                       R4 R3 K2 ["model"]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K3 ["Archivable"]
       18 GETTABLEKS                       R4 R3 K2 ["model"]
       20 SETTABLEKS                       R1 R4 K4 ["Parent"]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K5 ["clothing"]
       26 SETTABLEKS                       R2 R3 K6 ["id"]
       28 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R8 R0 K0 ["clothing"]
        2 GETTABLE                         R7 R8 R1
        3 JUMPIFNOT                        R7 ; [+8]
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 MOVE                             R14 R6
        9 NAMECALL                         R8 R7 K1 ["transform"]
       11 CALL                             R8 6 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["clothing"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOT                        R4 ; [+5]
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 NAMECALL                         R5 R4 K1 ["deform"]
        8 CALL                             R5 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["model"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R3 K1 ["deformBody"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R4 R0 K0 ["model"]
        5 GETTABLEKS                       R5 R1 K0 ["model"]
        7 NAMECALL                         R2 R2 K1 ["attachClothingItem"]
        9 CALL                             R2 3 0
       10 GETTABLEKS                       R3 R0 K2 ["clothing"]
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R4 R1 K0 ["model"]
       21 NAMECALL                         R2 R2 K6 ["getHandle"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K7 ["hasAnyCage"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIF                           R3 ; [+48]
       30 LOADK                            R5 K8 ["Attachment"]
       31 NAMECALL                         R3 R2 K9 ["FindFirstChildOfClass"]
       33 CALL                             R3 2 1
       34 JUMPIF                           R3 ; [+4]
       35 GETTABLEKS                       R5 R0 K2 ["clothing"]
       37 LENGTH                           R4 R5
       38 RETURN                           R4 1
       39 GETUPVAL                         R4 0
       40 MOVE                             R6 R2
       41 GETTABLEKS                       R7 R0 K0 ["model"]
       43 GETTABLEKS                       R8 R3 K10 ["Name"]
       45 NAMECALL                         R4 R4 K11 ["getExistingAttachmentPoint"]
       47 CALL                             R4 4 1
       48 JUMPIF                           R4 ; [+4]
       49 GETTABLEKS                       R6 R0 K2 ["clothing"]
       51 LENGTH                           R5 R6
       52 RETURN                           R5 1
       53 LOADNIL                          R5
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K12 ["isLegacyAccessory"]
       57 MOVE                             R7 R2
       58 CALL                             R6 1 1
       59 JUMPIFNOT                        R6 ; [+6]
       60 GETUPVAL                         R6 0
       61 MOVE                             R8 R2
       62 NAMECALL                         R6 R6 K13 ["getSpecialMeshScale"]
       64 CALL                             R6 2 1
       65 MOVE                             R5 R6
       66 GETTABLEKS                       R8 R2 K14 ["Size"]
       68 GETTABLEKS                       R9 R4 K15 ["AttachmentCFrame"]
       70 GETTABLEKS                       R10 R4 K16 ["ItemCFrame"]
       72 GETTABLEKS                       R11 R3 K10 ["Name"]
       74 MOVE                             R12 R5
       75 NAMECALL                         R6 R1 K17 ["transform"]
       77 CALL                             R6 6 0
       78 GETTABLEKS                       R4 R0 K2 ["clothing"]
       80 LENGTH                           R3 R4
       81 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["model"]
        3 GETTABLEKS                       R6 R2 K0 ["model"]
        5 NAMECALL                         R3 R3 K1 ["attachClothingItem"]
        7 CALL                             R3 3 0
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R0 K2 ["removeClothing"]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R3 R0 K3 ["clothing"]
       14 SETTABLE                         R2 R3 R1
       15 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["clothing"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETTABLEKS                       R3 R0 K0 ["clothing"]
        6 GETTABLE                         R2 R3 R1
        7 NAMECALL                         R2 R2 K1 ["destory"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K0 ["clothing"]
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R1
       14 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["clothing"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["clothing"]
       15 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["removeAllClothing"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["model"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["model"]
        8 NAMECALL                         R1 R1 K2 ["Destroy"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["model"]
       14 RETURN                           R0 0

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
       20 GETTABLEKS                       R4 R0 K6 ["AvatarUtil"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["getModelFromBackend"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K8 ["ItemCharacteristics"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K9 ["WrapUtil"]
       37 CALL                             R6 1 1
       38 NEWTABLE                         R7 16 0
       40 SETTABLEKS                       R7 R7 K10 ["__index"]
       42 DUPCLOSURE                       R8 K11 [PROTO_0]
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R8 R7 K12 ["new"]
       46 DUPCLOSURE                       R8 K13 [PROTO_1]
       47 SETTABLEKS                       R8 R7 K14 ["transformLayer"]
       49 DUPCLOSURE                       R8 K15 [PROTO_2]
       50 SETTABLEKS                       R8 R7 K16 ["deformLayer"]
       52 DUPCLOSURE                       R8 K17 [PROTO_3]
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R8 R7 K18 ["deformAvatarBody"]
       56 DUPCLOSURE                       R8 K19 [PROTO_4]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R8 R7 K20 ["addLayer"]
       61 DUPCLOSURE                       R8 K21 [PROTO_5]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R8 R7 K22 ["setLayer"]
       65 DUPCLOSURE                       R8 K23 [PROTO_6]
       66 SETTABLEKS                       R8 R7 K24 ["removeLayer"]
       68 DUPCLOSURE                       R8 K25 [PROTO_7]
       69 SETTABLEKS                       R8 R7 K26 ["removeAllClothing"]
       71 DUPCLOSURE                       R8 K27 [PROTO_8]
       72 SETTABLEKS                       R8 R7 K28 ["destroy"]
       74 RETURN                           R7 1
