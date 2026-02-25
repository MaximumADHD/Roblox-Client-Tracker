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
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R8 K2 ["/developer-subscriptions/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/plans"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Params"}]
        8 SETTABLEKS                       R2 R8 K4 ["Params"]
       10 NAMECALL                         R4 R3 K6 ["get"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R6 K2 ["/developer-subscriptions/v1/universes/plans/check-name-and-description"]
        4 DUPTABLE                         R7 K5 [{"Params", "CachePolicy"}]
        5 DUPTABLE                         R8 K7 [{"name"}]
        6 SETTABLEKS                       R1 R8 K6 ["name"]
        8 SETTABLEKS                       R8 R7 K3 ["Params"]
       10 GETIMPORT                        R8 K11 [Enum.HttpCachePolicy.None]
       12 SETTABLEKS                       R8 R7 K4 ["CachePolicy"]
       14 NAMECALL                         R3 R2 K12 ["get"]
       16 CALL                             R3 4 -1
       17 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["www"]
        3 LOADK                            R6 K2 ["/ide/publish/UploadNewImage"]
        4 DUPTABLE                         R7 K7 [{"Params", "Body", "CachePolicy", "Headers"}]
        5 DUPTABLE                         R8 K10 [{"name", "description"}]
        6 LOADK                            R9 K11 ["DevSubImage"]
        7 SETTABLEKS                       R9 R8 K8 ["name"]
        9 LOADK                            R9 K12 ["None"]
       10 SETTABLEKS                       R9 R8 K9 ["description"]
       12 SETTABLEKS                       R8 R7 K3 ["Params"]
       14 NAMECALL                         R8 R1 K13 ["GetBinaryContents"]
       16 CALL                             R8 1 1
       17 SETTABLEKS                       R8 R7 K4 ["Body"]
       19 GETIMPORT                        R8 K16 [Enum.HttpCachePolicy.None]
       21 SETTABLEKS                       R8 R7 K5 ["CachePolicy"]
       23 NEWTABLE                         R8 1 0
       25 LOADK                            R9 K17 ["multipart/form-data; boundary=EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
       26 SETTABLEKS                       R9 R8 K18 ["Content-Type"]
       28 SETTABLEKS                       R8 R7 K6 ["Headers"]
       30 NAMECALL                         R3 R2 K19 ["post"]
       32 CALL                             R3 4 -1
       33 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K0 ["__networking"]
        2 LOADK                            R9 K1 ["apis"]
        3 LOADK                            R11 K2 ["/developer-subscriptions/v1/universes/"]
        4 MOVE                             R12 R1
        5 LOADK                            R13 K3 ["/plans"]
        6 CONCAT                           R10 R11 R13
        7 DUPTABLE                         R11 K6 [{"Body", "CachePolicy"}]
        8 DUPTABLE                         R12 K11 [{"imageAssetId", "name", "prepaidOptions", "priceInRobux"}]
        9 SETTABLEKS                       R5 R12 K7 ["imageAssetId"]
       11 SETTABLEKS                       R2 R12 K8 ["name"]
       13 SETTABLEKS                       R3 R12 K9 ["prepaidOptions"]
       15 SETTABLEKS                       R4 R12 K10 ["priceInRobux"]
       17 SETTABLEKS                       R12 R11 K4 ["Body"]
       19 GETIMPORT                        R12 K15 [Enum.HttpCachePolicy.None]
       21 SETTABLEKS                       R12 R11 K5 ["CachePolicy"]
       23 NAMECALL                         R7 R6 K16 ["post"]
       25 CALL                             R7 4 -1
       26 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R7 K2 ["/developer-subscriptions/v1/universes/plans/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 DUPTABLE                         R7 K5 [{"Body", "CachePolicy"}]
        7 DUPTABLE                         R8 K7 [{"status"}]
        8 LOADK                            R9 K8 ["Closed"]
        9 SETTABLEKS                       R9 R8 K6 ["status"]
       11 SETTABLEKS                       R8 R7 K3 ["Body"]
       13 GETIMPORT                        R8 K12 [Enum.HttpCachePolicy.None]
       15 SETTABLEKS                       R8 R7 K4 ["CachePolicy"]
       17 NAMECALL                         R3 R2 K13 ["patch"]
       19 CALL                             R3 4 -1
       20 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R8 R0 K0 ["__networking"]
        2 JUMPIFNOTEQKNIL                  R7 ; [+7]
        4 GETIMPORT                        R9 K3 [string.match]
        6 MOVE                             R10 R4
        7 LOADK                            R11 K4 ["%d+"]
        8 CALL                             R9 2 1
        9 MOVE                             R7 R9
       10 DUPTABLE                         R9 K8 [{"imageAssetId", "name", "prepaidOptions"}]
       11 SETTABLEKS                       R7 R9 K5 ["imageAssetId"]
       13 OR                               R10 R5 R2
       14 SETTABLEKS                       R10 R9 K6 ["name"]
       16 OR                               R10 R6 R3
       17 SETTABLEKS                       R10 R9 K7 ["prepaidOptions"]
       19 LOADK                            R12 K9 ["apis"]
       20 LOADK                            R14 K10 ["/developer-subscriptions/v1/universes/plans/"]
       21 MOVE                             R15 R1
       22 CONCAT                           R13 R14 R15
       23 DUPTABLE                         R14 K13 [{"Body", "CachePolicy"}]
       24 SETTABLEKS                       R9 R14 K11 ["Body"]
       26 GETIMPORT                        R15 K17 [Enum.HttpCachePolicy.None]
       28 SETTABLEKS                       R15 R14 K12 ["CachePolicy"]
       30 NAMECALL                         R10 R8 K18 ["patch"]
       32 CALL                             R10 4 -1
       33 RETURN                           R10 -1

PROTO_7:
        0 NEWTABLE                         R4 0 0
        2 DUPTABLE                         R5 K3 [{"status", "sortOrder", "cursor"}]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R6 K4 ["Open"]
        5 JUMP                             ; [+1]
        6 LOADK                            R6 K5 ["Closed"]
        7 SETTABLEKS                       R6 R5 K0 ["status"]
        9 LOADK                            R6 K6 ["Asc"]
       10 SETTABLEKS                       R6 R5 K1 ["sortOrder"]
       12 SETTABLEKS                       R3 R5 K2 ["cursor"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R5
       16 NAMECALL                         R6 R0 K7 ["devSubsV1GET"]
       18 CALL                             R6 3 1
       19 NAMECALL                         R6 R6 K8 ["await"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R6 K9 ["responseBody"]
       24 GETIMPORT                        R8 K11 [pairs]
       26 GETTABLEKS                       R9 R7 K12 ["data"]
       28 CALL                             R8 1 3
       29 FORGPREP_NEXT                    R8
       30 DUPTABLE                         R13 K24 [{"IsNew", "Key", "Id", "Image", "Name", "Price", "CreationDate", "Active", "Subscribers", "PendingEarning", "Prepaid"}]
       31 LOADB                            R14 0
       32 SETTABLEKS                       R14 R13 K13 ["IsNew"]
       34 GETTABLEKS                       R15 R12 K25 ["id"]
       36 FASTCALL1                        TOSTRING R15 ; [+2]
       37 GETIMPORT                        R14 K27 [tostring]
       39 CALL                             R14 1 1
       40 SETTABLEKS                       R14 R13 K14 ["Key"]
       42 GETTABLEKS                       R14 R12 K25 ["id"]
       44 SETTABLEKS                       R14 R13 K15 ["Id"]
       46 LOADK                            R15 K28 ["rbxassetid://"]
       47 GETTABLEKS                       R16 R12 K29 ["imageAssetId"]
       49 CONCAT                           R14 R15 R16
       50 SETTABLEKS                       R14 R13 K16 ["Image"]
       52 GETTABLEKS                       R14 R12 K30 ["name"]
       54 SETTABLEKS                       R14 R13 K17 ["Name"]
       56 GETTABLEKS                       R14 R12 K31 ["priceInRobux"]
       58 SETTABLEKS                       R14 R13 K18 ["Price"]
       60 GETTABLEKS                       R14 R12 K32 ["created"]
       62 SETTABLEKS                       R14 R13 K19 ["CreationDate"]
       64 GETTABLEKS                       R15 R12 K0 ["status"]
       66 JUMPIFEQKS                       R15 K4 ["Open"] ; [+2]
       68 LOADB                            R14 0 +1
       69 LOADB                            R14 1
       70 SETTABLEKS                       R14 R13 K20 ["Active"]
       72 LOADN                            R14 231
       73 SETTABLEKS                       R14 R13 K21 ["Subscribers"]
       75 LOADN                            R14 15
       76 SETTABLEKS                       R14 R13 K22 ["PendingEarning"]
       78 LOADN                            R14 6
       79 SETTABLEKS                       R14 R13 K23 ["Prepaid"]
       81 GETTABLEKS                       R14 R13 K14 ["Key"]
       83 SETTABLE                         R13 R4 R14
       84 FORGLOOP                         R8 2 ; [-55]
       86 GETTABLEKS                       R8 R7 K33 ["nextPageCursor"]
       88 JUMPIFNOTEQKNIL                  R8 ; [+2]
       90 LOADK                            R8 K34 [""]
       91 MOVE                             R9 R4
       92 MOVE                             R10 R8
       93 RETURN                           R9 2

PROTO_8:
        0 GETTABLEKS                       R5 R2 K0 ["Image"]
        2 NAMECALL                         R3 R0 K1 ["uploadImagePOST"]
        4 CALL                             R3 2 1
        5 NAMECALL                         R3 R3 K2 ["await"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       10 MOVE                             R7 R1
       11 GETTABLEKS                       R8 R2 K4 ["Name"]
       13 GETTABLEKS                       R9 R2 K5 ["Prepaid"]
       15 GETTABLEKS                       R10 R2 K6 ["Price"]
       17 MOVE                             R11 R4
       18 NAMECALL                         R5 R0 K7 ["devSubsCreateV1POST"]
       20 CALL                             R5 6 1
       21 NAMECALL                         R5 R5 K2 ["await"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R2 K0 ["Image"]
        2 JUMPIFNOT                        R3 ; [+30]
        3 GETTABLEKS                       R5 R2 K0 ["Image"]
        5 NAMECALL                         R3 R0 K1 ["uploadImagePOST"]
        7 CALL                             R3 2 1
        8 NAMECALL                         R3 R3 K2 ["await"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       13 GETTABLEKS                       R7 R1 K4 ["Id"]
       15 GETTABLEKS                       R8 R1 K5 ["Name"]
       17 GETTABLEKS                       R9 R1 K6 ["Prepaid"]
       19 GETTABLEKS                       R10 R1 K0 ["Image"]
       21 GETTABLEKS                       R11 R2 K5 ["Name"]
       23 GETTABLEKS                       R12 R2 K6 ["Prepaid"]
       25 MOVE                             R13 R4
       26 NAMECALL                         R5 R0 K7 ["devSubsChangeV1PATCH"]
       28 CALL                             R5 8 1
       29 NAMECALL                         R5 R5 K2 ["await"]
       31 CALL                             R5 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R5 R1 K4 ["Id"]
       35 GETTABLEKS                       R6 R1 K5 ["Name"]
       37 GETTABLEKS                       R7 R1 K6 ["Prepaid"]
       39 GETTABLEKS                       R8 R1 K0 ["Image"]
       41 GETTABLEKS                       R9 R2 K5 ["Name"]
       43 GETTABLEKS                       R10 R2 K6 ["Prepaid"]
       45 NAMECALL                         R3 R0 K7 ["devSubsChangeV1PATCH"]
       47 CALL                             R3 7 1
       48 NAMECALL                         R3 R3 K2 ["await"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R1 K0 ["Id"]
        2 NAMECALL                         R2 R0 K1 ["devSubsDiscontinueV1PATCH"]
        4 CALL                             R2 2 1
        5 NAMECALL                         R2 R2 K2 ["await"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["Name"]
        6 JUMPIFNOTEQKS                    R2 K1 [""] ; [+5]
        8 LOADB                            R2 1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 RETURN                           R2 3
       12 GETTABLEKS                       R4 R1 K0 ["Name"]
       14 NAMECALL                         R2 R0 K2 ["moderationV1GET"]
       16 CALL                             R2 2 1
       17 NAMECALL                         R2 R2 K3 ["await"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K4 ["responseBody"]
       22 GETTABLEKS                       R4 R3 K5 ["isAcceptable"]
       24 GETTABLEKS                       R5 R3 K6 ["filteredName"]
       26 JUMPIFNOTEQKS                    R5 K1 [""] ; [+2]
       28 LOADNIL                          R5
       29 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["devSubsV1GET"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["moderationV1GET"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["uploadImagePOST"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["devSubsCreateV1POST"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["devSubsDiscontinueV1PATCH"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["devSubsChangeV1PATCH"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["getDevSubs"]
       30 DUPCLOSURE                       R1 K17 [PROTO_8]
       31 SETTABLEKS                       R1 R0 K18 ["createDevSub"]
       33 DUPCLOSURE                       R1 K19 [PROTO_9]
       34 SETTABLEKS                       R1 R0 K20 ["changeDevSub"]
       36 DUPCLOSURE                       R1 K21 [PROTO_10]
       37 SETTABLEKS                       R1 R0 K22 ["discontinueDevSub"]
       39 DUPCLOSURE                       R1 K23 [PROTO_11]
       40 SETTABLEKS                       R1 R0 K24 ["getFilteredDevSub"]
       42 RETURN                           R0 1
