PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_searches", "senders"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_searches"]
        5 MOVE                             R2 R0
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K1 ["senders"]
       10 GETUPVAL                         R4 1
       11 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K4 [setmetatable]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 NEWTABLE                         R2 0 0
        4 GETVARARGS                       R3 -1
        5 SETLIST                          R2 R3 -1 [1]
        7 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
        9 GETIMPORT                        R0 K2 [table.insert]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K2 [{"sendEventDeferredCalls", "sendEventDeferred"}]
        3 SETTABLEKS                       R0 R1 K0 ["sendEventDeferredCalls"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R1 K1 ["sendEventDeferred"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["new"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["getBreadcrumbRoute"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["getNavigationRoute"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R5 K4 [table.find]
        8 MOVE                             R6 R3
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K5 ["NAVIGATION"]
       12 GETTABLEKS                       R7 R7 K6 ["RESULTS"]
       14 CALL                             R5 2 1
       15 JUMPIFNOTEQKNIL                  R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 GETIMPORT                        R6 K4 [table.find]
       21 MOVE                             R7 R3
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K5 ["NAVIGATION"]
       25 GETTABLEKS                       R8 R8 K7 ["ALL_SUBCATEGORIES"]
       27 CALL                             R6 2 1
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 DUPTABLE                         R6 K12 [{"navBreadcrumbs", "navSwimlane", "navSeeAll", "navSeeAllSubcategory"}]
       33 GETUPVAL                         R7 1
       34 MOVE                             R9 R2
       35 NAMECALL                         R7 R7 K13 ["JSONEncode"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K8 ["navBreadcrumbs"]
       40 SETTABLEKS                       R1 R6 K9 ["navSwimlane"]
       42 SETTABLEKS                       R4 R6 K10 ["navSeeAll"]
       44 SETTABLEKS                       R5 R6 K11 ["navSeeAllSubcategory"]
       46 RETURN                           R6 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [delay]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETIMPORT                        R2 K4 [Enum.AssetType]
        4 NAMECALL                         R2 R2 K5 ["GetEnumItems"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K6 ["Value"]
       11 JUMPIFNOTEQ                      R6 R0 ; [+4]
       13 GETTABLEKS                       R6 R5 K7 ["Name"]
       15 RETURN                           R6 1
       16 FORGLOOP                         R1 2 [inext] ; [-8]
       18 LOADK                            R1 K8 [""]
       19 RETURN                           R1 1

PROTO_6:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["Asset"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["Asset"]
        7 GETTABLEKS                       R1 R1 K1 ["Id"]
        9 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isAssetDataTrackable"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 MOVE                             R2 R1
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETTABLEKS                       R2 R1 K1 ["searchId"]
       10 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["Context"]
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
        8 GETTABLEKS                       R4 R4 K2 ["join"]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R3
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R6 R3 K3 ["searchId"]
       15 JUMPIFEQKNIL                     R6 ; [+4]
       17 GETTABLEKS                       R5 R3 K3 ["searchId"]
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R5 R1 K3 ["searchId"]
       22 LOADNIL                          R6
       23 GETTABLEKS                       R7 R0 K4 ["Asset"]
       25 GETTABLEKS                       R7 R7 K5 ["AssetSubTypes"]
       27 JUMPIFNOT                        R7 ; [+6]
       28 GETIMPORT                        R8 K8 [table.concat]
       30 MOVE                             R9 R7
       31 LOADK                            R10 K9 [","]
       32 CALL                             R8 2 1
       33 MOVE                             R6 R8
       34 LOADNIL                          R8
       35 GETUPVAL                         R9 1
       36 CALL                             R9 0 1
       37 JUMPIF                           R9 ; [+1]
       38 JUMPIFNOT                        R2 ; [+71]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K1 ["Dictionary"]
       42 GETTABLEKS                       R9 R9 K2 ["join"]
       44 MOVE                             R10 R4
       45 DUPTABLE                         R11 K20 [{["assetId"], ["assetSubTypes"], ["assetType"], ["assetTypeId"], ["searchId"], ["isVerifiedCreator"], ["label"], ["value"] = 0, ["isEndorsed"], ["hasScripts"]}]
       46 GETTABLEKS                       R12 R0 K4 ["Asset"]
       48 GETTABLEKS                       R12 R12 K21 ["Id"]
       50 SETTABLEKS                       R12 R11 K10 ["assetId"]
       52 SETTABLEKS                       R6 R11 K11 ["assetSubTypes"]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K22 ["getAssetCategoryName"]
       57 GETTABLEKS                       R13 R0 K4 ["Asset"]
       59 GETTABLEKS                       R13 R13 K23 ["TypeId"]
       61 CALL                             R12 1 1
       62 SETTABLEKS                       R12 R11 K12 ["assetType"]
       64 GETUPVAL                         R13 1
       65 CALL                             R13 0 1
       66 JUMPIFNOT                        R13 ; [+5]
       67 GETTABLEKS                       R12 R0 K4 ["Asset"]
       69 GETTABLEKS                       R12 R12 K23 ["TypeId"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R12
       73 SETTABLEKS                       R12 R11 K13 ["assetTypeId"]
       75 SETTABLEKS                       R5 R11 K3 ["searchId"]
       77 GETTABLEKS                       R12 R0 K24 ["Creator"]
       79 GETTABLEKS                       R12 R12 K25 ["IsVerifiedCreator"]
       81 SETTABLEKS                       R12 R11 K14 ["isVerifiedCreator"]
       83 GETTABLEKS                       R12 R0 K4 ["Asset"]
       85 GETTABLEKS                       R12 R12 K21 ["Id"]
       87 SETTABLEKS                       R12 R11 K15 ["label"]
       89 GETTABLEKS                       R12 R0 K4 ["Asset"]
       91 GETTABLEKS                       R12 R12 K26 ["IsEndorsed"]
       93 SETTABLEKS                       R12 R11 K18 ["isEndorsed"]
       95 GETTABLEKS                       R12 R0 K4 ["Asset"]
       97 GETTABLEKS                       R12 R12 K27 ["HasScripts"]
       99 SETTABLEKS                       R12 R11 K19 ["hasScripts"]
      101 CALL                             R9 2 1
      102 MOVE                             R8 R9
      103 GETUPVAL                         R9 3
      104 GETTABLEKS                       R9 R9 K28 ["getWebViewTrackingAttributes"]
      106 MOVE                             R10 R8
      107 CALL                             R9 1 1
      108 MOVE                             R8 R9
      109 RETURN                           R8 1
      110 GETUPVAL                         R9 0
      111 GETTABLEKS                       R9 R9 K1 ["Dictionary"]
      113 GETTABLEKS                       R9 R9 K2 ["join"]
      115 MOVE                             R10 R4
      116 DUPTABLE                         R11 K37 [{["assetID"], ["assetId"], ["assetSubTypes"], ["assetType"], ["userID"], ["placeID"], ["platformID"], ["clientID"], ["searchID"], ["searchId"], ["studioSid"], ["isEditMode"], ["isVerifiedCreator"], ["label"], ["value"] = 0, ["isEndorsed"], ["hasScripts"]}]
      117 GETTABLEKS                       R12 R0 K4 ["Asset"]
      119 GETTABLEKS                       R12 R12 K21 ["Id"]
      121 SETTABLEKS                       R12 R11 K29 ["assetID"]
      123 GETTABLEKS                       R12 R0 K4 ["Asset"]
      125 GETTABLEKS                       R12 R12 K21 ["Id"]
      127 SETTABLEKS                       R12 R11 K10 ["assetId"]
      129 SETTABLEKS                       R6 R11 K11 ["assetSubTypes"]
      131 GETUPVAL                         R12 2
      132 GETTABLEKS                       R12 R12 K22 ["getAssetCategoryName"]
      134 GETTABLEKS                       R13 R0 K4 ["Asset"]
      136 GETTABLEKS                       R13 R13 K23 ["TypeId"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K12 ["assetType"]
      141 GETUPVAL                         R12 4
      142 CALL                             R12 0 1
      143 SETTABLEKS                       R12 R11 K30 ["userID"]
      145 GETUPVAL                         R12 3
      146 GETTABLEKS                       R12 R12 K38 ["getPlaceId"]
      148 CALL                             R12 0 1
      149 SETTABLEKS                       R12 R11 K31 ["placeID"]
      151 GETUPVAL                         R12 3
      152 GETTABLEKS                       R12 R12 K39 ["getPlatformId"]
      154 CALL                             R12 0 1
      155 SETTABLEKS                       R12 R11 K32 ["platformID"]
      157 GETUPVAL                         R12 3
      158 GETTABLEKS                       R12 R12 K40 ["getClientId"]
      160 CALL                             R12 0 1
      161 SETTABLEKS                       R12 R11 K33 ["clientID"]
      163 SETTABLEKS                       R5 R11 K34 ["searchID"]
      165 SETTABLEKS                       R5 R11 K3 ["searchId"]
      167 GETUPVAL                         R12 3
      168 GETTABLEKS                       R12 R12 K41 ["getStudioSessionId"]
      170 CALL                             R12 0 1
      171 SETTABLEKS                       R12 R11 K35 ["studioSid"]
      173 GETUPVAL                         R12 3
      174 GETTABLEKS                       R12 R12 K42 ["getIsEditMode"]
      176 CALL                             R12 0 1
      177 SETTABLEKS                       R12 R11 K36 ["isEditMode"]
      179 GETTABLEKS                       R12 R0 K24 ["Creator"]
      181 GETTABLEKS                       R12 R12 K25 ["IsVerifiedCreator"]
      183 SETTABLEKS                       R12 R11 K14 ["isVerifiedCreator"]
      185 GETTABLEKS                       R12 R0 K4 ["Asset"]
      187 GETTABLEKS                       R12 R12 K21 ["Id"]
      189 SETTABLEKS                       R12 R11 K15 ["label"]
      191 GETTABLEKS                       R12 R0 K4 ["Asset"]
      193 GETTABLEKS                       R12 R12 K26 ["IsEndorsed"]
      195 SETTABLEKS                       R12 R11 K18 ["isEndorsed"]
      197 GETTABLEKS                       R12 R0 K4 ["Asset"]
      199 GETTABLEKS                       R12 R12 K27 ["HasScripts"]
      201 SETTABLEKS                       R12 R11 K19 ["hasScripts"]
      203 CALL                             R9 2 1
      204 MOVE                             R8 R9
      205 GETUPVAL                         R9 3
      206 GETTABLEKS                       R9 R9 K28 ["getWebViewTrackingAttributes"]
      208 MOVE                             R10 R8
      209 CALL                             R9 1 1
      210 MOVE                             R8 R9
      211 RETURN                           R8 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["logFirstLuaAssetImpression"]
        3 CALL                             R5 0 0
        4 GETTABLEKS                       R5 R2 K1 ["toolboxTab"]
        6 JUMPIFNOTEQKS                    R5 K2 ["Marketplace"] ; [+6]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["logFirstStoreAssetImpression"]
       11 LOADB                            R6 0
       12 CALL                             R5 1 0
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["isAssetTrackable"]
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+1]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R5 R1 K5 ["Asset"]
       23 GETTABLEKS                       R5 R5 K6 ["Id"]
       25 GETTABLEKS                       R6 R2 K7 ["searchId"]
       27 GETTABLEKS                       R8 R0 K8 ["_searches"]
       29 GETTABLE                         R7 R8 R6
       30 JUMPIF                           R7 ; [+8]
       31 GETTABLEKS                       R7 R0 K8 ["_searches"]
       33 DUPTABLE                         R8 K10 [{"impressions"}]
       34 NEWTABLE                         R9 0 0
       36 SETTABLEKS                       R9 R8 K9 ["impressions"]
       38 SETTABLE                         R8 R7 R6
       39 GETTABLEKS                       R8 R0 K8 ["_searches"]
       41 GETTABLE                         R7 R8 R6
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K11 ["join"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K12 ["getTrackingAttributes"]
       48 MOVE                             R10 R1
       49 MOVE                             R11 R2
       50 CALL                             R9 2 1
       51 DUPTABLE                         R10 K14 [{"layoutMode"}]
       52 SETTABLEKS                       R4 R10 K13 ["layoutMode"]
       54 MOVE                             R11 R3
       55 JUMPIF                           R11 ; [+2]
       56 NEWTABLE                         R11 0 0
       58 CALL                             R8 3 1
       59 GETTABLEKS                       R10 R7 K9 ["impressions"]
       61 GETTABLE                         R9 R10 R5
       62 JUMPIF                           R9 ; [+19]
       63 GETTABLEKS                       R9 R0 K15 ["senders"]
       65 GETTABLEKS                       R9 R9 K16 ["sendEventDeferred"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K17 ["eventTarget"]
       70 LOADK                            R11 K2 ["Marketplace"]
       71 LOADK                            R12 K18 ["MarketplaceAssetImpression"]
       72 MOVE                             R13 R8
       73 CALL                             R9 4 0
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K19 ["incrementAssetImpressionCounter"]
       77 CALL                             R9 0 0
       78 GETTABLEKS                       R9 R7 K9 ["impressions"]
       80 LOADB                            R10 1
       81 SETTABLE                         R10 R9 R5
       82 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isAssetTrackable"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["getTrackingAttributes"]
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+4]
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R5 R3 K2 ["purchaserStatus"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 GETTABLEKS                       R6 R1 K3 ["FiatProduct"]
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETTABLEKS                       R6 R1 K3 ["FiatProduct"]
       27 GETTABLEKS                       R6 R6 K4 ["PurchasePrice"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       32 GETTABLEKS                       R7 R7 K6 ["join"]
       34 MOVE                             R8 R4
       35 DUPTABLE                         R9 K10 [{"buyerStatus", "currencyCode", "fiatPrice"}]
       36 GETUPVAL                         R11 1
       37 CALL                             R11 0 1
       38 JUMPIFNOT                        R11 ; [+2]
       39 MOVE                             R10 R5
       40 JUMP                             ; [+1]
       41 MOVE                             R10 R3
       42 SETTABLEKS                       R10 R9 K7 ["buyerStatus"]
       44 JUMPIFNOT                        R6 ; [+3]
       45 GETTABLEKS                       R10 R6 K8 ["currencyCode"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R10
       49 SETTABLEKS                       R10 R9 K8 ["currencyCode"]
       51 JUMPIFNOT                        R6 ; [+6]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K11 ["calculateQuantity"]
       55 MOVE                             R11 R6
       56 CALL                             R10 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R10
       59 SETTABLEKS                       R10 R9 K9 ["fiatPrice"]
       61 CALL                             R7 2 1
       62 MOVE                             R4 R7
       63 GETTABLEKS                       R7 R0 K12 ["senders"]
       65 GETTABLEKS                       R7 R7 K13 ["sendEventDeferred"]
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K14 ["eventTarget"]
       70 LOADK                            R9 K15 ["Marketplace"]
       71 LOADK                            R10 K16 ["MarketplaceAssetPreview"]
       72 MOVE                             R11 R4
       73 CALL                             R7 4 0
       74 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R1 ; [+2]
        2 GETIMPORT                        R0 K1 [type]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["table"] ; [+11]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R5 0
       11 GETTABLEN                        R4 R5 1
       12 GETUPVAL                         R5 4
       13 NAMECALL                         R0 R0 K3 ["logRemainsOrDeleted"]
       15 CALL                             R0 5 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 4
       22 NAMECALL                         R0 R0 K3 ["logRemainsOrDeleted"]
       24 CALL                             R0 5 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["isAssetTrackable"]
        3 MOVE                             R9 R1
        4 MOVE                             R10 R4
        5 CALL                             R8 2 1
        6 JUMPIF                           R8 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R9 1
        9 CALL                             R9 0 1
       10 JUMPIFNOT                        R9 ; [+4]
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R8 R8 K1 ["eventTarget"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 DUPTABLE                         R9 K5 [{"method", "layoutMode", "insertDuration"}]
       17 SETTABLEKS                       R2 R9 K2 ["method"]
       19 SETTABLEKS                       R6 R9 K3 ["layoutMode"]
       21 SETTABLEKS                       R7 R9 K4 ["insertDuration"]
       23 GETUPVAL                         R10 3
       24 GETTABLEKS                       R10 R10 K6 ["join"]
       26 MOVE                             R11 R9
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K7 ["getTrackingAttributes"]
       30 MOVE                             R13 R1
       31 MOVE                             R14 R4
       32 CALL                             R12 2 1
       33 DUPTABLE                         R13 K9 [{"navSwimlane"}]
       34 SETTABLEKS                       R5 R13 K8 ["navSwimlane"]
       36 CALL                             R10 3 1
       37 GETUPVAL                         R11 4
       38 CALL                             R11 0 1
       39 JUMPIFNOT                        R11 ; [+17]
       40 FASTCALL1                        TYPE R3 ; [+3]
       41 MOVE                             R13 R3
       42 GETIMPORT                        R12 K11 [type]
       44 CALL                             R12 1 1
       45 JUMPIFNOTEQKS                    R12 K12 ["table"] ; [+3]
       47 GETTABLEN                        R11 R3 1
       48 JUMP                             ; [+1]
       49 MOVE                             R11 R3
       50 JUMPIFNOT                        R11 ; [+3]
       51 GETTABLEKS                       R12 R11 K13 ["UniqueId"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R12
       55 SETTABLEKS                       R12 R10 K14 ["sourceAssetUniqueId"]
       57 GETUPVAL                         R11 1
       58 CALL                             R11 0 1
       59 JUMPIFNOT                        R11 ; [+10]
       60 GETTABLEKS                       R11 R0 K15 ["senders"]
       62 GETTABLEKS                       R11 R11 K16 ["sendEventDeferred"]
       64 MOVE                             R12 R8
       65 LOADK                            R13 K17 ["Marketplace"]
       66 LOADK                            R14 K18 ["MarketplaceInsert"]
       67 MOVE                             R15 R10
       68 CALL                             R11 4 0
       69 JUMP                             ; [+11]
       70 GETTABLEKS                       R11 R0 K15 ["senders"]
       72 GETTABLEKS                       R11 R11 K16 ["sendEventDeferred"]
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R12 R12 K1 ["eventTarget"]
       77 LOADK                            R13 K17 ["Marketplace"]
       78 LOADK                            R14 K18 ["MarketplaceInsert"]
       79 MOVE                             R15 R10
       80 CALL                             R11 4 0
       81 JUMPIFNOTEQKNIL                  R3 ; [+2]
       83 RETURN                           R0 0
       84 GETIMPORT                        R11 K20 [ipairs]
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K21 ["InsertRemainsCheckDelays"]
       89 CALL                             R11 1 3
       90 FORGPREP_INEXT                   R11
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K22 ["schedule"]
       94 MOVE                             R17 R15
       95 NEWCLOSURE                       R18 P0
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CALL                             R16 2 0
      102 FORGLOOP                         R11 2 [inext] ; [-12]
      104 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R3 ; [+5]
        1 GETTABLEKS                       R6 R3 K0 ["Parent"]
        3 JUMPIFNOT                        R6 ; [+2]
        4 LOADK                            R5 K1 ["InsertRemains"]
        5 JUMP                             ; [+1]
        6 LOADK                            R5 K2 ["InsertDeleted"]
        7 GETUPVAL                         R6 0
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+16]
       10 GETTABLEKS                       R6 R0 K3 ["senders"]
       12 GETTABLEKS                       R6 R6 K4 ["sendEventDeferred"]
       14 MOVE                             R7 R4
       15 LOADK                            R8 K5 ["Marketplace"]
       16 MOVE                             R10 R5
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R12 R1
       19 GETIMPORT                        R11 K7 [tostring]
       21 CALL                             R11 1 1
       22 CONCAT                           R9 R10 R11
       23 MOVE                             R10 R2
       24 CALL                             R6 4 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R6 R0 K3 ["senders"]
       28 GETTABLEKS                       R6 R6 K4 ["sendEventDeferred"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K8 ["eventTarget"]
       33 LOADK                            R8 K5 ["Marketplace"]
       34 MOVE                             R10 R5
       35 FASTCALL1                        TOSTRING R1 ; [+3]
       36 MOVE                             R12 R1
       37 GETIMPORT                        R11 K7 [tostring]
       39 CALL                             R11 1 1
       40 CONCAT                           R9 R10 R11
       41 MOVE                             R10 R2
       42 CALL                             R6 4 0
       43 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R8 R0 K0 ["senders"]
        2 GETTABLEKS                       R8 R8 K1 ["sendEventDeferred"]
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R9 R9 K2 ["eventTarget"]
        7 LOADK                            R10 K3 ["Marketplace"]
        8 MOVE                             R11 R1
        9 DUPTABLE                         R12 K10 [{"searchID", "searchCategory", "subcategoryName", "navBreadcrumbs", "toolboxTab", "assetType"}]
       10 SETTABLEKS                       R2 R12 K4 ["searchID"]
       12 SETTABLEKS                       R3 R12 K5 ["searchCategory"]
       14 SETTABLEKS                       R4 R12 K6 ["subcategoryName"]
       16 JUMPIFNOT                        R5 ; [+6]
       17 GETUPVAL                         R13 1
       18 MOVE                             R15 R5
       19 NAMECALL                         R13 R13 K11 ["JSONEncode"]
       21 CALL                             R13 2 1
       22 JUMPIF                           R13 ; [+1]
       23 LOADNIL                          R13
       24 SETTABLEKS                       R13 R12 K7 ["navBreadcrumbs"]
       26 SETTABLEKS                       R6 R12 K8 ["toolboxTab"]
       28 SETTABLEKS                       R7 R12 K9 ["assetType"]
       30 CALL                             R8 4 0
       31 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R9 K0 ["MarketplaceNavigatePageView"]
        1 MOVE                             R10 R1
        2 MOVE                             R11 R2
        3 MOVE                             R12 R3
        4 MOVE                             R13 R4
        5 MOVE                             R14 R5
        6 MOVE                             R15 R6
        7 NAMECALL                         R7 R0 K1 ["logNavigationButtonInteraction"]
        9 CALL                             R7 8 0
       10 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R9 K0 ["MarketplaceNavigateViewBack"]
        1 MOVE                             R10 R1
        2 MOVE                             R11 R2
        3 MOVE                             R12 R3
        4 MOVE                             R13 R4
        5 MOVE                             R14 R5
        6 MOVE                             R15 R6
        7 NAMECALL                         R7 R0 K1 ["logNavigationButtonInteraction"]
        9 CALL                             R7 8 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["senders"]
        2 GETTABLEKS                       R2 R2 K1 ["sendEventDeferred"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["eventTarget"]
        7 LOADK                            R4 K3 ["Marketplace"]
        8 LOADK                            R5 K4 ["CallToActionBannerClicked"]
        9 DUPTABLE                         R6 K6 [{"creatorId"}]
       10 SETTABLEKS                       R1 R6 K5 ["creatorId"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["isAssetDataTrackable"]
        3 MOVE                             R8 R1
        4 CALL                             R7 1 1
        5 JUMPIF                           R7 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K1 ["getTrackingAttributes"]
       10 MOVE                             R8 R1
       11 NEWTABLE                         R9 0 0
       13 LOADB                            R10 1
       14 CALL                             R7 3 1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K2 ["join"]
       18 MOVE                             R9 R7
       19 DUPTABLE                         R10 K8 [{"imageId", "imageIndex", "searchId", "source", "parentAssetId"}]
       20 SETTABLEKS                       R2 R10 K3 ["imageId"]
       22 SETTABLEKS                       R3 R10 K4 ["imageIndex"]
       24 SETTABLEKS                       R4 R10 K5 ["searchId"]
       26 SETTABLEKS                       R5 R10 K6 ["source"]
       28 SETTABLEKS                       R6 R10 K7 ["parentAssetId"]
       30 CALL                             R8 2 1
       31 MOVE                             R7 R8
       32 GETTABLEKS                       R8 R0 K9 ["senders"]
       34 GETTABLEKS                       R8 R8 K10 ["sendEventDeferred"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K11 ["eventTarget"]
       39 LOADK                            R10 K12 ["Marketplace"]
       40 LOADK                            R11 K13 ["AssetMediaImpression"]
       41 MOVE                             R12 R7
       42 CALL                             R8 4 0
       43 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["isAssetTrackable"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 1
        6 JUMPIF                           R5 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["getTrackingAttributes"]
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 LOADB                            R8 1
       14 CALL                             R5 3 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K2 ["join"]
       18 MOVE                             R7 R5
       19 DUPTABLE                         R8 K5 [{"searchId", "url"}]
       20 SETTABLEKS                       R3 R8 K3 ["searchId"]
       22 SETTABLEKS                       R4 R8 K4 ["url"]
       24 CALL                             R6 2 1
       25 GETTABLEKS                       R7 R0 K6 ["senders"]
       27 GETTABLEKS                       R7 R7 K7 ["sendEventDeferred"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K8 ["eventTarget"]
       32 LOADK                            R9 K9 ["Marketplace"]
       33 LOADK                            R10 K10 ["AssetDescriptionLinkClicked"]
       34 MOVE                             R11 R6
       35 CALL                             R7 4 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Cryo"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Dash"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Src"]
       33 GETTABLEKS                       R6 R6 K13 ["Models"]
       35 GETTABLEKS                       R6 R6 K14 ["AssetInfo"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R7 R1 K12 ["Src"]
       42 GETTABLEKS                       R7 R7 K15 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["getUserId"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R8 R1 K12 ["Src"]
       51 GETTABLEKS                       R8 R8 K15 ["Util"]
       53 GETTABLEKS                       R8 R8 K17 ["Constants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K9 [require]
       58 GETTABLEKS                       R9 R1 K12 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["FiatUtil"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K9 [require]
       67 GETIMPORT                        R10 K5 [script]
       69 GETTABLEKS                       R10 R10 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K19 ["Analytics"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K9 [require]
       76 GETIMPORT                        R11 K5 [script]
       78 GETTABLEKS                       R11 R11 K6 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["Senders"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K9 [require]
       85 GETTABLEKS                       R12 R1 K12 ["Src"]
       87 GETTABLEKS                       R12 R12 K15 ["Util"]
       89 GETTABLEKS                       R12 R12 K21 ["SharedFlags"]
       91 GETTABLEKS                       R12 R12 K22 ["getFFlagToolboxFFlagFixBuyerStatusAnalytics"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K9 [require]
       96 GETTABLEKS                       R13 R1 K12 ["Src"]
       98 GETTABLEKS                       R13 R13 K15 ["Util"]
      100 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
      102 GETTABLEKS                       R13 R13 K23 ["getFFlagToolboxFixAnalyticCapitalization"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K9 [require]
      107 GETTABLEKS                       R14 R1 K12 ["Src"]
      109 GETTABLEKS                       R14 R14 K15 ["Util"]
      111 GETTABLEKS                       R14 R14 K21 ["SharedFlags"]
      113 GETTABLEKS                       R14 R14 K24 ["getFFlagToolboxFixInsertRemains"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K9 [require]
      118 GETTABLEKS                       R15 R1 K12 ["Src"]
      120 GETTABLEKS                       R15 R15 K15 ["Util"]
      122 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
      124 GETTABLEKS                       R15 R15 K25 ["getFFlagToolboxLogInsertSourceAssetUniqueId"]
      126 CALL                             R14 1 1
      127 NEWTABLE                         R15 32 0
      129 SETTABLEKS                       R15 R15 K26 ["__index"]
      131 NEWTABLE                         R16 0 3
      133 LOADN                            R17 30
      134 LOADN                            R18 120
      135 LOADN                            R19 600
      136 SETLIST                          R16 R17 3 [1]
      138 SETTABLEKS                       R16 R15 K27 ["InsertRemainsCheckDelays"]
      140 DUPCLOSURE                       R16 K28 [PROTO_0]
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R15
      143 SETTABLEKS                       R16 R15 K29 ["new"]
      145 DUPCLOSURE                       R16 K30 [PROTO_2]
      146 CAPTURE                          VAL R15
      147 SETTABLEKS                       R16 R15 K31 ["mock"]
      149 DUPCLOSURE                       R16 K32 [PROTO_3]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R0
      152 SETTABLEKS                       R16 R15 K33 ["getNavigationContext"]
      154 DUPCLOSURE                       R16 K34 [PROTO_4]
      155 SETTABLEKS                       R16 R15 K35 ["schedule"]
      157 DUPCLOSURE                       R16 K36 [PROTO_5]
      158 SETTABLEKS                       R16 R15 K37 ["getAssetCategoryName"]
      160 DUPCLOSURE                       R16 K38 [PROTO_6]
      161 SETTABLEKS                       R16 R15 K39 ["isAssetDataTrackable"]
      163 DUPCLOSURE                       R16 K40 [PROTO_7]
      164 CAPTURE                          VAL R15
      165 SETTABLEKS                       R16 R15 K41 ["isAssetTrackable"]
      167 DUPCLOSURE                       R16 K42 [PROTO_8]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R6
      173 SETTABLEKS                       R16 R15 K43 ["getTrackingAttributes"]
      175 DUPCLOSURE                       R16 K44 [PROTO_9]
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R16 R15 K45 ["logImpression"]
      181 DUPCLOSURE                       R16 K46 [PROTO_10]
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R9
      187 SETTABLEKS                       R16 R15 K47 ["logPreview"]
      189 DUPCLOSURE                       R16 K48 [PROTO_12]
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R14
      195 SETTABLEKS                       R16 R15 K49 ["logInsert"]
      197 DUPCLOSURE                       R16 K50 [PROTO_13]
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R9
      200 SETTABLEKS                       R16 R15 K51 ["logRemainsOrDeleted"]
      202 DUPCLOSURE                       R16 K52 [PROTO_14]
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R16 R15 K53 ["logNavigationButtonInteraction"]
      207 DUPCLOSURE                       R16 K54 [PROTO_15]
      208 SETTABLEKS                       R16 R15 K55 ["logPageView"]
      210 DUPCLOSURE                       R16 K56 [PROTO_16]
      211 SETTABLEKS                       R16 R15 K57 ["logGoBack"]
      213 DUPCLOSURE                       R16 K58 [PROTO_17]
      214 CAPTURE                          VAL R9
      215 SETTABLEKS                       R16 R15 K59 ["onCallToActionBannerClicked"]
      217 DUPCLOSURE                       R16 K60 [PROTO_18]
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R9
      221 SETTABLEKS                       R16 R15 K61 ["logAssetMediaImpression"]
      223 DUPCLOSURE                       R16 K62 [PROTO_19]
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R9
      227 SETTABLEKS                       R16 R15 K63 ["onAssetDescriptionLinkClicked"]
      229 RETURN                           R15 1
