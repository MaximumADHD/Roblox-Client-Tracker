PROTO_0:
        0 GETIMPORT                        R0 K2 [Color3.new]
        2 GETIMPORT                        R1 K5 [math.random]
        4 CALL                             R1 0 1
        5 GETIMPORT                        R2 K5 [math.random]
        7 CALL                             R2 0 1
        8 GETIMPORT                        R3 K5 [math.random]
       10 CALL                             R3 0 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_0]
        4 SETTABLEKS                       R4 R3 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_2]
        4 SETTABLEKS                       R4 R3 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 LOADNIL                          R2
        6 SETUPVAL                         R2 1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 SETUPVAL                         R1 1
       10 LOADB                            R2 0
       11 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [error]
        2 GETIMPORT                        R1 K4 [string.format]
        4 LOADK                            R2 K5 ["pollAssertionUntil failed after %ds:\n%s"]
        5 GETUPVAL                         R4 0
        6 ORK                              R3 R4 K6 [1]
        7 GETUPVAL                         R5 1
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K8 [tostring]
       11 CALL                             R4 1 1
       12 CALL                             R1 3 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          REF R2
       10 NAMECALL                         R3 R3 K0 ["catch"]
       12 CALL                             R3 2 1
       13 NAMECALL                         R3 R3 K1 ["await"]
       15 CALL                             R3 1 -1
       16 CLOSEUPVALS                      R2
       17 RETURN                           R3 -1

PROTO_7:
        0 DUPTABLE                         R0 K6 [{[1] = True, ["isBundlesCreationEnabled"] = True, ["isBundlesPublishingEnabled"] = True, ["isGroupBundlesUploadEnabled"] = True, ["allowedBundleTypeSettings"]}]
        1 DUPTABLE                         R1 K11 [{"Body", "DynamicHead", "Shoes", "AvatarAnimations"}]
        2 DUPTABLE                         R2 K16 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
        3 DUPTABLE                         R3 K25 [{"DynamicHead", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Torso", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
        4 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
        5 NEWTABLE                         R5 0 1
        7 LOADK                            R6 K32 [".rbxm"]
        8 SETLIST                          R5 R6 1 [1]
       10 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       12 SETTABLEKS                       R4 R3 K8 ["DynamicHead"]
       14 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       15 NEWTABLE                         R5 0 1
       17 LOADK                            R6 K32 [".rbxm"]
       18 SETLIST                          R5 R6 1 [1]
       20 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       22 SETTABLEKS                       R4 R3 K17 ["LeftArm"]
       24 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       25 NEWTABLE                         R5 0 1
       27 LOADK                            R6 K32 [".rbxm"]
       28 SETLIST                          R5 R6 1 [1]
       30 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       32 SETTABLEKS                       R4 R3 K18 ["LeftLeg"]
       34 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       35 NEWTABLE                         R5 0 1
       37 LOADK                            R6 K32 [".rbxm"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       42 SETTABLEKS                       R4 R3 K19 ["RightArm"]
       44 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       45 NEWTABLE                         R5 0 1
       47 LOADK                            R6 K32 [".rbxm"]
       48 SETLIST                          R5 R6 1 [1]
       50 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       52 SETTABLEKS                       R4 R3 K20 ["RightLeg"]
       54 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       55 NEWTABLE                         R5 0 1
       57 LOADK                            R6 K32 [".rbxm"]
       58 SETLIST                          R5 R6 1 [1]
       60 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       62 SETTABLEKS                       R4 R3 K21 ["Torso"]
       64 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       65 NEWTABLE                         R5 0 1
       67 LOADK                            R6 K32 [".rbxm"]
       68 SETLIST                          R5 R6 1 [1]
       70 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       72 SETTABLEKS                       R4 R3 K22 ["EyebrowAccessory"]
       74 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       75 NEWTABLE                         R5 0 1
       77 LOADK                            R6 K32 [".rbxm"]
       78 SETLIST                          R5 R6 1 [1]
       80 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       82 SETTABLEKS                       R4 R3 K23 ["EyelashAccessory"]
       84 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
       85 NEWTABLE                         R5 0 1
       87 LOADK                            R6 K32 [".rbxm"]
       88 SETLIST                          R5 R6 1 [1]
       90 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
       92 SETTABLEKS                       R4 R3 K24 ["HairAccessory"]
       94 SETTABLEKS                       R3 R2 K12 ["allowedAssetTypeSettings"]
       96 DUPTABLE                         R3 K39 [{["minimumPrice"] = 175, ["maximumPrice"] = 10000}]
       97 SETTABLEKS                       R3 R2 K15 ["allowedPriceRange"]
       99 SETTABLEKS                       R2 R1 K7 ["Body"]
      101 DUPTABLE                         R2 K16 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
      102 DUPTABLE                         R3 K40 [{"DynamicHead", "EyebrowAccessory", "EyelashAccessory"}]
      103 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      104 NEWTABLE                         R5 0 1
      106 LOADK                            R6 K32 [".rbxm"]
      107 SETLIST                          R5 R6 1 [1]
      109 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      111 SETTABLEKS                       R4 R3 K8 ["DynamicHead"]
      113 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      114 NEWTABLE                         R5 0 1
      116 LOADK                            R6 K32 [".rbxm"]
      117 SETLIST                          R5 R6 1 [1]
      119 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      121 SETTABLEKS                       R4 R3 K22 ["EyebrowAccessory"]
      123 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      124 NEWTABLE                         R5 0 1
      126 LOADK                            R6 K32 [".rbxm"]
      127 SETLIST                          R5 R6 1 [1]
      129 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      131 SETTABLEKS                       R4 R3 K23 ["EyelashAccessory"]
      133 SETTABLEKS                       R3 R2 K12 ["allowedAssetTypeSettings"]
      135 DUPTABLE                         R3 K42 [{["minimumPrice"] = 75, ["maximumPrice"] = 10000}]
      136 SETTABLEKS                       R3 R2 K15 ["allowedPriceRange"]
      138 SETTABLEKS                       R2 R1 K8 ["DynamicHead"]
      140 DUPTABLE                         R2 K16 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
      141 DUPTABLE                         R3 K45 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      142 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      143 NEWTABLE                         R5 0 1
      145 LOADK                            R6 K32 [".rbxm"]
      146 SETLIST                          R5 R6 1 [1]
      148 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      150 SETTABLEKS                       R4 R3 K43 ["LeftShoeAccessory"]
      152 DUPTABLE                         R4 K34 [{["minimumQuantity"] = 0, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      153 NEWTABLE                         R5 0 1
      155 LOADK                            R6 K32 [".rbxm"]
      156 SETLIST                          R5 R6 1 [1]
      158 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      160 SETTABLEKS                       R4 R3 K44 ["RightShoeAccessory"]
      162 SETTABLEKS                       R3 R2 K12 ["allowedAssetTypeSettings"]
      164 DUPTABLE                         R3 K42 [{["minimumPrice"] = 75, ["maximumPrice"] = 10000}]
      165 SETTABLEKS                       R3 R2 K15 ["allowedPriceRange"]
      167 SETTABLEKS                       R2 R1 K9 ["Shoes"]
      169 DUPTABLE                         R2 K16 [{["allowedAssetTypeSettings"], ["marketplaceFeePercentage"] = 30, ["allowedPriceRange"]}]
      170 DUPTABLE                         R3 K53 [{"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation"}]
      171 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      172 NEWTABLE                         R5 0 1
      174 LOADK                            R6 K32 [".rbxm"]
      175 SETLIST                          R5 R6 1 [1]
      177 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      179 SETTABLEKS                       R4 R3 K46 ["ClimbAnimation"]
      181 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      182 NEWTABLE                         R5 0 1
      184 LOADK                            R6 K32 [".rbxm"]
      185 SETLIST                          R5 R6 1 [1]
      187 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      189 SETTABLEKS                       R4 R3 K47 ["FallAnimation"]
      191 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      192 NEWTABLE                         R5 0 1
      194 LOADK                            R6 K32 [".rbxm"]
      195 SETLIST                          R5 R6 1 [1]
      197 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      199 SETTABLEKS                       R4 R3 K48 ["IdleAnimation"]
      201 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      202 NEWTABLE                         R5 0 1
      204 LOADK                            R6 K32 [".rbxm"]
      205 SETLIST                          R5 R6 1 [1]
      207 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      209 SETTABLEKS                       R4 R3 K49 ["JumpAnimation"]
      211 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      212 NEWTABLE                         R5 0 1
      214 LOADK                            R6 K32 [".rbxm"]
      215 SETLIST                          R5 R6 1 [1]
      217 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      219 SETTABLEKS                       R4 R3 K50 ["RunAnimation"]
      221 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      222 NEWTABLE                         R5 0 1
      224 LOADK                            R6 K32 [".rbxm"]
      225 SETLIST                          R5 R6 1 [1]
      227 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      229 SETTABLEKS                       R4 R3 K51 ["SwimAnimation"]
      231 DUPTABLE                         R4 K31 [{["minimumQuantity"] = 1, ["maximumQuantity"] = 1, ["isEligibleForUpload"] = True, ["allowedFileExtensions"]}]
      232 NEWTABLE                         R5 0 1
      234 LOADK                            R6 K32 [".rbxm"]
      235 SETLIST                          R5 R6 1 [1]
      237 SETTABLEKS                       R5 R4 K30 ["allowedFileExtensions"]
      239 SETTABLEKS                       R4 R3 K52 ["WalkAnimation"]
      241 SETTABLEKS                       R3 R2 K12 ["allowedAssetTypeSettings"]
      243 DUPTABLE                         R3 K55 [{["minimumPrice"] = 0, ["maximumPrice"] = 5000}]
      244 SETTABLEKS                       R3 R2 K15 ["allowedPriceRange"]
      246 SETTABLEKS                       R2 R1 K10 ["AvatarAnimations"]
      248 SETTABLEKS                       R1 R0 K5 ["allowedBundleTypeSettings"]
      250 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Util"]
       16 GETTABLEKS                       R3 R3 K9 ["pollUntil"]
       18 NEWTABLE                         R4 4 0
       20 DUPCLOSURE                       R5 K10 [PROTO_1]
       21 SETTABLEKS                       R5 R4 K11 ["createMockStudioStyleGuideColor"]
       23 DUPCLOSURE                       R5 K12 [PROTO_3]
       24 SETTABLEKS                       R5 R4 K13 ["createMockStudioStyleGuideModifier"]
       26 DUPCLOSURE                       R5 K14 [PROTO_6]
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R5 R4 K15 ["pollAssertionUntil"]
       30 DUPCLOSURE                       R5 K16 [PROTO_7]
       31 SETTABLEKS                       R5 R4 K17 ["getMockBundlesMetadata"]
       33 RETURN                           R4 1
