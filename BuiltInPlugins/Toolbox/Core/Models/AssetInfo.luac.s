PROTO_0:
  GETTABLEKS R1 R0 K0 ["fiatProduct"]
  JUMPIFNOT R1 [+34]
  GETTABLEKS R2 R0 K0 ["fiatProduct"]
  GETTABLEKS R1 R2 K1 ["purchasable"]
  GETTABLEKS R3 R0 K0 ["fiatProduct"]
  GETTABLEKS R2 R3 K2 ["purchasePrice"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K4 ["OffSale"]
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["isFree"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K6 ["Free"]
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K7 ["OnSale"]
  RETURN R3 1
  GETTABLEKS R1 R0 K8 ["product"]
  JUMPIFNOT R1 [+40]
  GETTABLEKS R2 R0 K8 ["product"]
  GETTABLEKS R1 R2 K9 ["isForSaleOrIsPublicDomain"]
  JUMPIFNOT R1 [+29]
  GETTABLEKS R4 R0 K8 ["product"]
  GETTABLEKS R3 R4 K10 ["price"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K12 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K13 ["number"] [+14]
  GETTABLEKS R3 R0 K8 ["product"]
  GETTABLEKS R2 R3 K10 ["price"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K7 ["OnSale"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K6 ["Free"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K4 ["OffSale"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K4 ["OffSale"]
  RETURN R1 1

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K1 ["asset"]
  JUMPIFNOT R2 [+204]
  LOADNIL R2
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+49]
  LOADB R3 0
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K2 ["typeId"]
  GETIMPORT R6 K6 [Enum.AssetType.Plugin]
  GETTABLEKS R5 R6 K7 ["Value"]
  JUMPIFNOTEQ R4 R5 [+14]
  LOADB R3 0
  GETTABLEKS R4 R0 K8 ["creator"]
  JUMPIFEQKNIL R4 [+9]
  GETTABLEKS R5 R0 K8 ["creator"]
  GETTABLEKS R4 R5 K9 ["isVerifiedCreator"]
  JUMPIFEQKB R4 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+24]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K10 ["previewAssets"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K11 ["imagePreviewAssets"]
  JUMP [+1]
  LOADNIL R5
  FASTCALL1 TYPE R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K13 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K14 ["table"] [+7]
  LENGTH R6 R5
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+3]
  MOVE R2 R5
  JUMP [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K30 [{"Id", "Name", "TypeId", "AssetGenres", "AssetSubTypes", "IsEndorsed", "Description", "Duration", "Created", "Updated", "HasScripts", "CreatingUniverseId", "Status", "IsOpenUse", "AssetMediaIds"}]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K31 ["id"]
  SETTABLEKS R4 R3 K15 ["Id"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K32 ["name"]
  SETTABLEKS R4 R3 K16 ["Name"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K2 ["typeId"]
  SETTABLEKS R4 R3 K17 ["TypeId"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K33 ["assetGenres"]
  SETTABLEKS R4 R3 K18 ["AssetGenres"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K34 ["assetSubTypes"]
  SETTABLEKS R4 R3 K19 ["AssetSubTypes"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K35 ["isEndorsed"]
  SETTABLEKS R4 R3 K20 ["IsEndorsed"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K36 ["description"]
  SETTABLEKS R4 R3 K21 ["Description"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K37 ["duration"]
  SETTABLEKS R4 R3 K22 ["Duration"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K38 ["createdUtc"]
  SETTABLEKS R4 R3 K23 ["Created"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K39 ["updatedUtc"]
  SETTABLEKS R4 R3 K24 ["Updated"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K40 ["hasScripts"]
  SETTABLEKS R4 R3 K25 ["HasScripts"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K41 ["creatingUniverseId"]
  SETTABLEKS R4 R3 K26 ["CreatingUniverseId"]
  GETGLOBAL R4 K42 ["itemsDetailsToCreationsDistributionStatus"]
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["Status"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K44 ["isOpenUse"]
  ORK R4 R5 K43 [False]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K28 ["IsOpenUse"]
  SETTABLEKS R2 R3 K29 ["AssetMediaIds"]
  SETTABLEKS R3 R1 K45 ["Asset"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K46 ["audioDetails"]
  JUMPIFNOT R3 [+51]
  DUPTABLE R3 K53 [{"Type", "Artist", "MusicAlbum", "MusicGenre", "SoundEffectCategory", "SoundEffectSubcategory"}]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K54 ["audioType"]
  SETTABLEKS R4 R3 K47 ["Type"]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K55 ["artist"]
  SETTABLEKS R4 R3 K48 ["Artist"]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K56 ["musicAlbum"]
  SETTABLEKS R4 R3 K49 ["MusicAlbum"]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K57 ["musicGenre"]
  SETTABLEKS R4 R3 K50 ["MusicGenre"]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K58 ["soundEffectCategory"]
  SETTABLEKS R4 R3 K51 ["SoundEffectCategory"]
  GETTABLEKS R6 R0 K1 ["asset"]
  GETTABLEKS R5 R6 K46 ["audioDetails"]
  GETTABLEKS R4 R5 K59 ["soundEffectSubcategory"]
  SETTABLEKS R4 R3 K52 ["SoundEffectSubcategory"]
  SETTABLEKS R3 R1 K60 ["AudioDetails"]
  GETTABLEKS R2 R0 K8 ["creator"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R2 K62 [{"Id", "Name", "Type", "IsVerifiedCreator"}]
  GETTABLEKS R4 R0 K8 ["creator"]
  GETTABLEKS R3 R4 K31 ["id"]
  SETTABLEKS R3 R2 K15 ["Id"]
  GETTABLEKS R4 R0 K8 ["creator"]
  GETTABLEKS R3 R4 K32 ["name"]
  SETTABLEKS R3 R2 K16 ["Name"]
  GETTABLEKS R4 R0 K8 ["creator"]
  GETTABLEKS R3 R4 K12 ["type"]
  SETTABLEKS R3 R2 K47 ["Type"]
  GETTABLEKS R4 R0 K8 ["creator"]
  GETTABLEKS R3 R4 K9 ["isVerifiedCreator"]
  SETTABLEKS R3 R2 K61 ["IsVerifiedCreator"]
  SETTABLEKS R2 R1 K63 ["Creator"]
  GETTABLEKS R2 R0 K64 ["product"]
  JUMPIFNOT R2 [+15]
  DUPTABLE R2 K67 [{"ProductId", "Price"}]
  GETTABLEKS R4 R0 K64 ["product"]
  GETTABLEKS R3 R4 K68 ["productId"]
  SETTABLEKS R3 R2 K65 ["ProductId"]
  GETTABLEKS R4 R0 K64 ["product"]
  GETTABLEKS R3 R4 K69 ["price"]
  SETTABLEKS R3 R2 K66 ["Price"]
  SETTABLEKS R2 R1 K70 ["Product"]
  GETTABLEKS R2 R0 K71 ["fiatProduct"]
  JUMPIFNOT R2 [+15]
  DUPTABLE R2 K74 [{"PurchasePrice", "Purchasable"}]
  GETTABLEKS R4 R0 K71 ["fiatProduct"]
  GETTABLEKS R3 R4 K75 ["purchasePrice"]
  SETTABLEKS R3 R2 K72 ["PurchasePrice"]
  GETTABLEKS R4 R0 K71 ["fiatProduct"]
  GETTABLEKS R3 R4 K76 ["purchasable"]
  SETTABLEKS R3 R2 K73 ["Purchasable"]
  SETTABLEKS R2 R1 K77 ["FiatProduct"]
  GETTABLEKS R2 R0 K78 ["thumbnail"]
  JUMPIFNOT R2 [+33]
  DUPTABLE R2 K84 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
  GETTABLEKS R4 R0 K78 ["thumbnail"]
  GETTABLEKS R3 R4 K85 ["final"]
  SETTABLEKS R3 R2 K79 ["Final"]
  GETTABLEKS R4 R0 K78 ["thumbnail"]
  GETTABLEKS R3 R4 K86 ["url"]
  SETTABLEKS R3 R2 K80 ["Url"]
  GETTABLEKS R4 R0 K78 ["thumbnail"]
  GETTABLEKS R3 R4 K87 ["retryUrl"]
  SETTABLEKS R3 R2 K81 ["RetryUrl"]
  GETTABLEKS R4 R0 K78 ["thumbnail"]
  GETTABLEKS R3 R4 K88 ["userId"]
  SETTABLEKS R3 R2 K82 ["UserId"]
  GETTABLEKS R4 R0 K78 ["thumbnail"]
  GETTABLEKS R3 R4 K89 ["endpointType"]
  SETTABLEKS R3 R2 K83 ["EndpointType"]
  SETTABLEKS R2 R1 K90 ["Thumbnail"]
  GETTABLEKS R2 R0 K91 ["voting"]
  JUMPIFNOT R2 [+57]
  DUPTABLE R2 K101 [{"ShowVotes", "UpVotes", "DownVotes", "VoteCount", "UpVotePercent", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K102 ["showVotes"]
  SETTABLEKS R3 R2 K92 ["ShowVotes"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K103 ["upVotes"]
  SETTABLEKS R3 R2 K93 ["UpVotes"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K104 ["downVotes"]
  SETTABLEKS R3 R2 K94 ["DownVotes"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K105 ["voteCount"]
  SETTABLEKS R3 R2 K95 ["VoteCount"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K106 ["upVotePercent"]
  SETTABLEKS R3 R2 K96 ["UpVotePercent"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K107 ["canVote"]
  SETTABLEKS R3 R2 K97 ["CanVote"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K108 ["userVote"]
  SETTABLEKS R3 R2 K98 ["UserVote"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K109 ["hasVoted"]
  SETTABLEKS R3 R2 K99 ["HasVoted"]
  GETTABLEKS R4 R0 K91 ["voting"]
  GETTABLEKS R3 R4 K110 ["reasonForNotVoteable"]
  SETTABLEKS R3 R2 K100 ["ReasonForNotVoteable"]
  SETTABLEKS R2 R1 K111 ["Voting"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  GETTABLEKS R3 R0 K1 ["Context"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["Context"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  CALL R4 0 1
  DUPTABLE R5 K7 [{"Description", "Id", "Name", "TypeId", "AssetGenres", "Status"}]
  GETTABLEKS R6 R0 K8 ["description"]
  SETTABLEKS R6 R5 K1 ["Description"]
  GETTABLEKS R6 R0 K9 ["assetId"]
  SETTABLEKS R6 R5 K2 ["Id"]
  GETTABLEKS R6 R0 K10 ["name"]
  SETTABLEKS R6 R5 K3 ["Name"]
  MOVE R6 R1
  JUMPIFNOT R6 [+2]
  GETTABLEKS R6 R1 K11 ["Value"]
  SETTABLEKS R6 R5 K4 ["TypeId"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K5 ["AssetGenres"]
  GETTABLEKS R6 R0 K12 ["status"]
  SETTABLEKS R6 R5 K6 ["Status"]
  SETTABLEKS R5 R4 K13 ["Asset"]
  DUPTABLE R5 K15 [{"Id", "Name", "Type"}]
  GETTABLEKS R6 R0 K16 ["creatorTargetId"]
  SETTABLEKS R6 R5 K2 ["Id"]
  SETTABLEKS R2 R5 K3 ["Name"]
  SETTABLEKS R3 R5 K14 ["Type"]
  SETTABLEKS R5 R4 K17 ["Creator"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["AssetConfigConstants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K11 ["FiatUtil"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K12 ["SharedFlags"]
  GETTABLEKS R7 R8 K13 ["getFFlagToolboxUseItemDetailForPreviews"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K14 ["Types"]
  GETTABLEKS R8 R9 K15 ["MarketplaceFiatServiceTypes"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K8 ["Core"]
  GETTABLEKS R11 R12 K9 ["Util"]
  GETTABLEKS R10 R11 K12 ["SharedFlags"]
  GETTABLEKS R9 R10 K16 ["getFFlagToolboxOnlyPreviewOpenUseModels"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETGLOBAL R9 K18 ["itemsDetailsToCreationsDistributionStatus"]
  NEWTABLE R9 4 0
  DUPCLOSURE R10 K19 [PROTO_1]
  SETTABLEKS R10 R9 K20 ["new"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["fromItemDetailsRequest"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K24 ["AddContextToItemDetails"]
  DUPCLOSURE R10 K25 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K26 ["fromCreationsDetails"]
  RETURN R9 1
