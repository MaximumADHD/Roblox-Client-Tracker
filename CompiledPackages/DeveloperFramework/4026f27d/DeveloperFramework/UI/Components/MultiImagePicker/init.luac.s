PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["AddNew"] ; [+6]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["addNew"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Delete"] ; [+8]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R4 R1 K3 ["thumbnailId"]
       12 NAMECALL                         R2 R2 K4 ["deleteThumbnail"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K5 ["MoveTo"] ; [+10]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R4 R1 K3 ["thumbnailId"]
       21 GETTABLEKS                       R5 R1 K6 ["index"]
       23 NAMECALL                         R2 R2 K7 ["moveToIndex"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0
       27 JUMPIFNOTEQKS                    R0 K8 ["UpdateAltTexts"] ; [+6]
       29 GETUPVAL                         R2 0
       30 MOVE                             R4 R1
       31 NAMECALL                         R2 R2 K9 ["updateAltTexts"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["dispatchAction"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AddThumbnail"]
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["List"]
        5 GETTABLEKS                       R3 R4 K2 ["removeValue"]
        7 GETTABLEKS                       R4 R2 K3 ["Order"]
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       14 GETTABLEKS                       R4 R5 K5 ["join"]
       16 GETTABLEKS                       R5 R2 K6 ["Thumbnails"]
       18 NEWTABLE                         R6 1 0
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K7 ["None"]
       23 SETTABLE                         R7 R6 R1
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R5 R2 K8 ["DeleteThumbnail"]
       27 JUMPIFNOT                        R5 ; [+6]
       28 GETTABLEKS                       R5 R2 K8 ["DeleteThumbnail"]
       30 MOVE                             R6 R3
       31 MOVE                             R7 R4
       32 CALL                             R5 2 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R5 R2 K9 ["ThumbnailOrderChanged"]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 0
       38 GETTABLEKS                       R5 R2 K10 ["ThumbnailsChanged"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R2 K1 ["Thumbnails"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K3 [pairs]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 3
       10 FORGPREP_NEXT                    R4
       11 GETTABLE                         R9 R3 R7
       12 SETTABLEKS                       R8 R9 K4 ["altText"]
       14 FORGLOOP                         R4 2 ; [-4]
       16 GETTABLEKS                       R4 R2 K5 ["ThumbnailsChanged"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["List"]
        5 GETTABLEKS                       R4 R5 K2 ["removeValue"]
        7 GETTABLEKS                       R5 R3 K3 ["Order"]
        9 MOVE                             R6 R1
       10 CALL                             R4 2 1
       11 FASTCALL3                        TABLE_INSERT R4 R2 R1
       13 MOVE                             R6 R4
       14 MOVE                             R7 R2
       15 MOVE                             R8 R1
       16 GETIMPORT                        R5 K6 [table.insert]
       18 CALL                             R5 3 0
       19 GETTABLEKS                       R5 R3 K7 ["ThumbnailOrderChanged"]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R1
        8 DUPTABLE                         R6 K4 [{"Theme", "ThumbnailAction"}]
        9 GETTABLEKS                       R7 R1 K5 ["Stylizer"]
       11 SETTABLEKS                       R7 R6 K2 ["Theme"]
       13 GETTABLEKS                       R7 R0 K6 ["dispatchAction"]
       15 SETTABLEKS                       R7 R6 K3 ["ThumbnailAction"]
       17 CALL                             R4 2 -1
       18 CALL                             R2 -1 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K9 ["Util"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R3 K10 ["deepCopy"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["ContextServices"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K12 ["withContext"]
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R0 K4 ["Parent"]
       41 GETTABLEKS                       R8 R9 K13 ["Dash"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K14 ["join"]
       46 GETIMPORT                        R9 K6 [require]
       48 GETIMPORT                        R11 K1 [script]
       50 GETTABLEKS                       R10 R11 K15 ["ThumbnailWidget"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETIMPORT                        R12 K1 [script]
       57 GETTABLEKS                       R11 R12 K16 ["types"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R1 K17 ["PureComponent"]
       62 LOADK                            R13 K18 ["MultiImagePicker"]
       63 NAMECALL                         R11 R11 K19 ["extend"]
       65 CALL                             R11 2 1
       66 DUPCLOSURE                       R12 K20 [PROTO_1]
       67 SETTABLEKS                       R12 R11 K21 ["init"]
       69 DUPCLOSURE                       R12 K22 [PROTO_2]
       70 SETTABLEKS                       R12 R11 K23 ["addNew"]
       72 DUPCLOSURE                       R12 K24 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R12 R11 K25 ["deleteThumbnail"]
       76 DUPCLOSURE                       R12 K26 [PROTO_4]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R12 R11 K27 ["updateAltTexts"]
       80 DUPCLOSURE                       R12 K28 [PROTO_5]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R12 R11 K29 ["moveToIndex"]
       84 DUPCLOSURE                       R12 K30 [PROTO_6]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R12 R11 K31 ["render"]
       90 MOVE                             R12 R6
       91 DUPTABLE                         R13 K33 [{"Stylizer"}]
       92 GETTABLEKS                       R14 R5 K32 ["Stylizer"]
       94 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
       96 CALL                             R12 1 1
       97 MOVE                             R13 R11
       98 CALL                             R12 1 1
       99 MOVE                             R11 R12
      100 RETURN                           R11 1
