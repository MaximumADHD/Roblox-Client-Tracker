PROTO_0:
        0 JUMPIF                           R1 ; [+5]
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Enums"]
        9 GETTABLEKS                       R2 R2 K1 ["IconVariant"]
       11 GETTABLEKS                       R2 R2 K2 ["Filled"]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["Enums"]
       17 GETTABLEKS                       R2 R2 K1 ["IconVariant"]
       19 GETTABLEKS                       R2 R2 K3 ["Regular"]
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["View"]
        4 DUPTABLE                         R3 K5 [{["LayoutOrder"], ["Size"], ["tag"] = "col align-y-center padding-y-small"}]
        5 SETTABLEKS                       R0 R3 K1 ["LayoutOrder"]
        7 GETIMPORT                        R4 K8 [UDim2.new]
        9 LOADN                            R5 1
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 GETUPVAL                         R9 2
       13 GETTABLEKS                       R9 R9 K2 ["Size"]
       15 GETTABLEKS                       R9 R9 K9 ["Size_400"]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K10 ["Stroke"]
       20 GETTABLEKS                       R10 R10 K11 ["Standard"]
       22 ADD                              R8 R9 R10
       23 CALL                             R4 4 1
       24 SETTABLEKS                       R4 R3 K2 ["Size"]
       26 DUPTABLE                         R4 K13 [{"Line"}]
       27 GETUPVAL                         R5 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K0 ["View"]
       31 DUPTABLE                         R7 K15 [{["Size"], ["tag"] = "bg-shift-200"}]
       32 GETIMPORT                        R8 K8 [UDim2.new]
       34 LOADN                            R9 1
       35 LOADN                            R10 0
       36 LOADN                            R11 0
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R12 R12 K10 ["Stroke"]
       40 GETTABLEKS                       R12 R12 K11 ["Standard"]
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K2 ["Size"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K12 ["Line"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["isExpanded"]
        8 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R3 R0 K3 ["brand"]
       14 DUPTABLE                         R4 K5 [{"Toggle"}]
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["View"]
       19 DUPTABLE                         R7 K15 [{["testId"] = "--appkit-nav-rail-toggle", ["onActivated"], ["LayoutOrder"] = 1, ["Size"], ["tag"] = "row align-x-center align-y-center radius-medium"}]
       20 GETTABLEKS                       R8 R0 K16 ["onToggle"]
       22 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       24 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       26 GETUPVAL                         R9 2
       27 GETUPVAL                         R10 2
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K12 ["Size"]
       31 DUPTABLE                         R8 K21 [{"Icon"}]
       32 GETUPVAL                         R9 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K20 ["Icon"]
       36 DUPTABLE                         R11 K25 [{"name", "size", "style"}]
       37 GETTABLEKS                       R13 R0 K27 ["icon"]
       39 ORK                              R12 R13 K26 ["three-bars-horizontal"]
       40 SETTABLEKS                       R12 R11 K22 ["name"]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K28 ["Enums"]
       45 GETTABLEKS                       R12 R12 K29 ["IconSize"]
       47 GETTABLEKS                       R12 R12 K30 ["Medium"]
       49 SETTABLEKS                       R12 R11 K23 ["size"]
       51 GETTABLEKS                       R12 R1 K31 ["Color"]
       53 GETTABLEKS                       R12 R12 K32 ["Content"]
       55 GETTABLEKS                       R12 R12 K33 ["Emphasis"]
       57 SETTABLEKS                       R12 R11 K24 ["style"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K20 ["Icon"]
       62 CALL                             R5 3 1
       63 SETTABLEKS                       R5 R4 K4 ["Toggle"]
       65 JUMPIFNOT                        R2 ; [+158]
       66 GETTABLEKS                       R5 R0 K34 ["productLabel"]
       68 JUMPIF                           R5 ; [+2]
       69 GETTABLEKS                       R5 R0 K35 ["title"]
       71 NEWTABLE                         R6 2 0
       73 JUMPIFNOTEQKS                    R3 K36 ["product"] ; [+4]
       75 GETTABLEKS                       R7 R0 K37 ["productIcon"]
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R7 R0 K38 ["logoIcon"]
       80 JUMPIFEQKNIL                     R7 ; [+50]
       82 GETUPVAL                         R8 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K20 ["Icon"]
       86 DUPTABLE                         R10 K40 [{["name"], ["variant"], ["size"], ["LayoutOrder"] = 1, ["style"]}]
       87 SETTABLEKS                       R7 R10 K22 ["name"]
       89 JUMPIFEQKNIL                     R7 ; [+12]
       91 GETUPVAL                         R13 3
       92 GETTABLE                         R12 R13 R7
       93 JUMPIFNOT                        R12 ; [+8]
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K28 ["Enums"]
       97 GETTABLEKS                       R11 R11 K41 ["IconVariant"]
       99 GETTABLEKS                       R11 R11 K42 ["Filled"]
      101 JUMP                             ; [+7]
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K28 ["Enums"]
      105 GETTABLEKS                       R11 R11 K41 ["IconVariant"]
      107 GETTABLEKS                       R11 R11 K43 ["Regular"]
      109 SETTABLEKS                       R11 R10 K39 ["variant"]
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K28 ["Enums"]
      114 GETTABLEKS                       R11 R11 K29 ["IconSize"]
      116 GETTABLEKS                       R11 R11 K30 ["Medium"]
      118 SETTABLEKS                       R11 R10 K23 ["size"]
      120 GETTABLEKS                       R11 R1 K31 ["Color"]
      122 GETTABLEKS                       R11 R11 K32 ["Content"]
      124 GETTABLEKS                       R11 R11 K33 ["Emphasis"]
      126 SETTABLEKS                       R11 R10 K24 ["style"]
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R6 K44 ["Glyph"]
      131 JUMPIFEQKNIL                     R5 ; [+35]
      133 JUMPIFEQKS                       R3 K36 ["product"] ; [+2]
      135 LOADB                            R8 0 +1
      136 LOADB                            R8 1
      137 GETUPVAL                         R9 1
      138 GETUPVAL                         R10 0
      139 GETTABLEKS                       R10 R10 K45 ["Text"]
      141 DUPTABLE                         R11 K49 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-title-medium content-emphasis text-align-x-left text-align-y-center text-truncate-end"}]
      142 JUMPIFNOT                        R8 ; [+5]
      143 GETIMPORT                        R12 K52 [string.upper]
      145 MOVE                             R13 R5
      146 CALL                             R12 1 1
      147 JUMP                             ; [+1]
      148 MOVE                             R12 R5
      149 SETTABLEKS                       R12 R11 K45 ["Text"]
      151 GETIMPORT                        R12 K54 [UDim2.new]
      153 LOADN                            R13 1
      154 LOADN                            R14 0
      155 LOADN                            R15 0
      156 GETUPVAL                         R16 2
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K12 ["Size"]
      160 GETIMPORT                        R12 K57 [Enum.AutomaticSize.None]
      162 SETTABLEKS                       R12 R11 K47 ["AutomaticSize"]
      164 CALL                             R9 2 1
      165 SETTABLEKS                       R9 R6 K58 ["Wordmark"]
      167 GETIMPORT                        R8 K60 [next]
      169 MOVE                             R9 R6
      170 CALL                             R8 1 1
      171 JUMPIFEQKNIL                     R8 ; [+52]
      173 GETUPVAL                         R8 1
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R9 R9 K6 ["View"]
      177 DUPTABLE                         R10 K62 [{["LayoutOrder"] = 2, ["Size"], ["layout"]}]
      178 GETIMPORT                        R11 K54 [UDim2.new]
      180 LOADN                            R12 1
      181 GETUPVAL                         R15 2
      182 GETUPVAL                         R16 4
      183 ADD                              R14 R15 R16
      184 MINUS                            R13 R14
      185 LOADN                            R14 0
      186 GETUPVAL                         R15 2
      187 CALL                             R11 4 1
      188 SETTABLEKS                       R11 R10 K12 ["Size"]
      190 DUPTABLE                         R11 K68 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder", "Padding"}]
      191 GETIMPORT                        R12 K70 [Enum.FillDirection.Horizontal]
      193 SETTABLEKS                       R12 R11 K63 ["FillDirection"]
      195 GETIMPORT                        R12 K72 [Enum.VerticalAlignment.Center]
      197 SETTABLEKS                       R12 R11 K64 ["VerticalAlignment"]
      199 GETIMPORT                        R12 K74 [Enum.HorizontalAlignment.Left]
      201 SETTABLEKS                       R12 R11 K65 ["HorizontalAlignment"]
      203 GETIMPORT                        R12 K75 [Enum.SortOrder.LayoutOrder]
      205 SETTABLEKS                       R12 R11 K66 ["SortOrder"]
      207 GETIMPORT                        R12 K77 [UDim.new]
      209 LOADN                            R13 0
      210 GETUPVAL                         R14 5
      211 GETTABLEKS                       R14 R14 K78 ["Gap"]
      213 GETTABLEKS                       R14 R14 K79 ["Small"]
      215 CALL                             R12 2 1
      216 SETTABLEKS                       R12 R11 K67 ["Padding"]
      218 SETTABLEKS                       R11 R10 K61 ["layout"]
      220 MOVE                             R11 R6
      221 CALL                             R8 3 1
      222 SETTABLEKS                       R8 R4 K80 ["Brand"]
      224 GETUPVAL                         R5 1
      225 GETUPVAL                         R6 0
      226 GETTABLEKS                       R6 R6 K6 ["View"]
      228 DUPTABLE                         R7 K82 [{["testId"] = "--appkit-nav-rail-header", ["LayoutOrder"], ["Size"], ["layout"]}]
      229 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
      231 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
      233 GETIMPORT                        R8 K54 [UDim2.new]
      235 LOADN                            R9 1
      236 LOADN                            R10 0
      237 LOADN                            R11 0
      238 GETUPVAL                         R12 2
      239 CALL                             R8 4 1
      240 SETTABLEKS                       R8 R7 K12 ["Size"]
      242 DUPTABLE                         R8 K68 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder", "Padding"}]
      243 GETIMPORT                        R9 K70 [Enum.FillDirection.Horizontal]
      245 SETTABLEKS                       R9 R8 K63 ["FillDirection"]
      247 GETIMPORT                        R9 K72 [Enum.VerticalAlignment.Center]
      249 SETTABLEKS                       R9 R8 K64 ["VerticalAlignment"]
      251 JUMPIFNOT                        R2 ; [+3]
      252 GETIMPORT                        R9 K74 [Enum.HorizontalAlignment.Left]
      254 JUMP                             ; [+2]
      255 GETIMPORT                        R9 K83 [Enum.HorizontalAlignment.Center]
      257 SETTABLEKS                       R9 R8 K65 ["HorizontalAlignment"]
      259 GETIMPORT                        R9 K75 [Enum.SortOrder.LayoutOrder]
      261 SETTABLEKS                       R9 R8 K66 ["SortOrder"]
      263 GETIMPORT                        R9 K77 [UDim.new]
      265 LOADN                            R10 0
      266 GETUPVAL                         R11 4
      267 CALL                             R9 2 1
      268 SETTABLEKS                       R9 R8 K67 ["Padding"]
      270 SETTABLEKS                       R8 R7 K61 ["layout"]
      272 MOVE                             R8 R4
      273 CALL                             R5 3 -1
      274 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 NEWTABLE                         R2 2 0
        8 GETTABLEKS                       R3 R0 K2 ["icon"]
       10 JUMPIFEQKNIL                     R3 ; [+30]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["Icon"]
       16 DUPTABLE                         R5 K9 [{["name"], ["size"], ["LayoutOrder"] = 1, ["style"]}]
       17 GETTABLEKS                       R6 R0 K2 ["icon"]
       19 SETTABLEKS                       R6 R5 K4 ["name"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K10 ["Enums"]
       24 GETTABLEKS                       R6 R6 K11 ["IconSize"]
       26 GETTABLEKS                       R6 R6 K12 ["Medium"]
       28 SETTABLEKS                       R6 R5 K5 ["size"]
       30 GETTABLEKS                       R6 R1 K13 ["Color"]
       32 GETTABLEKS                       R6 R6 K14 ["Content"]
       34 GETTABLEKS                       R6 R6 K15 ["Emphasis"]
       36 SETTABLEKS                       R6 R5 K8 ["style"]
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K3 ["Icon"]
       41 GETTABLEKS                       R3 R0 K16 ["title"]
       43 JUMPIFEQKNIL                     R3 ; [+16]
       45 GETTABLEKS                       R3 R0 K17 ["collapsed"]
       47 JUMPIF                           R3 ; [+12]
       48 GETUPVAL                         R3 1
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K18 ["Text"]
       52 DUPTABLE                         R5 K22 [{["Text"], ["tag"] = "text-title-medium content-emphasis auto-xy text-align-x-left", ["LayoutOrder"] = 2}]
       53 GETTABLEKS                       R6 R0 K16 ["title"]
       55 SETTABLEKS                       R6 R5 K18 ["Text"]
       57 CALL                             R3 2 1
       58 SETTABLEKS                       R3 R2 K23 ["Title"]
       60 GETUPVAL                         R3 1
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K24 ["View"]
       64 DUPTABLE                         R5 K29 [{["testId"] = "--appkit-toolkit-header", ["LayoutOrder"], ["Size"], ["layout"]}]
       65 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       67 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       69 GETIMPORT                        R6 K32 [UDim2.new]
       71 LOADN                            R7 1
       72 LOADN                            R8 0
       73 LOADN                            R9 0
       74 GETUPVAL                         R10 2
       75 CALL                             R6 4 1
       76 SETTABLEKS                       R6 R5 K27 ["Size"]
       78 DUPTABLE                         R6 K37 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
       79 GETIMPORT                        R7 K40 [Enum.FillDirection.Horizontal]
       81 SETTABLEKS                       R7 R6 K33 ["FillDirection"]
       83 GETIMPORT                        R7 K42 [Enum.VerticalAlignment.Center]
       85 SETTABLEKS                       R7 R6 K34 ["VerticalAlignment"]
       87 GETIMPORT                        R7 K43 [Enum.SortOrder.LayoutOrder]
       89 SETTABLEKS                       R7 R6 K35 ["SortOrder"]
       91 GETIMPORT                        R7 K45 [UDim.new]
       93 LOADN                            R8 0
       94 GETUPVAL                         R9 3
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K36 ["Padding"]
       98 SETTABLEKS                       R6 R5 K28 ["layout"]
      100 MOVE                             R6 R2
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Size"]
        3 GETTABLEKS                       R2 R2 K1 ["Size_400"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["Stroke"]
        8 GETTABLEKS                       R3 R3 K3 ["Standard"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["Size"]
       13 GETTABLEKS                       R4 R4 K4 ["Size_350"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["Size"]
       18 GETTABLEKS                       R5 R5 K5 ["Size_150"]
       20 LENGTH                           R7 R1
       21 LOADN                            R8 1
       22 JUMPIFLE                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 GETTABLEKS                       R7 R0 K6 ["Color"]
       28 GETTABLEKS                       R7 R7 K7 ["Surface"]
       30 GETTABLEKS                       R7 R7 K8 ["Surface_0"]
       32 JUMPIFNOT                        R6 ; [+6]
       33 GETIMPORT                        R8 K11 [UDim2.fromOffset]
       35 MOVE                             R9 R2
       36 MOVE                             R10 R2
       37 CALL                             R8 2 1
       38 JUMP                             ; [+7]
       39 GETIMPORT                        R8 K13 [UDim2.new]
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 MOVE                             R12 R2
       45 CALL                             R8 4 1
       46 GETUPVAL                         R9 1
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K14 ["View"]
       50 DUPTABLE                         R11 K24 [{["AnchorPoint"], ["Position"], [3], ["AutomaticSize"], ["ZIndex"] = 5, ["tag"] = "row align-x-center align-y-center radius-circle bg-system-emphasis", ["stroke"], ["padding"]}]
       51 GETIMPORT                        R12 K26 [Vector2.new]
       53 LOADN                            R13 0
       54 LOADN                            R14 0
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K15 ["AnchorPoint"]
       58 GETIMPORT                        R12 K11 [UDim2.fromOffset]
       60 MOVE                             R13 R4
       61 MINUS                            R14 R5
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K16 ["Position"]
       65 SETTABLEKS                       R8 R11 K0 ["Size"]
       67 JUMPIFNOT                        R6 ; [+3]
       68 GETIMPORT                        R12 K29 [Enum.AutomaticSize.None]
       70 JUMP                             ; [+2]
       71 GETIMPORT                        R12 K31 [Enum.AutomaticSize.X]
       73 SETTABLEKS                       R12 R11 K17 ["AutomaticSize"]
       75 DUPTABLE                         R12 K35 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
       76 GETTABLEKS                       R13 R7 K36 ["Color3"]
       78 SETTABLEKS                       R13 R12 K6 ["Color"]
       80 GETTABLEKS                       R13 R7 K32 ["Transparency"]
       82 SETTABLEKS                       R13 R12 K32 ["Transparency"]
       84 SETTABLEKS                       R3 R12 K33 ["Thickness"]
       86 GETIMPORT                        R13 K38 [Enum.BorderStrokePosition.Outer]
       88 SETTABLEKS                       R13 R12 K34 ["BorderStrokePosition"]
       90 SETTABLEKS                       R12 R11 K22 ["stroke"]
       92 JUMPIFNOT                        R6 ; [+2]
       93 LOADNIL                          R12
       94 JUMP                             ; [+23]
       95 DUPTABLE                         R12 K41 [{"left", "right"}]
       96 GETIMPORT                        R13 K43 [UDim.new]
       98 LOADN                            R14 0
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R15 R15 K44 ["Padding"]
      102 GETTABLEKS                       R15 R15 K45 ["XSmall"]
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K39 ["left"]
      107 GETIMPORT                        R13 K43 [UDim.new]
      109 LOADN                            R14 0
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R15 R15 K44 ["Padding"]
      113 GETTABLEKS                       R15 R15 K45 ["XSmall"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K40 ["right"]
      118 SETTABLEKS                       R12 R11 K23 ["padding"]
      120 DUPTABLE                         R12 K47 [{"Count"}]
      121 GETUPVAL                         R13 1
      122 GETUPVAL                         R14 2
      123 GETTABLEKS                       R14 R14 K48 ["Text"]
      125 DUPTABLE                         R15 K51 [{["Text"], [2], ["AutomaticSize"], ["style"], ["tag"] = "text-caption-small text-align-x-center text-align-y-center text-no-wrap"}]
      126 SETTABLEKS                       R1 R15 K48 ["Text"]
      128 JUMPIFNOT                        R6 ; [+6]
      129 GETIMPORT                        R16 K53 [UDim2.fromScale]
      131 LOADN                            R17 1
      132 LOADN                            R18 1
      133 CALL                             R16 2 1
      134 JUMP                             ; [+7]
      135 GETIMPORT                        R16 K13 [UDim2.new]
      137 LOADN                            R17 0
      138 LOADN                            R18 0
      139 LOADN                            R19 1
      140 LOADN                            R20 0
      141 CALL                             R16 4 1
      142 SETTABLEKS                       R16 R15 K0 ["Size"]
      144 JUMPIFNOT                        R6 ; [+3]
      145 GETIMPORT                        R16 K29 [Enum.AutomaticSize.None]
      147 JUMP                             ; [+2]
      148 GETIMPORT                        R16 K31 [Enum.AutomaticSize.X]
      150 SETTABLEKS                       R16 R15 K17 ["AutomaticSize"]
      152 GETUPVAL                         R16 3
      153 SETTABLEKS                       R16 R15 K49 ["style"]
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K46 ["Count"]
      158 CALL                             R9 3 -1
      159 RETURN                           R9 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Size"]
        3 GETTABLEKS                       R1 R1 K1 ["Size_200"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Stroke"]
        8 GETTABLEKS                       R2 R2 K3 ["Thicker"]
       10 GETTABLEKS                       R3 R0 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Surface"]
       14 GETTABLEKS                       R3 R3 K6 ["Surface_0"]
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K7 ["View"]
       20 DUPTABLE                         R6 K15 [{["AnchorPoint"], ["Position"], [3], ["ZIndex"] = 5, ["tag"] = "radius-circle bg-system-emphasis", ["stroke"]}]
       21 GETIMPORT                        R7 K18 [Vector2.new]
       23 LOADN                            R8 1
       24 LOADN                            R9 0
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K8 ["AnchorPoint"]
       28 GETIMPORT                        R7 K20 [UDim2.new]
       30 LOADN                            R8 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K0 ["Size"]
       34 GETTABLEKS                       R9 R9 K21 ["Size_50"]
       36 LOADN                            R10 0
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K0 ["Size"]
       40 GETTABLEKS                       R12 R12 K21 ["Size_50"]
       42 MINUS                            R11 R12
       43 CALL                             R7 4 1
       44 SETTABLEKS                       R7 R6 K9 ["Position"]
       46 GETIMPORT                        R7 K23 [UDim2.fromOffset]
       48 MOVE                             R8 R1
       49 MOVE                             R9 R1
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K0 ["Size"]
       53 DUPTABLE                         R7 K27 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
       54 GETTABLEKS                       R8 R3 K28 ["Color3"]
       56 SETTABLEKS                       R8 R7 K4 ["Color"]
       58 GETTABLEKS                       R8 R3 K24 ["Transparency"]
       60 SETTABLEKS                       R8 R7 K24 ["Transparency"]
       62 SETTABLEKS                       R2 R7 K25 ["Thickness"]
       64 GETIMPORT                        R8 K31 [Enum.BorderStrokePosition.Outer]
       66 SETTABLEKS                       R8 R7 K26 ["BorderStrokePosition"]
       68 SETTABLEKS                       R7 R6 K14 ["stroke"]
       70 CALL                             R4 2 -1
       71 RETURN                           R4 -1

PROTO_6:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R1 K0 ["avatarUserId"]
        3 JUMPIFEQKNIL                     R4 ; [+22]
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["Avatar"]
        9 DUPTABLE                         R6 K4 [{"userId", "size"}]
       10 GETTABLEKS                       R7 R1 K0 ["avatarUserId"]
       12 SETTABLEKS                       R7 R6 K2 ["userId"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["Enums"]
       17 GETTABLEKS                       R7 R7 K6 ["InputSize"]
       19 GETTABLEKS                       R7 R7 K7 ["Small"]
       21 SETTABLEKS                       R7 R6 K3 ["size"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 JUMP                             ; [+133]
       26 GETTABLEKS                       R4 R1 K8 ["avatarSrc"]
       28 JUMPIFEQKNIL                     R4 ; [+24]
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K9 ["Image"]
       34 DUPTABLE                         R6 K14 [{["Image"], ["ScaleType"], ["Size"], ["tag"] = "radius-circle"}]
       35 GETTABLEKS                       R7 R1 K8 ["avatarSrc"]
       37 SETTABLEKS                       R7 R6 K9 ["Image"]
       39 GETIMPORT                        R7 K17 [Enum.ScaleType.Crop]
       41 SETTABLEKS                       R7 R6 K10 ["ScaleType"]
       43 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       45 GETUPVAL                         R8 2
       46 GETUPVAL                         R9 2
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K11 ["Size"]
       50 CALL                             R4 2 1
       51 MOVE                             R3 R4
       52 JUMP                             ; [+106]
       53 GETTABLEKS                       R4 R1 K21 ["leadingVariant"]
       55 JUMPIFNOTEQKS                    R4 K22 ["add"] ; [+42]
       57 GETUPVAL                         R4 0
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K23 ["View"]
       61 DUPTABLE                         R6 K25 [{["Size"], ["tag"] = "row align-x-center align-y-center radius-circle bg-system-emphasis"}]
       62 GETIMPORT                        R7 K20 [UDim2.fromOffset]
       64 GETUPVAL                         R8 2
       65 GETUPVAL                         R9 2
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K11 ["Size"]
       69 DUPTABLE                         R7 K27 [{"Icon"}]
       70 GETUPVAL                         R8 0
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K26 ["Icon"]
       74 DUPTABLE                         R10 K30 [{"name", "size", "style"}]
       75 GETTABLEKS                       R12 R1 K32 ["icon"]
       77 ORK                              R11 R12 K31 ["plus-large"]
       78 SETTABLEKS                       R11 R10 K28 ["name"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K5 ["Enums"]
       83 GETTABLEKS                       R11 R11 K33 ["IconSize"]
       85 GETTABLEKS                       R11 R11 K7 ["Small"]
       87 SETTABLEKS                       R11 R10 K3 ["size"]
       89 GETUPVAL                         R11 3
       90 SETTABLEKS                       R11 R10 K29 ["style"]
       92 CALL                             R8 2 1
       93 SETTABLEKS                       R8 R7 K26 ["Icon"]
       95 CALL                             R4 3 1
       96 MOVE                             R3 R4
       97 JUMP                             ; [+61]
       98 JUMPIFNOT                        R2 ; [+7]
       99 GETTABLEKS                       R5 R1 K34 ["activeIcon"]
      101 JUMPIFEQKNIL                     R5 ; [+4]
      103 GETTABLEKS                       R4 R1 K34 ["activeIcon"]
      105 JUMP                             ; [+2]
      106 GETTABLEKS                       R4 R1 K32 ["icon"]
      108 JUMPIFEQKNIL                     R4 ; [+50]
      110 GETUPVAL                         R5 0
      111 GETUPVAL                         R6 1
      112 GETTABLEKS                       R6 R6 K26 ["Icon"]
      114 DUPTABLE                         R7 K36 [{"name", "variant", "size", "style"}]
      115 SETTABLEKS                       R4 R7 K28 ["name"]
      117 JUMPIF                           R2 ; [+5]
      118 JUMPIFEQKNIL                     R4 ; [+12]
      120 GETUPVAL                         R10 4
      121 GETTABLE                         R9 R10 R4
      122 JUMPIFNOT                        R9 ; [+8]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R8 R8 K5 ["Enums"]
      126 GETTABLEKS                       R8 R8 K37 ["IconVariant"]
      128 GETTABLEKS                       R8 R8 K38 ["Filled"]
      130 JUMP                             ; [+7]
      131 GETUPVAL                         R8 1
      132 GETTABLEKS                       R8 R8 K5 ["Enums"]
      134 GETTABLEKS                       R8 R8 K37 ["IconVariant"]
      136 GETTABLEKS                       R8 R8 K39 ["Regular"]
      138 SETTABLEKS                       R8 R7 K35 ["variant"]
      140 GETUPVAL                         R8 1
      141 GETTABLEKS                       R8 R8 K5 ["Enums"]
      143 GETTABLEKS                       R8 R8 K33 ["IconSize"]
      145 GETTABLEKS                       R8 R8 K40 ["Large"]
      147 SETTABLEKS                       R8 R7 K3 ["size"]
      149 GETTABLEKS                       R8 R0 K41 ["Color"]
      151 GETTABLEKS                       R8 R8 K42 ["Content"]
      153 GETTABLEKS                       R8 R8 K43 ["Emphasis"]
      155 SETTABLEKS                       R8 R7 K29 ["style"]
      157 CALL                             R5 2 1
      158 MOVE                             R3 R5
      159 DUPTABLE                         R4 K45 [{"Glyph"}]
      160 GETUPVAL                         R5 0
      161 GETUPVAL                         R6 1
      162 GETTABLEKS                       R6 R6 K23 ["View"]
      164 DUPTABLE                         R7 K47 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
      165 GETIMPORT                        R8 K49 [UDim2.fromScale]
      167 LOADN                            R9 1
      168 LOADN                            R10 1
      169 CALL                             R8 2 1
      170 SETTABLEKS                       R8 R7 K11 ["Size"]
      172 DUPTABLE                         R8 K50 [{"Content"}]
      173 SETTABLEKS                       R3 R8 K42 ["Content"]
      175 CALL                             R5 3 1
      176 SETTABLEKS                       R5 R4 K44 ["Glyph"]
      178 GETTABLEKS                       R5 R1 K51 ["badge"]
      180 JUMPIFEQKNIL                     R5 ; [+13]
      182 GETUPVAL                         R5 5
      183 MOVE                             R6 R0
      184 GETTABLEKS                       R8 R1 K51 ["badge"]
      186 FASTCALL1                        TOSTRING R8 ; [+2]
      187 GETIMPORT                        R7 K53 [tostring]
      189 CALL                             R7 1 1
      190 CALL                             R5 2 1
      191 SETTABLEKS                       R5 R4 K54 ["Badge"]
      193 JUMP                             ; [+8]
      194 GETTABLEKS                       R5 R1 K55 ["hasStatus"]
      196 JUMPIFNOT                        R5 ; [+5]
      197 GETUPVAL                         R5 6
      198 MOVE                             R6 R0
      199 CALL                             R5 1 1
      200 SETTABLEKS                       R5 R4 K56 ["Status"]
      202 GETUPVAL                         R5 0
      203 GETUPVAL                         R6 1
      204 GETTABLEKS                       R6 R6 K23 ["View"]
      206 DUPTABLE                         R7 K59 [{["Size"], ["ClipsDescendants"] = False}]
      207 GETIMPORT                        R8 K20 [UDim2.fromOffset]
      209 GETUPVAL                         R9 2
      210 GETUPVAL                         R10 2
      211 CALL                             R8 2 1
      212 SETTABLEKS                       R8 R7 K11 ["Size"]
      214 MOVE                             R8 R4
      215 CALL                             R5 3 -1
      216 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["item"]
        8 GETTABLEKS                       R3 R0 K3 ["selected"]
       10 JUMPIF                           R3 ; [+6]
       11 GETTABLEKS                       R4 R2 K4 ["checked"]
       13 JUMPIFEQKB                       R4 TRUE ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETTABLEKS                       R5 R2 K5 ["disabled"]
       19 JUMPIFEQKB                       R5 TRUE ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADNIL                          R5
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R5 R0 K6 ["onActivated"]
       28 GETTABLEKS                       R6 R2 K7 ["type"]
       30 JUMPIFNOTEQKS                    R6 K8 ["header"] ; [+231]
       32 GETTABLEKS                       R7 R2 K9 ["hasDivider"]
       34 JUMPIFNOTEQKB                    R7 FALSE ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 GETTABLEKS                       R7 R0 K10 ["collapsed"]
       40 JUMPIFNOT                        R7 ; [+8]
       41 JUMPIF                           R6 ; [+2]
       42 LOADNIL                          R7
       43 RETURN                           R7 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       47 CALL                             R7 1 -1
       48 RETURN                           R7 -1
       49 NEWTABLE                         R7 2 0
       51 JUMPIFNOT                        R6 ; [+5]
       52 GETUPVAL                         R8 1
       53 LOADN                            R9 1
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K12 ["Divider"]
       57 LOADB                            R8 1
       58 GETTABLEKS                       R9 R2 K13 ["trailingIcon"]
       60 JUMPIFNOTEQKNIL                  R9 ; [+7]
       62 GETTABLEKS                       R9 R2 K14 ["interactive"]
       64 JUMPIFEQKB                       R9 TRUE ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K15 ["Padding"]
       71 GETTABLEKS                       R9 R9 K16 ["XSmall"]
       73 DUPTABLE                         R10 K18 [{"Title"}]
       74 GETUPVAL                         R11 3
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K19 ["Text"]
       78 DUPTABLE                         R13 K24 [{["Text"], ["Position"], ["Size"], ["tag"] = "text-caption-large content-muted text-align-x-left text-align-y-center text-truncate-end"}]
       79 GETIMPORT                        R14 K27 [string.upper]
       81 GETTABLEKS                       R16 R2 K29 ["label"]
       83 ORK                              R15 R16 K28 [""]
       84 CALL                             R14 1 1
       85 SETTABLEKS                       R14 R13 K19 ["Text"]
       87 GETIMPORT                        R14 K32 [UDim2.fromOffset]
       89 MOVE                             R15 R9
       90 LOADN                            R16 0
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K20 ["Position"]
       94 GETIMPORT                        R14 K34 [UDim2.new]
       96 LOADN                            R15 1
       97 MULK                             R18 R9 K35 [2]
       98 GETTABLEKS                       R20 R2 K13 ["trailingIcon"]
      100 JUMPIFEQKNIL                     R20 ; [+3]
      102 GETUPVAL                         R19 4
      103 JUMP                             ; [+1]
      104 LOADN                            R19 0
      105 ADD                              R17 R18 R19
      106 MINUS                            R16 R17
      107 LOADN                            R17 1
      108 LOADN                            R18 0
      109 CALL                             R14 4 1
      110 SETTABLEKS                       R14 R13 K21 ["Size"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K17 ["Title"]
      115 GETTABLEKS                       R11 R2 K13 ["trailingIcon"]
      117 JUMPIFEQKNIL                     R11 ; [+60]
      119 GETUPVAL                         R11 3
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K36 ["View"]
      123 DUPTABLE                         R13 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      124 GETIMPORT                        R14 K41 [Vector2.new]
      126 LOADN                            R15 1
      127 LOADK                            R16 K42 [0.5]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
      131 GETIMPORT                        R14 K44 [UDim2.fromScale]
      133 LOADN                            R15 1
      134 LOADK                            R16 K42 [0.5]
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K20 ["Position"]
      138 GETIMPORT                        R14 K32 [UDim2.fromOffset]
      140 GETUPVAL                         R15 4
      141 GETUPVAL                         R16 4
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K21 ["Size"]
      145 DUPTABLE                         R14 K46 [{"Icon"}]
      146 GETUPVAL                         R15 3
      147 GETUPVAL                         R16 0
      148 GETTABLEKS                       R16 R16 K45 ["Icon"]
      150 DUPTABLE                         R17 K50 [{"name", "size", "style"}]
      151 GETTABLEKS                       R18 R2 K13 ["trailingIcon"]
      153 SETTABLEKS                       R18 R17 K47 ["name"]
      155 GETUPVAL                         R18 0
      156 GETTABLEKS                       R18 R18 K51 ["Enums"]
      158 GETTABLEKS                       R18 R18 K52 ["IconSize"]
      160 GETTABLEKS                       R18 R18 K53 ["Small"]
      162 SETTABLEKS                       R18 R17 K48 ["size"]
      164 GETTABLEKS                       R18 R1 K54 ["Color"]
      166 GETTABLEKS                       R18 R18 K55 ["Content"]
      168 GETTABLEKS                       R18 R18 K56 ["Muted"]
      170 SETTABLEKS                       R18 R17 K49 ["style"]
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K45 ["Icon"]
      175 CALL                             R11 3 1
      176 SETTABLEKS                       R11 R10 K57 ["Trailing"]
      178 GETUPVAL                         R11 3
      179 GETUPVAL                         R12 0
      180 GETTABLEKS                       R12 R12 K36 ["View"]
      182 DUPTABLE                         R13 K60 [{["testId"], ["onActivated"], ["LayoutOrder"] = 2, ["Size"], ["tag"] = "radius-medium"}]
      183 JUMPIFNOT                        R8 ; [+8]
      184 LOADK                            R15 K61 ["--appkit-nav-rail-section-%*"]
      185 GETTABLEKS                       R17 R2 K62 ["key"]
      187 NAMECALL                         R15 R15 K63 ["format"]
      189 CALL                             R15 2 1
      190 MOVE                             R14 R15
      191 JUMP                             ; [+1]
      192 LOADNIL                          R14
      193 SETTABLEKS                       R14 R13 K58 ["testId"]
      195 JUMPIFNOT                        R8 ; [+2]
      196 MOVE                             R14 R5
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K6 ["onActivated"]
      201 GETIMPORT                        R14 K34 [UDim2.new]
      203 LOADN                            R15 1
      204 LOADN                            R16 0
      205 LOADN                            R17 0
      206 GETUPVAL                         R18 4
      207 CALL                             R14 4 1
      208 SETTABLEKS                       R14 R13 K21 ["Size"]
      210 MOVE                             R14 R10
      211 CALL                             R11 3 1
      212 SETTABLEKS                       R11 R7 K17 ["Title"]
      214 GETUPVAL                         R11 3
      215 GETUPVAL                         R12 0
      216 GETTABLEKS                       R12 R12 K36 ["View"]
      218 DUPTABLE                         R13 K66 [{"testId", "LayoutOrder", "Size", "AutomaticSize", "layout"}]
      219 JUMPIFNOT                        R8 ; [+2]
      220 LOADNIL                          R14
      221 JUMP                             ; [+7]
      222 LOADK                            R15 K61 ["--appkit-nav-rail-section-%*"]
      223 GETTABLEKS                       R17 R2 K62 ["key"]
      225 NAMECALL                         R15 R15 K63 ["format"]
      227 CALL                             R15 2 1
      228 MOVE                             R14 R15
      229 SETTABLEKS                       R14 R13 K58 ["testId"]
      231 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
      233 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      235 GETIMPORT                        R14 K34 [UDim2.new]
      237 LOADN                            R15 1
      238 LOADN                            R16 0
      239 LOADN                            R17 0
      240 LOADN                            R18 0
      241 CALL                             R14 4 1
      242 SETTABLEKS                       R14 R13 K21 ["Size"]
      244 GETIMPORT                        R14 K69 [Enum.AutomaticSize.Y]
      246 SETTABLEKS                       R14 R13 K64 ["AutomaticSize"]
      248 DUPTABLE                         R14 K72 [{"FillDirection", "SortOrder"}]
      249 GETIMPORT                        R15 K74 [Enum.FillDirection.Vertical]
      251 SETTABLEKS                       R15 R14 K70 ["FillDirection"]
      253 GETIMPORT                        R15 K75 [Enum.SortOrder.LayoutOrder]
      255 SETTABLEKS                       R15 R14 K71 ["SortOrder"]
      257 SETTABLEKS                       R14 R13 K65 ["layout"]
      259 MOVE                             R14 R7
      260 CALL                             R11 3 -1
      261 RETURN                           R11 -1
      262 GETTABLEKS                       R6 R0 K10 ["collapsed"]
      264 JUMPIFNOT                        R6 ; [+135]
      265 LOADB                            R6 0
      266 GETTABLEKS                       R7 R2 K76 ["showCollapsedLabel"]
      268 JUMPIFEQKB                       R7 FALSE ; [+7]
      270 GETTABLEKS                       R7 R2 K29 ["label"]
      272 JUMPIFNOTEQKNIL                  R7 ; [+2]
      274 LOADB                            R6 0 +1
      275 LOADB                            R6 1
      276 JUMPIFNOT                        R3 ; [+2]
      277 LOADK                            R7 K77 ["row align-x-center align-y-center radius-medium bg-shift-200"]
      278 JUMP                             ; [+1]
      279 LOADK                            R7 K78 ["row align-x-center align-y-center radius-medium"]
      280 DUPTABLE                         R8 K80 [{"Cell"}]
      281 GETUPVAL                         R9 3
      282 GETUPVAL                         R10 0
      283 GETTABLEKS                       R10 R10 K36 ["View"]
      285 DUPTABLE                         R11 K82 [{["LayoutOrder"] = 1, ["Size"], ["tag"]}]
      286 GETIMPORT                        R12 K32 [UDim2.fromOffset]
      288 GETUPVAL                         R13 4
      289 GETUPVAL                         R14 4
      290 CALL                             R12 2 1
      291 SETTABLEKS                       R12 R11 K21 ["Size"]
      293 SETTABLEKS                       R7 R11 K22 ["tag"]
      295 DUPTABLE                         R12 K84 [{"Leading"}]
      296 GETUPVAL                         R13 5
      297 MOVE                             R14 R1
      298 MOVE                             R15 R2
      299 MOVE                             R16 R3
      300 CALL                             R13 3 1
      301 SETTABLEKS                       R13 R12 K83 ["Leading"]
      303 CALL                             R9 3 1
      304 SETTABLEKS                       R9 R8 K79 ["Cell"]
      306 JUMPIFNOT                        R6 ; [+25]
      307 GETUPVAL                         R9 3
      308 GETUPVAL                         R10 0
      309 GETTABLEKS                       R10 R10 K19 ["Text"]
      311 DUPTABLE                         R11 K86 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-caption-small content-emphasis text-align-x-center text-truncate-end"}]
      312 GETTABLEKS                       R12 R2 K29 ["label"]
      314 SETTABLEKS                       R12 R11 K19 ["Text"]
      316 GETIMPORT                        R12 K34 [UDim2.new]
      318 LOADN                            R13 1
      319 LOADN                            R14 0
      320 LOADN                            R15 0
      321 LOADN                            R16 0
      322 CALL                             R12 4 1
      323 SETTABLEKS                       R12 R11 K21 ["Size"]
      325 GETIMPORT                        R12 K69 [Enum.AutomaticSize.Y]
      327 SETTABLEKS                       R12 R11 K64 ["AutomaticSize"]
      329 CALL                             R9 2 1
      330 SETTABLEKS                       R9 R8 K87 ["Label"]
      332 GETUPVAL                         R9 3
      333 GETUPVAL                         R10 0
      334 GETTABLEKS                       R10 R10 K36 ["View"]
      336 DUPTABLE                         R11 K89 [{"testId", "onActivated", "LayoutOrder", "Size", "AutomaticSize", "GroupTransparency", "layout"}]
      337 LOADK                            R13 K90 ["--appkit-nav-rail-item-%*"]
      338 GETTABLEKS                       R15 R2 K62 ["key"]
      340 NAMECALL                         R13 R13 K63 ["format"]
      342 CALL                             R13 2 1
      343 MOVE                             R12 R13
      344 SETTABLEKS                       R12 R11 K58 ["testId"]
      346 SETTABLEKS                       R5 R11 K6 ["onActivated"]
      348 GETTABLEKS                       R12 R0 K11 ["LayoutOrder"]
      350 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      352 GETIMPORT                        R12 K34 [UDim2.new]
      354 LOADN                            R13 1
      355 LOADN                            R14 0
      356 LOADN                            R15 0
      357 LOADN                            R16 0
      358 CALL                             R12 4 1
      359 SETTABLEKS                       R12 R11 K21 ["Size"]
      361 GETIMPORT                        R12 K69 [Enum.AutomaticSize.Y]
      363 SETTABLEKS                       R12 R11 K64 ["AutomaticSize"]
      365 JUMPIFNOT                        R4 ; [+2]
      366 LOADK                            R12 K42 [0.5]
      367 JUMP                             ; [+1]
      368 LOADNIL                          R12
      369 SETTABLEKS                       R12 R11 K88 ["GroupTransparency"]
      371 DUPTABLE                         R12 K92 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      372 GETIMPORT                        R13 K74 [Enum.FillDirection.Vertical]
      374 SETTABLEKS                       R13 R12 K70 ["FillDirection"]
      376 GETIMPORT                        R13 K94 [Enum.HorizontalAlignment.Center]
      378 SETTABLEKS                       R13 R12 K91 ["HorizontalAlignment"]
      380 GETIMPORT                        R13 K75 [Enum.SortOrder.LayoutOrder]
      382 SETTABLEKS                       R13 R12 K71 ["SortOrder"]
      384 GETIMPORT                        R13 K96 [UDim.new]
      386 LOADN                            R14 0
      387 GETUPVAL                         R15 2
      388 GETTABLEKS                       R15 R15 K97 ["Gap"]
      390 GETTABLEKS                       R15 R15 K16 ["XSmall"]
      392 CALL                             R13 2 1
      393 SETTABLEKS                       R13 R12 K15 ["Padding"]
      395 SETTABLEKS                       R12 R11 K65 ["layout"]
      397 MOVE                             R12 R8
      398 CALL                             R9 3 -1
      399 RETURN                           R9 -1
      400 JUMPIFNOT                        R3 ; [+2]
      401 LOADK                            R6 K98 ["radius-medium bg-shift-200"]
      402 JUMP                             ; [+1]
      403 LOADK                            R6 K59 ["radius-medium"]
      404 GETTABLEKS                       R8 R2 K13 ["trailingIcon"]
      406 JUMPIFNOTEQKNIL                  R8 ; [+2]
      408 LOADB                            R7 0 +1
      409 LOADB                            R7 1
      410 GETUPVAL                         R10 4
      411 GETUPVAL                         R11 2
      412 GETTABLEKS                       R11 R11 K21 ["Size"]
      414 GETTABLEKS                       R11 R11 K99 ["Size_300"]
      416 ADD                              R9 R10 R11
      417 JUMPIFNOT                        R7 ; [+2]
      418 GETUPVAL                         R10 4
      419 JUMP                             ; [+1]
      420 LOADN                            R10 0
      421 ADD                              R8 R9 R10
      422 DUPTABLE                         R9 K100 [{"Leading", "Label"}]
      423 GETUPVAL                         R10 3
      424 GETUPVAL                         R11 0
      425 GETTABLEKS                       R11 R11 K36 ["View"]
      427 DUPTABLE                         R12 K101 [{["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      428 GETIMPORT                        R13 K32 [UDim2.fromOffset]
      430 LOADN                            R14 0
      431 LOADN                            R15 0
      432 CALL                             R13 2 1
      433 SETTABLEKS                       R13 R12 K20 ["Position"]
      435 GETIMPORT                        R13 K34 [UDim2.new]
      437 LOADN                            R14 0
      438 GETUPVAL                         R15 4
      439 LOADN                            R16 1
      440 LOADN                            R17 0
      441 CALL                             R13 4 1
      442 SETTABLEKS                       R13 R12 K21 ["Size"]
      444 DUPTABLE                         R13 K102 [{"Content"}]
      445 GETUPVAL                         R14 5
      446 MOVE                             R15 R1
      447 MOVE                             R16 R2
      448 MOVE                             R17 R3
      449 CALL                             R14 3 1
      450 SETTABLEKS                       R14 R13 K55 ["Content"]
      452 CALL                             R10 3 1
      453 SETTABLEKS                       R10 R9 K83 ["Leading"]
      455 GETUPVAL                         R10 3
      456 GETUPVAL                         R11 0
      457 GETTABLEKS                       R11 R11 K19 ["Text"]
      459 DUPTABLE                         R12 K104 [{["Text"], ["Position"], ["Size"], ["tag"] = "text-label-medium content-emphasis text-align-x-left text-align-y-center text-truncate-end"}]
      460 GETTABLEKS                       R13 R2 K29 ["label"]
      462 JUMPIF                           R13 ; [+2]
      463 GETTABLEKS                       R13 R2 K62 ["key"]
      465 SETTABLEKS                       R13 R12 K19 ["Text"]
      467 GETIMPORT                        R13 K34 [UDim2.new]
      469 LOADN                            R14 0
      470 GETUPVAL                         R16 4
      471 GETUPVAL                         R17 2
      472 GETTABLEKS                       R17 R17 K97 ["Gap"]
      474 GETTABLEKS                       R17 R17 K16 ["XSmall"]
      476 ADD                              R15 R16 R17
      477 LOADN                            R16 0
      478 LOADN                            R17 0
      479 CALL                             R13 4 1
      480 SETTABLEKS                       R13 R12 K20 ["Position"]
      482 GETIMPORT                        R13 K34 [UDim2.new]
      484 LOADN                            R14 1
      485 MINUS                            R15 R8
      486 LOADN                            R16 1
      487 LOADN                            R17 0
      488 CALL                             R13 4 1
      489 SETTABLEKS                       R13 R12 K21 ["Size"]
      491 CALL                             R10 2 1
      492 SETTABLEKS                       R10 R9 K87 ["Label"]
      494 JUMPIFNOT                        R7 ; [+59]
      495 GETTABLEKS                       R10 R2 K13 ["trailingIcon"]
      497 GETUPVAL                         R11 3
      498 GETUPVAL                         R12 0
      499 GETTABLEKS                       R12 R12 K36 ["View"]
      501 DUPTABLE                         R13 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      502 GETIMPORT                        R14 K41 [Vector2.new]
      504 LOADN                            R15 1
      505 LOADK                            R16 K42 [0.5]
      506 CALL                             R14 2 1
      507 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
      509 GETIMPORT                        R14 K44 [UDim2.fromScale]
      511 LOADN                            R15 1
      512 LOADK                            R16 K42 [0.5]
      513 CALL                             R14 2 1
      514 SETTABLEKS                       R14 R13 K20 ["Position"]
      516 GETIMPORT                        R14 K32 [UDim2.fromOffset]
      518 GETUPVAL                         R15 4
      519 GETUPVAL                         R16 4
      520 CALL                             R14 2 1
      521 SETTABLEKS                       R14 R13 K21 ["Size"]
      523 DUPTABLE                         R14 K46 [{"Icon"}]
      524 GETUPVAL                         R15 3
      525 GETUPVAL                         R16 0
      526 GETTABLEKS                       R16 R16 K45 ["Icon"]
      528 DUPTABLE                         R17 K50 [{"name", "size", "style"}]
      529 SETTABLEKS                       R10 R17 K47 ["name"]
      531 GETUPVAL                         R18 0
      532 GETTABLEKS                       R18 R18 K51 ["Enums"]
      534 GETTABLEKS                       R18 R18 K52 ["IconSize"]
      536 GETTABLEKS                       R18 R18 K105 ["Medium"]
      538 SETTABLEKS                       R18 R17 K48 ["size"]
      540 GETTABLEKS                       R18 R1 K54 ["Color"]
      542 GETTABLEKS                       R18 R18 K55 ["Content"]
      544 GETTABLEKS                       R18 R18 K106 ["Emphasis"]
      546 SETTABLEKS                       R18 R17 K49 ["style"]
      548 CALL                             R15 2 1
      549 SETTABLEKS                       R15 R14 K45 ["Icon"]
      551 CALL                             R11 3 1
      552 SETTABLEKS                       R11 R9 K57 ["Trailing"]
      554 GETUPVAL                         R10 3
      555 GETUPVAL                         R11 0
      556 GETTABLEKS                       R11 R11 K36 ["View"]
      558 DUPTABLE                         R12 K107 [{"testId", "onActivated", "LayoutOrder", "Size", "GroupTransparency", "tag"}]
      559 LOADK                            R14 K90 ["--appkit-nav-rail-item-%*"]
      560 GETTABLEKS                       R16 R2 K62 ["key"]
      562 NAMECALL                         R14 R14 K63 ["format"]
      564 CALL                             R14 2 1
      565 MOVE                             R13 R14
      566 SETTABLEKS                       R13 R12 K58 ["testId"]
      568 SETTABLEKS                       R5 R12 K6 ["onActivated"]
      570 GETTABLEKS                       R13 R0 K11 ["LayoutOrder"]
      572 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      574 GETIMPORT                        R13 K34 [UDim2.new]
      576 LOADN                            R14 1
      577 LOADN                            R15 0
      578 LOADN                            R16 0
      579 GETUPVAL                         R17 4
      580 CALL                             R13 4 1
      581 SETTABLEKS                       R13 R12 K21 ["Size"]
      583 JUMPIFNOT                        R4 ; [+2]
      584 LOADK                            R13 K42 [0.5]
      585 JUMP                             ; [+1]
      586 LOADNIL                          R13
      587 SETTABLEKS                       R13 R12 K88 ["GroupTransparency"]
      589 SETTABLEKS                       R6 R12 K22 ["tag"]
      591 MOVE                             R13 R9
      592 CALL                             R10 3 -1
      593 RETURN                           R10 -1

PROTO_8:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["type"]
        4 JUMPIFNOTEQKS                    R1 K1 ["header"] ; [+14]
        6 LOADB                            R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["trailingIcon"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+8]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["interactive"]
       15 JUMPIFEQKB                       R1 TRUE ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["type"]
       22 JUMPIFNOTEQKS                    R1 K1 ["header"] ; [+2]
       24 JUMPIFNOT                        R0 ; [+7]
       25 GETUPVAL                         R1 1
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETUPVAL                         R1 1
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["key"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 DUPTABLE                         R7 K5 [{"item", "selected", "collapsed", "LayoutOrder", "onActivated"}]
        3 SETTABLEKS                       R0 R7 K0 ["item"]
        5 GETTABLEKS                       R9 R0 K6 ["key"]
        7 JUMPIFEQ                         R2 R9 ; [+2]
        9 LOADB                            R8 0 +1
       10 LOADB                            R8 1
       11 SETTABLEKS                       R8 R7 K1 ["selected"]
       13 SETTABLEKS                       R3 R7 K2 ["collapsed"]
       15 SETTABLEKS                       R1 R7 K3 ["LayoutOrder"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R4
       20 SETTABLEKS                       R8 R7 K4 ["onActivated"]
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 2 0
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["railWidth"]
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K0 ["railWidth"]
       11 SETTABLEKS                       R2 R1 K1 ["transition"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["onToggle"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["onToggle"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["collapsed"]
       14 JUMPIFNOTEQKNIL                  R1 ; [+4]
       16 GETUPVAL                         R1 2
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["onSelect"]
        2 GETTABLEKS                       R3 R0 K1 ["defaultCollapsed"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K1 ["defaultCollapsed"]
        8 JUMP                             ; [+1]
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useState"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 2
       15 GETTABLEKS                       R6 R0 K3 ["collapsed"]
       17 JUMPIFEQKNIL                     R6 ; [+4]
       19 GETTABLEKS                       R5 R0 K3 ["collapsed"]
       21 JUMP                             ; [+1]
       22 MOVE                             R5 R3
       23 JUMPIFNOT                        R5 ; [+2]
       24 GETUPVAL                         R6 1
       25 JUMP                             ; [+1]
       26 GETUPVAL                         R6 2
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K4 ["useMotion"]
       30 NEWTABLE                         R8 1 0
       32 SETTABLEKS                       R6 R8 K5 ["railWidth"]
       34 CALL                             R7 1 2
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U4
       42 NEWTABLE                         R11 0 1
       44 MOVE                             R12 R6
       45 SETLIST                          R11 R12 1 [1]
       47 CALL                             R9 2 0
       48 GETTABLEKS                       R9 R7 K5 ["railWidth"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R4
       54 NEWTABLE                         R11 0 0
       56 GETTABLEKS                       R12 R0 K7 ["items"]
       58 LOADNIL                          R13
       59 LOADNIL                          R14
       60 FORGPREP                         R12
       61 GETTABLEKS                       R17 R16 K8 ["key"]
       63 GETUPVAL                         R18 5
       64 MOVE                             R19 R16
       65 MOVE                             R20 R15
       66 GETTABLEKS                       R21 R0 K9 ["selectedKey"]
       68 MOVE                             R22 R5
       69 MOVE                             R23 R1
       70 CALL                             R18 5 1
       71 SETTABLE                         R18 R11 R17
       72 FORGLOOP                         R12 2 ; [-12]
       74 DUPTABLE                         R12 K11 [{"Body"}]
       75 GETUPVAL                         R13 6
       76 GETUPVAL                         R14 7
       77 GETTABLEKS                       R14 R14 K12 ["View"]
       79 DUPTABLE                         R15 K18 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["layout"]}]
       80 GETIMPORT                        R16 K21 [UDim2.new]
       82 LOADN                            R17 1
       83 LOADN                            R18 0
       84 LOADN                            R19 0
       85 LOADN                            R20 0
       86 CALL                             R16 4 1
       87 SETTABLEKS                       R16 R15 K15 ["Size"]
       89 GETIMPORT                        R16 K24 [Enum.AutomaticSize.Y]
       91 SETTABLEKS                       R16 R15 K16 ["AutomaticSize"]
       93 DUPTABLE                         R16 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       94 GETIMPORT                        R17 K31 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R17 R16 K25 ["FillDirection"]
       98 GETIMPORT                        R17 K33 [Enum.HorizontalAlignment.Center]
      100 SETTABLEKS                       R17 R16 K26 ["HorizontalAlignment"]
      102 GETIMPORT                        R17 K34 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R17 R16 K27 ["SortOrder"]
      106 GETIMPORT                        R17 K36 [UDim.new]
      108 LOADN                            R18 0
      109 GETUPVAL                         R19 8
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K28 ["Padding"]
      113 SETTABLEKS                       R16 R15 K17 ["layout"]
      115 MOVE                             R16 R11
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K10 ["Body"]
      119 GETTABLEKS                       R14 R0 K37 ["showToggle"]
      121 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
      123 LOADB                            R13 0 +1
      124 LOADB                            R13 1
      125 GETTABLEKS                       R14 R0 K38 ["header"]
      127 JUMPIFEQKNIL                     R14 ; [+28]
      129 GETUPVAL                         R14 6
      130 GETUPVAL                         R15 7
      131 GETTABLEKS                       R15 R15 K12 ["View"]
      133 DUPTABLE                         R16 K40 [{["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"]}]
      134 GETIMPORT                        R17 K21 [UDim2.new]
      136 LOADN                            R18 1
      137 LOADN                            R19 0
      138 LOADN                            R20 0
      139 LOADN                            R21 0
      140 CALL                             R17 4 1
      141 SETTABLEKS                       R17 R16 K15 ["Size"]
      143 GETIMPORT                        R17 K24 [Enum.AutomaticSize.Y]
      145 SETTABLEKS                       R17 R16 K16 ["AutomaticSize"]
      147 DUPTABLE                         R17 K42 [{"Content"}]
      148 GETTABLEKS                       R18 R0 K38 ["header"]
      150 SETTABLEKS                       R18 R17 K41 ["Content"]
      152 CALL                             R14 3 1
      153 SETTABLEKS                       R14 R12 K43 ["Header"]
      155 JUMP                             ; [+32]
      156 JUMPIFNOT                        R13 ; [+31]
      157 GETUPVAL                         R14 6
      158 GETUPVAL                         R15 9
      159 DUPTABLE                         R16 K51 [{["LayoutOrder"] = 1, ["isExpanded"], ["brand"], ["logoIcon"], ["productIcon"], ["productLabel"], ["title"], ["onToggle"]}]
      160 NOT                              R17 R5
      161 SETTABLEKS                       R17 R16 K44 ["isExpanded"]
      163 GETTABLEKS                       R17 R0 K45 ["brand"]
      165 SETTABLEKS                       R17 R16 K45 ["brand"]
      167 GETTABLEKS                       R17 R0 K46 ["logoIcon"]
      169 SETTABLEKS                       R17 R16 K46 ["logoIcon"]
      171 GETTABLEKS                       R17 R0 K47 ["productIcon"]
      173 SETTABLEKS                       R17 R16 K47 ["productIcon"]
      175 GETTABLEKS                       R17 R0 K48 ["productLabel"]
      177 SETTABLEKS                       R17 R16 K48 ["productLabel"]
      179 GETTABLEKS                       R17 R0 K49 ["title"]
      181 SETTABLEKS                       R17 R16 K49 ["title"]
      183 SETTABLEKS                       R10 R16 K50 ["onToggle"]
      185 CALL                             R14 2 1
      186 SETTABLEKS                       R14 R12 K43 ["Header"]
      188 JUMPIFNOT                        R5 ; [+6]
      189 GETUPVAL                         R14 10
      190 GETTABLEKS                       R14 R14 K28 ["Padding"]
      192 GETTABLEKS                       R14 R14 K52 ["Small"]
      194 JUMP                             ; [+5]
      195 GETUPVAL                         R14 10
      196 GETTABLEKS                       R14 R14 K28 ["Padding"]
      198 GETTABLEKS                       R14 R14 K53 ["Large"]
      200 DUPTABLE                         R15 K58 [{"left", "right", "top", "bottom"}]
      201 GETIMPORT                        R16 K36 [UDim.new]
      203 LOADN                            R17 0
      204 MOVE                             R18 R14
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K54 ["left"]
      208 GETIMPORT                        R16 K36 [UDim.new]
      210 LOADN                            R17 0
      211 MOVE                             R18 R14
      212 CALL                             R16 2 1
      213 SETTABLEKS                       R16 R15 K55 ["right"]
      215 GETIMPORT                        R16 K36 [UDim.new]
      217 LOADN                            R17 0
      218 MOVE                             R18 R14
      219 CALL                             R16 2 1
      220 SETTABLEKS                       R16 R15 K56 ["top"]
      222 GETIMPORT                        R16 K36 [UDim.new]
      224 LOADN                            R17 0
      225 MOVE                             R18 R14
      226 CALL                             R16 2 1
      227 SETTABLEKS                       R16 R15 K57 ["bottom"]
      229 DUPTABLE                         R16 K60 [{"Top"}]
      230 GETUPVAL                         R17 6
      231 GETUPVAL                         R18 7
      232 GETTABLEKS                       R18 R18 K12 ["View"]
      234 DUPTABLE                         R19 K63 [{"Position", "Size", "AutomaticSize", "padding", "layout"}]
      235 GETIMPORT                        R20 K65 [UDim2.fromOffset]
      237 LOADN                            R21 0
      238 LOADN                            R22 0
      239 CALL                             R20 2 1
      240 SETTABLEKS                       R20 R19 K61 ["Position"]
      242 GETIMPORT                        R20 K21 [UDim2.new]
      244 LOADN                            R21 1
      245 LOADN                            R22 0
      246 LOADN                            R23 0
      247 LOADN                            R24 0
      248 CALL                             R20 4 1
      249 SETTABLEKS                       R20 R19 K15 ["Size"]
      251 GETIMPORT                        R20 K24 [Enum.AutomaticSize.Y]
      253 SETTABLEKS                       R20 R19 K16 ["AutomaticSize"]
      255 SETTABLEKS                       R15 R19 K62 ["padding"]
      257 DUPTABLE                         R20 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      258 GETIMPORT                        R21 K31 [Enum.FillDirection.Vertical]
      260 SETTABLEKS                       R21 R20 K25 ["FillDirection"]
      262 GETIMPORT                        R21 K33 [Enum.HorizontalAlignment.Center]
      264 SETTABLEKS                       R21 R20 K26 ["HorizontalAlignment"]
      266 GETIMPORT                        R21 K34 [Enum.SortOrder.LayoutOrder]
      268 SETTABLEKS                       R21 R20 K27 ["SortOrder"]
      270 GETIMPORT                        R21 K36 [UDim.new]
      272 LOADN                            R22 0
      273 GETUPVAL                         R23 8
      274 CALL                             R21 2 1
      275 SETTABLEKS                       R21 R20 K28 ["Padding"]
      277 SETTABLEKS                       R20 R19 K17 ["layout"]
      279 MOVE                             R20 R12
      280 CALL                             R17 3 1
      281 SETTABLEKS                       R17 R16 K59 ["Top"]
      283 GETTABLEKS                       R17 R0 K66 ["footerItems"]
      285 JUMPIFEQKNIL                     R17 ; [+87]
      287 GETTABLEKS                       R18 R0 K66 ["footerItems"]
      289 LENGTH                           R17 R18
      290 LOADN                            R18 0
      291 JUMPIFNOTLT                      R18 R17 ; [+81]
      293 NEWTABLE                         R17 0 0
      295 GETTABLEKS                       R18 R0 K66 ["footerItems"]
      297 LOADNIL                          R19
      298 LOADNIL                          R20
      299 FORGPREP                         R18
      300 GETTABLEKS                       R23 R22 K8 ["key"]
      302 GETUPVAL                         R24 5
      303 MOVE                             R25 R22
      304 MOVE                             R26 R21
      305 GETTABLEKS                       R27 R0 K9 ["selectedKey"]
      307 MOVE                             R28 R5
      308 MOVE                             R29 R1
      309 CALL                             R24 5 1
      310 SETTABLE                         R24 R17 R23
      311 FORGLOOP                         R18 2 ; [-12]
      313 GETUPVAL                         R18 6
      314 GETUPVAL                         R19 7
      315 GETTABLEKS                       R19 R19 K12 ["View"]
      317 DUPTABLE                         R20 K68 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "padding", "layout"}]
      318 GETIMPORT                        R21 K70 [Vector2.new]
      320 LOADN                            R22 0
      321 LOADN                            R23 1
      322 CALL                             R21 2 1
      323 SETTABLEKS                       R21 R20 K67 ["AnchorPoint"]
      325 GETIMPORT                        R21 K72 [UDim2.fromScale]
      327 LOADN                            R22 0
      328 LOADN                            R23 1
      329 CALL                             R21 2 1
      330 SETTABLEKS                       R21 R20 K61 ["Position"]
      332 GETIMPORT                        R21 K21 [UDim2.new]
      334 LOADN                            R22 1
      335 LOADN                            R23 0
      336 LOADN                            R24 0
      337 LOADN                            R25 0
      338 CALL                             R21 4 1
      339 SETTABLEKS                       R21 R20 K15 ["Size"]
      341 GETIMPORT                        R21 K24 [Enum.AutomaticSize.Y]
      343 SETTABLEKS                       R21 R20 K16 ["AutomaticSize"]
      345 SETTABLEKS                       R15 R20 K62 ["padding"]
      347 DUPTABLE                         R21 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      348 GETIMPORT                        R22 K31 [Enum.FillDirection.Vertical]
      350 SETTABLEKS                       R22 R21 K25 ["FillDirection"]
      352 GETIMPORT                        R22 K33 [Enum.HorizontalAlignment.Center]
      354 SETTABLEKS                       R22 R21 K26 ["HorizontalAlignment"]
      356 GETIMPORT                        R22 K34 [Enum.SortOrder.LayoutOrder]
      358 SETTABLEKS                       R22 R21 K27 ["SortOrder"]
      360 GETIMPORT                        R22 K36 [UDim.new]
      362 LOADN                            R23 0
      363 GETUPVAL                         R24 8
      364 CALL                             R22 2 1
      365 SETTABLEKS                       R22 R21 K28 ["Padding"]
      367 SETTABLEKS                       R21 R20 K17 ["layout"]
      369 MOVE                             R21 R17
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R16 K73 ["Footer"]
      373 GETUPVAL                         R17 6
      374 GETUPVAL                         R18 7
      375 GETTABLEKS                       R18 R18 K12 ["View"]
      377 DUPTABLE                         R19 K76 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "bg-shift-200"}]
      378 GETIMPORT                        R20 K70 [Vector2.new]
      380 LOADN                            R21 1
      381 LOADN                            R22 0
      382 CALL                             R20 2 1
      383 SETTABLEKS                       R20 R19 K67 ["AnchorPoint"]
      385 GETIMPORT                        R20 K72 [UDim2.fromScale]
      387 LOADN                            R21 1
      388 LOADN                            R22 0
      389 CALL                             R20 2 1
      390 SETTABLEKS                       R20 R19 K61 ["Position"]
      392 GETIMPORT                        R20 K21 [UDim2.new]
      394 LOADN                            R21 0
      395 LOADN                            R22 1
      396 LOADN                            R23 1
      397 LOADN                            R24 0
      398 CALL                             R20 4 1
      399 SETTABLEKS                       R20 R19 K15 ["Size"]
      401 CALL                             R17 2 1
      402 SETTABLEKS                       R17 R16 K77 ["Edge"]
      404 GETUPVAL                         R17 6
      405 GETUPVAL                         R18 7
      406 GETTABLEKS                       R18 R18 K12 ["View"]
      408 DUPTABLE                         R19 K81 [{["testId"] = "--appkit-nav-rail", ["LayoutOrder"], ["Size"], ["tag"] = "bg-surface-0"}]
      409 GETTABLEKS                       R20 R0 K13 ["LayoutOrder"]
      411 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      413 DUPCLOSURE                       R22 K82 [PROTO_12]
      414 NAMECALL                         R20 R9 K83 ["map"]
      416 CALL                             R20 2 1
      417 SETTABLEKS                       R20 R19 K15 ["Size"]
      419 MOVE                             R20 R16
      420 CALL                             R17 3 -1
      421 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.NavigationRail must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETTABLEKS                       R4 R0 K9 ["Packages"]
       32 GETTABLEKS                       R4 R4 K12 ["Motion"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R1 K13 ["createElement"]
       37 DUPTABLE                         R5 K17 [{["duration"] = 0.2, ["easingStyle"]}]
       38 GETIMPORT                        R6 K21 [Enum.EasingStyle.Sine]
       40 SETTABLEKS                       R6 R5 K16 ["easingStyle"]
       42 GETTABLEKS                       R6 R2 K22 ["Utility"]
       44 GETTABLEKS                       R6 R6 K23 ["getTokens"]
       46 GETTABLEKS                       R7 R2 K24 ["Enums"]
       48 GETTABLEKS                       R7 R7 K25 ["Theme"]
       50 GETTABLEKS                       R7 R7 K26 ["Dark"]
       52 GETTABLEKS                       R8 R2 K24 ["Enums"]
       54 GETTABLEKS                       R8 R8 K27 ["Device"]
       56 GETTABLEKS                       R8 R8 K28 ["Desktop"]
       58 CALL                             R6 2 1
       59 GETTABLEKS                       R7 R6 K29 ["Size"]
       61 GETTABLEKS                       R7 R7 K30 ["Size_1800"]
       63 GETTABLEKS                       R9 R6 K29 ["Size"]
       65 GETTABLEKS                       R9 R9 K32 ["Size_1600"]
       67 MULK                             R8 R9 K31 [4]
       68 GETTABLEKS                       R9 R6 K29 ["Size"]
       70 GETTABLEKS                       R9 R9 K33 ["Size_1000"]
       72 GETTABLEKS                       R10 R6 K29 ["Size"]
       74 GETTABLEKS                       R10 R10 K34 ["Size_600"]
       76 GETTABLEKS                       R11 R6 K35 ["Gap"]
       78 GETTABLEKS                       R11 R11 K36 ["Small"]
       80 GETTABLEKS                       R12 R6 K37 ["Color"]
       82 GETTABLEKS                       R12 R12 K38 ["Extended"]
       84 GETTABLEKS                       R12 R12 K39 ["White"]
       86 GETTABLEKS                       R12 R12 K40 ["White_100"]
       88 DUPTABLE                         R13 K46 [{["roblox"] = "tilt", ["studio"] = "studio", ["creator"] = "sidebar"}]
       89 DUPTABLE                         R14 K48 [{["tilt"] = True, ["studio"] = True}]
       90 DUPCLOSURE                       R15 K49 [PROTO_0]
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R2
       93 DUPCLOSURE                       R16 K50 [PROTO_1]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 DUPCLOSURE                       R17 K51 [PROTO_2]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R6
      104 DUPCLOSURE                       R18 K52 [PROTO_3]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R11
      109 DUPCLOSURE                       R19 K53 [PROTO_4]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R20 K54 [PROTO_5]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R2
      118 DUPCLOSURE                       R21 K55 [PROTO_6]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R20
      126 DUPCLOSURE                       R22 K56 [PROTO_7]
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R21
      133 DUPCLOSURE                       R23 K57 [PROTO_9]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R22
      136 DUPCLOSURE                       R24 K58 [PROTO_13]
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R6
      148 DUPTABLE                         R25 K63 [{"NavigationRail", "ToolkitHeader", "NavigationRailHeader", "BrandGlyphs"}]
      149 SETTABLEKS                       R24 R25 K59 ["NavigationRail"]
      151 SETTABLEKS                       R18 R25 K60 ["ToolkitHeader"]
      153 SETTABLEKS                       R17 R25 K61 ["NavigationRailHeader"]
      155 SETTABLEKS                       R13 R25 K62 ["BrandGlyphs"]
      157 RETURN                           R25 1
