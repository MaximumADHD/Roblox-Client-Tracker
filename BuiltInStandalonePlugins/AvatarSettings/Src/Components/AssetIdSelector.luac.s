PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [utf8.offset]
        6 MOVE                             R2 R0
        7 LOADN                            R3 20
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 LOADN                            R4 1
       11 SUBK                             R5 R1 K3 [1]
       12 FASTCALL3                        STRING_SUB R0 R4 R5
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K6 [string.sub]
       17 CALL                             R2 3 1
       18 RETURN                           R2 1
       19 MOVE                             R2 R0
       20 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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
       27 JUMPIFNOT                        R1 ; [+55]
       28 JUMPIFNOT                        R0 ; [+21]
       29 GETUPVAL                         R1 3
       30 JUMPIFEQKS                       R1 K5 [""] ; [+4]
       32 GETUPVAL                         R1 3
       33 JUMPIFNOTEQKS                    R1 K6 ["0"] ; [+49]
       35 GETUPVAL                         R1 4
       36 GETUPVAL                         R2 5
       37 LOADK                            R4 K7 ["ErrorText"]
       38 GETUPVAL                         R6 6
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+2]
       41 LOADK                            R5 K8 ["AssetIdEmpty"]
       42 JUMP                             ; [+1]
       43 LOADK                            R5 K9 ["AssetDoesNotExist"]
       44 NAMECALL                         R2 R2 K10 ["getText"]
       46 CALL                             R2 3 -1
       47 CALL                             R1 -1 0
       48 RETURN                           R0 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 7
       51 GETUPVAL                         R2 3
       52 CALL                             R1 1 1
       53 JUMPIF                           R1 ; [+1]
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 8
       56 GETUPVAL                         R2 3
       57 GETUPVAL                         R3 9
       58 GETUPVAL                         R4 10
       59 GETTABLEKS                       R4 R4 K2 ["set"]
       61 GETUPVAL                         R5 11
       62 GETUPVAL                         R6 4
       63 MOVE                             R7 R0
       64 GETUPVAL                         R8 12
       65 GETUPVAL                         R9 13
       66 GETUPVAL                         R10 14
       67 GETUPVAL                         R11 15
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K11 ["assetIdSetting"]
       71 LOADB                            R13 0
       72 GETUPVAL                         R14 5
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R15 R15 K3 ["expectedAssetType"]
       76 GETUPVAL                         R16 1
       77 GETTABLEKS                       R16 R16 K4 ["assetCannotBeEmpty"]
       79 GETUPVAL                         R17 1
       80 GETTABLEKS                       R17 R17 K12 ["animationType"]
       82 CALL                             R1 16 0
       83 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 MOVE                             R1 R0
        7 GETUPVAL                         R2 0
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+2]
       10 MOVE                             R0 R1
       11 JUMP                             ; [+17]
       12 GETIMPORT                        R2 K2 [utf8.offset]
       14 MOVE                             R3 R1
       15 LOADN                            R4 20
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+10]
       18 LOADN                            R5 1
       19 SUBK                             R6 R2 K3 [1]
       20 FASTCALL3                        STRING_SUB R1 R5 R6
       22 MOVE                             R4 R1
       23 GETIMPORT                        R3 K6 [string.sub]
       25 CALL                             R3 3 1
       26 MOVE                             R0 R3
       27 JUMP                             ; [+1]
       28 MOVE                             R0 R1
       29 GETUPVAL                         R1 1
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 JUMPIF                           R1 ; [+4]
       33 GETUPVAL                         R1 2
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0
       37 JUMPIFNOTEQKS                    R0 K7 ["0"] ; [+2]
       39 LOADK                            R0 K8 [""]
       40 JUMPIFNOTEQKS                    R0 K8 [""] ; [+6]
       42 GETUPVAL                         R1 3
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K9 ["expectedAssetType"]
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 2
       48 MOVE                             R2 R0
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 5
       51 MOVE                             R2 R0
       52 GETUPVAL                         R3 2
       53 GETUPVAL                         R4 6
       54 GETTABLEKS                       R4 R4 K10 ["set"]
       56 GETUPVAL                         R5 7
       57 GETUPVAL                         R6 8
       58 GETUPVAL                         R7 9
       59 GETTABLEKS                       R7 R7 K11 ["value"]
       61 GETUPVAL                         R8 10
       62 GETUPVAL                         R9 11
       63 GETUPVAL                         R10 12
       64 GETUPVAL                         R11 13
       65 GETUPVAL                         R12 4
       66 GETTABLEKS                       R12 R12 K12 ["assetIdSetting"]
       68 LOADB                            R13 1
       69 GETUPVAL                         R14 14
       70 GETUPVAL                         R15 4
       71 GETTABLEKS                       R15 R15 K9 ["expectedAssetType"]
       73 GETUPVAL                         R16 4
       74 GETTABLEKS                       R16 R16 K13 ["assetCannotBeEmpty"]
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R17 R17 K14 ["animationType"]
       79 CALL                             R1 16 0
       80 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 1
        3 JUMPIF                           R3 ; [+2]
        4 MOVE                             R2 R0
        5 JUMP                             ; [+17]
        6 GETIMPORT                        R3 K2 [utf8.offset]
        8 MOVE                             R4 R0
        9 LOADN                            R5 20
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+10]
       12 LOADN                            R6 1
       13 SUBK                             R7 R3 K3 [1]
       14 FASTCALL3                        STRING_SUB R0 R6 R7
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K6 [string.sub]
       19 CALL                             R4 3 1
       20 MOVE                             R2 R4
       21 JUMP                             ; [+1]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 1
        3 JUMPIF                           R3 ; [+2]
        4 MOVE                             R2 R0
        5 JUMP                             ; [+17]
        6 GETIMPORT                        R3 K2 [utf8.offset]
        8 MOVE                             R4 R0
        9 LOADN                            R5 20
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+10]
       12 LOADN                            R6 1
       13 SUBK                             R7 R3 K3 [1]
       14 FASTCALL3                        STRING_SUB R0 R6 R7
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K6 [string.sub]
       19 CALL                             R4 3 1
       20 MOVE                             R2 R4
       21 JUMP                             ; [+1]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 LOADB                            R1 0
       28 GETUPVAL                         R2 2
       29 LOADK                            R4 K7 ["General"]
       30 LOADK                            R5 K8 ["InvalidInput"]
       31 NAMECALL                         R2 R2 K9 ["getText"]
       33 CALL                             R2 3 -1
       34 RETURN                           R1 -1

PROTO_7:
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
      147 CAPTURE                          UPVAL U10
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 NEWCLOSURE                       R16 P3
      156 CAPTURE                          UPVAL U11
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U10
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R1
      171 GETUPVAL                         R17 12
      172 GETUPVAL                         R18 13
      173 NEWTABLE                         R19 4 0
      175 GETUPVAL                         R20 2
      176 GETTABLEKS                       R20 R20 K27 ["Tag"]
      178 GETUPVAL                         R22 14
      179 CALL                             R22 0 1
      180 JUMPIFNOT                        R22 ; [+2]
      181 LOADK                            R21 K28 ["X-RowS X-Top X-Left"]
      182 JUMP                             ; [+1]
      183 LOADK                            R21 K29 ["X-RowS X-Middle X-Left"]
      184 SETTABLE                         R21 R19 R20
      185 GETIMPORT                        R20 K32 [UDim2.fromOffset]
      187 LOADN                            R21 0
      188 GETUPVAL                         R22 7
      189 GETTABLEKS                       R22 R22 K33 ["STANDARD_HEIGHT"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K34 ["Size"]
      194 GETIMPORT                        R20 K37 [Enum.AutomaticSize.XY]
      196 SETTABLEKS                       R20 R19 K35 ["AutomaticSize"]
      198 DUPTABLE                         R20 K41 [{"Checkbox", "TextInput", "Warning"}]
      199 GETUPVAL                         R21 12
      200 GETUPVAL                         R22 15
      201 DUPTABLE                         R23 K45 [{"LayoutOrder", "Checked", "OnClick"}]
      202 MOVE                             R24 R2
      203 CALL                             R24 0 1
      204 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      206 GETTABLEKS                       R24 R4 K5 ["value"]
      208 SETTABLEKS                       R24 R23 K43 ["Checked"]
      210 SETTABLEKS                       R15 R23 K44 ["OnClick"]
      212 CALL                             R21 2 1
      213 SETTABLEKS                       R21 R20 K38 ["Checkbox"]
      215 GETUPVAL                         R21 12
      216 GETUPVAL                         R22 16
      217 DUPTABLE                         R23 K54 [{"LayoutOrder", "Size", "PlaceholderText", "Text", "ErrorText", "Height", "OnFocusLost", "OnFormatText", "OnTextChanged", "OnValidateText"}]
      218 MOVE                             R24 R2
      219 CALL                             R24 0 1
      220 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      222 GETIMPORT                        R24 K32 [UDim2.fromOffset]
      224 LOADN                            R25 202
      225 LOADN                            R26 0
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K34 ["Size"]
      229 LOADK                            R26 K55 ["General"]
      230 LOADK                            R27 K56 ["AssetID"]
      231 NAMECALL                         R24 R1 K57 ["getText"]
      233 CALL                             R24 3 1
      234 SETTABLEKS                       R24 R23 K46 ["PlaceholderText"]
      236 GETTABLEKS                       R25 R3 K5 ["value"]
      238 GETUPVAL                         R26 7
      239 GETTABLEKS                       R26 R26 K58 ["INVALID_ASSETID"]
      241 JUMPIFNOTEQ                      R25 R26 ; [+5]
      243 JUMPIFNOTEQKS                    R5 K59 ["0"] ; [+3]
      245 LOADNIL                          R24
      246 JUMP                             ; [+1]
      247 MOVE                             R24 R5
      248 SETTABLEKS                       R24 R23 K47 ["Text"]
      250 SETTABLEKS                       R7 R23 K48 ["ErrorText"]
      252 GETUPVAL                         R24 7
      253 GETTABLEKS                       R24 R24 K33 ["STANDARD_HEIGHT"]
      255 SETTABLEKS                       R24 R23 K49 ["Height"]
      257 SETTABLEKS                       R16 R23 K50 ["OnFocusLost"]
      259 GETUPVAL                         R25 11
      260 CALL                             R25 0 1
      261 JUMPIFNOT                        R25 ; [+2]
      262 GETUPVAL                         R24 17
      263 JUMP                             ; [+1]
      264 LOADNIL                          R24
      265 SETTABLEKS                       R24 R23 K51 ["OnFormatText"]
      267 GETUPVAL                         R25 11
      268 CALL                             R25 0 1
      269 JUMPIFNOT                        R25 ; [+4]
      270 NEWCLOSURE                       R24 P4
      271 CAPTURE                          VAL R6
      272 CAPTURE                          UPVAL U11
      273 JUMP                             ; [+1]
      274 MOVE                             R24 R6
      275 SETTABLEKS                       R24 R23 K52 ["OnTextChanged"]
      277 NEWCLOSURE                       R24 P5
      278 CAPTURE                          UPVAL U9
      279 CAPTURE                          UPVAL U11
      280 CAPTURE                          VAL R1
      281 SETTABLEKS                       R24 R23 K53 ["OnValidateText"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K39 ["TextInput"]
      286 MOVE                             R21 R13
      287 JUMPIFNOT                        R21 ; [+28]
      288 GETUPVAL                         R21 12
      289 LOADK                            R22 K60 ["ImageLabel"]
      290 NEWTABLE                         R23 2 0
      292 GETUPVAL                         R24 2
      293 GETTABLEKS                       R24 R24 K27 ["Tag"]
      295 LOADK                            R25 K61 ["Component-WarningIcon AssetIdSelector"]
      296 SETTABLE                         R25 R23 R24
      297 MOVE                             R24 R2
      298 CALL                             R24 0 1
      299 SETTABLEKS                       R24 R23 K42 ["LayoutOrder"]
      301 DUPTABLE                         R24 K63 [{"WarningMessage"}]
      302 GETUPVAL                         R25 12
      303 GETUPVAL                         R26 18
      304 DUPTABLE                         R27 K64 [{"Text"}]
      305 LOADK                            R30 K55 ["General"]
      306 LOADK                            R31 K65 ["R15AndR6SectionWarningText"]
      307 NAMECALL                         R28 R1 K57 ["getText"]
      309 CALL                             R28 3 1
      310 SETTABLEKS                       R28 R27 K47 ["Text"]
      312 CALL                             R25 2 1
      313 SETTABLEKS                       R25 R24 K62 ["WarningMessage"]
      315 CALL                             R21 3 1
      316 SETTABLEKS                       R21 R20 K40 ["Warning"]
      318 CALL                             R17 3 -1
      319 RETURN                           R17 -1

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
      128 GETIMPORT                        R14 K5 [require]
      130 GETTABLEKS                       R15 R0 K6 ["Src"]
      132 GETTABLEKS                       R15 R15 K24 ["Flags"]
      134 GETTABLEKS                       R15 R15 K26 ["getFFlagAvatarSettingsCapAssetIdInputLength"]
      136 CALL                             R14 1 1
      137 GETIMPORT                        R15 K5 [require]
      139 GETTABLEKS                       R16 R0 K6 ["Src"]
      141 GETTABLEKS                       R16 R16 K24 ["Flags"]
      143 GETTABLEKS                       R16 R16 K27 ["getFFlagAvatarSettingsFixEmptyAssetIdErrorMessage"]
      145 CALL                             R15 1 1
      146 GETTABLEKS                       R16 R5 K28 ["ContextServices"]
      148 GETTABLEKS                       R17 R16 K29 ["Localization"]
      150 GETTABLEKS                       R18 R5 K30 ["UI"]
      152 GETTABLEKS                       R19 R18 K31 ["Pane"]
      154 GETTABLEKS                       R20 R18 K32 ["Checkbox"]
      156 GETTABLEKS                       R21 R18 K33 ["TextInput"]
      158 GETTABLEKS                       R22 R18 K34 ["Tooltip"]
      160 GETTABLEKS                       R23 R10 K35 ["createNextOrder"]
      162 GETTABLEKS                       R24 R9 K36 ["createElement"]
      164 DUPCLOSURE                       R25 K37 [PROTO_0]
      165 CAPTURE                          VAL R14
      166 DUPCLOSURE                       R26 K38 [PROTO_7]
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R22
      186 RETURN                           R26 1
