PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K2 [{"assetId", "assetTypeId"}]
        4 GETUPVAL                         R3 2
        5 SETTABLEKS                       R3 R2 K0 ["assetId"]
        7 GETUPVAL                         R3 3
        8 SETTABLEKS                       R3 R2 K1 ["assetTypeId"]
       10 NAMECALL                         R0 R0 K3 ["jsonEncode"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K4 ["AddToolboxAssetToInventory"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R1 R1 K5 ["Fire"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K6 ["shouldDebugUrls"]
       23 CALL                             R0 0 1
       24 JUMPIFNOT                        R0 ; [+4]
       25 GETIMPORT                        R0 K8 [warn]
       27 LOADK                            R1 K9 ["MemStorageService not found!"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+14]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["shouldDebugWarnings"]
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+9]
       15 GETIMPORT                        R5 K4 [warn]
       17 LOADK                            R6 K5 ["Asset id %s was not added to inventory after purchase. Error: "]
       18 MOVE                             R8 R1
       19 NAMECALL                         R6 R6 K6 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R7 R4
       23 CALL                             R5 2 0
       24 RETURN                           R3 2

PROTO_2:
        0 MOVE                             R5 R4
        1 MOVE                             R6 R1
        2 MOVE                             R7 R3
        3 MOVE                             R8 R2
        4 CALL                             R5 3 2
        5 MOVE                             R7 R1
        6 JUMPIFNOT                        R7 ; [+7]
        7 GETTABLEKS                       R7 R1 K0 ["Asset"]
        9 JUMPIFNOT                        R7 ; [+4]
       10 GETTABLEKS                       R7 R1 K0 ["Asset"]
       12 GETTABLEKS                       R7 R7 K1 ["Id"]
       14 MOVE                             R8 R1
       15 JUMPIFNOT                        R8 ; [+7]
       16 GETTABLEKS                       R8 R1 K0 ["Asset"]
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETTABLEKS                       R8 R1 K0 ["Asset"]
       21 GETTABLEKS                       R8 R8 K2 ["TypeId"]
       23 GETIMPORT                        R10 K6 [Enum.AssetType.Plugin]
       25 GETTABLEKS                       R10 R10 K7 ["Value"]
       27 JUMPIFEQ                         R8 R10 ; [+2]
       29 LOADB                            R9 0 +1
       30 LOADB                            R9 1
       31 JUMPIFNOT                        R5 ; [+5]
       32 JUMPIFNOT                        R9 ; [+4]
       33 GETUPVAL                         R10 0
       34 NAMECALL                         R10 R10 K8 ["UpdatePluginManagement"]
       36 CALL                             R10 1 0
       37 JUMPIF                           R5 ; [+14]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K9 ["shouldDebugWarnings"]
       41 CALL                             R10 0 1
       42 JUMPIFNOT                        R10 ; [+9]
       43 GETIMPORT                        R10 K11 [warn]
       45 LOADK                            R11 K12 ["Asset id %s was not inserted correctly after purchase. Error: "]
       46 MOVE                             R13 R7
       47 NAMECALL                         R11 R11 K13 ["format"]
       49 CALL                             R11 2 1
       50 MOVE                             R12 R6
       51 CALL                             R10 2 0
       52 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R9 0
        1 MOVE                             R10 R1
        2 MOVE                             R11 R2
        3 MOVE                             R12 R4
        4 CALL                             R9 3 0
        5 GETUPVAL                         R11 1
        6 LOADB                            R12 1
        7 MOVE                             R13 R2
        8 CALL                             R11 2 -1
        9 NAMECALL                         R9 R0 K0 ["dispatch"]
       11 CALL                             R9 -1 0
       12 GETUPVAL                         R9 2
       13 MOVE                             R10 R1
       14 MOVE                             R11 R3
       15 MOVE                             R12 R5
       16 MOVE                             R13 R7
       17 MOVE                             R14 R6
       18 CALL                             R9 5 0
       19 JUMPIF                           R8 ; [+9]
       20 GETUPVAL                         R11 3
       21 MOVE                             R12 R3
       22 GETUPVAL                         R13 4
       23 GETTABLEKS                       R13 R13 K1 ["PurchaseSuccess"]
       25 CALL                             R11 2 -1
       26 NAMECALL                         R9 R0 K0 ["dispatch"]
       28 CALL                             R9 -1 0
       29 NAMECALL                         R9 R0 K2 ["getState"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R10 R9 K3 ["assets"]
       34 JUMPIFNOT                        R10 ; [+14]
       35 GETTABLEKS                       R10 R9 K3 ["assets"]
       37 GETTABLEKS                       R10 R10 K4 ["previewAssetId"]
       39 JUMPIFNOTEQ                      R10 R2 ; [+9]
       41 GETUPVAL                         R12 5
       42 GETUPVAL                         R13 6
       43 GETTABLEKS                       R13 R13 K5 ["Success"]
       45 CALL                             R12 1 -1
       46 NAMECALL                         R10 R0 K0 ["dispatch"]
       48 CALL                             R10 -1 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["purchase"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R3 R0 K0 ["purchase"]
        5 GETTABLEKS                       R3 R3 K1 ["cachedOwnedAssets"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["purchase"]
       10 GETTABLEKS                       R2 R2 K1 ["cachedOwnedAssets"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 JUMPIFNOT                        R2 ; [+7]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K3 [tostring]
       19 CALL                             R4 1 1
       20 GETTABLE                         R3 R2 R4
       21 RETURN                           R3 1
       22 LOADB                            R3 0
       23 RETURN                           R3 1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["assets"]
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETTABLEKS                       R3 R2 K1 ["assets"]
        8 GETTABLEKS                       R3 R3 K2 ["previewAssetId"]
       10 JUMPIFNOTEQ                      R3 R1 ; [+9]
       12 GETUPVAL                         R5 0
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["Failed"]
       16 CALL                             R5 1 -1
       17 NAMECALL                         R3 R0 K4 ["dispatch"]
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 SETUPVAL                         R1 1
        4 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R3 0
        1 NAMECALL                         R4 R0 K0 ["getState"]
        3 CALL                             R4 1 1
        4 GETTABLEKS                       R7 R4 K1 ["purchase"]
        6 JUMPIFNOT                        R7 ; [+10]
        7 GETTABLEKS                       R7 R4 K1 ["purchase"]
        9 GETTABLEKS                       R7 R7 K2 ["cachedOwnedAssets"]
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R6 R4 K1 ["purchase"]
       14 GETTABLEKS                       R6 R6 K2 ["cachedOwnedAssets"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 JUMPIFNOT                        R6 ; [+7]
       19 FASTCALL1                        TOSTRING R2 ; [+3]
       20 MOVE                             R8 R2
       21 GETIMPORT                        R7 K4 [tostring]
       23 CALL                             R7 1 1
       24 GETTABLE                         R5 R6 R7
       25 JUMP                             ; [+1]
       26 LOADB                            R5 0
       27 JUMPIF                           R5 ; [+24]
       28 GETUPVAL                         R6 0
       29 JUMPIFNOTLT                      R3 R6 ; [+22]
       31 GETIMPORT                        R6 K6 [wait]
       33 GETUPVAL                         R7 1
       34 CALL                             R6 1 0
       35 NAMECALL                         R6 R0 K0 ["getState"]
       37 CALL                             R6 1 1
       38 GETUPVAL                         R9 2
       39 MOVE                             R10 R1
       40 MOVE                             R11 R2
       41 CALL                             R9 2 -1
       42 NAMECALL                         R7 R0 K7 ["dispatch"]
       44 CALL                             R7 -1 1
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R3
       48 NAMECALL                         R7 R7 K8 ["andThen"]
       50 CALL                             R7 2 0
       51 JUMPBACK                         ; [-25]
       52 CLOSEUPVALS                      R3
       53 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R1 K1 ["fiat"]
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K2 ["robux"]
       10 GETIMPORT                        R2 K4 [warn]
       12 LOADK                            R3 K5 ["Could not purchase using %s assetID %s versionID %s"]
       13 MOVE                             R5 R1
       14 GETUPVAL                         R6 2
       15 GETUPVAL                         R7 3
       16 NAMECALL                         R3 R3 K6 ["format"]
       18 CALL                             R3 4 1
       19 MOVE                             R4 R0
       20 CALL                             R2 2 0
       21 GETUPVAL                         R1 4
       22 GETUPVAL                         R3 5
       23 GETUPVAL                         R4 6
       24 GETUPVAL                         R5 7
       25 GETTABLEKS                       R5 R5 K7 ["PurchaseFailed"]
       27 CALL                             R3 2 -1
       28 NAMECALL                         R1 R1 K8 ["dispatch"]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 4
       32 GETUPVAL                         R2 2
       33 NAMECALL                         R3 R1 K9 ["getState"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K10 ["assets"]
       38 JUMPIFNOT                        R4 ; [+14]
       39 GETTABLEKS                       R4 R3 K10 ["assets"]
       41 GETTABLEKS                       R4 R4 K11 ["previewAssetId"]
       43 JUMPIFNOTEQ                      R4 R2 ; [+9]
       45 GETUPVAL                         R6 8
       46 GETUPVAL                         R7 9
       47 GETTABLEKS                       R7 R7 K12 ["Failed"]
       49 CALL                             R6 1 -1
       50 NAMECALL                         R4 R1 K8 ["dispatch"]
       52 CALL                             R4 -1 0
       53 GETUPVAL                         R1 4
       54 GETUPVAL                         R3 10
       55 MOVE                             R4 R0
       56 CALL                             R3 1 -1
       57 NAMECALL                         R1 R1 K8 ["dispatch"]
       59 CALL                             R1 -1 0
       60 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R1 4
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 5
       11 GETUPVAL                         R6 6
       12 GETUPVAL                         R7 7
       13 GETUPVAL                         R8 8
       14 GETUPVAL                         R9 9
       15 GETUPVAL                         R10 10
       16 CALL                             R1 9 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["checkoutUrl"]
        4 GETTABLEKS                       R3 R1 K2 ["purchaseTransactionStatus"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["Success"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+35]
       11 JUMPIFNOT                        R2 ; [+21]
       12 GETUPVAL                         R4 1
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K4 ["OpenBrowserWindow"]
       16 CALL                             R4 2 0
       17 GETIMPORT                        R4 K6 [spawn]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          UPVAL U12
       31 CALL                             R4 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 6
       34 GETUPVAL                         R5 3
       35 GETUPVAL                         R6 4
       36 GETUPVAL                         R7 5
       37 GETUPVAL                         R8 7
       38 GETUPVAL                         R9 8
       39 GETUPVAL                         R10 9
       40 GETUPVAL                         R11 10
       41 GETUPVAL                         R12 11
       42 GETUPVAL                         R13 12
       43 CALL                             R4 9 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K7 ["AlreadyOwned"]
       48 JUMPIFNOTEQ                      R3 R4 ; [+13]
       50 GETUPVAL                         R4 6
       51 GETUPVAL                         R5 3
       52 GETUPVAL                         R6 4
       53 GETUPVAL                         R7 5
       54 GETUPVAL                         R8 7
       55 GETUPVAL                         R9 8
       56 GETUPVAL                         R10 9
       57 GETUPVAL                         R11 10
       58 GETUPVAL                         R12 11
       59 GETUPVAL                         R13 12
       60 CALL                             R4 9 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K8 ["PriceChanged"]
       65 JUMPIFNOTEQ                      R3 R4 ; [+58]
       67 GETTABLEKS                       R4 R1 K9 ["actualPrice"]
       69 JUMPIFNOT                        R4 ; [+21]
       70 GETUPVAL                         R5 7
       71 GETTABLEKS                       R5 R5 K10 ["FiatProduct"]
       73 JUMPIFNOT                        R5 ; [+17]
       74 GETUPVAL                         R5 13
       75 GETUPVAL                         R6 7
       76 CALL                             R5 1 1
       77 SETUPVAL                         R5 7
       78 GETUPVAL                         R5 7
       79 GETTABLEKS                       R5 R5 K10 ["FiatProduct"]
       81 SETTABLEKS                       R4 R5 K11 ["PurchasePrice"]
       83 GETUPVAL                         R5 3
       84 GETUPVAL                         R7 14
       85 GETUPVAL                         R8 5
       86 GETUPVAL                         R9 7
       87 CALL                             R7 2 -1
       88 NAMECALL                         R5 R5 K12 ["dispatch"]
       90 CALL                             R5 -1 0
       91 GETUPVAL                         R5 3
       92 GETUPVAL                         R7 15
       93 GETUPVAL                         R8 7
       94 GETUPVAL                         R9 16
       95 GETTABLEKS                       R9 R9 K8 ["PriceChanged"]
       97 CALL                             R7 2 -1
       98 NAMECALL                         R5 R5 K12 ["dispatch"]
      100 CALL                             R5 -1 0
      101 GETUPVAL                         R5 3
      102 GETUPVAL                         R6 5
      103 NAMECALL                         R7 R5 K13 ["getState"]
      105 CALL                             R7 1 1
      106 GETTABLEKS                       R8 R7 K14 ["assets"]
      108 JUMPIFNOT                        R8 ; [+80]
      109 GETTABLEKS                       R8 R7 K14 ["assets"]
      111 GETTABLEKS                       R8 R8 K15 ["previewAssetId"]
      113 JUMPIFNOTEQ                      R8 R6 ; [+75]
      115 GETUPVAL                         R10 17
      116 GETUPVAL                         R11 18
      117 GETTABLEKS                       R11 R11 K16 ["Failed"]
      119 CALL                             R10 1 -1
      120 NAMECALL                         R8 R5 K12 ["dispatch"]
      122 CALL                             R8 -1 0
      123 RETURN                           R0 0
      124 GETUPVAL                         R4 0
      125 GETTABLEKS                       R4 R4 K17 ["ExcessiveTransactions"]
      127 JUMPIFNOTEQ                      R3 R4 ; [+59]
      129 GETUPVAL                         R5 7
      130 GETTABLEKS                       R5 R5 K18 ["Creator"]
      132 JUMPIFNOT                        R5 ; [+12]
      133 GETUPVAL                         R5 7
      134 GETTABLEKS                       R5 R5 K18 ["Creator"]
      136 GETTABLEKS                       R5 R5 K19 ["Id"]
      138 JUMPIFNOT                        R5 ; [+6]
      139 GETUPVAL                         R4 7
      140 GETTABLEKS                       R4 R4 K18 ["Creator"]
      142 GETTABLEKS                       R4 R4 K19 ["Id"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R4
      146 JUMPIFNOT                        R4 ; [+7]
      147 GETUPVAL                         R5 3
      148 GETUPVAL                         R7 19
      149 MOVE                             R8 R4
      150 CALL                             R7 1 -1
      151 NAMECALL                         R5 R5 K12 ["dispatch"]
      153 CALL                             R5 -1 0
      154 GETUPVAL                         R5 3
      155 GETUPVAL                         R7 15
      156 GETUPVAL                         R8 7
      157 GETUPVAL                         R9 16
      158 GETTABLEKS                       R9 R9 K17 ["ExcessiveTransactions"]
      160 CALL                             R7 2 -1
      161 NAMECALL                         R5 R5 K12 ["dispatch"]
      163 CALL                             R5 -1 0
      164 GETUPVAL                         R5 3
      165 GETUPVAL                         R6 5
      166 NAMECALL                         R7 R5 K13 ["getState"]
      168 CALL                             R7 1 1
      169 GETTABLEKS                       R8 R7 K14 ["assets"]
      171 JUMPIFNOT                        R8 ; [+17]
      172 GETTABLEKS                       R8 R7 K14 ["assets"]
      174 GETTABLEKS                       R8 R8 K15 ["previewAssetId"]
      176 JUMPIFNOTEQ                      R8 R6 ; [+12]
      178 GETUPVAL                         R10 17
      179 GETUPVAL                         R11 18
      180 GETTABLEKS                       R11 R11 K16 ["Failed"]
      182 CALL                             R10 1 -1
      183 NAMECALL                         R8 R5 K12 ["dispatch"]
      185 CALL                             R8 -1 0
      186 RETURN                           R0 0
      187 GETUPVAL                         R4 20
      188 CALL                             R4 0 0
      189 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["purchased"]
        4 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R2 R2 K2 ["reason"]
        8 JUMPIF                           R1 ; [+5]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["AlreadyOwned"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+28]
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R5 2
       16 LOADB                            R6 1
       17 GETUPVAL                         R7 3
       18 CALL                             R5 2 -1
       19 NAMECALL                         R3 R3 K4 ["dispatch"]
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R5 4
       24 GETUPVAL                         R6 5
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R3 K4 ["dispatch"]
       28 CALL                             R3 -1 0
       29 GETUPVAL                         R3 6
       30 GETUPVAL                         R4 5
       31 GETUPVAL                         R5 3
       32 GETUPVAL                         R6 7
       33 CALL                             R3 3 0
       34 GETUPVAL                         R3 8
       35 GETUPVAL                         R4 5
       36 GETUPVAL                         R5 9
       37 GETUPVAL                         R6 10
       38 GETUPVAL                         R7 11
       39 GETUPVAL                         R8 12
       40 CALL                             R3 5 0
       41 JUMPIFNOT                        R1 ; [+4]
       42 GETUPVAL                         R3 13
       43 GETTABLEKS                       R3 R3 K5 ["PurchaseSuccess"]
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R3 13
       47 GETTABLEKS                       R3 R3 K6 ["PurchaseFailed"]
       49 GETUPVAL                         R4 1
       50 GETUPVAL                         R6 14
       51 GETUPVAL                         R7 9
       52 MOVE                             R8 R3
       53 CALL                             R6 2 -1
       54 NAMECALL                         R4 R4 K4 ["dispatch"]
       56 CALL                             R4 -1 0
       57 GETUPVAL                         R4 1
       58 GETUPVAL                         R6 15
       59 JUMPIFNOT                        R1 ; [+4]
       60 GETUPVAL                         R7 16
       61 GETTABLEKS                       R7 R7 K7 ["Success"]
       63 JUMP                             ; [+3]
       64 GETUPVAL                         R7 16
       65 GETTABLEKS                       R7 R7 K8 ["Failed"]
       67 CALL                             R6 1 -1
       68 NAMECALL                         R4 R4 K4 ["dispatch"]
       70 CALL                             R4 -1 0
       71 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 NAMECALL                         R3 R0 K0 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R3 K1 ["assets"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R5 R4 K2 ["idToAssetMap"]
       10 JUMP                             ; [+2]
       11 NEWTABLE                         R5 0 0
       13 GETUPVAL                         R7 0
       14 JUMPIFNOT                        R7 ; [+2]
       15 GETUPVAL                         R6 0
       16 JUMP                             ; [+2]
       17 GETUPVAL                         R7 1
       18 GETTABLE                         R6 R5 R7
       19 SETUPVAL                         R6 0
       20 GETUPVAL                         R6 0
       21 JUMPIF                           R6 ; [+13]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K3 ["shouldDebugWarnings"]
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+8]
       27 GETIMPORT                        R6 K5 [warn]
       29 LOADK                            R7 K6 ["Asset data for id %s was not found in the idToAssetMap."]
       30 GETUPVAL                         R9 1
       31 NAMECALL                         R7 R7 K7 ["format"]
       33 CALL                             R7 2 -1
       34 CALL                             R6 -1 0
       35 GETUPVAL                         R7 0
       36 JUMPIFNOT                        R7 ; [+10]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K8 ["Asset"]
       40 JUMPIFNOT                        R7 ; [+6]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K8 ["Asset"]
       44 GETTABLEKS                       R6 R6 K9 ["TypeId"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R6
       48 SETUPVAL                         R6 3
       49 GETTABLEKS                       R7 R3 K10 ["pageInfo"]
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETTABLEKS                       R6 R3 K10 ["pageInfo"]
       54 GETTABLEKS                       R6 R6 K11 ["searchId"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETUPVAL                         R6 4
       59 JUMPIFNOT                        R4 ; [+3]
       60 GETTABLEKS                       R2 R4 K12 ["previewSwimlaneName"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R2
       64 GETTABLEKS                       R7 R3 K1 ["assets"]
       66 JUMPIFNOT                        R7 ; [+5]
       67 GETTABLEKS                       R6 R3 K1 ["assets"]
       69 GETTABLEKS                       R6 R6 K13 ["previewPluginData"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 JUMPIFNOT                        R6 ; [+3]
       74 GETTABLEKS                       R1 R6 K14 ["versionId"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R1
       78 GETUPVAL                         R9 5
       79 GETUPVAL                         R10 6
       80 GETTABLEKS                       R10 R10 K15 ["Waiting"]
       82 CALL                             R9 1 -1
       83 NAMECALL                         R7 R0 K16 ["dispatch"]
       85 CALL                             R7 -1 0
       86 GETUPVAL                         R8 7
       87 JUMPIFNOT                        R8 ; [+25]
       88 DUPTABLE                         R7 K19 [{"expectedPrice", "productKey"}]
       89 GETUPVAL                         R8 7
       90 SETTABLEKS                       R8 R7 K17 ["expectedPrice"]
       92 DUPTABLE                         R8 K23 [{"productNamespace", "productType", "productTargetId"}]
       93 LOADK                            R9 K24 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET"]
       94 SETTABLEKS                       R9 R8 K20 ["productNamespace"]
       96 GETUPVAL                         R9 8
       97 GETTABLEKS                       R9 R9 K25 ["convertAssetTypeToProductType"]
       99 GETUPVAL                         R10 3
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K21 ["productType"]
      103 GETUPVAL                         R10 1
      104 FASTCALL1                        TOSTRING R10 ; [+2]
      105 GETIMPORT                        R9 K27 [tostring]
      107 CALL                             R9 1 1
      108 SETTABLEKS                       R9 R8 K22 ["productTargetId"]
      110 SETTABLEKS                       R8 R7 K18 ["productKey"]
      112 JUMP                             ; [+13]
      113 DUPTABLE                         R7 K30 [{"expectedPrice", "assetId", "assetType", "searchId"}]
      114 GETUPVAL                         R8 9
      115 SETTABLEKS                       R8 R7 K17 ["expectedPrice"]
      117 GETUPVAL                         R8 1
      118 SETTABLEKS                       R8 R7 K28 ["assetId"]
      120 GETUPVAL                         R8 3
      121 SETTABLEKS                       R8 R7 K29 ["assetType"]
      123 GETUPVAL                         R8 4
      124 SETTABLEKS                       R8 R7 K11 ["searchId"]
      126 NEWCLOSURE                       R8 P0
      127 CAPTURE                          UPVAL U2
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U1
      130 CAPTURE                          REF R1
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U10
      133 CAPTURE                          UPVAL U0
      134 CAPTURE                          UPVAL U11
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          UPVAL U12
      138 GETUPVAL                         R9 7
      139 JUMPIFNOT                        R9 ; [+35]
      140 GETUPVAL                         R9 13
      141 LOADNIL                          R11
      142 MOVE                             R12 R7
      143 GETUPVAL                         R13 3
      144 NAMECALL                         R9 R9 K31 ["purchaseAsset"]
      146 CALL                             R9 4 1
      147 NEWCLOSURE                       R11 P1
      148 CAPTURE                          UPVAL U14
      149 CAPTURE                          UPVAL U15
      150 CAPTURE                          UPVAL U16
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          UPVAL U1
      154 CAPTURE                          UPVAL U17
      155 CAPTURE                          UPVAL U0
      156 CAPTURE                          UPVAL U3
      157 CAPTURE                          REF R1
      158 CAPTURE                          UPVAL U18
      159 CAPTURE                          REF R2
      160 CAPTURE                          UPVAL U19
      161 CAPTURE                          UPVAL U20
      162 CAPTURE                          UPVAL U21
      163 CAPTURE                          UPVAL U10
      164 CAPTURE                          UPVAL U11
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          UPVAL U6
      167 CAPTURE                          UPVAL U22
      168 CAPTURE                          VAL R8
      169 MOVE                             R12 R8
      170 NAMECALL                         R9 R9 K32 ["andThen"]
      172 CALL                             R9 3 -1
      173 CLOSEUPVALS                      R1
      174 RETURN                           R9 -1
      175 GETUPVAL                         R9 13
      176 GETUPVAL                         R11 23
      177 MOVE                             R12 R7
      178 GETUPVAL                         R13 3
      179 NAMECALL                         R9 R9 K31 ["purchaseAsset"]
      181 CALL                             R9 4 1
      182 NEWCLOSURE                       R11 P2
      183 CAPTURE                          UPVAL U24
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U25
      186 CAPTURE                          UPVAL U1
      187 CAPTURE                          UPVAL U26
      188 CAPTURE                          UPVAL U13
      189 CAPTURE                          UPVAL U27
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          UPVAL U28
      192 CAPTURE                          UPVAL U0
      193 CAPTURE                          REF R1
      194 CAPTURE                          REF R2
      195 CAPTURE                          UPVAL U18
      196 CAPTURE                          UPVAL U11
      197 CAPTURE                          UPVAL U10
      198 CAPTURE                          UPVAL U5
      199 CAPTURE                          UPVAL U6
      200 MOVE                             R12 R8
      201 NAMECALL                         R9 R9 K32 ["andThen"]
      203 CALL                             R9 3 -1
      204 CLOSEUPVALS                      R1
      205 RETURN                           R9 -1

PROTO_13:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          REF R8
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R4
        5 CAPTURE                          REF R5
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R6
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          VAL R7
       20 CAPTURE                          VAL R9
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          UPVAL U12
       23 CAPTURE                          UPVAL U13
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U14
       26 CAPTURE                          UPVAL U15
       27 CAPTURE                          UPVAL U16
       28 CAPTURE                          UPVAL U17
       29 CAPTURE                          UPVAL U18
       30 CLOSEUPVALS                      R4
       31 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETTABLEKS                       R3 R3 K8 ["Parent"]
       29 GETTABLEKS                       R4 R3 K9 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R5 R3 K11 ["Packages"]
       35 GETIMPORT                        R6 K13 [require]
       37 GETTABLEKS                       R7 R5 K14 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K10 ["Util"]
       42 GETTABLEKS                       R7 R7 K15 ["deepCopy"]
       44 GETIMPORT                        R8 K13 [require]
       46 GETTABLEKS                       R9 R4 K16 ["DebugFlags"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K13 [require]
       51 GETTABLEKS                       R10 R4 K17 ["FiatUtil"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K13 [require]
       56 GETTABLEKS                       R11 R4 K18 ["ToolboxUtilities"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K13 [require]
       61 GETTABLEKS                       R12 R3 K9 ["Src"]
       63 GETTABLEKS                       R12 R12 K19 ["Actions"]
       65 GETTABLEKS                       R12 R12 K20 ["NetworkError"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K13 [require]
       70 GETTABLEKS                       R13 R3 K9 ["Src"]
       72 GETTABLEKS                       R13 R13 K19 ["Actions"]
       74 GETTABLEKS                       R13 R13 K21 ["EnqueueSubsequentDialog"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K13 [require]
       79 GETTABLEKS                       R14 R3 K9 ["Src"]
       81 GETTABLEKS                       R14 R14 K19 ["Actions"]
       83 GETTABLEKS                       R14 R14 K22 ["SetExcessiveTransactionUserId"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K13 [require]
       88 GETTABLEKS                       R15 R3 K9 ["Src"]
       90 GETTABLEKS                       R15 R15 K19 ["Actions"]
       92 GETTABLEKS                       R15 R15 K23 ["SetOwnsAsset"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K13 [require]
       97 GETTABLEKS                       R16 R3 K9 ["Src"]
       99 GETTABLEKS                       R16 R16 K19 ["Actions"]
      101 GETTABLEKS                       R16 R16 K24 ["SetPurchaseStatus"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K13 [require]
      106 GETTABLEKS                       R17 R3 K9 ["Src"]
      108 GETTABLEKS                       R17 R17 K19 ["Actions"]
      110 GETTABLEKS                       R17 R17 K25 ["UpdateAssetData"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K13 [require]
      115 GETTABLEKS                       R18 R3 K9 ["Src"]
      117 GETTABLEKS                       R18 R18 K26 ["Networking"]
      119 GETTABLEKS                       R18 R18 K27 ["Requests"]
      121 GETTABLEKS                       R18 R18 K28 ["GetOwnsAssetRequest"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K13 [require]
      126 GETTABLEKS                       R19 R3 K9 ["Src"]
      128 GETTABLEKS                       R19 R19 K26 ["Networking"]
      130 GETTABLEKS                       R19 R19 K27 ["Requests"]
      132 GETTABLEKS                       R19 R19 K29 ["GetRobuxBalance"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K13 [require]
      137 GETTABLEKS                       R20 R3 K9 ["Src"]
      139 GETTABLEKS                       R20 R20 K30 ["Types"]
      141 GETTABLEKS                       R20 R20 K31 ["PurchaseStatus"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K13 [require]
      146 GETTABLEKS                       R21 R3 K9 ["Src"]
      148 GETTABLEKS                       R21 R21 K30 ["Types"]
      150 GETTABLEKS                       R21 R21 K32 ["ProductPurchaseResponseReasons"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K13 [require]
      155 GETTABLEKS                       R22 R3 K9 ["Src"]
      157 GETTABLEKS                       R22 R22 K30 ["Types"]
      159 GETTABLEKS                       R22 R22 K33 ["PurchaseTransactionStatus"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K13 [require]
      164 GETTABLEKS                       R23 R3 K9 ["Src"]
      166 GETTABLEKS                       R23 R23 K30 ["Types"]
      168 GETTABLEKS                       R23 R23 K34 ["SubsequentDialogStatus"]
      170 CALL                             R22 1 1
      171 GETTABLEKS                       R23 R10 K35 ["getOwnershipPollingMaxRetries"]
      173 CALL                             R23 0 1
      174 GETTABLEKS                       R24 R10 K36 ["getOwnershipPollingWaitTimeInSec"]
      176 CALL                             R24 0 1
      177 DUPCLOSURE                       R25 K37 [PROTO_1]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R8
      180 DUPCLOSURE                       R26 K38 [PROTO_2]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R8
      183 DUPCLOSURE                       R27 K39 [PROTO_3]
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R26
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R19
      191 DUPCLOSURE                       R28 K40 [PROTO_4]
      192 DUPCLOSURE                       R29 K41 [PROTO_5]
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R19
      195 DUPCLOSURE                       R30 K42 [PROTO_7]
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R17
      199 DUPCLOSURE                       R31 K43 [PROTO_13]
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R26
      219 RETURN                           R31 1
