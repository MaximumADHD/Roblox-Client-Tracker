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
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K2 [{"altTextError", "thumbnails"}]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K0 ["altTextError"]
        7 SETTABLEKS                       R0 R3 K1 ["thumbnails"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R1 R1 K3 ["setState"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 DUPTABLE                         R3 K2 [{"altTextError", "thumbnails"}]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K0 ["altTextError"]
       20 SETTABLEKS                       R0 R3 K1 ["thumbnails"]
       22 NAMECALL                         R1 R1 K3 ["setState"]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K4 ["updateThumbnailChangeInfo"]
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K6 [{"altTextError", "errorMessage", "order", "thumbnails", "originalOrder", "originalThumbnails"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["altTextError"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["errorMessage"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["order"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R1 K3 ["thumbnails"]
       15 NEWTABLE                         R2 0 0
       17 SETTABLEKS                       R2 R1 K4 ["originalOrder"]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R1 K5 ["originalThumbnails"]
       23 SETTABLEKS                       R1 R0 K7 ["state"]
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K8 ["promptForThumbnails"]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R1 R0 K9 ["addThumbnails"]
       37 NEWCLOSURE                       R1 P2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K10 ["deleteThumbnail"]
       42 NEWCLOSURE                       R1 P3
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K11 ["orderChanged"]
       47 NEWCLOSURE                       R1 P4
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K12 ["thumbnailsChanged"]
       52 NEWCLOSURE                       R1 P5
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K13 ["updateThumbnailChangeInfo"]
       56 NEWCLOSURE                       R1 P6
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K14 ["initializeThumbnails"]
       60 NEWCLOSURE                       R1 P7
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U4
       63 SETTABLEKS                       R1 R0 K15 ["onCloseRejectedDialog"]
       65 RETURN                           R0 0

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
       18 DUPTABLE                         R9 K27 [{"AddThumbnail", "AltTextError", "DeleteThumbnail", "Enabled", "ErrorMessage", "IsVideoAllowed", "LayoutOrder", "Order", "MaxThumbnails", "Notes", "ShowAltText", "ShowTitle", "ThumbnailOrderChanged", "Thumbnails", "ThumbnailsChanged", "ThumbnailSize"}]
       19 GETTABLEKS                       R10 R0 K28 ["addThumbnails"]
       21 SETTABLEKS                       R10 R9 K11 ["AddThumbnail"]
       23 GETTABLEKS                       R10 R2 K29 ["altTextError"]
       25 SETTABLEKS                       R10 R9 K12 ["AltTextError"]
       27 GETTABLEKS                       R10 R0 K30 ["deleteThumbnail"]
       29 SETTABLEKS                       R10 R9 K13 ["DeleteThumbnail"]
       31 LOADB                            R10 1
       32 SETTABLEKS                       R10 R9 K14 ["Enabled"]
       34 GETTABLEKS                       R10 R2 K31 ["errorMessage"]
       36 SETTABLEKS                       R10 R9 K15 ["ErrorMessage"]
       38 GETTABLEKS                       R10 R1 K16 ["IsVideoAllowed"]
       40 SETTABLEKS                       R10 R9 K16 ["IsVideoAllowed"]
       42 GETTABLEKS                       R10 R1 K17 ["LayoutOrder"]
       44 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       46 GETTABLEKS                       R10 R2 K32 ["order"]
       48 SETTABLEKS                       R10 R9 K18 ["Order"]
       50 GETTABLEKS                       R10 R1 K19 ["MaxThumbnails"]
       52 SETTABLEKS                       R10 R9 K19 ["MaxThumbnails"]
       54 GETTABLEKS                       R10 R1 K20 ["Notes"]
       56 SETTABLEKS                       R10 R9 K20 ["Notes"]
       58 GETTABLEKS                       R10 R1 K21 ["ShowAltText"]
       60 SETTABLEKS                       R10 R9 K21 ["ShowAltText"]
       62 GETTABLEKS                       R10 R1 K22 ["ShowTitle"]
       64 SETTABLEKS                       R10 R9 K22 ["ShowTitle"]
       66 GETTABLEKS                       R10 R0 K33 ["orderChanged"]
       68 SETTABLEKS                       R10 R9 K23 ["ThumbnailOrderChanged"]
       70 GETTABLEKS                       R10 R2 K34 ["thumbnails"]
       72 SETTABLEKS                       R10 R9 K24 ["Thumbnails"]
       74 GETTABLEKS                       R10 R0 K35 ["thumbnailsChanged"]
       76 SETTABLEKS                       R10 R9 K25 ["ThumbnailsChanged"]
       78 GETTABLEKS                       R10 R1 K26 ["ThumbnailSize"]
       80 SETTABLEKS                       R10 R9 K26 ["ThumbnailSize"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K8 ["MultiImagePicker"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K2 ["createElement"]
       88 GETUPVAL                         R8 3
       89 DUPTABLE                         R9 K39 [{"Enabled", "Files", "OnClose", "Theme"}]
       90 GETTABLEKS                       R11 R2 K40 ["rejectedThumbnailNames"]
       92 JUMPIFNOTEQKNIL                  R11 ; [+2]
       94 LOADB                            R10 0 +1
       95 LOADB                            R10 1
       96 SETTABLEKS                       R10 R9 K14 ["Enabled"]
       98 GETTABLEKS                       R10 R2 K40 ["rejectedThumbnailNames"]
      100 SETTABLEKS                       R10 R9 K36 ["Files"]
      102 GETTABLEKS                       R10 R0 K41 ["onCloseRejectedDialog"]
      104 SETTABLEKS                       R10 R9 K37 ["OnClose"]
      106 GETTABLEKS                       R10 R1 K42 ["Stylizer"]
      108 SETTABLEKS                       R10 R9 K38 ["Theme"]
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K9 ["RejectedThumbnailDialog"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

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
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R15 R0 K20 ["SharedFlags"]
       75 GETTABLEKS                       R15 R15 K21 ["getFFlagDevFrameworkSettingsCliFix"]
       77 CALL                             R14 1 1
       78 CALL                             R14 0 1
       79 GETIMPORT                        R15 K23 [game]
       81 LOADK                            R17 K24 ["StudioService"]
       82 NAMECALL                         R15 R15 K25 ["GetService"]
       84 CALL                             R15 2 1
       85 JUMPIFNOT                        R14 ; [+3]
       86 MOVE                             R16 R12
       87 CALL                             R16 0 1
       88 JUMP                             ; [+11]
       89 GETIMPORT                        R17 K27 [settings]
       91 CALL                             R17 0 1
       92 LOADK                            R19 K28 ["FileMaxSizeBytes"]
       93 NAMECALL                         R17 R17 K29 ["GetFVariable"]
       95 CALL                             R17 2 -1
       96 FASTCALL                         TONUMBER ; [+2]
       97 GETIMPORT                        R16 K31 [tonumber]
       99 CALL                             R16 -1 1
      100 GETTABLEKS                       R17 R1 K32 ["PureComponent"]
      102 LOADK                            R19 K33 ["MultiImagePickerWrapper"]
      103 NAMECALL                         R17 R17 K34 ["extend"]
      105 CALL                             R17 2 1
      106 DUPCLOSURE                       R18 K35 [PROTO_12]
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R18 R17 K36 ["init"]
      114 DUPCLOSURE                       R18 K37 [PROTO_13]
      115 SETTABLEKS                       R18 R17 K38 ["didMount"]
      117 DUPCLOSURE                       R18 K39 [PROTO_14]
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R18 R17 K40 ["didUpdate"]
      121 DUPCLOSURE                       R18 K41 [PROTO_15]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R13
      126 SETTABLEKS                       R18 R17 K42 ["render"]
      128 MOVE                             R18 R3
      129 DUPTABLE                         R19 K44 [{"Stylizer"}]
      130 GETTABLEKS                       R20 R2 K43 ["Stylizer"]
      132 SETTABLEKS                       R20 R19 K43 ["Stylizer"]
      134 CALL                             R18 1 1
      135 MOVE                             R19 R17
      136 CALL                             R18 1 1
      137 MOVE                             R17 R18
      138 RETURN                           R17 1
