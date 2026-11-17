PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["toDateTime"]
        9 MOVE                             R10 R8
       10 CALL                             R9 1 1
       11 JUMPIFNOT                        R9 ; [+16]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETTABLEKS                       R10 R9 K1 ["UnixTimestampMillis"]
       15 GETTABLEKS                       R11 R2 K1 ["UnixTimestampMillis"]
       17 JUMPIFNOTLT                      R10 R11 ; [+2]
       19 MOVE                             R2 R9
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETTABLEKS                       R10 R9 K1 ["UnixTimestampMillis"]
       23 GETTABLEKS                       R11 R3 K1 ["UnixTimestampMillis"]
       25 JUMPIFNOTLT                      R11 R10 ; [+2]
       27 MOVE                             R3 R9
       28 FORGLOOP                         R4 2 ; [-23]
       30 JUMPIFNOT                        R2 ; [+20]
       31 JUMPIFNOT                        R3 ; [+19]
       32 GETTABLEKS                       R4 R3 K1 ["UnixTimestampMillis"]
       34 GETTABLEKS                       R5 R2 K1 ["UnixTimestampMillis"]
       36 JUMPIFEQ                         R4 R5 ; [+14]
       38 LOADK                            R4 K2 ["%* – %*"]
       39 GETUPVAL                         R6 1
       40 MOVE                             R7 R2
       41 MOVE                             R8 R1
       42 CALL                             R6 2 1
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R3
       45 MOVE                             R9 R1
       46 CALL                             R7 2 1
       47 NAMECALL                         R4 R4 K3 ["format"]
       49 CALL                             R4 3 1
       50 RETURN                           R4 1
       51 GETUPVAL                         R4 1
       52 MOVE                             R5 R2
       53 MOVE                             R6 R1
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["InsertType"]
        4 GETTABLEKS                       R2 R2 K1 ["DetailsDrawer"]
        6 NAMECALL                         R0 R0 K2 ["setAnalyticsInsertAction"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["MenuContext"]
       12 GETTABLEKS                       R4 R4 K2 ["Asset"]
       14 CALL                             R3 1 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 GETUPVAL                         R5 6
       20 GETTABLEKS                       R5 R5 K3 ["createElement"]
       22 GETUPVAL                         R6 7
       23 GETTABLEKS                       R6 R6 K4 ["View"]
       25 DUPTABLE                         R7 K9 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"] = "details-drawer-asset-header"}]
       26 DUPTABLE                         R8 K14 [{"Title", "InsertButton", "EditButton", "MoreButton"}]
       27 GETUPVAL                         R9 6
       28 GETTABLEKS                       R9 R9 K3 ["createElement"]
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R10 R10 K15 ["Text"]
       33 DUPTABLE                         R11 K20 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["testId"] = "details-drawer-asset-name"}]
       34 GETTABLEKS                       R12 R0 K10 ["Title"]
       36 SETTABLEKS                       R12 R11 K15 ["Text"]
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K10 ["Title"]
       41 NAMECALL                         R10 R1 K21 ["selectionHasInsertableAssets"]
       43 CALL                             R10 1 1
       44 JUMPIFNOT                        R10 ; [+36]
       45 GETUPVAL                         R9 6
       46 GETTABLEKS                       R9 R9 K3 ["createElement"]
       48 GETUPVAL                         R10 7
       49 GETTABLEKS                       R10 R10 K22 ["Button"]
       51 DUPTABLE                         R11 K29 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["size"], ["testId"] = "details-drawer-insert-button"}]
       52 LOADK                            R14 K30 ["ContextMenu"]
       53 LOADK                            R15 K31 ["Insert"]
       54 NAMECALL                         R12 R2 K32 ["getText"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K24 ["text"]
       59 SETTABLEKS                       R4 R11 K25 ["onActivated"]
       61 GETUPVAL                         R12 7
       62 GETTABLEKS                       R12 R12 K33 ["Enums"]
       64 GETTABLEKS                       R12 R12 K34 ["ButtonVariant"]
       66 GETTABLEKS                       R12 R12 K35 ["Standard"]
       68 SETTABLEKS                       R12 R11 K26 ["variant"]
       70 GETUPVAL                         R12 7
       71 GETTABLEKS                       R12 R12 K33 ["Enums"]
       73 GETTABLEKS                       R12 R12 K36 ["InputSize"]
       75 GETTABLEKS                       R12 R12 K37 ["XSmall"]
       77 SETTABLEKS                       R12 R11 K27 ["size"]
       79 CALL                             R9 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R8 K11 ["InsertButton"]
       84 GETUPVAL                         R9 8
       85 GETTABLEKS                       R9 R9 K38 ["ActionButton"]
       87 LOADN                            R10 3
       88 GETUPVAL                         R11 7
       89 GETTABLEKS                       R11 R11 K33 ["Enums"]
       91 GETTABLEKS                       R11 R11 K39 ["IconName"]
       93 GETTABLEKS                       R11 R11 K40 ["Pencil"]
       95 LOADK                            R14 K41 ["DetailsDrawer"]
       96 LOADK                            R15 K42 ["NotEditable"]
       97 NAMECALL                         R12 R2 K32 ["getText"]
       99 CALL                             R12 3 1
      100 GETUPVAL                         R13 7
      101 GETTABLEKS                       R13 R13 K33 ["Enums"]
      103 GETTABLEKS                       R13 R13 K43 ["PopoverAlign"]
      105 GETTABLEKS                       R13 R13 K44 ["End"]
      107 DUPCLOSURE                       R14 K45 [PROTO_2]
      108 LOADK                            R15 K46 ["details-drawer-edit-button"]
      109 LOADB                            R16 1
      110 CALL                             R9 7 1
      111 SETTABLEKS                       R9 R8 K12 ["EditButton"]
      113 GETUPVAL                         R9 8
      114 GETTABLEKS                       R9 R9 K38 ["ActionButton"]
      116 LOADN                            R10 4
      117 GETUPVAL                         R11 7
      118 GETTABLEKS                       R11 R11 K33 ["Enums"]
      120 GETTABLEKS                       R11 R11 K39 ["IconName"]
      122 GETTABLEKS                       R11 R11 K47 ["ThreeDotsHorizontal"]
      124 LOADK                            R14 K48 ["Tooltip"]
      125 LOADK                            R15 K49 ["CompactOptions"]
      126 NAMECALL                         R12 R2 K32 ["getText"]
      128 CALL                             R12 3 1
      129 GETUPVAL                         R13 7
      130 GETTABLEKS                       R13 R13 K33 ["Enums"]
      132 GETTABLEKS                       R13 R13 K43 ["PopoverAlign"]
      134 GETTABLEKS                       R13 R13 K44 ["End"]
      136 MOVE                             R14 R3
      137 LOADK                            R15 K50 ["details-drawer-more-button"]
      138 CALL                             R9 6 1
      139 SETTABLEKS                       R9 R8 K13 ["MoreButton"]
      141 CALL                             R5 3 -1
      142 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 GETTABLEKS                       R5 R0 K1 ["Assets"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K2 ["AssetType"]
       17 LOADB                            R11 1
       18 SETTABLE                         R11 R2 R10
       19 GETTABLEKS                       R12 R9 K3 ["Created"]
       21 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       23 MOVE                             R11 R3
       24 GETIMPORT                        R10 K6 [table.insert]
       26 CALL                             R10 2 0
       27 GETTABLEKS                       R12 R9 K7 ["Modified"]
       29 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       31 MOVE                             R11 R4
       32 GETIMPORT                        R10 K6 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-21]
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R2
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 MOVE                             R12 R5
       44 LOADK                            R15 K2 ["AssetType"]
       45 MOVE                             R16 R9
       46 NAMECALL                         R13 R1 K8 ["getText"]
       48 CALL                             R13 3 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R11 K6 [table.insert]
       52 CALL                             R11 -1 0
       53 FORGLOOP                         R6 1 ; [-11]
       55 GETIMPORT                        R6 K10 [table.sort]
       57 MOVE                             R7 R5
       58 CALL                             R6 1 0
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K11 ["createRowList"]
       62 CALL                             R6 0 2
       63 MOVE                             R8 R7
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K12 ["AssetTypes"]
       67 LOADK                            R12 K13 ["AssetProperty"]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K12 ["AssetTypes"]
       71 NAMECALL                         R10 R1 K8 ["getText"]
       73 CALL                             R10 3 1
       74 GETIMPORT                        R11 K15 [table.concat]
       76 MOVE                             R12 R5
       77 LOADK                            R13 K16 [", "]
       78 CALL                             R11 2 -1
       79 CALL                             R8 -1 0
       80 MOVE                             R8 R7
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K3 ["Created"]
       84 LOADK                            R12 K13 ["AssetProperty"]
       85 GETUPVAL                         R13 3
       86 GETTABLEKS                       R13 R13 K3 ["Created"]
       88 NAMECALL                         R10 R1 K8 ["getText"]
       90 CALL                             R10 3 1
       91 GETUPVAL                         R11 4
       92 MOVE                             R12 R3
       93 NAMECALL                         R13 R1 K17 ["getLocale"]
       95 CALL                             R13 1 -1
       96 CALL                             R11 -1 -1
       97 CALL                             R8 -1 0
       98 MOVE                             R8 R7
       99 GETUPVAL                         R9 3
      100 GETTABLEKS                       R9 R9 K7 ["Modified"]
      102 LOADK                            R12 K13 ["AssetProperty"]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R13 R13 K7 ["Modified"]
      106 NAMECALL                         R10 R1 K8 ["getText"]
      108 CALL                             R10 3 1
      109 GETUPVAL                         R11 4
      110 MOVE                             R12 R4
      111 NAMECALL                         R13 R1 K17 ["getLocale"]
      113 CALL                             R13 1 -1
      114 CALL                             R11 -1 -1
      115 CALL                             R8 -1 0
      116 GETUPVAL                         R8 5
      117 GETTABLEKS                       R8 R8 K18 ["createElement"]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K19 ["DrawerBody"]
      122 DUPTABLE                         R10 K23 [{"LayoutOrder", "Thumbnail", "AssetHeader"}]
      123 GETTABLEKS                       R11 R0 K20 ["LayoutOrder"]
      125 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K18 ["createElement"]
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R12 R12 K24 ["ThumbnailSquare"]
      133 LOADNIL                          R13
      134 DUPTABLE                         R14 K26 [{"Content"}]
      135 GETUPVAL                         R15 5
      136 GETTABLEKS                       R15 R15 K18 ["createElement"]
      138 GETUPVAL                         R16 6
      139 GETTABLEKS                       R16 R16 K27 ["Image"]
      141 DUPTABLE                         R17 K32 [{["Image"], ["tag"] = "size-full", ["testId"] = "details-drawer-default-thumbnail"}]
      142 GETUPVAL                         R18 7
      143 GETTABLEKS                       R18 R18 K33 ["get"]
      145 GETUPVAL                         R19 7
      146 GETTABLEKS                       R19 R19 K34 ["AvailableImages"]
      148 GETTABLEKS                       R19 R19 K35 ["DefaultThumbnail"]
      150 CALL                             R18 1 1
      151 SETTABLEKS                       R18 R17 K27 ["Image"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K25 ["Content"]
      156 CALL                             R11 3 1
      157 SETTABLEKS                       R11 R10 K21 ["Thumbnail"]
      159 GETUPVAL                         R11 5
      160 GETTABLEKS                       R11 R11 K18 ["createElement"]
      162 GETUPVAL                         R12 8
      163 DUPTABLE                         R13 K37 [{"Title"}]
      164 LOADK                            R16 K13 ["AssetProperty"]
      165 LOADK                            R17 K38 ["AssetsSelected"]
      166 DUPTABLE                         R18 K40 [{"count"}]
      167 GETUPVAL                         R20 9
      168 GETTABLEKS                       R20 R20 K39 ["count"]
      170 GETTABLEKS                       R21 R0 K1 ["Assets"]
      172 CALL                             R20 1 -1
      173 FASTCALL                         TOSTRING ; [+2]
      174 GETIMPORT                        R19 K42 [tostring]
      176 CALL                             R19 -1 1
      177 SETTABLEKS                       R19 R18 K39 ["count"]
      179 NAMECALL                         R14 R1 K8 ["getText"]
      181 CALL                             R14 4 1
      182 SETTABLEKS                       R14 R13 K36 ["Title"]
      184 CALL                             R11 2 1
      185 SETTABLEKS                       R11 R10 K22 ["AssetHeader"]
      187 DUPTABLE                         R11 K44 [{"Details"}]
      188 GETUPVAL                         R12 5
      189 GETTABLEKS                       R12 R12 K18 ["createElement"]
      191 GETUPVAL                         R13 1
      192 GETTABLEKS                       R13 R13 K45 ["Section"]
      194 DUPTABLE                         R14 K49 [{["LayoutOrder"] = 1, ["Title"], ["TestId"] = "details-drawer-details"}]
      195 LOADK                            R17 K13 ["AssetProperty"]
      196 LOADK                            R18 K43 ["Details"]
      197 NAMECALL                         R15 R1 K8 ["getText"]
      199 CALL                             R15 3 1
      200 SETTABLEKS                       R15 R14 K36 ["Title"]
      202 MOVE                             R15 R6
      203 CALL                             R12 3 1
      204 SETTABLEKS                       R12 R11 K43 ["Details"]
      206 CALL                             R8 3 -1
      207 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Analytics"]
       45 GETTABLEKS                       R8 R8 K15 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K17 ["ItemsController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K15 ["Types"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K13 ["Src"]
       68 GETTABLEKS                       R11 R11 K18 ["Util"]
       70 GETTABLEKS                       R11 R11 K19 ["Images"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Packages"]
       77 GETTABLEKS                       R12 R12 K20 ["AssetManagement"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R11 K21 ["Utils"]
       82 GETTABLEKS                       R12 R12 K22 ["formatDateTime"]
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K13 ["Src"]
       88 GETTABLEKS                       R14 R14 K18 ["Util"]
       90 GETTABLEKS                       R14 R14 K23 ["insertItems"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K13 ["Src"]
       97 GETTABLEKS                       R15 R15 K24 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K25 ["useContextMenu"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETIMPORT                        R16 K1 [script]
      106 GETTABLEKS                       R16 R16 K26 ["Parent"]
      108 GETTABLEKS                       R16 R16 K27 ["Rows"]
      110 CALL                             R15 1 1
      111 GETTABLEKS                       R16 R9 K28 ["AssetInfoField"]
      113 GETTABLEKS                       R17 R9 K29 ["DetailsDrawerRow"]
      115 DUPCLOSURE                       R18 K30 [PROTO_0]
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R12
      118 DUPCLOSURE                       R19 K31 [PROTO_3]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R20 K32 [PROTO_4]
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R1
      139 RETURN                           R20 1
