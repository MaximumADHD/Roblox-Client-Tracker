PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R4 R1 K2 ["ImageTypes"]
        8 NAMECALL                         R2 R2 K3 ["PromptImportFiles"]
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 0 0
       13 NEWTABLE                         R4 0 0
       15 JUMPIFNOT                        R2 ; [+46]
       16 LENGTH                           R5 R2
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R5 ; [+43]
       20 GETIMPORT                        R5 K5 [ipairs]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 GETTABLEKS                       R10 R9 K6 ["Size"]
       27 GETUPVAL                         R11 2
       28 JUMPIFNOTLT                      R11 R10 ; [+10]
       30 GETTABLEKS                       R12 R9 K7 ["Name"]
       32 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       34 MOVE                             R11 R3
       35 GETIMPORT                        R10 K10 [table.insert]
       37 CALL                             R10 2 0
       38 JUMP                             ; [+7]
       39 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       41 MOVE                             R11 R4
       42 MOVE                             R12 R9
       43 GETIMPORT                        R10 K10 [table.insert]
       45 CALL                             R10 2 0
       46 FORGLOOP                         R5 2 [inext] ; [-22]
       48 GETIMPORT                        R5 K12 [next]
       50 MOVE                             R6 R3
       51 CALL                             R5 1 1
       52 JUMPIFEQKNIL                     R5 ; [+8]
       54 GETUPVAL                         R5 0
       55 DUPTABLE                         R7 K14 [{"rejectedThumbnailNames"}]
       56 SETTABLEKS                       R3 R7 K13 ["rejectedThumbnailNames"]
       58 NAMECALL                         R5 R5 K15 ["setState"]
       60 CALL                             R5 2 0
       61 RETURN                           R4 1
       62 LOADNIL                          R5
       63 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateThumbnailChangeInfo"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["promptForThumbnails"]
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+58]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K2 ["order"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K3 ["thumbnails"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [pairs]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 NAMECALL                         R9 R8 K6 ["GetTemporaryId"]
       23 CALL                             R9 1 1
       24 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       26 MOVE                             R11 R2
       27 MOVE                             R12 R9
       28 GETIMPORT                        R10 K9 [table.insert]
       30 CALL                             R10 2 0
       31 DUPTABLE                         R10 K12 [{"asset", "tempId"}]
       32 SETTABLEKS                       R8 R10 K10 ["asset"]
       34 SETTABLEKS                       R9 R10 K11 ["tempId"]
       36 SETTABLE                         R10 R3 R9
       37 FORGLOOP                         R4 2 ; [-17]
       39 GETUPVAL                         R4 2
       40 JUMPIFNOT                        R4 ; [+12]
       41 GETUPVAL                         R4 0
       42 DUPTABLE                         R6 K13 [{"thumbnails", "order"}]
       43 SETTABLEKS                       R3 R6 K3 ["thumbnails"]
       45 SETTABLEKS                       R2 R6 K2 ["order"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U0
       49 NAMECALL                         R4 R4 K14 ["setState"]
       51 CALL                             R4 3 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R4 0
       54 DUPTABLE                         R6 K13 [{"thumbnails", "order"}]
       55 SETTABLEKS                       R3 R6 K3 ["thumbnails"]
       57 SETTABLEKS                       R2 R6 K2 ["order"]
       59 NAMECALL                         R4 R4 K14 ["setState"]
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K15 ["updateThumbnailChangeInfo"]
       65 CALL                             R4 0 0
       66 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateThumbnailChangeInfo"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+12]
        2 GETUPVAL                         R2 1
        3 DUPTABLE                         R4 K2 [{"order", "thumbnails"}]
        4 SETTABLEKS                       R0 R4 K0 ["order"]
        6 SETTABLEKS                       R1 R4 K1 ["thumbnails"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R2 R2 K3 ["setState"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 DUPTABLE                         R4 K2 [{"order", "thumbnails"}]
       16 SETTABLEKS                       R0 R4 K0 ["order"]
       18 SETTABLEKS                       R1 R4 K1 ["thumbnails"]
       20 NAMECALL                         R2 R2 K3 ["setState"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K4 ["updateThumbnailChangeInfo"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateThumbnailChangeInfo"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K1 [{"order"}]
        4 SETTABLEKS                       R0 R3 K0 ["order"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K2 ["setState"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R3 K1 [{"order"}]
       14 SETTABLEKS                       R0 R3 K0 ["order"]
       16 NAMECALL                         R1 R1 K2 ["setState"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K3 ["updateThumbnailChangeInfo"]
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateThumbnailChangeInfo"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K3 [{[1] = , ["thumbnails"]}]
        4 SETTABLEKS                       R0 R3 K2 ["thumbnails"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R3 K3 [{[1] = , ["thumbnails"]}]
       14 SETTABLEKS                       R0 R3 K2 ["thumbnails"]
       16 NAMECALL                         R1 R1 K4 ["setState"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K5 ["updateThumbnailChangeInfo"]
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R2 R0 K2 ["originalThumbnails"]
        8 GETTABLEKS                       R3 R0 K3 ["thumbnails"]
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 0 0
       14 NEWTABLE                         R6 0 0
       16 JUMPIFNOT                        R2 ; [+58]
       17 JUMPIFNOT                        R3 ; [+57]
       18 GETIMPORT                        R7 K5 [pairs]
       20 MOVE                             R8 R2
       21 CALL                             R7 1 3
       22 FORGPREP_NEXT                    R7
       23 GETTABLE                         R12 R3 R10
       24 JUMPIFNOTEQKNIL                  R12 ; [+12]
       26 FASTCALL1                        TONUMBER R10 ; [+3]
       27 MOVE                             R15 R10
       28 GETIMPORT                        R14 K7 [tonumber]
       30 CALL                             R14 1 1
       31 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       33 MOVE                             R13 R6
       34 GETIMPORT                        R12 K10 [table.insert]
       36 CALL                             R12 2 0
       37 FORGLOOP                         R7 1 ; [-15]
       39 GETIMPORT                        R7 K5 [pairs]
       41 MOVE                             R8 R3
       42 CALL                             R7 1 3
       43 FORGPREP_NEXT                    R7
       44 GETTABLE                         R12 R2 R10
       45 JUMPIFNOTEQKNIL                  R12 ; [+17]
       47 GETTABLEKS                       R14 R11 K11 ["asset"]
       49 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       51 MOVE                             R13 R5
       52 GETIMPORT                        R12 K10 [table.insert]
       54 CALL                             R12 2 0
       55 GETTABLEKS                       R12 R11 K12 ["altText"]
       57 JUMPIFEQKS                       R12 K13 [""] ; [+15]
       59 GETTABLEKS                       R12 R11 K12 ["altText"]
       61 SETTABLE                         R12 R4 R10
       62 JUMP                             ; [+10]
       63 GETTABLE                         R12 R2 R10
       64 GETTABLEKS                       R12 R12 K12 ["altText"]
       66 GETTABLEKS                       R13 R11 K12 ["altText"]
       68 JUMPIFEQ                         R12 R13 ; [+4]
       70 GETTABLEKS                       R12 R11 K12 ["altText"]
       72 SETTABLE                         R12 R4 R10
       73 FORGLOOP                         R7 2 ; [-30]
       75 GETTABLEKS                       R7 R1 K14 ["SetThumbnailUpdateInfo"]
       77 DUPTABLE                         R8 K19 [{"ThumbnailAltTextsToUpdate", "ThumbnailFilesToAdd", "ThumbnailIdsToRemove", "ThumbnailOrderToChange"}]
       78 SETTABLEKS                       R4 R8 K15 ["ThumbnailAltTextsToUpdate"]
       80 SETTABLEKS                       R5 R8 K16 ["ThumbnailFilesToAdd"]
       82 SETTABLEKS                       R6 R8 K17 ["ThumbnailIdsToRemove"]
       84 GETTABLEKS                       R9 R0 K20 ["order"]
       86 SETTABLEKS                       R9 R8 K18 ["ThumbnailOrderToChange"]
       88 CALL                             R7 1 0
       89 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["InitThumbnailArray"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 GETIMPORT                        R3 K3 [pairs]
       13 GETTABLEKS                       R4 R0 K1 ["InitThumbnailArray"]
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETTABLEKS                       R9 R7 K4 ["id"]
       19 FASTCALL1                        TOSTRING R9 ; [+2]
       20 GETIMPORT                        R8 K6 [tostring]
       22 CALL                             R8 1 1
       23 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R8
       27 GETIMPORT                        R9 K9 [table.insert]
       29 CALL                             R9 2 0
       30 SETTABLE                         R7 R2 R8
       31 FORGLOOP                         R3 2 ; [-15]
       33 GETUPVAL                         R3 0
       34 DUPTABLE                         R5 K15 [{"altTextError", "order", "thumbnails", "originalOrder", "originalThumbnails"}]
       35 GETTABLEKS                       R6 R0 K16 ["AltTextError"]
       37 SETTABLEKS                       R6 R5 K10 ["altTextError"]
       39 SETTABLEKS                       R1 R5 K11 ["order"]
       41 SETTABLEKS                       R2 R5 K12 ["thumbnails"]
       43 SETTABLEKS                       R1 R5 K13 ["originalOrder"]
       45 SETTABLEKS                       R2 R5 K14 ["originalThumbnails"]
       47 NAMECALL                         R3 R3 K17 ["setState"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"rejectedThumbnailNames"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["rejectedThumbnailNames"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K7 [{[1] = , ["errorMessage"] = , ["order"], ["thumbnails"], ["originalOrder"], ["originalThumbnails"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K3 ["order"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K4 ["thumbnails"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K5 ["originalOrder"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K6 ["originalThumbnails"]
       17 SETTABLEKS                       R1 R0 K8 ["state"]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R1 R0 K9 ["promptForThumbnails"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R1 R0 K10 ["addThumbnails"]
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K11 ["deleteThumbnail"]
       36 NEWCLOSURE                       R1 P3
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K12 ["orderChanged"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K13 ["thumbnailsChanged"]
       46 NEWCLOSURE                       R1 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K14 ["updateThumbnailChangeInfo"]
       50 NEWCLOSURE                       R1 P6
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K15 ["initializeThumbnails"]
       54 NEWCLOSURE                       R1 P7
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U4
       57 SETTABLEKS                       R1 R0 K16 ["onCloseRejectedDialog"]
       59 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["initializeThumbnails"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["InitThumbnailArray"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+5]
        6 GETTABLEKS                       R3 R0 K2 ["initializeThumbnails"]
        8 CALL                             R3 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R1 K1 ["InitThumbnailArray"]
       13 GETTABLEKS                       R5 R2 K1 ["InitThumbnailArray"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+3]
       17 GETTABLEKS                       R3 R0 K2 ["initializeThumbnails"]
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K4 [{"AutomaticSize"}]
        9 GETIMPORT                        R6 K7 [Enum.AutomaticSize.XY]
       11 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       13 DUPTABLE                         R6 K10 [{"MultiImagePicker", "RejectedThumbnailDialog"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K28 [{["AddThumbnail"], ["AltTextError"], ["DeleteThumbnail"], ["Enabled"] = True, ["ErrorMessage"], ["IsVideoAllowed"], ["LayoutOrder"], ["Order"], ["MaxThumbnails"], ["Notes"], ["ShowAltText"], ["ShowTitle"], ["ThumbnailOrderChanged"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailSize"]}]
       19 GETTABLEKS                       R10 R0 K29 ["addThumbnails"]
       21 SETTABLEKS                       R10 R9 K11 ["AddThumbnail"]
       23 GETTABLEKS                       R10 R2 K30 ["altTextError"]
       25 SETTABLEKS                       R10 R9 K12 ["AltTextError"]
       27 GETTABLEKS                       R10 R0 K31 ["deleteThumbnail"]
       29 SETTABLEKS                       R10 R9 K13 ["DeleteThumbnail"]
       31 GETTABLEKS                       R10 R2 K32 ["errorMessage"]
       33 SETTABLEKS                       R10 R9 K16 ["ErrorMessage"]
       35 GETTABLEKS                       R10 R1 K17 ["IsVideoAllowed"]
       37 SETTABLEKS                       R10 R9 K17 ["IsVideoAllowed"]
       39 GETTABLEKS                       R10 R1 K18 ["LayoutOrder"]
       41 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       43 GETTABLEKS                       R10 R2 K33 ["order"]
       45 SETTABLEKS                       R10 R9 K19 ["Order"]
       47 GETTABLEKS                       R10 R1 K20 ["MaxThumbnails"]
       49 SETTABLEKS                       R10 R9 K20 ["MaxThumbnails"]
       51 GETTABLEKS                       R10 R1 K21 ["Notes"]
       53 SETTABLEKS                       R10 R9 K21 ["Notes"]
       55 GETTABLEKS                       R10 R1 K22 ["ShowAltText"]
       57 SETTABLEKS                       R10 R9 K22 ["ShowAltText"]
       59 GETTABLEKS                       R10 R1 K23 ["ShowTitle"]
       61 SETTABLEKS                       R10 R9 K23 ["ShowTitle"]
       63 GETTABLEKS                       R10 R0 K34 ["orderChanged"]
       65 SETTABLEKS                       R10 R9 K24 ["ThumbnailOrderChanged"]
       67 GETTABLEKS                       R10 R2 K35 ["thumbnails"]
       69 SETTABLEKS                       R10 R9 K25 ["Thumbnails"]
       71 GETTABLEKS                       R10 R0 K36 ["thumbnailsChanged"]
       73 SETTABLEKS                       R10 R9 K26 ["ThumbnailsChanged"]
       75 GETTABLEKS                       R10 R1 K27 ["ThumbnailSize"]
       77 SETTABLEKS                       R10 R9 K27 ["ThumbnailSize"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K8 ["MultiImagePicker"]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K2 ["createElement"]
       85 GETUPVAL                         R8 3
       86 DUPTABLE                         R9 K40 [{"Enabled", "Files", "OnClose", "Theme"}]
       87 GETTABLEKS                       R11 R2 K41 ["rejectedThumbnailNames"]
       89 JUMPIFNOTEQKNIL                  R11 ; [+2]
       91 LOADB                            R10 0 +1
       92 LOADB                            R10 1
       93 SETTABLEKS                       R10 R9 K14 ["Enabled"]
       95 GETTABLEKS                       R10 R2 K41 ["rejectedThumbnailNames"]
       97 SETTABLEKS                       R10 R9 K37 ["Files"]
       99 GETTABLEKS                       R10 R0 K42 ["onCloseRejectedDialog"]
      101 SETTABLEKS                       R10 R9 K38 ["OnClose"]
      103 GETTABLEKS                       R10 R1 K43 ["Stylizer"]
      105 SETTABLEKS                       R10 R9 K39 ["Theme"]
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K9 ["RejectedThumbnailDialog"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R4 R0 K2 ["UI"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K11 ["Pane"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R4 K12 ["MultiImagePicker"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R8 R8 K13 ["types"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R0 K14 ["Util"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K15 ["deepCopy"]
       51 GETTABLEKS                       R10 R8 K16 ["deepEqual"]
       53 GETTABLEKS                       R11 R8 K17 ["isRoact17"]
       55 MOVE                             R12 R1
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETTABLEKS                       R13 R0 K14 ["Util"]
       61 GETTABLEKS                       R13 R13 K18 ["getFileMaxSizeBytesOrDefault"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K6 [require]
       66 GETIMPORT                        R14 K1 [script]
       68 GETTABLEKS                       R14 R14 K19 ["RejectedThumbnailDialog"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K21 [game]
       73 LOADK                            R16 K22 ["StudioService"]
       74 NAMECALL                         R14 R14 K23 ["GetService"]
       76 CALL                             R14 2 1
       77 MOVE                             R15 R12
       78 CALL                             R15 0 1
       79 GETTABLEKS                       R16 R1 K24 ["PureComponent"]
       81 LOADK                            R18 K25 ["MultiImagePickerWrapper"]
       82 NAMECALL                         R16 R16 K26 ["extend"]
       84 CALL                             R16 2 1
       85 DUPCLOSURE                       R17 K27 [PROTO_12]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R17 R16 K28 ["init"]
       93 DUPCLOSURE                       R17 K29 [PROTO_13]
       94 SETTABLEKS                       R17 R16 K30 ["didMount"]
       96 DUPCLOSURE                       R17 K31 [PROTO_14]
       97 CAPTURE                          VAL R10
       98 SETTABLEKS                       R17 R16 K32 ["didUpdate"]
      100 DUPCLOSURE                       R17 K33 [PROTO_15]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R17 R16 K34 ["render"]
      107 MOVE                             R17 R3
      108 DUPTABLE                         R18 K36 [{"Stylizer"}]
      109 GETTABLEKS                       R19 R2 K35 ["Stylizer"]
      111 SETTABLEKS                       R19 R18 K35 ["Stylizer"]
      113 CALL                             R17 1 1
      114 MOVE                             R18 R16
      115 CALL                             R17 1 1
      116 MOVE                             R16 R17
      117 RETURN                           R16 1
