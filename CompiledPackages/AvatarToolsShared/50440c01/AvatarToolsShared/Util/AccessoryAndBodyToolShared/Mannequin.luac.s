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
        2 JUMPIFNOT                        R1 ; [+35]
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
       19 GETTABLEKS                       R1 R1 K5 ["addPreviewClothingFromInstance"]
       21 MOVE                             R2 R0
       22 GETTABLEKS                       R3 R0 K2 ["displayItem"]
       24 LOADB                            R4 0
       25 CALL                             R1 3 0
       26 GETTABLEKS                       R1 R0 K2 ["displayItem"]
       28 GETTABLEKS                       R1 R1 K6 ["AncestryChanged"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R1 R1 K7 ["Connect"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K8 ["AncestryChangedHandle"]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R1 R0 K9 ["model"]
       40 GETTABLEKS                       R1 R1 K6 ["AncestryChanged"]
       42 NEWCLOSURE                       R3 P1
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R1 R1 K7 ["Connect"]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K8 ["AncestryChangedHandle"]
       49 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["AncestryChangedHandle"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["destroy"]
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
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R6 R6 K0 ["MANNEQUIN_PATH"]
        5 NAMECALL                         R4 R4 K1 ["LoadLocalAsset"]
        7 CALL                             R4 2 1
        8 MOVE                             R1 R4
        9 NAMECALL                         R4 R1 K2 ["Clone"]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R5 K3 ["makeDeformerNamesUnique"]
       16 CALL                             R5 2 0
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K4 ["new"]
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
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K6 ["destroy"]
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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K6 [script]
       23 GETTABLEKS                       R3 R3 K7 ["Parent"]
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
       50 NEWTABLE                         R10 4 0
       52 DUPTABLE                         R11 K16 [{"__index"}]
       53 SETTABLEKS                       R5 R11 K15 ["__index"]
       55 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       57 GETIMPORT                        R9 K18 [setmetatable]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R9 K15 ["__index"]
       62 DUPCLOSURE                       R10 K19 [PROTO_0]
       63 DUPCLOSURE                       R11 K20 [PROTO_1]
       64 DUPCLOSURE                       R12 K21 [PROTO_4]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R13 K22 [PROTO_5]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R13 R9 K23 ["reset"]
       72 DUPCLOSURE                       R13 K24 [PROTO_6]
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R12
       80 SETTABLEKS                       R13 R9 K25 ["new"]
       82 DUPCLOSURE                       R13 K26 [PROTO_7]
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R13 R9 K27 ["destroy"]
       86 RETURN                           R9 1
