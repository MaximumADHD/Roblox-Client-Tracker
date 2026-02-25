PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["fiatProduct"]
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETTABLEKS                       R2 R0 K0 ["fiatProduct"]
        5 GETTABLEKS                       R1 R2 K1 ["purchasable"]
        7 GETTABLEKS                       R3 R0 K0 ["fiatProduct"]
        9 GETTABLEKS                       R2 R3 K2 ["purchasePrice"]
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+6]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["ASSET_STATUS"]
       16 GETTABLEKS                       R3 R4 K4 ["OffSale"]
       18 RETURN                           R3 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K5 ["isFree"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+6]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K3 ["ASSET_STATUS"]
       28 GETTABLEKS                       R3 R4 K6 ["Free"]
       30 RETURN                           R3 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K3 ["ASSET_STATUS"]
       34 GETTABLEKS                       R3 R4 K7 ["OnSale"]
       36 RETURN                           R3 1
       37 GETTABLEKS                       R1 R0 K8 ["product"]
       39 JUMPIFNOT                        R1 ; [+40]
       40 GETTABLEKS                       R2 R0 K8 ["product"]
       42 GETTABLEKS                       R1 R2 K9 ["isForSaleOrIsPublicDomain"]
       44 JUMPIFNOT                        R1 ; [+29]
       45 GETTABLEKS                       R4 R0 K8 ["product"]
       47 GETTABLEKS                       R3 R4 K10 ["price"]
       49 FASTCALL1                        TYPEOF R3 ; [+2]
       50 GETIMPORT                        R2 K12 [typeof]
       52 CALL                             R2 1 1
       53 JUMPIFNOTEQKS                    R2 K13 ["number"] ; [+14]
       55 GETTABLEKS                       R3 R0 K8 ["product"]
       57 GETTABLEKS                       R2 R3 K10 ["price"]
       59 LOADN                            R3 0
       60 JUMPIFNOTLT                      R3 R2 ; [+7]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K3 ["ASSET_STATUS"]
       65 GETTABLEKS                       R1 R2 K7 ["OnSale"]
       67 RETURN                           R1 1
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R2 R3 K3 ["ASSET_STATUS"]
       71 GETTABLEKS                       R1 R2 K6 ["Free"]
       73 RETURN                           R1 1
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K3 ["ASSET_STATUS"]
       77 GETTABLEKS                       R1 R2 K4 ["OffSale"]
       79 RETURN                           R1 1
       80 GETUPVAL                         R3 0
       81 GETTABLEKS                       R2 R3 K3 ["ASSET_STATUS"]
       83 GETTABLEKS                       R1 R2 K4 ["OffSale"]
       85 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["asset"]
        6 JUMPIFNOT                        R2 ; [+204]
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+49]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R5 R0 K1 ["asset"]
       14 GETTABLEKS                       R4 R5 K2 ["typeId"]
       16 GETIMPORT                        R6 K6 [Enum.AssetType.Plugin]
       18 GETTABLEKS                       R5 R6 K7 ["Value"]
       20 JUMPIFNOTEQ                      R4 R5 ; [+14]
       22 LOADB                            R3 0
       23 GETTABLEKS                       R4 R0 K8 ["creator"]
       25 JUMPIFEQKNIL                     R4 ; [+9]
       27 GETTABLEKS                       R5 R0 K8 ["creator"]
       29 GETTABLEKS                       R4 R5 K9 ["isVerifiedCreator"]
       31 JUMPIFEQKB                       R4 TRUE ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 JUMPIFNOT                        R3 ; [+24]
       36 GETTABLEKS                       R5 R0 K1 ["asset"]
       38 GETTABLEKS                       R4 R5 K10 ["previewAssets"]
       40 JUMPIFNOT                        R4 ; [+3]
       41 GETTABLEKS                       R5 R4 K11 ["imagePreviewAssets"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 FASTCALL1                        TYPE R5 ; [+3]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R6 K13 [type]
       49 CALL                             R6 1 1
       50 JUMPIFNOTEQKS                    R6 K14 ["table"] ; [+7]
       52 LENGTH                           R6 R5
       53 LOADN                            R7 0
       54 JUMPIFNOTLT                      R7 R6 ; [+3]
       56 MOVE                             R2 R5
       57 JUMP                             ; [+2]
       58 NEWTABLE                         R2 0 0
       60 DUPTABLE                         R3 K30 [{"Id", "Name", "TypeId", "AssetGenres", "AssetSubTypes", "IsEndorsed", "Description", "Duration", "Created", "Updated", "HasScripts", "CreatingUniverseId", "Status", "IsOpenUse", "AssetMediaIds"}]
       61 GETTABLEKS                       R5 R0 K1 ["asset"]
       63 GETTABLEKS                       R4 R5 K31 ["id"]
       65 SETTABLEKS                       R4 R3 K15 ["Id"]
       67 GETTABLEKS                       R5 R0 K1 ["asset"]
       69 GETTABLEKS                       R4 R5 K32 ["name"]
       71 SETTABLEKS                       R4 R3 K16 ["Name"]
       73 GETTABLEKS                       R5 R0 K1 ["asset"]
       75 GETTABLEKS                       R4 R5 K2 ["typeId"]
       77 SETTABLEKS                       R4 R3 K17 ["TypeId"]
       79 GETTABLEKS                       R5 R0 K1 ["asset"]
       81 GETTABLEKS                       R4 R5 K33 ["assetGenres"]
       83 SETTABLEKS                       R4 R3 K18 ["AssetGenres"]
       85 GETTABLEKS                       R5 R0 K1 ["asset"]
       87 GETTABLEKS                       R4 R5 K34 ["assetSubTypes"]
       89 SETTABLEKS                       R4 R3 K19 ["AssetSubTypes"]
       91 GETTABLEKS                       R5 R0 K1 ["asset"]
       93 GETTABLEKS                       R4 R5 K35 ["isEndorsed"]
       95 SETTABLEKS                       R4 R3 K20 ["IsEndorsed"]
       97 GETTABLEKS                       R5 R0 K1 ["asset"]
       99 GETTABLEKS                       R4 R5 K36 ["description"]
      101 SETTABLEKS                       R4 R3 K21 ["Description"]
      103 GETTABLEKS                       R5 R0 K1 ["asset"]
      105 GETTABLEKS                       R4 R5 K37 ["duration"]
      107 SETTABLEKS                       R4 R3 K22 ["Duration"]
      109 GETTABLEKS                       R5 R0 K1 ["asset"]
      111 GETTABLEKS                       R4 R5 K38 ["createdUtc"]
      113 SETTABLEKS                       R4 R3 K23 ["Created"]
      115 GETTABLEKS                       R5 R0 K1 ["asset"]
      117 GETTABLEKS                       R4 R5 K39 ["updatedUtc"]
      119 SETTABLEKS                       R4 R3 K24 ["Updated"]
      121 GETTABLEKS                       R5 R0 K1 ["asset"]
      123 GETTABLEKS                       R4 R5 K40 ["hasScripts"]
      125 SETTABLEKS                       R4 R3 K25 ["HasScripts"]
      127 GETTABLEKS                       R5 R0 K1 ["asset"]
      129 GETTABLEKS                       R4 R5 K41 ["creatingUniverseId"]
      131 SETTABLEKS                       R4 R3 K26 ["CreatingUniverseId"]
      133 GETGLOBAL                        R4 K42 ["itemsDetailsToCreationsDistributionStatus"]
      135 MOVE                             R5 R0
      136 CALL                             R4 1 1
      137 SETTABLEKS                       R4 R3 K27 ["Status"]
      139 GETUPVAL                         R5 2
      140 CALL                             R5 0 1
      141 JUMPIFNOT                        R5 ; [+6]
      142 GETTABLEKS                       R6 R0 K1 ["asset"]
      144 GETTABLEKS                       R5 R6 K44 ["isOpenUse"]
      146 ORK                              R4 R5 K43 [False]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R4
      149 SETTABLEKS                       R4 R3 K28 ["IsOpenUse"]
      151 SETTABLEKS                       R2 R3 K29 ["AssetMediaIds"]
      153 SETTABLEKS                       R3 R1 K45 ["Asset"]
      155 GETTABLEKS                       R4 R0 K1 ["asset"]
      157 GETTABLEKS                       R3 R4 K46 ["audioDetails"]
      159 JUMPIFNOT                        R3 ; [+51]
      160 DUPTABLE                         R3 K53 [{"Type", "Artist", "MusicAlbum", "MusicGenre", "SoundEffectCategory", "SoundEffectSubcategory"}]
      161 GETTABLEKS                       R6 R0 K1 ["asset"]
      163 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      165 GETTABLEKS                       R4 R5 K54 ["audioType"]
      167 SETTABLEKS                       R4 R3 K47 ["Type"]
      169 GETTABLEKS                       R6 R0 K1 ["asset"]
      171 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      173 GETTABLEKS                       R4 R5 K55 ["artist"]
      175 SETTABLEKS                       R4 R3 K48 ["Artist"]
      177 GETTABLEKS                       R6 R0 K1 ["asset"]
      179 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      181 GETTABLEKS                       R4 R5 K56 ["musicAlbum"]
      183 SETTABLEKS                       R4 R3 K49 ["MusicAlbum"]
      185 GETTABLEKS                       R6 R0 K1 ["asset"]
      187 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      189 GETTABLEKS                       R4 R5 K57 ["musicGenre"]
      191 SETTABLEKS                       R4 R3 K50 ["MusicGenre"]
      193 GETTABLEKS                       R6 R0 K1 ["asset"]
      195 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      197 GETTABLEKS                       R4 R5 K58 ["soundEffectCategory"]
      199 SETTABLEKS                       R4 R3 K51 ["SoundEffectCategory"]
      201 GETTABLEKS                       R6 R0 K1 ["asset"]
      203 GETTABLEKS                       R5 R6 K46 ["audioDetails"]
      205 GETTABLEKS                       R4 R5 K59 ["soundEffectSubcategory"]
      207 SETTABLEKS                       R4 R3 K52 ["SoundEffectSubcategory"]
      209 SETTABLEKS                       R3 R1 K60 ["AudioDetails"]
      211 GETTABLEKS                       R2 R0 K8 ["creator"]
      213 JUMPIFNOT                        R2 ; [+27]
      214 DUPTABLE                         R2 K62 [{"Id", "Name", "Type", "IsVerifiedCreator"}]
      215 GETTABLEKS                       R4 R0 K8 ["creator"]
      217 GETTABLEKS                       R3 R4 K31 ["id"]
      219 SETTABLEKS                       R3 R2 K15 ["Id"]
      221 GETTABLEKS                       R4 R0 K8 ["creator"]
      223 GETTABLEKS                       R3 R4 K32 ["name"]
      225 SETTABLEKS                       R3 R2 K16 ["Name"]
      227 GETTABLEKS                       R4 R0 K8 ["creator"]
      229 GETTABLEKS                       R3 R4 K12 ["type"]
      231 SETTABLEKS                       R3 R2 K47 ["Type"]
      233 GETTABLEKS                       R4 R0 K8 ["creator"]
      235 GETTABLEKS                       R3 R4 K9 ["isVerifiedCreator"]
      237 SETTABLEKS                       R3 R2 K61 ["IsVerifiedCreator"]
      239 SETTABLEKS                       R2 R1 K63 ["Creator"]
      241 GETTABLEKS                       R2 R0 K64 ["product"]
      243 JUMPIFNOT                        R2 ; [+15]
      244 DUPTABLE                         R2 K67 [{"ProductId", "Price"}]
      245 GETTABLEKS                       R4 R0 K64 ["product"]
      247 GETTABLEKS                       R3 R4 K68 ["productId"]
      249 SETTABLEKS                       R3 R2 K65 ["ProductId"]
      251 GETTABLEKS                       R4 R0 K64 ["product"]
      253 GETTABLEKS                       R3 R4 K69 ["price"]
      255 SETTABLEKS                       R3 R2 K66 ["Price"]
      257 SETTABLEKS                       R2 R1 K70 ["Product"]
      259 GETTABLEKS                       R2 R0 K71 ["fiatProduct"]
      261 JUMPIFNOT                        R2 ; [+26]
      262 DUPTABLE                         R2 K75 [{"PurchasePrice", "Purchasable", "Published"}]
      263 GETTABLEKS                       R4 R0 K71 ["fiatProduct"]
      265 GETTABLEKS                       R3 R4 K76 ["purchasePrice"]
      267 SETTABLEKS                       R3 R2 K72 ["PurchasePrice"]
      269 GETTABLEKS                       R4 R0 K71 ["fiatProduct"]
      271 GETTABLEKS                       R3 R4 K77 ["purchasable"]
      273 SETTABLEKS                       R3 R2 K73 ["Purchasable"]
      275 GETUPVAL                         R4 3
      276 CALL                             R4 0 1
      277 JUMPIFNOT                        R4 ; [+5]
      278 GETTABLEKS                       R4 R0 K71 ["fiatProduct"]
      280 GETTABLEKS                       R3 R4 K78 ["published"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R3
      284 SETTABLEKS                       R3 R2 K74 ["Published"]
      286 SETTABLEKS                       R2 R1 K79 ["FiatProduct"]
      288 GETTABLEKS                       R2 R0 K80 ["thumbnail"]
      290 JUMPIFNOT                        R2 ; [+33]
      291 DUPTABLE                         R2 K86 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
      292 GETTABLEKS                       R4 R0 K80 ["thumbnail"]
      294 GETTABLEKS                       R3 R4 K87 ["final"]
      296 SETTABLEKS                       R3 R2 K81 ["Final"]
      298 GETTABLEKS                       R4 R0 K80 ["thumbnail"]
      300 GETTABLEKS                       R3 R4 K88 ["url"]
      302 SETTABLEKS                       R3 R2 K82 ["Url"]
      304 GETTABLEKS                       R4 R0 K80 ["thumbnail"]
      306 GETTABLEKS                       R3 R4 K89 ["retryUrl"]
      308 SETTABLEKS                       R3 R2 K83 ["RetryUrl"]
      310 GETTABLEKS                       R4 R0 K80 ["thumbnail"]
      312 GETTABLEKS                       R3 R4 K90 ["userId"]
      314 SETTABLEKS                       R3 R2 K84 ["UserId"]
      316 GETTABLEKS                       R4 R0 K80 ["thumbnail"]
      318 GETTABLEKS                       R3 R4 K91 ["endpointType"]
      320 SETTABLEKS                       R3 R2 K85 ["EndpointType"]
      322 SETTABLEKS                       R2 R1 K92 ["Thumbnail"]
      324 GETTABLEKS                       R2 R0 K93 ["voting"]
      326 JUMPIFNOT                        R2 ; [+57]
      327 DUPTABLE                         R2 K103 [{"ShowVotes", "UpVotes", "DownVotes", "VoteCount", "UpVotePercent", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
      328 GETTABLEKS                       R4 R0 K93 ["voting"]
      330 GETTABLEKS                       R3 R4 K104 ["showVotes"]
      332 SETTABLEKS                       R3 R2 K94 ["ShowVotes"]
      334 GETTABLEKS                       R4 R0 K93 ["voting"]
      336 GETTABLEKS                       R3 R4 K105 ["upVotes"]
      338 SETTABLEKS                       R3 R2 K95 ["UpVotes"]
      340 GETTABLEKS                       R4 R0 K93 ["voting"]
      342 GETTABLEKS                       R3 R4 K106 ["downVotes"]
      344 SETTABLEKS                       R3 R2 K96 ["DownVotes"]
      346 GETTABLEKS                       R4 R0 K93 ["voting"]
      348 GETTABLEKS                       R3 R4 K107 ["voteCount"]
      350 SETTABLEKS                       R3 R2 K97 ["VoteCount"]
      352 GETTABLEKS                       R4 R0 K93 ["voting"]
      354 GETTABLEKS                       R3 R4 K108 ["upVotePercent"]
      356 SETTABLEKS                       R3 R2 K98 ["UpVotePercent"]
      358 GETTABLEKS                       R4 R0 K93 ["voting"]
      360 GETTABLEKS                       R3 R4 K109 ["canVote"]
      362 SETTABLEKS                       R3 R2 K99 ["CanVote"]
      364 GETTABLEKS                       R4 R0 K93 ["voting"]
      366 GETTABLEKS                       R3 R4 K110 ["userVote"]
      368 SETTABLEKS                       R3 R2 K100 ["UserVote"]
      370 GETTABLEKS                       R4 R0 K93 ["voting"]
      372 GETTABLEKS                       R3 R4 K111 ["hasVoted"]
      374 SETTABLEKS                       R3 R2 K101 ["HasVoted"]
      376 GETTABLEKS                       R4 R0 K93 ["voting"]
      378 GETTABLEKS                       R3 R4 K112 ["reasonForNotVoteable"]
      380 SETTABLEKS                       R3 R2 K102 ["ReasonForNotVoteable"]
      382 SETTABLEKS                       R2 R1 K113 ["Voting"]
      384 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["join"]
        3 GETTABLEKS                       R3 R0 K1 ["Context"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R0 K1 ["Context"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 DUPTABLE                         R5 K7 [{"Description", "Id", "Name", "TypeId", "AssetGenres", "Status"}]
        5 GETTABLEKS                       R6 R0 K8 ["description"]
        7 SETTABLEKS                       R6 R5 K1 ["Description"]
        9 GETTABLEKS                       R6 R0 K9 ["assetId"]
       11 SETTABLEKS                       R6 R5 K2 ["Id"]
       13 GETTABLEKS                       R6 R0 K10 ["name"]
       15 SETTABLEKS                       R6 R5 K3 ["Name"]
       17 MOVE                             R6 R1
       18 JUMPIFNOT                        R6 ; [+2]
       19 GETTABLEKS                       R6 R1 K11 ["Value"]
       21 SETTABLEKS                       R6 R5 K4 ["TypeId"]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K5 ["AssetGenres"]
       27 GETTABLEKS                       R6 R0 K12 ["status"]
       29 SETTABLEKS                       R6 R5 K6 ["Status"]
       31 SETTABLEKS                       R5 R4 K13 ["Asset"]
       33 DUPTABLE                         R5 K15 [{"Id", "Name", "Type"}]
       34 GETTABLEKS                       R6 R0 K16 ["creatorTargetId"]
       36 SETTABLEKS                       R6 R5 K2 ["Id"]
       38 SETTABLEKS                       R2 R5 K3 ["Name"]
       40 SETTABLEKS                       R3 R5 K14 ["Type"]
       42 SETTABLEKS                       R5 R4 K17 ["Creator"]
       44 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["AssetConfigConstants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R8 K9 ["Util"]
       36 GETTABLEKS                       R6 R7 K11 ["FiatUtil"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R10 R0 K8 ["Src"]
       43 GETTABLEKS                       R9 R10 K9 ["Util"]
       45 GETTABLEKS                       R8 R9 K12 ["SharedFlags"]
       47 GETTABLEKS                       R7 R8 K13 ["getFFlagToolboxUseItemDetailForPreviews"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K8 ["Src"]
       54 GETTABLEKS                       R9 R10 K14 ["Types"]
       56 GETTABLEKS                       R8 R9 K15 ["MarketplaceFiatServiceTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R12 R0 K8 ["Src"]
       63 GETTABLEKS                       R11 R12 K9 ["Util"]
       65 GETTABLEKS                       R10 R11 K12 ["SharedFlags"]
       67 GETTABLEKS                       R9 R10 K16 ["getFFlagToolboxOnlyPreviewOpenUseModels"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R13 R0 K8 ["Src"]
       74 GETTABLEKS                       R12 R13 K9 ["Util"]
       76 GETTABLEKS                       R11 R12 K12 ["SharedFlags"]
       78 GETTABLEKS                       R10 R11 K17 ["getFFlagToolboxCapabilities"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K18 [PROTO_0]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 SETGLOBAL                        R10 K19 ["itemsDetailsToCreationsDistributionStatus"]
       86 NEWTABLE                         R10 4 0
       88 DUPCLOSURE                       R11 K20 [PROTO_1]
       89 SETTABLEKS                       R11 R10 K21 ["new"]
       91 DUPCLOSURE                       R11 K22 [PROTO_2]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R11 R10 K23 ["fromItemDetailsRequest"]
       98 DUPCLOSURE                       R11 K24 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R11 R10 K25 ["AddContextToItemDetails"]
      102 DUPCLOSURE                       R11 K26 [PROTO_4]
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R11 R10 K27 ["fromCreationsDetails"]
      106 RETURN                           R10 1
