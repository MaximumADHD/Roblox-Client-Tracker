PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K5 [{[1] = "gui-object-defaults", ["priority"] = -1, ["properties"]}]
        3 DUPTABLE                         R3 K8 [{["BackgroundTransparency"] = 1}]
        4 SETTABLEKS                       R3 R2 K4 ["properties"]
        6 DUPTABLE                         R3 K10 [{[1] = "text-defaults", ["priority"] = -1, ["properties"]}]
        7 DUPTABLE                         R4 K12 [{"Font"}]
        8 GETTABLEKS                       R5 R0 K13 ["Typography"]
       10 GETTABLEKS                       R5 R5 K14 ["BodyLarge"]
       12 GETTABLEKS                       R5 R5 K11 ["Font"]
       14 SETTABLEKS                       R5 R4 K11 ["Font"]
       16 SETTABLEKS                       R4 R3 K4 ["properties"]
       18 SETLIST                          R1 R2 2 [1]
       20 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K5 [{[1] = "text-size-defaults", ["priority"] = -1, ["properties"]}]
        3 DUPTABLE                         R3 K8 [{"TextSize", "LineHeight"}]
        4 GETTABLEKS                       R4 R0 K9 ["Typography"]
        6 GETTABLEKS                       R4 R4 K10 ["BodyLarge"]
        8 GETTABLEKS                       R4 R4 K11 ["FontSize"]
       10 SETTABLEKS                       R4 R3 K6 ["TextSize"]
       12 GETTABLEKS                       R4 R0 K9 ["Typography"]
       14 GETTABLEKS                       R4 R4 K10 ["BodyLarge"]
       16 GETTABLEKS                       R4 R4 K7 ["LineHeight"]
       18 SETTABLEKS                       R4 R3 K7 ["LineHeight"]
       20 SETTABLEKS                       R3 R2 K4 ["properties"]
       22 SETLIST                          R1 R2 1 [1]
       24 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K5 [{[1] = "text-color-defaults", ["priority"] = -1, ["properties"]}]
        3 DUPTABLE                         R3 K8 [{"TextColor3", "TextTransparency"}]
        4 GETTABLEKS                       R4 R0 K9 ["Color"]
        6 GETTABLEKS                       R4 R4 K10 ["Content"]
        8 GETTABLEKS                       R4 R4 K11 ["Default"]
       10 GETTABLEKS                       R4 R4 K12 ["Color3"]
       12 SETTABLEKS                       R4 R3 K6 ["TextColor3"]
       14 GETTABLEKS                       R4 R0 K9 ["Color"]
       16 GETTABLEKS                       R4 R4 K10 ["Content"]
       18 GETTABLEKS                       R4 R4 K11 ["Default"]
       20 GETTABLEKS                       R4 R4 K13 ["Transparency"]
       22 SETTABLEKS                       R4 R3 K7 ["TextTransparency"]
       24 SETTABLEKS                       R3 R2 K4 ["properties"]
       26 SETLIST                          R1 R2 1 [1]
       28 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{[1] = "x-default-transparency", ["properties"]}]
        3 DUPTABLE                         R2 K6 [{["BackgroundTransparency"] = 0}]
        4 SETTABLEKS                       R2 R1 K2 ["properties"]
        6 SETLIST                          R0 R1 1 [1]
        8 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K5 [{[1] = "row", ["pseudo"] = "UIListLayout", ["properties"]}]
        3 DUPTABLE                         R2 K8 [{"FillDirection", "SortOrder"}]
        4 GETIMPORT                        R3 K11 [Enum.FillDirection.Horizontal]
        6 SETTABLEKS                       R3 R2 K6 ["FillDirection"]
        8 GETIMPORT                        R3 K13 [Enum.SortOrder.LayoutOrder]
       10 SETTABLEKS                       R3 R2 K7 ["SortOrder"]
       12 SETTABLEKS                       R2 R1 K4 ["properties"]
       14 DUPTABLE                         R2 K15 [{[1] = "col", ["pseudo"] = "UIListLayout", ["properties"]}]
       15 DUPTABLE                         R3 K8 [{"FillDirection", "SortOrder"}]
       16 GETIMPORT                        R4 K17 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R4 R3 K6 ["FillDirection"]
       20 GETIMPORT                        R4 K13 [Enum.SortOrder.LayoutOrder]
       22 SETTABLEKS                       R4 R3 K7 ["SortOrder"]
       24 SETTABLEKS                       R3 R2 K4 ["properties"]
       26 SETLIST                          R0 R1 2 [1]
       28 NEWTABLE                         R1 0 6
       30 DUPTABLE                         R2 K19 [{[1] = "align-x-left", ["pseudo"] = "UIListLayout", ["properties"]}]
       31 DUPTABLE                         R3 K21 [{"HorizontalAlignment"}]
       32 GETIMPORT                        R4 K23 [Enum.HorizontalAlignment.Left]
       34 SETTABLEKS                       R4 R3 K20 ["HorizontalAlignment"]
       36 SETTABLEKS                       R3 R2 K4 ["properties"]
       38 DUPTABLE                         R3 K25 [{[1] = "align-x-center", ["pseudo"] = "UIListLayout", ["properties"]}]
       39 DUPTABLE                         R4 K21 [{"HorizontalAlignment"}]
       40 GETIMPORT                        R5 K27 [Enum.HorizontalAlignment.Center]
       42 SETTABLEKS                       R5 R4 K20 ["HorizontalAlignment"]
       44 SETTABLEKS                       R4 R3 K4 ["properties"]
       46 DUPTABLE                         R4 K29 [{[1] = "align-x-right", ["pseudo"] = "UIListLayout", ["properties"]}]
       47 DUPTABLE                         R5 K21 [{"HorizontalAlignment"}]
       48 GETIMPORT                        R6 K31 [Enum.HorizontalAlignment.Right]
       50 SETTABLEKS                       R6 R5 K20 ["HorizontalAlignment"]
       52 SETTABLEKS                       R5 R4 K4 ["properties"]
       54 DUPTABLE                         R5 K33 [{[1] = "align-y-top", ["pseudo"] = "UIListLayout", ["properties"]}]
       55 DUPTABLE                         R6 K35 [{"VerticalAlignment"}]
       56 GETIMPORT                        R7 K37 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R7 R6 K34 ["VerticalAlignment"]
       60 SETTABLEKS                       R6 R5 K4 ["properties"]
       62 DUPTABLE                         R6 K39 [{[1] = "align-y-center", ["pseudo"] = "UIListLayout", ["properties"]}]
       63 DUPTABLE                         R7 K35 [{"VerticalAlignment"}]
       64 GETIMPORT                        R8 K40 [Enum.VerticalAlignment.Center]
       66 SETTABLEKS                       R8 R7 K34 ["VerticalAlignment"]
       68 SETTABLEKS                       R7 R6 K4 ["properties"]
       70 DUPTABLE                         R7 K42 [{[1] = "align-y-bottom", ["pseudo"] = "UIListLayout", ["properties"]}]
       71 DUPTABLE                         R8 K35 [{"VerticalAlignment"}]
       72 GETIMPORT                        R9 K44 [Enum.VerticalAlignment.Bottom]
       74 SETTABLEKS                       R9 R8 K34 ["VerticalAlignment"]
       76 SETTABLEKS                       R8 R7 K4 ["properties"]
       78 SETLIST                          R1 R2 6 [1]
       80 NEWTABLE                         R2 0 2
       82 DUPTABLE                         R3 K46 [{[1] = "wrap", ["pseudo"] = "UIListLayout", ["properties"]}]
       83 DUPTABLE                         R4 K49 [{["Wraps"] = True}]
       84 SETTABLEKS                       R4 R3 K4 ["properties"]
       86 DUPTABLE                         R4 K51 [{[1] = "no-wrap", ["pseudo"] = "UIListLayout", ["properties"]}]
       87 DUPTABLE                         R5 K53 [{["Wraps"] = False}]
       88 SETTABLEKS                       R5 R4 K4 ["properties"]
       90 SETLIST                          R2 R3 2 [1]
       92 NEWTABLE                         R3 0 0
       94 DUPTABLE                         R4 K59 [{"none", "fill", "around", "between", "evenly"}]
       95 GETIMPORT                        R5 K62 [Enum.UIFlexAlignment.None]
       97 SETTABLEKS                       R5 R4 K54 ["none"]
       99 GETIMPORT                        R5 K64 [Enum.UIFlexAlignment.Fill]
      101 SETTABLEKS                       R5 R4 K55 ["fill"]
      103 GETIMPORT                        R5 K66 [Enum.UIFlexAlignment.SpaceAround]
      105 SETTABLEKS                       R5 R4 K56 ["around"]
      107 GETIMPORT                        R5 K68 [Enum.UIFlexAlignment.SpaceBetween]
      109 SETTABLEKS                       R5 R4 K57 ["between"]
      111 GETIMPORT                        R5 K70 [Enum.UIFlexAlignment.SpaceEvenly]
      113 SETTABLEKS                       R5 R4 K58 ["evenly"]
      115 MOVE                             R5 R4
      116 LOADNIL                          R6
      117 LOADNIL                          R7
      118 FORGPREP                         R5
      119 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      120 LOADK                            R14 K72 ["flex-%*"]
      121 MOVE                             R16 R8
      122 NAMECALL                         R14 R14 K73 ["format"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 SETTABLEKS                       R13 R12 K0 ["tag"]
      128 DUPTABLE                         R13 K76 [{"HorizontalFlex", "VerticalFlex"}]
      129 SETTABLEKS                       R9 R13 K74 ["HorizontalFlex"]
      131 SETTABLEKS                       R9 R13 K75 ["VerticalFlex"]
      133 SETTABLEKS                       R13 R12 K4 ["properties"]
      135 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      137 MOVE                             R11 R3
      138 GETIMPORT                        R10 K79 [table.insert]
      140 CALL                             R10 2 0
      141 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      142 LOADK                            R14 K80 ["flex-x-%*"]
      143 MOVE                             R16 R8
      144 NAMECALL                         R14 R14 K73 ["format"]
      146 CALL                             R14 2 1
      147 MOVE                             R13 R14
      148 SETTABLEKS                       R13 R12 K0 ["tag"]
      150 DUPTABLE                         R13 K81 [{"HorizontalFlex"}]
      151 SETTABLEKS                       R9 R13 K74 ["HorizontalFlex"]
      153 SETTABLEKS                       R13 R12 K4 ["properties"]
      155 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      157 MOVE                             R11 R3
      158 GETIMPORT                        R10 K79 [table.insert]
      160 CALL                             R10 2 0
      161 DUPTABLE                         R12 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      162 LOADK                            R14 K82 ["flex-y-%*"]
      163 MOVE                             R16 R8
      164 NAMECALL                         R14 R14 K73 ["format"]
      166 CALL                             R14 2 1
      167 MOVE                             R13 R14
      168 SETTABLEKS                       R13 R12 K0 ["tag"]
      170 DUPTABLE                         R13 K83 [{"VerticalFlex"}]
      171 SETTABLEKS                       R9 R13 K75 ["VerticalFlex"]
      173 SETTABLEKS                       R13 R12 K4 ["properties"]
      175 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      177 MOVE                             R11 R3
      178 GETIMPORT                        R10 K79 [table.insert]
      180 CALL                             R10 2 0
      181 FORGLOOP                         R5 2 ; [-63]
      183 NEWTABLE                         R5 8 0
      185 GETIMPORT                        R6 K86 [Enum.ItemLineAlignment.Automatic]
      187 SETTABLEKS                       R6 R5 K87 ["auto"]
      189 GETIMPORT                        R6 K89 [Enum.ItemLineAlignment.Start]
      191 SETTABLEKS                       R6 R5 K90 ["start"]
      193 GETIMPORT                        R6 K91 [Enum.ItemLineAlignment.Center]
      195 SETTABLEKS                       R6 R5 K92 ["center"]
      197 GETIMPORT                        R6 K94 [Enum.ItemLineAlignment.End]
      199 SETTABLEKS                       R6 R5 K95 ["end"]
      201 GETIMPORT                        R6 K97 [Enum.ItemLineAlignment.Stretch]
      203 SETTABLEKS                       R6 R5 K98 ["stretch"]
      205 NEWTABLE                         R6 0 0
      207 MOVE                             R7 R5
      208 LOADNIL                          R8
      209 LOADNIL                          R9
      210 FORGPREP                         R7
      211 DUPTABLE                         R14 K71 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
      212 LOADK                            R16 K99 ["items-%*"]
      213 MOVE                             R18 R10
      214 NAMECALL                         R16 R16 K73 ["format"]
      216 CALL                             R16 2 1
      217 MOVE                             R15 R16
      218 SETTABLEKS                       R15 R14 K0 ["tag"]
      220 DUPTABLE                         R15 K100 [{"ItemLineAlignment"}]
      221 SETTABLEKS                       R11 R15 K84 ["ItemLineAlignment"]
      223 SETTABLEKS                       R15 R14 K4 ["properties"]
      225 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      227 MOVE                             R13 R6
      228 GETIMPORT                        R12 K79 [table.insert]
      230 CALL                             R12 2 0
      231 FORGLOOP                         R7 2 ; [-21]
      233 GETUPVAL                         R8 0
      234 GETTABLEKS                       R8 R8 K101 ["FoundationMigrateCryoToDash"]
      236 JUMPIFNOT                        R8 ; [+10]
      237 GETUPVAL                         R7 1
      238 GETTABLEKS                       R7 R7 K102 ["joinArrays"]
      240 MOVE                             R8 R0
      241 MOVE                             R9 R1
      242 MOVE                             R10 R2
      243 MOVE                             R11 R3
      244 MOVE                             R12 R6
      245 CALL                             R7 5 1
      246 RETURN                           R7 1
      247 GETUPVAL                         R7 2
      248 GETTABLEKS                       R7 R7 K103 ["List"]
      250 GETTABLEKS                       R7 R7 K104 ["join"]
      252 MOVE                             R8 R0
      253 MOVE                             R9 R1
      254 MOVE                             R10 R2
      255 MOVE                             R11 R3
      256 MOVE                             R12 R6
      257 CALL                             R7 5 1
      258 RETURN                           R7 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K4 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
        7 LOADK                            R12 K5 ["gap-%*"]
        8 GETTABLEKS                       R14 R7 K6 ["name"]
       10 NAMECALL                         R12 R12 K7 ["format"]
       12 CALL                             R12 2 1
       13 MOVE                             R11 R12
       14 SETTABLEKS                       R11 R10 K0 ["tag"]
       16 DUPTABLE                         R11 K9 [{"Padding"}]
       17 GETTABLEKS                       R12 R7 K10 ["size"]
       19 SETTABLEKS                       R12 R11 K8 ["Padding"]
       21 SETTABLEKS                       R11 R10 K3 ["properties"]
       23 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       25 MOVE                             R9 R2
       26 GETIMPORT                        R8 K13 [table.insert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R3 2 ; [-24]
       31 NEWTABLE                         R3 0 0
       33 MOVE                             R4 R1
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 DUPTABLE                         R11 K4 [{[1], ["pseudo"] = "UIListLayout", ["properties"]}]
       38 LOADK                            R13 K14 ["gutter-%*"]
       39 GETTABLEKS                       R15 R8 K6 ["name"]
       41 NAMECALL                         R13 R13 K7 ["format"]
       43 CALL                             R13 2 1
       44 MOVE                             R12 R13
       45 SETTABLEKS                       R12 R11 K0 ["tag"]
       47 DUPTABLE                         R12 K9 [{"Padding"}]
       48 GETTABLEKS                       R13 R8 K10 ["size"]
       50 SETTABLEKS                       R13 R12 K8 ["Padding"]
       52 SETTABLEKS                       R12 R11 K3 ["properties"]
       54 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       56 MOVE                             R10 R3
       57 GETIMPORT                        R9 K13 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R4 2 ; [-24]
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K15 ["FoundationMigrateCryoToDash"]
       65 JUMPIFNOT                        R5 ; [+7]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K16 ["joinArrays"]
       69 MOVE                             R5 R2
       70 MOVE                             R6 R3
       71 CALL                             R4 2 1
       72 RETURN                           R4 1
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K17 ["List"]
       76 GETTABLEKS                       R4 R4 K18 ["join"]
       78 MOVE                             R5 R2
       79 MOVE                             R6 R3
       80 CALL                             R4 2 1
       81 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K5 [{[1] = "grow", ["pseudo"] = "UIFlexItem", ["properties"]}]
        3 DUPTABLE                         R2 K7 [{"FlexMode"}]
        4 GETIMPORT                        R3 K11 [Enum.UIFlexMode.Grow]
        6 SETTABLEKS                       R3 R2 K6 ["FlexMode"]
        8 SETTABLEKS                       R2 R1 K4 ["properties"]
       10 DUPTABLE                         R2 K13 [{[1] = "shrink", ["pseudo"] = "UIFlexItem", ["properties"]}]
       11 DUPTABLE                         R3 K7 [{"FlexMode"}]
       12 GETIMPORT                        R4 K15 [Enum.UIFlexMode.Shrink]
       14 SETTABLEKS                       R4 R3 K6 ["FlexMode"]
       16 SETTABLEKS                       R3 R2 K4 ["properties"]
       18 DUPTABLE                         R3 K17 [{[1] = "fill", ["pseudo"] = "UIFlexItem", ["properties"]}]
       19 DUPTABLE                         R4 K7 [{"FlexMode"}]
       20 GETIMPORT                        R5 K19 [Enum.UIFlexMode.Fill]
       22 SETTABLEKS                       R5 R4 K6 ["FlexMode"]
       24 SETTABLEKS                       R4 R3 K4 ["properties"]
       26 SETLIST                          R0 R1 3 [1]
       28 NEWTABLE                         R1 0 5
       30 LOADN                            R2 1
       31 LOADN                            R3 2
       32 LOADN                            R4 3
       33 LOADN                            R5 4
       34 LOADN                            R6 5
       35 SETLIST                          R1 R2 5 [1]
       37 NEWTABLE                         R2 0 0
       39 NEWTABLE                         R3 0 0
       41 MOVE                             R4 R1
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 FORGPREP                         R4
       45 DUPTABLE                         R11 K20 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
       46 LOADK                            R13 K21 ["grow-%*"]
       47 MOVE                             R15 R7
       48 NAMECALL                         R13 R13 K22 ["format"]
       50 CALL                             R13 2 1
       51 MOVE                             R12 R13
       52 SETTABLEKS                       R12 R11 K0 ["tag"]
       54 DUPTABLE                         R12 K24 [{"FlexMode", "GrowRatio"}]
       55 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
       57 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       59 SETTABLEKS                       R7 R12 K23 ["GrowRatio"]
       61 SETTABLEKS                       R12 R11 K4 ["properties"]
       63 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       65 MOVE                             R10 R2
       66 GETIMPORT                        R9 K29 [table.insert]
       68 CALL                             R9 2 0
       69 DUPTABLE                         R11 K20 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
       70 LOADK                            R13 K30 ["shrink-%*"]
       71 MOVE                             R15 R7
       72 NAMECALL                         R13 R13 K22 ["format"]
       74 CALL                             R13 2 1
       75 MOVE                             R12 R13
       76 SETTABLEKS                       R12 R11 K0 ["tag"]
       78 DUPTABLE                         R12 K32 [{"FlexMode", "ShrinkRatio"}]
       79 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
       81 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       83 SETTABLEKS                       R7 R12 K31 ["ShrinkRatio"]
       85 SETTABLEKS                       R12 R11 K4 ["properties"]
       87 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       89 MOVE                             R10 R3
       90 GETIMPORT                        R9 K29 [table.insert]
       92 CALL                             R9 2 0
       93 FORGLOOP                         R4 1 ; [-49]
       95 NEWTABLE                         R4 8 0
       97 GETIMPORT                        R5 K35 [Enum.ItemLineAlignment.Automatic]
       99 SETTABLEKS                       R5 R4 K36 ["auto"]
      101 GETIMPORT                        R5 K38 [Enum.ItemLineAlignment.Start]
      103 SETTABLEKS                       R5 R4 K39 ["start"]
      105 GETIMPORT                        R5 K41 [Enum.ItemLineAlignment.Center]
      107 SETTABLEKS                       R5 R4 K42 ["center"]
      109 GETIMPORT                        R5 K44 [Enum.ItemLineAlignment.End]
      111 SETTABLEKS                       R5 R4 K45 ["end"]
      113 GETIMPORT                        R5 K47 [Enum.ItemLineAlignment.Stretch]
      115 SETTABLEKS                       R5 R4 K48 ["stretch"]
      117 NEWTABLE                         R5 0 0
      119 MOVE                             R6 R4
      120 LOADNIL                          R7
      121 LOADNIL                          R8
      122 FORGPREP                         R6
      123 DUPTABLE                         R13 K20 [{[1], ["pseudo"] = "UIFlexItem", ["properties"]}]
      124 LOADK                            R15 K49 ["self-%*"]
      125 MOVE                             R17 R9
      126 NAMECALL                         R15 R15 K22 ["format"]
      128 CALL                             R15 2 1
      129 MOVE                             R14 R15
      130 SETTABLEKS                       R14 R13 K0 ["tag"]
      132 DUPTABLE                         R14 K50 [{"ItemLineAlignment"}]
      133 SETTABLEKS                       R10 R14 K33 ["ItemLineAlignment"]
      135 SETTABLEKS                       R14 R13 K4 ["properties"]
      137 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      139 MOVE                             R12 R5
      140 GETIMPORT                        R11 K29 [table.insert]
      142 CALL                             R11 2 0
      143 FORGLOOP                         R6 2 ; [-21]
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R7 R7 K51 ["FoundationMigrateCryoToDash"]
      148 JUMPIFNOT                        R7 ; [+9]
      149 GETUPVAL                         R6 1
      150 GETTABLEKS                       R6 R6 K52 ["joinArrays"]
      152 MOVE                             R7 R0
      153 MOVE                             R8 R2
      154 MOVE                             R9 R3
      155 MOVE                             R10 R5
      156 CALL                             R6 4 1
      157 RETURN                           R6 1
      158 GETUPVAL                         R6 2
      159 GETTABLEKS                       R6 R6 K53 ["List"]
      161 GETTABLEKS                       R6 R6 K54 ["join"]
      163 MOVE                             R7 R0
      164 MOVE                             R8 R2
      165 MOVE                             R9 R3
      166 MOVE                             R10 R5
      167 CALL                             R6 4 1
      168 RETURN                           R6 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K4 [{[1], ["pseudo"] = "UICorner", ["properties"]}]
        7 LOADK                            R11 K5 ["radius-%*"]
        8 GETTABLEKS                       R13 R6 K6 ["name"]
       10 NAMECALL                         R11 R11 K7 ["format"]
       12 CALL                             R11 2 1
       13 MOVE                             R10 R11
       14 SETTABLEKS                       R10 R9 K0 ["tag"]
       16 DUPTABLE                         R10 K9 [{"CornerRadius"}]
       17 GETTABLEKS                       R11 R6 K10 ["size"]
       19 SETTABLEKS                       R11 R10 K8 ["CornerRadius"]
       21 SETTABLEKS                       R10 R9 K3 ["properties"]
       23 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       25 MOVE                             R8 R1
       26 GETIMPORT                        R7 K13 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 2 ; [-24]
       31 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"tag", "properties"}]
        7 LOADK                            R11 K3 ["size-%*"]
        8 GETTABLEKS                       R13 R6 K4 ["name"]
       10 NAMECALL                         R11 R11 K5 ["format"]
       12 CALL                             R11 2 1
       13 MOVE                             R10 R11
       14 SETTABLEKS                       R10 R9 K0 ["tag"]
       16 DUPTABLE                         R10 K7 [{"Size"}]
       17 GETIMPORT                        R11 K10 [UDim2.new]
       19 GETTABLEKS                       R12 R6 K11 ["size"]
       21 GETTABLEKS                       R13 R6 K11 ["size"]
       23 CALL                             R11 2 1
       24 SETTABLEKS                       R11 R10 K6 ["Size"]
       26 SETTABLEKS                       R10 R9 K1 ["properties"]
       28 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       30 MOVE                             R8 R1
       31 GETIMPORT                        R7 K14 [table.insert]
       33 CALL                             R7 2 0
       34 MOVE                             R7 R0
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 DUPTABLE                         R14 K2 [{"tag", "properties"}]
       39 LOADK                            R16 K15 ["size-%*-%*"]
       40 GETTABLEKS                       R18 R6 K4 ["name"]
       42 GETTABLEKS                       R19 R11 K4 ["name"]
       44 NAMECALL                         R16 R16 K5 ["format"]
       46 CALL                             R16 3 1
       47 MOVE                             R15 R16
       48 SETTABLEKS                       R15 R14 K0 ["tag"]
       50 DUPTABLE                         R15 K7 [{"Size"}]
       51 GETIMPORT                        R16 K10 [UDim2.new]
       53 GETTABLEKS                       R17 R6 K11 ["size"]
       55 GETTABLEKS                       R18 R11 K11 ["size"]
       57 CALL                             R16 2 1
       58 SETTABLEKS                       R16 R15 K6 ["Size"]
       60 SETTABLEKS                       R15 R14 K1 ["properties"]
       62 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       64 MOVE                             R13 R1
       65 GETIMPORT                        R12 K14 [table.insert]
       67 CALL                             R12 2 0
       68 FORGLOOP                         R7 2 ; [-31]
       70 FORGLOOP                         R2 2 ; [-65]
       72 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["bg"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+32]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 DUPTABLE                         R15 K6 [{"tag", "properties"}]
       18 LOADK                            R17 K7 ["bg-%*"]
       19 MOVE                             R19 R11
       20 NAMECALL                         R17 R17 K8 ["format"]
       22 CALL                             R17 2 1
       23 MOVE                             R16 R17
       24 SETTABLEKS                       R16 R15 K4 ["tag"]
       26 DUPTABLE                         R16 K11 [{"BackgroundColor3", "BackgroundTransparency"}]
       27 GETTABLEKS                       R17 R12 K12 ["Color3"]
       29 SETTABLEKS                       R17 R16 K9 ["BackgroundColor3"]
       31 GETTABLEKS                       R17 R12 K13 ["Transparency"]
       33 SETTABLEKS                       R17 R16 K10 ["BackgroundTransparency"]
       35 SETTABLEKS                       R16 R15 K5 ["properties"]
       37 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       39 MOVE                             R14 R2
       40 GETIMPORT                        R13 K15 [table.insert]
       42 CALL                             R13 2 0
       43 FORGLOOP                         R8 2 ; [-27]
       45 FORGLOOP                         R3 2 ; [-40]
       47 MOVE                             R3 R1
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 DUPTABLE                         R10 K6 [{"tag", "properties"}]
       52 LOADK                            R12 K7 ["bg-%*"]
       53 MOVE                             R14 R6
       54 NAMECALL                         R12 R12 K8 ["format"]
       56 CALL                             R12 2 1
       57 MOVE                             R11 R12
       58 SETTABLEKS                       R11 R10 K4 ["tag"]
       60 DUPTABLE                         R11 K11 [{"BackgroundColor3", "BackgroundTransparency"}]
       61 GETTABLEKS                       R12 R7 K16 ["Background"]
       63 GETTABLEKS                       R12 R12 K12 ["Color3"]
       65 SETTABLEKS                       R12 R11 K9 ["BackgroundColor3"]
       67 GETTABLEKS                       R12 R7 K16 ["Background"]
       69 GETTABLEKS                       R12 R12 K13 ["Transparency"]
       71 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       73 SETTABLEKS                       R11 R10 K5 ["properties"]
       75 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       77 MOVE                             R9 R2
       78 GETIMPORT                        R8 K15 [table.insert]
       80 CALL                             R8 2 0
       81 FORGLOOP                         R3 2 ; [-31]
       83 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFEQKS                       R7 K1 ["none"] ; [+24]
       10 DUPTABLE                         R9 K6 [{["tag"], ["pseudo"] = "UIStroke", ["properties"]}]
       11 LOADK                            R11 K7 ["stroke-%*"]
       12 GETTABLEKS                       R13 R6 K0 ["name"]
       14 NAMECALL                         R11 R11 K8 ["format"]
       16 CALL                             R11 2 1
       17 MOVE                             R10 R11
       18 SETTABLEKS                       R10 R9 K2 ["tag"]
       20 DUPTABLE                         R10 K10 [{"Thickness"}]
       21 GETTABLEKS                       R11 R6 K11 ["size"]
       23 SETTABLEKS                       R11 R10 K9 ["Thickness"]
       25 SETTABLEKS                       R10 R9 K5 ["properties"]
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K14 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-28]
       35 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["stroke"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+32]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 DUPTABLE                         R15 K8 [{["tag"], ["pseudo"] = "UIStroke", ["properties"]}]
       18 LOADK                            R17 K9 ["stroke-%*"]
       19 MOVE                             R19 R11
       20 NAMECALL                         R17 R17 K10 ["format"]
       22 CALL                             R17 2 1
       23 MOVE                             R16 R17
       24 SETTABLEKS                       R16 R15 K4 ["tag"]
       26 DUPTABLE                         R16 K13 [{"Color", "Transparency"}]
       27 GETTABLEKS                       R17 R12 K14 ["Color3"]
       29 SETTABLEKS                       R17 R16 K11 ["Color"]
       31 GETTABLEKS                       R17 R12 K12 ["Transparency"]
       33 SETTABLEKS                       R17 R16 K12 ["Transparency"]
       35 SETTABLEKS                       R16 R15 K7 ["properties"]
       37 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       39 MOVE                             R14 R2
       40 GETIMPORT                        R13 K16 [table.insert]
       42 CALL                             R13 2 0
       43 FORGLOOP                         R8 2 ; [-27]
       45 FORGLOOP                         R3 2 ; [-40]
       47 MOVE                             R3 R1
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 DUPTABLE                         R10 K8 [{["tag"], ["pseudo"] = "UIStroke", ["properties"]}]
       52 LOADK                            R12 K9 ["stroke-%*"]
       53 MOVE                             R14 R6
       54 NAMECALL                         R12 R12 K10 ["format"]
       56 CALL                             R12 2 1
       57 MOVE                             R11 R12
       58 SETTABLEKS                       R11 R10 K4 ["tag"]
       60 DUPTABLE                         R11 K13 [{"Color", "Transparency"}]
       61 GETTABLEKS                       R12 R7 K17 ["Border"]
       63 GETTABLEKS                       R12 R12 K14 ["Color3"]
       65 SETTABLEKS                       R12 R11 K11 ["Color"]
       67 GETTABLEKS                       R12 R7 K17 ["Border"]
       69 GETTABLEKS                       R12 R12 K12 ["Transparency"]
       71 SETTABLEKS                       R12 R11 K12 ["Transparency"]
       73 SETTABLEKS                       R11 R10 K7 ["properties"]
       75 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       77 MOVE                             R9 R2
       78 GETIMPORT                        R8 K16 [table.insert]
       80 CALL                             R8 2 0
       81 FORGLOOP                         R3 2 ; [-31]
       83 RETURN                           R2 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.find]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R6
       10 LOADK                            R10 K3 ["content"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+40]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 DUPTABLE                         R15 K6 [{"tag", "properties"}]
       18 LOADK                            R17 K7 ["content-%*"]
       19 MOVE                             R19 R11
       20 NAMECALL                         R17 R17 K8 ["format"]
       22 CALL                             R17 2 1
       23 MOVE                             R16 R17
       24 SETTABLEKS                       R16 R15 K4 ["tag"]
       26 DUPTABLE                         R16 K13 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
       27 GETTABLEKS                       R17 R12 K14 ["Color3"]
       29 SETTABLEKS                       R17 R16 K9 ["ImageColor3"]
       31 GETTABLEKS                       R17 R12 K15 ["Transparency"]
       33 SETTABLEKS                       R17 R16 K10 ["ImageTransparency"]
       35 GETTABLEKS                       R17 R12 K14 ["Color3"]
       37 SETTABLEKS                       R17 R16 K11 ["TextColor3"]
       39 GETTABLEKS                       R17 R12 K15 ["Transparency"]
       41 SETTABLEKS                       R17 R16 K12 ["TextTransparency"]
       43 SETTABLEKS                       R16 R15 K5 ["properties"]
       45 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       47 MOVE                             R14 R2
       48 GETIMPORT                        R13 K17 [table.insert]
       50 CALL                             R13 2 0
       51 FORGLOOP                         R8 2 ; [-35]
       53 FORGLOOP                         R3 2 ; [-48]
       55 MOVE                             R3 R1
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 DUPTABLE                         R10 K6 [{"tag", "properties"}]
       60 LOADK                            R12 K7 ["content-%*"]
       61 MOVE                             R14 R6
       62 NAMECALL                         R12 R12 K8 ["format"]
       64 CALL                             R12 2 1
       65 MOVE                             R11 R12
       66 SETTABLEKS                       R11 R10 K4 ["tag"]
       68 DUPTABLE                         R11 K13 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
       69 GETTABLEKS                       R12 R7 K18 ["Foreground"]
       71 GETTABLEKS                       R12 R12 K14 ["Color3"]
       73 SETTABLEKS                       R12 R11 K9 ["ImageColor3"]
       75 GETTABLEKS                       R12 R7 K18 ["Foreground"]
       77 GETTABLEKS                       R12 R12 K15 ["Transparency"]
       79 SETTABLEKS                       R12 R11 K10 ["ImageTransparency"]
       81 GETTABLEKS                       R12 R7 K18 ["Foreground"]
       83 GETTABLEKS                       R12 R12 K14 ["Color3"]
       85 SETTABLEKS                       R12 R11 K11 ["TextColor3"]
       87 GETTABLEKS                       R12 R7 K18 ["Foreground"]
       89 GETTABLEKS                       R12 R12 K15 ["Transparency"]
       91 SETTABLEKS                       R12 R11 K12 ["TextTransparency"]
       93 SETTABLEKS                       R11 R10 K5 ["properties"]
       95 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       97 MOVE                             R9 R2
       98 GETIMPORT                        R8 K17 [table.insert]
      100 CALL                             R8 2 0
      101 FORGLOOP                         R3 2 ; [-43]
      103 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["TextSize"]
        8 DIV                              R8 R9 R1
        9 GETTABLEKS                       R10 R7 K1 ["LineHeight"]
       11 MUL                              R9 R10 R1
       12 MUL                              R11 R8 R9
       13 GETTABLEKS                       R12 R7 K0 ["TextSize"]
       15 SUB                              R10 R11 R12
       16 GETIMPORT                        R11 K4 [UDim.new]
       18 LOADN                            R12 0
       19 DIVK                             R13 R10 K5 [2]
       20 CALL                             R11 2 1
       21 DUPTABLE                         R14 K9 [{"tag", "properties", "children"}]
       22 LOADK                            R16 K10 ["text-%*"]
       23 MOVE                             R18 R6
       24 NAMECALL                         R16 R16 K11 ["format"]
       26 CALL                             R16 2 1
       27 MOVE                             R15 R16
       28 SETTABLEKS                       R15 R14 K6 ["tag"]
       30 SETTABLEKS                       R7 R14 K7 ["properties"]
       32 NEWTABLE                         R15 0 1
       34 DUPTABLE                         R16 K14 [{["tag"], ["pseudo"] = "UIPadding", ["properties"]}]
       35 LOADK                            R18 K10 ["text-%*"]
       36 MOVE                             R20 R6
       37 NAMECALL                         R18 R18 K11 ["format"]
       39 CALL                             R18 2 1
       40 MOVE                             R17 R18
       41 SETTABLEKS                       R17 R16 K6 ["tag"]
       43 DUPTABLE                         R17 K17 [{"PaddingTop", "PaddingBottom"}]
       44 SETTABLEKS                       R11 R17 K15 ["PaddingTop"]
       46 SETTABLEKS                       R11 R17 K16 ["PaddingBottom"]
       48 SETTABLEKS                       R17 R16 K7 ["properties"]
       50 SETLIST                          R15 R16 1 [1]
       52 SETTABLEKS                       R15 R14 K8 ["children"]
       54 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       56 MOVE                             R13 R2
       57 GETIMPORT                        R12 K20 [table.insert]
       59 CALL                             R12 2 0
       60 FORGLOOP                         R3 2 ; [-55]
       62 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 4 0
        4 GETIMPORT                        R2 K3 [Enum.TextXAlignment.Left]
        6 SETTABLEKS                       R2 R1 K4 ["left"]
        8 GETIMPORT                        R2 K6 [Enum.TextXAlignment.Center]
       10 SETTABLEKS                       R2 R1 K7 ["center"]
       12 GETIMPORT                        R2 K9 [Enum.TextXAlignment.Right]
       14 SETTABLEKS                       R2 R1 K10 ["right"]
       16 MOVE                             R2 R1
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 DUPTABLE                         R9 K13 [{"tag", "properties"}]
       21 LOADK                            R11 K14 ["text-align-x-%*"]
       22 MOVE                             R13 R5
       23 NAMECALL                         R11 R11 K15 ["format"]
       25 CALL                             R11 2 1
       26 MOVE                             R10 R11
       27 SETTABLEKS                       R10 R9 K11 ["tag"]
       29 DUPTABLE                         R10 K16 [{"TextXAlignment"}]
       30 SETTABLEKS                       R6 R10 K1 ["TextXAlignment"]
       32 SETTABLEKS                       R10 R9 K12 ["properties"]
       34 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       36 MOVE                             R8 R0
       37 GETIMPORT                        R7 K19 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-21]
       42 NEWTABLE                         R2 4 0
       44 GETIMPORT                        R3 K22 [Enum.TextYAlignment.Top]
       46 SETTABLEKS                       R3 R2 K23 ["top"]
       48 GETIMPORT                        R3 K24 [Enum.TextYAlignment.Center]
       50 SETTABLEKS                       R3 R2 K7 ["center"]
       52 GETIMPORT                        R3 K26 [Enum.TextYAlignment.Bottom]
       54 SETTABLEKS                       R3 R2 K27 ["bottom"]
       56 MOVE                             R3 R2
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 DUPTABLE                         R10 K13 [{"tag", "properties"}]
       61 LOADK                            R12 K28 ["text-align-y-%*"]
       62 MOVE                             R14 R6
       63 NAMECALL                         R12 R12 K15 ["format"]
       65 CALL                             R12 2 1
       66 MOVE                             R11 R12
       67 SETTABLEKS                       R11 R10 K11 ["tag"]
       69 DUPTABLE                         R11 K29 [{"TextYAlignment"}]
       70 SETTABLEKS                       R7 R11 K20 ["TextYAlignment"]
       72 SETTABLEKS                       R11 R10 K12 ["properties"]
       74 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       76 MOVE                             R9 R0
       77 GETIMPORT                        R8 K19 [table.insert]
       79 CALL                             R8 2 0
       80 FORGLOOP                         R3 2 ; [-21]
       82 NEWTABLE                         R3 4 0
       84 GETIMPORT                        R4 K32 [Enum.TextTruncate.None]
       86 SETTABLEKS                       R4 R3 K33 ["none"]
       88 GETIMPORT                        R4 K35 [Enum.TextTruncate.AtEnd]
       90 SETTABLEKS                       R4 R3 K36 ["end"]
       92 GETIMPORT                        R4 K38 [Enum.TextTruncate.SplitWord]
       94 SETTABLEKS                       R4 R3 K39 ["split"]
       96 MOVE                             R4 R3
       97 LOADNIL                          R5
       98 LOADNIL                          R6
       99 FORGPREP                         R4
      100 DUPTABLE                         R11 K13 [{"tag", "properties"}]
      101 LOADK                            R13 K40 ["text-truncate-%*"]
      102 MOVE                             R15 R7
      103 NAMECALL                         R13 R13 K15 ["format"]
      105 CALL                             R13 2 1
      106 MOVE                             R12 R13
      107 SETTABLEKS                       R12 R11 K11 ["tag"]
      109 DUPTABLE                         R12 K41 [{"TextTruncate"}]
      110 SETTABLEKS                       R8 R12 K30 ["TextTruncate"]
      112 SETTABLEKS                       R12 R11 K12 ["properties"]
      114 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
      116 MOVE                             R10 R0
      117 GETIMPORT                        R9 K19 [table.insert]
      119 CALL                             R9 2 0
      120 FORGLOOP                         R4 2 ; [-21]
      122 DUPTABLE                         R6 K43 [{["tag"] = "text-wrap", ["properties"]}]
      123 DUPTABLE                         R7 K46 [{["TextWrapped"] = True}]
      124 SETTABLEKS                       R7 R6 K12 ["properties"]
      126 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      128 MOVE                             R5 R0
      129 GETIMPORT                        R4 K19 [table.insert]
      131 CALL                             R4 2 0
      132 DUPTABLE                         R6 K48 [{["tag"] = "text-no-wrap", ["properties"]}]
      133 DUPTABLE                         R7 K50 [{["TextWrapped"] = False}]
      134 SETTABLEKS                       R7 R6 K12 ["properties"]
      136 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      138 MOVE                             R5 R0
      139 GETIMPORT                        R4 K19 [table.insert]
      141 CALL                             R4 2 0
      142 RETURN                           R0 1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 DUPTABLE                         R3 K6 [{"x", "y", "top", "bottom", "left", "right"}]
        3 NEWTABLE                         R4 0 2
        5 LOADK                            R5 K7 ["PaddingLeft"]
        6 LOADK                            R6 K8 ["PaddingRight"]
        7 SETLIST                          R4 R5 2 [1]
        9 SETTABLEKS                       R4 R3 K0 ["x"]
       11 NEWTABLE                         R4 0 2
       13 LOADK                            R5 K9 ["PaddingTop"]
       14 LOADK                            R6 K10 ["PaddingBottom"]
       15 SETLIST                          R4 R5 2 [1]
       17 SETTABLEKS                       R4 R3 K1 ["y"]
       19 NEWTABLE                         R4 0 1
       21 LOADK                            R5 K9 ["PaddingTop"]
       22 SETLIST                          R4 R5 1 [1]
       24 SETTABLEKS                       R4 R3 K2 ["top"]
       26 NEWTABLE                         R4 0 1
       28 LOADK                            R5 K10 ["PaddingBottom"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K3 ["bottom"]
       33 NEWTABLE                         R4 0 1
       35 LOADK                            R5 K7 ["PaddingLeft"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K4 ["left"]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K8 ["PaddingRight"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K5 ["right"]
       47 MOVE                             R4 R0
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 DUPTABLE                         R11 K15 [{["tag"], ["pseudo"] = "UIPadding", ["properties"]}]
       52 LOADK                            R13 K16 ["padding-%*"]
       53 GETTABLEKS                       R15 R8 K17 ["name"]
       55 NAMECALL                         R13 R13 K18 ["format"]
       57 CALL                             R13 2 1
       58 MOVE                             R12 R13
       59 SETTABLEKS                       R12 R11 K11 ["tag"]
       61 DUPTABLE                         R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       62 GETTABLEKS                       R13 R8 K20 ["size"]
       64 SETTABLEKS                       R13 R12 K9 ["PaddingTop"]
       66 GETTABLEKS                       R13 R8 K20 ["size"]
       68 SETTABLEKS                       R13 R12 K10 ["PaddingBottom"]
       70 GETTABLEKS                       R13 R8 K20 ["size"]
       72 SETTABLEKS                       R13 R12 K7 ["PaddingLeft"]
       74 GETTABLEKS                       R13 R8 K20 ["size"]
       76 SETTABLEKS                       R13 R12 K8 ["PaddingRight"]
       78 SETTABLEKS                       R12 R11 K14 ["properties"]
       80 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       82 MOVE                             R10 R2
       83 GETIMPORT                        R9 K23 [table.insert]
       85 CALL                             R9 2 0
       86 FORGLOOP                         R4 2 ; [-36]
       88 MOVE                             R4 R1
       89 LOADNIL                          R5
       90 LOADNIL                          R6
       91 FORGPREP                         R4
       92 DUPTABLE                         R11 K15 [{["tag"], ["pseudo"] = "UIPadding", ["properties"]}]
       93 LOADK                            R13 K24 ["margin-%*"]
       94 GETTABLEKS                       R15 R8 K17 ["name"]
       96 NAMECALL                         R13 R13 K18 ["format"]
       98 CALL                             R13 2 1
       99 MOVE                             R12 R13
      100 SETTABLEKS                       R12 R11 K11 ["tag"]
      102 DUPTABLE                         R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      103 GETTABLEKS                       R13 R8 K20 ["size"]
      105 SETTABLEKS                       R13 R12 K9 ["PaddingTop"]
      107 GETTABLEKS                       R13 R8 K20 ["size"]
      109 SETTABLEKS                       R13 R12 K10 ["PaddingBottom"]
      111 GETTABLEKS                       R13 R8 K20 ["size"]
      113 SETTABLEKS                       R13 R12 K7 ["PaddingLeft"]
      115 GETTABLEKS                       R13 R8 K20 ["size"]
      117 SETTABLEKS                       R13 R12 K8 ["PaddingRight"]
      119 SETTABLEKS                       R12 R11 K14 ["properties"]
      121 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      123 MOVE                             R10 R2
      124 GETIMPORT                        R9 K23 [table.insert]
      126 CALL                             R9 2 0
      127 FORGLOOP                         R4 2 ; [-36]
      129 MOVE                             R4 R3
      130 LOADNIL                          R5
      131 LOADNIL                          R6
      132 FORGPREP                         R4
      133 MOVE                             R9 R0
      134 LOADNIL                          R10
      135 LOADNIL                          R11
      136 FORGPREP                         R9
      137 NEWTABLE                         R14 0 0
      139 MOVE                             R15 R8
      140 LOADNIL                          R16
      141 LOADNIL                          R17
      142 FORGPREP                         R15
      143 GETTABLEKS                       R20 R13 K20 ["size"]
      145 SETTABLE                         R20 R14 R19
      146 FORGLOOP                         R15 2 ; [-4]
      148 DUPTABLE                         R17 K15 [{["tag"], ["pseudo"] = "UIPadding", ["properties"]}]
      149 LOADK                            R19 K25 ["padding-%*-%*"]
      150 MOVE                             R21 R7
      151 GETTABLEKS                       R22 R13 K17 ["name"]
      153 NAMECALL                         R19 R19 K18 ["format"]
      155 CALL                             R19 3 1
      156 MOVE                             R18 R19
      157 SETTABLEKS                       R18 R17 K11 ["tag"]
      159 SETTABLEKS                       R14 R17 K14 ["properties"]
      161 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
      163 MOVE                             R16 R2
      164 GETIMPORT                        R15 K23 [table.insert]
      166 CALL                             R15 2 0
      167 FORGLOOP                         R9 2 ; [-31]
      169 MOVE                             R9 R1
      170 LOADNIL                          R10
      171 LOADNIL                          R11
      172 FORGPREP                         R9
      173 NEWTABLE                         R14 0 0
      175 MOVE                             R15 R8
      176 LOADNIL                          R16
      177 LOADNIL                          R17
      178 FORGPREP                         R15
      179 GETTABLEKS                       R20 R13 K20 ["size"]
      181 SETTABLE                         R20 R14 R19
      182 FORGLOOP                         R15 2 ; [-4]
      184 DUPTABLE                         R17 K15 [{["tag"], ["pseudo"] = "UIPadding", ["properties"]}]
      185 LOADK                            R19 K26 ["margin-%*-%*"]
      186 MOVE                             R21 R7
      187 GETTABLEKS                       R22 R13 K17 ["name"]
      189 NAMECALL                         R19 R19 K18 ["format"]
      191 CALL                             R19 3 1
      192 MOVE                             R18 R19
      193 SETTABLEKS                       R18 R17 K11 ["tag"]
      195 SETTABLEKS                       R14 R17 K14 ["properties"]
      197 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
      199 MOVE                             R16 R2
      200 GETIMPORT                        R15 K23 [table.insert]
      202 CALL                             R15 2 0
      203 FORGLOOP                         R9 2 ; [-31]
      205 FORGLOOP                         R4 2 ; [-73]
      207 RETURN                           R2 1

PROTO_16:
        0 DUPTABLE                         R0 K4 [{"none", "x", "y", "xy"}]
        1 GETIMPORT                        R1 K8 [Enum.AutomaticSize.None]
        3 SETTABLEKS                       R1 R0 K0 ["none"]
        5 GETIMPORT                        R1 K10 [Enum.AutomaticSize.X]
        7 SETTABLEKS                       R1 R0 K1 ["x"]
        9 GETIMPORT                        R1 K12 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R1 R0 K2 ["y"]
       13 GETIMPORT                        R1 K14 [Enum.AutomaticSize.XY]
       15 SETTABLEKS                       R1 R0 K3 ["xy"]
       17 NEWTABLE                         R1 0 0
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 DUPTABLE                         R9 K17 [{"tag", "properties"}]
       24 LOADK                            R11 K18 ["auto-%*"]
       25 MOVE                             R13 R5
       26 NAMECALL                         R11 R11 K19 ["format"]
       28 CALL                             R11 2 1
       29 MOVE                             R10 R11
       30 SETTABLEKS                       R10 R9 K15 ["tag"]
       32 DUPTABLE                         R10 K20 [{"AutomaticSize"}]
       33 SETTABLEKS                       R6 R10 K6 ["AutomaticSize"]
       35 SETTABLEKS                       R10 R9 K16 ["properties"]
       37 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       39 MOVE                             R8 R1
       40 GETIMPORT                        R7 K23 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R2 2 ; [-21]
       45 RETURN                           R1 1

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K6 [{[1] = 0, ["center"] = 0.5, ["right"] = 1}]
        3 DUPTABLE                         R2 K9 [{["top"] = 0, ["center"] = 0.5, ["bottom"] = 1}]
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 DUPTABLE                         R15 K12 [{"tag", "properties"}]
       13 LOADK                            R17 K13 ["position-%*-%*"]
       14 MOVE                             R19 R11
       15 MOVE                             R20 R6
       16 NAMECALL                         R17 R17 K14 ["format"]
       18 CALL                             R17 3 1
       19 MOVE                             R16 R17
       20 SETTABLEKS                       R16 R15 K10 ["tag"]
       22 DUPTABLE                         R16 K16 [{"Position"}]
       23 GETIMPORT                        R17 K19 [UDim2.fromScale]
       25 MOVE                             R18 R7
       26 MOVE                             R19 R12
       27 CALL                             R17 2 1
       28 SETTABLEKS                       R17 R16 K15 ["Position"]
       30 SETTABLEKS                       R16 R15 K11 ["properties"]
       32 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       34 MOVE                             R14 R0
       35 GETIMPORT                        R13 K22 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 ; [-27]
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R0 1

PROTO_18:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K6 [{[1] = 0, ["center"] = 0.5, ["right"] = 1}]
        3 DUPTABLE                         R2 K9 [{["top"] = 0, ["center"] = 0.5, ["bottom"] = 1}]
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 DUPTABLE                         R15 K12 [{"tag", "properties"}]
       13 LOADK                            R17 K13 ["anchor-%*-%*"]
       14 MOVE                             R19 R11
       15 MOVE                             R20 R6
       16 NAMECALL                         R17 R17 K14 ["format"]
       18 CALL                             R17 3 1
       19 MOVE                             R16 R17
       20 SETTABLEKS                       R16 R15 K10 ["tag"]
       22 DUPTABLE                         R16 K16 [{"AnchorPoint"}]
       23 GETIMPORT                        R17 K19 [Vector2.new]
       25 MOVE                             R18 R7
       26 MOVE                             R19 R12
       27 CALL                             R17 2 1
       28 SETTABLEKS                       R17 R16 K15 ["AnchorPoint"]
       30 SETTABLEKS                       R16 R15 K11 ["properties"]
       32 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       34 MOVE                             R14 R0
       35 GETIMPORT                        R13 K22 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 ; [-27]
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R0 1

PROTO_19:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{[1] = "clip", ["properties"]}]
        3 DUPTABLE                         R2 K6 [{["ClipsDescendants"] = True}]
        4 SETTABLEKS                       R2 R1 K2 ["properties"]
        6 DUPTABLE                         R2 K8 [{[1] = "no-clip", ["properties"]}]
        7 DUPTABLE                         R3 K10 [{["ClipsDescendants"] = False}]
        8 SETTABLEKS                       R3 R2 K2 ["properties"]
       10 SETLIST                          R0 R1 2 [1]
       12 RETURN                           R0 1

PROTO_20:
        0 LOADN                            R3 10
        1 POW                              R2 R3 R1
        2 MUL                              R5 R0 R2
        3 FASTCALL1                        MATH_ROUND R5 ; [+2]
        4 GETIMPORT                        R4 K2 [math.round]
        6 CALL                             R4 1 1
        7 DIV                              R3 R4 R2
        8 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 6
        4 NEWTABLE                         R2 0 2
        6 LOADN                            R3 1
        7 LOADN                            R4 1
        8 SETLIST                          R2 R3 2 [1]
       10 NEWTABLE                         R3 0 2
       12 LOADN                            R4 5
       13 LOADN                            R5 4
       14 SETLIST                          R3 R4 2 [1]
       16 NEWTABLE                         R4 0 2
       18 LOADN                            R5 4
       19 LOADN                            R6 3
       20 SETLIST                          R4 R5 2 [1]
       22 NEWTABLE                         R5 0 2
       24 LOADN                            R6 3
       25 LOADN                            R7 2
       26 SETLIST                          R5 R6 2 [1]
       28 NEWTABLE                         R6 0 2
       30 LOADN                            R7 16
       31 LOADN                            R8 9
       32 SETLIST                          R6 R7 2 [1]
       34 NEWTABLE                         R7 0 2
       36 LOADN                            R8 2
       37 LOADN                            R9 1
       38 SETLIST                          R7 R8 2 [1]
       40 SETLIST                          R1 R2 6 [1]
       42 MOVE                             R2 R1
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 DUPTABLE                         R9 K4 [{[1], ["pseudo"] = "UIAspectRatioConstraint", ["properties"]}]
       47 LOADK                            R11 K5 ["aspect-%*-%*"]
       48 GETTABLEN                        R13 R6 1
       49 GETTABLEN                        R14 R6 2
       50 NAMECALL                         R11 R11 K6 ["format"]
       52 CALL                             R11 3 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R10 R9 K0 ["tag"]
       56 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       57 GETTABLEN                        R13 R6 1
       58 GETTABLEN                        R14 R6 2
       59 DIV                              R12 R13 R14
       60 MULK                             R14 R12 K9 [1000]
       61 FASTCALL1                        MATH_ROUND R14 ; [+2]
       62 GETIMPORT                        R13 K12 [math.round]
       64 CALL                             R13 1 1
       65 DIVK                             R11 R13 K9 [1000]
       66 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
       68 SETTABLEKS                       R10 R9 K3 ["properties"]
       70 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       72 MOVE                             R8 R0
       73 GETIMPORT                        R7 K15 [table.insert]
       75 CALL                             R7 2 0
       76 GETTABLEN                        R7 R6 1
       77 GETTABLEN                        R8 R6 2
       78 JUMPIFEQ                         R7 R8 ; [+31]
       80 DUPTABLE                         R9 K4 [{[1], ["pseudo"] = "UIAspectRatioConstraint", ["properties"]}]
       81 LOADK                            R11 K5 ["aspect-%*-%*"]
       82 GETTABLEN                        R13 R6 2
       83 GETTABLEN                        R14 R6 1
       84 NAMECALL                         R11 R11 K6 ["format"]
       86 CALL                             R11 3 1
       87 MOVE                             R10 R11
       88 SETTABLEKS                       R10 R9 K0 ["tag"]
       90 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       91 GETTABLEN                        R13 R6 2
       92 GETTABLEN                        R14 R6 1
       93 DIV                              R12 R13 R14
       94 MULK                             R14 R12 K9 [1000]
       95 FASTCALL1                        MATH_ROUND R14 ; [+2]
       96 GETIMPORT                        R13 K12 [math.round]
       98 CALL                             R13 1 1
       99 DIVK                             R11 R13 K9 [1000]
      100 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
      102 SETTABLEKS                       R10 R9 K3 ["properties"]
      104 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      106 MOVE                             R8 R0
      107 GETIMPORT                        R7 K15 [table.insert]
      109 CALL                             R7 2 0
      110 FORGLOOP                         R2 2 ; [-65]
      112 RETURN                           R0 1

PROTO_22:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["System"]
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADN                            R10 8
        9 NAMECALL                         R8 R6 K1 ["sub"]
       11 CALL                             R8 2 1
       12 DUPTABLE                         R11 K5 [{"tag", "properties", "deprecatedFor"}]
       13 LOADK                            R13 K6 ["bg-%*"]
       14 MOVE                             R15 R8
       15 NAMECALL                         R13 R13 K7 ["format"]
       17 CALL                             R13 2 1
       18 MOVE                             R12 R13
       19 SETTABLEKS                       R12 R11 K2 ["tag"]
       21 DUPTABLE                         R12 K10 [{"BackgroundColor3", "BackgroundTransparency"}]
       22 GETTABLEKS                       R13 R7 K11 ["Color3"]
       24 SETTABLEKS                       R13 R12 K8 ["BackgroundColor3"]
       26 GETTABLEKS                       R13 R7 K12 ["Transparency"]
       28 SETTABLEKS                       R13 R12 K9 ["BackgroundTransparency"]
       30 SETTABLEKS                       R12 R11 K3 ["properties"]
       32 LOADK                            R13 K6 ["bg-%*"]
       33 MOVE                             R15 R6
       34 NAMECALL                         R13 R13 K7 ["format"]
       36 CALL                             R13 2 1
       37 MOVE                             R12 R13
       38 SETTABLEKS                       R12 R11 K4 ["deprecatedFor"]
       40 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       42 MOVE                             R10 R1
       43 GETIMPORT                        R9 K15 [table.insert]
       45 CALL                             R9 2 0
       46 JUMPIFEQKS                       R8 K16 ["emphasis"] ; [+77]
       48 DUPTABLE                         R11 K5 [{"tag", "properties", "deprecatedFor"}]
       49 LOADK                            R13 K17 ["content-%*"]
       50 MOVE                             R15 R8
       51 NAMECALL                         R13 R13 K7 ["format"]
       53 CALL                             R13 2 1
       54 MOVE                             R12 R13
       55 SETTABLEKS                       R12 R11 K2 ["tag"]
       57 DUPTABLE                         R12 K22 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
       58 GETTABLEKS                       R13 R7 K11 ["Color3"]
       60 SETTABLEKS                       R13 R12 K18 ["ImageColor3"]
       62 GETTABLEKS                       R13 R7 K12 ["Transparency"]
       64 SETTABLEKS                       R13 R12 K19 ["ImageTransparency"]
       66 GETTABLEKS                       R13 R7 K11 ["Color3"]
       68 SETTABLEKS                       R13 R12 K20 ["TextColor3"]
       70 GETTABLEKS                       R13 R7 K12 ["Transparency"]
       72 SETTABLEKS                       R13 R12 K21 ["TextTransparency"]
       74 SETTABLEKS                       R12 R11 K3 ["properties"]
       76 LOADK                            R13 K17 ["content-%*"]
       77 MOVE                             R15 R6
       78 NAMECALL                         R13 R13 K7 ["format"]
       80 CALL                             R13 2 1
       81 MOVE                             R12 R13
       82 SETTABLEKS                       R12 R11 K4 ["deprecatedFor"]
       84 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       86 MOVE                             R10 R1
       87 GETIMPORT                        R9 K15 [table.insert]
       89 CALL                             R9 2 0
       90 DUPTABLE                         R11 K25 [{["tag"], ["pseudo"] = "UIStroke", ["properties"], ["deprecatedFor"]}]
       91 LOADK                            R13 K26 ["stroke-%*"]
       92 MOVE                             R15 R8
       93 NAMECALL                         R13 R13 K7 ["format"]
       95 CALL                             R13 2 1
       96 MOVE                             R12 R13
       97 SETTABLEKS                       R12 R11 K2 ["tag"]
       99 DUPTABLE                         R12 K28 [{"Color", "Transparency"}]
      100 GETTABLEKS                       R13 R7 K11 ["Color3"]
      102 SETTABLEKS                       R13 R12 K27 ["Color"]
      104 GETTABLEKS                       R13 R7 K12 ["Transparency"]
      106 SETTABLEKS                       R13 R12 K12 ["Transparency"]
      108 SETTABLEKS                       R12 R11 K3 ["properties"]
      110 LOADK                            R13 K26 ["stroke-%*"]
      111 MOVE                             R15 R6
      112 NAMECALL                         R13 R13 K7 ["format"]
      114 CALL                             R13 2 1
      115 MOVE                             R12 R13
      116 SETTABLEKS                       R12 R11 K4 ["deprecatedFor"]
      118 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      120 MOVE                             R10 R1
      121 GETIMPORT                        R9 K15 [table.insert]
      123 CALL                             R9 2 0
      124 FORGLOOP                         R3 2 ; [-117]
      126 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K2 [table.clone]
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 LOADK                            R9 K3 ["hover-%*"]
       11 GETTABLEKS                       R11 R6 K4 ["tag"]
       13 NAMECALL                         R9 R9 K5 ["format"]
       15 CALL                             R9 2 1
       16 MOVE                             R8 R9
       17 SETTABLEKS                       R8 R7 K4 ["tag"]
       19 LOADK                            R8 K6 ["hover"]
       20 SETTABLEKS                       R8 R7 K7 ["modifier"]
       22 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       24 MOVE                             R9 R1
       25 MOVE                             R10 R6
       26 GETIMPORT                        R8 K9 [table.insert]
       28 CALL                             R8 2 0
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 GETIMPORT                        R8 K9 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["colors"]
        2 GETTABLEKS                       R3 R1 K1 ["variants"]
        4 GETTABLEKS                       R4 R1 K2 ["gaps"]
        6 GETTABLEKS                       R5 R1 K3 ["gutters"]
        8 GETTABLEKS                       R6 R1 K4 ["radii"]
       10 GETTABLEKS                       R7 R1 K5 ["sizes"]
       12 GETTABLEKS                       R8 R1 K6 ["strokes"]
       14 GETTABLEKS                       R9 R1 K7 ["typography"]
       16 GETTABLEKS                       R10 R1 K8 ["paddings"]
       18 GETTABLEKS                       R11 R1 K9 ["margins"]
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R13 R13 K10 ["FoundationMigrateCryoToDash"]
       23 JUMPIFNOT                        R13 ; [+24]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K11 ["joinArrays"]
       27 GETUPVAL                         R13 2
       28 MOVE                             R14 R0
       29 CALL                             R13 1 1
       30 GETUPVAL                         R14 3
       31 CALL                             R14 0 1
       32 GETUPVAL                         R15 4
       33 CALL                             R15 0 1
       34 GETUPVAL                         R16 5
       35 CALL                             R16 0 1
       36 GETUPVAL                         R17 6
       37 CALL                             R17 0 1
       38 GETUPVAL                         R18 7
       39 CALL                             R18 0 1
       40 GETUPVAL                         R19 8
       41 CALL                             R19 0 1
       42 GETUPVAL                         R20 9
       43 CALL                             R20 0 1
       44 GETUPVAL                         R21 10
       45 CALL                             R21 0 1
       46 CALL                             R12 9 1
       47 JUMP                             ; [+25]
       48 GETUPVAL                         R12 11
       49 GETTABLEKS                       R12 R12 K12 ["List"]
       51 GETTABLEKS                       R12 R12 K13 ["join"]
       53 GETUPVAL                         R13 2
       54 MOVE                             R14 R0
       55 CALL                             R13 1 1
       56 GETUPVAL                         R14 3
       57 CALL                             R14 0 1
       58 GETUPVAL                         R15 4
       59 CALL                             R15 0 1
       60 GETUPVAL                         R16 5
       61 CALL                             R16 0 1
       62 GETUPVAL                         R17 6
       63 CALL                             R17 0 1
       64 GETUPVAL                         R18 7
       65 CALL                             R18 0 1
       66 GETUPVAL                         R19 8
       67 CALL                             R19 0 1
       68 GETUPVAL                         R20 9
       69 CALL                             R20 0 1
       70 GETUPVAL                         R21 10
       71 CALL                             R21 0 1
       72 CALL                             R12 9 1
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R14 R14 K10 ["FoundationMigrateCryoToDash"]
       76 JUMPIFNOT                        R14 ; [+36]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K11 ["joinArrays"]
       80 GETUPVAL                         R14 12
       81 MOVE                             R15 R0
       82 CALL                             R14 1 1
       83 GETUPVAL                         R15 13
       84 CALL                             R15 0 1
       85 GETUPVAL                         R16 14
       86 MOVE                             R17 R4
       87 MOVE                             R18 R5
       88 CALL                             R16 2 1
       89 GETUPVAL                         R17 15
       90 MOVE                             R18 R6
       91 CALL                             R17 1 1
       92 GETUPVAL                         R18 16
       93 MOVE                             R19 R7
       94 CALL                             R18 1 1
       95 GETUPVAL                         R19 17
       96 MOVE                             R20 R8
       97 CALL                             R19 1 1
       98 GETUPVAL                         R20 18
       99 MOVE                             R21 R9
      100 GETTABLEKS                       R22 R0 K14 ["Config"]
      102 GETTABLEKS                       R22 R22 K15 ["Text"]
      104 GETTABLEKS                       R22 R22 K16 ["NominalScale"]
      106 CALL                             R20 2 1
      107 GETUPVAL                         R21 19
      108 MOVE                             R22 R10
      109 MOVE                             R23 R11
      110 CALL                             R21 2 1
      111 CALL                             R13 8 1
      112 JUMP                             ; [+37]
      113 GETUPVAL                         R13 11
      114 GETTABLEKS                       R13 R13 K12 ["List"]
      116 GETTABLEKS                       R13 R13 K13 ["join"]
      118 GETUPVAL                         R14 12
      119 MOVE                             R15 R0
      120 CALL                             R14 1 1
      121 GETUPVAL                         R15 13
      122 CALL                             R15 0 1
      123 GETUPVAL                         R16 14
      124 MOVE                             R17 R4
      125 MOVE                             R18 R5
      126 CALL                             R16 2 1
      127 GETUPVAL                         R17 15
      128 MOVE                             R18 R6
      129 CALL                             R17 1 1
      130 GETUPVAL                         R18 16
      131 MOVE                             R19 R7
      132 CALL                             R18 1 1
      133 GETUPVAL                         R19 17
      134 MOVE                             R20 R8
      135 CALL                             R19 1 1
      136 GETUPVAL                         R20 18
      137 MOVE                             R21 R9
      138 GETTABLEKS                       R22 R0 K14 ["Config"]
      140 GETTABLEKS                       R22 R22 K15 ["Text"]
      142 GETTABLEKS                       R22 R22 K16 ["NominalScale"]
      144 CALL                             R20 2 1
      145 GETUPVAL                         R21 19
      146 MOVE                             R22 R10
      147 MOVE                             R23 R11
      148 CALL                             R21 2 1
      149 CALL                             R13 8 1
      150 GETUPVAL                         R15 0
      151 GETTABLEKS                       R15 R15 K10 ["FoundationMigrateCryoToDash"]
      153 JUMPIFNOT                        R15 ; [+23]
      154 GETUPVAL                         R14 1
      155 GETTABLEKS                       R14 R14 K11 ["joinArrays"]
      157 GETUPVAL                         R15 20
      158 MOVE                             R16 R0
      159 CALL                             R15 1 1
      160 GETUPVAL                         R16 21
      161 MOVE                             R17 R2
      162 CALL                             R16 1 1
      163 GETUPVAL                         R17 22
      164 MOVE                             R18 R2
      165 MOVE                             R19 R3
      166 CALL                             R17 2 1
      167 GETUPVAL                         R18 23
      168 MOVE                             R19 R2
      169 MOVE                             R20 R3
      170 CALL                             R18 2 1
      171 GETUPVAL                         R19 24
      172 MOVE                             R20 R2
      173 MOVE                             R21 R3
      174 CALL                             R19 2 1
      175 CALL                             R14 5 1
      176 RETURN                           R12 3
      177 GETUPVAL                         R14 11
      178 GETTABLEKS                       R14 R14 K12 ["List"]
      180 GETTABLEKS                       R14 R14 K13 ["join"]
      182 GETUPVAL                         R15 20
      183 MOVE                             R16 R0
      184 CALL                             R15 1 1
      185 GETUPVAL                         R16 21
      186 MOVE                             R17 R2
      187 CALL                             R16 1 1
      188 GETUPVAL                         R17 22
      189 MOVE                             R18 R2
      190 MOVE                             R19 R3
      191 CALL                             R17 2 1
      192 GETUPVAL                         R18 23
      193 MOVE                             R19 R2
      194 MOVE                             R20 R3
      195 CALL                             R18 2 1
      196 GETUPVAL                         R19 24
      197 MOVE                             R20 R2
      198 MOVE                             R21 R3
      199 CALL                             R19 2 1
      200 CALL                             R14 5 1
      201 RETURN                           R12 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["Tokens"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Utility"]
       41 GETTABLEKS                       R7 R7 K14 ["Flags"]
       43 CALL                             R6 1 1
       44 DUPTABLE                         R7 K26 [{"Content", "Stroke", "Shift", "Surface", "OverMedia", "System", "Extended", "Common", "Selection", "State", "None"}]
       45 NEWTABLE                         R8 0 1
       47 LOADK                            R9 K27 ["content"]
       48 SETLIST                          R8 R9 1 [1]
       50 SETTABLEKS                       R8 R7 K15 ["Content"]
       52 NEWTABLE                         R8 0 1
       54 LOADK                            R9 K28 ["stroke"]
       55 SETLIST                          R8 R9 1 [1]
       57 SETTABLEKS                       R8 R7 K16 ["Stroke"]
       59 NEWTABLE                         R8 0 1
       61 LOADK                            R9 K29 ["bg"]
       62 SETLIST                          R8 R9 1 [1]
       64 SETTABLEKS                       R8 R7 K17 ["Shift"]
       66 NEWTABLE                         R8 0 1
       68 LOADK                            R9 K29 ["bg"]
       69 SETLIST                          R8 R9 1 [1]
       71 SETTABLEKS                       R8 R7 K18 ["Surface"]
       73 NEWTABLE                         R8 0 1
       75 LOADK                            R9 K29 ["bg"]
       76 SETLIST                          R8 R9 1 [1]
       78 SETTABLEKS                       R8 R7 K19 ["OverMedia"]
       80 NEWTABLE                         R8 0 3
       82 LOADK                            R9 K29 ["bg"]
       83 LOADK                            R10 K27 ["content"]
       84 LOADK                            R11 K28 ["stroke"]
       85 SETLIST                          R8 R9 3 [1]
       87 SETTABLEKS                       R8 R7 K20 ["System"]
       89 NEWTABLE                         R8 0 0
       91 SETTABLEKS                       R8 R7 K21 ["Extended"]
       93 NEWTABLE                         R8 0 0
       95 SETTABLEKS                       R8 R7 K22 ["Common"]
       97 NEWTABLE                         R8 0 0
       99 SETTABLEKS                       R8 R7 K23 ["Selection"]
      101 NEWTABLE                         R8 0 0
      103 SETTABLEKS                       R8 R7 K24 ["State"]
      105 NEWTABLE                         R8 0 0
      107 SETTABLEKS                       R8 R7 K25 ["None"]
      109 DUPCLOSURE                       R8 K30 [PROTO_0]
      110 DUPCLOSURE                       R9 K31 [PROTO_1]
      111 DUPCLOSURE                       R10 K32 [PROTO_2]
      112 DUPCLOSURE                       R11 K33 [PROTO_3]
      113 DUPCLOSURE                       R12 K34 [PROTO_4]
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 DUPCLOSURE                       R13 K35 [PROTO_5]
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 DUPCLOSURE                       R14 K36 [PROTO_6]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R2
      125 DUPCLOSURE                       R15 K37 [PROTO_7]
      126 DUPCLOSURE                       R16 K38 [PROTO_8]
      127 DUPCLOSURE                       R17 K39 [PROTO_9]
      128 CAPTURE                          VAL R7
      129 DUPCLOSURE                       R18 K40 [PROTO_10]
      130 DUPCLOSURE                       R19 K41 [PROTO_11]
      131 CAPTURE                          VAL R7
      132 DUPCLOSURE                       R20 K42 [PROTO_12]
      133 CAPTURE                          VAL R7
      134 DUPCLOSURE                       R21 K43 [PROTO_13]
      135 DUPCLOSURE                       R22 K44 [PROTO_14]
      136 DUPCLOSURE                       R23 K45 [PROTO_15]
      137 DUPCLOSURE                       R24 K46 [PROTO_16]
      138 DUPCLOSURE                       R25 K47 [PROTO_17]
      139 DUPCLOSURE                       R26 K48 [PROTO_18]
      140 DUPCLOSURE                       R27 K49 [PROTO_19]
      141 DUPCLOSURE                       R28 K50 [PROTO_20]
      142 DUPCLOSURE                       R29 K51 [PROTO_21]
      143 DUPCLOSURE                       R30 K52 [PROTO_22]
      144 DUPCLOSURE                       R31 K53 [PROTO_23]
      145 DUPCLOSURE                       R32 K54 [PROTO_24]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R26
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R29
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R30
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R20
      171 DUPTABLE                         R33 K57 [{"rulesGenerator", "rules"}]
      172 SETTABLEKS                       R32 R33 K55 ["rulesGenerator"]
      174 DUPTABLE                         R34 K80 [{"DefaultRules", "EngineDefaultBypassRules", "FlexItemRules", "TextRules", "AutomaticSizeRules", "PositionRules", "AnchorPointRules", "ClipsDescendantRules", "AspectRatioRules", "DefaultSizeRules", "ListLayoutRules", "ListLayoutSpacingRules", "CornerRules", "SizeRules", "StrokeSizeRules", "TypographyRules", "PaddingRules", "DefaultColorRules", "DeprecatedColorRules", "BackgroundRules", "StrokeRules", "ContentRules"}]
      175 SETTABLEKS                       R8 R34 K58 ["DefaultRules"]
      177 SETTABLEKS                       R11 R34 K59 ["EngineDefaultBypassRules"]
      179 SETTABLEKS                       R14 R34 K60 ["FlexItemRules"]
      181 SETTABLEKS                       R22 R34 K61 ["TextRules"]
      183 SETTABLEKS                       R24 R34 K62 ["AutomaticSizeRules"]
      185 SETTABLEKS                       R25 R34 K63 ["PositionRules"]
      187 SETTABLEKS                       R26 R34 K64 ["AnchorPointRules"]
      189 SETTABLEKS                       R27 R34 K65 ["ClipsDescendantRules"]
      191 SETTABLEKS                       R29 R34 K66 ["AspectRatioRules"]
      193 SETTABLEKS                       R9 R34 K67 ["DefaultSizeRules"]
      195 SETTABLEKS                       R12 R34 K68 ["ListLayoutRules"]
      197 SETTABLEKS                       R13 R34 K69 ["ListLayoutSpacingRules"]
      199 SETTABLEKS                       R15 R34 K70 ["CornerRules"]
      201 SETTABLEKS                       R16 R34 K71 ["SizeRules"]
      203 SETTABLEKS                       R18 R34 K72 ["StrokeSizeRules"]
      205 SETTABLEKS                       R21 R34 K73 ["TypographyRules"]
      207 SETTABLEKS                       R23 R34 K74 ["PaddingRules"]
      209 SETTABLEKS                       R10 R34 K75 ["DefaultColorRules"]
      211 SETTABLEKS                       R30 R34 K76 ["DeprecatedColorRules"]
      213 SETTABLEKS                       R17 R34 K77 ["BackgroundRules"]
      215 SETTABLEKS                       R19 R34 K78 ["StrokeRules"]
      217 SETTABLEKS                       R20 R34 K79 ["ContentRules"]
      219 SETTABLEKS                       R34 R33 K56 ["rules"]
      221 RETURN                           R33 1
