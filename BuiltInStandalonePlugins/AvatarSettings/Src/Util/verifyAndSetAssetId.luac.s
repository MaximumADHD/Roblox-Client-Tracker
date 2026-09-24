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
        2 JUMPIFNOTEQKS                    R0 K1 ["0"] ; [+26]
        4 JUMPIFNOT                        R14 ; [+14]
        5 JUMPIFNOT                        R5 ; [+13]
        6 MOVE                             R16 R4
        7 LOADK                            R19 K2 ["ErrorText"]
        8 GETUPVAL                         R21 0
        9 CALL                             R21 0 1
       10 JUMPIFNOT                        R21 ; [+2]
       11 LOADK                            R20 K3 ["AssetIdEmpty"]
       12 JUMP                             ; [+1]
       13 LOADK                            R20 K4 ["AssetDoesNotExist"]
       14 NAMECALL                         R17 R12 K5 ["getText"]
       16 CALL                             R17 3 -1
       17 CALL                             R16 -1 0
       18 RETURN                           R0 0
       19 MOVE                             R16 R4
       20 LOADK                            R17 K0 [""]
       21 CALL                             R16 1 0
       22 MOVE                             R16 R2
       23 GETUPVAL                         R17 1
       24 GETTABLEKS                       R17 R17 K6 ["INVALID_ASSETID"]
       26 LOADB                            R18 0
       27 CALL                             R16 2 0
       28 RETURN                           R0 0
       29 FASTCALL1                        TONUMBER R0 ; [+3]
       30 MOVE                             R17 R0
       31 GETIMPORT                        R16 K8 [tonumber]
       33 CALL                             R16 1 1
       34 JUMPIF                           R16 ; [+8]
       35 MOVE                             R17 R4
       36 LOADK                            R20 K2 ["ErrorText"]
       37 LOADK                            R21 K9 ["NotANumber"]
       38 NAMECALL                         R18 R12 K5 ["getText"]
       40 CALL                             R18 3 -1
       41 CALL                             R17 -1 0
       42 RETURN                           R0 0
       43 GETIMPORT                        R17 K11 [pcall]
       45 NEWCLOSURE                       R18 P0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R16
       48 CALL                             R17 1 2
       49 JUMPIF                           R17 ; [+35]
       50 GETUPVAL                         R19 2
       51 MOVE                             R20 R13
       52 MOVE                             R21 R16
       53 MOVE                             R22 R8
       54 MOVE                             R23 R9
       55 MOVE                             R24 R7
       56 CALL                             R19 5 1
       57 JUMPIFNOT                        R19 ; [+19]
       58 MOVE                             R20 R4
       59 LOADK                            R21 K0 [""]
       60 CALL                             R20 1 0
       61 MOVE                             R20 R2
       62 MOVE                             R21 R19
       63 LOADB                            R22 0
       64 GETTABLEKS                       R23 R18 K12 ["AssetTypeId"]
       66 CALL                             R20 3 0
       67 JUMPIFEQ                         R16 R19 ; [+8]
       69 MOVE                             R20 R1
       70 FASTCALL1                        TOSTRING R19 ; [+3]
       71 MOVE                             R22 R19
       72 GETIMPORT                        R21 K14 [tostring]
       74 CALL                             R21 1 1
       75 CALL                             R20 1 0
       76 RETURN                           R0 0
       77 MOVE                             R20 R4
       78 LOADK                            R23 K2 ["ErrorText"]
       79 LOADK                            R24 K4 ["AssetDoesNotExist"]
       80 NAMECALL                         R21 R12 K5 ["getText"]
       82 CALL                             R21 3 -1
       83 CALL                             R20 -1 0
       84 RETURN                           R0 0
       85 LOADB                            R19 0
       86 MOVE                             R20 R16
       87 FASTCALL1                        TYPEOF R13 ; [+3]
       88 MOVE                             R22 R13
       89 GETIMPORT                        R21 K16 [typeof]
       91 CALL                             R21 1 1
       92 JUMPIFNOTEQKS                    R21 K17 ["table"] ; [+16]
       94 MOVE                             R21 R13
       95 LOADNIL                          R22
       96 LOADNIL                          R23
       97 FORGPREP                         R21
       98 GETTABLEKS                       R26 R18 K12 ["AssetTypeId"]
      100 GETTABLEKS                       R27 R25 K18 ["Value"]
      102 JUMPIFNOTEQ                      R26 R27 ; [+3]
      104 LOADB                            R19 1
      105 JUMP                             ; [+29]
      106 FORGLOOP                         R21 2 ; [-9]
      108 JUMP                             ; [+26]
      109 GETUPVAL                         R21 3
      110 GETTABLEKS                       R22 R13 K18 ["Value"]
      112 CALL                             R21 1 1
      113 JUMPIFNOT                        R21 ; [+13]
      114 GETTABLEKS                       R21 R7 K19 ["getAnimationIdFrom"]
      116 MOVE                             R22 R16
      117 GETTABLEKS                       R23 R18 K12 ["AssetTypeId"]
      119 MOVE                             R24 R15
      120 CALL                             R21 3 1
      121 JUMPIFNOT                        R21 ; [+3]
      122 MOVE                             R20 R21
      123 LOADB                            R19 1
      124 JUMP                             ; [+10]
      125 LOADB                            R19 0
      126 JUMP                             ; [+8]
      127 GETTABLEKS                       R21 R18 K12 ["AssetTypeId"]
      129 GETTABLEKS                       R22 R13 K18 ["Value"]
      131 JUMPIFEQ                         R21 R22 ; [+2]
      133 LOADB                            R19 0 +1
      134 LOADB                            R19 1
      135 JUMPIF                           R19 ; [+8]
      136 MOVE                             R21 R4
      137 LOADK                            R24 K2 ["ErrorText"]
      138 LOADK                            R25 K20 ["AssetTypeNotSupported"]
      139 NAMECALL                         R22 R12 K5 ["getText"]
      141 CALL                             R22 3 -1
      142 CALL                             R21 -1 0
      143 RETURN                           R0 0
      144 MOVE                             R21 R4
      145 LOADK                            R22 K0 [""]
      146 CALL                             R21 1 0
      147 MOVE                             R21 R2
      148 MOVE                             R22 R20
      149 LOADB                            R23 0
      150 GETTABLEKS                       R24 R18 K12 ["AssetTypeId"]
      152 CALL                             R21 3 0
      153 JUMPIFEQ                         R20 R16 ; [+8]
      155 MOVE                             R21 R1
      156 FASTCALL1                        TOSTRING R20 ; [+3]
      157 MOVE                             R23 R20
      158 GETIMPORT                        R22 K14 [tostring]
      160 CALL                             R22 1 1
      161 CALL                             R21 1 0
      162 JUMPIFNOT                        R11 ; [+16]
      163 JUMPIFNOTEQKNIL                  R10 ; [+2]
      165 LOADB                            R22 0 +1
      166 LOADB                            R22 1
      167 FASTCALL2K                       ASSERT R22 K21 ; [+4]
      169 LOADK                            R23 K21 ["assetIdSetting must not be nil"]
      170 GETIMPORT                        R21 K23 [assert]
      172 CALL                             R21 2 0
      173 GETTABLEKS                       R21 R10 K24 ["enabled"]
      175 GETTABLEKS                       R21 R21 K25 ["set"]
      177 LOADB                            R22 1
      178 CALL                             R21 1 0
      179 RETURN                           R0 0

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
       90 GETTABLEKS                       R10 R10 K22 ["Flags"]
       92 GETTABLEKS                       R10 R10 K23 ["getFFlagAvatarSettingsFixEmptyAssetIdErrorMessage"]
       94 CALL                             R9 1 1
       95 GETIMPORT                        R10 K9 [require]
       97 GETTABLEKS                       R11 R1 K10 ["Src"]
       99 GETTABLEKS                       R11 R11 K15 ["Util"]
      101 GETTABLEKS                       R11 R11 K24 ["isAnimationAssetType"]
      103 CALL                             R10 1 1
      104 DUPCLOSURE                       R11 K25 [PROTO_1]
      105 CAPTURE                          VAL R0
      106 DUPCLOSURE                       R12 K26 [PROTO_3]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R10
      111 RETURN                           R12 1
