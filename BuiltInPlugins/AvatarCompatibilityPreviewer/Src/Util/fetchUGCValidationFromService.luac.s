PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["combineResultsIntoLegacy"]
        9 LOADB                            R9 1
       10 LOADNIL                          R10
       11 GETTABLEKS                       R11 R7 K1 ["validationData"]
       13 MOVE                             R12 R1
       14 CALL                             R8 4 2
       15 JUMPIF                           R8 ; [+23]
       16 JUMPIFNOT                        R9 ; [+22]
       17 MOVE                             R10 R9
       18 LOADNIL                          R11
       19 LOADNIL                          R12
       20 FORGPREP                         R10
       21 DUPTABLE                         R17 K4 [{"assetType", "error"}]
       22 GETTABLEKS                       R18 R7 K2 ["assetType"]
       24 SETTABLEKS                       R18 R17 K2 ["assetType"]
       26 DUPTABLE                         R18 K7 [{["type"] = "message", ["message"]}]
       27 SETTABLEKS                       R14 R18 K6 ["message"]
       29 SETTABLEKS                       R18 R17 K3 ["error"]
       31 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
       33 MOVE                             R16 R2
       34 GETIMPORT                        R15 K10 [table.insert]
       36 CALL                             R15 2 0
       37 FORGLOOP                         R10 2 ; [-17]
       39 FORGLOOP                         R3 2 ; [-34]
       41 DUPTABLE                         R3 K13 [{"errors", "pieces"}]
       42 SETTABLEKS                       R2 R3 K11 ["errors"]
       44 NEWTABLE                         R4 0 0
       46 SETTABLEKS                       R4 R3 K12 ["pieces"]
       48 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetQualityValidationClient"]
        3 GETTABLEKS                       R0 R0 K1 ["createBodyInputs"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K2 ["Body"]
        8 CALL                             R0 3 1
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K3 [0] ; [+20]
       12 NEWTABLE                         R1 0 1
       14 DUPTABLE                         R2 K5 [{"error"}]
       15 DUPTABLE                         R3 K8 [{["type"] = "message", ["message"]}]
       16 GETUPVAL                         R4 3
       17 SETTABLEKS                       R4 R3 K7 ["message"]
       19 SETTABLEKS                       R3 R2 K4 ["error"]
       21 SETLIST                          R1 R2 1 [1]
       23 DUPTABLE                         R2 K11 [{"errors", "pieces"}]
       24 SETTABLEKS                       R1 R2 K9 ["errors"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K10 ["pieces"]
       30 RETURN                           R2 1
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K0 ["AssetQualityValidationClient"]
       34 GETTABLEKS                       R1 R1 K12 ["fetch"]
       36 MOVE                             R2 R0
       37 DUPTABLE                         R3 K21 [{["source"] = "AutoSetup", ["mode"] = "shadow", ["intendedBundleType"], ["validateSingleAssetsInBundle"] = True, ["backendConfigs"]}]
       38 GETIMPORT                        R4 K25 [Enum.BundleType.BodyParts]
       40 SETTABLEKS                       R4 R3 K17 ["intendedBundleType"]
       42 DUPTABLE                         R4 K27 [{"restrictedUserIds"}]
       43 NEWTABLE                         R5 0 0
       45 SETTABLEKS                       R5 R4 K26 ["restrictedUserIds"]
       47 SETTABLEKS                       R4 R3 K20 ["backendConfigs"]
       49 CALL                             R1 2 1
       50 GETUPVAL                         R2 4
       51 MOVE                             R3 R1
       52 GETUPVAL                         R4 5
       53 CALL                             R2 2 1
       54 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 2
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R2 6
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 7
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CALL                             R4 1 -1
       11 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["UGCValidation"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETTABLEKS                       R4 R2 K9 ["AssetQualityValidationClient"]
       25 SETTABLEKS                       R4 R3 K9 ["AssetQualityValidationClient"]
       27 GETTABLEKS                       R4 R2 K10 ["combineResultsIntoLegacy"]
       29 SETTABLEKS                       R4 R3 K10 ["combineResultsIntoLegacy"]
       31 DUPCLOSURE                       R4 K11 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R5 K12 [PROTO_4]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R3 K13 ["validateBundle"]
       39 RETURN                           R3 1
