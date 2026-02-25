PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R5 K0 ["https://itemconfiguration.%*/v1/bundles/metadata"]
        3 GETUPVAL                         R8 2
        4 GETTABLEKS                       R7 R8 K1 ["getBaseDomain"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["try"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K4 [{"isBundlesControllerEnabled", "isBundlesCreationEnabled", "isBundlesPublishingEnabled", "allowedBundleTypeSettings"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isBundlesControllerEnabled"]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isBundlesCreationEnabled"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["isBundlesPublishingEnabled"]
       10 DUPTABLE                         R1 K7 [{"Body", "DynamicHead"}]
       11 DUPTABLE                         R2 K11 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
       12 DUPTABLE                         R3 K20 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory", "HairAccessory", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Torso"}]
       13 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       14 LOADN                            R5 1
       15 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
       17 LOADN                            R5 1
       18 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
       23 NEWTABLE                         R5 0 1
       25 LOADK                            R6 K26 [".rbxm"]
       26 SETLIST                          R5 R6 1 [1]
       28 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
       30 SETTABLEKS                       R4 R3 K6 ["DynamicHead"]
       32 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       33 LOADN                            R5 0
       34 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
       36 LOADN                            R5 1
       37 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
       39 LOADB                            R5 1
       40 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
       42 NEWTABLE                         R5 0 1
       44 LOADK                            R6 K26 [".rbxm"]
       45 SETLIST                          R5 R6 1 [1]
       47 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
       49 SETTABLEKS                       R4 R3 K12 ["EyebrowAccessory"]
       51 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       52 LOADN                            R5 0
       53 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
       55 LOADN                            R5 1
       56 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
       61 NEWTABLE                         R5 0 1
       63 LOADK                            R6 K26 [".rbxm"]
       64 SETLIST                          R5 R6 1 [1]
       66 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
       68 SETTABLEKS                       R4 R3 K13 ["EyelashAccessory"]
       70 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       71 LOADN                            R5 0
       72 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
       74 LOADN                            R5 1
       75 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
       77 LOADB                            R5 1
       78 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
       80 NEWTABLE                         R5 0 1
       82 LOADK                            R6 K26 [".rbxm"]
       83 SETLIST                          R5 R6 1 [1]
       85 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
       87 SETTABLEKS                       R4 R3 K14 ["HairAccessory"]
       89 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
       90 LOADN                            R5 1
       91 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
       93 LOADN                            R5 1
       94 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
       96 LOADB                            R5 1
       97 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
       99 NEWTABLE                         R5 0 1
      101 LOADK                            R6 K26 [".rbxm"]
      102 SETLIST                          R5 R6 1 [1]
      104 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      106 SETTABLEKS                       R4 R3 K15 ["LeftArm"]
      108 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      109 LOADN                            R5 1
      110 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      112 LOADN                            R5 1
      113 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      115 LOADB                            R5 1
      116 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      118 NEWTABLE                         R5 0 1
      120 LOADK                            R6 K26 [".rbxm"]
      121 SETLIST                          R5 R6 1 [1]
      123 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      125 SETTABLEKS                       R4 R3 K16 ["LeftLeg"]
      127 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      128 LOADN                            R5 1
      129 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      131 LOADN                            R5 1
      132 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      134 LOADB                            R5 1
      135 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      137 NEWTABLE                         R5 0 1
      139 LOADK                            R6 K26 [".rbxm"]
      140 SETLIST                          R5 R6 1 [1]
      142 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      144 SETTABLEKS                       R4 R3 K17 ["RightArm"]
      146 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      147 LOADN                            R5 1
      148 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      150 LOADN                            R5 1
      151 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      153 LOADB                            R5 1
      154 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      156 NEWTABLE                         R5 0 1
      158 LOADK                            R6 K26 [".rbxm"]
      159 SETLIST                          R5 R6 1 [1]
      161 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      163 SETTABLEKS                       R4 R3 K18 ["RightLeg"]
      165 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      166 LOADN                            R5 1
      167 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      169 LOADN                            R5 1
      170 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      172 LOADB                            R5 1
      173 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      175 NEWTABLE                         R5 0 1
      177 LOADK                            R6 K26 [".rbxm"]
      178 SETLIST                          R5 R6 1 [1]
      180 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      182 SETTABLEKS                       R4 R3 K19 ["Torso"]
      184 SETTABLEKS                       R3 R2 K8 ["allowedAssetTypeSettings"]
      186 LOADN                            R3 30
      187 SETTABLEKS                       R3 R2 K9 ["marketplaceFeePercentage"]
      189 DUPTABLE                         R3 K29 [{"minimumPrice", "maximumPrice"}]
      190 LOADN                            R4 0
      191 SETTABLEKS                       R4 R3 K27 ["minimumPrice"]
      193 LOADN                            R4 16
      194 SETTABLEKS                       R4 R3 K28 ["maximumPrice"]
      196 SETTABLEKS                       R3 R2 K10 ["allowedPriceRange"]
      198 SETTABLEKS                       R2 R1 K5 ["Body"]
      200 DUPTABLE                         R2 K11 [{"allowedAssetTypeSettings", "marketplaceFeePercentage", "allowedPriceRange"}]
      201 DUPTABLE                         R3 K30 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory"}]
      202 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      203 LOADN                            R5 1
      204 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      206 LOADN                            R5 1
      207 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      209 LOADB                            R5 1
      210 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      212 NEWTABLE                         R5 0 1
      214 LOADK                            R6 K26 [".rbxm"]
      215 SETLIST                          R5 R6 1 [1]
      217 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      219 SETTABLEKS                       R4 R3 K6 ["DynamicHead"]
      221 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      222 LOADN                            R5 0
      223 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      225 LOADN                            R5 1
      226 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      228 LOADB                            R5 1
      229 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      231 NEWTABLE                         R5 0 1
      233 LOADK                            R6 K26 [".rbxm"]
      234 SETLIST                          R5 R6 1 [1]
      236 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      238 SETTABLEKS                       R4 R3 K12 ["EyebrowAccessory"]
      240 DUPTABLE                         R4 K25 [{"minimumQuantity", "maximumQuantity", "isEligibleForUpload", "allowedFileExtensions"}]
      241 LOADN                            R5 0
      242 SETTABLEKS                       R5 R4 K21 ["minimumQuantity"]
      244 LOADN                            R5 1
      245 SETTABLEKS                       R5 R4 K22 ["maximumQuantity"]
      247 LOADB                            R5 1
      248 SETTABLEKS                       R5 R4 K23 ["isEligibleForUpload"]
      250 NEWTABLE                         R5 0 1
      252 LOADK                            R6 K26 [".rbxm"]
      253 SETLIST                          R5 R6 1 [1]
      255 SETTABLEKS                       R5 R4 K24 ["allowedFileExtensions"]
      257 SETTABLEKS                       R4 R3 K13 ["EyelashAccessory"]
      259 SETTABLEKS                       R3 R2 K8 ["allowedAssetTypeSettings"]
      261 LOADN                            R3 30
      262 SETTABLEKS                       R3 R2 K9 ["marketplaceFeePercentage"]
      264 DUPTABLE                         R3 K29 [{"minimumPrice", "maximumPrice"}]
      265 LOADN                            R4 0
      266 SETTABLEKS                       R4 R3 K27 ["minimumPrice"]
      268 LOADN                            R4 16
      269 SETTABLEKS                       R4 R3 K28 ["maximumPrice"]
      271 SETTABLEKS                       R3 R2 K10 ["allowedPriceRange"]
      273 SETTABLEKS                       R2 R1 K6 ["DynamicHead"]
      275 SETTABLEKS                       R1 R0 K3 ["allowedBundleTypeSettings"]
      277 RETURN                           R0 1

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
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K7 ["Parent"]
       23 GETTABLEKS                       R4 R5 K10 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R6 R2 K11 ["util"]
       30 GETTABLEKS                       R5 R6 K12 ["APIUtil"]
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
