PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = "allowed"}]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createCachedResponse"]
        8 CALL                             R1 0 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R2 K3 [table.clone]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 SETTABLE                         R1 R2 R3
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["waitForSignal"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETUPVAL                         R2 0
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K0 ["waitForSignal"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K1 ["Once"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K3 [{[1] = False, ["errors"]}]
        1 NEWTABLE                         R1 0 1
        3 LOADK                            R2 K4 ["Not implemented"]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K2 ["errors"]
        8 RETURN                           R0 1

PROTO_6:
        0 DUPTABLE                         R0 K3 [{[1] = False, ["errors"]}]
        1 NEWTABLE                         R1 0 1
        3 LOADK                            R2 K4 ["Not implemented"]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K2 ["errors"]
        8 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R1
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       29 DUPCLOSURE                       R6 K2 [PROTO_5]
       30 NEWTABLE                         R7 0 0
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       36 DUPCLOSURE                       R7 K3 [PROTO_6]
       37 NEWTABLE                         R8 0 0
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       43 DUPCLOSURE                       R8 K4 [PROTO_7]
       44 NEWTABLE                         R9 0 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R9 R0 K5 ["canUploadBundlesAsync"]
       50 JUMPIF                           R9 ; [+1]
       51 GETUPVAL                         R9 2
       52 CALL                             R8 1 2
       53 DUPTABLE                         R10 K15 [{"cachedResponses", "validateBundle", "revalidateBundle", "calculateScaleToValidateBoundsAsync", "preprocessDataAsync", "isPreprocessDataCached", "findCachedValidationResponse", "canUploadBundles", "requestCanUploadBundles"}]
       54 SETTABLEKS                       R1 R10 K6 ["cachedResponses"]
       56 SETTABLEKS                       R4 R10 K7 ["validateBundle"]
       58 SETTABLEKS                       R4 R10 K8 ["revalidateBundle"]
       60 SETTABLEKS                       R5 R10 K9 ["calculateScaleToValidateBoundsAsync"]
       62 SETTABLEKS                       R6 R10 K10 ["preprocessDataAsync"]
       64 SETTABLEKS                       R7 R10 K11 ["isPreprocessDataCached"]
       66 SETTABLEKS                       R3 R10 K12 ["findCachedValidationResponse"]
       68 SETTABLEKS                       R8 R10 K13 ["canUploadBundles"]
       70 SETTABLEKS                       R9 R10 K14 ["requestCanUploadBundles"]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K16 ["createElement"]
       75 GETUPVAL                         R12 3
       76 GETTABLEKS                       R12 R12 K17 ["Context"]
       78 GETTABLEKS                       R12 R12 K18 ["Provider"]
       80 DUPTABLE                         R13 K20 [{"value"}]
       81 SETTABLEKS                       R10 R13 K19 ["value"]
       83 GETTABLEKS                       R14 R0 K21 ["children"]
       85 CALL                             R11 3 -1
       86 RETURN                           R11 -1

PROTO_9:
        0 DUPTABLE                         R0 K3 [{[1] = True, ["ugcValidationResponse"]}]
        1 DUPTABLE                         R1 K6 [{"errors", "pieces"}]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K4 ["errors"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K5 ["pieces"]
       10 SETTABLEKS                       R1 R0 K2 ["ugcValidationResponse"]
       12 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"waitForSignal", "canUploadBundlesAsync", "createCachedResponse"}]
        5 GETTABLEKS                       R4 R0 K1 ["waitForSignal"]
        7 SETTABLEKS                       R4 R3 K1 ["waitForSignal"]
        9 GETTABLEKS                       R4 R0 K2 ["canUploadBundlesAsync"]
       11 SETTABLEKS                       R4 R3 K2 ["canUploadBundlesAsync"]
       13 DUPCLOSURE                       R4 K5 [PROTO_9]
       14 SETTABLEKS                       R4 R3 K3 ["createCachedResponse"]
       16 GETTABLEKS                       R4 R0 K6 ["children"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_11:
        0 DUPTABLE                         R0 K3 [{[1] = True, ["ugcValidationResponse"]}]
        1 DUPTABLE                         R1 K6 [{"errors", "pieces"}]
        2 NEWTABLE                         R2 0 3
        4 DUPTABLE                         R3 K9 [{"assetType", "error"}]
        5 GETIMPORT                        R4 K13 [Enum.AssetType.Head]
        7 SETTABLEKS                       R4 R3 K7 ["assetType"]
        9 DUPTABLE                         R4 K17 [{["type"] = "message", ["message"] = "Your brain gets smart, but your head gets dumb"}]
       10 SETTABLEKS                       R4 R3 K8 ["error"]
       12 DUPTABLE                         R4 K19 [{["assetType"] = , ["error"]}]
       13 DUPTABLE                         R5 K21 [{["type"] = "message", ["message"] = "Full body error"}]
       14 SETTABLEKS                       R5 R4 K8 ["error"]
       16 DUPTABLE                         R5 K9 [{"assetType", "error"}]
       17 GETIMPORT                        R6 K23 [Enum.AssetType.LeftArm]
       19 SETTABLEKS                       R6 R5 K7 ["assetType"]
       21 DUPTABLE                         R6 K25 [{["type"] = "notFound"}]
       22 SETTABLEKS                       R6 R5 K8 ["error"]
       24 SETLIST                          R2 R3 3 [1]
       26 SETTABLEKS                       R2 R1 K4 ["errors"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K5 ["pieces"]
       32 SETTABLEKS                       R1 R0 K2 ["ugcValidationResponse"]
       34 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"createCachedResponse"}]
        5 DUPCLOSURE                       R4 K3 [PROTO_11]
        6 SETTABLEKS                       R4 R3 K1 ["createCachedResponse"]
        8 GETTABLEKS                       R4 R0 K4 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_13:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"createCachedResponse"}]
        5 DUPCLOSURE                       R4 K3 [PROTO_13]
        6 SETTABLEKS                       R4 R3 K1 ["createCachedResponse"]
        8 GETTABLEKS                       R4 R0 K4 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_15:
        0 DUPTABLE                         R0 K3 [{[1] = False, ["ugcValidationResponse"]}]
        1 DUPTABLE                         R1 K6 [{"errors", "pieces"}]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K4 ["errors"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K5 ["pieces"]
       10 SETTABLEKS                       R1 R0 K2 ["ugcValidationResponse"]
       12 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"createCachedResponse"}]
        5 DUPCLOSURE                       R4 K3 [PROTO_15]
        6 SETTABLEKS                       R4 R3 K1 ["createCachedResponse"]
        8 GETTABLEKS                       R4 R0 K4 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_17:
        0 DUPTABLE                         R0 K3 [{[1] = False, ["ugcValidationResponse"]}]
        1 DUPTABLE                         R1 K6 [{"errors", "pieces"}]
        2 NEWTABLE                         R2 0 1
        4 DUPTABLE                         R3 K9 [{"assetType", "error"}]
        5 GETIMPORT                        R4 K13 [Enum.AssetType.Head]
        7 SETTABLEKS                       R4 R3 K7 ["assetType"]
        9 DUPTABLE                         R4 K17 [{["type"] = "message", ["message"] = "Your brain gets smart, but your head gets dumb"}]
       10 SETTABLEKS                       R4 R3 K8 ["error"]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K4 ["errors"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K5 ["pieces"]
       20 SETTABLEKS                       R1 R0 K2 ["ugcValidationResponse"]
       22 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"createCachedResponse"}]
        5 DUPCLOSURE                       R4 K3 [PROTO_17]
        6 SETTABLEKS                       R4 R3 K1 ["createCachedResponse"]
        8 GETTABLEKS                       R4 R0 K4 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Signal"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["UGCValidation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["UGCValidationContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["UGCValidationContext"]
       47 GETTABLEKS                       R6 R6 K14 ["useCanUploadBundles"]
       49 CALL                             R5 1 1
       50 NEWTABLE                         R6 8 0
       52 DUPCLOSURE                       R7 K15 [PROTO_0]
       53 DUPCLOSURE                       R8 K16 [PROTO_8]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 DUPCLOSURE                       R9 K17 [PROTO_10]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R9 R6 K18 ["AlwaysPassesProvider"]
       63 DUPCLOSURE                       R9 K19 [PROTO_12]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R9 R6 K20 ["AlwaysFailsProvider"]
       68 DUPCLOSURE                       R9 K21 [PROTO_14]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R9 R6 K22 ["NeverReturnsProvider"]
       73 DUPCLOSURE                       R9 K23 [PROTO_16]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R9 R6 K24 ["InProgressProvider"]
       78 DUPCLOSURE                       R9 K25 [PROTO_18]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R9 R6 K26 ["InProgressErrorsProvider"]
       83 RETURN                           R6 1
