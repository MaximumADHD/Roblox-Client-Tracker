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
       11 GETUPVAL                         R7 2
       12 CALL                             R7 0 1
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETUPVAL                         R7 3
       15 GETTABLE                         R6 R7 R2
       16 JUMP                             ; [+6]
       17 GETIMPORT                        R7 K4 [Enum.AssetType.Model]
       19 JUMPIFEQ                         R2 R7 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 JUMPIFNOT                        R6 ; [+16]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K5 ["queryParam"]
       27 MOVE                             R8 R1
       28 MOVE                             R9 R2
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K6 ["keys"]
       32 GETTABLEKS                       R10 R10 K7 ["SHOW_VERSIONS_TAB"]
       34 CALL                             R7 3 1
       35 JUMPIFNOT                        R7 ; [+4]
       36 LENGTH                           R8 R5
       37 ADDK                             R7 R8 K0 [1]
       38 GETUPVAL                         R8 5
       39 SETTABLE                         R8 R5 R7
       40 JUMPIFNOT                        R4 ; [+10]
       41 GETTABLEKS                       R7 R4 K8 ["typeId"]
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R8 R8 K9 ["OWNER_TYPES"]
       46 GETTABLEKS                       R8 R8 K10 ["Group"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+2]
       50 RETURN                           R5 1
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K5 ["queryParam"]
       54 MOVE                             R8 R1
       55 MOVE                             R9 R2
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R10 R10 K6 ["keys"]
       59 GETTABLEKS                       R10 R10 K11 ["SHOW_SALES_TAB"]
       61 CALL                             R7 3 1
       62 JUMPIFNOT                        R7 ; [+4]
       63 LENGTH                           R8 R5
       64 ADDK                             R7 R8 K0 [1]
       65 GETUPVAL                         R8 7
       66 SETTABLE                         R8 R5 R7
       67 RETURN                           R5 1

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

PROTO_10:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+27]
        3 LOADB                            R2 0
        4 GETTABLEKS                       R3 R1 K0 ["typeId"]
        6 JUMPIFEQKNIL                     R3 ; [+22]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R1 K0 ["typeId"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["OWNER_TYPES"]
       14 GETTABLEKS                       R4 R4 K2 ["User"]
       16 JUMPIFEQ                         R3 R4 ; [+12]
       18 GETTABLEKS                       R3 R1 K0 ["typeId"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["OWNER_TYPES"]
       23 GETTABLEKS                       R4 R4 K3 ["Group"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

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
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K3 ["Src"]
       32 GETTABLEKS                       R6 R6 K10 ["Flags"]
       34 GETTABLEKS                       R6 R6 K11 ["getFFlagToolboxEnableExtendedVersioning"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 16 0
       39 DUPTABLE                         R7 K18 [{["name"] = "GET_ASSET_DETAIL_FAILURE", ["trigger"] = "FailToGetAssetDetail", ["action"] = "CloseAssetConfig"}]
       40 DUPTABLE                         R8 K22 [{["name"] = "SET_ASSET_PRICE_FAILURE", ["trigger"] = "FailToSetPrice", ["action"] = "ShowPriceFailReason"}]
       41 DUPTABLE                         R9 K26 [{["name"] = "SET_ASSET_THUMBNAIL_FAILURE", ["trigger"] = "FaileToSetIcon", ["action"] = "ShowThumbnailFailReason"}]
       42 NEWTABLE                         R10 4 0
       44 GETTABLEKS                       R11 R7 K12 ["name"]
       46 SETTABLE                         R7 R10 R11
       47 GETTABLEKS                       R11 R8 K12 ["name"]
       49 SETTABLE                         R8 R10 R11
       50 GETTABLEKS                       R11 R9 K12 ["name"]
       52 SETTABLE                         R9 R10 R11
       53 SETTABLEKS                       R10 R6 K27 ["NetworkErrors"]
       55 LOADK                            R10 K17 ["CloseAssetConfig"]
       56 SETTABLEKS                       R10 R6 K28 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       58 DUPTABLE                         R10 K30 [{"name", "image"}]
       59 GETTABLEKS                       R11 R2 K31 ["SIDE_TABS"]
       61 GETTABLEKS                       R11 R11 K32 ["General"]
       63 SETTABLEKS                       R11 R10 K12 ["name"]
       65 GETTABLEKS                       R11 R4 K33 ["GENERAL_SIDE_TAB"]
       67 SETTABLEKS                       R11 R10 K29 ["image"]
       69 DUPTABLE                         R11 K30 [{"name", "image"}]
       70 GETTABLEKS                       R12 R2 K31 ["SIDE_TABS"]
       72 GETTABLEKS                       R12 R12 K34 ["Versions"]
       74 SETTABLEKS                       R12 R11 K12 ["name"]
       76 GETTABLEKS                       R12 R4 K35 ["VERSIONS_SIDE_TAB"]
       78 SETTABLEKS                       R12 R11 K29 ["image"]
       80 DUPTABLE                         R12 K30 [{"name", "image"}]
       81 GETTABLEKS                       R13 R2 K31 ["SIDE_TABS"]
       83 GETTABLEKS                       R13 R13 K36 ["Sales"]
       85 SETTABLEKS                       R13 R12 K12 ["name"]
       87 GETTABLEKS                       R13 R4 K37 ["SALES_SIDE_TAB"]
       89 SETTABLEKS                       R13 R12 K29 ["image"]
       91 DUPTABLE                         R13 K38 [{"name"}]
       92 GETTABLEKS                       R14 R2 K31 ["SIDE_TABS"]
       94 GETTABLEKS                       R14 R14 K39 ["Override"]
       96 SETTABLEKS                       R14 R13 K12 ["name"]
       98 DUPTABLE                         R14 K30 [{"name", "image"}]
       99 GETTABLEKS                       R15 R2 K31 ["SIDE_TABS"]
      101 GETTABLEKS                       R15 R15 K40 ["Permissions"]
      103 SETTABLEKS                       R15 R14 K12 ["name"]
      105 GETTABLEKS                       R15 R4 K41 ["PERMISSIONS_SIDE_TAB"]
      107 SETTABLEKS                       R15 R14 K29 ["image"]
      109 LOADN                            R15 3
      110 SETTABLEKS                       R15 R6 K42 ["EXPERIENCE_OWNER_TYPE_ID"]
      112 DUPTABLE                         R15 K47 [{["User"] = 1, ["Group"] = 2}]
      113 SETTABLEKS                       R15 R6 K48 ["OWNER_TYPES"]
      115 NEWTABLE                         R15 4 0
      117 GETIMPORT                        R16 K52 [Enum.AssetType.Model]
      119 LOADB                            R17 1
      120 SETTABLE                         R17 R15 R16
      121 GETIMPORT                        R16 K54 [Enum.AssetType.Mesh]
      123 LOADB                            R17 1
      124 SETTABLE                         R17 R15 R16
      125 GETIMPORT                        R16 K56 [Enum.AssetType.Animation]
      127 LOADB                            R17 1
      128 SETTABLE                         R17 R15 R16
      129 GETIMPORT                        R16 K58 [Enum.AssetType.Image]
      131 LOADB                            R17 1
      132 SETTABLE                         R17 R15 R16
      133 DUPCLOSURE                       R16 K59 [PROTO_0]
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R16 R6 K60 ["getAssetconfigContent"]
      144 DUPCLOSURE                       R16 K61 [PROTO_1]
      145 CAPTURE                          VAL R10
      146 SETTABLEKS                       R16 R6 K62 ["isGeneral"]
      148 DUPCLOSURE                       R16 K63 [PROTO_2]
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R16 R6 K64 ["isVersions"]
      152 DUPCLOSURE                       R16 K65 [PROTO_3]
      153 CAPTURE                          VAL R12
      154 SETTABLEKS                       R16 R6 K66 ["isSales"]
      156 DUPCLOSURE                       R16 K67 [PROTO_4]
      157 CAPTURE                          VAL R13
      158 SETTABLEKS                       R16 R6 K68 ["isOverride"]
      160 DUPCLOSURE                       R16 K69 [PROTO_5]
      161 CAPTURE                          VAL R14
      162 SETTABLEKS                       R16 R6 K70 ["isPermissions"]
      164 DUPCLOSURE                       R16 K71 [PROTO_6]
      165 CAPTURE                          VAL R13
      166 SETTABLEKS                       R16 R6 K72 ["getOverrideTab"]
      168 DUPCLOSURE                       R16 K73 [PROTO_7]
      169 CAPTURE                          VAL R10
      170 SETTABLEKS                       R16 R6 K74 ["getGeneralTab"]
      172 DUPCLOSURE                       R16 K75 [PROTO_8]
      173 CAPTURE                          VAL R10
      174 SETTABLEKS                       R16 R6 K76 ["getDefaultTab"]
      176 DUPCLOSURE                       R16 K77 [PROTO_9]
      177 CAPTURE                          VAL R11
      178 SETTABLEKS                       R16 R6 K78 ["getVersionsTab"]
      180 DUPCLOSURE                       R16 K79 [PROTO_10]
      181 CAPTURE                          VAL R6
      182 SETTABLEKS                       R16 R6 K80 ["isUnsupportedOwner"]
      184 RETURN                           R6 1
