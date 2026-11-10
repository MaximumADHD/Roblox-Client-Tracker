PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["CellProps"]
        5 GETTABLEKS                       R4 R4 K2 ["OnClickItem"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 JUMPIFNOT                        R2 ; [+5]
       10 JUMPIFNOT                        R4 ; [+4]
       11 MOVE                             R5 R4
       12 LOADNIL                          R6
       13 CALL                             R5 1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R5 R3 K1 ["CellProps"]
       17 GETTABLEKS                       R5 R5 K3 ["SelectVersion"]
       19 JUMPIFEQ                         R5 R0 ; [+5]
       21 JUMPIFNOT                        R4 ; [+3]
       22 MOVE                             R5 R4
       23 MOVE                             R6 R0
       24 CALL                             R5 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["CellProps"]
        9 GETTABLEKS                       R2 R2 K2 ["OnClickDesc"]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K4 [{"inputText"}]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K0 ["props"]
       16 GETTABLEKS                       R7 R7 K5 ["ColumnIndex"]
       18 JUMPIFNOTEQKN                    R7 K6 [2] ; [+9]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K0 ["props"]
       23 GETTABLEKS                       R6 R6 K7 ["Value"]
       25 GETTABLEKS                       R6 R6 K8 ["versionDescription"]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K9 [""]
       29 SETTABLEKS                       R6 R5 K3 ["inputText"]
       31 NAMECALL                         R3 R3 K10 ["setState"]
       33 CALL                             R3 2 0
       34 GETTABLEKS                       R3 R1 K1 ["CellProps"]
       36 GETTABLEKS                       R3 R3 K11 ["OpenInputKey"]
       38 JUMPIFEQ                         R3 R0 ; [+9]
       40 JUMPIFNOT                        R2 ; [+7]
       41 MOVE                             R3 R2
       42 MOVE                             R4 R0
       43 GETTABLEKS                       R5 R1 K1 ["CellProps"]
       45 GETTABLEKS                       R5 R5 K12 ["PreviousInput"]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R3 R1 K1 ["CellProps"]
       50 GETTABLEKS                       R3 R3 K13 ["SetPreviousInput"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K14 ["state"]
       55 GETTABLEKS                       R4 R4 K3 ["inputText"]
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CellProps"]
        5 GETTABLEKS                       R0 R0 K2 ["OnClickDesc"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 MOVE                             R1 R0
        9 LOADN                            R2 -1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K1 ["CellProps"]
       15 GETTABLEKS                       R3 R3 K3 ["PreviousInput"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"inputText"}]
        2 SETTABLEKS                       R0 R3 K0 ["inputText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["CellProps"]
       12 GETTABLEKS                       R1 R1 K5 ["SetPreviousInput"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"inputText"}]
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R3 K3 ["ColumnIndex"]
        5 JUMPIFNOTEQKN                    R3 K4 [2] ; [+15]
        7 GETTABLEKS                       R3 R0 K2 ["props"]
        9 GETTABLEKS                       R3 R3 K5 ["Value"]
       11 GETTABLEKS                       R3 R3 K6 ["versionDescription"]
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETTABLEKS                       R2 R0 K2 ["props"]
       16 GETTABLEKS                       R2 R2 K5 ["Value"]
       18 GETTABLEKS                       R2 R2 K6 ["versionDescription"]
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K7 [""]
       22 SETTABLEKS                       R2 R1 K0 ["inputText"]
       24 SETTABLEKS                       R1 R0 K8 ["state"]
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K9 ["hasError"]
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K10 ["onCheck"]
       33 NEWCLOSURE                       R1 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K11 ["onClickDesc"]
       38 NEWCLOSURE                       R1 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K12 ["onClickOut"]
       42 NEWCLOSURE                       R1 P3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K13 ["onTextChanged"]
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K3 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["createElement"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["View"]
       18 DUPTABLE                         R5 K9 [{["tag"] = "row align-y-center gap-small padding-top-small padding-bottom-xsmall auto-xy", ["LayoutOrder"]}]
       19 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       23 DUPTABLE                         R6 K12 [{"Icon", "Text"}]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K4 ["createElement"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K10 ["Icon"]
       30 DUPTABLE                         R9 K17 [{"name", "size", "variant", "style"}]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K18 ["Enums"]
       34 GETTABLEKS                       R10 R10 K19 ["IconName"]
       36 GETTABLEKS                       R10 R10 K20 ["TriangleExclamation"]
       38 SETTABLEKS                       R10 R9 K13 ["name"]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K18 ["Enums"]
       43 GETTABLEKS                       R10 R10 K21 ["IconSize"]
       45 GETTABLEKS                       R10 R10 K22 ["Small"]
       47 SETTABLEKS                       R10 R9 K14 ["size"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K18 ["Enums"]
       52 GETTABLEKS                       R10 R10 K23 ["IconVariant"]
       54 GETTABLEKS                       R10 R10 K24 ["Filled"]
       56 SETTABLEKS                       R10 R9 K15 ["variant"]
       58 GETTABLEKS                       R10 R1 K25 ["Color"]
       60 GETTABLEKS                       R10 R10 K26 ["System"]
       62 GETTABLEKS                       R10 R10 K27 ["Warning"]
       64 SETTABLEKS                       R10 R9 K16 ["style"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K10 ["Icon"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K4 ["createElement"]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K11 ["Text"]
       75 DUPTABLE                         R9 K29 [{["tag"] = "auto-xy text-body-medium content-system-warning", ["Text"]}]
       76 LOADK                            R12 K30 ["AssetConfigVersions"]
       77 LOADK                            R13 K31 ["VersionRestricted"]
       78 NAMECALL                         R10 R2 K32 ["getText"]
       80 CALL                             R10 3 1
       81 SETTABLEKS                       R10 R9 K11 ["Text"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K11 ["Text"]
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Value"]
        4 GETTABLEKS                       R2 R2 K2 ["moderationState"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["MODERATION_STATE_REJECTED"]
        9 JUMPIFEQ                         R2 R3 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["createElement"]
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R4 K6 [{"LayoutOrder"}]
       18 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CellProps"]
        3 GETTABLEKS                       R0 R0 K1 ["ErrorCallback"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["CellProps"]
       10 GETTABLEKS                       R0 R0 K2 ["CloseInput"]
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CellProps"]
        3 GETTABLEKS                       R0 R0 K1 ["CloseInput"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CellProps"]
        3 GETTABLEKS                       R0 R0 K1 ["CloseInput"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CellProps"]
        3 GETTABLEKS                       R0 R0 K1 ["CloseInput"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickDesc"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 GETTABLEKS                       R1 R1 K2 ["assetVersionNumber"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickDesc"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 GETTABLEKS                       R1 R1 K2 ["assetVersionNumber"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Value"]
        6 GETTABLEKS                       R3 R3 K3 ["versionDescription"]
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETIMPORT                        R3 K6 [string.find]
       11 GETTABLEKS                       R4 R1 K2 ["Value"]
       13 GETTABLEKS                       R4 R4 K3 ["versionDescription"]
       15 LOADK                            R5 K7 ["\n"]
       16 CALL                             R3 2 1
       17 LOADNIL                          R4
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K8 ["new"]
       21 CALL                             R5 0 1
       22 GETTABLEKS                       R7 R2 K10 ["inputText"]
       24 ORK                              R6 R7 K9 [""]
       25 GETTABLEKS                       R7 R1 K11 ["CellProps"]
       27 GETTABLEKS                       R7 R7 K12 ["ErrorCallback"]
       29 JUMPIFNOT                        R7 ; [+55]
       30 LENGTH                           R7 R6
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K13 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
       34 JUMPIFNOTLT                      R8 R7 ; [+26]
       36 GETTABLEKS                       R7 R0 K14 ["hasError"]
       38 JUMPIF                           R7 ; [+46]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R0 K14 ["hasError"]
       42 GETTABLEKS                       R7 R1 K11 ["CellProps"]
       44 GETTABLEKS                       R7 R7 K12 ["ErrorCallback"]
       46 GETTABLEKS                       R8 R0 K14 ["hasError"]
       48 CALL                             R7 1 0
       49 GETTABLEKS                       R7 R1 K11 ["CellProps"]
       51 GETTABLEKS                       R7 R7 K15 ["SetVersionError"]
       53 GETTABLEKS                       R8 R1 K2 ["Value"]
       55 GETTABLEKS                       R8 R8 K16 ["assetVersionNumber"]
       57 GETTABLEKS                       R9 R0 K14 ["hasError"]
       59 CALL                             R7 2 0
       60 JUMP                             ; [+24]
       61 GETTABLEKS                       R7 R0 K14 ["hasError"]
       63 JUMPIFNOT                        R7 ; [+21]
       64 LOADB                            R7 0
       65 SETTABLEKS                       R7 R0 K14 ["hasError"]
       67 GETTABLEKS                       R7 R1 K11 ["CellProps"]
       69 GETTABLEKS                       R7 R7 K12 ["ErrorCallback"]
       71 GETTABLEKS                       R8 R0 K14 ["hasError"]
       73 CALL                             R7 1 0
       74 GETTABLEKS                       R7 R1 K11 ["CellProps"]
       76 GETTABLEKS                       R7 R7 K15 ["SetVersionError"]
       78 GETTABLEKS                       R8 R1 K2 ["Value"]
       80 GETTABLEKS                       R8 R8 K16 ["assetVersionNumber"]
       82 GETTABLEKS                       R9 R0 K14 ["hasError"]
       84 CALL                             R7 2 0
       85 LENGTH                           R8 R6
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K13 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
       89 JUMPIFLT                         R9 R8 ; [+2]
       91 LOADB                            R7 0 +1
       92 LOADB                            R7 1
       93 JUMPIFNOT                        R3 ; [+15]
       94 GETIMPORT                        R8 K18 [string.format]
       96 LOADK                            R9 K19 ["%s..."]
       97 GETTABLEKS                       R11 R1 K2 ["Value"]
       99 GETTABLEKS                       R11 R11 K3 ["versionDescription"]
      101 LOADN                            R12 0
      102 SUBK                             R13 R3 K20 [1]
      103 FASTCALL                         STRING_SUB ; [+2]
      104 GETIMPORT                        R10 K22 [string.sub]
      106 CALL                             R10 3 1
      107 CALL                             R8 2 1
      108 MOVE                             R4 R8
      109 GETTABLEKS                       R9 R1 K11 ["CellProps"]
      111 GETTABLEKS                       R9 R9 K23 ["OpenInputKey"]
      113 GETTABLEKS                       R10 R1 K2 ["Value"]
      115 GETTABLEKS                       R10 R10 K16 ["assetVersionNumber"]
      117 JUMPIFNOTEQ                      R9 R10 ; [+251]
      119 GETUPVAL                         R8 2
      120 GETTABLEKS                       R8 R8 K24 ["createElement"]
      122 LOADK                            R9 K25 ["Frame"]
      123 DUPTABLE                         R10 K31 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      124 GETIMPORT                        R11 K34 [Enum.AutomaticSize.XY]
      126 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
      128 GETIMPORT                        R11 K36 [UDim2.new]
      130 LOADN                            R12 1
      131 LOADN                            R13 0
      132 LOADK                            R14 K37 [0.9]
      133 LOADN                            R15 0
      134 CALL                             R11 4 1
      135 SETTABLEKS                       R11 R10 K27 ["Size"]
      137 DUPTABLE                         R11 K40 [{"InputBox", "CounterText"}]
      138 GETUPVAL                         R12 2
      139 GETTABLEKS                       R12 R12 K24 ["createElement"]
      141 GETUPVAL                         R13 3
      142 DUPTABLE                         R14 K50 [{["Text"], ["OnTextChanged"], ["PlaceholderText"], ["MultiLine"] = True, ["Size"], ["Style"] = "BorderBox", ["StyleModifier"], ["MaxLength"]}]
      143 GETTABLEKS                       R16 R2 K10 ["inputText"]
      145 ORK                              R15 R16 K9 [""]
      146 SETTABLEKS                       R15 R14 K41 ["Text"]
      148 GETTABLEKS                       R15 R0 K51 ["onTextChanged"]
      150 SETTABLEKS                       R15 R14 K42 ["OnTextChanged"]
      152 GETTABLEKS                       R15 R1 K52 ["Localization"]
      154 LOADK                            R17 K53 ["AssetConfigVersions"]
      155 LOADK                            R18 K54 ["DescribeChanges"]
      156 NAMECALL                         R15 R15 K55 ["getText"]
      158 CALL                             R15 3 1
      159 SETTABLEKS                       R15 R14 K43 ["PlaceholderText"]
      161 GETIMPORT                        R15 K57 [UDim2.fromScale]
      163 LOADK                            R16 K58 [0.995]
      164 LOADK                            R17 K59 [0.85]
      165 CALL                             R15 2 1
      166 SETTABLEKS                       R15 R14 K27 ["Size"]
      168 JUMPIFNOT                        R7 ; [+4]
      169 GETUPVAL                         R15 4
      170 GETTABLEKS                       R15 R15 K60 ["Error"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R15
      174 SETTABLEKS                       R15 R14 K48 ["StyleModifier"]
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K13 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
      179 SETTABLEKS                       R15 R14 K49 ["MaxLength"]
      181 CALL                             R12 2 1
      182 SETTABLEKS                       R12 R11 K38 ["InputBox"]
      184 GETUPVAL                         R12 2
      185 GETTABLEKS                       R12 R12 K24 ["createElement"]
      187 LOADK                            R13 K25 ["Frame"]
      188 DUPTABLE                         R14 K61 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Size"]}]
      189 GETIMPORT                        R15 K36 [UDim2.new]
      191 LOADK                            R16 K58 [0.995]
      192 LOADN                            R17 0
      193 LOADN                            R18 1
      194 LOADN                            R19 0
      195 CALL                             R15 4 1
      196 SETTABLEKS                       R15 R14 K27 ["Size"]
      198 DUPTABLE                         R15 K65 [{"UIListLayout", "DiscardButton", "SubmitButton"}]
      199 GETUPVAL                         R16 2
      200 GETTABLEKS                       R16 R16 K24 ["createElement"]
      202 LOADK                            R17 K62 ["UIListLayout"]
      203 DUPTABLE                         R18 K71 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      204 GETIMPORT                        R19 K73 [Enum.FillDirection.Horizontal]
      206 SETTABLEKS                       R19 R18 K66 ["FillDirection"]
      208 GETIMPORT                        R19 K75 [Enum.HorizontalAlignment.Right]
      210 SETTABLEKS                       R19 R18 K67 ["HorizontalAlignment"]
      212 GETIMPORT                        R19 K77 [Enum.VerticalAlignment.Bottom]
      214 SETTABLEKS                       R19 R18 K68 ["VerticalAlignment"]
      216 GETIMPORT                        R19 K79 [Enum.SortOrder.LayoutOrder]
      218 SETTABLEKS                       R19 R18 K69 ["SortOrder"]
      220 GETIMPORT                        R19 K81 [UDim.new]
      222 LOADN                            R20 0
      223 LOADN                            R21 5
      224 CALL                             R19 2 1
      225 SETTABLEKS                       R19 R18 K70 ["Padding"]
      227 CALL                             R16 2 1
      228 SETTABLEKS                       R16 R15 K62 ["UIListLayout"]
      230 GETUPVAL                         R16 2
      231 GETTABLEKS                       R16 R16 K24 ["createElement"]
      233 GETUPVAL                         R17 5
      234 GETUPVAL                         R19 6
      235 CALL                             R19 0 1
      236 JUMPIFNOT                        R19 ; [+22]
      237 DUPTABLE                         R18 K84 [{["Text"], ["Size"], ["Style"] = "Round", ["OnClick"]}]
      238 GETTABLEKS                       R19 R1 K52 ["Localization"]
      240 LOADK                            R21 K85 ["General"]
      241 LOADK                            R22 K86 ["Discard"]
      242 NAMECALL                         R19 R19 K55 ["getText"]
      244 CALL                             R19 3 1
      245 SETTABLEKS                       R19 R18 K41 ["Text"]
      247 GETIMPORT                        R19 K57 [UDim2.fromScale]
      249 LOADK                            R20 K87 [0.125]
      250 LOADK                            R21 K87 [0.125]
      251 CALL                             R19 2 1
      252 SETTABLEKS                       R19 R18 K27 ["Size"]
      254 NEWCLOSURE                       R19 P0
      255 CAPTURE                          VAL R1
      256 SETTABLEKS                       R19 R18 K83 ["OnClick"]
      258 JUMP                             ; [+31]
      259 DUPTABLE                         R18 K90 [{["BorderSizePixel"] = 0, ["Text"], ["Size"], ["TextSize"], ["BackgroundTransparency"] = 1, ["Font"], ["Style"] = "Round", ["OnClick"]}]
      260 GETTABLEKS                       R19 R1 K52 ["Localization"]
      262 LOADK                            R21 K85 ["General"]
      263 LOADK                            R22 K86 ["Discard"]
      264 NAMECALL                         R19 R19 K55 ["getText"]
      266 CALL                             R19 3 1
      267 SETTABLEKS                       R19 R18 K41 ["Text"]
      269 GETIMPORT                        R19 K57 [UDim2.fromScale]
      271 LOADK                            R20 K87 [0.125]
      272 LOADK                            R21 K87 [0.125]
      273 CALL                             R19 2 1
      274 SETTABLEKS                       R19 R18 K27 ["Size"]
      276 GETUPVAL                         R19 7
      277 GETTABLEKS                       R19 R19 K91 ["FONT_SIZE_LARGE"]
      279 SETTABLEKS                       R19 R18 K88 ["TextSize"]
      281 GETUPVAL                         R19 7
      282 GETTABLEKS                       R19 R19 K92 ["FONT"]
      284 SETTABLEKS                       R19 R18 K89 ["Font"]
      286 NEWCLOSURE                       R19 P1
      287 CAPTURE                          VAL R1
      288 SETTABLEKS                       R19 R18 K83 ["OnClick"]
      290 CALL                             R16 2 1
      291 SETTABLEKS                       R16 R15 K63 ["DiscardButton"]
      293 GETUPVAL                         R16 2
      294 GETTABLEKS                       R16 R16 K24 ["createElement"]
      296 GETUPVAL                         R17 5
      297 GETUPVAL                         R19 6
      298 CALL                             R19 0 1
      299 JUMPIFNOT                        R19 ; [+22]
      300 DUPTABLE                         R18 K94 [{["Text"], ["Size"], ["Style"] = "RoundPrimary", ["OnClick"]}]
      301 GETTABLEKS                       R19 R1 K52 ["Localization"]
      303 LOADK                            R21 K95 ["Common"]
      304 LOADK                            R22 K96 ["Submit"]
      305 NAMECALL                         R19 R19 K55 ["getText"]
      307 CALL                             R19 3 1
      308 SETTABLEKS                       R19 R18 K41 ["Text"]
      310 GETIMPORT                        R19 K57 [UDim2.fromScale]
      312 LOADK                            R20 K87 [0.125]
      313 LOADK                            R21 K87 [0.125]
      314 CALL                             R19 2 1
      315 SETTABLEKS                       R19 R18 K27 ["Size"]
      317 NEWCLOSURE                       R19 P2
      318 CAPTURE                          VAL R1
      319 SETTABLEKS                       R19 R18 K83 ["OnClick"]
      321 JUMP                             ; [+39]
      322 DUPTABLE                         R18 K97 [{["BorderSizePixel"] = 0, ["Text"], ["Size"], ["TextSize"], ["BackgroundTransparency"] = 1, ["Font"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["OnClick"]}]
      323 GETTABLEKS                       R19 R1 K52 ["Localization"]
      325 LOADK                            R21 K95 ["Common"]
      326 LOADK                            R22 K96 ["Submit"]
      327 NAMECALL                         R19 R19 K55 ["getText"]
      329 CALL                             R19 3 1
      330 SETTABLEKS                       R19 R18 K41 ["Text"]
      332 GETIMPORT                        R19 K57 [UDim2.fromScale]
      334 LOADK                            R20 K87 [0.125]
      335 LOADK                            R21 K87 [0.125]
      336 CALL                             R19 2 1
      337 SETTABLEKS                       R19 R18 K27 ["Size"]
      339 GETUPVAL                         R19 7
      340 GETTABLEKS                       R19 R19 K91 ["FONT_SIZE_LARGE"]
      342 SETTABLEKS                       R19 R18 K88 ["TextSize"]
      344 GETUPVAL                         R19 7
      345 GETTABLEKS                       R19 R19 K92 ["FONT"]
      347 SETTABLEKS                       R19 R18 K89 ["Font"]
      349 JUMPIFNOT                        R7 ; [+4]
      350 GETUPVAL                         R19 4
      351 GETTABLEKS                       R19 R19 K98 ["Disabled"]
      353 JUMPIF                           R19 ; [+1]
      354 LOADNIL                          R19
      355 SETTABLEKS                       R19 R18 K48 ["StyleModifier"]
      357 NEWCLOSURE                       R19 P3
      358 CAPTURE                          VAL R1
      359 SETTABLEKS                       R19 R18 K83 ["OnClick"]
      361 CALL                             R16 2 1
      362 SETTABLEKS                       R16 R15 K64 ["SubmitButton"]
      364 CALL                             R12 3 1
      365 SETTABLEKS                       R12 R11 K39 ["CounterText"]
      367 CALL                             R8 3 1
      368 RETURN                           R8 1
      369 GETUPVAL                         R9 8
      370 CALL                             R9 0 1
      371 JUMPIFNOT                        R9 ; [+13]
      372 GETTABLEKS                       R9 R1 K2 ["Value"]
      374 GETTABLEKS                       R9 R9 K3 ["versionDescription"]
      376 JUMPIFEQKS                       R9 K9 [""] ; [+6]
      378 GETTABLEKS                       R9 R1 K2 ["Value"]
      380 GETTABLEKS                       R9 R9 K3 ["versionDescription"]
      382 JUMPIF                           R9 ; [+2]
      383 LOADNIL                          R8
      384 RETURN                           R8 1
      385 GETTABLEKS                       R9 R1 K2 ["Value"]
      387 GETTABLEKS                       R9 R9 K3 ["versionDescription"]
      389 JUMPIFEQKS                       R9 K9 [""] ; [+6]
      391 GETTABLEKS                       R9 R1 K2 ["Value"]
      393 GETTABLEKS                       R9 R9 K3 ["versionDescription"]
      395 JUMPIF                           R9 ; [+51]
      396 GETUPVAL                         R8 2
      397 GETTABLEKS                       R8 R8 K24 ["createElement"]
      399 GETUPVAL                         R9 9
      400 DUPTABLE                         R10 K100 [{"Style", "Text", "Position", "OnClick"}]
      401 DUPTABLE                         R11 K104 [{["Font"], ["TextSize"], ["ForceUnderline"] = True, ["ShowUnderline"] = True, ["TextColor"]}]
      402 GETUPVAL                         R12 7
      403 GETTABLEKS                       R12 R12 K92 ["FONT"]
      405 SETTABLEKS                       R12 R11 K89 ["Font"]
      407 GETUPVAL                         R12 7
      408 GETTABLEKS                       R12 R12 K91 ["FONT_SIZE_LARGE"]
      410 SETTABLEKS                       R12 R11 K88 ["TextSize"]
      412 GETTABLEKS                       R12 R1 K11 ["CellProps"]
      414 GETTABLEKS                       R12 R12 K105 ["Theme"]
      416 GETTABLEKS                       R12 R12 K106 ["textColor"]
      418 SETTABLEKS                       R12 R11 K103 ["TextColor"]
      420 SETTABLEKS                       R11 R10 K46 ["Style"]
      422 GETTABLEKS                       R11 R1 K52 ["Localization"]
      424 LOADK                            R13 K53 ["AssetConfigVersions"]
      425 LOADK                            R14 K107 ["AddNote"]
      426 NAMECALL                         R11 R11 K55 ["getText"]
      428 CALL                             R11 3 1
      429 SETTABLEKS                       R11 R10 K41 ["Text"]
      431 GETIMPORT                        R11 K36 [UDim2.new]
      433 LOADN                            R12 0
      434 LOADN                            R13 2
      435 LOADN                            R14 0
      436 LOADN                            R15 5
      437 CALL                             R11 4 1
      438 SETTABLEKS                       R11 R10 K99 ["Position"]
      440 NEWCLOSURE                       R11 P4
      441 CAPTURE                          VAL R0
      442 CAPTURE                          VAL R1
      443 SETTABLEKS                       R11 R10 K83 ["OnClick"]
      445 CALL                             R8 2 1
      446 RETURN                           R8 1
      447 GETUPVAL                         R8 2
      448 GETTABLEKS                       R8 R8 K24 ["createElement"]
      450 GETUPVAL                         R9 9
      451 DUPTABLE                         R10 K111 [{"Style", "Text", "TextWrapped", "Position", "TextXAlignment", "TextYAlignment", "OnClick"}]
      452 DUPTABLE                         R11 K112 [{"Font", "TextSize", "TextColor"}]
      453 GETUPVAL                         R12 7
      454 GETTABLEKS                       R12 R12 K92 ["FONT"]
      456 SETTABLEKS                       R12 R11 K89 ["Font"]
      458 GETUPVAL                         R12 7
      459 GETTABLEKS                       R12 R12 K91 ["FONT_SIZE_LARGE"]
      461 SETTABLEKS                       R12 R11 K88 ["TextSize"]
      463 JUMPIFNOT                        R7 ; [+7]
      464 GETTABLEKS                       R12 R1 K11 ["CellProps"]
      466 GETTABLEKS                       R12 R12 K105 ["Theme"]
      468 GETTABLEKS                       R12 R12 K113 ["errorColor"]
      470 JUMP                             ; [+6]
      471 GETTABLEKS                       R12 R1 K11 ["CellProps"]
      473 GETTABLEKS                       R12 R12 K105 ["Theme"]
      475 GETTABLEKS                       R12 R12 K106 ["textColor"]
      477 SETTABLEKS                       R12 R11 K103 ["TextColor"]
      479 SETTABLEKS                       R11 R10 K46 ["Style"]
      481 JUMPIFNOT                        R3 ; [+2]
      482 MOVE                             R11 R4
      483 JUMP                             ; [+4]
      484 GETTABLEKS                       R11 R1 K2 ["Value"]
      486 GETTABLEKS                       R11 R11 K3 ["versionDescription"]
      488 SETTABLEKS                       R11 R10 K41 ["Text"]
      490 JUMPIFNOT                        R3 ; [+2]
      491 LOADNIL                          R11
      492 JUMP                             ; [+1]
      493 LOADB                            R11 1
      494 SETTABLEKS                       R11 R10 K108 ["TextWrapped"]
      496 GETIMPORT                        R11 K36 [UDim2.new]
      498 LOADN                            R12 0
      499 LOADN                            R13 2
      500 LOADN                            R14 0
      501 LOADN                            R15 1
      502 CALL                             R11 4 1
      503 SETTABLEKS                       R11 R10 K99 ["Position"]
      505 GETIMPORT                        R11 K115 [Enum.TextXAlignment.Left]
      507 SETTABLEKS                       R11 R10 K109 ["TextXAlignment"]
      509 GETIMPORT                        R11 K117 [Enum.TextYAlignment.Top]
      511 SETTABLEKS                       R11 R10 K110 ["TextYAlignment"]
      513 NEWCLOSURE                       R11 P5
      514 CAPTURE                          VAL R0
      515 CAPTURE                          VAL R1
      516 SETTABLEKS                       R11 R10 K83 ["OnClick"]
      518 CALL                             R8 2 1
      519 RETURN                           R8 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickDesc"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetVersionNumber"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCheck"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCheck"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Value"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R4 R1 K3 ["Width"]
        8 JUMPIF                           R4 ; [+8]
        9 GETIMPORT                        R4 K6 [UDim.new]
       11 GETTABLEKS                       R7 R1 K8 ["Columns"]
       13 LENGTH                           R6 R7
       14 DIVRK                            R5 K7 [1] R6
       15 LOADN                            R6 0
       16 CALL                             R4 2 1
       17 GETTABLEKS                       R5 R1 K9 ["CellProps"]
       19 GETTABLEKS                       R5 R5 K10 ["Theme"]
       21 GETTABLEKS                       R6 R1 K9 ["CellProps"]
       23 GETTABLEKS                       R6 R6 K11 ["CurrentVersion"]
       25 GETTABLEKS                       R7 R1 K9 ["CellProps"]
       27 GETTABLEKS                       R7 R7 K12 ["SelectVersion"]
       29 GETTABLEKS                       R8 R1 K9 ["CellProps"]
       31 GETTABLEKS                       R8 R8 K13 ["OpenInputKey"]
       33 GETTABLEKS                       R9 R3 K14 ["BackgroundOdd"]
       35 GETTABLEKS                       R10 R1 K9 ["CellProps"]
       37 GETTABLEKS                       R10 R10 K15 ["IdsToUsernames"]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K5 ["new"]
       42 CALL                             R11 0 1
       43 LOADNIL                          R12
       44 FASTCALL1                        TYPEOF R2 ; [+3]
       45 MOVE                             R14 R2
       46 GETIMPORT                        R13 K17 [typeof]
       48 CALL                             R13 1 1
       49 JUMPIFNOTEQKS                    R13 K18 ["number"] ; [+15]
       51 FASTCALL1                        MATH_FLOOR R2 ; [+3]
       52 MOVE                             R14 R2
       53 GETIMPORT                        R13 K21 [math.floor]
       55 CALL                             R13 1 1
       56 JUMPIFEQ                         R13 R2 ; [+8]
       58 LOADK                            R13 K22 ["%.3f"]
       59 MOVE                             R15 R2
       60 NAMECALL                         R13 R13 K23 ["format"]
       62 CALL                             R13 2 1
       63 MOVE                             R12 R13
       64 JUMP                             ; [+6]
       65 FASTCALL1                        TOSTRING R2 ; [+3]
       66 MOVE                             R14 R2
       67 GETIMPORT                        R13 K25 [tostring]
       69 CALL                             R13 1 1
       70 MOVE                             R12 R13
       71 GETTABLEKS                       R13 R1 K26 ["ColumnIndex"]
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R14 R14 K27 ["Version"]
       76 JUMPIFNOTEQ                      R13 R14 ; [+235]
       78 JUMPIFEQ                         R2 R6 ; [+2]
       80 LOADB                            R13 0 +1
       81 LOADB                            R13 1
       82 JUMPIFEQKN                       R8 K28 [-1] ; [+130]
       84 GETUPVAL                         R14 2
       85 GETTABLEKS                       R14 R14 K29 ["createElement"]
       87 GETUPVAL                         R15 3
       88 DUPTABLE                         R16 K40 [{["LayoutOrder"], ["Padding"] = 5, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       89 GETTABLEKS                       R17 R1 K26 ["ColumnIndex"]
       91 SETTABLEKS                       R17 R16 K30 ["LayoutOrder"]
       93 SETTABLEKS                       R9 R16 K34 ["BackgroundColor3"]
       95 GETTABLEKS                       R17 R3 K41 ["Border"]
       97 SETTABLEKS                       R17 R16 K36 ["BorderColor3"]
       99 GETIMPORT                        R17 K43 [UDim2.new]
      101 GETTABLEKS                       R18 R4 K44 ["Scale"]
      103 GETTABLEKS                       R19 R4 K45 ["Offset"]
      105 LOADN                            R20 1
      106 LOADN                            R21 0
      107 CALL                             R17 4 1
      108 SETTABLEKS                       R17 R16 K37 ["Size"]
      110 DUPTABLE                         R17 K47 [{"Container"}]
      111 GETUPVAL                         R18 2
      112 GETTABLEKS                       R18 R18 K29 ["createElement"]
      114 LOADK                            R19 K48 ["ImageButton"]
      115 NEWTABLE                         R20 4 0
      117 GETIMPORT                        R21 K43 [UDim2.new]
      119 LOADN                            R22 1
      120 LOADN                            R23 0
      121 LOADN                            R24 1
      122 LOADN                            R25 0
      123 CALL                             R21 4 1
      124 SETTABLEKS                       R21 R20 K37 ["Size"]
      126 LOADN                            R21 1
      127 SETTABLEKS                       R21 R20 K49 ["BackgroundTransparency"]
      129 GETUPVAL                         R21 2
      130 GETTABLEKS                       R21 R21 K50 ["Event"]
      132 GETTABLEKS                       R21 R21 K51 ["Activated"]
      134 GETTABLEKS                       R22 R0 K52 ["onClickOut"]
      136 SETTABLE                         R22 R20 R21
      137 DUPTABLE                         R21 K54 [{"TextFrame"}]
      138 GETUPVAL                         R22 2
      139 GETTABLEKS                       R22 R22 K29 ["createElement"]
      141 LOADK                            R23 K55 ["Frame"]
      142 DUPTABLE                         R24 K57 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      143 NAMECALL                         R25 R11 K58 ["getNextOrder"]
      145 CALL                             R25 1 1
      146 SETTABLEKS                       R25 R24 K30 ["LayoutOrder"]
      148 DUPTABLE                         R25 K60 [{"Text"}]
      149 GETUPVAL                         R26 2
      150 GETTABLEKS                       R26 R26 K29 ["createElement"]
      152 LOADK                            R27 K61 ["TextLabel"]
      153 DUPTABLE                         R28 K68 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["Position"], ["TextXAlignment"], ["TextYAlignment"]}]
      154 JUMPIFNOT                        R13 ; [+13]
      155 GETIMPORT                        R29 K70 [string.format]
      157 LOADK                            R30 K71 ["%s (%s)"]
      158 MOVE                             R31 R12
      159 GETTABLEKS                       R32 R1 K72 ["Localization"]
      161 LOADK                            R34 K73 ["AssetConfigVersions"]
      162 LOADK                            R35 K74 ["CurrentLabel"]
      163 NAMECALL                         R32 R32 K75 ["getText"]
      165 CALL                             R32 3 -1
      166 CALL                             R29 -1 1
      167 JUMP                             ; [+1]
      168 MOVE                             R29 R12
      169 SETTABLEKS                       R29 R28 K59 ["Text"]
      171 GETTABLEKS                       R29 R5 K76 ["textColor"]
      173 SETTABLEKS                       R29 R28 K62 ["TextColor3"]
      175 GETUPVAL                         R29 4
      176 GETTABLEKS                       R29 R29 K77 ["FONT"]
      178 SETTABLEKS                       R29 R28 K63 ["Font"]
      180 GETUPVAL                         R29 4
      181 GETTABLEKS                       R29 R29 K78 ["FONT_SIZE_LARGE"]
      183 SETTABLEKS                       R29 R28 K64 ["TextSize"]
      185 GETIMPORT                        R29 K43 [UDim2.new]
      187 LOADN                            R30 0
      188 LOADN                            R31 2
      189 LOADN                            R32 0
      190 LOADN                            R33 2
      191 CALL                             R29 4 1
      192 SETTABLEKS                       R29 R28 K65 ["Position"]
      194 GETIMPORT                        R29 K81 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R29 R28 K66 ["TextXAlignment"]
      198 GETIMPORT                        R29 K83 [Enum.TextYAlignment.Top]
      200 SETTABLEKS                       R29 R28 K67 ["TextYAlignment"]
      202 CALL                             R26 2 1
      203 SETTABLEKS                       R26 R25 K59 ["Text"]
      205 CALL                             R22 3 1
      206 SETTABLEKS                       R22 R21 K53 ["TextFrame"]
      208 CALL                             R18 3 1
      209 SETTABLEKS                       R18 R17 K46 ["Container"]
      211 CALL                             R14 3 -1
      212 RETURN                           R14 -1
      213 GETUPVAL                         R14 2
      214 GETTABLEKS                       R14 R14 K29 ["createElement"]
      216 GETUPVAL                         R15 3
      217 DUPTABLE                         R16 K40 [{["LayoutOrder"], ["Padding"] = 5, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
      218 GETTABLEKS                       R17 R1 K26 ["ColumnIndex"]
      220 SETTABLEKS                       R17 R16 K30 ["LayoutOrder"]
      222 SETTABLEKS                       R9 R16 K34 ["BackgroundColor3"]
      224 GETTABLEKS                       R17 R3 K41 ["Border"]
      226 SETTABLEKS                       R17 R16 K36 ["BorderColor3"]
      228 GETIMPORT                        R17 K43 [UDim2.new]
      230 GETTABLEKS                       R18 R4 K44 ["Scale"]
      232 GETTABLEKS                       R19 R4 K45 ["Offset"]
      234 LOADN                            R20 1
      235 LOADN                            R21 0
      236 CALL                             R17 4 1
      237 SETTABLEKS                       R17 R16 K37 ["Size"]
      239 DUPTABLE                         R17 K54 [{"TextFrame"}]
      240 GETUPVAL                         R18 2
      241 GETTABLEKS                       R18 R18 K29 ["createElement"]
      243 LOADK                            R19 K55 ["Frame"]
      244 DUPTABLE                         R20 K57 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      245 NAMECALL                         R21 R11 K58 ["getNextOrder"]
      247 CALL                             R21 1 1
      248 SETTABLEKS                       R21 R20 K30 ["LayoutOrder"]
      250 DUPTABLE                         R21 K60 [{"Text"}]
      251 GETUPVAL                         R22 2
      252 GETTABLEKS                       R22 R22 K29 ["createElement"]
      254 LOADK                            R23 K61 ["TextLabel"]
      255 DUPTABLE                         R24 K68 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["Position"], ["TextXAlignment"], ["TextYAlignment"]}]
      256 JUMPIFNOT                        R13 ; [+13]
      257 GETIMPORT                        R25 K70 [string.format]
      259 LOADK                            R26 K71 ["%s (%s)"]
      260 MOVE                             R27 R12
      261 GETTABLEKS                       R28 R1 K72 ["Localization"]
      263 LOADK                            R30 K73 ["AssetConfigVersions"]
      264 LOADK                            R31 K74 ["CurrentLabel"]
      265 NAMECALL                         R28 R28 K75 ["getText"]
      267 CALL                             R28 3 -1
      268 CALL                             R25 -1 1
      269 JUMP                             ; [+1]
      270 MOVE                             R25 R12
      271 SETTABLEKS                       R25 R24 K59 ["Text"]
      273 GETTABLEKS                       R25 R5 K76 ["textColor"]
      275 SETTABLEKS                       R25 R24 K62 ["TextColor3"]
      277 GETUPVAL                         R25 4
      278 GETTABLEKS                       R25 R25 K77 ["FONT"]
      280 SETTABLEKS                       R25 R24 K63 ["Font"]
      282 GETUPVAL                         R25 4
      283 GETTABLEKS                       R25 R25 K78 ["FONT_SIZE_LARGE"]
      285 SETTABLEKS                       R25 R24 K64 ["TextSize"]
      287 GETIMPORT                        R25 K43 [UDim2.new]
      289 LOADN                            R26 0
      290 LOADN                            R27 2
      291 LOADN                            R28 0
      292 LOADN                            R29 2
      293 CALL                             R25 4 1
      294 SETTABLEKS                       R25 R24 K65 ["Position"]
      296 GETIMPORT                        R25 K81 [Enum.TextXAlignment.Left]
      298 SETTABLEKS                       R25 R24 K66 ["TextXAlignment"]
      300 GETIMPORT                        R25 K83 [Enum.TextYAlignment.Top]
      302 SETTABLEKS                       R25 R24 K67 ["TextYAlignment"]
      304 CALL                             R22 2 1
      305 SETTABLEKS                       R22 R21 K59 ["Text"]
      307 CALL                             R18 3 1
      308 SETTABLEKS                       R18 R17 K53 ["TextFrame"]
      310 CALL                             R14 3 -1
      311 RETURN                           R14 -1
      312 GETTABLEKS                       R13 R1 K26 ["ColumnIndex"]
      314 GETUPVAL                         R14 1
      315 GETTABLEKS                       R14 R14 K84 ["Description"]
      317 JUMPIFNOTEQ                      R13 R14 ; [+494]
      319 GETUPVAL                         R13 5
      320 GETTABLEKS                       R14 R2 K85 ["created"]
      322 LOADK                            R15 K86 ["L LTS"]
      323 GETTABLEKS                       R16 R1 K72 ["Localization"]
      325 NAMECALL                         R16 R16 K87 ["getLocale"]
      327 CALL                             R16 1 -1
      328 CALL                             R13 -1 1
      329 GETTABLEKS                       R15 R2 K88 ["creatorId"]
      331 GETTABLE                         R14 R10 R15
      332 LOADNIL                          R15
      333 JUMPIFNOT                        R14 ; [+8]
      334 GETIMPORT                        R16 K70 [string.format]
      336 LOADK                            R17 K89 ["%s   •   %s"]
      337 MOVE                             R18 R13
      338 MOVE                             R19 R14
      339 CALL                             R16 3 1
      340 MOVE                             R15 R16
      341 JUMP                             ; [+27]
      342 GETTABLEKS                       R16 R2 K90 ["creatorType"]
      344 JUMPIFNOT                        R16 ; [+23]
      345 GETIMPORT                        R17 K92 [Enum.CreatorType]
      347 GETTABLEKS                       R18 R2 K90 ["creatorType"]
      349 GETTABLE                         R16 R17 R18
      350 GETIMPORT                        R17 K94 [Enum.CreatorType.User]
      352 JUMPIFNOTEQ                      R16 R17 ; [+15]
      354 GETIMPORT                        R16 K70 [string.format]
      356 LOADK                            R17 K95 ["%s   •   <i>%s</i>"]
      357 MOVE                             R18 R13
      358 GETTABLEKS                       R19 R1 K72 ["Localization"]
      360 LOADK                            R21 K73 ["AssetConfigVersions"]
      361 LOADK                            R22 K96 ["RevokedUser"]
      362 NAMECALL                         R19 R19 K75 ["getText"]
      364 CALL                             R19 3 -1
      365 CALL                             R16 -1 1
      366 MOVE                             R15 R16
      367 JUMP                             ; [+1]
      368 MOVE                             R15 R13
      369 GETUPVAL                         R16 6
      370 CALL                             R16 0 1
      371 JUMPIFNOT                        R16 ; [+239]
      372 GETUPVAL                         R16 2
      373 GETTABLEKS                       R16 R16 K29 ["createElement"]
      375 LOADK                            R17 K48 ["ImageButton"]
      376 NEWTABLE                         R18 8 0
      378 GETIMPORT                        R19 K43 [UDim2.new]
      380 GETTABLEKS                       R20 R4 K44 ["Scale"]
      382 GETTABLEKS                       R21 R4 K45 ["Offset"]
      384 LOADN                            R22 1
      385 LOADN                            R23 0
      386 CALL                             R19 4 1
      387 SETTABLEKS                       R19 R18 K37 ["Size"]
      389 LOADN                            R19 1
      390 SETTABLEKS                       R19 R18 K49 ["BackgroundTransparency"]
      392 LOADN                            R19 0
      393 SETTABLEKS                       R19 R18 K35 ["BorderSizePixel"]
      395 GETUPVAL                         R19 2
      396 GETTABLEKS                       R19 R19 K50 ["Event"]
      398 GETTABLEKS                       R19 R19 K51 ["Activated"]
      400 NEWCLOSURE                       R20 P0
      401 CAPTURE                          VAL R0
      402 CAPTURE                          VAL R2
      403 SETTABLE                         R20 R18 R19
      404 GETTABLEKS                       R19 R1 K26 ["ColumnIndex"]
      406 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      408 DUPTABLE                         R19 K99 [{"HoverArea", "Pane"}]
      409 GETUPVAL                         R21 7
      410 CALL                             R21 0 1
      411 JUMPIFNOT                        R21 ; [+2]
      412 LOADNIL                          R20
      413 JUMP                             ; [+6]
      414 GETUPVAL                         R20 2
      415 GETTABLEKS                       R20 R20 K29 ["createElement"]
      417 GETUPVAL                         R21 8
      418 DUPTABLE                         R22 K102 [{["Cursor"] = "PointingHand"}]
      419 CALL                             R20 2 1
      420 SETTABLEKS                       R20 R19 K97 ["HoverArea"]
      422 GETUPVAL                         R20 2
      423 GETTABLEKS                       R20 R20 K29 ["createElement"]
      425 GETUPVAL                         R21 3
      426 DUPTABLE                         R22 K103 [{["Padding"] = 5, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"]}]
      427 SETTABLEKS                       R9 R22 K34 ["BackgroundColor3"]
      429 GETTABLEKS                       R23 R3 K41 ["Border"]
      431 SETTABLEKS                       R23 R22 K36 ["BorderColor3"]
      433 DUPTABLE                         R23 K108 [{"UIListLayout", "CreatedFrame", "ModerationWarning", "DescriptionFrame"}]
      434 GETUPVAL                         R24 2
      435 GETTABLEKS                       R24 R24 K29 ["createElement"]
      437 LOADK                            R25 K104 ["UIListLayout"]
      438 DUPTABLE                         R26 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      439 GETIMPORT                        R27 K115 [Enum.FillDirection.Vertical]
      441 SETTABLEKS                       R27 R26 K109 ["FillDirection"]
      443 GETIMPORT                        R27 K116 [Enum.HorizontalAlignment.Left]
      445 SETTABLEKS                       R27 R26 K110 ["HorizontalAlignment"]
      447 GETIMPORT                        R27 K117 [Enum.VerticalAlignment.Top]
      449 SETTABLEKS                       R27 R26 K111 ["VerticalAlignment"]
      451 GETIMPORT                        R27 K118 [Enum.SortOrder.LayoutOrder]
      453 SETTABLEKS                       R27 R26 K112 ["SortOrder"]
      455 CALL                             R24 2 1
      456 SETTABLEKS                       R24 R23 K104 ["UIListLayout"]
      458 GETUPVAL                         R24 2
      459 GETTABLEKS                       R24 R24 K29 ["createElement"]
      461 LOADK                            R25 K55 ["Frame"]
      462 DUPTABLE                         R26 K120 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["AutomaticSize"]}]
      463 NAMECALL                         R27 R11 K58 ["getNextOrder"]
      465 CALL                             R27 1 1
      466 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      468 GETIMPORT                        R27 K122 [Enum.AutomaticSize.XY]
      470 SETTABLEKS                       R27 R26 K119 ["AutomaticSize"]
      472 DUPTABLE                         R27 K124 [{"Created"}]
      473 GETUPVAL                         R28 2
      474 GETTABLEKS                       R28 R28 K29 ["createElement"]
      476 LOADK                            R29 K61 ["TextLabel"]
      477 DUPTABLE                         R30 K127 [{["BorderSizePixel"] = 0, ["RichText"] = True, ["Text"], ["BackgroundTransparency"] = 1, ["AutomaticSize"], ["TextTruncate"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["Position"]}]
      478 SETTABLEKS                       R15 R30 K59 ["Text"]
      480 GETIMPORT                        R31 K122 [Enum.AutomaticSize.XY]
      482 SETTABLEKS                       R31 R30 K119 ["AutomaticSize"]
      484 GETIMPORT                        R31 K129 [Enum.TextTruncate.AtEnd]
      486 SETTABLEKS                       R31 R30 K126 ["TextTruncate"]
      488 GETTABLEKS                       R31 R5 K130 ["dimmedTextColor"]
      490 SETTABLEKS                       R31 R30 K62 ["TextColor3"]
      492 GETUPVAL                         R31 4
      493 GETTABLEKS                       R31 R31 K77 ["FONT"]
      495 SETTABLEKS                       R31 R30 K63 ["Font"]
      497 GETUPVAL                         R31 4
      498 GETTABLEKS                       R31 R31 K78 ["FONT_SIZE_LARGE"]
      500 SETTABLEKS                       R31 R30 K64 ["TextSize"]
      502 GETIMPORT                        R31 K81 [Enum.TextXAlignment.Left]
      504 SETTABLEKS                       R31 R30 K66 ["TextXAlignment"]
      506 GETIMPORT                        R31 K83 [Enum.TextYAlignment.Top]
      508 SETTABLEKS                       R31 R30 K67 ["TextYAlignment"]
      510 GETIMPORT                        R31 K43 [UDim2.new]
      512 LOADN                            R32 0
      513 LOADN                            R33 2
      514 LOADN                            R34 0
      515 LOADN                            R35 2
      516 CALL                             R31 4 1
      517 SETTABLEKS                       R31 R30 K65 ["Position"]
      519 CALL                             R28 2 1
      520 SETTABLEKS                       R28 R27 K123 ["Created"]
      522 CALL                             R24 3 1
      523 SETTABLEKS                       R24 R23 K105 ["CreatedFrame"]
      525 GETUPVAL                         R25 7
      526 CALL                             R25 0 1
      527 JUMPIFNOT                        R25 ; [+7]
      528 NAMECALL                         R26 R11 K58 ["getNextOrder"]
      530 CALL                             R26 1 -1
      531 NAMECALL                         R24 R0 K131 ["createModerationWarning"]
      533 CALL                             R24 -1 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R24
      536 SETTABLEKS                       R24 R23 K106 ["ModerationWarning"]
      538 GETUPVAL                         R24 2
      539 GETTABLEKS                       R24 R24 K29 ["createElement"]
      541 LOADK                            R25 K55 ["Frame"]
      542 DUPTABLE                         R26 K132 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      543 NAMECALL                         R27 R11 K58 ["getNextOrder"]
      545 CALL                             R27 1 1
      546 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      548 GETIMPORT                        R27 K43 [UDim2.new]
      550 LOADN                            R28 1
      551 LOADN                            R29 0
      552 LOADK                            R30 K133 [0.9]
      553 LOADN                            R31 0
      554 CALL                             R27 4 1
      555 SETTABLEKS                       R27 R26 K37 ["Size"]
      557 DUPTABLE                         R27 K47 [{"Container"}]
      558 JUMPIFEQKN                       R8 K28 [-1] ; [+39]
      560 GETUPVAL                         R28 2
      561 GETTABLEKS                       R28 R28 K29 ["createElement"]
      563 LOADK                            R29 K48 ["ImageButton"]
      564 NEWTABLE                         R30 4 0
      566 GETIMPORT                        R31 K43 [UDim2.new]
      568 LOADN                            R32 1
      569 LOADN                            R33 0
      570 LOADN                            R34 1
      571 LOADN                            R35 0
      572 CALL                             R31 4 1
      573 SETTABLEKS                       R31 R30 K37 ["Size"]
      575 GETIMPORT                        R31 K122 [Enum.AutomaticSize.XY]
      577 SETTABLEKS                       R31 R30 K119 ["AutomaticSize"]
      579 LOADN                            R31 1
      580 SETTABLEKS                       R31 R30 K49 ["BackgroundTransparency"]
      582 GETUPVAL                         R31 2
      583 GETTABLEKS                       R31 R31 K50 ["Event"]
      585 GETTABLEKS                       R31 R31 K51 ["Activated"]
      587 GETTABLEKS                       R32 R0 K52 ["onClickOut"]
      589 SETTABLE                         R32 R30 R31
      590 DUPTABLE                         R31 K135 [{"DescriptionComponent"}]
      591 NAMECALL                         R32 R0 K136 ["createDescriptionComponent"]
      593 CALL                             R32 1 1
      594 SETTABLEKS                       R32 R31 K134 ["DescriptionComponent"]
      596 CALL                             R28 3 1
      597 JUMP                             ; [+3]
      598 NAMECALL                         R28 R0 K136 ["createDescriptionComponent"]
      600 CALL                             R28 1 1
      601 SETTABLEKS                       R28 R27 K46 ["Container"]
      603 CALL                             R24 3 1
      604 SETTABLEKS                       R24 R23 K107 ["DescriptionFrame"]
      606 CALL                             R20 3 1
      607 SETTABLEKS                       R20 R19 K98 ["Pane"]
      609 CALL                             R16 3 -1
      610 RETURN                           R16 -1
      611 GETUPVAL                         R16 2
      612 GETTABLEKS                       R16 R16 K29 ["createElement"]
      614 GETUPVAL                         R17 3
      615 DUPTABLE                         R18 K40 [{["LayoutOrder"], ["Padding"] = 5, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
      616 GETTABLEKS                       R19 R1 K26 ["ColumnIndex"]
      618 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      620 SETTABLEKS                       R9 R18 K34 ["BackgroundColor3"]
      622 GETTABLEKS                       R19 R3 K41 ["Border"]
      624 SETTABLEKS                       R19 R18 K36 ["BorderColor3"]
      626 GETIMPORT                        R19 K43 [UDim2.new]
      628 GETTABLEKS                       R20 R4 K44 ["Scale"]
      630 GETTABLEKS                       R21 R4 K45 ["Offset"]
      632 LOADN                            R22 1
      633 LOADN                            R23 0
      634 CALL                             R19 4 1
      635 SETTABLEKS                       R19 R18 K37 ["Size"]
      637 DUPTABLE                         R19 K108 [{"UIListLayout", "CreatedFrame", "ModerationWarning", "DescriptionFrame"}]
      638 GETUPVAL                         R20 2
      639 GETTABLEKS                       R20 R20 K29 ["createElement"]
      641 LOADK                            R21 K104 ["UIListLayout"]
      642 DUPTABLE                         R22 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      643 GETIMPORT                        R23 K115 [Enum.FillDirection.Vertical]
      645 SETTABLEKS                       R23 R22 K109 ["FillDirection"]
      647 GETIMPORT                        R23 K116 [Enum.HorizontalAlignment.Left]
      649 SETTABLEKS                       R23 R22 K110 ["HorizontalAlignment"]
      651 GETIMPORT                        R23 K117 [Enum.VerticalAlignment.Top]
      653 SETTABLEKS                       R23 R22 K111 ["VerticalAlignment"]
      655 GETIMPORT                        R23 K118 [Enum.SortOrder.LayoutOrder]
      657 SETTABLEKS                       R23 R22 K112 ["SortOrder"]
      659 CALL                             R20 2 1
      660 SETTABLEKS                       R20 R19 K104 ["UIListLayout"]
      662 GETUPVAL                         R20 2
      663 GETTABLEKS                       R20 R20 K29 ["createElement"]
      665 LOADK                            R21 K55 ["Frame"]
      666 DUPTABLE                         R22 K120 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["AutomaticSize"]}]
      667 NAMECALL                         R23 R11 K58 ["getNextOrder"]
      669 CALL                             R23 1 1
      670 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      672 GETIMPORT                        R23 K122 [Enum.AutomaticSize.XY]
      674 SETTABLEKS                       R23 R22 K119 ["AutomaticSize"]
      676 DUPTABLE                         R23 K124 [{"Created"}]
      677 GETUPVAL                         R24 2
      678 GETTABLEKS                       R24 R24 K29 ["createElement"]
      680 LOADK                            R25 K61 ["TextLabel"]
      681 DUPTABLE                         R26 K127 [{["BorderSizePixel"] = 0, ["RichText"] = True, ["Text"], ["BackgroundTransparency"] = 1, ["AutomaticSize"], ["TextTruncate"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["Position"]}]
      682 SETTABLEKS                       R15 R26 K59 ["Text"]
      684 GETIMPORT                        R27 K122 [Enum.AutomaticSize.XY]
      686 SETTABLEKS                       R27 R26 K119 ["AutomaticSize"]
      688 GETIMPORT                        R27 K129 [Enum.TextTruncate.AtEnd]
      690 SETTABLEKS                       R27 R26 K126 ["TextTruncate"]
      692 GETTABLEKS                       R27 R5 K130 ["dimmedTextColor"]
      694 SETTABLEKS                       R27 R26 K62 ["TextColor3"]
      696 GETUPVAL                         R27 4
      697 GETTABLEKS                       R27 R27 K77 ["FONT"]
      699 SETTABLEKS                       R27 R26 K63 ["Font"]
      701 GETUPVAL                         R27 4
      702 GETTABLEKS                       R27 R27 K78 ["FONT_SIZE_LARGE"]
      704 SETTABLEKS                       R27 R26 K64 ["TextSize"]
      706 GETIMPORT                        R27 K81 [Enum.TextXAlignment.Left]
      708 SETTABLEKS                       R27 R26 K66 ["TextXAlignment"]
      710 GETIMPORT                        R27 K83 [Enum.TextYAlignment.Top]
      712 SETTABLEKS                       R27 R26 K67 ["TextYAlignment"]
      714 GETIMPORT                        R27 K43 [UDim2.new]
      716 LOADN                            R28 0
      717 LOADN                            R29 2
      718 LOADN                            R30 0
      719 LOADN                            R31 2
      720 CALL                             R27 4 1
      721 SETTABLEKS                       R27 R26 K65 ["Position"]
      723 CALL                             R24 2 1
      724 SETTABLEKS                       R24 R23 K123 ["Created"]
      726 CALL                             R20 3 1
      727 SETTABLEKS                       R20 R19 K105 ["CreatedFrame"]
      729 GETUPVAL                         R21 7
      730 CALL                             R21 0 1
      731 JUMPIFNOT                        R21 ; [+7]
      732 NAMECALL                         R22 R11 K58 ["getNextOrder"]
      734 CALL                             R22 1 -1
      735 NAMECALL                         R20 R0 K131 ["createModerationWarning"]
      737 CALL                             R20 -1 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R20
      740 SETTABLEKS                       R20 R19 K106 ["ModerationWarning"]
      742 GETUPVAL                         R20 2
      743 GETTABLEKS                       R20 R20 K29 ["createElement"]
      745 LOADK                            R21 K55 ["Frame"]
      746 DUPTABLE                         R22 K132 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      747 NAMECALL                         R23 R11 K58 ["getNextOrder"]
      749 CALL                             R23 1 1
      750 SETTABLEKS                       R23 R22 K30 ["LayoutOrder"]
      752 GETIMPORT                        R23 K43 [UDim2.new]
      754 LOADN                            R24 1
      755 LOADN                            R25 0
      756 LOADK                            R26 K133 [0.9]
      757 LOADN                            R27 0
      758 CALL                             R23 4 1
      759 SETTABLEKS                       R23 R22 K37 ["Size"]
      761 DUPTABLE                         R23 K47 [{"Container"}]
      762 JUMPIFEQKN                       R8 K28 [-1] ; [+39]
      764 GETUPVAL                         R24 2
      765 GETTABLEKS                       R24 R24 K29 ["createElement"]
      767 LOADK                            R25 K48 ["ImageButton"]
      768 NEWTABLE                         R26 4 0
      770 GETIMPORT                        R27 K43 [UDim2.new]
      772 LOADN                            R28 1
      773 LOADN                            R29 0
      774 LOADN                            R30 1
      775 LOADN                            R31 0
      776 CALL                             R27 4 1
      777 SETTABLEKS                       R27 R26 K37 ["Size"]
      779 GETIMPORT                        R27 K122 [Enum.AutomaticSize.XY]
      781 SETTABLEKS                       R27 R26 K119 ["AutomaticSize"]
      783 LOADN                            R27 1
      784 SETTABLEKS                       R27 R26 K49 ["BackgroundTransparency"]
      786 GETUPVAL                         R27 2
      787 GETTABLEKS                       R27 R27 K50 ["Event"]
      789 GETTABLEKS                       R27 R27 K51 ["Activated"]
      791 GETTABLEKS                       R28 R0 K52 ["onClickOut"]
      793 SETTABLE                         R28 R26 R27
      794 DUPTABLE                         R27 K135 [{"DescriptionComponent"}]
      795 NAMECALL                         R28 R0 K136 ["createDescriptionComponent"]
      797 CALL                             R28 1 1
      798 SETTABLEKS                       R28 R27 K134 ["DescriptionComponent"]
      800 CALL                             R24 3 1
      801 JUMP                             ; [+3]
      802 NAMECALL                         R24 R0 K136 ["createDescriptionComponent"]
      804 CALL                             R24 1 1
      805 SETTABLEKS                       R24 R23 K46 ["Container"]
      807 CALL                             R20 3 1
      808 SETTABLEKS                       R20 R19 K107 ["DescriptionFrame"]
      810 CALL                             R16 3 -1
      811 RETURN                           R16 -1
      812 GETTABLEKS                       R13 R1 K26 ["ColumnIndex"]
      814 GETUPVAL                         R14 1
      815 GETTABLEKS                       R14 R14 K137 ["Restore"]
      817 JUMPIFNOTEQ                      R13 R14 ; [+139]
      819 JUMPIFEQ                         R7 R2 ; [+2]
      821 LOADB                            R13 0 +1
      822 LOADB                            R13 1
      823 JUMPIFEQ                         R2 R6 ; [+2]
      825 LOADB                            R14 0 +1
      826 LOADB                            R14 1
      827 GETUPVAL                         R15 2
      828 GETTABLEKS                       R15 R15 K29 ["createElement"]
      830 GETUPVAL                         R16 3
      831 DUPTABLE                         R17 K139 [{["LayoutOrder"], ["Padding"] = 5, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True, ["Layout"]}]
      832 GETTABLEKS                       R18 R1 K26 ["ColumnIndex"]
      834 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      836 SETTABLEKS                       R9 R17 K34 ["BackgroundColor3"]
      838 GETTABLEKS                       R18 R3 K41 ["Border"]
      840 SETTABLEKS                       R18 R17 K36 ["BorderColor3"]
      842 GETIMPORT                        R18 K43 [UDim2.new]
      844 GETTABLEKS                       R19 R4 K44 ["Scale"]
      846 GETTABLEKS                       R20 R4 K45 ["Offset"]
      848 LOADN                            R21 1
      849 LOADN                            R22 0
      850 CALL                             R18 4 1
      851 SETTABLEKS                       R18 R17 K37 ["Size"]
      853 GETIMPORT                        R18 K115 [Enum.FillDirection.Vertical]
      855 SETTABLEKS                       R18 R17 K138 ["Layout"]
      857 DUPTABLE                         R18 K141 [{"CheckboxContainer"}]
      858 JUMPIFEQKN                       R8 K28 [-1] ; [+75]
      860 GETUPVAL                         R19 2
      861 GETTABLEKS                       R19 R19 K29 ["createElement"]
      863 LOADK                            R20 K48 ["ImageButton"]
      864 NEWTABLE                         R21 4 0
      866 GETIMPORT                        R22 K43 [UDim2.new]
      868 LOADN                            R23 1
      869 LOADN                            R24 0
      870 LOADN                            R25 1
      871 LOADN                            R26 0
      872 CALL                             R22 4 1
      873 SETTABLEKS                       R22 R21 K37 ["Size"]
      875 LOADN                            R22 1
      876 SETTABLEKS                       R22 R21 K49 ["BackgroundTransparency"]
      878 GETUPVAL                         R22 2
      879 GETTABLEKS                       R22 R22 K50 ["Event"]
      881 GETTABLEKS                       R22 R22 K51 ["Activated"]
      883 GETTABLEKS                       R23 R0 K52 ["onClickOut"]
      885 SETTABLE                         R23 R21 R22
      886 DUPTABLE                         R22 K142 [{"Pane"}]
      887 GETUPVAL                         R23 2
      888 GETTABLEKS                       R23 R23 K29 ["createElement"]
      890 GETUPVAL                         R24 3
      891 DUPTABLE                         R25 K143 [{["LayoutOrder"], ["Size"], ["ClipsDescendants"] = True, ["Layout"]}]
      892 GETTABLEKS                       R26 R1 K26 ["ColumnIndex"]
      894 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      896 GETIMPORT                        R26 K145 [UDim2.fromScale]
      898 LOADN                            R27 1
      899 LOADN                            R28 1
      900 CALL                             R26 2 1
      901 SETTABLEKS                       R26 R25 K37 ["Size"]
      903 GETIMPORT                        R26 K115 [Enum.FillDirection.Vertical]
      905 SETTABLEKS                       R26 R25 K138 ["Layout"]
      907 DUPTABLE                         R26 K147 [{"Checkbox"}]
      908 GETUPVAL                         R27 2
      909 GETTABLEKS                       R27 R27 K29 ["createElement"]
      911 GETUPVAL                         R28 9
      912 DUPTABLE                         R29 K152 [{"Key", "Disabled", "OnClick", "Checked"}]
      913 SETTABLEKS                       R12 R29 K148 ["Key"]
      915 SETTABLEKS                       R14 R29 K149 ["Disabled"]
      917 NEWCLOSURE                       R30 P1
      918 CAPTURE                          VAL R0
      919 CAPTURE                          VAL R2
      920 CAPTURE                          VAL R14
      921 CAPTURE                          VAL R13
      922 SETTABLEKS                       R30 R29 K150 ["OnClick"]
      924 SETTABLEKS                       R13 R29 K151 ["Checked"]
      926 CALL                             R27 2 1
      927 SETTABLEKS                       R27 R26 K146 ["Checkbox"]
      929 CALL                             R23 3 1
      930 SETTABLEKS                       R23 R22 K98 ["Pane"]
      932 CALL                             R19 3 1
      933 JUMP                             ; [+19]
      934 GETUPVAL                         R19 2
      935 GETTABLEKS                       R19 R19 K29 ["createElement"]
      937 GETUPVAL                         R20 9
      938 DUPTABLE                         R21 K152 [{"Key", "Disabled", "OnClick", "Checked"}]
      939 SETTABLEKS                       R12 R21 K148 ["Key"]
      941 SETTABLEKS                       R14 R21 K149 ["Disabled"]
      943 NEWCLOSURE                       R22 P2
      944 CAPTURE                          VAL R0
      945 CAPTURE                          VAL R2
      946 CAPTURE                          VAL R14
      947 CAPTURE                          VAL R13
      948 SETTABLEKS                       R22 R21 K150 ["OnClick"]
      950 SETTABLEKS                       R13 R21 K151 ["Checked"]
      952 CALL                             R19 2 1
      953 SETTABLEKS                       R19 R18 K140 ["CheckboxContainer"]
      955 CALL                             R15 3 -1
      956 RETURN                           R15 -1
      957 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["withContext"]
       33 GETTABLEKS                       R8 R5 K13 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["formatLocalDateTime"]
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R0 K15 ["Src"]
       41 GETTABLEKS                       R10 R10 K13 ["Util"]
       43 GETTABLEKS                       R10 R10 K16 ["LayoutOrderIterator"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R0 K15 ["Src"]
       48 GETTABLEKS                       R10 R10 K13 ["Util"]
       50 GETTABLEKS                       R11 R5 K13 ["Util"]
       52 GETTABLEKS                       R11 R11 K17 ["StyleModifier"]
       54 GETIMPORT                        R12 K6 [require]
       56 GETTABLEKS                       R13 R10 K18 ["Constants"]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K6 [require]
       61 GETTABLEKS                       R14 R10 K19 ["AssetConfigConstants"]
       63 CALL                             R13 1 1
       64 GETTABLEKS                       R14 R5 K20 ["UI"]
       66 GETTABLEKS                       R15 R14 K21 ["HoverArea"]
       68 GETTABLEKS                       R16 R14 K22 ["Pane"]
       70 GETTABLEKS                       R17 R14 K23 ["LinkText"]
       72 GETTABLEKS                       R18 R14 K24 ["Checkbox"]
       74 GETTABLEKS                       R19 R14 K25 ["TextInput"]
       76 GETTABLEKS                       R20 R14 K26 ["Button"]
       78 GETIMPORT                        R21 K6 [require]
       80 GETTABLEKS                       R22 R0 K15 ["Src"]
       82 GETTABLEKS                       R22 R22 K13 ["Util"]
       84 GETTABLEKS                       R22 R22 K27 ["SharedFlags"]
       86 GETTABLEKS                       R22 R22 K28 ["getFFlagToolboxVersionControlNoteWarning"]
       88 CALL                             R21 1 1
       89 GETIMPORT                        R22 K6 [require]
       91 GETTABLEKS                       R23 R0 K15 ["Src"]
       93 GETTABLEKS                       R23 R23 K13 ["Util"]
       95 GETTABLEKS                       R23 R23 K27 ["SharedFlags"]
       97 GETTABLEKS                       R23 R23 K29 ["getFFlagToolboxDescriptionColumnClickable"]
       99 CALL                             R22 1 1
      100 GETIMPORT                        R23 K6 [require]
      102 GETTABLEKS                       R24 R0 K15 ["Src"]
      104 GETTABLEKS                       R24 R24 K30 ["Flags"]
      106 GETTABLEKS                       R24 R24 K31 ["getFFlagToolboxEnableExtendedVersioning"]
      108 CALL                             R23 1 1
      109 GETTABLEKS                       R24 R2 K32 ["PureComponent"]
      111 LOADK                            R26 K33 ["VersionsTableCell"]
      112 NAMECALL                         R24 R24 K34 ["extend"]
      114 CALL                             R24 2 1
      115 DUPTABLE                         R25 K41 [{["Version"] = 1, ["Description"] = 2, ["Restore"] = 3}]
      116 DUPCLOSURE                       R26 K42 [PROTO_4]
      117 CAPTURE                          VAL R23
      118 SETTABLEKS                       R26 R24 K43 ["init"]
      120 DUPCLOSURE                       R26 K44 [PROTO_5]
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R3
      124 DUPCLOSURE                       R27 K45 [PROTO_6]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R26
      128 SETTABLEKS                       R27 R24 K46 ["createModerationWarning"]
      130 DUPCLOSURE                       R27 K47 [PROTO_13]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R17
      141 SETTABLEKS                       R27 R24 K48 ["createDescriptionComponent"]
      143 DUPCLOSURE                       R27 K49 [PROTO_17]
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R25
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R18
      154 SETTABLEKS                       R27 R24 K50 ["render"]
      156 MOVE                             R27 R7
      157 DUPTABLE                         R28 K52 [{"Localization"}]
      158 GETTABLEKS                       R29 R6 K51 ["Localization"]
      160 SETTABLEKS                       R29 R28 K51 ["Localization"]
      162 CALL                             R27 1 1
      163 MOVE                             R28 R24
      164 CALL                             R27 1 1
      165 MOVE                             R24 R27
      166 DUPTABLE                         R27 K55 [{"Enum", "Component"}]
      167 SETTABLEKS                       R25 R27 K53 ["Enum"]
      169 SETTABLEKS                       R24 R27 K54 ["Component"]
      171 RETURN                           R27 1
