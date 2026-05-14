PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K3 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K1 ["ignoreUniformScaleChanges"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K2 ["ignoreAccessories"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["hashCharacter"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLE                         R3 R4 R2
       24 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "metadata"}]
        1 LOADK                            R2 K3 ["success"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["metadata"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["bundlesMetadataError"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["report"]
        5 CALL                             R1 3 0
        6 DUPTABLE                         R1 K3 [{"type"}]
        7 LOADK                            R2 K4 ["error"]
        8 SETTABLEKS                       R2 R1 K2 ["type"]
       10 RETURN                           R1 1

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
        6 DUPTABLE                         R2 K5 [{"completed", "ugcValidationResponse"}]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K3 ["completed"]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R2 K4 ["ugcValidationResponse"]
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K6 [{"completed", "duration", "ugcValidationResponse"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K3 ["completed"]
       10 GETIMPORT                        R4 K9 [os.clock]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 1
       14 SUB                              R3 R4 R5
       15 SETTABLEKS                       R3 R2 K4 ["duration"]
       17 GETUPVAL                         R3 2
       18 SETTABLEKS                       R3 R2 K5 ["ugcValidationResponse"]
       20 SETTABLE                         R2 R0 R1
       21 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
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
       24 DUPTABLE                         R3 K9 [{"skipValidateHSR"}]
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K8 ["skipValidateHSR"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K10 ["isFolderStructureEnabled"]
       31 JUMPIFNOT                        R4 ; [+22]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K10 ["isFolderStructureEnabled"]
       35 CALL                             R4 0 1
       36 JUMPIFNOT                        R4 ; [+17]
       37 LOADK                            R4 K11 ["AutoSetup"]
       38 SETTABLEKS                       R4 R3 K12 ["studioPluginName"]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K13 ["enforceShadowValidations"]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K14 ["isEntrypointMergingEnabled"]
       46 JUMPIFNOT                        R4 ; [+7]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K14 ["isEntrypointMergingEnabled"]
       50 CALL                             R4 0 1
       51 JUMPIFNOT                        R4 ; [+2]
       52 SETTABLEKS                       R2 R3 K15 ["localizationCallback"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K16 ["validateBundleReadyForUpload"]
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R6 R0 K17 ["metadata"]
       60 GETTABLEKS                       R6 R6 K18 ["allowedBundleTypeSettings"]
       62 LOADK                            R7 K19 ["Body"]
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U5
       66 LOADNIL                          R9
       67 MOVE                             R10 R3
       68 CALL                             R4 6 1
       69 NEWCLOSURE                       R6 P2
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R1
       73 NAMECALL                         R4 R4 K20 ["andThen"]
       75 CALL                             R4 2 1
       76 NAMECALL                         R4 R4 K21 ["finally"]
       78 CALL                             R4 1 0
       79 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K3 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K1 ["ignoreUniformScaleChanges"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K2 ["ignoreAccessories"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["hashCharacter"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["current"]
       25 GETTABLE                         R3 R4 R2
       26 JUMPIFNOT                        R3 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K5 ["current"]
       31 LOADB                            R4 1
       32 SETTABLE                         R4 R3 R2
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K5 ["current"]
       36 JUMPIFNOTEQKNIL                  R3 ; [+21]
       38 GETUPVAL                         R3 2
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K6 ["util"]
       42 GETTABLEKS                       R4 R4 K7 ["BundlesMetadata"]
       44 GETTABLEKS                       R4 R4 K8 ["fetch"]
       46 CALL                             R4 0 1
       47 DUPCLOSURE                       R6 K9 [PROTO_1]
       48 NAMECALL                         R4 R4 K10 ["andThen"]
       50 CALL                             R4 2 1
       51 NEWCLOSURE                       R6 P1
       52 CAPTURE                          UPVAL U4
       53 NAMECALL                         R4 R4 K11 ["catch"]
       55 CALL                             R4 2 1
       56 SETTABLEKS                       R4 R3 K5 ["current"]
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R5 R5 K5 ["current"]
       61 JUMPIFNOTEQKNIL                  R5 ; [+2]
       63 LOADB                            R4 0 +1
       64 LOADB                            R4 1
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K12 ["LUAU_ANALYZE_ERROR"]
       68 FASTCALL2                        ASSERT R4 R5 ; [+3]
       70 GETIMPORT                        R3 K14 [assert]
       72 CALL                             R3 2 0
       73 GETUPVAL                         R3 2
       74 GETTABLEKS                       R3 R3 K5 ["current"]
       76 NEWCLOSURE                       R5 P2
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R2
       83 NAMECALL                         R3 R3 K10 ["andThen"]
       85 CALL                             R3 2 0
       86 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeHashSerializeContext"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 DUPTABLE                         R3 K3 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K1 ["ignoreUniformScaleChanges"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K2 ["ignoreAccessories"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["hashCharacter"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["current"]
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R2
       27 GETUPVAL                         R3 2
       28 MOVE                             R4 R0
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_11:
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
       63 NEWTABLE                         R10 0 0
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 NEWTABLE                         R11 0 1
       75 MOVE                             R12 R8
       76 SETLIST                          R11 R12 1 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 6
       80 GETUPVAL                         R11 5
       81 GETTABLEKS                       R11 R11 K8 ["util"]
       83 GETTABLEKS                       R11 R11 K9 ["canUploadBundlesAsync"]
       85 CALL                             R10 1 2
       86 DUPTABLE                         R12 K19 [{"cachedResponses", "validateBundle", "revalidateBundle", "calculateScaleToValidateBoundsAsync", "preprocessDataAsync", "isPreprocessDataCached", "findCachedValidationResponse", "canUploadBundles", "requestCanUploadBundles"}]
       87 SETTABLEKS                       R3 R12 K10 ["cachedResponses"]
       89 SETTABLEKS                       R8 R12 K11 ["validateBundle"]
       91 SETTABLEKS                       R9 R12 K12 ["revalidateBundle"]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R13 R13 K13 ["calculateScaleToValidateBoundsAsync"]
       96 SETTABLEKS                       R13 R12 K13 ["calculateScaleToValidateBoundsAsync"]
       98 GETUPVAL                         R13 5
       99 GETTABLEKS                       R13 R13 K14 ["preprocessDataAsync"]
      101 SETTABLEKS                       R13 R12 K14 ["preprocessDataAsync"]
      103 GETUPVAL                         R13 5
      104 GETTABLEKS                       R13 R13 K15 ["isPreprocessDataCached"]
      106 SETTABLEKS                       R13 R12 K15 ["isPreprocessDataCached"]
      108 SETTABLEKS                       R7 R12 K16 ["findCachedValidationResponse"]
      110 SETTABLEKS                       R10 R12 K17 ["canUploadBundles"]
      112 SETTABLEKS                       R11 R12 K18 ["requestCanUploadBundles"]
      114 GETUPVAL                         R13 2
      115 GETTABLEKS                       R13 R13 K20 ["createElement"]
      117 GETUPVAL                         R14 7
      118 GETTABLEKS                       R14 R14 K21 ["Provider"]
      120 DUPTABLE                         R15 K23 [{"value"}]
      121 SETTABLEKS                       R12 R15 K22 ["value"]
      123 GETTABLEKS                       R16 R0 K24 ["children"]
      125 CALL                             R13 3 -1
      126 RETURN                           R13 -1

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
       62 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       64 GETTABLEKS                       R8 R8 K17 ["Analytics"]
       66 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       68 GETTABLEKS                       R9 R9 K18 ["Localization"]
       70 DUPTABLE                         R10 K28 [{"cachedResponses", "validateBundle", "revalidateBundle", "findCachedValidationResponse", "calculateScaleToValidateBoundsAsync", "preprocessDataAsync", "isPreprocessDataCached", "canUploadBundles", "requestCanUploadBundles"}]
       71 NEWTABLE                         R11 0 0
       73 SETTABLEKS                       R11 R10 K19 ["cachedResponses"]
       75 MOVE                             R11 R5
       76 LOADK                            R12 K20 ["validateBundle"]
       77 CALL                             R11 1 1
       78 SETTABLEKS                       R11 R10 K20 ["validateBundle"]
       80 MOVE                             R11 R5
       81 LOADK                            R12 K21 ["revalidateBundle"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K21 ["revalidateBundle"]
       85 MOVE                             R11 R5
       86 LOADK                            R12 K22 ["findCachedValidationResponse"]
       87 CALL                             R11 1 1
       88 SETTABLEKS                       R11 R10 K22 ["findCachedValidationResponse"]
       90 MOVE                             R11 R5
       91 LOADK                            R12 K23 ["calculateScaleToValidateBoundsAsync"]
       92 CALL                             R11 1 1
       93 SETTABLEKS                       R11 R10 K23 ["calculateScaleToValidateBoundsAsync"]
       95 MOVE                             R11 R5
       96 LOADK                            R12 K24 ["preprocessDataAsync"]
       97 CALL                             R11 1 1
       98 SETTABLEKS                       R11 R10 K24 ["preprocessDataAsync"]
      100 MOVE                             R11 R5
      101 LOADK                            R12 K25 ["isPreprocessDataCached"]
      102 CALL                             R11 1 1
      103 SETTABLEKS                       R11 R10 K25 ["isPreprocessDataCached"]
      105 LOADNIL                          R11
      106 SETTABLEKS                       R11 R10 K26 ["canUploadBundles"]
      108 MOVE                             R11 R5
      109 LOADK                            R12 K27 ["requestCanUploadBundles"]
      110 CALL                             R11 1 1
      111 SETTABLEKS                       R11 R10 K27 ["requestCanUploadBundles"]
      113 GETTABLEKS                       R11 R2 K29 ["createContext"]
      115 MOVE                             R12 R10
      116 CALL                             R11 1 1
      117 DUPCLOSURE                       R12 K30 [PROTO_11]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R11
      126 DUPTABLE                         R13 K33 [{"Context", "Provider"}]
      127 SETTABLEKS                       R11 R13 K31 ["Context"]
      129 SETTABLEKS                       R12 R13 K32 ["Provider"]
      131 RETURN                           R13 1
