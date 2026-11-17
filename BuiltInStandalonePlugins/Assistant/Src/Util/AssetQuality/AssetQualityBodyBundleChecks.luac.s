PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADK                            R4 K2 ["AvatarPartScaleType"]
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+3]
       14 LOADK                            R3 K3 ["Classic"]
       15 RETURN                           R3 1
       16 LOADK                            R6 K4 ["StringValue"]
       17 NAMECALL                         R4 R2 K5 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R3 R2 K6 ["Value"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 JUMPIFEQKNIL                     R3 ; [+7]
       27 GETUPVAL                         R6 0
       28 GETTABLE                         R5 R6 R3
       29 JUMPIFEQKNIL                     R5 ; [+3]
       31 MOVE                             R4 R3
       32 RETURN                           R4 1
       33 LOADNIL                          R4
       34 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+10]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K3 [{[1] = "BodyScaleValidationErrorUnknown", ["failureStringParams"]}]
        8 DUPTABLE                         R4 K6 [{["scaleTypes"] = "AvatarPartScaleType: Classic | ProportionsNormal | ProportionsSlender"}]
        9 SETTABLEKS                       R4 R3 K2 ["failureStringParams"]
       11 SETLIST                          R2 R3 1 [1]
       13 RETURN                           R2 1
       14 LOADK                            R4 K7 ["Humanoid"]
       15 NAMECALL                         R2 R0 K8 ["FindFirstChild"]
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+7]
       20 NEWTABLE                         R3 0 1
       22 DUPTABLE                         R4 K10 [{[1] = "BodyScaleValidationErrorHumanoidMissing"}]
       23 SETLIST                          R3 R4 1 [1]
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 GETUPVAL                         R4 1
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 GETTABLEKS                       R9 R8 K11 ["humanoidValueName"]
       34 MOVE                             R12 R9
       35 NAMECALL                         R10 R2 K8 ["FindFirstChild"]
       37 CALL                             R10 2 1
       38 JUMPIFEQKNIL                     R10 ; [+34]
       40 LOADK                            R13 K12 ["NumberValue"]
       41 NAMECALL                         R11 R10 K13 ["IsA"]
       43 CALL                             R11 2 1
       44 JUMPIFNOT                        R11 ; [+28]
       45 GETUPVAL                         R13 2
       46 GETTABLE                         R12 R13 R1
       47 GETTABLEKS                       R13 R8 K14 ["scaleName"]
       49 GETTABLE                         R11 R12 R13
       50 GETTABLEKS                       R12 R10 K15 ["Value"]
       52 JUMPIFEQ                         R12 R11 ; [+20]
       54 DUPTABLE                         R14 K17 [{[1] = "BodyScaleValidationErrorNotDefaultValue", ["failureStringParams"]}]
       55 DUPTABLE                         R15 K20 [{"scaleName", "defaultValue", "scaleType"}]
       56 SETTABLEKS                       R9 R15 K14 ["scaleName"]
       58 SETTABLEKS                       R11 R15 K18 ["defaultValue"]
       60 LOADK                            R17 K21 ["AvatarPartScaleType "]
       61 MOVE                             R18 R1
       62 CONCAT                           R16 R17 R18
       63 SETTABLEKS                       R16 R15 K19 ["scaleType"]
       65 SETTABLEKS                       R15 R14 K2 ["failureStringParams"]
       67 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       69 MOVE                             R13 R3
       70 GETIMPORT                        R12 K24 [table.insert]
       72 CALL                             R12 2 0
       73 FORGLOOP                         R4 2 ; [-42]
       75 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R3 K0 ["BodyColors"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+7]
        6 NEWTABLE                         R1 0 1
        8 DUPTABLE                         R2 K4 [{["failureStringKey"] = "UGCBodyValidationColorsError"}]
        9 SETLIST                          R1 R2 1 [1]
       11 RETURN                           R1 1
       12 NEWTABLE                         R1 0 0
       14 RETURN                           R1 1

PROTO_4:
        0 GETTABLE                         R2 R0 R1
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETTABLEKS                       R3 R2 K0 ["allowedAssetTypeSettings"]
        4 JUMPIF                           R3 ; [+5]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["Name"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R2 R8
       10 FORGLOOP                         R3 2 ; [-5]
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R9 R8 K1 ["minimumQuantity"]
       20 JUMPIFNOTEQKN                    R9 K2 [1] ; [+14]
       22 GETTABLEKS                       R9 R8 K3 ["isEligibleForUpload"]
       24 JUMPIFEQKB                       R9 FALSE ; [+10]
       26 GETTABLE                         R9 R2 R7
       27 JUMPIF                           R9 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       30 MOVE                             R10 R3
       31 MOVE                             R11 R7
       32 GETIMPORT                        R9 K6 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 ; [-18]
       37 GETIMPORT                        R4 K8 [table.sort]
       39 MOVE                             R5 R3
       40 CALL                             R4 1 0
       41 NEWTABLE                         R4 0 0
       43 MOVE                             R5 R3
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 DUPTABLE                         R12 K12 [{["failureStringKey"] = "ValidationErrorItemNotDetected", ["failureStringParams"]}]
       48 DUPTABLE                         R13 K14 [{"itemName"}]
       49 SETTABLEKS                       R9 R13 K13 ["itemName"]
       51 SETTABLEKS                       R13 R12 K11 ["failureStringParams"]
       53 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       55 MOVE                             R11 R4
       56 GETIMPORT                        R10 K6 [table.insert]
       58 CALL                             R10 2 0
       59 FORGLOOP                         R5 2 ; [-13]
       61 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETUPVAL                         R13 0
       11 GETTABLEKS                       R14 R11 K0 ["failureStringKey"]
       13 GETTABLE                         R12 R13 R14
       14 JUMPIFEQKNIL                     R12 ; [+4]
       16 GETTABLEKS                       R13 R11 K0 ["failureStringKey"]
       18 SETTABLE                         R12 R1 R13
       19 FORGLOOP                         R7 2 ; [-10]
       21 FORGLOOP                         R2 2 ; [-16]
       23 GETIMPORT                        R3 K2 [next]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 1
       27 JUMPIFEQKNIL                     R3 ; [+3]
       29 MOVE                             R2 R1
       30 RETURN                           R2 1
       31 LOADNIL                          R2
       32 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findMissingRequiredPieces"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LENGTH                           R4 R2
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+5]
       10 DUPTABLE                         R3 K2 [{"RequiredPiecesPresent"}]
       11 SETTABLEKS                       R2 R3 K1 ["RequiredPiecesPresent"]
       13 RETURN                           R3 1
       14 NEWTABLE                         R3 0 0
       16 RETURN                           R3 1

PROTO_8:
        0 LENGTH                           R2 R1
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 SETTABLE                         R1 R2 R0
        6 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R3
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["findMissingRequiredPieces"]
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 CALL                             R5 2 1
       10 LENGTH                           R6 R5
       11 LOADN                            R7 0
       12 JUMPIFNOTLT                      R7 R6 ; [+3]
       14 SETTABLEKS                       R5 R3 K1 ["RequiredPiecesPresent"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["isBodyScaleCheckEnforced"]
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+11]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["findBodyScaleFailures"]
       24 MOVE                             R6 R0
       25 CALL                             R5 1 1
       26 LENGTH                           R6 R5
       27 LOADN                            R7 0
       28 JUMPIFNOTLT                      R7 R6 ; [+3]
       30 SETTABLEKS                       R5 R3 K4 ["BodyScaleDefault"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K5 ["findBodyColorsFailures"]
       35 MOVE                             R6 R0
       36 CALL                             R5 1 1
       37 LENGTH                           R6 R5
       38 LOADN                            R7 0
       39 JUMPIFNOTLT                      R7 R6 ; [+3]
       41 SETTABLEKS                       R5 R3 K6 ["BodyColorsPresent"]
       43 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetQuality"]
       15 GETTABLEKS                       R2 R2 K9 ["Flags"]
       17 GETTABLEKS                       R2 R2 K10 ["getFFlagEnableUGCBundleUploadBodyScale"]
       19 CALL                             R1 1 1
       20 DUPTABLE                         R2 K14 [{"Classic", "ProportionsNormal", "ProportionsSlender"}]
       21 DUPTABLE                         R3 K22 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 0}]
       22 SETTABLEKS                       R3 R2 K11 ["Classic"]
       24 DUPTABLE                         R3 K23 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 0, ["bodyType"] = 1}]
       25 SETTABLEKS                       R3 R2 K12 ["ProportionsNormal"]
       27 DUPTABLE                         R3 K24 [{["height"] = 1, ["width"] = 1, ["head"] = 1, ["proportion"] = 1, ["bodyType"] = 1}]
       28 SETTABLEKS                       R3 R2 K13 ["ProportionsSlender"]
       30 NEWTABLE                         R3 0 5
       32 DUPTABLE                         R4 K28 [{["scaleName"] = "height", ["humanoidValueName"] = "BodyHeightScale"}]
       33 DUPTABLE                         R5 K30 [{["scaleName"] = "width", ["humanoidValueName"] = "BodyWidthScale"}]
       34 DUPTABLE                         R6 K32 [{["scaleName"] = "head", ["humanoidValueName"] = "HeadScale"}]
       35 DUPTABLE                         R7 K34 [{["scaleName"] = "bodyType", ["humanoidValueName"] = "BodyTypeScale"}]
       36 DUPTABLE                         R8 K36 [{["scaleName"] = "proportion", ["humanoidValueName"] = "BodyProportionScale"}]
       37 SETLIST                          R3 R4 5 [1]
       39 DUPTABLE                         R4 K47 [{["BodyScaleValidationErrorHumanoidMissing"] = "Missing Humanoid object. Root instance must have Humanoid object for body upload.", ["BodyScaleValidationErrorNotDefaultValue"] = "{scaleName} must be {defaultValue} for {scaleType}", ["BodyScaleValidationErrorUnknown"] = "Unknown body scale type. {scaleTypes}", ["UGCBodyValidationColorsError"] = "BodyColors object must be parented under Avatar model for UGC Body upload", ["ValidationErrorItemNotDetected"] = "{itemName} not detected. Please check naming, rigging, and attachments."}]
       40 NEWTABLE                         R5 8 0
       42 DUPCLOSURE                       R6 K48 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R6 R5 K49 ["isBodyScaleCheckEnforced"]
       46 DUPCLOSURE                       R6 K50 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R7 K51 [PROTO_2]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R5 K52 ["findBodyScaleFailures"]
       54 DUPCLOSURE                       R7 K53 [PROTO_3]
       55 SETTABLEKS                       R7 R5 K54 ["findBodyColorsFailures"]
       57 DUPCLOSURE                       R7 K55 [PROTO_4]
       58 SETTABLEKS                       R7 R5 K56 ["getAllowedAssetTypeSettings"]
       60 DUPCLOSURE                       R7 K57 [PROTO_5]
       61 SETTABLEKS                       R7 R5 K58 ["findMissingRequiredPieces"]
       63 DUPCLOSURE                       R7 K59 [PROTO_6]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R7 R5 K60 ["getRelevantSourceStrings"]
       67 DUPCLOSURE                       R7 K61 [PROTO_7]
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R7 R5 K62 ["checkDynamicHeadBundle"]
       71 DUPCLOSURE                       R7 K63 [PROTO_9]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R7 R5 K64 ["checkBodyBundle"]
       75 RETURN                           R5 1
