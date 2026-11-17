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
       47 JUMPIFNOT                        R7 ; [+162]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 FASTPCALL                        pcall 1 ; [+2]
       52 GETIMPORT                        R8 K14 [pcall]
       54 CALL                             R8 1 2
       55 LOADNIL                          R10
       56 JUMPIFNOT                        R8 ; [+150]
       57 GETTABLEKS                       R11 R9 K15 ["Items"]
       59 GETTABLEKS                       R12 R9 K16 ["BundleType"]
       61 JUMPIFNOTEQKS                    R12 K11 ["DynamicHead"] ; [+145]
       63 MOVE                             R12 R11
       64 LOADNIL                          R13
       65 LOADNIL                          R14
       66 FORGPREP                         R12
       67 GETTABLEKS                       R17 R16 K17 ["Type"]
       69 JUMPIFNOTEQKS                    R17 K18 ["UserOutfit"] ; [+135]
       71 GETIMPORT                        R18 K20 [game]
       73 LOADK                            R20 K21 ["AsyncRenamesUsedInLuaApps"]
       74 NAMECALL                         R18 R18 K22 ["GetEngineFeature"]
       76 CALL                             R18 2 1
       77 JUMPIFNOT                        R18 ; [+7]
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R19 R16 K23 ["Id"]
       81 NAMECALL                         R17 R17 K24 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       83 CALL                             R17 2 1
       84 JUMP                             ; [+9]
       85 GETIMPORT                        R17 K20 [game]
       87 GETTABLEKS                       R17 R17 K25 ["Players"]
       89 GETTABLEKS                       R19 R16 K23 ["Id"]
       91 NAMECALL                         R17 R17 K26 ["GetHumanoidDescriptionFromOutfitId"]
       93 CALL                             R17 2 1
       94 JUMPIFNOT                        R17 ; [+110]
       95 GETTABLEKS                       R18 R17 K9 ["Head"]
       97 JUMPIFEQKN                       R18 K27 [0] ; [+107]
       99 GETTABLEKS                       R18 R17 K9 ["Head"]
      101 JUMPIFEQKNIL                     R18 ; [+103]
      103 GETTABLEKS                       R10 R17 K9 ["Head"]
      105 JUMPIFNOT                        R10 ; [+99]
      106 GETTABLEKS                       R18 R5 K28 ["bodySettings"]
      108 JUMPIFNOTEQKNIL                  R18 ; [+2]
      110 LOADB                            R20 0 +1
      111 LOADB                            R20 1
      112 FASTCALL2K                       ASSERT R20 K29 ; [+4]
      114 LOADK                            R21 K29 ["bodySettings must not be nil"]
      115 GETIMPORT                        R19 K3 [assert]
      117 CALL                             R19 2 0
      118 GETTABLEKS                       R19 R18 K30 ["bodyAppearanceCustomPartsHead"]
      120 GETTABLEKS                       R20 R19 K31 ["enabled"]
      122 GETTABLEKS                       R20 R20 K32 ["set"]
      124 LOADB                            R21 1
      125 CALL                             R20 1 0
      126 GETTABLEKS                       R20 R4 K33 ["getAnimationIdFrom"]
      128 GETTABLEKS                       R21 R17 K34 ["MoodAnimation"]
      130 GETIMPORT                        R22 K35 [Enum.AssetType.MoodAnimation]
      132 GETTABLEKS                       R22 R22 K36 ["Value"]
      134 LOADNIL                          R23
      135 CALL                             R20 3 1
      136 JUMPIFNOT                        R20 ; [+14]
      137 GETTABLEKS                       R21 R18 K37 ["bodyAppearanceCustomPartsMood"]
      139 GETTABLEKS                       R22 R21 K38 ["assetId"]
      141 GETTABLEKS                       R22 R22 K32 ["set"]
      143 MOVE                             R23 R20
      144 CALL                             R22 1 0
      145 GETTABLEKS                       R22 R21 K31 ["enabled"]
      147 GETTABLEKS                       R22 R22 K32 ["set"]
      149 LOADB                            R23 1
      150 CALL                             R22 1 0
      151 LOADB                            R23 1
      152 NAMECALL                         R21 R17 K39 ["GetAccessories"]
      154 CALL                             R21 2 1
      155 GETIMPORT                        R22 K41 [ipairs]
      157 MOVE                             R23 R21
      158 CALL                             R22 1 3
      159 FORGPREP_INEXT                   R22
      160 GETTABLEKS                       R27 R26 K42 ["AccessoryType"]
      162 GETIMPORT                        R28 K44 [Enum.AccessoryType.Eyebrow]
      164 JUMPIFNOTEQ                      R27 R28 ; [+17]
      166 GETTABLEKS                       R27 R18 K45 ["bodyAppearanceCustomPartsEyebrow"]
      168 GETTABLEKS                       R28 R27 K38 ["assetId"]
      170 GETTABLEKS                       R28 R28 K32 ["set"]
      172 GETTABLEKS                       R29 R26 K46 ["AssetId"]
      174 CALL                             R28 1 0
      175 GETTABLEKS                       R28 R27 K31 ["enabled"]
      177 GETTABLEKS                       R28 R28 K32 ["set"]
      179 LOADB                            R29 1
      180 CALL                             R28 1 0
      181 JUMP                             ; [+21]
      182 GETTABLEKS                       R27 R26 K42 ["AccessoryType"]
      184 GETIMPORT                        R28 K48 [Enum.AccessoryType.Eyelash]
      186 JUMPIFNOTEQ                      R27 R28 ; [+16]
      188 GETTABLEKS                       R27 R18 K49 ["bodyAppearanceCustomPartsEyelash"]
      190 GETTABLEKS                       R28 R27 K38 ["assetId"]
      192 GETTABLEKS                       R28 R28 K32 ["set"]
      194 GETTABLEKS                       R29 R26 K46 ["AssetId"]
      196 CALL                             R28 1 0
      197 GETTABLEKS                       R28 R27 K31 ["enabled"]
      199 GETTABLEKS                       R28 R28 K32 ["set"]
      201 LOADB                            R29 1
      202 CALL                             R28 1 0
      203 FORGLOOP                         R22 2 [inext] ; [-44]
      205 FORGLOOP                         R12 2 ; [-139]
      207 JUMPIFEQKNIL                     R10 ; [+2]
      209 MOVE                             R6 R10
      210 RETURN                           R6 1

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
       43 NEWCLOSURE                       R18 P0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R16
       46 FASTPCALL                        pcall 1 ; [+2]
       47 GETIMPORT                        R17 K11 [pcall]
       49 CALL                             R17 1 2
       50 JUMPIF                           R17 ; [+35]
       51 GETUPVAL                         R19 2
       52 MOVE                             R20 R13
       53 MOVE                             R21 R16
       54 MOVE                             R22 R8
       55 MOVE                             R23 R9
       56 MOVE                             R24 R7
       57 CALL                             R19 5 1
       58 JUMPIFNOT                        R19 ; [+19]
       59 MOVE                             R20 R4
       60 LOADK                            R21 K0 [""]
       61 CALL                             R20 1 0
       62 MOVE                             R20 R2
       63 MOVE                             R21 R19
       64 LOADB                            R22 0
       65 GETTABLEKS                       R23 R18 K12 ["AssetTypeId"]
       67 CALL                             R20 3 0
       68 JUMPIFEQ                         R16 R19 ; [+8]
       70 MOVE                             R20 R1
       71 FASTCALL1                        TOSTRING R19 ; [+3]
       72 MOVE                             R22 R19
       73 GETIMPORT                        R21 K14 [tostring]
       75 CALL                             R21 1 1
       76 CALL                             R20 1 0
       77 RETURN                           R0 0
       78 MOVE                             R20 R4
       79 LOADK                            R23 K2 ["ErrorText"]
       80 LOADK                            R24 K4 ["AssetDoesNotExist"]
       81 NAMECALL                         R21 R12 K5 ["getText"]
       83 CALL                             R21 3 -1
       84 CALL                             R20 -1 0
       85 RETURN                           R0 0
       86 LOADB                            R19 0
       87 MOVE                             R20 R16
       88 FASTCALL1                        TYPEOF R13 ; [+3]
       89 MOVE                             R22 R13
       90 GETIMPORT                        R21 K16 [typeof]
       92 CALL                             R21 1 1
       93 JUMPIFNOTEQKS                    R21 K17 ["table"] ; [+16]
       95 MOVE                             R21 R13
       96 LOADNIL                          R22
       97 LOADNIL                          R23
       98 FORGPREP                         R21
       99 GETTABLEKS                       R26 R18 K12 ["AssetTypeId"]
      101 GETTABLEKS                       R27 R25 K18 ["Value"]
      103 JUMPIFNOTEQ                      R26 R27 ; [+3]
      105 LOADB                            R19 1
      106 JUMP                             ; [+29]
      107 FORGLOOP                         R21 2 ; [-9]
      109 JUMP                             ; [+26]
      110 GETUPVAL                         R21 3
      111 GETTABLEKS                       R22 R13 K18 ["Value"]
      113 CALL                             R21 1 1
      114 JUMPIFNOT                        R21 ; [+13]
      115 GETTABLEKS                       R21 R7 K19 ["getAnimationIdFrom"]
      117 MOVE                             R22 R16
      118 GETTABLEKS                       R23 R18 K12 ["AssetTypeId"]
      120 MOVE                             R24 R15
      121 CALL                             R21 3 1
      122 JUMPIFNOT                        R21 ; [+3]
      123 MOVE                             R20 R21
      124 LOADB                            R19 1
      125 JUMP                             ; [+10]
      126 LOADB                            R19 0
      127 JUMP                             ; [+8]
      128 GETTABLEKS                       R21 R18 K12 ["AssetTypeId"]
      130 GETTABLEKS                       R22 R13 K18 ["Value"]
      132 JUMPIFEQ                         R21 R22 ; [+2]
      134 LOADB                            R19 0 +1
      135 LOADB                            R19 1
      136 JUMPIF                           R19 ; [+8]
      137 MOVE                             R21 R4
      138 LOADK                            R24 K2 ["ErrorText"]
      139 LOADK                            R25 K20 ["AssetTypeNotSupported"]
      140 NAMECALL                         R22 R12 K5 ["getText"]
      142 CALL                             R22 3 -1
      143 CALL                             R21 -1 0
      144 RETURN                           R0 0
      145 MOVE                             R21 R4
      146 LOADK                            R22 K0 [""]
      147 CALL                             R21 1 0
      148 MOVE                             R21 R2
      149 MOVE                             R22 R20
      150 LOADB                            R23 0
      151 GETTABLEKS                       R24 R18 K12 ["AssetTypeId"]
      153 CALL                             R21 3 0
      154 JUMPIFEQ                         R20 R16 ; [+8]
      156 MOVE                             R21 R1
      157 FASTCALL1                        TOSTRING R20 ; [+3]
      158 MOVE                             R23 R20
      159 GETIMPORT                        R22 K14 [tostring]
      161 CALL                             R22 1 1
      162 CALL                             R21 1 0
      163 JUMPIFNOT                        R11 ; [+16]
      164 JUMPIFNOTEQKNIL                  R10 ; [+2]
      166 LOADB                            R22 0 +1
      167 LOADB                            R22 1
      168 FASTCALL2K                       ASSERT R22 K21 ; [+4]
      170 LOADK                            R23 K21 ["assetIdSetting must not be nil"]
      171 GETIMPORT                        R21 K23 [assert]
      173 CALL                             R21 2 0
      174 GETTABLEKS                       R21 R10 K24 ["enabled"]
      176 GETTABLEKS                       R21 R21 K25 ["set"]
      178 LOADB                            R22 1
      179 CALL                             R21 1 0
      180 RETURN                           R0 0

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
