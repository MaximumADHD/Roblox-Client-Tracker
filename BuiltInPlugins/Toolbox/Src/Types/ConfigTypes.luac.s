PROTO_0:
        0 NEWTABLE                         R5 0 1
        2 GETUPVAL                         R6 0
        3 SETLIST                          R5 R6 1 [1]
        5 JUMPIFNOT                        R3 ; [+5]
        6 JUMPIFNOT                        R4 ; [+4]
        7 LENGTH                           R7 R5
        8 ADDK                             R6 R7 K0 [1]
        9 GETUPVAL                         R7 1
       10 SETTABLE                         R7 R5 R6
       11 GETIMPORT                        R6 K4 [Enum.AssetType.Model]
       13 JUMPIFNOTEQ                      R2 R6 ; [+17]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["queryParam"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K6 ["keys"]
       23 GETTABLEKS                       R9 R9 K7 ["SHOW_VERSIONS_TAB"]
       25 CALL                             R6 3 1
       26 JUMPIFNOT                        R6 ; [+4]
       27 LENGTH                           R7 R5
       28 ADDK                             R6 R7 K0 [1]
       29 GETUPVAL                         R7 3
       30 SETTABLE                         R7 R5 R6
       31 JUMPIFNOT                        R4 ; [+10]
       32 GETTABLEKS                       R6 R4 K8 ["typeId"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K9 ["OWNER_TYPES"]
       37 GETTABLEKS                       R7 R7 K10 ["Group"]
       39 JUMPIFNOTEQ                      R6 R7 ; [+2]
       41 RETURN                           R5 1
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K5 ["queryParam"]
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K6 ["keys"]
       50 GETTABLEKS                       R9 R9 K11 ["SHOW_SALES_TAB"]
       52 CALL                             R6 3 1
       53 JUMPIFNOT                        R6 ; [+4]
       54 LENGTH                           R7 R5
       55 ADDK                             R6 R7 K0 [1]
       56 GETUPVAL                         R7 5
       57 SETTABLE                         R7 R5 R6
       58 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AssetConfigConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["ScreenSetup"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Images"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 16 0
       30 DUPTABLE                         R6 K16 [{["name"] = "GET_ASSET_DETAIL_FAILURE", ["trigger"] = "FailToGetAssetDetail", ["action"] = "CloseAssetConfig"}]
       31 DUPTABLE                         R7 K20 [{["name"] = "SET_ASSET_PRICE_FAILURE", ["trigger"] = "FailToSetPrice", ["action"] = "ShowPriceFailReason"}]
       32 DUPTABLE                         R8 K24 [{["name"] = "SET_ASSET_THUMBNAIL_FAILURE", ["trigger"] = "FaileToSetIcon", ["action"] = "ShowThumbnailFailReason"}]
       33 NEWTABLE                         R9 4 0
       35 GETTABLEKS                       R10 R6 K10 ["name"]
       37 SETTABLE                         R6 R9 R10
       38 GETTABLEKS                       R10 R7 K10 ["name"]
       40 SETTABLE                         R7 R9 R10
       41 GETTABLEKS                       R10 R8 K10 ["name"]
       43 SETTABLE                         R8 R9 R10
       44 SETTABLEKS                       R9 R5 K25 ["NetworkErrors"]
       46 LOADK                            R9 K15 ["CloseAssetConfig"]
       47 SETTABLEKS                       R9 R5 K26 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       49 DUPTABLE                         R9 K28 [{"name", "image"}]
       50 GETTABLEKS                       R10 R2 K29 ["SIDE_TABS"]
       52 GETTABLEKS                       R10 R10 K30 ["General"]
       54 SETTABLEKS                       R10 R9 K10 ["name"]
       56 GETTABLEKS                       R10 R4 K31 ["GENERAL_SIDE_TAB"]
       58 SETTABLEKS                       R10 R9 K27 ["image"]
       60 DUPTABLE                         R10 K28 [{"name", "image"}]
       61 GETTABLEKS                       R11 R2 K29 ["SIDE_TABS"]
       63 GETTABLEKS                       R11 R11 K32 ["Versions"]
       65 SETTABLEKS                       R11 R10 K10 ["name"]
       67 GETTABLEKS                       R11 R4 K33 ["VERSIONS_SIDE_TAB"]
       69 SETTABLEKS                       R11 R10 K27 ["image"]
       71 DUPTABLE                         R11 K28 [{"name", "image"}]
       72 GETTABLEKS                       R12 R2 K29 ["SIDE_TABS"]
       74 GETTABLEKS                       R12 R12 K34 ["Sales"]
       76 SETTABLEKS                       R12 R11 K10 ["name"]
       78 GETTABLEKS                       R12 R4 K35 ["SALES_SIDE_TAB"]
       80 SETTABLEKS                       R12 R11 K27 ["image"]
       82 DUPTABLE                         R12 K36 [{"name"}]
       83 GETTABLEKS                       R13 R2 K29 ["SIDE_TABS"]
       85 GETTABLEKS                       R13 R13 K37 ["Override"]
       87 SETTABLEKS                       R13 R12 K10 ["name"]
       89 DUPTABLE                         R13 K28 [{"name", "image"}]
       90 GETTABLEKS                       R14 R2 K29 ["SIDE_TABS"]
       92 GETTABLEKS                       R14 R14 K38 ["Permissions"]
       94 SETTABLEKS                       R14 R13 K10 ["name"]
       96 GETTABLEKS                       R14 R4 K39 ["PERMISSIONS_SIDE_TAB"]
       98 SETTABLEKS                       R14 R13 K27 ["image"]
      100 DUPTABLE                         R14 K44 [{["User"] = 1, ["Group"] = 2}]
      101 SETTABLEKS                       R14 R5 K45 ["OWNER_TYPES"]
      103 DUPCLOSURE                       R14 K46 [PROTO_0]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R14 R5 K47 ["getAssetconfigContent"]
      112 DUPCLOSURE                       R14 K48 [PROTO_1]
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R14 R5 K49 ["isGeneral"]
      116 DUPCLOSURE                       R14 K50 [PROTO_2]
      117 CAPTURE                          VAL R10
      118 SETTABLEKS                       R14 R5 K51 ["isVersions"]
      120 DUPCLOSURE                       R14 K52 [PROTO_3]
      121 CAPTURE                          VAL R11
      122 SETTABLEKS                       R14 R5 K53 ["isSales"]
      124 DUPCLOSURE                       R14 K54 [PROTO_4]
      125 CAPTURE                          VAL R12
      126 SETTABLEKS                       R14 R5 K55 ["isOverride"]
      128 DUPCLOSURE                       R14 K56 [PROTO_5]
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R14 R5 K57 ["isPermissions"]
      132 DUPCLOSURE                       R14 K58 [PROTO_6]
      133 CAPTURE                          VAL R12
      134 SETTABLEKS                       R14 R5 K59 ["getOverrideTab"]
      136 DUPCLOSURE                       R14 K60 [PROTO_7]
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R14 R5 K61 ["getGeneralTab"]
      140 DUPCLOSURE                       R14 K62 [PROTO_8]
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R14 R5 K63 ["getDefaultTab"]
      144 DUPCLOSURE                       R14 K64 [PROTO_9]
      145 CAPTURE                          VAL R10
      146 SETTABLEKS                       R14 R5 K65 ["getVersionsTab"]
      148 RETURN                           R5 1
