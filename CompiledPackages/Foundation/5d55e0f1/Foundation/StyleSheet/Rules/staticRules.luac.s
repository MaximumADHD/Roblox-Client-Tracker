PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K3 [{"tag", "priority", "properties"}]
        3 LOADK                            R3 K4 ["gui-object-defaults"]
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 LOADN                            R3 255
        7 SETTABLEKS                       R3 R2 K1 ["priority"]
        9 DUPTABLE                         R3 K6 [{"BackgroundTransparency"}]
       10 LOADN                            R4 1
       11 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
       13 SETTABLEKS                       R3 R2 K2 ["properties"]
       15 DUPTABLE                         R3 K3 [{"tag", "priority", "properties"}]
       16 LOADK                            R4 K7 ["text-defaults"]
       17 SETTABLEKS                       R4 R3 K0 ["tag"]
       19 LOADN                            R4 255
       20 SETTABLEKS                       R4 R3 K1 ["priority"]
       22 DUPTABLE                         R4 K9 [{"Font"}]
       23 GETTABLEKS                       R7 R0 K10 ["Typography"]
       25 GETTABLEKS                       R6 R7 K11 ["BodyLarge"]
       27 GETTABLEKS                       R5 R6 K8 ["Font"]
       29 SETTABLEKS                       R5 R4 K8 ["Font"]
       31 SETTABLEKS                       R4 R3 K2 ["properties"]
       33 SETLIST                          R1 R2 2 [1]
       35 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{"tag", "priority", "properties"}]
        3 LOADK                            R3 K4 ["text-size-defaults"]
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 LOADN                            R3 255
        7 SETTABLEKS                       R3 R2 K1 ["priority"]
        9 DUPTABLE                         R3 K7 [{"TextSize", "LineHeight"}]
       10 GETTABLEKS                       R6 R0 K8 ["Typography"]
       12 GETTABLEKS                       R5 R6 K9 ["BodyLarge"]
       14 GETTABLEKS                       R4 R5 K10 ["FontSize"]
       16 SETTABLEKS                       R4 R3 K5 ["TextSize"]
       18 GETTABLEKS                       R6 R0 K8 ["Typography"]
       20 GETTABLEKS                       R5 R6 K9 ["BodyLarge"]
       22 GETTABLEKS                       R4 R5 K6 ["LineHeight"]
       24 SETTABLEKS                       R4 R3 K6 ["LineHeight"]
       26 SETTABLEKS                       R3 R2 K2 ["properties"]
       28 SETLIST                          R1 R2 1 [1]
       30 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{"tag", "priority", "properties"}]
        3 LOADK                            R3 K4 ["text-color-defaults"]
        4 SETTABLEKS                       R3 R2 K0 ["tag"]
        6 LOADN                            R3 255
        7 SETTABLEKS                       R3 R2 K1 ["priority"]
        9 DUPTABLE                         R3 K7 [{"TextColor3", "TextTransparency"}]
       10 GETTABLEKS                       R7 R0 K8 ["Color"]
       12 GETTABLEKS                       R6 R7 K9 ["Content"]
       14 GETTABLEKS                       R5 R6 K10 ["Default"]
       16 GETTABLEKS                       R4 R5 K11 ["Color3"]
       18 SETTABLEKS                       R4 R3 K5 ["TextColor3"]
       20 GETTABLEKS                       R7 R0 K8 ["Color"]
       22 GETTABLEKS                       R6 R7 K9 ["Content"]
       24 GETTABLEKS                       R5 R6 K10 ["Default"]
       26 GETTABLEKS                       R4 R5 K12 ["Transparency"]
       28 SETTABLEKS                       R4 R3 K6 ["TextTransparency"]
       30 SETTABLEKS                       R3 R2 K2 ["properties"]
       32 SETLIST                          R1 R2 1 [1]
       34 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"tag", "properties"}]
        3 LOADK                            R2 K3 ["x-default-transparency"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 DUPTABLE                         R2 K5 [{"BackgroundTransparency"}]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K4 ["BackgroundTransparency"]
       10 SETTABLEKS                       R2 R1 K1 ["properties"]
       12 DUPTABLE                         R2 K2 [{"tag", "properties"}]
       13 LOADK                            R3 K6 ["x-default-text-size"]
       14 SETTABLEKS                       R3 R2 K0 ["tag"]
       16 DUPTABLE                         R3 K8 [{"TextSize"}]
       17 LOADN                            R4 8
       18 SETTABLEKS                       R4 R3 K7 ["TextSize"]
       20 SETTABLEKS                       R3 R2 K1 ["properties"]
       22 SETLIST                          R0 R1 2 [1]
       24 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{"tag", "pseudo", "properties"}]
        3 LOADK                            R2 K4 ["row"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 LOADK                            R2 K5 ["UIListLayout"]
        7 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        9 DUPTABLE                         R2 K8 [{"FillDirection", "SortOrder"}]
       10 GETIMPORT                        R3 K11 [Enum.FillDirection.Horizontal]
       12 SETTABLEKS                       R3 R2 K6 ["FillDirection"]
       14 GETIMPORT                        R3 K13 [Enum.SortOrder.LayoutOrder]
       16 SETTABLEKS                       R3 R2 K7 ["SortOrder"]
       18 SETTABLEKS                       R2 R1 K2 ["properties"]
       20 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       21 LOADK                            R3 K14 ["col"]
       22 SETTABLEKS                       R3 R2 K0 ["tag"]
       24 LOADK                            R3 K5 ["UIListLayout"]
       25 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       27 DUPTABLE                         R3 K8 [{"FillDirection", "SortOrder"}]
       28 GETIMPORT                        R4 K16 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R4 R3 K6 ["FillDirection"]
       32 GETIMPORT                        R4 K13 [Enum.SortOrder.LayoutOrder]
       34 SETTABLEKS                       R4 R3 K7 ["SortOrder"]
       36 SETTABLEKS                       R3 R2 K2 ["properties"]
       38 SETLIST                          R0 R1 2 [1]
       40 NEWTABLE                         R1 0 6
       42 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       43 LOADK                            R3 K17 ["align-x-left"]
       44 SETTABLEKS                       R3 R2 K0 ["tag"]
       46 LOADK                            R3 K5 ["UIListLayout"]
       47 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       49 DUPTABLE                         R3 K19 [{"HorizontalAlignment"}]
       50 GETIMPORT                        R4 K21 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R4 R3 K18 ["HorizontalAlignment"]
       54 SETTABLEKS                       R3 R2 K2 ["properties"]
       56 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
       57 LOADK                            R4 K22 ["align-x-center"]
       58 SETTABLEKS                       R4 R3 K0 ["tag"]
       60 LOADK                            R4 K5 ["UIListLayout"]
       61 SETTABLEKS                       R4 R3 K1 ["pseudo"]
       63 DUPTABLE                         R4 K19 [{"HorizontalAlignment"}]
       64 GETIMPORT                        R5 K24 [Enum.HorizontalAlignment.Center]
       66 SETTABLEKS                       R5 R4 K18 ["HorizontalAlignment"]
       68 SETTABLEKS                       R4 R3 K2 ["properties"]
       70 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
       71 LOADK                            R5 K25 ["align-x-right"]
       72 SETTABLEKS                       R5 R4 K0 ["tag"]
       74 LOADK                            R5 K5 ["UIListLayout"]
       75 SETTABLEKS                       R5 R4 K1 ["pseudo"]
       77 DUPTABLE                         R5 K19 [{"HorizontalAlignment"}]
       78 GETIMPORT                        R6 K27 [Enum.HorizontalAlignment.Right]
       80 SETTABLEKS                       R6 R5 K18 ["HorizontalAlignment"]
       82 SETTABLEKS                       R5 R4 K2 ["properties"]
       84 DUPTABLE                         R5 K3 [{"tag", "pseudo", "properties"}]
       85 LOADK                            R6 K28 ["align-y-top"]
       86 SETTABLEKS                       R6 R5 K0 ["tag"]
       88 LOADK                            R6 K5 ["UIListLayout"]
       89 SETTABLEKS                       R6 R5 K1 ["pseudo"]
       91 DUPTABLE                         R6 K30 [{"VerticalAlignment"}]
       92 GETIMPORT                        R7 K32 [Enum.VerticalAlignment.Top]
       94 SETTABLEKS                       R7 R6 K29 ["VerticalAlignment"]
       96 SETTABLEKS                       R6 R5 K2 ["properties"]
       98 DUPTABLE                         R6 K3 [{"tag", "pseudo", "properties"}]
       99 LOADK                            R7 K33 ["align-y-center"]
      100 SETTABLEKS                       R7 R6 K0 ["tag"]
      102 LOADK                            R7 K5 ["UIListLayout"]
      103 SETTABLEKS                       R7 R6 K1 ["pseudo"]
      105 DUPTABLE                         R7 K30 [{"VerticalAlignment"}]
      106 GETIMPORT                        R8 K34 [Enum.VerticalAlignment.Center]
      108 SETTABLEKS                       R8 R7 K29 ["VerticalAlignment"]
      110 SETTABLEKS                       R7 R6 K2 ["properties"]
      112 DUPTABLE                         R7 K3 [{"tag", "pseudo", "properties"}]
      113 LOADK                            R8 K35 ["align-y-bottom"]
      114 SETTABLEKS                       R8 R7 K0 ["tag"]
      116 LOADK                            R8 K5 ["UIListLayout"]
      117 SETTABLEKS                       R8 R7 K1 ["pseudo"]
      119 DUPTABLE                         R8 K30 [{"VerticalAlignment"}]
      120 GETIMPORT                        R9 K37 [Enum.VerticalAlignment.Bottom]
      122 SETTABLEKS                       R9 R8 K29 ["VerticalAlignment"]
      124 SETTABLEKS                       R8 R7 K2 ["properties"]
      126 SETLIST                          R1 R2 6 [1]
      128 NEWTABLE                         R2 0 2
      130 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
      131 LOADK                            R4 K38 ["wrap"]
      132 SETTABLEKS                       R4 R3 K0 ["tag"]
      134 LOADK                            R4 K5 ["UIListLayout"]
      135 SETTABLEKS                       R4 R3 K1 ["pseudo"]
      137 DUPTABLE                         R4 K40 [{"Wraps"}]
      138 LOADB                            R5 1
      139 SETTABLEKS                       R5 R4 K39 ["Wraps"]
      141 SETTABLEKS                       R4 R3 K2 ["properties"]
      143 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
      144 LOADK                            R5 K41 ["no-wrap"]
      145 SETTABLEKS                       R5 R4 K0 ["tag"]
      147 LOADK                            R5 K5 ["UIListLayout"]
      148 SETTABLEKS                       R5 R4 K1 ["pseudo"]
      150 DUPTABLE                         R5 K40 [{"Wraps"}]
      151 LOADB                            R6 0
      152 SETTABLEKS                       R6 R5 K39 ["Wraps"]
      154 SETTABLEKS                       R5 R4 K2 ["properties"]
      156 SETLIST                          R2 R3 2 [1]
      158 NEWTABLE                         R3 0 0
      160 DUPTABLE                         R4 K47 [{"none", "fill", "around", "between", "evenly"}]
      161 GETIMPORT                        R5 K50 [Enum.UIFlexAlignment.None]
      163 SETTABLEKS                       R5 R4 K42 ["none"]
      165 GETIMPORT                        R5 K52 [Enum.UIFlexAlignment.Fill]
      167 SETTABLEKS                       R5 R4 K43 ["fill"]
      169 GETIMPORT                        R5 K54 [Enum.UIFlexAlignment.SpaceAround]
      171 SETTABLEKS                       R5 R4 K44 ["around"]
      173 GETIMPORT                        R5 K56 [Enum.UIFlexAlignment.SpaceBetween]
      175 SETTABLEKS                       R5 R4 K45 ["between"]
      177 GETIMPORT                        R5 K58 [Enum.UIFlexAlignment.SpaceEvenly]
      179 SETTABLEKS                       R5 R4 K46 ["evenly"]
      181 MOVE                             R5 R4
      182 LOADNIL                          R6
      183 LOADNIL                          R7
      184 FORGPREP                         R5
      185 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      186 LOADK                            R14 K59 ["flex-%*"]
      187 MOVE                             R16 R8
      188 NAMECALL                         R14 R14 K60 ["format"]
      190 CALL                             R14 2 1
      191 MOVE                             R13 R14
      192 SETTABLEKS                       R13 R12 K0 ["tag"]
      194 LOADK                            R13 K5 ["UIListLayout"]
      195 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      197 DUPTABLE                         R13 K63 [{"HorizontalFlex", "VerticalFlex"}]
      198 SETTABLEKS                       R9 R13 K61 ["HorizontalFlex"]
      200 SETTABLEKS                       R9 R13 K62 ["VerticalFlex"]
      202 SETTABLEKS                       R13 R12 K2 ["properties"]
      204 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      206 MOVE                             R11 R3
      207 GETIMPORT                        R10 K66 [table.insert]
      209 CALL                             R10 2 0
      210 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      211 LOADK                            R14 K67 ["flex-x-%*"]
      212 MOVE                             R16 R8
      213 NAMECALL                         R14 R14 K60 ["format"]
      215 CALL                             R14 2 1
      216 MOVE                             R13 R14
      217 SETTABLEKS                       R13 R12 K0 ["tag"]
      219 LOADK                            R13 K5 ["UIListLayout"]
      220 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      222 DUPTABLE                         R13 K68 [{"HorizontalFlex"}]
      223 SETTABLEKS                       R9 R13 K61 ["HorizontalFlex"]
      225 SETTABLEKS                       R13 R12 K2 ["properties"]
      227 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      229 MOVE                             R11 R3
      230 GETIMPORT                        R10 K66 [table.insert]
      232 CALL                             R10 2 0
      233 DUPTABLE                         R12 K3 [{"tag", "pseudo", "properties"}]
      234 LOADK                            R14 K69 ["flex-y-%*"]
      235 MOVE                             R16 R8
      236 NAMECALL                         R14 R14 K60 ["format"]
      238 CALL                             R14 2 1
      239 MOVE                             R13 R14
      240 SETTABLEKS                       R13 R12 K0 ["tag"]
      242 LOADK                            R13 K5 ["UIListLayout"]
      243 SETTABLEKS                       R13 R12 K1 ["pseudo"]
      245 DUPTABLE                         R13 K70 [{"VerticalFlex"}]
      246 SETTABLEKS                       R9 R13 K62 ["VerticalFlex"]
      248 SETTABLEKS                       R13 R12 K2 ["properties"]
      250 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      252 MOVE                             R11 R3
      253 GETIMPORT                        R10 K66 [table.insert]
      255 CALL                             R10 2 0
      256 FORGLOOP                         R5 2 ; [-72]
      258 NEWTABLE                         R5 8 0
      260 GETIMPORT                        R6 K73 [Enum.ItemLineAlignment.Automatic]
      262 SETTABLEKS                       R6 R5 K74 ["auto"]
      264 GETIMPORT                        R6 K76 [Enum.ItemLineAlignment.Start]
      266 SETTABLEKS                       R6 R5 K77 ["start"]
      268 GETIMPORT                        R6 K78 [Enum.ItemLineAlignment.Center]
      270 SETTABLEKS                       R6 R5 K79 ["center"]
      272 GETIMPORT                        R6 K81 [Enum.ItemLineAlignment.End]
      274 SETTABLEKS                       R6 R5 K82 ["end"]
      276 GETIMPORT                        R6 K84 [Enum.ItemLineAlignment.Stretch]
      278 SETTABLEKS                       R6 R5 K85 ["stretch"]
      280 NEWTABLE                         R6 0 0
      282 MOVE                             R7 R5
      283 LOADNIL                          R8
      284 LOADNIL                          R9
      285 FORGPREP                         R7
      286 DUPTABLE                         R14 K3 [{"tag", "pseudo", "properties"}]
      287 LOADK                            R16 K86 ["items-%*"]
      288 MOVE                             R18 R10
      289 NAMECALL                         R16 R16 K60 ["format"]
      291 CALL                             R16 2 1
      292 MOVE                             R15 R16
      293 SETTABLEKS                       R15 R14 K0 ["tag"]
      295 LOADK                            R15 K5 ["UIListLayout"]
      296 SETTABLEKS                       R15 R14 K1 ["pseudo"]
      298 DUPTABLE                         R15 K87 [{"ItemLineAlignment"}]
      299 SETTABLEKS                       R11 R15 K71 ["ItemLineAlignment"]
      301 SETTABLEKS                       R15 R14 K2 ["properties"]
      303 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      305 MOVE                             R13 R6
      306 GETIMPORT                        R12 K66 [table.insert]
      308 CALL                             R12 2 0
      309 FORGLOOP                         R7 2 ; [-24]
      311 GETUPVAL                         R8 0
      312 GETTABLEKS                       R7 R8 K88 ["joinArrays"]
      314 MOVE                             R8 R0
      315 MOVE                             R9 R1
      316 MOVE                             R10 R2
      317 MOVE                             R11 R3
      318 MOVE                             R12 R6
      319 CALL                             R7 5 -1
      320 RETURN                           R7 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K3 [{"tag", "pseudo", "properties"}]
        7 LOADK                            R12 K4 ["gap-%*"]
        8 GETTABLEKS                       R14 R7 K5 ["name"]
       10 NAMECALL                         R12 R12 K6 ["format"]
       12 CALL                             R12 2 1
       13 MOVE                             R11 R12
       14 SETTABLEKS                       R11 R10 K0 ["tag"]
       16 LOADK                            R11 K7 ["UIListLayout"]
       17 SETTABLEKS                       R11 R10 K1 ["pseudo"]
       19 DUPTABLE                         R11 K9 [{"Padding"}]
       20 GETTABLEKS                       R12 R7 K10 ["size"]
       22 SETTABLEKS                       R12 R11 K8 ["Padding"]
       24 SETTABLEKS                       R11 R10 K2 ["properties"]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K13 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-27]
       34 NEWTABLE                         R3 0 0
       36 MOVE                             R4 R1
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 DUPTABLE                         R11 K3 [{"tag", "pseudo", "properties"}]
       41 LOADK                            R13 K14 ["gutter-%*"]
       42 GETTABLEKS                       R15 R8 K5 ["name"]
       44 NAMECALL                         R13 R13 K6 ["format"]
       46 CALL                             R13 2 1
       47 MOVE                             R12 R13
       48 SETTABLEKS                       R12 R11 K0 ["tag"]
       50 LOADK                            R12 K7 ["UIListLayout"]
       51 SETTABLEKS                       R12 R11 K1 ["pseudo"]
       53 DUPTABLE                         R12 K9 [{"Padding"}]
       54 GETTABLEKS                       R13 R8 K10 ["size"]
       56 SETTABLEKS                       R13 R12 K8 ["Padding"]
       58 SETTABLEKS                       R12 R11 K2 ["properties"]
       60 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       62 MOVE                             R10 R3
       63 GETIMPORT                        R9 K13 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R4 2 ; [-27]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R4 R5 K15 ["joinArrays"]
       71 MOVE                             R5 R2
       72 MOVE                             R6 R3
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

PROTO_6:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K3 [{"tag", "pseudo", "properties"}]
        3 LOADK                            R2 K4 ["grow"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 LOADK                            R2 K5 ["UIFlexItem"]
        7 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        9 DUPTABLE                         R2 K7 [{"FlexMode"}]
       10 GETIMPORT                        R3 K11 [Enum.UIFlexMode.Grow]
       12 SETTABLEKS                       R3 R2 K6 ["FlexMode"]
       14 SETTABLEKS                       R2 R1 K2 ["properties"]
       16 DUPTABLE                         R2 K3 [{"tag", "pseudo", "properties"}]
       17 LOADK                            R3 K12 ["shrink"]
       18 SETTABLEKS                       R3 R2 K0 ["tag"]
       20 LOADK                            R3 K5 ["UIFlexItem"]
       21 SETTABLEKS                       R3 R2 K1 ["pseudo"]
       23 DUPTABLE                         R3 K7 [{"FlexMode"}]
       24 GETIMPORT                        R4 K14 [Enum.UIFlexMode.Shrink]
       26 SETTABLEKS                       R4 R3 K6 ["FlexMode"]
       28 SETTABLEKS                       R3 R2 K2 ["properties"]
       30 DUPTABLE                         R3 K3 [{"tag", "pseudo", "properties"}]
       31 LOADK                            R4 K15 ["fill"]
       32 SETTABLEKS                       R4 R3 K0 ["tag"]
       34 LOADK                            R4 K5 ["UIFlexItem"]
       35 SETTABLEKS                       R4 R3 K1 ["pseudo"]
       37 DUPTABLE                         R4 K7 [{"FlexMode"}]
       38 GETIMPORT                        R5 K17 [Enum.UIFlexMode.Fill]
       40 SETTABLEKS                       R5 R4 K6 ["FlexMode"]
       42 SETTABLEKS                       R4 R3 K2 ["properties"]
       44 DUPTABLE                         R4 K3 [{"tag", "pseudo", "properties"}]
       45 LOADK                            R5 K18 ["no-flex"]
       46 SETTABLEKS                       R5 R4 K0 ["tag"]
       48 LOADK                            R5 K5 ["UIFlexItem"]
       49 SETTABLEKS                       R5 R4 K1 ["pseudo"]
       51 DUPTABLE                         R5 K7 [{"FlexMode"}]
       52 GETIMPORT                        R6 K20 [Enum.UIFlexMode.None]
       54 SETTABLEKS                       R6 R5 K6 ["FlexMode"]
       56 SETTABLEKS                       R5 R4 K2 ["properties"]
       58 SETLIST                          R0 R1 4 [1]
       60 NEWTABLE                         R1 0 5
       62 LOADN                            R2 1
       63 LOADN                            R3 2
       64 LOADN                            R4 3
       65 LOADN                            R5 4
       66 LOADN                            R6 5
       67 SETLIST                          R1 R2 5 [1]
       69 NEWTABLE                         R2 0 0
       71 NEWTABLE                         R3 0 0
       73 MOVE                             R4 R1
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 DUPTABLE                         R11 K3 [{"tag", "pseudo", "properties"}]
       78 LOADK                            R13 K21 ["grow-%*"]
       79 MOVE                             R15 R7
       80 NAMECALL                         R13 R13 K22 ["format"]
       82 CALL                             R13 2 1
       83 MOVE                             R12 R13
       84 SETTABLEKS                       R12 R11 K0 ["tag"]
       86 LOADK                            R12 K5 ["UIFlexItem"]
       87 SETTABLEKS                       R12 R11 K1 ["pseudo"]
       89 DUPTABLE                         R12 K24 [{"FlexMode", "GrowRatio"}]
       90 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
       92 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
       94 SETTABLEKS                       R7 R12 K23 ["GrowRatio"]
       96 SETTABLEKS                       R12 R11 K2 ["properties"]
       98 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      100 MOVE                             R10 R2
      101 GETIMPORT                        R9 K29 [table.insert]
      103 CALL                             R9 2 0
      104 DUPTABLE                         R11 K3 [{"tag", "pseudo", "properties"}]
      105 LOADK                            R13 K30 ["shrink-%*"]
      106 MOVE                             R15 R7
      107 NAMECALL                         R13 R13 K22 ["format"]
      109 CALL                             R13 2 1
      110 MOVE                             R12 R13
      111 SETTABLEKS                       R12 R11 K0 ["tag"]
      113 LOADK                            R12 K5 ["UIFlexItem"]
      114 SETTABLEKS                       R12 R11 K1 ["pseudo"]
      116 DUPTABLE                         R12 K32 [{"FlexMode", "ShrinkRatio"}]
      117 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Custom]
      119 SETTABLEKS                       R13 R12 K6 ["FlexMode"]
      121 SETTABLEKS                       R7 R12 K31 ["ShrinkRatio"]
      123 SETTABLEKS                       R12 R11 K2 ["properties"]
      125 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      127 MOVE                             R10 R3
      128 GETIMPORT                        R9 K29 [table.insert]
      130 CALL                             R9 2 0
      131 FORGLOOP                         R4 1 ; [-55]
      133 NEWTABLE                         R4 8 0
      135 GETIMPORT                        R5 K35 [Enum.ItemLineAlignment.Automatic]
      137 SETTABLEKS                       R5 R4 K36 ["auto"]
      139 GETIMPORT                        R5 K38 [Enum.ItemLineAlignment.Start]
      141 SETTABLEKS                       R5 R4 K39 ["start"]
      143 GETIMPORT                        R5 K41 [Enum.ItemLineAlignment.Center]
      145 SETTABLEKS                       R5 R4 K42 ["center"]
      147 GETIMPORT                        R5 K44 [Enum.ItemLineAlignment.End]
      149 SETTABLEKS                       R5 R4 K45 ["end"]
      151 GETIMPORT                        R5 K47 [Enum.ItemLineAlignment.Stretch]
      153 SETTABLEKS                       R5 R4 K48 ["stretch"]
      155 NEWTABLE                         R5 0 0
      157 MOVE                             R6 R4
      158 LOADNIL                          R7
      159 LOADNIL                          R8
      160 FORGPREP                         R6
      161 DUPTABLE                         R13 K3 [{"tag", "pseudo", "properties"}]
      162 LOADK                            R15 K49 ["self-%*"]
      163 MOVE                             R17 R9
      164 NAMECALL                         R15 R15 K22 ["format"]
      166 CALL                             R15 2 1
      167 MOVE                             R14 R15
      168 SETTABLEKS                       R14 R13 K0 ["tag"]
      170 LOADK                            R14 K5 ["UIFlexItem"]
      171 SETTABLEKS                       R14 R13 K1 ["pseudo"]
      173 DUPTABLE                         R14 K50 [{"ItemLineAlignment"}]
      174 SETTABLEKS                       R10 R14 K33 ["ItemLineAlignment"]
      176 SETTABLEKS                       R14 R13 K2 ["properties"]
      178 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      180 MOVE                             R12 R5
      181 GETIMPORT                        R11 K29 [table.insert]
      183 CALL                             R11 2 0
      184 FORGLOOP                         R6 2 ; [-24]
      186 GETUPVAL                         R7 0
      187 GETTABLEKS                       R6 R7 K51 ["joinArrays"]
      189 MOVE                             R7 R0
      190 MOVE                             R8 R2
      191 MOVE                             R9 R3
      192 MOVE                             R10 R5
      193 CALL                             R6 4 -1
      194 RETURN                           R6 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K3 [{"tag", "pseudo", "properties"}]
        7 LOADK                            R11 K4 ["radius-%*"]
        8 GETTABLEKS                       R13 R6 K5 ["name"]
       10 NAMECALL                         R11 R11 K6 ["format"]
       12 CALL                             R11 2 1
       13 MOVE                             R10 R11
       14 SETTABLEKS                       R10 R9 K0 ["tag"]
       16 LOADK                            R10 K7 ["UICorner"]
       17 SETTABLEKS                       R10 R9 K1 ["pseudo"]
       19 DUPTABLE                         R10 K9 [{"CornerRadius"}]
       20 GETTABLEKS                       R11 R6 K10 ["size"]
       22 SETTABLEKS                       R11 R10 K8 ["CornerRadius"]
       24 SETTABLEKS                       R10 R9 K2 ["properties"]
       26 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       28 MOVE                             R8 R1
       29 GETIMPORT                        R7 K13 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-27]
       34 RETURN                           R1 1

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
       61 GETTABLEKS                       R13 R7 K16 ["Background"]
       63 GETTABLEKS                       R12 R13 K12 ["Color3"]
       65 SETTABLEKS                       R12 R11 K9 ["BackgroundColor3"]
       67 GETTABLEKS                       R13 R7 K16 ["Background"]
       69 GETTABLEKS                       R12 R13 K13 ["Transparency"]
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
        8 JUMPIFEQKS                       R7 K1 ["none"] ; [+27]
       10 DUPTABLE                         R9 K5 [{"tag", "pseudo", "properties"}]
       11 LOADK                            R11 K6 ["stroke-%*"]
       12 GETTABLEKS                       R13 R6 K0 ["name"]
       14 NAMECALL                         R11 R11 K7 ["format"]
       16 CALL                             R11 2 1
       17 MOVE                             R10 R11
       18 SETTABLEKS                       R10 R9 K2 ["tag"]
       20 LOADK                            R10 K8 ["UIStroke"]
       21 SETTABLEKS                       R10 R9 K3 ["pseudo"]
       23 DUPTABLE                         R10 K10 [{"Thickness"}]
       24 GETTABLEKS                       R11 R6 K11 ["size"]
       26 SETTABLEKS                       R11 R10 K9 ["Thickness"]
       28 SETTABLEKS                       R10 R9 K4 ["properties"]
       30 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       32 MOVE                             R8 R1
       33 GETIMPORT                        R7 K14 [table.insert]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

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
       12 JUMPIFNOT                        R8 ; [+35]
       13 MOVE                             R8 R7
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 DUPTABLE                         R15 K7 [{"tag", "pseudo", "properties"}]
       18 LOADK                            R17 K8 ["stroke-%*"]
       19 MOVE                             R19 R11
       20 NAMECALL                         R17 R17 K9 ["format"]
       22 CALL                             R17 2 1
       23 MOVE                             R16 R17
       24 SETTABLEKS                       R16 R15 K4 ["tag"]
       26 LOADK                            R16 K10 ["UIStroke"]
       27 SETTABLEKS                       R16 R15 K5 ["pseudo"]
       29 DUPTABLE                         R16 K13 [{"Color", "Transparency"}]
       30 GETTABLEKS                       R17 R12 K14 ["Color3"]
       32 SETTABLEKS                       R17 R16 K11 ["Color"]
       34 GETTABLEKS                       R17 R12 K12 ["Transparency"]
       36 SETTABLEKS                       R17 R16 K12 ["Transparency"]
       38 SETTABLEKS                       R16 R15 K6 ["properties"]
       40 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       42 MOVE                             R14 R2
       43 GETIMPORT                        R13 K16 [table.insert]
       45 CALL                             R13 2 0
       46 FORGLOOP                         R8 2 ; [-30]
       48 FORGLOOP                         R3 2 ; [-43]
       50 MOVE                             R3 R1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 DUPTABLE                         R10 K7 [{"tag", "pseudo", "properties"}]
       55 LOADK                            R12 K8 ["stroke-%*"]
       56 MOVE                             R14 R6
       57 NAMECALL                         R12 R12 K9 ["format"]
       59 CALL                             R12 2 1
       60 MOVE                             R11 R12
       61 SETTABLEKS                       R11 R10 K4 ["tag"]
       63 LOADK                            R11 K10 ["UIStroke"]
       64 SETTABLEKS                       R11 R10 K5 ["pseudo"]
       66 DUPTABLE                         R11 K13 [{"Color", "Transparency"}]
       67 GETTABLEKS                       R13 R7 K17 ["Border"]
       69 GETTABLEKS                       R12 R13 K14 ["Color3"]
       71 SETTABLEKS                       R12 R11 K11 ["Color"]
       73 GETTABLEKS                       R13 R7 K17 ["Border"]
       75 GETTABLEKS                       R12 R13 K12 ["Transparency"]
       77 SETTABLEKS                       R12 R11 K12 ["Transparency"]
       79 SETTABLEKS                       R11 R10 K6 ["properties"]
       81 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       83 MOVE                             R9 R2
       84 GETIMPORT                        R8 K16 [table.insert]
       86 CALL                             R8 2 0
       87 FORGLOOP                         R3 2 ; [-34]
       89 NEWTABLE                         R3 4 0
       91 GETIMPORT                        R4 K21 [Enum.BorderStrokePosition.Center]
       93 SETTABLEKS                       R4 R3 K22 ["center"]
       95 GETIMPORT                        R4 K24 [Enum.BorderStrokePosition.Inner]
       97 SETTABLEKS                       R4 R3 K25 ["inner"]
       99 GETIMPORT                        R4 K27 [Enum.BorderStrokePosition.Outer]
      101 SETTABLEKS                       R4 R3 K28 ["outer"]
      103 MOVE                             R4 R3
      104 LOADNIL                          R5
      105 LOADNIL                          R6
      106 FORGPREP                         R4
      107 DUPTABLE                         R11 K7 [{"tag", "pseudo", "properties"}]
      108 LOADK                            R13 K29 ["stroke-position-%*"]
      109 MOVE                             R15 R7
      110 NAMECALL                         R13 R13 K9 ["format"]
      112 CALL                             R13 2 1
      113 MOVE                             R12 R13
      114 SETTABLEKS                       R12 R11 K4 ["tag"]
      116 LOADK                            R12 K10 ["UIStroke"]
      117 SETTABLEKS                       R12 R11 K5 ["pseudo"]
      119 DUPTABLE                         R12 K30 [{"BorderStrokePosition"}]
      120 SETTABLEKS                       R8 R12 K19 ["BorderStrokePosition"]
      122 SETTABLEKS                       R12 R11 K6 ["properties"]
      124 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      126 MOVE                             R10 R2
      127 GETIMPORT                        R9 K16 [table.insert]
      129 CALL                             R9 2 0
      130 FORGLOOP                         R4 2 ; [-24]
      132 RETURN                           R2 1

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
       69 GETTABLEKS                       R13 R7 K18 ["Foreground"]
       71 GETTABLEKS                       R12 R13 K14 ["Color3"]
       73 SETTABLEKS                       R12 R11 K9 ["ImageColor3"]
       75 GETTABLEKS                       R13 R7 K18 ["Foreground"]
       77 GETTABLEKS                       R12 R13 K15 ["Transparency"]
       79 SETTABLEKS                       R12 R11 K10 ["ImageTransparency"]
       81 GETTABLEKS                       R13 R7 K18 ["Foreground"]
       83 GETTABLEKS                       R12 R13 K14 ["Color3"]
       85 SETTABLEKS                       R12 R11 K11 ["TextColor3"]
       87 GETTABLEKS                       R13 R7 K18 ["Foreground"]
       89 GETTABLEKS                       R12 R13 K15 ["Transparency"]
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
       34 DUPTABLE                         R16 K13 [{"tag", "pseudo", "properties"}]
       35 LOADK                            R18 K10 ["text-%*"]
       36 MOVE                             R20 R6
       37 NAMECALL                         R18 R18 K11 ["format"]
       39 CALL                             R18 2 1
       40 MOVE                             R17 R18
       41 SETTABLEKS                       R17 R16 K6 ["tag"]
       43 LOADK                            R17 K14 ["UIPadding"]
       44 SETTABLEKS                       R17 R16 K12 ["pseudo"]
       46 DUPTABLE                         R17 K17 [{"PaddingTop", "PaddingBottom"}]
       47 SETTABLEKS                       R11 R17 K15 ["PaddingTop"]
       49 SETTABLEKS                       R11 R17 K16 ["PaddingBottom"]
       51 SETTABLEKS                       R17 R16 K7 ["properties"]
       53 SETLIST                          R15 R16 1 [1]
       55 SETTABLEKS                       R15 R14 K8 ["children"]
       57 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       59 MOVE                             R13 R2
       60 GETIMPORT                        R12 K20 [table.insert]
       62 CALL                             R12 2 0
       63 FORGLOOP                         R3 2 ; [-58]
       65 RETURN                           R2 1

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
      122 DUPTABLE                         R6 K13 [{"tag", "properties"}]
      123 LOADK                            R7 K42 ["text-wrap"]
      124 SETTABLEKS                       R7 R6 K11 ["tag"]
      126 DUPTABLE                         R7 K44 [{"TextWrapped"}]
      127 LOADB                            R8 1
      128 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      130 SETTABLEKS                       R7 R6 K12 ["properties"]
      132 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      134 MOVE                             R5 R0
      135 GETIMPORT                        R4 K19 [table.insert]
      137 CALL                             R4 2 0
      138 DUPTABLE                         R6 K13 [{"tag", "properties"}]
      139 LOADK                            R7 K45 ["text-no-wrap"]
      140 SETTABLEKS                       R7 R6 K11 ["tag"]
      142 DUPTABLE                         R7 K44 [{"TextWrapped"}]
      143 LOADB                            R8 0
      144 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      146 SETTABLEKS                       R7 R6 K12 ["properties"]
      148 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
      150 MOVE                             R5 R0
      151 GETIMPORT                        R4 K19 [table.insert]
      153 CALL                             R4 2 0
      154 RETURN                           R0 1

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
       51 DUPTABLE                         R11 K14 [{"tag", "pseudo", "properties"}]
       52 LOADK                            R13 K15 ["padding-%*"]
       53 GETTABLEKS                       R15 R8 K16 ["name"]
       55 NAMECALL                         R13 R13 K17 ["format"]
       57 CALL                             R13 2 1
       58 MOVE                             R12 R13
       59 SETTABLEKS                       R12 R11 K11 ["tag"]
       61 LOADK                            R12 K18 ["UIPadding"]
       62 SETTABLEKS                       R12 R11 K12 ["pseudo"]
       64 DUPTABLE                         R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       65 GETTABLEKS                       R13 R8 K20 ["size"]
       67 SETTABLEKS                       R13 R12 K9 ["PaddingTop"]
       69 GETTABLEKS                       R13 R8 K20 ["size"]
       71 SETTABLEKS                       R13 R12 K10 ["PaddingBottom"]
       73 GETTABLEKS                       R13 R8 K20 ["size"]
       75 SETTABLEKS                       R13 R12 K7 ["PaddingLeft"]
       77 GETTABLEKS                       R13 R8 K20 ["size"]
       79 SETTABLEKS                       R13 R12 K8 ["PaddingRight"]
       81 SETTABLEKS                       R12 R11 K13 ["properties"]
       83 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       85 MOVE                             R10 R2
       86 GETIMPORT                        R9 K23 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R4 2 ; [-39]
       91 MOVE                             R4 R1
       92 LOADNIL                          R5
       93 LOADNIL                          R6
       94 FORGPREP                         R4
       95 DUPTABLE                         R11 K14 [{"tag", "pseudo", "properties"}]
       96 LOADK                            R13 K24 ["margin-%*"]
       97 GETTABLEKS                       R15 R8 K16 ["name"]
       99 NAMECALL                         R13 R13 K17 ["format"]
      101 CALL                             R13 2 1
      102 MOVE                             R12 R13
      103 SETTABLEKS                       R12 R11 K11 ["tag"]
      105 LOADK                            R12 K18 ["UIPadding"]
      106 SETTABLEKS                       R12 R11 K12 ["pseudo"]
      108 DUPTABLE                         R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      109 GETTABLEKS                       R13 R8 K20 ["size"]
      111 SETTABLEKS                       R13 R12 K9 ["PaddingTop"]
      113 GETTABLEKS                       R13 R8 K20 ["size"]
      115 SETTABLEKS                       R13 R12 K10 ["PaddingBottom"]
      117 GETTABLEKS                       R13 R8 K20 ["size"]
      119 SETTABLEKS                       R13 R12 K7 ["PaddingLeft"]
      121 GETTABLEKS                       R13 R8 K20 ["size"]
      123 SETTABLEKS                       R13 R12 K8 ["PaddingRight"]
      125 SETTABLEKS                       R12 R11 K13 ["properties"]
      127 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      129 MOVE                             R10 R2
      130 GETIMPORT                        R9 K23 [table.insert]
      132 CALL                             R9 2 0
      133 FORGLOOP                         R4 2 ; [-39]
      135 MOVE                             R4 R3
      136 LOADNIL                          R5
      137 LOADNIL                          R6
      138 FORGPREP                         R4
      139 MOVE                             R9 R0
      140 LOADNIL                          R10
      141 LOADNIL                          R11
      142 FORGPREP                         R9
      143 NEWTABLE                         R14 0 0
      145 MOVE                             R15 R8
      146 LOADNIL                          R16
      147 LOADNIL                          R17
      148 FORGPREP                         R15
      149 GETTABLEKS                       R20 R13 K20 ["size"]
      151 SETTABLE                         R20 R14 R19
      152 FORGLOOP                         R15 2 ; [-4]
      154 DUPTABLE                         R17 K14 [{"tag", "pseudo", "properties"}]
      155 LOADK                            R19 K25 ["padding-%*-%*"]
      156 MOVE                             R21 R7
      157 GETTABLEKS                       R22 R13 K16 ["name"]
      159 NAMECALL                         R19 R19 K17 ["format"]
      161 CALL                             R19 3 1
      162 MOVE                             R18 R19
      163 SETTABLEKS                       R18 R17 K11 ["tag"]
      165 LOADK                            R18 K18 ["UIPadding"]
      166 SETTABLEKS                       R18 R17 K12 ["pseudo"]
      168 SETTABLEKS                       R14 R17 K13 ["properties"]
      170 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
      172 MOVE                             R16 R2
      173 GETIMPORT                        R15 K23 [table.insert]
      175 CALL                             R15 2 0
      176 FORGLOOP                         R9 2 ; [-34]
      178 MOVE                             R9 R1
      179 LOADNIL                          R10
      180 LOADNIL                          R11
      181 FORGPREP                         R9
      182 NEWTABLE                         R14 0 0
      184 MOVE                             R15 R8
      185 LOADNIL                          R16
      186 LOADNIL                          R17
      187 FORGPREP                         R15
      188 GETTABLEKS                       R20 R13 K20 ["size"]
      190 SETTABLE                         R20 R14 R19
      191 FORGLOOP                         R15 2 ; [-4]
      193 DUPTABLE                         R17 K14 [{"tag", "pseudo", "properties"}]
      194 LOADK                            R19 K26 ["margin-%*-%*"]
      195 MOVE                             R21 R7
      196 GETTABLEKS                       R22 R13 K16 ["name"]
      198 NAMECALL                         R19 R19 K17 ["format"]
      200 CALL                             R19 3 1
      201 MOVE                             R18 R19
      202 SETTABLEKS                       R18 R17 K11 ["tag"]
      204 LOADK                            R18 K18 ["UIPadding"]
      205 SETTABLEKS                       R18 R17 K12 ["pseudo"]
      207 SETTABLEKS                       R14 R17 K13 ["properties"]
      209 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
      211 MOVE                             R16 R2
      212 GETIMPORT                        R15 K23 [table.insert]
      214 CALL                             R15 2 0
      215 FORGLOOP                         R9 2 ; [-34]
      217 FORGLOOP                         R4 2 ; [-79]
      219 RETURN                           R2 1

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
        2 DUPTABLE                         R1 K3 [{"left", "center", "right"}]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["left"]
        6 LOADK                            R2 K4 [0.5]
        7 SETTABLEKS                       R2 R1 K1 ["center"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["right"]
       12 DUPTABLE                         R2 K7 [{"top", "center", "bottom"}]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K5 ["top"]
       16 LOADK                            R3 K4 [0.5]
       17 SETTABLEKS                       R3 R2 K1 ["center"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K6 ["bottom"]
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R2
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 DUPTABLE                         R15 K10 [{"tag", "properties"}]
       31 LOADK                            R17 K11 ["position-%*-%*"]
       32 MOVE                             R19 R11
       33 MOVE                             R20 R6
       34 NAMECALL                         R17 R17 K12 ["format"]
       36 CALL                             R17 3 1
       37 MOVE                             R16 R17
       38 SETTABLEKS                       R16 R15 K8 ["tag"]
       40 DUPTABLE                         R16 K14 [{"Position"}]
       41 GETIMPORT                        R17 K17 [UDim2.fromScale]
       43 MOVE                             R18 R7
       44 MOVE                             R19 R12
       45 CALL                             R17 2 1
       46 SETTABLEKS                       R17 R16 K13 ["Position"]
       48 SETTABLEKS                       R16 R15 K9 ["properties"]
       50 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       52 MOVE                             R14 R0
       53 GETIMPORT                        R13 K20 [table.insert]
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-27]
       58 FORGLOOP                         R3 2 ; [-33]
       60 RETURN                           R0 1

PROTO_18:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K3 [{"left", "center", "right"}]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["left"]
        6 LOADK                            R2 K4 [0.5]
        7 SETTABLEKS                       R2 R1 K1 ["center"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["right"]
       12 DUPTABLE                         R2 K7 [{"top", "center", "bottom"}]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K5 ["top"]
       16 LOADK                            R3 K4 [0.5]
       17 SETTABLEKS                       R3 R2 K1 ["center"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K6 ["bottom"]
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R8 R2
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 DUPTABLE                         R15 K10 [{"tag", "properties"}]
       31 LOADK                            R17 K11 ["anchor-%*-%*"]
       32 MOVE                             R19 R11
       33 MOVE                             R20 R6
       34 NAMECALL                         R17 R17 K12 ["format"]
       36 CALL                             R17 3 1
       37 MOVE                             R16 R17
       38 SETTABLEKS                       R16 R15 K8 ["tag"]
       40 DUPTABLE                         R16 K14 [{"AnchorPoint"}]
       41 GETIMPORT                        R17 K17 [Vector2.new]
       43 MOVE                             R18 R7
       44 MOVE                             R19 R12
       45 CALL                             R17 2 1
       46 SETTABLEKS                       R17 R16 K13 ["AnchorPoint"]
       48 SETTABLEKS                       R16 R15 K9 ["properties"]
       50 FASTCALL2                        TABLE_INSERT R0 R15 ; [+4]
       52 MOVE                             R14 R0
       53 GETIMPORT                        R13 K20 [table.insert]
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-27]
       58 FORGLOOP                         R3 2 ; [-33]
       60 RETURN                           R0 1

PROTO_19:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"tag", "properties"}]
        3 LOADK                            R2 K3 ["clip"]
        4 SETTABLEKS                       R2 R1 K0 ["tag"]
        6 DUPTABLE                         R2 K5 [{"ClipsDescendants"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["ClipsDescendants"]
       10 SETTABLEKS                       R2 R1 K1 ["properties"]
       12 DUPTABLE                         R2 K2 [{"tag", "properties"}]
       13 LOADK                            R3 K6 ["no-clip"]
       14 SETTABLEKS                       R3 R2 K0 ["tag"]
       16 DUPTABLE                         R3 K5 [{"ClipsDescendants"}]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K4 ["ClipsDescendants"]
       20 SETTABLEKS                       R3 R2 K1 ["properties"]
       22 SETLIST                          R0 R1 2 [1]
       24 RETURN                           R0 1

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
       46 DUPTABLE                         R9 K3 [{"tag", "pseudo", "properties"}]
       47 LOADK                            R11 K4 ["aspect-%*-%*"]
       48 GETTABLEN                        R13 R6 1
       49 GETTABLEN                        R14 R6 2
       50 NAMECALL                         R11 R11 K5 ["format"]
       52 CALL                             R11 3 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R10 R9 K0 ["tag"]
       56 LOADK                            R10 K6 ["UIAspectRatioConstraint"]
       57 SETTABLEKS                       R10 R9 K1 ["pseudo"]
       59 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       60 GETTABLEN                        R13 R6 1
       61 GETTABLEN                        R14 R6 2
       62 DIV                              R12 R13 R14
       63 MULK                             R14 R12 K9 [1000]
       64 FASTCALL1                        MATH_ROUND R14 ; [+2]
       65 GETIMPORT                        R13 K12 [math.round]
       67 CALL                             R13 1 1
       68 DIVK                             R11 R13 K9 [1000]
       69 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
       71 SETTABLEKS                       R10 R9 K2 ["properties"]
       73 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       75 MOVE                             R8 R0
       76 GETIMPORT                        R7 K15 [table.insert]
       78 CALL                             R7 2 0
       79 GETTABLEN                        R7 R6 1
       80 GETTABLEN                        R8 R6 2
       81 JUMPIFEQ                         R7 R8 ; [+34]
       83 DUPTABLE                         R9 K3 [{"tag", "pseudo", "properties"}]
       84 LOADK                            R11 K4 ["aspect-%*-%*"]
       85 GETTABLEN                        R13 R6 2
       86 GETTABLEN                        R14 R6 1
       87 NAMECALL                         R11 R11 K5 ["format"]
       89 CALL                             R11 3 1
       90 MOVE                             R10 R11
       91 SETTABLEKS                       R10 R9 K0 ["tag"]
       93 LOADK                            R10 K6 ["UIAspectRatioConstraint"]
       94 SETTABLEKS                       R10 R9 K1 ["pseudo"]
       96 DUPTABLE                         R10 K8 [{"AspectRatio"}]
       97 GETTABLEN                        R13 R6 2
       98 GETTABLEN                        R14 R6 1
       99 DIV                              R12 R13 R14
      100 MULK                             R14 R12 K9 [1000]
      101 FASTCALL1                        MATH_ROUND R14 ; [+2]
      102 GETIMPORT                        R13 K12 [math.round]
      104 CALL                             R13 1 1
      105 DIVK                             R11 R13 K9 [1000]
      106 SETTABLEKS                       R11 R10 K7 ["AspectRatio"]
      108 SETTABLEKS                       R10 R9 K2 ["properties"]
      110 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      112 MOVE                             R8 R0
      113 GETIMPORT                        R7 K15 [table.insert]
      115 CALL                             R7 2 0
      116 FORGLOOP                         R2 2 ; [-71]
      118 RETURN                           R0 1

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
       46 JUMPIFEQKS                       R8 K16 ["emphasis"] ; [+80]
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
       90 DUPTABLE                         R11 K24 [{"tag", "pseudo", "properties", "deprecatedFor"}]
       91 LOADK                            R13 K25 ["stroke-%*"]
       92 MOVE                             R15 R8
       93 NAMECALL                         R13 R13 K7 ["format"]
       95 CALL                             R13 2 1
       96 MOVE                             R12 R13
       97 SETTABLEKS                       R12 R11 K2 ["tag"]
       99 LOADK                            R12 K26 ["UIStroke"]
      100 SETTABLEKS                       R12 R11 K23 ["pseudo"]
      102 DUPTABLE                         R12 K28 [{"Color", "Transparency"}]
      103 GETTABLEKS                       R13 R7 K11 ["Color3"]
      105 SETTABLEKS                       R13 R12 K27 ["Color"]
      107 GETTABLEKS                       R13 R7 K12 ["Transparency"]
      109 SETTABLEKS                       R13 R12 K12 ["Transparency"]
      111 SETTABLEKS                       R12 R11 K3 ["properties"]
      113 LOADK                            R13 K25 ["stroke-%*"]
      114 MOVE                             R15 R6
      115 NAMECALL                         R13 R13 K7 ["format"]
      117 CALL                             R13 2 1
      118 MOVE                             R12 R13
      119 SETTABLEKS                       R12 R11 K4 ["deprecatedFor"]
      121 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      123 MOVE                             R10 R1
      124 GETIMPORT                        R9 K15 [table.insert]
      126 CALL                             R9 2 0
      127 FORGLOOP                         R3 2 ; [-120]
      129 RETURN                           R1 1

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
       21 GETTABLEKS                       R12 R13 K10 ["joinArrays"]
       23 GETUPVAL                         R13 1
       24 MOVE                             R14 R0
       25 CALL                             R13 1 1
       26 GETUPVAL                         R14 2
       27 CALL                             R14 0 1
       28 GETUPVAL                         R15 3
       29 CALL                             R15 0 1
       30 GETUPVAL                         R16 4
       31 CALL                             R16 0 1
       32 GETUPVAL                         R17 5
       33 CALL                             R17 0 1
       34 GETUPVAL                         R18 6
       35 CALL                             R18 0 1
       36 GETUPVAL                         R19 7
       37 CALL                             R19 0 1
       38 GETUPVAL                         R20 8
       39 CALL                             R20 0 1
       40 GETUPVAL                         R21 9
       41 CALL                             R21 0 1
       42 CALL                             R12 9 1
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R13 R14 K10 ["joinArrays"]
       46 GETUPVAL                         R14 10
       47 MOVE                             R15 R0
       48 CALL                             R14 1 1
       49 GETUPVAL                         R15 11
       50 CALL                             R15 0 1
       51 GETUPVAL                         R16 12
       52 MOVE                             R17 R4
       53 MOVE                             R18 R5
       54 CALL                             R16 2 1
       55 GETUPVAL                         R17 13
       56 MOVE                             R18 R6
       57 CALL                             R17 1 1
       58 GETUPVAL                         R18 14
       59 MOVE                             R19 R7
       60 CALL                             R18 1 1
       61 GETUPVAL                         R19 15
       62 MOVE                             R20 R8
       63 CALL                             R19 1 1
       64 GETUPVAL                         R20 16
       65 MOVE                             R21 R9
       66 GETTABLEKS                       R24 R0 K11 ["Config"]
       68 GETTABLEKS                       R23 R24 K12 ["Text"]
       70 GETTABLEKS                       R22 R23 K13 ["NominalScale"]
       72 CALL                             R20 2 1
       73 GETUPVAL                         R21 17
       74 MOVE                             R22 R10
       75 MOVE                             R23 R11
       76 CALL                             R21 2 1
       77 CALL                             R13 8 1
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R14 R15 K10 ["joinArrays"]
       81 GETUPVAL                         R15 18
       82 MOVE                             R16 R0
       83 CALL                             R15 1 1
       84 GETUPVAL                         R16 19
       85 MOVE                             R17 R2
       86 CALL                             R16 1 1
       87 GETUPVAL                         R17 20
       88 MOVE                             R18 R2
       89 MOVE                             R19 R3
       90 CALL                             R17 2 1
       91 GETUPVAL                         R18 21
       92 MOVE                             R19 R2
       93 MOVE                             R20 R3
       94 CALL                             R18 2 1
       95 GETUPVAL                         R19 22
       96 MOVE                             R20 R2
       97 MOVE                             R21 R3
       98 CALL                             R19 2 1
       99 CALL                             R14 5 1
      100 RETURN                           R12 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["Tokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K11 ["Types"]
       31 CALL                             R4 1 1
       32 DUPTABLE                         R5 K23 [{"Content", "Stroke", "Shift", "Surface", "OverMedia", "System", "Extended", "Common", "Selection", "State", "None"}]
       33 NEWTABLE                         R6 0 1
       35 LOADK                            R7 K24 ["content"]
       36 SETLIST                          R6 R7 1 [1]
       38 SETTABLEKS                       R6 R5 K12 ["Content"]
       40 NEWTABLE                         R6 0 1
       42 LOADK                            R7 K25 ["stroke"]
       43 SETLIST                          R6 R7 1 [1]
       45 SETTABLEKS                       R6 R5 K13 ["Stroke"]
       47 NEWTABLE                         R6 0 1
       49 LOADK                            R7 K26 ["bg"]
       50 SETLIST                          R6 R7 1 [1]
       52 SETTABLEKS                       R6 R5 K14 ["Shift"]
       54 NEWTABLE                         R6 0 1
       56 LOADK                            R7 K26 ["bg"]
       57 SETLIST                          R6 R7 1 [1]
       59 SETTABLEKS                       R6 R5 K15 ["Surface"]
       61 NEWTABLE                         R6 0 1
       63 LOADK                            R7 K26 ["bg"]
       64 SETLIST                          R6 R7 1 [1]
       66 SETTABLEKS                       R6 R5 K16 ["OverMedia"]
       68 NEWTABLE                         R6 0 3
       70 LOADK                            R7 K26 ["bg"]
       71 LOADK                            R8 K24 ["content"]
       72 LOADK                            R9 K25 ["stroke"]
       73 SETLIST                          R6 R7 3 [1]
       75 SETTABLEKS                       R6 R5 K17 ["System"]
       77 NEWTABLE                         R6 0 0
       79 SETTABLEKS                       R6 R5 K18 ["Extended"]
       81 NEWTABLE                         R6 0 0
       83 SETTABLEKS                       R6 R5 K19 ["Common"]
       85 NEWTABLE                         R6 0 0
       87 SETTABLEKS                       R6 R5 K20 ["Selection"]
       89 NEWTABLE                         R6 0 0
       91 SETTABLEKS                       R6 R5 K21 ["State"]
       93 NEWTABLE                         R6 0 0
       95 SETTABLEKS                       R6 R5 K22 ["None"]
       97 DUPCLOSURE                       R6 K27 [PROTO_0]
       98 DUPCLOSURE                       R7 K28 [PROTO_1]
       99 DUPCLOSURE                       R8 K29 [PROTO_2]
      100 DUPCLOSURE                       R9 K30 [PROTO_3]
      101 DUPCLOSURE                       R10 K31 [PROTO_4]
      102 CAPTURE                          VAL R2
      103 DUPCLOSURE                       R11 K32 [PROTO_5]
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R12 K33 [PROTO_6]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R13 K34 [PROTO_7]
      108 DUPCLOSURE                       R14 K35 [PROTO_8]
      109 DUPCLOSURE                       R15 K36 [PROTO_9]
      110 CAPTURE                          VAL R5
      111 DUPCLOSURE                       R16 K37 [PROTO_10]
      112 DUPCLOSURE                       R17 K38 [PROTO_11]
      113 CAPTURE                          VAL R5
      114 DUPCLOSURE                       R18 K39 [PROTO_12]
      115 CAPTURE                          VAL R5
      116 DUPCLOSURE                       R19 K40 [PROTO_13]
      117 DUPCLOSURE                       R20 K41 [PROTO_14]
      118 DUPCLOSURE                       R21 K42 [PROTO_15]
      119 DUPCLOSURE                       R22 K43 [PROTO_16]
      120 DUPCLOSURE                       R23 K44 [PROTO_17]
      121 DUPCLOSURE                       R24 K45 [PROTO_18]
      122 DUPCLOSURE                       R25 K46 [PROTO_19]
      123 DUPCLOSURE                       R26 K47 [PROTO_20]
      124 DUPCLOSURE                       R27 K48 [PROTO_21]
      125 DUPCLOSURE                       R28 K49 [PROTO_22]
      126 DUPCLOSURE                       R29 K50 [PROTO_23]
      127 DUPCLOSURE                       R30 K51 [PROTO_24]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R22
      134 CAPTURE                          VAL R23
      135 CAPTURE                          VAL R24
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R27
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R28
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R18
      151 DUPTABLE                         R31 K54 [{"rulesGenerator", "rules"}]
      152 SETTABLEKS                       R30 R31 K52 ["rulesGenerator"]
      154 DUPTABLE                         R32 K77 [{"DefaultRules", "EngineDefaultBypassRules", "FlexItemRules", "TextRules", "AutomaticSizeRules", "PositionRules", "AnchorPointRules", "ClipsDescendantRules", "AspectRatioRules", "DefaultSizeRules", "ListLayoutRules", "ListLayoutSpacingRules", "CornerRules", "SizeRules", "StrokeSizeRules", "TypographyRules", "PaddingRules", "DefaultColorRules", "DeprecatedColorRules", "BackgroundRules", "StrokeRules", "ContentRules"}]
      155 SETTABLEKS                       R6 R32 K55 ["DefaultRules"]
      157 SETTABLEKS                       R9 R32 K56 ["EngineDefaultBypassRules"]
      159 SETTABLEKS                       R12 R32 K57 ["FlexItemRules"]
      161 SETTABLEKS                       R20 R32 K58 ["TextRules"]
      163 SETTABLEKS                       R22 R32 K59 ["AutomaticSizeRules"]
      165 SETTABLEKS                       R23 R32 K60 ["PositionRules"]
      167 SETTABLEKS                       R24 R32 K61 ["AnchorPointRules"]
      169 SETTABLEKS                       R25 R32 K62 ["ClipsDescendantRules"]
      171 SETTABLEKS                       R27 R32 K63 ["AspectRatioRules"]
      173 SETTABLEKS                       R7 R32 K64 ["DefaultSizeRules"]
      175 SETTABLEKS                       R10 R32 K65 ["ListLayoutRules"]
      177 SETTABLEKS                       R11 R32 K66 ["ListLayoutSpacingRules"]
      179 SETTABLEKS                       R13 R32 K67 ["CornerRules"]
      181 SETTABLEKS                       R14 R32 K68 ["SizeRules"]
      183 SETTABLEKS                       R16 R32 K69 ["StrokeSizeRules"]
      185 SETTABLEKS                       R19 R32 K70 ["TypographyRules"]
      187 SETTABLEKS                       R21 R32 K71 ["PaddingRules"]
      189 SETTABLEKS                       R8 R32 K72 ["DefaultColorRules"]
      191 SETTABLEKS                       R28 R32 K73 ["DeprecatedColorRules"]
      193 SETTABLEKS                       R15 R32 K74 ["BackgroundRules"]
      195 SETTABLEKS                       R17 R32 K75 ["StrokeRules"]
      197 SETTABLEKS                       R18 R32 K76 ["ContentRules"]
      199 SETTABLEKS                       R32 R31 K53 ["rules"]
      201 RETURN                           R31 1
