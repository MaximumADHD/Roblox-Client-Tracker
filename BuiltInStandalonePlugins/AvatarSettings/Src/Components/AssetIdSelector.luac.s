PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["value"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["INVALID_ASSETID"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOTEQKNIL                  R0 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 4
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K1 ["value"]
       20 FASTCALL1                        TOSTRING R2 ; [+2]
       21 GETIMPORT                        R1 K4 [tostring]
       23 CALL                             R1 1 1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+18]
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETIMPORT                        R7 K6 [Enum.AssetType.Head]
       14 JUMPIFEQ                         R6 R7 ; [+5]
       16 GETIMPORT                        R7 K8 [Enum.AssetType.DynamicHead]
       18 JUMPIFNOTEQ                      R6 R7 ; [+3]
       20 LOADB                            R1 1
       21 JUMP                             ; [+12]
       22 FORGLOOP                         R2 2 ; [-11]
       24 JUMP                             ; [+9]
       25 GETIMPORT                        R2 K6 [Enum.AssetType.Head]
       27 JUMPIFEQ                         R0 R2 ; [+5]
       29 GETIMPORT                        R2 K8 [Enum.AssetType.DynamicHead]
       31 JUMPIFNOTEQ                      R0 R2 ; [+2]
       33 LOADB                            R1 1
       34 JUMPIFNOT                        R1 ; [+49]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K9 ["settings"]
       38 JUMPIFNOTEQKNIL                  R2 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       44 LOADK                            R5 K10 ["Settings must not be nil in AvatarSettingsContext"]
       45 GETIMPORT                        R3 K12 [assert]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R3 R2 K13 ["bodySettings"]
       50 JUMPIFNOTEQKNIL                  R3 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       56 LOADK                            R6 K14 ["bodySettings must not be nil"]
       57 GETIMPORT                        R4 K12 [assert]
       59 CALL                             R4 2 0
       60 GETTABLEKS                       R4 R3 K15 ["bodyAppearanceCustomPartsMood"]
       62 GETTABLEKS                       R5 R4 K16 ["enabled"]
       64 GETTABLEKS                       R5 R5 K17 ["set"]
       66 LOADB                            R6 0
       67 CALL                             R5 1 0
       68 GETTABLEKS                       R5 R3 K18 ["bodyAppearanceCustomPartsEyebrow"]
       70 GETTABLEKS                       R6 R5 K16 ["enabled"]
       72 GETTABLEKS                       R6 R6 K17 ["set"]
       74 LOADB                            R7 0
       75 CALL                             R6 1 0
       76 GETTABLEKS                       R6 R3 K19 ["bodyAppearanceCustomPartsEyelash"]
       78 GETTABLEKS                       R7 R6 K16 ["enabled"]
       80 GETTABLEKS                       R7 R7 K17 ["set"]
       82 LOADB                            R8 0
       83 CALL                             R7 1 0
       84 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onToggle"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["onToggle"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["set"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 JUMPIF                           R0 ; [+5]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K3 ["expectedAssetType"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K4 ["assetCannotBeEmpty"]
       27 JUMPIFNOT                        R1 ; [+50]
       28 JUMPIFNOT                        R0 ; [+16]
       29 GETUPVAL                         R1 3
       30 JUMPIFEQKS                       R1 K5 [""] ; [+4]
       32 GETUPVAL                         R1 3
       33 JUMPIFNOTEQKS                    R1 K6 ["0"] ; [+44]
       35 GETUPVAL                         R1 4
       36 GETUPVAL                         R2 5
       37 LOADK                            R4 K7 ["ErrorText"]
       38 LOADK                            R5 K8 ["AssetDoesNotExist"]
       39 NAMECALL                         R2 R2 K9 ["getText"]
       41 CALL                             R2 3 -1
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 6
       46 GETUPVAL                         R2 3
       47 CALL                             R1 1 1
       48 JUMPIF                           R1 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 7
       51 GETUPVAL                         R2 3
       52 GETUPVAL                         R3 8
       53 GETUPVAL                         R4 9
       54 GETTABLEKS                       R4 R4 K2 ["set"]
       56 GETUPVAL                         R5 10
       57 GETUPVAL                         R6 4
       58 MOVE                             R7 R0
       59 GETUPVAL                         R8 11
       60 GETUPVAL                         R9 12
       61 GETUPVAL                         R10 13
       62 GETUPVAL                         R11 14
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K10 ["assetIdSetting"]
       66 LOADB                            R13 0
       67 GETUPVAL                         R14 5
       68 GETUPVAL                         R15 1
       69 GETTABLEKS                       R15 R15 K3 ["expectedAssetType"]
       71 GETUPVAL                         R16 1
       72 GETTABLEKS                       R16 R16 K4 ["assetCannotBeEmpty"]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K11 ["animationType"]
       77 CALL                             R1 16 0
       78 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R0 K0 ["0"] ; [+2]
       10 LOADK                            R0 K1 [""]
       11 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["expectedAssetType"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 GETUPVAL                         R3 1
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K3 ["set"]
       27 GETUPVAL                         R5 6
       28 GETUPVAL                         R6 7
       29 GETUPVAL                         R7 8
       30 GETTABLEKS                       R7 R7 K4 ["value"]
       32 GETUPVAL                         R8 9
       33 GETUPVAL                         R9 10
       34 GETUPVAL                         R10 11
       35 GETUPVAL                         R11 12
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R12 R12 K5 ["assetIdSetting"]
       39 LOADB                            R13 1
       40 GETUPVAL                         R14 13
       41 GETUPVAL                         R15 3
       42 GETTABLEKS                       R15 R15 K2 ["expectedAssetType"]
       44 GETUPVAL                         R16 3
       45 GETTABLEKS                       R16 R16 K6 ["assetCannotBeEmpty"]
       47 GETUPVAL                         R17 3
       48 GETTABLEKS                       R17 R17 K7 ["animationType"]
       50 CALL                             R1 16 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["assetIdSetting"]
        8 GETTABLEKS                       R3 R3 K2 ["assetId"]
       10 GETTABLEKS                       R4 R0 K1 ["assetIdSetting"]
       12 GETTABLEKS                       R4 R4 K3 ["enabled"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["useState"]
       17 GETTABLEKS                       R7 R3 K5 ["value"]
       19 JUMPIFNOTEQKN                    R7 K6 [0] ; [+3]
       21 LOADK                            R6 K7 [""]
       22 JUMP                             ; [+6]
       23 GETTABLEKS                       R7 R3 K5 ["value"]
       25 FASTCALL1                        TOSTRING R7 ; [+2]
       26 GETIMPORT                        R6 K9 [tostring]
       28 CALL                             R6 1 1
       29 CALL                             R5 1 2
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K4 ["useState"]
       33 LOADK                            R8 K7 [""]
       34 CALL                             R7 1 2
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K10 ["useContext"]
       38 GETUPVAL                         R10 3
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R12 R9 K11 ["default"]
       42 JUMPIFEQKB                       R12 FALSE ; [+2]
       44 LOADB                            R11 0 +1
       45 LOADB                            R11 1
       46 FASTCALL2K                       ASSERT R11 K12 ; [+4]
       48 LOADK                            R12 K12 ["Non-default MarketplaceServiceContext expected"]
       49 GETIMPORT                        R10 K14 [assert]
       51 CALL                             R10 2 0
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K10 ["useContext"]
       55 GETUPVAL                         R11 4
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R13 R10 K11 ["default"]
       59 JUMPIFEQKB                       R13 FALSE ; [+2]
       61 LOADB                            R12 0 +1
       62 LOADB                            R12 1
       63 FASTCALL2K                       ASSERT R12 K15 ; [+4]
       65 LOADK                            R13 K15 ["Non-default LoadAnimationContext expected"]
       66 GETIMPORT                        R11 K14 [assert]
       68 CALL                             R11 2 0
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K10 ["useContext"]
       72 GETUPVAL                         R12 5
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R14 R11 K11 ["default"]
       76 JUMPIFEQKB                       R14 FALSE ; [+2]
       78 LOADB                            R13 0 +1
       79 LOADB                            R13 1
       80 FASTCALL2K                       ASSERT R13 K16 ; [+4]
       82 LOADK                            R14 K16 ["Non-default AssetServiceContext expected"]
       83 GETIMPORT                        R12 K14 [assert]
       85 CALL                             R12 2 0
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K10 ["useContext"]
       89 GETUPVAL                         R13 6
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R15 R12 K17 ["settings"]
       93 JUMPIFNOTEQKNIL                  R15 ; [+2]
       95 LOADB                            R14 0 +1
       96 LOADB                            R14 1
       97 FASTCALL2K                       ASSERT R14 K18 ; [+4]
       99 LOADK                            R15 K18 ["Settings must not be nil in AvatarSettingsContext"]
      100 GETIMPORT                        R13 K14 [assert]
      102 CALL                             R13 2 0
      103 GETTABLEKS                       R13 R0 K19 ["r15Only"]
      105 JUMPIFNOT                        R13 ; [+14]
      106 GETTABLEKS                       R14 R12 K17 ["settings"]
      108 GETTABLEKS                       R14 R14 K20 ["navigationBarSettings"]
      110 GETTABLEKS                       R14 R14 K21 ["avatarType"]
      112 GETTABLEKS                       R14 R14 K5 ["value"]
      114 GETIMPORT                        R15 K25 [Enum.GameAvatarType.PlayerChoice]
      116 JUMPIFEQ                         R14 R15 ; [+2]
      118 LOADB                            R13 0 +1
      119 LOADB                            R13 1
      120 GETUPVAL                         R14 2
      121 GETTABLEKS                       R14 R14 K26 ["useEffect"]
      123 NEWCLOSURE                       R15 P0
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R3
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 NEWTABLE                         R16 0 1
      131 GETTABLEKS                       R17 R3 K5 ["value"]
      133 SETLIST                          R16 R17 1 [1]
      135 CALL                             R14 2 0
      136 NEWCLOSURE                       R14 P1
      137 CAPTURE                          VAL R12
      138 NEWCLOSURE                       R15 P2
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R1
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R12
      154 NEWCLOSURE                       R16 P3
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R1
      169 GETUPVAL                         R17 10
      170 GETUPVAL                         R18 11
      171 NEWTABLE                         R19 4 0
      173 GETUPVAL                         R20 2
      174 GETTABLEKS                       R20 R20 K27 ["Tag"]
      176 GETUPVAL                         R22 12
      177 CALL                             R22 0 1
      178 JUMPIFNOT                        R22 ; [+2]
      179 LOADK                            R21 K28 ["X-RowS X-Top X-Left"]
      180 JUMP                             ; [+1]
      181 LOADK                            R21 K29 ["X-RowS X-Middle X-Left"]
      182 SETTABLE                         R21 R19 R20
      183 GETIMPORT                        R20 K32 [UDim2.fromOffset]
      185 LOADN                            R21 0
      186 GETUPVAL                         R22 7
      187 GETTABLEKS                       R22 R22 K33 ["STANDARD_HEIGHT"]
      189 CALL                             R20 2 1
      190 SETTABLEKS                       R20 R19 K34 ["Size"]
      192 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
      194 SETTABLEKS                       R20 R19 K35 ["AutomaticSize"]
      196 DUPTABLE                         R20 K41 [{"Checkbox", "TextInput", "Warning"}]
      197 GETUPVAL                         R21 10
      198 GETUPVAL                         R22 13
      199 DUPTABLE                         R23 K45 [{"LayoutOrder", "Checked", "OnClick"}]
      200 MOVE                             R24 R2
      201 CALL                             R24 0 1
      202 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      204 GETTABLEKS                       R24 R4 K5 ["value"]
      206 SETTABLEKS                       R24 R23 K43 ["Checked"]
      208 SETTABLEKS                       R15 R23 K44 ["OnClick"]
      210 CALL                             R21 2 1
      211 SETTABLEKS                       R21 R20 K38 ["Checkbox"]
      213 GETUPVAL                         R21 10
      214 GETUPVAL                         R22 14
      215 DUPTABLE                         R23 K53 [{"LayoutOrder", "Size", "PlaceholderText", "Text", "ErrorText", "Height", "OnFocusLost", "OnTextChanged", "OnValidateText"}]
      216 MOVE                             R24 R2
      217 CALL                             R24 0 1
      218 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      220 GETIMPORT                        R24 K32 [UDim2.fromOffset]
      222 LOADN                            R25 202
      223 LOADN                            R26 0
      224 CALL                             R24 2 1
      225 SETTABLEKS                       R24 R23 K34 ["Size"]
      227 LOADK                            R26 K54 ["General"]
      228 LOADK                            R27 K55 ["AssetID"]
      229 NAMECALL                         R24 R1 K56 ["getText"]
      231 CALL                             R24 3 1
      232 SETTABLEKS                       R24 R23 K46 ["PlaceholderText"]
      234 GETTABLEKS                       R25 R3 K5 ["value"]
      236 GETUPVAL                         R26 7
      237 GETTABLEKS                       R26 R26 K57 ["INVALID_ASSETID"]
      239 JUMPIFNOTEQ                      R25 R26 ; [+5]
      241 JUMPIFNOTEQKS                    R5 K58 ["0"] ; [+3]
      243 LOADNIL                          R24
      244 JUMP                             ; [+1]
      245 MOVE                             R24 R5
      246 SETTABLEKS                       R24 R23 K47 ["Text"]
      248 SETTABLEKS                       R7 R23 K48 ["ErrorText"]
      250 GETUPVAL                         R24 7
      251 GETTABLEKS                       R24 R24 K33 ["STANDARD_HEIGHT"]
      253 SETTABLEKS                       R24 R23 K49 ["Height"]
      255 SETTABLEKS                       R16 R23 K50 ["OnFocusLost"]
      257 SETTABLEKS                       R6 R23 K51 ["OnTextChanged"]
      259 NEWCLOSURE                       R24 P4
      260 CAPTURE                          UPVAL U8
      261 CAPTURE                          VAL R1
      262 SETTABLEKS                       R24 R23 K52 ["OnValidateText"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K39 ["TextInput"]
      267 MOVE                             R21 R13
      268 JUMPIFNOT                        R21 ; [+28]
      269 GETUPVAL                         R21 10
      270 LOADK                            R22 K59 ["ImageLabel"]
      271 NEWTABLE                         R23 2 0
      273 GETUPVAL                         R24 2
      274 GETTABLEKS                       R24 R24 K27 ["Tag"]
      276 LOADK                            R25 K60 ["Component-WarningIcon AssetIdSelector"]
      277 SETTABLE                         R25 R23 R24
      278 MOVE                             R24 R2
      279 CALL                             R24 0 1
      280 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      282 DUPTABLE                         R24 K62 [{"WarningMessage"}]
      283 GETUPVAL                         R25 10
      284 GETUPVAL                         R26 15
      285 DUPTABLE                         R27 K63 [{"Text"}]
      286 LOADK                            R30 K54 ["General"]
      287 LOADK                            R31 K64 ["R15AndR6SectionWarningText"]
      288 NAMECALL                         R28 R1 K56 ["getText"]
      290 CALL                             R28 3 1
      291 SETTABLEKS                       R28 R27 K47 ["Text"]
      293 CALL                             R25 2 1
      294 SETTABLEKS                       R25 R24 K61 ["WarningMessage"]
      296 CALL                             R21 3 1
      297 SETTABLEKS                       R21 R20 K40 ["Warning"]
      299 CALL                             R17 3 -1
      300 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetServiceContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       26 GETTABLEKS                       R3 R3 K10 ["AvatarSettingsContext"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Util"]
       35 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsProviderTypes"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Util"]
       44 GETTABLEKS                       R5 R5 K13 ["Constants"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K14 ["Packages"]
       51 GETTABLEKS                       R6 R6 K15 ["Framework"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K7 ["Components"]
       60 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       62 GETTABLEKS                       R7 R7 K16 ["LoadAnimationProvider"]
       64 GETTABLEKS                       R7 R7 K17 ["LoadAnimationContext"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K11 ["Util"]
       73 GETTABLEKS                       R8 R8 K18 ["LoadAnimationTypes"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K6 ["Src"]
       80 GETTABLEKS                       R9 R9 K7 ["Components"]
       82 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       84 GETTABLEKS                       R9 R9 K19 ["MarketplaceServiceContext"]
       86 CALL                             R8 1 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K14 ["Packages"]
       91 GETTABLEKS                       R10 R10 K20 ["React"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K5 [require]
       96 GETTABLEKS                       R11 R0 K14 ["Packages"]
       98 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K6 ["Src"]
      105 GETTABLEKS                       R12 R12 K11 ["Util"]
      107 GETTABLEKS                       R12 R12 K22 ["isValidNumberInput"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K6 ["Src"]
      114 GETTABLEKS                       R13 R13 K11 ["Util"]
      116 GETTABLEKS                       R13 R13 K23 ["verifyAndSetAssetId"]
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K5 [require]
      121 GETTABLEKS                       R14 R0 K6 ["Src"]
      123 GETTABLEKS                       R14 R14 K24 ["Flags"]
      125 GETTABLEKS                       R14 R14 K25 ["getFFlagAvatarSettingsAlignAssetIdInputWithCheckboxOnError"]
      127 CALL                             R13 1 1
      128 GETTABLEKS                       R14 R5 K26 ["ContextServices"]
      130 GETTABLEKS                       R15 R14 K27 ["Localization"]
      132 GETTABLEKS                       R16 R5 K28 ["UI"]
      134 GETTABLEKS                       R17 R16 K29 ["Pane"]
      136 GETTABLEKS                       R18 R16 K30 ["Checkbox"]
      138 GETTABLEKS                       R19 R16 K31 ["TextInput"]
      140 GETTABLEKS                       R20 R16 K32 ["Tooltip"]
      142 GETTABLEKS                       R21 R10 K33 ["createNextOrder"]
      144 GETTABLEKS                       R22 R9 K34 ["createElement"]
      146 DUPCLOSURE                       R23 K35 [PROTO_5]
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R20
      163 RETURN                           R23 1
