PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBundleDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R5 R3 K0 ["settings"]
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R7 0 +1
        5 LOADB                            R7 1
        6 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        8 LOADK                            R8 K1 ["Settings must not be nil in AvatarSettingsContext"]
        9 GETIMPORT                        R6 K3 [assert]
       11 CALL                             R6 2 0
       12 LOADNIL                          R6
       13 LOADB                            R7 0
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R9 R0
       16 GETIMPORT                        R8 K5 [typeof]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+18]
       21 MOVE                             R8 R0
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 GETIMPORT                        R13 K10 [Enum.AssetType.Head]
       27 JUMPIFEQ                         R12 R13 ; [+5]
       29 GETIMPORT                        R13 K12 [Enum.AssetType.DynamicHead]
       31 JUMPIFNOTEQ                      R12 R13 ; [+3]
       33 LOADB                            R7 1
       34 JUMP                             ; [+12]
       35 FORGLOOP                         R8 2 ; [-11]
       37 JUMP                             ; [+9]
       38 GETIMPORT                        R8 K10 [Enum.AssetType.Head]
       40 JUMPIFEQ                         R0 R8 ; [+5]
       42 GETIMPORT                        R8 K12 [Enum.AssetType.DynamicHead]
       44 JUMPIFNOTEQ                      R0 R8 ; [+2]
       46 LOADB                            R7 1
       47 JUMPIFNOT                        R7 ; [+161]
       48 GETIMPORT                        R8 K14 [pcall]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CALL                             R8 1 2
       54 LOADNIL                          R10
       55 JUMPIFNOT                        R8 ; [+150]
       56 GETTABLEKS                       R11 R9 K15 ["Items"]
       58 GETTABLEKS                       R12 R9 K16 ["BundleType"]
       60 JUMPIFNOTEQKS                    R12 K11 ["DynamicHead"] ; [+145]
       62 MOVE                             R12 R11
       63 LOADNIL                          R13
       64 LOADNIL                          R14
       65 FORGPREP                         R12
       66 GETTABLEKS                       R17 R16 K17 ["Type"]
       68 JUMPIFNOTEQKS                    R17 K18 ["UserOutfit"] ; [+135]
       70 GETIMPORT                        R18 K20 [game]
       72 LOADK                            R20 K21 ["AsyncRenamesUsedInLuaApps"]
       73 NAMECALL                         R18 R18 K22 ["GetEngineFeature"]
       75 CALL                             R18 2 1
       76 JUMPIFNOT                        R18 ; [+7]
       77 GETUPVAL                         R17 0
       78 GETTABLEKS                       R19 R16 K23 ["Id"]
       80 NAMECALL                         R17 R17 K24 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       82 CALL                             R17 2 1
       83 JUMP                             ; [+9]
       84 GETIMPORT                        R17 K20 [game]
       86 GETTABLEKS                       R17 R17 K25 ["Players"]
       88 GETTABLEKS                       R19 R16 K23 ["Id"]
       90 NAMECALL                         R17 R17 K26 ["GetHumanoidDescriptionFromOutfitId"]
       92 CALL                             R17 2 1
       93 JUMPIFNOT                        R17 ; [+110]
       94 GETTABLEKS                       R18 R17 K9 ["Head"]
       96 JUMPIFEQKN                       R18 K27 [0] ; [+107]
       98 GETTABLEKS                       R18 R17 K9 ["Head"]
      100 JUMPIFEQKNIL                     R18 ; [+103]
      102 GETTABLEKS                       R10 R17 K9 ["Head"]
      104 JUMPIFNOT                        R10 ; [+99]
      105 GETTABLEKS                       R18 R5 K28 ["bodySettings"]
      107 JUMPIFNOTEQKNIL                  R18 ; [+2]
      109 LOADB                            R20 0 +1
      110 LOADB                            R20 1
      111 FASTCALL2K                       ASSERT R20 K29 ; [+4]
      113 LOADK                            R21 K29 ["bodySettings must not be nil"]
      114 GETIMPORT                        R19 K3 [assert]
      116 CALL                             R19 2 0
      117 GETTABLEKS                       R19 R18 K30 ["bodyAppearanceCustomPartsHead"]
      119 GETTABLEKS                       R20 R19 K31 ["enabled"]
      121 GETTABLEKS                       R20 R20 K32 ["set"]
      123 LOADB                            R21 1
      124 CALL                             R20 1 0
      125 GETTABLEKS                       R20 R4 K33 ["getAnimationIdFrom"]
      127 GETTABLEKS                       R21 R17 K34 ["MoodAnimation"]
      129 GETIMPORT                        R22 K35 [Enum.AssetType.MoodAnimation]
      131 GETTABLEKS                       R22 R22 K36 ["Value"]
      133 LOADNIL                          R23
      134 CALL                             R20 3 1
      135 JUMPIFNOT                        R20 ; [+14]
      136 GETTABLEKS                       R21 R18 K37 ["bodyAppearanceCustomPartsMood"]
      138 GETTABLEKS                       R22 R21 K38 ["assetId"]
      140 GETTABLEKS                       R22 R22 K32 ["set"]
      142 MOVE                             R23 R20
      143 CALL                             R22 1 0
      144 GETTABLEKS                       R22 R21 K31 ["enabled"]
      146 GETTABLEKS                       R22 R22 K32 ["set"]
      148 LOADB                            R23 1
      149 CALL                             R22 1 0
      150 LOADB                            R23 1
      151 NAMECALL                         R21 R17 K39 ["GetAccessories"]
      153 CALL                             R21 2 1
      154 GETIMPORT                        R22 K41 [ipairs]
      156 MOVE                             R23 R21
      157 CALL                             R22 1 3
      158 FORGPREP_INEXT                   R22
      159 GETTABLEKS                       R27 R26 K42 ["AccessoryType"]
      161 GETIMPORT                        R28 K44 [Enum.AccessoryType.Eyebrow]
      163 JUMPIFNOTEQ                      R27 R28 ; [+17]
      165 GETTABLEKS                       R27 R18 K45 ["bodyAppearanceCustomPartsEyebrow"]
      167 GETTABLEKS                       R28 R27 K38 ["assetId"]
      169 GETTABLEKS                       R28 R28 K32 ["set"]
      171 GETTABLEKS                       R29 R26 K46 ["AssetId"]
      173 CALL                             R28 1 0
      174 GETTABLEKS                       R28 R27 K31 ["enabled"]
      176 GETTABLEKS                       R28 R28 K32 ["set"]
      178 LOADB                            R29 1
      179 CALL                             R28 1 0
      180 JUMP                             ; [+21]
      181 GETTABLEKS                       R27 R26 K42 ["AccessoryType"]
      183 GETIMPORT                        R28 K48 [Enum.AccessoryType.Eyelash]
      185 JUMPIFNOTEQ                      R27 R28 ; [+16]
      187 GETTABLEKS                       R27 R18 K49 ["bodyAppearanceCustomPartsEyelash"]
      189 GETTABLEKS                       R28 R27 K38 ["assetId"]
      191 GETTABLEKS                       R28 R28 K32 ["set"]
      193 GETTABLEKS                       R29 R26 K46 ["AssetId"]
      195 CALL                             R28 1 0
      196 GETTABLEKS                       R28 R27 K31 ["enabled"]
      198 GETTABLEKS                       R28 R28 K32 ["set"]
      200 LOADB                            R29 1
      201 CALL                             R28 1 0
      202 FORGLOOP                         R22 2 [inext] ; [-44]
      204 FORGLOOP                         R12 2 ; [-139]
      206 JUMPIFEQKNIL                     R10 ; [+2]
      208 MOVE                             R6 R10
      209 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProductInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["0"] ; [+21]
        4 JUMPIFNOT                        R14 ; [+9]
        5 JUMPIFNOT                        R5 ; [+8]
        6 MOVE                             R16 R4
        7 LOADK                            R19 K2 ["ErrorText"]
        8 LOADK                            R20 K3 ["AssetDoesNotExist"]
        9 NAMECALL                         R17 R12 K4 ["getText"]
       11 CALL                             R17 3 -1
       12 CALL                             R16 -1 0
       13 RETURN                           R0 0
       14 MOVE                             R16 R4
       15 LOADK                            R17 K0 [""]
       16 CALL                             R16 1 0
       17 MOVE                             R16 R2
       18 GETUPVAL                         R17 0
       19 GETTABLEKS                       R17 R17 K5 ["INVALID_ASSETID"]
       21 LOADB                            R18 0
       22 CALL                             R16 2 0
       23 RETURN                           R0 0
       24 FASTCALL1                        TONUMBER R0 ; [+3]
       25 MOVE                             R17 R0
       26 GETIMPORT                        R16 K7 [tonumber]
       28 CALL                             R16 1 1
       29 JUMPIF                           R16 ; [+8]
       30 MOVE                             R17 R4
       31 LOADK                            R20 K2 ["ErrorText"]
       32 LOADK                            R21 K8 ["NotANumber"]
       33 NAMECALL                         R18 R12 K4 ["getText"]
       35 CALL                             R18 3 -1
       36 CALL                             R17 -1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R17 K10 [pcall]
       40 NEWCLOSURE                       R18 P0
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R16
       43 CALL                             R17 1 2
       44 JUMPIF                           R17 ; [+35]
       45 GETUPVAL                         R19 1
       46 MOVE                             R20 R13
       47 MOVE                             R21 R16
       48 MOVE                             R22 R8
       49 MOVE                             R23 R9
       50 MOVE                             R24 R7
       51 CALL                             R19 5 1
       52 JUMPIFNOT                        R19 ; [+19]
       53 MOVE                             R20 R4
       54 LOADK                            R21 K0 [""]
       55 CALL                             R20 1 0
       56 MOVE                             R20 R2
       57 MOVE                             R21 R19
       58 LOADB                            R22 0
       59 GETTABLEKS                       R23 R18 K11 ["AssetTypeId"]
       61 CALL                             R20 3 0
       62 JUMPIFEQ                         R16 R19 ; [+8]
       64 MOVE                             R20 R1
       65 FASTCALL1                        TOSTRING R19 ; [+3]
       66 MOVE                             R22 R19
       67 GETIMPORT                        R21 K13 [tostring]
       69 CALL                             R21 1 1
       70 CALL                             R20 1 0
       71 RETURN                           R0 0
       72 MOVE                             R20 R4
       73 LOADK                            R23 K2 ["ErrorText"]
       74 LOADK                            R24 K3 ["AssetDoesNotExist"]
       75 NAMECALL                         R21 R12 K4 ["getText"]
       77 CALL                             R21 3 -1
       78 CALL                             R20 -1 0
       79 RETURN                           R0 0
       80 LOADB                            R19 0
       81 MOVE                             R20 R16
       82 FASTCALL1                        TYPEOF R13 ; [+3]
       83 MOVE                             R22 R13
       84 GETIMPORT                        R21 K15 [typeof]
       86 CALL                             R21 1 1
       87 JUMPIFNOTEQKS                    R21 K16 ["table"] ; [+16]
       89 MOVE                             R21 R13
       90 LOADNIL                          R22
       91 LOADNIL                          R23
       92 FORGPREP                         R21
       93 GETTABLEKS                       R26 R18 K11 ["AssetTypeId"]
       95 GETTABLEKS                       R27 R25 K17 ["Value"]
       97 JUMPIFNOTEQ                      R26 R27 ; [+3]
       99 LOADB                            R19 1
      100 JUMP                             ; [+29]
      101 FORGLOOP                         R21 2 ; [-9]
      103 JUMP                             ; [+26]
      104 GETUPVAL                         R21 2
      105 GETTABLEKS                       R22 R13 K17 ["Value"]
      107 CALL                             R21 1 1
      108 JUMPIFNOT                        R21 ; [+13]
      109 GETTABLEKS                       R21 R7 K18 ["getAnimationIdFrom"]
      111 MOVE                             R22 R16
      112 GETTABLEKS                       R23 R18 K11 ["AssetTypeId"]
      114 MOVE                             R24 R15
      115 CALL                             R21 3 1
      116 JUMPIFNOT                        R21 ; [+3]
      117 MOVE                             R20 R21
      118 LOADB                            R19 1
      119 JUMP                             ; [+10]
      120 LOADB                            R19 0
      121 JUMP                             ; [+8]
      122 GETTABLEKS                       R21 R18 K11 ["AssetTypeId"]
      124 GETTABLEKS                       R22 R13 K17 ["Value"]
      126 JUMPIFEQ                         R21 R22 ; [+2]
      128 LOADB                            R19 0 +1
      129 LOADB                            R19 1
      130 JUMPIF                           R19 ; [+8]
      131 MOVE                             R21 R4
      132 LOADK                            R24 K2 ["ErrorText"]
      133 LOADK                            R25 K19 ["AssetTypeNotSupported"]
      134 NAMECALL                         R22 R12 K4 ["getText"]
      136 CALL                             R22 3 -1
      137 CALL                             R21 -1 0
      138 RETURN                           R0 0
      139 MOVE                             R21 R4
      140 LOADK                            R22 K0 [""]
      141 CALL                             R21 1 0
      142 MOVE                             R21 R2
      143 MOVE                             R22 R20
      144 LOADB                            R23 0
      145 GETTABLEKS                       R24 R18 K11 ["AssetTypeId"]
      147 CALL                             R21 3 0
      148 JUMPIFEQ                         R20 R16 ; [+8]
      150 MOVE                             R21 R1
      151 FASTCALL1                        TOSTRING R20 ; [+3]
      152 MOVE                             R23 R20
      153 GETIMPORT                        R22 K13 [tostring]
      155 CALL                             R22 1 1
      156 CALL                             R21 1 0
      157 JUMPIFNOT                        R11 ; [+16]
      158 JUMPIFNOTEQKNIL                  R10 ; [+2]
      160 LOADB                            R22 0 +1
      161 LOADB                            R22 1
      162 FASTCALL2K                       ASSERT R22 K20 ; [+4]
      164 LOADK                            R23 K20 ["assetIdSetting must not be nil"]
      165 GETIMPORT                        R21 K22 [assert]
      167 CALL                             R21 2 0
      168 GETTABLEKS                       R21 R10 K23 ["enabled"]
      170 GETTABLEKS                       R21 R21 K24 ["set"]
      172 LOADB                            R22 1
      173 CALL                             R21 1 0
      174 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["Contexts"]
       21 GETTABLEKS                       R3 R3 K13 ["AssetServiceContext"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R1 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Components"]
       30 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       32 GETTABLEKS                       R4 R4 K14 ["AvatarSettingsContext"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R5 R1 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K15 ["Util"]
       41 GETTABLEKS                       R5 R5 K16 ["AvatarSettingsProviderTypes"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [require]
       46 GETTABLEKS                       R6 R1 K10 ["Src"]
       48 GETTABLEKS                       R6 R6 K15 ["Util"]
       50 GETTABLEKS                       R6 R6 K17 ["Constants"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R7 R1 K10 ["Src"]
       57 GETTABLEKS                       R7 R7 K11 ["Components"]
       59 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       61 GETTABLEKS                       R7 R7 K18 ["LoadAnimationProvider"]
       63 GETTABLEKS                       R7 R7 K19 ["LoadAnimationContext"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R8 R1 K10 ["Src"]
       70 GETTABLEKS                       R8 R8 K15 ["Util"]
       72 GETTABLEKS                       R8 R8 K20 ["LoadAnimationTypes"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K9 [require]
       77 GETTABLEKS                       R9 R1 K10 ["Src"]
       79 GETTABLEKS                       R9 R9 K11 ["Components"]
       81 GETTABLEKS                       R9 R9 K12 ["Contexts"]
       83 GETTABLEKS                       R9 R9 K21 ["MarketplaceServiceContext"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K9 [require]
       88 GETTABLEKS                       R10 R1 K10 ["Src"]
       90 GETTABLEKS                       R10 R10 K15 ["Util"]
       92 GETTABLEKS                       R10 R10 K22 ["isAnimationAssetType"]
       94 CALL                             R9 1 1
       95 DUPCLOSURE                       R10 K23 [PROTO_1]
       96 CAPTURE                          VAL R0
       97 DUPCLOSURE                       R11 K24 [PROTO_3]
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R9
      101 RETURN                           R11 1
