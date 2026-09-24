PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K5 [{["ignoreUniformScaleChanges"] = False, ["ignoreAccessories"] = True}]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["hashCharacter"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R2
       18 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = "success", ["metadata"]}]
        1 SETTABLEKS                       R0 R1 K2 ["metadata"]
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["bundlesMetadataError"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["report"]
        5 CALL                             R1 3 0
        6 DUPTABLE                         R1 K4 [{["type"] = "error"}]
        7 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["key"]
        2 LOADK                            R3 K1 ["."]
        3 NAMECALL                         R1 R1 K2 ["split"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K3 ["Common"]
        8 LOADK                            R5 K4 ["UGCValidation"]
        9 LOADK                            R6 K5 ["ErrorLabel"]
       10 LENGTH                           R8 R1
       11 GETTABLE                         R7 R1 R8
       12 GETTABLEKS                       R8 R0 K6 ["params"]
       14 NAMECALL                         R2 R2 K7 ["getExternalText"]
       16 CALL                             R2 6 -1
       17 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K7 [{["completed"] = True, ["duration"], ["ugcValidationResponse"]}]
        7 GETIMPORT                        R4 K10 [os.clock]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 SUB                              R3 R4 R5
       12 SETTABLEKS                       R3 R2 K5 ["duration"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K6 ["ugcValidationResponse"]
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K6 [{["completed"] = False, ["ugcValidationResponse"]}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K5 ["ugcValidationResponse"]
       10 SETTABLE                         R2 R0 R1
       11 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["[AvatarCompatibilityPreviewer] UGC validation service error: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 DUPTABLE                         R1 K7 [{"errors", "pieces"}]
       11 NEWTABLE                         R2 0 1
       13 DUPTABLE                         R3 K9 [{"error"}]
       14 DUPTABLE                         R4 K12 [{["type"] = "message", ["message"]}]
       15 DUPTABLE                         R6 K16 [{["key"] = "Common.UGCValidation.ErrorLabel.FailureWithoutReason", ["params"]}]
       16 NEWTABLE                         R7 0 0
       18 SETTABLEKS                       R7 R6 K15 ["params"]
       20 GETTABLEKS                       R7 R6 K13 ["key"]
       22 LOADK                            R9 K17 ["."]
       23 NAMECALL                         R7 R7 K18 ["split"]
       25 CALL                             R7 2 1
       26 GETUPVAL                         R8 0
       27 LOADK                            R10 K19 ["Common"]
       28 LOADK                            R11 K20 ["UGCValidation"]
       29 LOADK                            R12 K21 ["ErrorLabel"]
       30 LENGTH                           R14 R7
       31 GETTABLE                         R13 R7 R14
       32 GETTABLEKS                       R14 R6 K15 ["params"]
       34 NAMECALL                         R8 R8 K22 ["getExternalText"]
       36 CALL                             R8 6 1
       37 MOVE                             R5 R8
       38 SETTABLEKS                       R5 R4 K11 ["message"]
       40 SETTABLEKS                       R4 R3 K8 ["error"]
       42 SETLIST                          R2 R3 1 [1]
       44 SETTABLEKS                       R2 R1 K5 ["errors"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K6 ["pieces"]
       50 GETUPVAL                         R2 1
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R1
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFEQKS                       R1 K1 ["success"] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K0 ["type"]
        7 JUMPIFEQKS                       R3 K1 ["success"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K4 [assert]
       18 CALL                             R1 2 0
       19 GETIMPORT                        R1 K7 [os.clock]
       21 CALL                             R1 0 1
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U1
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 GETUPVAL                         R5 4
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+61]
       34 DUPTABLE                         R5 K10 [{"errors", "pieces"}]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K8 ["errors"]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K9 ["pieces"]
       43 GETUPVAL                         R6 2
       44 NEWCLOSURE                       R7 P3
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R5
       47 CALL                             R6 1 0
       48 DUPTABLE                         R6 K14 [{["key"] = "Common.UGCValidation.ErrorLabel.FolderStructureMismatch", ["params"]}]
       49 NEWTABLE                         R7 0 0
       51 SETTABLEKS                       R7 R6 K13 ["params"]
       53 GETTABLEKS                       R7 R6 K11 ["key"]
       55 LOADK                            R9 K15 ["."]
       56 NAMECALL                         R7 R7 K16 ["split"]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 1
       60 LOADK                            R10 K17 ["Common"]
       61 LOADK                            R11 K18 ["UGCValidation"]
       62 LOADK                            R12 K19 ["ErrorLabel"]
       63 LENGTH                           R14 R7
       64 GETTABLE                         R13 R7 R14
       65 GETTABLEKS                       R14 R6 K13 ["params"]
       67 NAMECALL                         R8 R8 K20 ["getExternalText"]
       69 CALL                             R8 6 1
       70 MOVE                             R5 R8
       71 GETUPVAL                         R6 5
       72 GETTABLEKS                       R6 R6 K21 ["validateBundle"]
       74 GETUPVAL                         R7 6
       75 GETTABLEKS                       R8 R0 K22 ["metadata"]
       77 GETTABLEKS                       R8 R8 K23 ["allowedBundleTypeSettings"]
       79 MOVE                             R9 R2
       80 MOVE                             R10 R5
       81 CALL                             R6 4 1
       82 MOVE                             R8 R3
       83 NAMECALL                         R6 R6 K24 ["andThen"]
       85 CALL                             R6 2 1
       86 NEWCLOSURE                       R8 P4
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          VAL R1
       91 NAMECALL                         R6 R6 K25 ["catch"]
       93 CALL                             R6 2 0
       94 RETURN                           R0 0
       95 DUPTABLE                         R5 K32 [{["skipValidateHSR"] = True, ["studioPluginName"] = "AutoSetup", ["enforceShadowValidations"] = True, ["localizationCallback"]}]
       96 SETTABLEKS                       R2 R5 K31 ["localizationCallback"]
       98 GETUPVAL                         R6 7
       99 GETTABLEKS                       R6 R6 K33 ["validateBundleReadyForUpload"]
      101 GETUPVAL                         R7 6
      102 GETTABLEKS                       R8 R0 K22 ["metadata"]
      104 GETTABLEKS                       R8 R8 K23 ["allowedBundleTypeSettings"]
      106 LOADK                            R9 K34 ["Body"]
      107 MOVE                             R10 R4
      108 LOADNIL                          R11
      109 MOVE                             R12 R5
      110 CALL                             R6 6 1
      111 MOVE                             R8 R3
      112 NAMECALL                         R6 R6 K24 ["andThen"]
      114 CALL                             R6 2 1
      115 NAMECALL                         R6 R6 K35 ["finally"]
      117 CALL                             R6 1 0
      118 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K5 [{["ignoreUniformScaleChanges"] = False, ["ignoreAccessories"] = True}]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["hashCharacter"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["current"]
       19 GETTABLE                         R3 R4 R2
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K7 ["current"]
       25 LOADB                            R4 1
       26 SETTABLE                         R4 R3 R2
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K7 ["current"]
       30 JUMPIFNOTEQKNIL                  R3 ; [+21]
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K8 ["util"]
       36 GETTABLEKS                       R4 R4 K9 ["BundlesMetadata"]
       38 GETTABLEKS                       R4 R4 K10 ["fetch"]
       40 CALL                             R4 0 1
       41 DUPCLOSURE                       R6 K11 [PROTO_1]
       42 NAMECALL                         R4 R4 K12 ["andThen"]
       44 CALL                             R4 2 1
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          UPVAL U4
       47 NAMECALL                         R4 R4 K13 ["catch"]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K7 ["current"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K7 ["current"]
       55 JUMPIFNOTEQKNIL                  R5 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R5 R5 K14 ["LUAU_ANALYZE_ERROR"]
       62 FASTCALL2                        ASSERT R4 R5 ; [+3]
       64 GETIMPORT                        R3 K16 [assert]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R3 R3 K7 ["current"]
       70 NEWCLOSURE                       R5 P2
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U3
       79 NAMECALL                         R3 R3 K12 ["andThen"]
       81 CALL                             R3 2 0
       82 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K5 [{["ignoreUniformScaleChanges"] = False, ["ignoreAccessories"] = True}]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["hashCharacter"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K7 ["current"]
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R3 R2
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K2 ["useRef"]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R8 R5 K3 ["current"]
       22 JUMPIFNOTEQKNIL                  R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K4 ["LUAU_ANALYZE_ERROR"]
       29 FASTCALL2                        ASSERT R7 R8 ; [+3]
       31 GETIMPORT                        R6 K6 [assert]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K2 ["useRef"]
       37 LOADNIL                          R7
       38 CALL                             R6 1 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R9 0 1
       47 MOVE                             R10 R3
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U7
       65 NEWTABLE                         R10 0 0
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       71 NEWCLOSURE                       R10 P2
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 NEWTABLE                         R11 0 1
       77 MOVE                             R12 R8
       78 SETLIST                          R11 R12 1 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 8
       82 GETUPVAL                         R11 5
       83 GETTABLEKS                       R11 R11 K8 ["util"]
       85 GETTABLEKS                       R11 R11 K9 ["canUploadBundlesAsync"]
       87 CALL                             R10 1 2
       88 DUPTABLE                         R12 K19 [{"cachedResponses", "validateBundle", "revalidateBundle", "calculateScaleToValidateBoundsAsync", "preprocessDataAsync", "isPreprocessDataCached", "findCachedValidationResponse", "canUploadBundles", "requestCanUploadBundles"}]
       89 SETTABLEKS                       R3 R12 K10 ["cachedResponses"]
       91 SETTABLEKS                       R8 R12 K11 ["validateBundle"]
       93 SETTABLEKS                       R9 R12 K12 ["revalidateBundle"]
       95 GETUPVAL                         R13 5
       96 GETTABLEKS                       R13 R13 K13 ["calculateScaleToValidateBoundsAsync"]
       98 SETTABLEKS                       R13 R12 K13 ["calculateScaleToValidateBoundsAsync"]
      100 GETUPVAL                         R13 5
      101 GETTABLEKS                       R13 R13 K14 ["preprocessDataAsync"]
      103 SETTABLEKS                       R13 R12 K14 ["preprocessDataAsync"]
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K15 ["isPreprocessDataCached"]
      108 SETTABLEKS                       R13 R12 K15 ["isPreprocessDataCached"]
      110 SETTABLEKS                       R7 R12 K16 ["findCachedValidationResponse"]
      112 SETTABLEKS                       R10 R12 K17 ["canUploadBundles"]
      114 SETTABLEKS                       R11 R12 K18 ["requestCanUploadBundles"]
      116 GETUPVAL                         R13 2
      117 GETTABLEKS                       R13 R13 K20 ["createElement"]
      119 GETUPVAL                         R14 9
      120 GETTABLEKS                       R14 R14 K21 ["Provider"]
      122 DUPTABLE                         R15 K23 [{"value"}]
      123 SETTABLEKS                       R12 R15 K22 ["value"]
      125 GETTABLEKS                       R16 R0 K24 ["children"]
      127 CALL                             R13 3 -1
      128 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["UGCValidation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["createUnimplemented"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K14 ["useCanUploadBundles"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K11 ["Util"]
       59 GETTABLEKS                       R8 R8 K15 ["CharacterHashUtils"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K11 ["Util"]
       68 GETTABLEKS                       R9 R9 K16 ["fetchUGCValidationFromService"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K18 ["getAvatarPreviewerUGCValidationViaAQSEnabled"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R1 K19 ["ContextServices"]
       82 GETTABLEKS                       R10 R10 K20 ["Analytics"]
       84 GETTABLEKS                       R11 R1 K19 ["ContextServices"]
       86 GETTABLEKS                       R11 R11 K21 ["Localization"]
       88 DUPTABLE                         R12 K32 [{["cachedResponses"], ["validateBundle"], ["revalidateBundle"], ["findCachedValidationResponse"], ["calculateScaleToValidateBoundsAsync"], ["preprocessDataAsync"], ["isPreprocessDataCached"], ["canUploadBundles"] = , ["requestCanUploadBundles"]}]
       89 NEWTABLE                         R13 0 0
       91 SETTABLEKS                       R13 R12 K22 ["cachedResponses"]
       93 MOVE                             R13 R5
       94 LOADK                            R14 K23 ["validateBundle"]
       95 CALL                             R13 1 1
       96 SETTABLEKS                       R13 R12 K23 ["validateBundle"]
       98 MOVE                             R13 R5
       99 LOADK                            R14 K24 ["revalidateBundle"]
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R12 K24 ["revalidateBundle"]
      103 MOVE                             R13 R5
      104 LOADK                            R14 K25 ["findCachedValidationResponse"]
      105 CALL                             R13 1 1
      106 SETTABLEKS                       R13 R12 K25 ["findCachedValidationResponse"]
      108 MOVE                             R13 R5
      109 LOADK                            R14 K26 ["calculateScaleToValidateBoundsAsync"]
      110 CALL                             R13 1 1
      111 SETTABLEKS                       R13 R12 K26 ["calculateScaleToValidateBoundsAsync"]
      113 MOVE                             R13 R5
      114 LOADK                            R14 K27 ["preprocessDataAsync"]
      115 CALL                             R13 1 1
      116 SETTABLEKS                       R13 R12 K27 ["preprocessDataAsync"]
      118 MOVE                             R13 R5
      119 LOADK                            R14 K28 ["isPreprocessDataCached"]
      120 CALL                             R13 1 1
      121 SETTABLEKS                       R13 R12 K28 ["isPreprocessDataCached"]
      123 MOVE                             R13 R5
      124 LOADK                            R14 K31 ["requestCanUploadBundles"]
      125 CALL                             R13 1 1
      126 SETTABLEKS                       R13 R12 K31 ["requestCanUploadBundles"]
      128 GETTABLEKS                       R13 R2 K33 ["createContext"]
      130 MOVE                             R14 R12
      131 CALL                             R13 1 1
      132 DUPCLOSURE                       R14 K34 [PROTO_12]
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R13
      143 DUPTABLE                         R15 K37 [{"Context", "Provider"}]
      144 SETTABLEKS                       R13 R15 K35 ["Context"]
      146 SETTABLEKS                       R14 R15 K36 ["Provider"]
      148 RETURN                           R15 1
