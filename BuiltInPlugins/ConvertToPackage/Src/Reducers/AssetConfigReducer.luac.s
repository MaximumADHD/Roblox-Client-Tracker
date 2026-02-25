PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentScreen"}]
        7 GETTABLEKS                       R5 R1 K2 ["currentScreen"]
        9 SETTABLEKS                       R5 R4 K2 ["currentScreen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetConfigData"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetConfigData"]
        9 SETTABLEKS                       R5 R4 K2 ["assetConfigData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetName"}]
        7 GETTABLEKS                       R5 R1 K2 ["assetName"]
        9 SETTABLEKS                       R5 R4 K2 ["assetName"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["setting"]
        2 GETTABLEKS                       R3 R1 K1 ["value"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R5 K3 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K5 [{"changed"}]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K2 ["Dictionary"]
       14 GETTABLEKS                       R7 R8 K3 ["join"]
       16 GETTABLEKS                       R8 R0 K4 ["changed"]
       18 JUMPIF                           R8 ; [+2]
       19 NEWTABLE                         R8 0 0
       21 NEWTABLE                         R9 1 0
       23 SETTABLE                         R3 R9 R2
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K4 ["changed"]
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["setting"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R4 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"changed"}]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K1 ["Dictionary"]
       12 GETTABLEKS                       R6 R7 K2 ["join"]
       14 GETTABLEKS                       R7 R0 K3 ["changed"]
       16 JUMPIF                           R7 ; [+2]
       17 NEWTABLE                         R7 0 0
       19 NEWTABLE                         R8 1 0
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K5 ["None"]
       24 SETTABLE                         R9 R8 R2
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K3 ["changed"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"uploadSucceeded"}]
        7 GETTABLEKS                       R5 R1 K2 ["uploadSucceeded"]
        9 SETTABLEKS                       R5 R4 K2 ["uploadSucceeded"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R5 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SetAssetConfigData"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["SetCurrentScreen"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R4 K12 ["SetAssetName"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R4 K13 ["AddChange"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R4 K14 ["ClearChange"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R4 K15 ["UploadResult"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R14 R0 K8 ["Src"]
       59 GETTABLEKS                       R13 R14 K16 ["Util"]
       61 GETTABLEKS                       R12 R13 K17 ["Constants"]
       63 CALL                             R11 1 1
       64 DUPTABLE                         R12 K32 [{"assetConfigData", "versionHistory", "changed", "assetId", "assetName", "instances", "clonedInstance", "assetTypeEnum", "screenConfigs", "isCatalogItemCreator", "currentScreen", "totalResults", "resultsArray", "filteredResultsArray"}]
       65 NEWTABLE                         R13 0 0
       67 SETTABLEKS                       R13 R12 K18 ["assetConfigData"]
       69 LOADNIL                          R13
       70 SETTABLEKS                       R13 R12 K19 ["versionHistory"]
       72 NEWTABLE                         R13 0 0
       74 SETTABLEKS                       R13 R12 K20 ["changed"]
       76 LOADNIL                          R13
       77 SETTABLEKS                       R13 R12 K21 ["assetId"]
       79 LOADNIL                          R13
       80 SETTABLEKS                       R13 R12 K22 ["assetName"]
       82 LOADNIL                          R13
       83 SETTABLEKS                       R13 R12 K23 ["instances"]
       85 LOADNIL                          R13
       86 SETTABLEKS                       R13 R12 K24 ["clonedInstance"]
       88 LOADNIL                          R13
       89 SETTABLEKS                       R13 R12 K25 ["assetTypeEnum"]
       91 NEWTABLE                         R13 0 0
       93 SETTABLEKS                       R13 R12 K26 ["screenConfigs"]
       95 LOADB                            R13 0
       96 SETTABLEKS                       R13 R12 K27 ["isCatalogItemCreator"]
       98 GETTABLEKS                       R14 R11 K33 ["SCREENS"]
      100 GETTABLEKS                       R13 R14 K34 ["CONFIGURE_ASSET"]
      102 SETTABLEKS                       R13 R12 K28 ["currentScreen"]
      104 LOADN                            R13 0
      105 SETTABLEKS                       R13 R12 K29 ["totalResults"]
      107 NEWTABLE                         R13 0 0
      109 SETTABLEKS                       R13 R12 K30 ["resultsArray"]
      111 NEWTABLE                         R13 0 0
      113 SETTABLEKS                       R13 R12 K31 ["filteredResultsArray"]
      115 GETTABLEKS                       R13 R3 K35 ["createReducer"]
      117 MOVE                             R14 R12
      118 NEWTABLE                         R15 8 0
      120 GETTABLEKS                       R16 R6 K36 ["name"]
      122 DUPCLOSURE                       R17 K37 [PROTO_0]
      123 CAPTURE                          VAL R2
      124 SETTABLE                         R17 R15 R16
      125 GETTABLEKS                       R16 R5 K36 ["name"]
      127 DUPCLOSURE                       R17 K38 [PROTO_1]
      128 CAPTURE                          VAL R2
      129 SETTABLE                         R17 R15 R16
      130 GETTABLEKS                       R16 R7 K36 ["name"]
      132 DUPCLOSURE                       R17 K39 [PROTO_2]
      133 CAPTURE                          VAL R2
      134 SETTABLE                         R17 R15 R16
      135 GETTABLEKS                       R16 R8 K36 ["name"]
      137 DUPCLOSURE                       R17 K40 [PROTO_3]
      138 CAPTURE                          VAL R2
      139 SETTABLE                         R17 R15 R16
      140 GETTABLEKS                       R16 R9 K36 ["name"]
      142 DUPCLOSURE                       R17 K41 [PROTO_4]
      143 CAPTURE                          VAL R2
      144 SETTABLE                         R17 R15 R16
      145 GETTABLEKS                       R16 R10 K36 ["name"]
      147 DUPCLOSURE                       R17 K42 [PROTO_5]
      148 CAPTURE                          VAL R2
      149 SETTABLE                         R17 R15 R16
      150 CALL                             R13 2 -1
      151 RETURN                           R13 -1
