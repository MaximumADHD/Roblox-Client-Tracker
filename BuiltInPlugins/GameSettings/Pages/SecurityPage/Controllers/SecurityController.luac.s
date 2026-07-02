PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["develop"]
        3 LOADK                            R6 K2 ["/v2/universes/"]
        4 MOVE                             R7 R1
        5 LOADK                            R8 K3 ["/configuration"]
        6 CONCAT                           R5 R6 R8
        7 NAMECALL                         R2 R2 K4 ["get"]
        9 CALL                             R2 3 1
       10 NAMECALL                         R2 R2 K5 ["await"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R7 K4 ["Body"]
       10 NAMECALL                         R3 R3 K6 ["patch"]
       12 CALL                             R3 4 1
       13 NAMECALL                         R3 R3 K7 ["await"]
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["configurationV2GET"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R3 K1 ["responseBody"]
        6 GETTABLEKS                       R4 R4 K2 ["permissions"]
        8 GETTABLE                         R5 R4 R2
        9 RETURN                           R5 1

PROTO_4:
        0 MOVE                             R6 R1
        1 DUPTABLE                         R7 K1 [{"permissions"}]
        2 NEWTABLE                         R8 1 0
        4 SETTABLE                         R3 R8 R2
        5 SETTABLEKS                       R8 R7 K0 ["permissions"]
        7 NAMECALL                         R4 R0 K2 ["configurationV2PATCH"]
        9 CALL                             R4 3 -1
       10 RETURN                           R4 -1

PROTO_5:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["IsThirdPartyPurchaseAllowed"]
        2 NAMECALL                         R2 R0 K1 ["GetPermission"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["IsThirdPartyPurchaseAllowed"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["SetChangedPermissions"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_7:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["IsThirdPartyTeleportAllowed"]
        2 NAMECALL                         R2 R0 K1 ["GetPermission"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["IsThirdPartyTeleportAllowed"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["SetChangedPermissions"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_9:
        0 LOADK                            R4 K0 ["HttpService"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R3 R2 K2 ["GetHttpEnabled"]
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1

PROTO_10:
        0 LOADK                            R5 K0 ["HttpService"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R3 K2 ["SetHttpEnabled"]
        7 CALL                             R4 2 -1
        8 RETURN                           R4 -1

PROTO_11:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["responseBody"]
        6 GETTABLEKS                       R4 R3 K2 ["studioAccessToApisAllowed"]
        8 RETURN                           R4 1

PROTO_12:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"studioAccessToApisAllowed"}]
        2 SETTABLEKS                       R2 R6 K0 ["studioAccessToApisAllowed"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R1 K4 ["Secrets"]
        8 RETURN                           R2 1

PROTO_14:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["StudioService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R1 R2 K4 ["Secrets"]
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Secrets"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["convertSecretsToTableRows"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["sortAndReindexSecretsTableRows"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R1 1

PROTO_16:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K1 [game]
        8 LOADK                            R4 K4 ["HttpService"]
        9 NAMECALL                         R2 R2 K3 ["GetService"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K6 [pcall]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CALL                             R3 1 2
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R4 1
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R7 K9 ["Failed to parse secrets: "]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R9 R4
       26 GETIMPORT                        R8 K11 [tostring]
       28 CALL                             R8 1 1
       29 CONCAT                           R6 R7 R8
       30 CALL                             R5 1 0
       31 NEWTABLE                         R5 0 0
       33 RETURN                           R5 1

PROTO_17:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["row"]
        8 GETTABLEN                        R9 R8 1
        9 GETTABLEN                        R10 R8 2
       10 GETTABLEN                        R12 R8 3
       11 ORK                              R11 R12 K1 [""]
       12 NEWTABLE                         R12 0 2
       14 MOVE                             R13 R10
       15 MOVE                             R14 R11
       16 SETLIST                          R12 R13 2 [1]
       18 SETTABLE                         R12 R2 R9
       19 FORGLOOP                         R3 2 ; [-14]
       21 GETIMPORT                        R3 K3 [game]
       23 LOADK                            R5 K4 ["HttpService"]
       24 NAMECALL                         R3 R3 K5 ["GetService"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 0
       28 MOVE                             R8 R2
       29 NAMECALL                         R6 R3 K6 ["JSONEncode"]
       31 CALL                             R6 2 -1
       32 NAMECALL                         R4 R4 K7 ["SetSecrets"]
       34 CALL                             R4 -1 0
       35 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_19:
        0 DUPTABLE                         R1 K3 [{[1], ["Method"] = "GET"}]
        1 SETTABLEKS                       R0 R1 K0 ["Url"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["Request"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R4 K5 [PROTO_18]
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R2 R2 K6 ["andThen"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["apis"]
        4 LOADK                            R2 K2 ["access-management/v1/feature-access?featureNames=CanEnableMeshTextureApi"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["features"]
        2 LENGTH                           R1 R2
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+8]
        6 LOADB                            R1 1
        7 GETTABLEKS                       R3 R0 K0 ["features"]
        9 GETTABLEN                        R2 R3 1
       10 GETTABLEKS                       R2 R2 K1 ["access"]
       12 RETURN                           R1 2
       13 LOADB                            R1 0
       14 LOADK                            R2 K2 ["Denied"]
       15 RETURN                           R1 2

PROTO_22:
        0 LOADB                            R0 0
        1 LOADK                            R1 K0 ["Denied"]
        2 RETURN                           R0 2

PROTO_23:
        0 DUPCLOSURE                       R0 K0 [PROTO_21]
        1 DUPCLOSURE                       R1 K1 [PROTO_22]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["BuildRobloxUrl"]
        5 LOADK                            R4 K3 ["apis"]
        6 LOADK                            R5 K4 ["access-management/v1/feature-access?featureNames=CanEnableMeshTextureApi"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 MOVE                             R2 R4
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K5 ["andThen"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NAMECALL                         R1 R1 K0 ["await"]
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["Unable to retrieve id verification feature, defaulting to false"]
        9 CALL                             R3 1 0
       10 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["responseBody"]
        6 GETTABLEKS                       R4 R3 K2 ["isMeshTextureApiAccessAllowed"]
        8 RETURN                           R4 1

PROTO_26:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isMeshTextureApiAccessAllowed"}]
        2 SETTABLEKS                       R2 R6 K0 ["isMeshTextureApiAccessAllowed"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_27:
        0 LOADK                            R4 K0 ["AssetService"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["AllowInsertFreeAssets"]
        6 RETURN                           R3 1

PROTO_28:
        0 LOADK                            R5 K0 ["AssetService"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["AllowInsertFreeAssets"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["SecretUtils"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 32 0
       22 SETTABLEKS                       R2 R2 K8 ["__index"]
       24 DUPCLOSURE                       R3 K9 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K10 ["new"]
       28 DUPCLOSURE                       R3 K11 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K12 ["configurationV2GET"]
       31 DUPCLOSURE                       R3 K13 [PROTO_2]
       32 SETTABLEKS                       R3 R2 K14 ["configurationV2PATCH"]
       34 DUPCLOSURE                       R3 K15 [PROTO_3]
       35 SETTABLEKS                       R3 R2 K16 ["GetPermission"]
       37 DUPCLOSURE                       R3 K17 [PROTO_4]
       38 SETTABLEKS                       R3 R2 K18 ["SetChangedPermissions"]
       40 DUPCLOSURE                       R3 K19 [PROTO_5]
       41 SETTABLEKS                       R3 R2 K20 ["GetThirdPartyPurchasesAllowed"]
       43 DUPCLOSURE                       R3 K21 [PROTO_6]
       44 SETTABLEKS                       R3 R2 K22 ["SetThirdPartyPurchasesAllowed"]
       46 DUPCLOSURE                       R3 K23 [PROTO_7]
       47 SETTABLEKS                       R3 R2 K24 ["GetThirdPartyTeleportsAllowed"]
       49 DUPCLOSURE                       R3 K25 [PROTO_8]
       50 SETTABLEKS                       R3 R2 K26 ["SetThirdPartyTeleportsAllowed"]
       52 DUPCLOSURE                       R3 K27 [PROTO_9]
       53 SETTABLEKS                       R3 R2 K28 ["GetHttpEnabled"]
       55 DUPCLOSURE                       R3 K29 [PROTO_10]
       56 SETTABLEKS                       R3 R2 K30 ["SetHttpEnabled"]
       58 DUPCLOSURE                       R3 K31 [PROTO_11]
       59 SETTABLEKS                       R3 R2 K32 ["GetStudioAccessToApisAllowed"]
       61 DUPCLOSURE                       R3 K33 [PROTO_12]
       62 SETTABLEKS                       R3 R2 K34 ["SetStudioAccessToApisAllowed"]
       64 DUPCLOSURE                       R3 K35 [PROTO_13]
       65 SETTABLEKS                       R3 R2 K36 ["GetSecrets"]
       67 DUPCLOSURE                       R3 K37 [PROTO_14]
       68 SETTABLEKS                       R3 R2 K38 ["SetSecrets"]
       70 DUPCLOSURE                       R3 K39 [PROTO_16]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R3 R2 K40 ["GetSecretsAsTableRows"]
       74 DUPCLOSURE                       R3 K41 [PROTO_17]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R3 R2 K42 ["SetSecretsFromSecretsAsTableRows"]
       78 GETIMPORT                        R3 K1 [script]
       80 GETTABLEKS                       R3 R3 K2 ["Parent"]
       82 GETTABLEKS                       R3 R3 K2 ["Parent"]
       84 GETTABLEKS                       R3 R3 K2 ["Parent"]
       86 GETTABLEKS                       R3 R3 K2 ["Parent"]
       88 GETIMPORT                        R4 K4 [require]
       90 GETTABLEKS                       R5 R3 K5 ["Src"]
       92 GETTABLEKS                       R5 R5 K43 ["Networking"]
       94 GETTABLEKS                       R5 R5 K44 ["Http"]
       96 CALL                             R4 1 1
       97 GETIMPORT                        R5 K46 [game]
       99 LOADK                            R7 K47 ["HttpService"]
      100 NAMECALL                         R5 R5 K48 ["GetService"]
      102 CALL                             R5 2 1
      103 DUPCLOSURE                       R6 K49 [PROTO_19]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 DUPCLOSURE                       R7 K50 [PROTO_20]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R6
      109 DUPCLOSURE                       R8 K51 [PROTO_23]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R6
      112 DUPCLOSURE                       R9 K52 [PROTO_24]
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R9 R2 K53 ["GetMeshTextureApiAmpStatus"]
      116 DUPCLOSURE                       R9 K54 [PROTO_25]
      117 SETTABLEKS                       R9 R2 K55 ["GetMeshTextureApisAllowed"]
      119 DUPCLOSURE                       R9 K56 [PROTO_26]
      120 SETTABLEKS                       R9 R2 K57 ["SetMeshTextureApisAllowed"]
      122 DUPCLOSURE                       R3 K58 [PROTO_27]
      123 SETTABLEKS                       R3 R2 K59 ["GetInsertFreeAssetsAllowed"]
      125 DUPCLOSURE                       R3 K60 [PROTO_28]
      126 SETTABLEKS                       R3 R2 K61 ["SetInsertFreeAssetsAllowed"]
      128 RETURN                           R2 1
