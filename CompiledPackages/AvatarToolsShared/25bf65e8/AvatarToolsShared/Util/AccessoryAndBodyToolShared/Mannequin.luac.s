PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["model"]
        2 NAMECALL                         R1 R1 K1 ["GetDescendants"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K2 ["BaseWrap"]
        7 NAMECALL                         R6 R5 K3 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+3]
       11 NAMECALL                         R6 R5 K4 ["Destroy"]
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["reset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["reset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["sourceDisplayItem"]
        2 JUMPIFNOT                        R1 ; [+53]
        3 GETTABLEKS                       R1 R0 K0 ["sourceDisplayItem"]
        5 NAMECALL                         R1 R1 K1 ["Clone"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K2 ["displayItem"]
       10 GETTABLEKS                       R1 R0 K2 ["displayItem"]
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K3 ["GenerateGUID"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K4 ["Name"]
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+15]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K5 ["hasAnyCage"]
       24 GETTABLEKS                       R2 R0 K2 ["displayItem"]
       26 CALL                             R1 1 1
       27 JUMPIF                           R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K2 ["displayItem"]
       30 LOADB                            R2 0
       31 SETTABLEKS                       R2 R1 K6 ["CanCollide"]
       33 GETUPVAL                         R1 3
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R1 R2 K7 ["addPreviewClothingFromInstance"]
       39 MOVE                             R2 R0
       40 GETTABLEKS                       R3 R0 K2 ["displayItem"]
       42 LOADB                            R4 0
       43 CALL                             R1 3 0
       44 GETTABLEKS                       R2 R0 K2 ["displayItem"]
       46 GETTABLEKS                       R1 R2 K8 ["AncestryChanged"]
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R1 R1 K9 ["Connect"]
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K10 ["AncestryChangedHandle"]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R2 R0 K11 ["model"]
       58 GETTABLEKS                       R1 R2 K8 ["AncestryChanged"]
       60 NEWCLOSURE                       R3 P1
       61 CAPTURE                          VAL R0
       62 NAMECALL                         R1 R1 K9 ["Connect"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K10 ["AncestryChangedHandle"]
       67 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["destroy"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["sourceMannequin"]
       18 NAMECALL                         R1 R1 K4 ["Clone"]
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K5 ["model"]
       23 GETTABLEKS                       R1 R0 K5 ["model"]
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R1 K6 ["Archivable"]
       28 GETTABLEKS                       R1 R0 K5 ["model"]
       30 GETTABLEKS                       R2 R0 K7 ["sourceParent"]
       32 SETTABLEKS                       R2 R1 K8 ["Parent"]
       34 GETUPVAL                         R1 1
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K9 ["onMannequinReset"]
       39 CALL                             R1 0 0
       40 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+8]
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K0 ["MANNEQUIN_PATH"]
        5 NAMECALL                         R4 R4 K1 ["LoadLocalAsset"]
        7 CALL                             R4 2 1
        8 MOVE                             R1 R4
        9 NAMECALL                         R4 R1 K2 ["Clone"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R5 K3 ["makeDeformerNamesUnique"]
       16 CALL                             R5 2 0
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R6 R7 K4 ["new"]
       20 NAMECALL                         R7 R4 K2 ["Clone"]
       22 CALL                             R7 1 1
       23 MOVE                             R8 R2
       24 GETUPVAL                         R9 4
       25 NAMECALL                         R9 R9 K5 ["GenerateGUID"]
       27 CALL                             R9 1 -1
       28 CALL                             R6 -1 1
       29 GETUPVAL                         R7 5
       30 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       32 GETIMPORT                        R5 K7 [setmetatable]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R4 R5 K8 ["sourceMannequin"]
       37 NAMECALL                         R6 R0 K2 ["Clone"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K9 ["sourceDisplayItem"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R8 R5 K9 ["sourceDisplayItem"]
       45 NAMECALL                         R6 R6 K3 ["makeDeformerNamesUnique"]
       47 CALL                             R6 2 0
       48 SETTABLEKS                       R2 R5 K10 ["sourceParent"]
       50 SETTABLEKS                       R3 R5 K11 ["onMannequinReset"]
       52 GETUPVAL                         R6 6
       53 MOVE                             R7 R5
       54 CALL                             R6 1 0
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R8 R5 K9 ["sourceDisplayItem"]
       58 NAMECALL                         R6 R6 K12 ["initTempCageData"]
       60 CALL                             R6 2 0
       61 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["sourceMannequin"]
       14 GETTABLEKS                       R1 R0 K3 ["sourceDisplayItem"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K3 ["sourceDisplayItem"]
       19 NAMECALL                         R1 R1 K4 ["Destroy"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["sourceDisplayItem"]
       25 GETTABLEKS                       R1 R0 K5 ["displayItem"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K5 ["displayItem"]
       30 NAMECALL                         R1 R1 K4 ["Destroy"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K5 ["displayItem"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K6 ["destroy"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R4 K6 [script]
       23 GETTABLEKS                       R3 R4 K7 ["Parent"]
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R3 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R3 K11 ["PreviewAvatar"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R7 R3 K12 ["PreviewUtil"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R3 K13 ["WrapUtil"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K9 [require]
       47 GETTABLEKS                       R9 R3 K14 ["ItemCharacteristics"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R11 R2 K15 ["Flags"]
       54 GETTABLEKS                       R10 R11 K16 ["GetFFlagAFTSelectHandleOnly"]
       56 CALL                             R9 1 1
       57 NEWTABLE                         R11 4 0
       59 DUPTABLE                         R12 K18 [{"__index"}]
       60 SETTABLEKS                       R5 R12 K17 ["__index"]
       62 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
       64 GETIMPORT                        R10 K20 [setmetatable]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R10 K17 ["__index"]
       69 DUPCLOSURE                       R11 K21 [PROTO_0]
       70 DUPCLOSURE                       R12 K22 [PROTO_1]
       71 DUPCLOSURE                       R13 K23 [PROTO_4]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R6
       77 DUPCLOSURE                       R14 K24 [PROTO_5]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R13
       80 SETTABLEKS                       R14 R10 K25 ["reset"]
       82 DUPCLOSURE                       R14 K26 [PROTO_6]
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R14 R10 K27 ["new"]
       92 DUPCLOSURE                       R14 K28 [PROTO_7]
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R14 R10 K29 ["destroy"]
       96 RETURN                           R10 1
