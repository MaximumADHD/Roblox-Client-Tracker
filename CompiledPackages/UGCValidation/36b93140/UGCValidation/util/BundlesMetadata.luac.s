PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R5 K0 ["https://itemconfiguration.%*/v1/bundles/metadata"]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R7 R7 K1 ["getBaseDomain"]
        6 CALL                             R7 0 1
        7 NAMECALL                         R5 R5 K2 ["format"]
        9 CALL                             R5 2 1
       10 MOVE                             R4 R5
       11 NAMECALL                         R2 R2 K3 ["GetAsyncFullUrl"]
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K4 ["JSONDecode"]
       16 CALL                             R0 -1 -1
       17 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["try"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K5 [{[1] = True, ["isBundlesCreationEnabled"] = True, ["isBundlesPublishingEnabled"] = True, ["allowedBundleTypeSettings"]}]
        1 DUPTABLE                         R1 K8 [{"Body", "DynamicHead"}]
        2 DUPTABLE                         R2 K13 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
        3 DUPTABLE                         R3 K22 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory", "HairAccessory", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Torso"}]
        4 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
        5 NEWTABLE                         R5 0 1
        7 LOADK                            R6 K29 [".rbxm"]
        8 SETLIST                          R5 R6 1 [1]
       10 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       12 SETTABLEKS                       R4 R3 K7 ["DynamicHead"]
       14 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       15 NEWTABLE                         R5 0 1
       17 LOADK                            R6 K29 [".rbxm"]
       18 SETLIST                          R5 R6 1 [1]
       20 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       22 SETTABLEKS                       R4 R3 K14 ["EyebrowAccessory"]
       24 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       25 NEWTABLE                         R5 0 1
       27 LOADK                            R6 K29 [".rbxm"]
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       32 SETTABLEKS                       R4 R3 K15 ["EyelashAccessory"]
       34 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       35 NEWTABLE                         R5 0 1
       37 LOADK                            R6 K29 [".rbxm"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       42 SETTABLEKS                       R4 R3 K16 ["HairAccessory"]
       44 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       45 NEWTABLE                         R5 0 1
       47 LOADK                            R6 K29 [".rbxm"]
       48 SETLIST                          R5 R6 1 [1]
       50 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       52 SETTABLEKS                       R4 R3 K17 ["LeftArm"]
       54 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       55 NEWTABLE                         R5 0 1
       57 LOADK                            R6 K29 [".rbxm"]
       58 SETLIST                          R5 R6 1 [1]
       60 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       62 SETTABLEKS                       R4 R3 K18 ["LeftLeg"]
       64 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       65 NEWTABLE                         R5 0 1
       67 LOADK                            R6 K29 [".rbxm"]
       68 SETLIST                          R5 R6 1 [1]
       70 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       72 SETTABLEKS                       R4 R3 K19 ["RightArm"]
       74 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       75 NEWTABLE                         R5 0 1
       77 LOADK                            R6 K29 [".rbxm"]
       78 SETLIST                          R5 R6 1 [1]
       80 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       82 SETTABLEKS                       R4 R3 K20 ["RightLeg"]
       84 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       85 NEWTABLE                         R5 0 1
       87 LOADK                            R6 K29 [".rbxm"]
       88 SETLIST                          R5 R6 1 [1]
       90 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
       92 SETTABLEKS                       R4 R3 K21 ["Torso"]
       94 SETTABLEKS                       R3 R2 K9 ["allowedAssetTypeSettings"]
       96 DUPTABLE                         R3 K35 [{["minimumPrice"] = 0, ["maximumPrice"] = 10000}]
       97 SETTABLEKS                       R3 R2 K12 ["allowedPriceRange"]
       99 SETTABLEKS                       R2 R1 K6 ["Body"]
      101 DUPTABLE                         R2 K13 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
      102 DUPTABLE                         R3 K36 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory"}]
      103 DUPTABLE                         R4 K28 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      104 NEWTABLE                         R5 0 1
      106 LOADK                            R6 K29 [".rbxm"]
      107 SETLIST                          R5 R6 1 [1]
      109 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      111 SETTABLEKS                       R4 R3 K7 ["DynamicHead"]
      113 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      114 NEWTABLE                         R5 0 1
      116 LOADK                            R6 K29 [".rbxm"]
      117 SETLIST                          R5 R6 1 [1]
      119 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      121 SETTABLEKS                       R4 R3 K14 ["EyebrowAccessory"]
      123 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      124 NEWTABLE                         R5 0 1
      126 LOADK                            R6 K29 [".rbxm"]
      127 SETLIST                          R5 R6 1 [1]
      129 SETTABLEKS                       R5 R4 K27 ["allowedFileExtensions"]
      131 SETTABLEKS                       R4 R3 K15 ["EyelashAccessory"]
      133 SETTABLEKS                       R3 R2 K9 ["allowedAssetTypeSettings"]
      135 DUPTABLE                         R3 K35 [{["minimumPrice"] = 0, ["maximumPrice"] = 10000}]
      136 SETTABLEKS                       R3 R2 K12 ["allowedPriceRange"]
      138 SETTABLEKS                       R2 R1 K7 ["DynamicHead"]
      140 SETTABLEKS                       R1 R0 K4 ["allowedBundleTypeSettings"]
      142 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpRbxApiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K11 ["util"]
       30 GETTABLEKS                       R5 R5 K12 ["APIUtil"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 2 0
       35 DUPCLOSURE                       R6 K13 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K14 ["fetch"]
       42 DUPCLOSURE                       R6 K15 [PROTO_2]
       43 SETTABLEKS                       R6 R5 K16 ["mock"]
       45 RETURN                           R5 1
