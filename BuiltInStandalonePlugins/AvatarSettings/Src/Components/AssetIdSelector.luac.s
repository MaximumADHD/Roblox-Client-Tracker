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
       16 GETUPVAL                         R1 4
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K1 ["value"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K2 ["INVALID_ASSETID"]
       25 JUMPIFNOTEQ                      R1 R2 ; [+3]
       27 LOADK                            R0 K0 [""]
       28 JUMP                             ; [+7]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K1 ["value"]
       32 FASTCALL1                        TOSTRING R1 ; [+2]
       33 GETIMPORT                        R0 K4 [tostring]
       35 CALL                             R0 1 1
       36 GETUPVAL                         R1 5
       37 SETTABLEKS                       R0 R1 K5 ["current"]
       39 GETUPVAL                         R1 6
       40 MOVE                             R2 R0
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

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
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 RETURN                           R0 0
        9 MOVE                             R1 R0
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIF                           R2 ; [+2]
       13 MOVE                             R0 R1
       14 JUMP                             ; [+17]
       15 GETIMPORT                        R2 K2 [utf8.offset]
       17 MOVE                             R3 R1
       18 LOADN                            R4 20
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+10]
       21 LOADN                            R5 1
       22 SUBK                             R6 R2 K3 [1]
       23 FASTCALL3                        STRING_SUB R1 R5 R6
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K6 [string.sub]
       28 CALL                             R3 3 1
       29 MOVE                             R0 R3
       30 JUMP                             ; [+1]
       31 MOVE                             R0 R1
       32 GETUPVAL                         R1 2
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 JUMPIF                           R1 ; [+11]
       36 GETUPVAL                         R1 3
       37 GETUPVAL                         R3 1
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+4]
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K7 ["current"]
       43 JUMP                             ; [+1]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0
       47 JUMPIFNOTEQKS                    R0 K8 ["0"] ; [+2]
       49 LOADK                            R0 K9 [""]
       50 GETUPVAL                         R1 4
       51 SETTABLEKS                       R0 R1 K7 ["current"]
       53 JUMPIFNOTEQKS                    R0 K9 [""] ; [+6]
       55 GETUPVAL                         R1 5
       56 GETUPVAL                         R2 6
       57 GETTABLEKS                       R2 R2 K10 ["expectedAssetType"]
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 3
       61 MOVE                             R2 R0
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 7
       64 MOVE                             R2 R0
       65 GETUPVAL                         R3 3
       66 GETUPVAL                         R4 8
       67 GETTABLEKS                       R4 R4 K11 ["set"]
       69 GETUPVAL                         R5 9
       70 GETUPVAL                         R6 10
       71 GETUPVAL                         R7 11
       72 GETTABLEKS                       R7 R7 K12 ["value"]
       74 GETUPVAL                         R8 12
       75 GETUPVAL                         R9 13
       76 GETUPVAL                         R10 14
       77 GETUPVAL                         R11 15
       78 GETUPVAL                         R12 6
       79 GETTABLEKS                       R12 R12 K13 ["assetIdSetting"]
       81 LOADB                            R13 1
       82 GETUPVAL                         R14 16
       83 GETUPVAL                         R15 6
       84 GETTABLEKS                       R15 R15 K10 ["expectedAssetType"]
       86 GETUPVAL                         R16 6
       87 GETTABLEKS                       R16 R16 K14 ["assetCannotBeEmpty"]
       89 GETUPVAL                         R17 6
       90 GETTABLEKS                       R17 R17 K15 ["animationType"]
       92 CALL                             R1 16 0
       93 RETURN                           R0 0

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
       36 GETTABLEKS                       R9 R9 K10 ["useRef"]
       38 MOVE                             R10 R5
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K11 ["useContext"]
       43 GETUPVAL                         R11 3
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R13 R10 K12 ["default"]
       47 JUMPIFEQKB                       R13 FALSE ; [+2]
       49 LOADB                            R12 0 +1
       50 LOADB                            R12 1
       51 FASTCALL2K                       ASSERT R12 K13 ; [+4]
       53 LOADK                            R13 K13 ["Non-default MarketplaceServiceContext expected"]
       54 GETIMPORT                        R11 K15 [assert]
       56 CALL                             R11 2 0
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R11 R11 K11 ["useContext"]
       60 GETUPVAL                         R12 4
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R14 R11 K12 ["default"]
       64 JUMPIFEQKB                       R14 FALSE ; [+2]
       66 LOADB                            R13 0 +1
       67 LOADB                            R13 1
       68 FASTCALL2K                       ASSERT R13 K16 ; [+4]
       70 LOADK                            R14 K16 ["Non-default LoadAnimationContext expected"]
       71 GETIMPORT                        R12 K15 [assert]
       73 CALL                             R12 2 0
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R12 R12 K11 ["useContext"]
       77 GETUPVAL                         R13 5
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R15 R12 K12 ["default"]
       81 JUMPIFEQKB                       R15 FALSE ; [+2]
       83 LOADB                            R14 0 +1
       84 LOADB                            R14 1
       85 FASTCALL2K                       ASSERT R14 K17 ; [+4]
       87 LOADK                            R15 K17 ["Non-default AssetServiceContext expected"]
       88 GETIMPORT                        R13 K15 [assert]
       90 CALL                             R13 2 0
       91 GETUPVAL                         R13 2
       92 GETTABLEKS                       R13 R13 K11 ["useContext"]
       94 GETUPVAL                         R14 6
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R16 R13 K18 ["settings"]
       98 JUMPIFNOTEQKNIL                  R16 ; [+2]
      100 LOADB                            R15 0 +1
      101 LOADB                            R15 1
      102 FASTCALL2K                       ASSERT R15 K19 ; [+4]
      104 LOADK                            R16 K19 ["Settings must not be nil in AvatarSettingsContext"]
      105 GETIMPORT                        R14 K15 [assert]
      107 CALL                             R14 2 0
      108 GETTABLEKS                       R14 R0 K20 ["r15Only"]
      110 JUMPIFNOT                        R14 ; [+14]
      111 GETTABLEKS                       R15 R13 K18 ["settings"]
      113 GETTABLEKS                       R15 R15 K21 ["navigationBarSettings"]
      115 GETTABLEKS                       R15 R15 K22 ["avatarType"]
      117 GETTABLEKS                       R15 R15 K5 ["value"]
      119 GETIMPORT                        R16 K26 [Enum.GameAvatarType.PlayerChoice]
      121 JUMPIFEQ                         R15 R16 ; [+2]
      123 LOADB                            R14 0 +1
      124 LOADB                            R14 1
      125 GETUPVAL                         R15 2
      126 GETTABLEKS                       R15 R15 K27 ["useEffect"]
      128 NEWCLOSURE                       R16 P0
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R3
      131 CAPTURE                          UPVAL U7
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R6
      136 NEWTABLE                         R17 0 1
      138 GETTABLEKS                       R18 R3 K5 ["value"]
      140 SETLIST                          R17 R18 1 [1]
      142 CALL                             R15 2 0
      143 NEWCLOSURE                       R15 P1
      144 CAPTURE                          VAL R13
      145 NEWCLOSURE                       R16 P2
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R1
      152 CAPTURE                          UPVAL U9
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R13
      162 NEWCLOSURE                       R17 P3
      163 CAPTURE                          UPVAL U12
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U11
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R1
      180 GETUPVAL                         R18 13
      181 GETUPVAL                         R19 14
      182 NEWTABLE                         R20 4 0
      184 GETUPVAL                         R21 2
      185 GETTABLEKS                       R21 R21 K28 ["Tag"]
      187 GETUPVAL                         R23 15
      188 CALL                             R23 0 1
      189 JUMPIFNOT                        R23 ; [+2]
      190 LOADK                            R22 K29 ["X-RowS X-Top X-Left"]
      191 JUMP                             ; [+1]
      192 LOADK                            R22 K30 ["X-RowS X-Middle X-Left"]
      193 SETTABLE                         R22 R20 R21
      194 GETIMPORT                        R21 K33 [UDim2.fromOffset]
      196 LOADN                            R22 0
      197 GETUPVAL                         R23 7
      198 GETTABLEKS                       R23 R23 K34 ["STANDARD_HEIGHT"]
      200 CALL                             R21 2 1
      201 SETTABLEKS                       R21 R20 K35 ["Size"]
      203 GETIMPORT                        R21 K38 [Enum.AutomaticSize.XY]
      205 SETTABLEKS                       R21 R20 K36 ["AutomaticSize"]
      207 DUPTABLE                         R21 K42 [{"Checkbox", "TextInput", "Warning"}]
      208 GETUPVAL                         R22 13
      209 GETUPVAL                         R23 16
      210 DUPTABLE                         R24 K46 [{"LayoutOrder", "Checked", "OnClick"}]
      211 MOVE                             R25 R2
      212 CALL                             R25 0 1
      213 SETTABLEKS                       R25 R24 K43 ["LayoutOrder"]
      215 GETTABLEKS                       R25 R4 K5 ["value"]
      217 SETTABLEKS                       R25 R24 K44 ["Checked"]
      219 SETTABLEKS                       R16 R24 K45 ["OnClick"]
      221 CALL                             R22 2 1
      222 SETTABLEKS                       R22 R21 K39 ["Checkbox"]
      224 GETUPVAL                         R22 13
      225 GETUPVAL                         R23 17
      226 DUPTABLE                         R24 K55 [{"LayoutOrder", "Size", "PlaceholderText", "Text", "ErrorText", "Height", "OnFocusLost", "OnFormatText", "OnTextChanged", "OnValidateText"}]
      227 MOVE                             R25 R2
      228 CALL                             R25 0 1
      229 SETTABLEKS                       R25 R24 K43 ["LayoutOrder"]
      231 GETIMPORT                        R25 K33 [UDim2.fromOffset]
      233 LOADN                            R26 202
      234 LOADN                            R27 0
      235 CALL                             R25 2 1
      236 SETTABLEKS                       R25 R24 K35 ["Size"]
      238 LOADK                            R27 K56 ["General"]
      239 LOADK                            R28 K57 ["AssetID"]
      240 NAMECALL                         R25 R1 K58 ["getText"]
      242 CALL                             R25 3 1
      243 SETTABLEKS                       R25 R24 K47 ["PlaceholderText"]
      245 GETTABLEKS                       R26 R3 K5 ["value"]
      247 GETUPVAL                         R27 7
      248 GETTABLEKS                       R27 R27 K59 ["INVALID_ASSETID"]
      250 JUMPIFNOTEQ                      R26 R27 ; [+5]
      252 JUMPIFNOTEQKS                    R5 K60 ["0"] ; [+3]
      254 LOADNIL                          R25
      255 JUMP                             ; [+1]
      256 MOVE                             R25 R5
      257 SETTABLEKS                       R25 R24 K48 ["Text"]
      259 SETTABLEKS                       R7 R24 K49 ["ErrorText"]
      261 GETUPVAL                         R25 7
      262 GETTABLEKS                       R25 R25 K34 ["STANDARD_HEIGHT"]
      264 SETTABLEKS                       R25 R24 K50 ["Height"]
      266 SETTABLEKS                       R17 R24 K51 ["OnFocusLost"]
      268 GETUPVAL                         R26 12
      269 CALL                             R26 0 1
      270 JUMPIFNOT                        R26 ; [+2]
      271 GETUPVAL                         R25 18
      272 JUMP                             ; [+1]
      273 LOADNIL                          R25
      274 SETTABLEKS                       R25 R24 K52 ["OnFormatText"]
      276 GETUPVAL                         R26 12
      277 CALL                             R26 0 1
      278 JUMPIFNOT                        R26 ; [+4]
      279 NEWCLOSURE                       R25 P4
      280 CAPTURE                          VAL R6
      281 CAPTURE                          UPVAL U12
      282 JUMP                             ; [+1]
      283 MOVE                             R25 R6
      284 SETTABLEKS                       R25 R24 K53 ["OnTextChanged"]
      286 NEWCLOSURE                       R25 P5
      287 CAPTURE                          UPVAL U10
      288 CAPTURE                          UPVAL U12
      289 CAPTURE                          VAL R1
      290 SETTABLEKS                       R25 R24 K54 ["OnValidateText"]
      292 CALL                             R22 2 1
      293 SETTABLEKS                       R22 R21 K40 ["TextInput"]
      295 MOVE                             R22 R14
      296 JUMPIFNOT                        R22 ; [+28]
      297 GETUPVAL                         R22 13
      298 LOADK                            R23 K61 ["ImageLabel"]
      299 NEWTABLE                         R24 2 0
      301 GETUPVAL                         R25 2
      302 GETTABLEKS                       R25 R25 K28 ["Tag"]
      304 LOADK                            R26 K62 ["Component-WarningIcon AssetIdSelector"]
      305 SETTABLE                         R26 R24 R25
      306 MOVE                             R25 R2
      307 CALL                             R25 0 1
      308 SETTABLEKS                       R25 R24 K43 ["LayoutOrder"]
      310 DUPTABLE                         R25 K64 [{"WarningMessage"}]
      311 GETUPVAL                         R26 13
      312 GETUPVAL                         R27 19
      313 DUPTABLE                         R28 K65 [{"Text"}]
      314 LOADK                            R31 K56 ["General"]
      315 LOADK                            R32 K66 ["R15AndR6SectionWarningText"]
      316 NAMECALL                         R29 R1 K58 ["getText"]
      318 CALL                             R29 3 1
      319 SETTABLEKS                       R29 R28 K48 ["Text"]
      321 CALL                             R26 2 1
      322 SETTABLEKS                       R26 R25 K63 ["WarningMessage"]
      324 CALL                             R22 3 1
      325 SETTABLEKS                       R22 R21 K41 ["Warning"]
      327 CALL                             R18 3 -1
      328 RETURN                           R18 -1

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
      146 GETIMPORT                        R16 K5 [require]
      148 GETTABLEKS                       R17 R0 K6 ["Src"]
      150 GETTABLEKS                       R17 R17 K24 ["Flags"]
      152 GETTABLEKS                       R17 R17 K28 ["getFFlagAvatarSettingsRevertInvalidInput"]
      154 CALL                             R16 1 1
      155 GETTABLEKS                       R17 R5 K29 ["ContextServices"]
      157 GETTABLEKS                       R18 R17 K30 ["Localization"]
      159 GETTABLEKS                       R19 R5 K31 ["UI"]
      161 GETTABLEKS                       R20 R19 K32 ["Pane"]
      163 GETTABLEKS                       R21 R19 K33 ["Checkbox"]
      165 GETTABLEKS                       R22 R19 K34 ["TextInput"]
      167 GETTABLEKS                       R23 R19 K35 ["Tooltip"]
      169 GETTABLEKS                       R24 R10 K36 ["createNextOrder"]
      171 GETTABLEKS                       R25 R9 K37 ["createElement"]
      173 DUPCLOSURE                       R26 K38 [PROTO_0]
      174 CAPTURE                          VAL R14
      175 DUPCLOSURE                       R27 K39 [PROTO_7]
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R23
      196 RETURN                           R27 1
