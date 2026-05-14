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
       30 DUPTABLE                         R6 K13 [{"name", "trigger", "action"}]
       31 LOADK                            R7 K14 ["GET_ASSET_DETAIL_FAILURE"]
       32 SETTABLEKS                       R7 R6 K10 ["name"]
       34 LOADK                            R7 K15 ["FailToGetAssetDetail"]
       35 SETTABLEKS                       R7 R6 K11 ["trigger"]
       37 LOADK                            R7 K16 ["CloseAssetConfig"]
       38 SETTABLEKS                       R7 R6 K12 ["action"]
       40 DUPTABLE                         R7 K13 [{"name", "trigger", "action"}]
       41 LOADK                            R8 K17 ["SET_ASSET_PRICE_FAILURE"]
       42 SETTABLEKS                       R8 R7 K10 ["name"]
       44 LOADK                            R8 K18 ["FailToSetPrice"]
       45 SETTABLEKS                       R8 R7 K11 ["trigger"]
       47 LOADK                            R8 K19 ["ShowPriceFailReason"]
       48 SETTABLEKS                       R8 R7 K12 ["action"]
       50 DUPTABLE                         R8 K13 [{"name", "trigger", "action"}]
       51 LOADK                            R9 K20 ["SET_ASSET_THUMBNAIL_FAILURE"]
       52 SETTABLEKS                       R9 R8 K10 ["name"]
       54 LOADK                            R9 K21 ["FaileToSetIcon"]
       55 SETTABLEKS                       R9 R8 K11 ["trigger"]
       57 LOADK                            R9 K22 ["ShowThumbnailFailReason"]
       58 SETTABLEKS                       R9 R8 K12 ["action"]
       60 NEWTABLE                         R9 4 0
       62 GETTABLEKS                       R10 R6 K10 ["name"]
       64 SETTABLE                         R6 R9 R10
       65 GETTABLEKS                       R10 R7 K10 ["name"]
       67 SETTABLE                         R7 R9 R10
       68 GETTABLEKS                       R10 R8 K10 ["name"]
       70 SETTABLE                         R8 R9 R10
       71 SETTABLEKS                       R9 R5 K23 ["NetworkErrors"]
       73 LOADK                            R9 K16 ["CloseAssetConfig"]
       74 SETTABLEKS                       R9 R5 K24 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       76 DUPTABLE                         R9 K26 [{"name", "image"}]
       77 GETTABLEKS                       R10 R2 K27 ["SIDE_TABS"]
       79 GETTABLEKS                       R10 R10 K28 ["General"]
       81 SETTABLEKS                       R10 R9 K10 ["name"]
       83 GETTABLEKS                       R10 R4 K29 ["GENERAL_SIDE_TAB"]
       85 SETTABLEKS                       R10 R9 K25 ["image"]
       87 DUPTABLE                         R10 K26 [{"name", "image"}]
       88 GETTABLEKS                       R11 R2 K27 ["SIDE_TABS"]
       90 GETTABLEKS                       R11 R11 K30 ["Versions"]
       92 SETTABLEKS                       R11 R10 K10 ["name"]
       94 GETTABLEKS                       R11 R4 K31 ["VERSIONS_SIDE_TAB"]
       96 SETTABLEKS                       R11 R10 K25 ["image"]
       98 DUPTABLE                         R11 K26 [{"name", "image"}]
       99 GETTABLEKS                       R12 R2 K27 ["SIDE_TABS"]
      101 GETTABLEKS                       R12 R12 K32 ["Sales"]
      103 SETTABLEKS                       R12 R11 K10 ["name"]
      105 GETTABLEKS                       R12 R4 K33 ["SALES_SIDE_TAB"]
      107 SETTABLEKS                       R12 R11 K25 ["image"]
      109 DUPTABLE                         R12 K34 [{"name"}]
      110 GETTABLEKS                       R13 R2 K27 ["SIDE_TABS"]
      112 GETTABLEKS                       R13 R13 K35 ["Override"]
      114 SETTABLEKS                       R13 R12 K10 ["name"]
      116 DUPTABLE                         R13 K26 [{"name", "image"}]
      117 GETTABLEKS                       R14 R2 K27 ["SIDE_TABS"]
      119 GETTABLEKS                       R14 R14 K36 ["Permissions"]
      121 SETTABLEKS                       R14 R13 K10 ["name"]
      123 GETTABLEKS                       R14 R4 K37 ["PERMISSIONS_SIDE_TAB"]
      125 SETTABLEKS                       R14 R13 K25 ["image"]
      127 DUPTABLE                         R14 K40 [{"User", "Group"}]
      128 LOADN                            R15 1
      129 SETTABLEKS                       R15 R14 K38 ["User"]
      131 LOADN                            R15 2
      132 SETTABLEKS                       R15 R14 K39 ["Group"]
      134 SETTABLEKS                       R14 R5 K41 ["OWNER_TYPES"]
      136 DUPCLOSURE                       R14 K42 [PROTO_0]
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R14 R5 K43 ["getAssetconfigContent"]
      145 DUPCLOSURE                       R14 K44 [PROTO_1]
      146 CAPTURE                          VAL R9
      147 SETTABLEKS                       R14 R5 K45 ["isGeneral"]
      149 DUPCLOSURE                       R14 K46 [PROTO_2]
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R14 R5 K47 ["isVersions"]
      153 DUPCLOSURE                       R14 K48 [PROTO_3]
      154 CAPTURE                          VAL R11
      155 SETTABLEKS                       R14 R5 K49 ["isSales"]
      157 DUPCLOSURE                       R14 K50 [PROTO_4]
      158 CAPTURE                          VAL R12
      159 SETTABLEKS                       R14 R5 K51 ["isOverride"]
      161 DUPCLOSURE                       R14 K52 [PROTO_5]
      162 CAPTURE                          VAL R13
      163 SETTABLEKS                       R14 R5 K53 ["isPermissions"]
      165 DUPCLOSURE                       R14 K54 [PROTO_6]
      166 CAPTURE                          VAL R12
      167 SETTABLEKS                       R14 R5 K55 ["getOverrideTab"]
      169 DUPCLOSURE                       R14 K56 [PROTO_7]
      170 CAPTURE                          VAL R9
      171 SETTABLEKS                       R14 R5 K57 ["getGeneralTab"]
      173 DUPCLOSURE                       R14 K58 [PROTO_8]
      174 CAPTURE                          VAL R9
      175 SETTABLEKS                       R14 R5 K59 ["getDefaultTab"]
      177 DUPCLOSURE                       R14 K60 [PROTO_9]
      178 CAPTURE                          VAL R10
      179 SETTABLEKS                       R14 R5 K61 ["getVersionsTab"]
      181 RETURN                           R5 1
