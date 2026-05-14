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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Secrets"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K1 [game]
        8 LOADK                            R4 K4 ["HttpService"]
        9 NAMECALL                         R2 R2 K3 ["GetService"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 0
       13 JUMPIFNOT                        R3 ; [+22]
       14 GETIMPORT                        R3 K6 [pcall]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 CALL                             R3 1 2
       21 JUMPIFNOT                        R3 ; [+1]
       22 RETURN                           R4 1
       23 GETIMPORT                        R5 K8 [warn]
       25 LOADK                            R7 K9 ["Failed to parse secrets: "]
       26 FASTCALL1                        TOSTRING R4 ; [+3]
       27 MOVE                             R9 R4
       28 GETIMPORT                        R8 K11 [tostring]
       30 CALL                             R8 1 1
       31 CONCAT                           R6 R7 R8
       32 CALL                             R5 1 0
       33 NEWTABLE                         R5 0 0
       35 RETURN                           R5 1
       36 GETIMPORT                        R3 K6 [pcall]
       38 NEWCLOSURE                       R4 P1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CALL                             R3 1 2
       42 JUMPIFNOT                        R3 ; [+11]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K12 ["convertSecretsToTableRows"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K13 ["sortAndReindexSecretsTableRows"]
       51 MOVE                             R7 R5
       52 CALL                             R6 1 0
       53 RETURN                           R5 1
       54 GETIMPORT                        R5 K8 [warn]
       56 LOADK                            R7 K14 ["Failed to decode secrets JSON: "]
       57 FASTCALL1                        TOSTRING R4 ; [+3]
       58 MOVE                             R9 R4
       59 GETIMPORT                        R8 K11 [tostring]
       61 CALL                             R8 1 1
       62 CONCAT                           R6 R7 R8
       63 CALL                             R5 1 0
       64 NEWTABLE                         R5 0 0
       66 RETURN                           R5 1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"Url", "Method"}]
        1 SETTABLEKS                       R0 R1 K0 ["Url"]
        3 LOADK                            R2 K3 ["GET"]
        4 SETTABLEKS                       R2 R1 K1 ["Method"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["Request"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 DUPCLOSURE                       R4 K5 [PROTO_19]
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R2 R2 K6 ["andThen"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["apis"]
        4 LOADK                            R2 K2 ["access-management/v1/feature-access?featureNames=CanEnableMeshTextureApi"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_22:
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

PROTO_23:
        0 LOADB                            R0 0
        1 LOADK                            R1 K0 ["Denied"]
        2 RETURN                           R0 2

PROTO_24:
        0 DUPCLOSURE                       R0 K0 [PROTO_22]
        1 DUPCLOSURE                       R1 K1 [PROTO_23]
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NAMECALL                         R1 R1 K0 ["await"]
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["Unable to retrieve id verification feature, defaulting to false"]
        9 CALL                             R3 1 0
       10 RETURN                           R2 1

PROTO_26:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["responseBody"]
        6 GETTABLEKS                       R4 R3 K2 ["isMeshTextureApiAccessAllowed"]
        8 RETURN                           R4 1

PROTO_27:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isMeshTextureApiAccessAllowed"}]
        2 SETTABLEKS                       R2 R6 K0 ["isMeshTextureApiAccessAllowed"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_28:
        0 LOADK                            R4 K0 ["AssetService"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["AllowInsertFreeAssets"]
        6 RETURN                           R3 1

PROTO_29:
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
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K5 ["Src"]
       28 GETTABLEKS                       R4 R4 K9 ["Flags"]
       30 GETTABLEKS                       R4 R4 K10 ["getFFlagSecretsHandleConversionErrors"]
       32 CALL                             R3 1 1
       33 CALL                             R3 0 1
       34 DUPCLOSURE                       R4 K11 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R2 K12 ["new"]
       38 DUPCLOSURE                       R4 K13 [PROTO_1]
       39 SETTABLEKS                       R4 R2 K14 ["configurationV2GET"]
       41 DUPCLOSURE                       R4 K15 [PROTO_2]
       42 SETTABLEKS                       R4 R2 K16 ["configurationV2PATCH"]
       44 DUPCLOSURE                       R4 K17 [PROTO_3]
       45 SETTABLEKS                       R4 R2 K18 ["GetPermission"]
       47 DUPCLOSURE                       R4 K19 [PROTO_4]
       48 SETTABLEKS                       R4 R2 K20 ["SetChangedPermissions"]
       50 DUPCLOSURE                       R4 K21 [PROTO_5]
       51 SETTABLEKS                       R4 R2 K22 ["GetThirdPartyPurchasesAllowed"]
       53 DUPCLOSURE                       R4 K23 [PROTO_6]
       54 SETTABLEKS                       R4 R2 K24 ["SetThirdPartyPurchasesAllowed"]
       56 DUPCLOSURE                       R4 K25 [PROTO_7]
       57 SETTABLEKS                       R4 R2 K26 ["GetThirdPartyTeleportsAllowed"]
       59 DUPCLOSURE                       R4 K27 [PROTO_8]
       60 SETTABLEKS                       R4 R2 K28 ["SetThirdPartyTeleportsAllowed"]
       62 DUPCLOSURE                       R4 K29 [PROTO_9]
       63 SETTABLEKS                       R4 R2 K30 ["GetHttpEnabled"]
       65 DUPCLOSURE                       R4 K31 [PROTO_10]
       66 SETTABLEKS                       R4 R2 K32 ["SetHttpEnabled"]
       68 DUPCLOSURE                       R4 K33 [PROTO_11]
       69 SETTABLEKS                       R4 R2 K34 ["GetStudioAccessToApisAllowed"]
       71 DUPCLOSURE                       R4 K35 [PROTO_12]
       72 SETTABLEKS                       R4 R2 K36 ["SetStudioAccessToApisAllowed"]
       74 DUPCLOSURE                       R4 K37 [PROTO_13]
       75 SETTABLEKS                       R4 R2 K38 ["GetSecrets"]
       77 DUPCLOSURE                       R4 K39 [PROTO_14]
       78 SETTABLEKS                       R4 R2 K40 ["SetSecrets"]
       80 DUPCLOSURE                       R4 K41 [PROTO_17]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R4 R2 K42 ["GetSecretsAsTableRows"]
       85 DUPCLOSURE                       R4 K43 [PROTO_18]
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R4 R2 K44 ["SetSecretsFromSecretsAsTableRows"]
       89 GETIMPORT                        R4 K1 [script]
       91 GETTABLEKS                       R4 R4 K2 ["Parent"]
       93 GETTABLEKS                       R4 R4 K2 ["Parent"]
       95 GETTABLEKS                       R4 R4 K2 ["Parent"]
       97 GETTABLEKS                       R4 R4 K2 ["Parent"]
       99 GETIMPORT                        R5 K4 [require]
      101 GETTABLEKS                       R6 R4 K5 ["Src"]
      103 GETTABLEKS                       R6 R6 K45 ["Networking"]
      105 GETTABLEKS                       R6 R6 K46 ["Http"]
      107 CALL                             R5 1 1
      108 GETIMPORT                        R6 K48 [game]
      110 LOADK                            R8 K49 ["HttpService"]
      111 NAMECALL                         R6 R6 K50 ["GetService"]
      113 CALL                             R6 2 1
      114 DUPCLOSURE                       R7 K51 [PROTO_20]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 DUPCLOSURE                       R8 K52 [PROTO_21]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R7
      120 DUPCLOSURE                       R9 K53 [PROTO_24]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R7
      123 DUPCLOSURE                       R10 K54 [PROTO_25]
      124 CAPTURE                          VAL R9
      125 SETTABLEKS                       R10 R2 K55 ["GetMeshTextureApiAmpStatus"]
      127 DUPCLOSURE                       R10 K56 [PROTO_26]
      128 SETTABLEKS                       R10 R2 K57 ["GetMeshTextureApisAllowed"]
      130 DUPCLOSURE                       R10 K58 [PROTO_27]
      131 SETTABLEKS                       R10 R2 K59 ["SetMeshTextureApisAllowed"]
      133 DUPCLOSURE                       R4 K60 [PROTO_28]
      134 SETTABLEKS                       R4 R2 K61 ["GetInsertFreeAssetsAllowed"]
      136 DUPCLOSURE                       R4 K62 [PROTO_29]
      137 SETTABLEKS                       R4 R2 K63 ["SetInsertFreeAssetsAllowed"]
      139 RETURN                           R2 1
