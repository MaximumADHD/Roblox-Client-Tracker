PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"robuxBalance"}]
        7 GETTABLEKS                       R5 R1 K2 ["robuxBalance"]
        9 SETTABLEKS                       R5 R4 K2 ["robuxBalance"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["assetId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"assetId", "status"}]
        9 SETTABLEKS                       R2 R5 K0 ["assetId"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["None"]
       14 SETTABLEKS                       R6 R5 K3 ["status"]
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["ownsAsset"]
        2 GETTABLEKS                       R3 R1 K1 ["assetId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K3 ["join"]
        9 GETTABLEKS                       R5 R0 K4 ["cachedOwnedAssets"]
       11 NEWTABLE                         R6 1 0
       13 FASTCALL1                        TOSTRING R3 ; [+3]
       14 MOVE                             R8 R3
       15 GETIMPORT                        R7 K6 [tostring]
       17 CALL                             R7 1 1
       18 SETTABLE                         R2 R6 R7
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       23 GETTABLEKS                       R5 R5 K3 ["join"]
       25 MOVE                             R6 R0
       26 DUPTABLE                         R7 K7 [{"cachedOwnedAssets"}]
       27 SETTABLEKS                       R4 R7 K4 ["cachedOwnedAssets"]
       29 CALL                             R5 2 -1
       30 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K3 [{"status"}]
        9 SETTABLEKS                       R2 R5 K0 ["status"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["userId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 GETTABLEKS                       R4 R0 K3 ["excessiveTransactionUserIds"]
        9 NEWTABLE                         R5 1 0
       11 LOADB                            R6 1
       12 SETTABLE                         R6 R5 R2
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
       17 GETTABLEKS                       R4 R4 K2 ["join"]
       19 MOVE                             R5 R0
       20 DUPTABLE                         R6 K4 [{"excessiveTransactionUserIds"}]
       21 SETTABLEKS                       R3 R6 K3 ["excessiveTransactionUserIds"]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["isVisible"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"isPurchaseDialogVisible"}]
        9 SETTABLEKS                       R2 R5 K3 ["isPurchaseDialogVisible"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"buyerStatus"}]
        9 SETTABLEKS                       R2 R5 K3 ["buyerStatus"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["DequeueSubsequentDialog"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["EnqueueSubsequentDialog"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Src"]
       39 GETTABLEKS                       R8 R8 K9 ["Actions"]
       41 GETTABLEKS                       R8 R8 K12 ["SetPurchaseDialogVisibility"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R4 K13 ["SetRobuxBalance"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R4 K14 ["SetExcessiveTransactionUserId"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R4 K15 ["SetOwnsAsset"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R4 K16 ["SetPurchaseStatus"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R4 K17 ["SetBuyerStatus"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R4 K18 ["ClearPurchaseFlow"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K8 ["Src"]
       78 GETTABLEKS                       R15 R15 K19 ["Types"]
       80 GETTABLEKS                       R15 R15 K20 ["PurchaseStatus"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K8 ["Src"]
       87 GETTABLEKS                       R16 R16 K19 ["Types"]
       89 GETTABLEKS                       R16 R16 K21 ["BuyerStatus"]
       91 CALL                             R15 1 1
       92 GETTABLEKS                       R16 R3 K22 ["createReducer"]
       94 DUPTABLE                         R17 K30 [{"buyerStatus", "robuxBalance", "status", "cachedOwnedAssets", "assetId", "excessiveTransactionUserIds", "isPurchaseDialogVisible"}]
       95 LOADNIL                          R18
       96 SETTABLEKS                       R18 R17 K23 ["buyerStatus"]
       98 LOADN                            R18 0
       99 SETTABLEKS                       R18 R17 K24 ["robuxBalance"]
      101 GETTABLEKS                       R18 R14 K31 ["None"]
      103 SETTABLEKS                       R18 R17 K25 ["status"]
      105 NEWTABLE                         R18 0 0
      107 SETTABLEKS                       R18 R17 K26 ["cachedOwnedAssets"]
      109 LOADNIL                          R18
      110 SETTABLEKS                       R18 R17 K27 ["assetId"]
      112 NEWTABLE                         R18 0 0
      114 SETTABLEKS                       R18 R17 K28 ["excessiveTransactionUserIds"]
      116 LOADB                            R18 0
      117 SETTABLEKS                       R18 R17 K29 ["isPurchaseDialogVisible"]
      119 NEWTABLE                         R18 8 0
      121 GETTABLEKS                       R19 R8 K32 ["name"]
      123 DUPCLOSURE                       R20 K33 [PROTO_0]
      124 CAPTURE                          VAL R2
      125 SETTABLE                         R20 R18 R19
      126 GETTABLEKS                       R19 R13 K32 ["name"]
      128 DUPCLOSURE                       R20 K34 [PROTO_1]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R14
      131 SETTABLE                         R20 R18 R19
      132 GETTABLEKS                       R19 R10 K32 ["name"]
      134 DUPCLOSURE                       R20 K35 [PROTO_2]
      135 CAPTURE                          VAL R2
      136 SETTABLE                         R20 R18 R19
      137 GETTABLEKS                       R19 R11 K32 ["name"]
      139 DUPCLOSURE                       R20 K36 [PROTO_3]
      140 CAPTURE                          VAL R2
      141 SETTABLE                         R20 R18 R19
      142 GETTABLEKS                       R19 R9 K32 ["name"]
      144 DUPCLOSURE                       R20 K37 [PROTO_4]
      145 CAPTURE                          VAL R2
      146 SETTABLE                         R20 R18 R19
      147 GETTABLEKS                       R19 R7 K32 ["name"]
      149 DUPCLOSURE                       R20 K38 [PROTO_5]
      150 CAPTURE                          VAL R2
      151 SETTABLE                         R20 R18 R19
      152 GETTABLEKS                       R19 R12 K32 ["name"]
      154 DUPCLOSURE                       R20 K39 [PROTO_6]
      155 CAPTURE                          VAL R2
      156 SETTABLE                         R20 R18 R19
      157 CALL                             R16 2 -1
      158 RETURN                           R16 -1
