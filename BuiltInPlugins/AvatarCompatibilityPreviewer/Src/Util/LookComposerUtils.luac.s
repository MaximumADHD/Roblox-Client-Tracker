PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+71]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Body"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K0 ["Body"]
       11 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       13 CALL                             R2 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 DUPTABLE                         R3 K5 [{["id"] = 1, ["look"]}]
       17 DUPTABLE                         R4 K7 [{"items"}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K6 ["items"]
       22 SETTABLEKS                       R4 R3 K4 ["look"]
       24 GETTABLEKS                       R4 R2 K8 ["assets"]
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R10 R3 K4 ["look"]
       31 GETTABLEKS                       R10 R10 K6 ["items"]
       33 DUPTABLE                         R11 K15 [{["id"], ["name"], ["itemType"] = "Asset", ["creator"], ["priceInRobux"] = 30}]
       34 GETTABLEKS                       R12 R8 K2 ["id"]
       36 SETTABLEKS                       R12 R11 K2 ["id"]
       38 LOADK                            R13 K16 ["Test Item"]
       39 GETTABLEKS                       R15 R8 K2 ["id"]
       41 FASTCALL1                        TOSTRING R15 ; [+2]
       42 GETIMPORT                        R14 K18 [tostring]
       44 CALL                             R14 1 1
       45 CONCAT                           R12 R13 R14
       46 SETTABLEKS                       R12 R11 K9 ["name"]
       48 DUPTABLE                         R12 K24 [{["id"], ["name"] = "Test Creator", ["type"] = "User", ["hasVerifiedBadge"] = False}]
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R13 R13 K25 ["getUserId"]
       52 CALL                             R13 0 1
       53 SETTABLEKS                       R13 R12 K2 ["id"]
       55 SETTABLEKS                       R12 R11 K12 ["creator"]
       57 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       59 GETIMPORT                        R9 K28 [table.insert]
       61 CALL                             R9 2 0
       62 FORGLOOP                         R4 2 ; [-34]
       64 MOVE                             R4 R0
       65 DUPTABLE                         R5 K29 [{"Body"}]
       66 GETUPVAL                         R6 2
       67 MOVE                             R8 R3
       68 NAMECALL                         R6 R6 K30 ["JSONEncode"]
       70 CALL                             R6 2 1
       71 SETTABLEKS                       R6 R5 K0 ["Body"]
       73 CALL                             R4 1 0
       74 GETUPVAL                         R2 2
       75 GETUPVAL                         R4 1
       76 NAMECALL                         R2 R2 K31 ["RequestInternal"]
       78 CALL                             R2 2 1
       79 NEWCLOSURE                       R5 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 NAMECALL                         R3 R2 K32 ["Start"]
       84 CALL                             R3 2 -1
       85 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["checkType"]
       10 JUMPIFNOTEQ                      R8 R1 ; [+2]
       12 RETURN                           R7 1
       13 FORGLOOP                         R3 2 ; [-6]
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [string.split]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 LOADK                            R2 K3 [","]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL1                        TYPEOF R6 ; [+3]
       13 MOVE                             R8 R6
       14 GETIMPORT                        R7 K5 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K6 ["number"] ; [+3]
       19 LOADB                            R7 1
       20 SETTABLE                         R7 R1 R6
       21 FORGLOOP                         R2 2 ; [-10]
       23 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getLookPreviewNonBlockingErrorCodes"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["errorDescription"]
        8 JUMPIFNOT                        R3 ; [+23]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K2 ["errorCode"]
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETTABLEKS                       R5 R0 K2 ["errorCode"]
       15 GETTABLE                         R4 R2 R5
       16 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       18 LOADB                            R3 0
       19 DUPTABLE                         R6 K7 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       20 GETTABLEKS                       R7 R0 K1 ["errorDescription"]
       22 SETTABLEKS                       R7 R6 K3 ["message"]
       24 SETTABLEKS                       R3 R6 K4 ["isBlocking"]
       26 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K10 [table.insert]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R3 R0 K11 ["warnings"]
       34 JUMPIFNOT                        R3 ; [+27]
       35 GETTABLEKS                       R3 R0 K11 ["warnings"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 LOADB                            R8 1
       41 GETTABLEKS                       R10 R7 K2 ["errorCode"]
       43 GETTABLE                         R9 R2 R10
       44 JUMPIFNOTEQKB                    R9 TRUE ; [+2]
       46 LOADB                            R8 0
       47 DUPTABLE                         R11 K7 [{["message"], ["isBlocking"], ["isLocalized"] = True}]
       48 GETTABLEKS                       R12 R7 K1 ["errorDescription"]
       50 SETTABLEKS                       R12 R11 K3 ["message"]
       52 SETTABLEKS                       R8 R11 K4 ["isBlocking"]
       54 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       56 MOVE                             R10 R1
       57 GETIMPORT                        R9 K10 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R3 2 ; [-21]
       62 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["eligibilityChecks"]
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETTABLEKS                       R2 R0 K0 ["eligibilityChecks"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 DUPTABLE                         R9 K3 [{"checkType", "isDiscoverable"}]
       11 GETTABLEKS                       R10 R6 K1 ["checkType"]
       13 SETTABLEKS                       R10 R9 K1 ["checkType"]
       15 GETTABLEKS                       R10 R6 K2 ["isDiscoverable"]
       17 SETTABLEKS                       R10 R9 K2 ["isDiscoverable"]
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K6 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-16]
       27 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R0 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K3 ["FromValue"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["look"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["look"]
        7 GETTABLEKS                       R2 R2 K1 ["items"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R1 1
       11 NEWTABLE                         R2 0 0
       13 GETTABLEKS                       R3 R0 K0 ["look"]
       15 GETTABLEKS                       R3 R3 K1 ["items"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R8 0
       21 CALL                             R8 0 1
       22 JUMPIFNOT                        R8 ; [+106]
       23 GETTABLEKS                       R8 R7 K2 ["bundleType"]
       25 JUMPIFEQKNIL                     R8 ; [+103]
       27 NEWTABLE                         R8 0 0
       29 GETTABLEKS                       R9 R7 K3 ["assetsInBundle"]
       31 JUMPIFNOT                        R9 ; [+36]
       32 GETTABLEKS                       R9 R7 K3 ["assetsInBundle"]
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 GETTABLEKS                       R15 R13 K4 ["assetType"]
       39 GETIMPORT                        R16 K6 [pcall]
       41 NEWCLOSURE                       R17 P0
       42 CAPTURE                          VAL R15
       43 CALL                             R16 1 2
       44 JUMPIFNOT                        R16 ; [+2]
       45 MOVE                             R14 R17
       46 JUMP                             ; [+1]
       47 LOADNIL                          R14
       48 JUMPIFNOT                        R14 ; [+17]
       49 DUPTABLE                         R17 K9 [{"assetType", "id", "isIncluded"}]
       50 SETTABLEKS                       R14 R17 K4 ["assetType"]
       52 GETTABLEKS                       R18 R13 K7 ["id"]
       54 SETTABLEKS                       R18 R17 K7 ["id"]
       56 GETTABLEKS                       R18 R13 K8 ["isIncluded"]
       58 SETTABLEKS                       R18 R17 K8 ["isIncluded"]
       60 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
       62 MOVE                             R16 R8
       63 GETIMPORT                        R15 K12 [table.insert]
       65 CALL                             R15 2 0
       66 FORGLOOP                         R9 2 ; [-30]
       68 DUPTABLE                         R9 K24 [{["itemRowType"] = "Bundle", ["id"], ["name"], ["creator"], ["creatorId"], ["creatorType"], ["creatorHasVerifiedBadge"], ["price"], ["priceInfo"], ["rowState"] = "Selected", ["assetsInBundle"]}]
       69 GETTABLEKS                       R10 R7 K7 ["id"]
       71 SETTABLEKS                       R10 R9 K7 ["id"]
       73 GETTABLEKS                       R10 R7 K15 ["name"]
       75 SETTABLEKS                       R10 R9 K15 ["name"]
       77 GETTABLEKS                       R10 R7 K16 ["creator"]
       79 GETTABLEKS                       R10 R10 K15 ["name"]
       81 SETTABLEKS                       R10 R9 K16 ["creator"]
       83 GETTABLEKS                       R11 R7 K16 ["creator"]
       85 GETTABLEKS                       R11 R11 K7 ["id"]
       87 FASTCALL1                        TOSTRING R11 ; [+2]
       88 GETIMPORT                        R10 K26 [tostring]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R10 R9 K17 ["creatorId"]
       93 GETTABLEKS                       R10 R7 K16 ["creator"]
       95 GETTABLEKS                       R10 R10 K27 ["type"]
       97 SETTABLEKS                       R10 R9 K18 ["creatorType"]
       99 GETTABLEKS                       R10 R7 K16 ["creator"]
      101 GETTABLEKS                       R10 R10 K28 ["hasVerifiedBadge"]
      103 SETTABLEKS                       R10 R9 K19 ["creatorHasVerifiedBadge"]
      105 GETTABLEKS                       R11 R7 K30 ["priceInRobux"]
      107 ORK                              R10 R11 K29 [0]
      108 SETTABLEKS                       R10 R9 K20 ["price"]
      110 GETUPVAL                         R11 1
      111 CALL                             R11 0 1
      112 JUMPIFNOT                        R11 ; [+3]
      113 GETTABLEKS                       R10 R7 K21 ["priceInfo"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R10
      117 SETTABLEKS                       R10 R9 K21 ["priceInfo"]
      119 SETTABLEKS                       R8 R9 K3 ["assetsInBundle"]
      121 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      123 MOVE                             R11 R1
      124 MOVE                             R12 R9
      125 GETIMPORT                        R10 K12 [table.insert]
      127 CALL                             R10 2 0
      128 JUMP                             ; [+125]
      129 GETUPVAL                         R8 0
      130 CALL                             R8 0 1
      131 JUMPIFNOT                        R8 ; [+4]
      132 GETTABLEKS                       R8 R7 K31 ["itemType"]
      134 JUMPIFNOTEQKS                    R8 K32 ["Asset"] ; [+109]
      136 GETTABLEKS                       R8 R7 K4 ["assetType"]
      138 JUMPIFNOT                        R8 ; [+115]
      139 GETUPVAL                         R9 0
      140 CALL                             R9 0 1
      141 JUMPIFNOT                        R9 ; [+12]
      142 GETTABLEKS                       R9 R7 K4 ["assetType"]
      144 GETIMPORT                        R10 K6 [pcall]
      146 NEWCLOSURE                       R11 P0
      147 CAPTURE                          VAL R9
      148 CALL                             R10 1 2
      149 JUMPIFNOT                        R10 ; [+2]
      150 MOVE                             R8 R11
      151 JUMP                             ; [+9]
      152 LOADNIL                          R8
      153 JUMP                             ; [+7]
      154 GETIMPORT                        R8 K35 [Enum.AssetType]
      156 GETTABLEKS                       R10 R7 K4 ["assetType"]
      158 NAMECALL                         R8 R8 K36 ["FromValue"]
      160 CALL                             R8 2 1
      161 JUMPIFNOT                        R8 ; [+92]
      162 DUPTABLE                         R9 K37 [{["itemRowType"] = "Asset", ["id"], ["name"], ["creator"], ["creatorId"], ["creatorType"], ["creatorHasVerifiedBadge"], ["price"], ["priceInfo"], ["rowState"] = "Selected", ["assetType"]}]
      163 GETTABLEKS                       R10 R7 K7 ["id"]
      165 SETTABLEKS                       R10 R9 K7 ["id"]
      167 GETTABLEKS                       R10 R7 K15 ["name"]
      169 SETTABLEKS                       R10 R9 K15 ["name"]
      171 GETTABLEKS                       R10 R7 K16 ["creator"]
      173 GETTABLEKS                       R10 R10 K15 ["name"]
      175 SETTABLEKS                       R10 R9 K16 ["creator"]
      177 GETTABLEKS                       R11 R7 K16 ["creator"]
      179 GETTABLEKS                       R11 R11 K7 ["id"]
      181 FASTCALL1                        TOSTRING R11 ; [+2]
      182 GETIMPORT                        R10 K26 [tostring]
      184 CALL                             R10 1 1
      185 SETTABLEKS                       R10 R9 K17 ["creatorId"]
      187 GETTABLEKS                       R10 R7 K16 ["creator"]
      189 GETTABLEKS                       R10 R10 K27 ["type"]
      191 SETTABLEKS                       R10 R9 K18 ["creatorType"]
      193 GETTABLEKS                       R10 R7 K16 ["creator"]
      195 GETTABLEKS                       R10 R10 K28 ["hasVerifiedBadge"]
      197 SETTABLEKS                       R10 R9 K19 ["creatorHasVerifiedBadge"]
      199 GETTABLEKS                       R11 R7 K30 ["priceInRobux"]
      201 ORK                              R10 R11 K29 [0]
      202 SETTABLEKS                       R10 R9 K20 ["price"]
      204 GETUPVAL                         R11 1
      205 CALL                             R11 0 1
      206 JUMPIFNOT                        R11 ; [+3]
      207 GETTABLEKS                       R10 R7 K21 ["priceInfo"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R10
      211 SETTABLEKS                       R10 R9 K21 ["priceInfo"]
      213 SETTABLEKS                       R8 R9 K4 ["assetType"]
      215 GETIMPORT                        R10 K39 [Enum.AssetType.FaceMakeup]
      217 JUMPIFEQ                         R8 R10 ; [+9]
      219 GETIMPORT                        R10 K41 [Enum.AssetType.LipMakeup]
      221 JUMPIFEQ                         R8 R10 ; [+5]
      223 GETIMPORT                        R10 K43 [Enum.AssetType.EyeMakeup]
      225 JUMPIFNOTEQ                      R8 R10 ; [+10]
      227 LOADN                            R12 1
      228 FASTCALL3                        TABLE_INSERT R2 R12 R9
      230 MOVE                             R11 R2
      231 MOVE                             R13 R9
      232 GETIMPORT                        R10 K12 [table.insert]
      234 CALL                             R10 3 0
      235 JUMP                             ; [+18]
      236 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      238 MOVE                             R11 R1
      239 MOVE                             R12 R9
      240 GETIMPORT                        R10 K12 [table.insert]
      242 CALL                             R10 2 0
      243 JUMP                             ; [+10]
      244 GETIMPORT                        R8 K45 [error]
      246 LOADK                            R10 K46 ["Unknown item type in look preview response: %*"]
      247 GETTABLEKS                       R12 R7 K31 ["itemType"]
      249 NAMECALL                         R10 R10 K47 ["format"]
      251 CALL                             R10 2 1
      252 MOVE                             R9 R10
      253 CALL                             R8 1 0
      254 FORGLOOP                         R3 2 ; [-235]
      256 GETUPVAL                         R3 2
      257 GETTABLEKS                       R3 R3 K48 ["append"]
      259 MOVE                             R4 R1
      260 MOVE                             R5 R2
      261 CALL                             R3 2 1
      262 GETUPVAL                         R4 3
      263 CALL                             R4 0 1
      264 JUMPIFNOT                        R4 ; [+11]
      265 LENGTH                           R4 R3
      266 MOVE                             R5 R3
      267 LOADNIL                          R6
      268 LOADNIL                          R7
      269 FORGPREP                         R5
      270 SUB                              R11 R4 R8
      271 ADDK                             R10 R11 K49 [1]
      272 SETTABLEKS                       R10 R9 K50 ["layerOrder"]
      274 FORGLOOP                         R5 2 ; [-5]
      276 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["lookPreviewUrl"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K5 [{["assets"], ["lookType"], ["validationType"] = "filterUnsupportedTypes"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["assets"]
        9 JUMPIFNOTEQKS                    R0 K6 ["MakeupLook"] ; [+3]
       11 LOADK                            R4 K7 ["Makeup"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K8 ["Avatar"]
       14 SETTABLEKS                       R4 R3 K2 ["lookType"]
       16 MOVE                             R4 R1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLEKS                       R9 R8 K9 ["item"]
       22 GETTABLEKS                       R9 R9 K10 ["source"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K11 ["SOURCE_MARKETPLACE"]
       27 JUMPIFNOTEQ                      R9 R10 ; [+62]
       29 GETTABLEKS                       R9 R8 K12 ["isHidden"]
       31 JUMPIFEQKB                       R9 TRUE ; [+58]
       33 GETTABLEKS                       R9 R8 K9 ["item"]
       35 GETTABLEKS                       R9 R9 K13 ["marketplaceItem"]
       37 GETUPVAL                         R10 2
       38 CALL                             R10 0 1
       39 JUMPIFNOT                        R10 ; [+40]
       40 FASTCALL1                        TYPEOF R9 ; [+3]
       41 MOVE                             R11 R9
       42 GETIMPORT                        R10 K15 [typeof]
       44 CALL                             R10 1 1
       45 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+34]
       47 GETTABLEKS                       R10 R9 K17 ["left"]
       49 JUMPIFEQKNIL                     R10 ; [+30]
       51 GETTABLEKS                       R10 R9 K18 ["right"]
       53 JUMPIFEQKNIL                     R10 ; [+26]
       55 GETTABLEKS                       R11 R3 K1 ["assets"]
       57 DUPTABLE                         R12 K20 [{"id"}]
       58 GETTABLEKS                       R13 R9 K17 ["left"]
       60 SETTABLEKS                       R13 R12 K19 ["id"]
       62 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       64 GETIMPORT                        R10 K22 [table.insert]
       66 CALL                             R10 2 0
       67 GETTABLEKS                       R11 R3 K1 ["assets"]
       69 DUPTABLE                         R12 K20 [{"id"}]
       70 GETTABLEKS                       R13 R9 K18 ["right"]
       72 SETTABLEKS                       R13 R12 K19 ["id"]
       74 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       76 GETIMPORT                        R10 K22 [table.insert]
       78 CALL                             R10 2 0
       79 JUMP                             ; [+10]
       80 GETTABLEKS                       R11 R3 K1 ["assets"]
       82 DUPTABLE                         R12 K20 [{"id"}]
       83 SETTABLEKS                       R9 R12 K19 ["id"]
       85 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       87 GETIMPORT                        R10 K22 [table.insert]
       89 CALL                             R10 2 0
       90 FORGLOOP                         R4 2 ; [-71]
       92 DUPTABLE                         R4 K28 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       93 SETTABLEKS                       R2 R4 K23 ["Url"]
       95 GETUPVAL                         R5 3
       96 MOVE                             R7 R3
       97 NAMECALL                         R5 R5 K29 ["JSONEncode"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K26 ["Body"]
      102 NEWTABLE                         R5 1 0
      104 LOADK                            R6 K30 ["application/json"]
      105 SETTABLEKS                       R6 R5 K31 ["Content-Type"]
      107 SETTABLEKS                       R5 R4 K27 ["Headers"]
      109 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBatchAssetDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBatchBundleDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K0 ["itemRowType"]
       10 JUMPIFNOTEQKS                    R9 K1 ["Asset"] ; [+14]
       12 GETTABLEKS                       R9 R8 K2 ["priceInfo"]
       14 JUMPIFNOTEQKNIL                  R9 ; [+10]
       16 GETTABLEKS                       R11 R8 K3 ["id"]
       18 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       20 MOVE                             R10 R2
       21 GETIMPORT                        R9 K6 [table.insert]
       23 CALL                             R9 2 0
       24 JUMP                             ; [+16]
       25 GETTABLEKS                       R9 R8 K0 ["itemRowType"]
       27 JUMPIFNOTEQKS                    R9 K7 ["Bundle"] ; [+13]
       29 GETTABLEKS                       R9 R8 K2 ["priceInfo"]
       31 JUMPIFNOTEQKNIL                  R9 ; [+9]
       33 GETTABLEKS                       R11 R8 K3 ["id"]
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K6 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-34]
       43 NEWTABLE                         R4 0 0
       45 NEWTABLE                         R5 0 0
       47 LENGTH                           R6 R2
       48 LOADN                            R7 0
       49 JUMPIFNOTLT                      R7 R6 ; [+22]
       51 GETIMPORT                        R6 K9 [pcall]
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CALL                             R6 1 2
       57 JUMPIFNOT                        R6 ; [+14]
       58 MOVE                             R8 R7
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 FORGPREP                         R8
       62 GETTABLEKS                       R13 R12 K10 ["Id"]
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R14 R14 K11 ["getPriceInfo"]
       67 MOVE                             R15 R12
       68 CALL                             R14 1 1
       69 SETTABLE                         R14 R4 R13
       70 FORGLOOP                         R8 2 ; [-9]
       72 LENGTH                           R6 R3
       73 LOADN                            R7 0
       74 JUMPIFNOTLT                      R7 R6 ; [+22]
       76 GETIMPORT                        R6 K9 [pcall]
       78 NEWCLOSURE                       R7 P1
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 CALL                             R6 1 2
       82 JUMPIFNOT                        R6 ; [+14]
       83 MOVE                             R8 R7
       84 LOADNIL                          R9
       85 LOADNIL                          R10
       86 FORGPREP                         R8
       87 GETTABLEKS                       R13 R12 K10 ["Id"]
       89 GETUPVAL                         R14 0
       90 GETTABLEKS                       R14 R14 K11 ["getPriceInfo"]
       92 MOVE                             R15 R12
       93 CALL                             R14 1 1
       94 SETTABLE                         R14 R5 R13
       95 FORGLOOP                         R8 2 ; [-9]
       97 MOVE                             R6 R0
       98 LOADNIL                          R7
       99 LOADNIL                          R8
      100 FORGPREP                         R6
      101 GETTABLEKS                       R11 R10 K0 ["itemRowType"]
      103 JUMPIFNOTEQKS                    R11 K1 ["Asset"] ; [+11]
      105 GETTABLEKS                       R11 R10 K2 ["priceInfo"]
      107 JUMPIFNOTEQKNIL                  R11 ; [+7]
      109 GETTABLEKS                       R12 R10 K3 ["id"]
      111 GETTABLE                         R11 R4 R12
      112 SETTABLEKS                       R11 R10 K2 ["priceInfo"]
      114 JUMP                             ; [+13]
      115 GETTABLEKS                       R11 R10 K0 ["itemRowType"]
      117 JUMPIFNOTEQKS                    R11 K7 ["Bundle"] ; [+10]
      119 GETTABLEKS                       R11 R10 K2 ["priceInfo"]
      121 JUMPIFNOTEQKNIL                  R11 ; [+6]
      123 GETTABLEKS                       R12 R10 K3 ["id"]
      125 GETTABLE                         R11 R5 R12
      126 SETTABLEKS                       R11 R10 K2 ["priceInfo"]
      128 FORGLOOP                         R6 2 ; [-28]
      130 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["GetProductInfoAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["look"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["look"]
        7 GETTABLEKS                       R1 R1 K1 ["items"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K2 ["assetType"]
       14 JUMPIFNOTEQKNIL                  R6 ; [+14]
       16 GETIMPORT                        R6 K4 [pcall]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R5
       21 CALL                             R6 1 2
       22 JUMPIFNOT                        R6 ; [+6]
       23 JUMPIFEQKNIL                     R7 ; [+5]
       25 GETTABLEKS                       R8 R7 K5 ["AssetTypeId"]
       27 SETTABLEKS                       R8 R5 K2 ["assetType"]
       29 FORGLOOP                         R1 2 ; [-18]
       31 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createLookPreviewRequestInfo"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["requestInternal"]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 NAMECALL                         R5 R4 K2 ["await"]
       13 CALL                             R5 1 2
       14 GETIMPORT                        R7 K4 [pcall]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R6
       19 CALL                             R7 1 2
       20 JUMPIFNOT                        R7 ; [+1]
       21 JUMPIF                           R5 ; [+13]
       22 DUPTABLE                         R9 K7 [{"lookItems", "errorMessages"}]
       23 NEWTABLE                         R10 0 0
       25 SETTABLEKS                       R10 R9 K5 ["lookItems"]
       27 NEWTABLE                         R10 0 1
       29 DUPTABLE                         R11 K14 [{["message"] = "UnexpectedErrorLookPreview", ["isBlocking"] = True, ["isLocalized"] = False}]
       30 SETLIST                          R10 R11 1 [1]
       32 SETTABLEKS                       R10 R9 K6 ["errorMessages"]
       34 RETURN                           R9 1
       35 GETUPVAL                         R9 2
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+3]
       38 GETUPVAL                         R9 3
       39 MOVE                             R10 R8
       40 CALL                             R9 1 0
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K15 ["parseLookApiResponseForErrorMessages"]
       44 MOVE                             R10 R8
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K16 ["parseLookPreviewResponseForLookItems"]
       49 MOVE                             R11 R8
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 4
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+9]
       54 GETUPVAL                         R11 5
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+6]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K17 ["fillPriceInfoFromCatalogAsync"]
       60 MOVE                             R12 R10
       61 MOVE                             R13 R2
       62 CALL                             R11 2 0
       63 DUPTABLE                         R11 K7 [{"lookItems", "errorMessages"}]
       64 SETTABLEKS                       R10 R11 K5 ["lookItems"]
       66 SETTABLEKS                       R9 R11 K6 ["errorMessages"]
       68 RETURN                           R11 1

PROTO_20:
        0 GETIMPORT                        R6 K2 [string.split]
        2 MOVE                             R7 R3
        3 LOADK                            R8 K3 ["_"]
        4 CALL                             R6 2 1
        5 GETTABLEN                        R5 R6 1
        6 GETIMPORT                        R7 K2 [string.split]
        8 MOVE                             R8 R3
        9 LOADK                            R9 K3 ["_"]
       10 CALL                             R7 2 1
       11 GETTABLEN                        R6 R7 2
       12 DUPTABLE                         R7 K9 [{["assets"], ["lookType"], ["validationType"] = "default", ["groupId"]}]
       13 NEWTABLE                         R8 0 0
       15 SETTABLEKS                       R8 R7 K4 ["assets"]
       17 JUMPIFNOTEQKS                    R4 K10 ["MakeupLook"] ; [+3]
       19 LOADK                            R8 K11 ["Makeup"]
       20 JUMP                             ; [+1]
       21 LOADK                            R8 K12 ["Avatar"]
       22 SETTABLEKS                       R8 R7 K5 ["lookType"]
       24 JUMPIFNOTEQKS                    R5 K13 ["Group"] ; [+3]
       26 MOVE                             R8 R6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 SETTABLEKS                       R8 R7 K8 ["groupId"]
       31 MOVE                             R8 R1
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       37 JUMPIFNOTEQKS                    R13 K15 ["Asset"] ; [+18]
       39 GETTABLEKS                       R13 R12 K16 ["rowState"]
       41 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+14]
       43 GETTABLEKS                       R14 R7 K4 ["assets"]
       45 DUPTABLE                         R15 K19 [{"id"}]
       46 GETTABLEKS                       R16 R12 K18 ["id"]
       48 SETTABLEKS                       R16 R15 K18 ["id"]
       50 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
       52 GETIMPORT                        R13 K22 [table.insert]
       54 CALL                             R13 2 0
       55 JUMP                             ; [+34]
       56 GETUPVAL                         R13 0
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+31]
       59 GETTABLEKS                       R13 R12 K14 ["itemRowType"]
       61 JUMPIFNOTEQKS                    R13 K23 ["Bundle"] ; [+28]
       63 GETTABLEKS                       R13 R12 K16 ["rowState"]
       65 JUMPIFNOTEQKS                    R13 K17 ["Selected"] ; [+24]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R14 R12 K24 ["assetsInBundle"]
       70 CALL                             R13 1 3
       71 FORGPREP                         R13
       72 GETTABLEKS                       R19 R7 K4 ["assets"]
       74 DUPTABLE                         R20 K26 [{"id", "bundleId"}]
       75 GETTABLEKS                       R21 R17 K18 ["id"]
       77 SETTABLEKS                       R21 R20 K18 ["id"]
       79 GETTABLEKS                       R21 R12 K18 ["id"]
       81 SETTABLEKS                       R21 R20 K25 ["bundleId"]
       83 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
       85 GETIMPORT                        R18 K22 [table.insert]
       87 CALL                             R18 2 0
       88 FORGLOOP                         R13 2 ; [-17]
       90 FORGLOOP                         R8 2 ; [-56]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K27 ["lookPreviewUrl"]
       95 CALL                             R8 0 1
       96 DUPTABLE                         R9 K33 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       97 SETTABLEKS                       R8 R9 K28 ["Url"]
       99 GETUPVAL                         R10 3
      100 MOVE                             R12 R7
      101 NAMECALL                         R10 R10 K34 ["JSONEncode"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K31 ["Body"]
      106 NEWTABLE                         R10 1 0
      108 LOADK                            R11 K35 ["application/json"]
      109 SETTABLEKS                       R11 R10 K36 ["Content-Type"]
      111 SETTABLEKS                       R10 R9 K32 ["Headers"]
      113 RETURN                           R9 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createLookValidationRequestInfo"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["requestInternal"]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 NAMECALL                         R7 R6 K2 ["await"]
       16 CALL                             R7 1 2
       17 GETIMPORT                        R9 K4 [pcall]
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R8
       22 CALL                             R9 1 2
       23 JUMPIFNOT                        R9 ; [+1]
       24 JUMPIF                           R7 ; [+13]
       25 DUPTABLE                         R11 K9 [{["success"] = False, ["errorMessages"], ["eligibilityChecks"]}]
       26 NEWTABLE                         R12 0 1
       28 DUPTABLE                         R13 K15 [{["message"] = "UnexpectedErrorLookValidation", ["isBlocking"] = True, ["isLocalized"] = False}]
       29 SETLIST                          R12 R13 1 [1]
       31 SETTABLEKS                       R12 R11 K7 ["errorMessages"]
       33 NEWTABLE                         R12 0 0
       35 SETTABLEKS                       R12 R11 K8 ["eligibilityChecks"]
       37 RETURN                           R11 1
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K16 ["parseLookApiResponseForErrorMessages"]
       41 MOVE                             R12 R10
       42 CALL                             R11 1 1
       43 GETUPVAL                         R13 2
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+6]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K17 ["parseLookApiResponseForEligibilityChecks"]
       49 MOVE                             R13 R10
       50 CALL                             R12 1 1
       51 JUMP                             ; [+2]
       52 NEWTABLE                         R12 0 0
       54 DUPTABLE                         R13 K18 [{"success", "errorMessages", "eligibilityChecks"}]
       55 LENGTH                           R15 R11
       56 JUMPIFEQKN                       R15 K19 [0] ; [+2]
       58 LOADB                            R14 0 +1
       59 LOADB                            R14 1
       60 SETTABLEKS                       R14 R13 K5 ["success"]
       62 SETTABLEKS                       R11 R13 K7 ["errorMessages"]
       64 SETTABLEKS                       R12 R13 K8 ["eligibilityChecks"]
       66 RETURN                           R13 1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["layerOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["layerOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_24:
        0 GETIMPORT                        R9 K2 [string.split]
        2 MOVE                             R10 R3
        3 LOADK                            R11 K3 ["_"]
        4 CALL                             R9 2 1
        5 GETTABLEN                        R8 R9 1
        6 GETIMPORT                        R10 K2 [string.split]
        8 MOVE                             R11 R3
        9 LOADK                            R12 K3 ["_"]
       10 CALL                             R10 2 1
       11 GETTABLEN                        R9 R10 2
       12 DUPTABLE                         R10 K10 [{"assets", "lookType", "name", "description", "avatarProperties", "groupId"}]
       13 NEWTABLE                         R11 0 0
       15 SETTABLEKS                       R11 R10 K4 ["assets"]
       17 JUMPIFNOTEQKS                    R4 K11 ["MakeupLook"] ; [+3]
       19 LOADK                            R11 K12 ["Makeup"]
       20 JUMP                             ; [+1]
       21 LOADK                            R11 K13 ["Avatar"]
       22 SETTABLEKS                       R11 R10 K5 ["lookType"]
       24 SETTABLEKS                       R5 R10 K6 ["name"]
       26 SETTABLEKS                       R6 R10 K7 ["description"]
       28 DUPTABLE                         R11 K18 [{["playerAvatarType"] = "R15", ["bodyColor3s"], ["scale"]}]
       29 DUPTABLE                         R12 K25 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       30 NAMECALL                         R13 R2 K26 ["ToHex"]
       32 CALL                             R13 1 1
       33 SETTABLEKS                       R13 R12 K19 ["headColor3"]
       35 NAMECALL                         R13 R2 K26 ["ToHex"]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R13 R12 K20 ["leftArmColor3"]
       40 NAMECALL                         R13 R2 K26 ["ToHex"]
       42 CALL                             R13 1 1
       43 SETTABLEKS                       R13 R12 K21 ["leftLegColor3"]
       45 NAMECALL                         R13 R2 K26 ["ToHex"]
       47 CALL                             R13 1 1
       48 SETTABLEKS                       R13 R12 K22 ["rightArmColor3"]
       50 NAMECALL                         R13 R2 K26 ["ToHex"]
       52 CALL                             R13 1 1
       53 SETTABLEKS                       R13 R12 K23 ["rightLegColor3"]
       55 NAMECALL                         R13 R2 K26 ["ToHex"]
       57 CALL                             R13 1 1
       58 SETTABLEKS                       R13 R12 K24 ["torsoColor3"]
       60 SETTABLEKS                       R12 R11 K16 ["bodyColor3s"]
       62 MOVE                             R12 R7
       63 JUMPIF                           R12 ; [+1]
       64 DUPTABLE                         R12 K34 [{["bodyType"] = 1, ["depth"] = 1, ["head"] = 1, ["height"] = 1, ["proportion"] = 1, ["width"] = 1}]
       65 SETTABLEKS                       R12 R11 K17 ["scale"]
       67 SETTABLEKS                       R11 R10 K8 ["avatarProperties"]
       69 JUMPIFNOTEQKS                    R8 K35 ["Group"] ; [+3]
       71 MOVE                             R11 R9
       72 JUMP                             ; [+1]
       73 LOADNIL                          R11
       74 SETTABLEKS                       R11 R10 K9 ["groupId"]
       76 LOADNIL                          R11
       77 GETUPVAL                         R12 0
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+26]
       80 NEWTABLE                         R12 0 0
       82 MOVE                             R13 R1
       83 LOADNIL                          R14
       84 LOADNIL                          R15
       85 FORGPREP                         R13
       86 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
       88 JUMPIFEQKS                       R18 K37 ["BodyColor"] ; [+8]
       90 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
       92 MOVE                             R19 R12
       93 MOVE                             R20 R17
       94 GETIMPORT                        R18 K40 [table.insert]
       96 CALL                             R18 2 0
       97 FORGLOOP                         R13 2 ; [-12]
       99 GETIMPORT                        R13 K42 [table.sort]
      101 MOVE                             R14 R12
      102 DUPCLOSURE                       R15 K43 [PROTO_23]
      103 CALL                             R13 2 0
      104 MOVE                             R11 R12
      105 JUMP                             ; [+6]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K44 ["reverse"]
      109 MOVE                             R13 R1
      110 CALL                             R12 1 1
      111 MOVE                             R11 R12
      112 LOADN                            R12 1
      113 MOVE                             R13 R11
      114 LOADNIL                          R14
      115 LOADNIL                          R15
      116 FORGPREP                         R13
      117 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
      119 JUMPIFNOTEQKS                    R18 K45 ["Asset"] ; [+54]
      121 GETTABLEKS                       R18 R17 K46 ["rowState"]
      123 JUMPIFNOTEQKS                    R18 K47 ["Selected"] ; [+50]
      125 GETUPVAL                         R18 2
      126 CALL                             R18 0 1
      127 JUMPIFNOT                        R18 ; [+27]
      128 DUPTABLE                         R18 K49 [{"id"}]
      129 GETTABLEKS                       R19 R17 K48 ["id"]
      131 SETTABLEKS                       R19 R18 K48 ["id"]
      133 GETUPVAL                         R20 3
      134 GETTABLEKS                       R20 R20 K50 ["ASSET_TYPES_WITH_ORDER_SET"]
      136 GETTABLEKS                       R21 R17 K51 ["assetType"]
      138 GETTABLE                         R19 R20 R21
      139 JUMPIFNOT                        R19 ; [+6]
      140 DUPTABLE                         R19 K53 [{"order"}]
      141 SETTABLEKS                       R12 R19 K52 ["order"]
      143 SETTABLEKS                       R19 R18 K54 ["meta"]
      145 ADDK                             R12 R12 K28 [1]
      146 GETTABLEKS                       R20 R10 K4 ["assets"]
      148 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
      150 MOVE                             R21 R18
      151 GETIMPORT                        R19 K40 [table.insert]
      153 CALL                             R19 2 0
      154 JUMP                             ; [+93]
      155 GETTABLEKS                       R19 R10 K4 ["assets"]
      157 DUPTABLE                         R20 K55 [{"id", "meta"}]
      158 GETTABLEKS                       R21 R17 K48 ["id"]
      160 SETTABLEKS                       R21 R20 K48 ["id"]
      162 DUPTABLE                         R21 K58 [{["order"], ["puffiness"] = 1, ["version"] = 1}]
      163 SETTABLEKS                       R12 R21 K52 ["order"]
      165 SETTABLEKS                       R21 R20 K54 ["meta"]
      167 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      169 GETIMPORT                        R18 K40 [table.insert]
      171 CALL                             R18 2 0
      172 ADDK                             R12 R12 K28 [1]
      173 JUMP                             ; [+74]
      174 GETUPVAL                         R18 4
      175 CALL                             R18 0 1
      176 JUMPIFNOT                        R18 ; [+71]
      177 GETTABLEKS                       R18 R17 K36 ["itemRowType"]
      179 JUMPIFNOTEQKS                    R18 K59 ["Bundle"] ; [+68]
      181 GETTABLEKS                       R18 R17 K46 ["rowState"]
      183 JUMPIFNOTEQKS                    R18 K47 ["Selected"] ; [+64]
      185 GETUPVAL                         R18 5
      186 GETTABLEKS                       R19 R17 K60 ["assetsInBundle"]
      188 CALL                             R18 1 3
      189 FORGPREP                         R18
      190 GETUPVAL                         R23 2
      191 CALL                             R23 0 1
      192 JUMPIFNOT                        R23 ; [+31]
      193 DUPTABLE                         R23 K62 [{"id", "bundleId"}]
      194 GETTABLEKS                       R24 R22 K48 ["id"]
      196 SETTABLEKS                       R24 R23 K48 ["id"]
      198 GETTABLEKS                       R24 R17 K48 ["id"]
      200 SETTABLEKS                       R24 R23 K61 ["bundleId"]
      202 GETUPVAL                         R25 3
      203 GETTABLEKS                       R25 R25 K50 ["ASSET_TYPES_WITH_ORDER_SET"]
      205 GETTABLEKS                       R26 R22 K51 ["assetType"]
      207 GETTABLE                         R24 R25 R26
      208 JUMPIFNOT                        R24 ; [+6]
      209 DUPTABLE                         R24 K53 [{"order"}]
      210 SETTABLEKS                       R12 R24 K52 ["order"]
      212 SETTABLEKS                       R24 R23 K54 ["meta"]
      214 ADDK                             R12 R12 K28 [1]
      215 GETTABLEKS                       R25 R10 K4 ["assets"]
      217 FASTCALL2                        TABLE_INSERT R25 R23 ; [+4]
      219 MOVE                             R26 R23
      220 GETIMPORT                        R24 K40 [table.insert]
      222 CALL                             R24 2 0
      223 JUMP                             ; [+22]
      224 GETTABLEKS                       R24 R10 K4 ["assets"]
      226 DUPTABLE                         R25 K63 [{"id", "bundleId", "meta"}]
      227 GETTABLEKS                       R26 R22 K48 ["id"]
      229 SETTABLEKS                       R26 R25 K48 ["id"]
      231 GETTABLEKS                       R26 R17 K48 ["id"]
      233 SETTABLEKS                       R26 R25 K61 ["bundleId"]
      235 DUPTABLE                         R26 K58 [{["order"], ["puffiness"] = 1, ["version"] = 1}]
      236 SETTABLEKS                       R12 R26 K52 ["order"]
      238 SETTABLEKS                       R26 R25 K54 ["meta"]
      240 FASTCALL2                        TABLE_INSERT R24 R25 ; [+3]
      242 GETIMPORT                        R23 K40 [table.insert]
      244 CALL                             R23 2 0
      245 ADDK                             R12 R12 K28 [1]
      246 FORGLOOP                         R18 2 ; [-57]
      248 FORGLOOP                         R13 2 ; [-132]
      250 GETUPVAL                         R13 6
      251 GETTABLEKS                       R13 R13 K64 ["lookCreateUrl"]
      253 CALL                             R13 0 1
      254 DUPTABLE                         R14 K70 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
      255 SETTABLEKS                       R13 R14 K65 ["Url"]
      257 GETUPVAL                         R15 7
      258 MOVE                             R17 R10
      259 NAMECALL                         R15 R15 K71 ["JSONEncode"]
      261 CALL                             R15 2 1
      262 SETTABLEKS                       R15 R14 K68 ["Body"]
      264 NEWTABLE                         R15 1 0
      266 LOADK                            R16 K72 ["application/json"]
      267 SETTABLEKS                       R16 R15 K73 ["Content-Type"]
      269 SETTABLEKS                       R15 R14 K69 ["Headers"]
      271 RETURN                           R14 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["createLookRequestInfo"]
        3 MOVE                             R9 R0
        4 MOVE                             R10 R1
        5 MOVE                             R11 R2
        6 MOVE                             R12 R3
        7 MOVE                             R13 R6
        8 MOVE                             R14 R4
        9 MOVE                             R15 R5
       10 MOVE                             R16 R7
       11 CALL                             R8 8 1
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K1 ["requestInternal"]
       15 MOVE                             R10 R8
       16 CALL                             R9 1 1
       17 NAMECALL                         R10 R9 K2 ["await"]
       19 CALL                             R10 1 2
       20 GETIMPORT                        R12 K4 [pcall]
       22 NEWCLOSURE                       R13 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R11
       25 CALL                             R12 1 2
       26 JUMPIFNOT                        R12 ; [+1]
       27 JUMPIF                           R10 ; [+9]
       28 DUPTABLE                         R14 K10 [{["success"] = False, ["lookId"] = , ["errorMessages"]}]
       29 NEWTABLE                         R15 0 1
       31 DUPTABLE                         R16 K16 [{["message"] = "UnexpectedErrorLookCreation", ["isBlocking"] = True, ["isLocalized"] = False}]
       32 SETLIST                          R15 R16 1 [1]
       34 SETTABLEKS                       R15 R14 K9 ["errorMessages"]
       36 RETURN                           R14 1
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R14 R14 K17 ["parseLookApiResponseForErrorMessages"]
       40 MOVE                             R15 R13
       41 CALL                             R14 1 1
       42 DUPTABLE                         R15 K18 [{"success", "lookId", "errorMessages"}]
       43 LENGTH                           R17 R14
       44 JUMPIFEQKN                       R17 K19 [0] ; [+2]
       46 LOADB                            R16 0 +1
       47 LOADB                            R16 1
       48 SETTABLEKS                       R16 R15 K5 ["success"]
       50 GETTABLEKS                       R16 R13 K20 ["id"]
       52 SETTABLEKS                       R16 R15 K7 ["lookId"]
       54 SETTABLEKS                       R14 R15 K9 ["errorMessages"]
       56 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MarketplaceService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AvatarCompatibilityPreviewer"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Components"]
       38 GETTABLEKS                       R6 R6 K15 ["AvatarEditorServiceContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R3 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Util"]
       47 GETTABLEKS                       R7 R7 K17 ["Constants"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K11 [require]
       52 GETTABLEKS                       R8 R3 K12 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["MarketplaceCatalogUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K11 [require]
       61 GETTABLEKS                       R9 R3 K12 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Util"]
       65 GETTABLEKS                       R9 R9 K19 ["Url"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K11 [require]
       70 GETTABLEKS                       R10 R3 K12 ["Src"]
       72 GETTABLEKS                       R10 R10 K16 ["Util"]
       74 GETTABLEKS                       R10 R10 K20 ["getIncludedBundleAssets"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K11 [require]
       79 GETTABLEKS                       R11 R3 K21 ["Packages"]
       81 GETTABLEKS                       R11 R11 K22 ["Promise"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K11 [require]
       86 GETTABLEKS                       R12 R3 K21 ["Packages"]
       88 GETTABLEKS                       R12 R12 K23 ["Dash"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K11 [require]
       93 GETTABLEKS                       R13 R3 K12 ["Src"]
       95 GETTABLEKS                       R13 R13 K24 ["Flags"]
       97 GETTABLEKS                       R13 R13 K25 ["getFStringAvatarPreviewerLookApiNonBlockingErrorCodes"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K11 [require]
      102 GETTABLEKS                       R14 R3 K12 ["Src"]
      104 GETTABLEKS                       R14 R14 K24 ["Flags"]
      106 GETTABLEKS                       R14 R14 K26 ["getFFlagDebugAvatarPreviewerLookApiNeverFails"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K11 [require]
      111 GETTABLEKS                       R15 R3 K12 ["Src"]
      113 GETTABLEKS                       R15 R15 K24 ["Flags"]
      115 GETTABLEKS                       R15 R15 K27 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K11 [require]
      120 GETTABLEKS                       R16 R3 K12 ["Src"]
      122 GETTABLEKS                       R16 R16 K24 ["Flags"]
      124 GETTABLEKS                       R16 R16 K28 ["getFFlagLookComposerExplicitLayerOrder"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K11 [require]
      129 GETTABLEKS                       R17 R3 K12 ["Src"]
      131 GETTABLEKS                       R17 R17 K24 ["Flags"]
      133 GETTABLEKS                       R17 R17 K29 ["getFFlagAvatarPreviewerLookApiOrderMeta"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K11 [require]
      138 GETTABLEKS                       R18 R3 K12 ["Src"]
      140 GETTABLEKS                       R18 R18 K24 ["Flags"]
      142 GETTABLEKS                       R18 R18 K30 ["getFFlagAvatarPreviewerLookComposerPriceText"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K11 [require]
      147 GETTABLEKS                       R19 R3 K12 ["Src"]
      149 GETTABLEKS                       R19 R19 K24 ["Flags"]
      151 GETTABLEKS                       R19 R19 K31 ["getFFlagAvatarPreviewerLookComposerPriceInfoFromCatalog"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K11 [require]
      156 GETTABLEKS                       R20 R3 K12 ["Src"]
      158 GETTABLEKS                       R20 R20 K24 ["Flags"]
      160 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarPreviewerEligibilityChecks"]
      162 CALL                             R19 1 1
      163 NEWTABLE                         R20 16 0
      165 DUPCLOSURE                       R21 K33 [PROTO_1]
      166 CAPTURE                          VAL R2
      167 SETTABLEKS                       R21 R20 K34 ["getUserId"]
      169 DUPCLOSURE                       R21 K35 [PROTO_4]
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R20
      174 SETTABLEKS                       R21 R20 K36 ["requestInternal"]
      176 LOADK                            R21 K37 ["MarketplaceDiscoverability"]
      177 SETTABLEKS                       R21 R20 K38 ["MARKETPLACE_DISCOVERABILITY_CHECK"]
      179 DUPCLOSURE                       R21 K39 [PROTO_5]
      180 SETTABLEKS                       R21 R20 K40 ["findEligibilityCheck"]
      182 DUPCLOSURE                       R21 K41 [PROTO_6]
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R21 R20 K42 ["getLookPreviewNonBlockingErrorCodes"]
      186 DUPCLOSURE                       R21 K43 [PROTO_7]
      187 CAPTURE                          VAL R20
      188 SETTABLEKS                       R21 R20 K44 ["parseLookApiResponseForErrorMessages"]
      190 DUPCLOSURE                       R21 K45 [PROTO_8]
      191 SETTABLEKS                       R21 R20 K46 ["parseLookApiResponseForEligibilityChecks"]
      193 DUPCLOSURE                       R21 K47 [PROTO_10]
      194 DUPCLOSURE                       R22 K48 [PROTO_11]
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R15
      199 SETTABLEKS                       R22 R20 K49 ["parseLookPreviewResponseForLookItems"]
      201 DUPCLOSURE                       R22 K50 [PROTO_12]
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R22 R20 K51 ["createLookPreviewRequestInfo"]
      208 DUPCLOSURE                       R22 K52 [PROTO_15]
      209 CAPTURE                          VAL R7
      210 SETTABLEKS                       R22 R20 K53 ["fillPriceInfoFromCatalogAsync"]
      212 DUPCLOSURE                       R22 K54 [PROTO_17]
      213 CAPTURE                          VAL R1
      214 DUPCLOSURE                       R23 K55 [PROTO_19]
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R18
      221 SETTABLEKS                       R23 R20 K56 ["lookPreviewAsync"]
      223 DUPCLOSURE                       R23 K57 [PROTO_20]
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R23 R20 K58 ["createLookValidationRequestInfo"]
      230 DUPCLOSURE                       R23 K59 [PROTO_22]
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R19
      234 SETTABLEKS                       R23 R20 K60 ["validateLookAsync"]
      236 DUPCLOSURE                       R23 K61 [PROTO_24]
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R23 R20 K62 ["createLookRequestInfo"]
      247 DUPCLOSURE                       R23 K63 [PROTO_26]
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R0
      250 SETTABLEKS                       R23 R20 K64 ["createLookAsync"]
      252 RETURN                           R20 1
