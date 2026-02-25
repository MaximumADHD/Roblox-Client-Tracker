PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQ                      R0 R3 ; [+4]
        3 SETTABLEKS                       R1 R2 K0 ["Image"]
        5 JUMP                             ; [+2]
        6 SETTABLEKS                       R1 R2 K1 ["Model"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["createElement"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["AssetsInfo"]
        2 GETTABLEKS                       R4 R0 K1 ["OnThumbnailClick"]
        4 GETTABLEKS                       R5 R0 K2 ["DefaultThumbnail"]
        6 GETTABLEKS                       R8 R0 K3 ["SelectedTiles"]
        8 GETTABLE                         R7 R8 R1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 MOVE                             R7 R5
       14 GETTABLE                         R8 R3 R1
       15 JUMPIFNOT                        R8 ; [+53]
       16 DUPTABLE                         R9 K8 [{"OnClick", "Text", "IsOn", "LayoutOrder"}]
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R6
       21 SETTABLEKS                       R10 R9 K4 ["OnClick"]
       23 GETTABLEKS                       R10 R8 K9 ["Name"]
       25 JUMPIF                           R10 ; [+4]
       26 GETTABLEKS                       R10 R8 K10 ["name"]
       28 JUMPIF                           R10 ; [+1]
       29 LOADK                            R10 K11 [""]
       30 SETTABLEKS                       R10 R9 K5 ["Text"]
       32 SETTABLEKS                       R6 R9 K6 ["IsOn"]
       34 SETTABLEKS                       R2 R9 K7 ["LayoutOrder"]
       36 GETTABLEKS                       R10 R8 K12 ["Instance"]
       38 JUMPIFNOT                        R10 ; [+8]
       39 GETTABLEKS                       R10 R8 K12 ["Instance"]
       41 GETUPVAL                         R11 0
       42 GETUPVAL                         R12 1
       43 MOVE                             R13 R10
       44 MOVE                             R14 R9
       45 CALL                             R11 3 -1
       46 RETURN                           R11 -1
       47 GETTABLEKS                       R10 R8 K13 ["ThumbnailType"]
       49 JUMPIFNOT                        R10 ; [+13]
       50 JUMPIFEQKS                       R10 K11 [""] ; [+12]
       52 LOADK                            R11 K14 ["rbxthumb://type="]
       53 MOVE                             R12 R10
       54 LOADK                            R13 K15 ["&id="]
       55 FASTCALL1                        TOSTRING R1 ; [+3]
       56 MOVE                             R17 R1
       57 GETIMPORT                        R16 K17 [tostring]
       59 CALL                             R16 1 1
       60 MOVE                             R14 R16
       61 LOADK                            R15 K18 ["&w=150&h=150"]
       62 CONCAT                           R7 R11 R15
       63 GETUPVAL                         R11 0
       64 GETUPVAL                         R12 2
       65 MOVE                             R13 R7
       66 MOVE                             R14 R9
       67 CALL                             R11 3 -1
       68 RETURN                           R11 -1
       69 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["AssetIds"]
        2 GETTABLEKS                       R2 R0 K1 ["LayoutOrder"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
        7 CALL                             R3 0 1
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 0
       11 GETIMPORT                        R6 K4 [ipairs]
       13 MOVE                             R7 R1
       14 CALL                             R6 1 3
       15 FORGPREP_INEXT                   R6
       16 GETUPVAL                         R11 1
       17 MOVE                             R12 R0
       18 MOVE                             R13 R10
       19 MOVE                             R14 R4
       20 CALL                             R11 3 1
       21 SETTABLE                         R11 R5 R4
       22 NAMECALL                         R11 R3 K5 ["getNextOrder"]
       24 CALL                             R11 1 1
       25 ADD                              R4 R2 R11
       26 FORGLOOP                         R6 2 [inext] ; [-11]
       28 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R6 K1 [script]
       20 GETTABLEKS                       R5 R6 K2 ["Parent"]
       22 GETTABLEKS                       R4 R5 K6 ["types"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K7 ["Components"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R4 K8 ["Tile"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K4 [require]
       34 GETTABLEKS                       R7 R4 K9 ["PreviewTile"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETTABLEKS                       R8 R1 K10 ["Framework"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K11 ["Util"]
       44 GETTABLEKS                       R9 R8 K12 ["LayoutOrderIterator"]
       46 DUPCLOSURE                       R10 K13 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R11 K14 [PROTO_2]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R12 K15 [PROTO_3]
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R11
       56 RETURN                           R12 1
