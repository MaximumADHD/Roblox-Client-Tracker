PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["purchase"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["purchase"]
        5 GETTABLEKS                       R1 R1 K1 ["isPurchaseDialogVisible"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["OnClose"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["TryInsert"]
        3 MOVE                             R4 R0
        4 LOADB                            R5 0
        5 LOADK                            R6 K1 ["PreviewClickInsertButton"]
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 CALL                             R3 5 -1
        9 RETURN                           R3 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+71]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Asset"]
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 GETUPVAL                         R2 1
        7 JUMPIF                           R2 ; [+29]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Product"]
       11 JUMPIF                           R2 ; [+25]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["shouldDebugWarnings"]
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETIMPORT                        R2 K5 [warn]
       19 LOADK                            R4 K6 ["Attempted to purchase asset without neither robux nor fiat Product: "]
       20 FASTCALL1                        TOSTRING R1 ; [+3]
       21 MOVE                             R6 R1
       22 GETIMPORT                        R5 K8 [tostring]
       24 CALL                             R5 1 1
       25 CONCAT                           R3 R4 R5
       26 GETUPVAL                         R4 0
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 3
       29 GETUPVAL                         R3 4
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K9 ["PurchaseFailed"]
       34 CALL                             R3 2 -1
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0
       37 LOADNIL                          R2
       38 LOADNIL                          R3
       39 GETUPVAL                         R4 6
       40 CALL                             R4 0 1
       41 JUMPIF                           R4 ; [+14]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K2 ["Product"]
       45 JUMPIFNOT                        R4 ; [+3]
       46 GETTABLEKS                       R5 R4 K10 ["Price"]
       48 JUMPIF                           R5 ; [+1]
       49 LOADN                            R5 0
       50 MOVE                             R3 R5
       51 MOVE                             R5 R4
       52 JUMPIFNOT                        R5 ; [+2]
       53 GETTABLEKS                       R5 R4 K11 ["ProductId"]
       55 MOVE                             R2 R5
       56 GETUPVAL                         R4 3
       57 GETUPVAL                         R5 7
       58 GETUPVAL                         R6 8
       59 MOVE                             R7 R1
       60 MOVE                             R8 R2
       61 MOVE                             R9 R3
       62 LOADNIL                          R10
       63 LOADNIL                          R11
       64 GETUPVAL                         R12 1
       65 GETUPVAL                         R13 9
       66 GETUPVAL                         R14 0
       67 CALL                             R5 9 -1
       68 CALL                             R4 -1 0
       69 GETUPVAL                         R4 10
       70 CALL                             R4 0 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R1 10
       73 CALL                             R1 0 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Localization"]
        7 NAMECALL                         R2 R2 K0 ["use"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K0 ["use"]
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R3 R3 K2 ["networkInterface"]
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R6 R0 K3 ["AssetData"]
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K4 ["None"]
       23 JUMPIFEQ                         R6 R7 ; [+4]
       25 GETTABLEKS                       R5 R0 K3 ["AssetData"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 JUMPIFNOT                        R5 ; [+3]
       30 GETTABLEKS                       R6 R5 K5 ["Asset"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R7 R5 K6 ["FiatProduct"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 JUMPIFNOT                        R7 ; [+3]
       40 GETTABLEKS                       R8 R7 K7 ["Purchasable"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R8
       44 JUMPIFNOT                        R7 ; [+3]
       45 GETTABLEKS                       R9 R7 K8 ["PurchasePrice"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 GETUPVAL                         R11 5
       50 CALL                             R11 0 1
       51 JUMPIFNOT                        R11 ; [+2]
       52 LOADNIL                          R10
       53 JUMP                             ; [+10]
       54 JUMPIFNOT                        R5 ; [+8]
       55 GETTABLEKS                       R11 R5 K9 ["Product"]
       57 JUMPIFNOT                        R11 ; [+5]
       58 GETTABLEKS                       R10 R5 K9 ["Product"]
       60 GETTABLEKS                       R10 R10 K10 ["Price"]
       62 JUMP                             ; [+1]
       63 LOADN                            R10 0
       64 JUMPIFNOT                        R9 ; [+6]
       65 GETUPVAL                         R11 6
       66 GETTABLEKS                       R11 R11 K11 ["isFree"]
       68 MOVE                             R12 R9
       69 CALL                             R11 1 1
       70 JUMP                             ; [+4]
       71 JUMPIFEQKN                       R10 K12 [0] ; [+2]
       73 LOADB                            R11 0 +1
       74 LOADB                            R11 1
       75 GETUPVAL                         R12 7
       76 DUPCLOSURE                       R13 K13 [PROTO_0]
       77 CALL                             R12 1 1
       78 GETUPVAL                         R13 8
       79 GETTABLEKS                       R13 R13 K14 ["useCallback"]
       81 NEWCLOSURE                       R14 P1
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R15 0 2
       87 MOVE                             R16 R4
       88 GETTABLEKS                       R17 R0 K15 ["OnClose"]
       90 SETLIST                          R15 R16 2 [1]
       92 CALL                             R13 2 1
       93 GETUPVAL                         R14 8
       94 GETTABLEKS                       R14 R14 K14 ["useCallback"]
       96 NEWCLOSURE                       R15 P2
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R16 0 2
      100 MOVE                             R17 R4
      101 GETTABLEKS                       R18 R0 K16 ["TryInsert"]
      103 SETLIST                          R16 R17 2 [1]
      105 CALL                             R14 2 1
      106 GETUPVAL                         R15 8
      107 GETTABLEKS                       R15 R15 K14 ["useCallback"]
      109 NEWCLOSURE                       R16 P3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R9
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          VAL R4
      114 CAPTURE                          UPVAL U11
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          UPVAL U13
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R13
      121 NEWTABLE                         R17 0 6
      123 MOVE                             R18 R5
      124 MOVE                             R19 R4
      125 MOVE                             R20 R9
      126 MOVE                             R21 R3
      127 MOVE                             R22 R13
      128 MOVE                             R23 R14
      129 SETLIST                          R17 R18 6 [1]
      131 CALL                             R15 2 1
      132 JUMPIFNOT                        R12 ; [+1]
      133 JUMPIF                           R5 ; [+1]
      134 RETURN                           R0 0
      135 JUMPIFNOT                        R11 ; [+4]
      136 MOVE                             R16 R15
      137 LOADB                            R17 1
      138 CALL                             R16 1 0
      139 RETURN                           R0 0
      140 JUMPIFNOT                        R9 ; [+54]
      141 JUMPIFNOT                        R9 ; [+43]
      142 JUMPIFNOT                        R8 ; [+42]
      143 GETUPVAL                         R16 14
      144 GETTABLEKS                       R16 R16 K17 ["constructAssetThumbnailUrl"]
      146 GETTABLEKS                       R17 R6 K18 ["Id"]
      148 GETUPVAL                         R18 15
      149 GETTABLEKS                       R18 R18 K19 ["X"]
      151 GETUPVAL                         R19 15
      152 GETTABLEKS                       R19 R19 K20 ["Y"]
      154 CALL                             R16 3 1
      155 GETUPVAL                         R17 8
      156 GETTABLEKS                       R17 R17 K21 ["createElement"]
      158 GETUPVAL                         R18 16
      159 DUPTABLE                         R19 K26 [{"Name", "CreatorName", "OnClose", "OnButtonClicked", "Price", "Thumbnail"}]
      160 GETTABLEKS                       R20 R6 K22 ["Name"]
      162 SETTABLEKS                       R20 R19 K22 ["Name"]
      164 GETTABLEKS                       R20 R5 K27 ["Creator"]
      166 GETTABLEKS                       R20 R20 K22 ["Name"]
      168 SETTABLEKS                       R20 R19 K23 ["CreatorName"]
      170 SETTABLEKS                       R13 R19 K15 ["OnClose"]
      172 SETTABLEKS                       R15 R19 K24 ["OnButtonClicked"]
      174 GETUPVAL                         R20 6
      175 GETTABLEKS                       R20 R20 K28 ["displayStringFromMoney"]
      177 MOVE                             R21 R9
      178 CALL                             R20 1 1
      179 SETTABLEKS                       R20 R19 K10 ["Price"]
      181 SETTABLEKS                       R16 R19 K25 ["Thumbnail"]
      183 CALL                             R17 2 -1
      184 RETURN                           R17 -1
      185 GETUPVAL                         R16 10
      186 GETTABLEKS                       R16 R16 K29 ["shouldDebugWarnings"]
      188 CALL                             R16 0 1
      189 JUMPIFNOT                        R16 ; [+18]
      190 GETIMPORT                        R16 K31 [warn]
      192 LOADK                            R17 K32 ["Fiat asset is not purchaseable"]
      193 CALL                             R16 1 0
      194 RETURN                           R0 0
      195 GETUPVAL                         R16 8
      196 GETTABLEKS                       R16 R16 K21 ["createElement"]
      198 GETUPVAL                         R17 17
      199 DUPTABLE                         R18 K35 [{"AssetData", "Cancel", "OnPurchaseClicked"}]
      200 SETTABLEKS                       R5 R18 K3 ["AssetData"]
      202 SETTABLEKS                       R13 R18 K33 ["Cancel"]
      204 SETTABLEKS                       R15 R18 K34 ["OnPurchaseClicked"]
      206 CALL                             R16 2 -1
      207 RETURN                           R16 -1
      208 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Src"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["SharedFlags"]
       17 GETTABLEKS                       R3 R3 K10 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K4 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K4 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       40 GETTABLEKS                       R6 R6 K14 ["useDispatch"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K7 ["Src"]
       47 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       49 GETTABLEKS                       R7 R7 K15 ["useSelector"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K7 ["Src"]
       56 GETTABLEKS                       R8 R8 K16 ["Components"]
       58 GETTABLEKS                       R8 R8 K17 ["PurchaseFlow"]
       60 GETTABLEKS                       R8 R8 K18 ["BuyAssetDialog"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R0 K7 ["Src"]
       67 GETTABLEKS                       R9 R9 K16 ["Components"]
       69 GETTABLEKS                       R9 R9 K17 ["PurchaseFlow"]
       71 GETTABLEKS                       R9 R9 K19 ["PluginPurchaseFlow"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K6 [require]
       76 GETTABLEKS                       R10 R0 K7 ["Src"]
       78 GETTABLEKS                       R10 R10 K8 ["Util"]
       80 GETTABLEKS                       R10 R10 K20 ["DebugFlags"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K6 [require]
       85 GETTABLEKS                       R11 R0 K7 ["Src"]
       87 GETTABLEKS                       R11 R11 K8 ["Util"]
       89 GETTABLEKS                       R11 R11 K21 ["FiatUtil"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K6 [require]
       94 GETTABLEKS                       R12 R0 K7 ["Src"]
       96 GETTABLEKS                       R12 R12 K8 ["Util"]
       98 GETTABLEKS                       R12 R12 K22 ["Urls"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K6 [require]
      103 GETTABLEKS                       R13 R1 K23 ["Framework"]
      105 CALL                             R12 1 1
      106 GETTABLEKS                       R13 R12 K24 ["ContextServices"]
      108 GETTABLEKS                       R14 R13 K25 ["Stylizer"]
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K7 ["Src"]
      114 GETTABLEKS                       R16 R16 K24 ["ContextServices"]
      116 GETTABLEKS                       R16 R16 K26 ["NetworkContext"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K6 [require]
      121 GETTABLEKS                       R17 R0 K7 ["Src"]
      123 GETTABLEKS                       R17 R17 K27 ["Types"]
      125 GETTABLEKS                       R17 R17 K28 ["AssetLogicTypes"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K6 [require]
      130 GETTABLEKS                       R18 R0 K7 ["Src"]
      132 GETTABLEKS                       R18 R18 K27 ["Types"]
      134 GETTABLEKS                       R18 R18 K29 ["SubsequentDialogStatus"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K6 [require]
      139 GETTABLEKS                       R19 R0 K7 ["Src"]
      141 GETTABLEKS                       R19 R19 K30 ["Actions"]
      143 GETTABLEKS                       R19 R19 K31 ["EnqueueSubsequentDialog"]
      145 CALL                             R18 1 1
      146 GETIMPORT                        R19 K6 [require]
      148 GETTABLEKS                       R20 R0 K7 ["Src"]
      150 GETTABLEKS                       R20 R20 K32 ["Networking"]
      152 GETTABLEKS                       R20 R20 K33 ["Requests"]
      154 GETTABLEKS                       R20 R20 K34 ["PurchaseAssetRequest"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K6 [require]
      159 GETTABLEKS                       R21 R0 K7 ["Src"]
      161 GETTABLEKS                       R21 R21 K30 ["Actions"]
      163 GETTABLEKS                       R21 R21 K35 ["SetPurchaseDialogVisibility"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K38 [Vector2.new]
      168 LOADN                            R22 150
      169 LOADN                            R23 150
      170 CALL                             R21 2 1
      171 DUPCLOSURE                       R22 K39 [PROTO_4]
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R8
      190 RETURN                           R22 1
