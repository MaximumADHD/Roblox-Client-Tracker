PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K2 ["depth"]
        3 ORK                              R4 R5 K1 ["none"]
        4 GETTABLE                         R2 R3 R4
        5 ORK                              R1 R2 K0 [0]
        6 GETTABLEKS                       R3 R0 K3 ["disabled"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R4 R0 K4 ["checked"]
       14 JUMPIFNOT                        R4 ; [+2]
       15 LOADK                            R3 K5 ["content-emphasis"]
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R3 R0 K6 ["bodyTone"]
       19 GETTABLEKS                       R5 R0 K8 ["textStyle"]
       21 ORK                              R4 R5 K7 ["text-body-medium"]
       22 GETTABLEKS                       R6 R0 K4 ["checked"]
       24 JUMPIFNOT                        R6 ; [+2]
       25 LOADK                            R5 K9 [" bg-shift-200"]
       26 JUMP                             ; [+1]
       27 LOADK                            R5 K10 [""]
       28 DUPTABLE                         R6 K12 [{"Label"}]
       29 GETUPVAL                         R7 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K13 ["Text"]
       33 DUPTABLE                         R9 K19 [{["Text"], ["LayoutOrder"] = 2, ["Position"], ["Size"], ["tag"]}]
       34 GETTABLEKS                       R10 R0 K20 ["label"]
       36 SETTABLEKS                       R10 R9 K13 ["Text"]
       38 GETIMPORT                        R10 K23 [UDim2.new]
       40 LOADN                            R11 0
       41 GETUPVAL                         R13 3
       42 GETTABLEKS                       R13 R13 K24 ["Gap"]
       44 GETTABLEKS                       R13 R13 K25 ["Small"]
       46 ADD                              R12 R1 R13
       47 LOADN                            R13 0
       48 LOADN                            R14 0
       49 CALL                             R10 4 1
       50 SETTABLEKS                       R10 R9 K16 ["Position"]
       52 GETIMPORT                        R10 K23 [UDim2.new]
       54 LOADN                            R11 1
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K24 ["Gap"]
       58 GETTABLEKS                       R15 R15 K25 ["Small"]
       60 ADD                              R14 R1 R15
       61 GETTABLEKS                       R16 R0 K26 ["trailing"]
       63 JUMPIFEQKNIL                     R16 ; [+3]
       65 GETUPVAL                         R15 4
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R15 3
       68 GETTABLEKS                       R15 R15 K24 ["Gap"]
       70 GETTABLEKS                       R15 R15 K25 ["Small"]
       72 ADD                              R13 R14 R15
       73 MINUS                            R12 R13
       74 LOADN                            R13 1
       75 LOADN                            R14 0
       76 CALL                             R10 4 1
       77 SETTABLEKS                       R10 R9 K17 ["Size"]
       79 LOADK                            R11 K27 ["%* %* text-align-x-left text-align-y-center text-truncate-end"]
       80 MOVE                             R13 R4
       81 MOVE                             R14 R3
       82 NAMECALL                         R11 R11 K28 ["format"]
       84 CALL                             R11 3 1
       85 MOVE                             R10 R11
       86 SETTABLEKS                       R10 R9 K18 ["tag"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K11 ["Label"]
       91 GETTABLEKS                       R7 R0 K26 ["trailing"]
       93 JUMPIFEQKNIL                     R7 ; [+65]
       95 GETUPVAL                         R7 1
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K29 ["View"]
       99 DUPTABLE                         R9 K32 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      100 GETIMPORT                        R10 K34 [Vector2.new]
      102 LOADN                            R11 1
      103 LOADK                            R12 K35 [0.5]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K30 ["AnchorPoint"]
      107 GETIMPORT                        R10 K37 [UDim2.fromScale]
      109 LOADN                            R11 1
      110 LOADK                            R12 K35 [0.5]
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K16 ["Position"]
      114 GETIMPORT                        R10 K39 [UDim2.fromOffset]
      116 GETUPVAL                         R11 4
      117 GETUPVAL                         R12 4
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K17 ["Size"]
      121 DUPTABLE                         R10 K41 [{"Icon"}]
      122 GETUPVAL                         R11 1
      123 GETUPVAL                         R12 2
      124 GETTABLEKS                       R12 R12 K40 ["Icon"]
      126 DUPTABLE                         R13 K45 [{"name", "size", "style"}]
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R17 R0 K26 ["trailing"]
      130 GETTABLE                         R15 R16 R17
      131 ORK                              R14 R15 K46 ["chevron-small-right"]
      132 SETTABLEKS                       R14 R13 K42 ["name"]
      134 GETUPVAL                         R14 2
      135 GETTABLEKS                       R14 R14 K47 ["Enums"]
      137 GETTABLEKS                       R14 R14 K48 ["IconSize"]
      139 GETTABLEKS                       R14 R14 K49 ["Medium"]
      141 SETTABLEKS                       R14 R13 K43 ["size"]
      143 GETTABLEKS                       R14 R0 K50 ["tokens"]
      145 GETTABLEKS                       R14 R14 K51 ["Color"]
      147 GETTABLEKS                       R14 R14 K52 ["Content"]
      149 GETTABLEKS                       R14 R14 K53 ["Emphasis"]
      151 SETTABLEKS                       R14 R13 K44 ["style"]
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R10 K40 ["Icon"]
      156 CALL                             R7 3 1
      157 SETTABLEKS                       R7 R6 K54 ["Trailing"]
      159 GETUPVAL                         R7 1
      160 GETUPVAL                         R8 2
      161 GETTABLEKS                       R8 R8 K29 ["View"]
      163 DUPTABLE                         R9 K58 [{"testId", "onActivated", "LayoutOrder", "Size", "GroupTransparency", "tag"}]
      164 GETTABLEKS                       R10 R0 K55 ["testId"]
      166 SETTABLEKS                       R10 R9 K55 ["testId"]
      168 JUMPIFNOT                        R2 ; [+2]
      169 LOADNIL                          R10
      170 JUMP                             ; [+2]
      171 GETTABLEKS                       R10 R0 K56 ["onActivated"]
      173 SETTABLEKS                       R10 R9 K56 ["onActivated"]
      175 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
      177 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      179 GETIMPORT                        R10 K23 [UDim2.new]
      181 LOADN                            R11 1
      182 LOADN                            R12 0
      183 LOADN                            R13 0
      184 GETUPVAL                         R14 4
      185 CALL                             R10 4 1
      186 SETTABLEKS                       R10 R9 K17 ["Size"]
      188 JUMPIFNOT                        R2 ; [+2]
      189 LOADK                            R10 K35 [0.5]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R10
      192 SETTABLEKS                       R10 R9 K57 ["GroupTransparency"]
      194 LOADK                            R11 K59 ["radius-medium%*"]
      195 MOVE                             R13 R5
      196 NAMECALL                         R11 R11 K28 ["format"]
      198 CALL                             R11 2 1
      199 MOVE                             R10 R11
      200 SETTABLEKS                       R10 R9 K18 ["tag"]
      202 MOVE                             R10 R6
      203 CALL                             R7 3 -1
      204 RETURN                           R7 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["entries"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["items"]
       10 JUMPIFEQKNIL                     R6 ; [+10]
       12 GETTABLEKS                       R6 R5 K2 ["key"]
       14 GETTABLEKS                       R8 R5 K3 ["defaultOpen"]
       16 JUMPIFEQKB                       R8 TRUE ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 SETTABLE                         R7 R0 R6
       21 FORGLOOP                         R1 2 ; [-14]
       23 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["key"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["key"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["onSelect"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["useState"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R3 1 2
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R4
       16 LOADN                            R6 0
       17 NEWCLOSURE                       R7 P2
       18 CAPTURE                          REF R6
       19 NEWTABLE                         R8 0 0
       21 GETTABLEKS                       R9 R0 K4 ["entries"]
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 FORGPREP                         R9
       26 GETTABLEKS                       R14 R13 K5 ["items"]
       28 JUMPIFEQKNIL                     R14 ; [+119]
       30 GETTABLEKS                       R16 R13 K6 ["key"]
       32 GETTABLE                         R15 R3 R16
       33 JUMPIFEQKB                       R15 TRUE ; [+2]
       35 LOADB                            R14 0 +1
       36 LOADB                            R14 1
       37 LOADK                            R16 K7 ["group_%*"]
       38 GETTABLEKS                       R18 R13 K6 ["key"]
       40 NAMECALL                         R16 R16 K8 ["format"]
       42 CALL                             R16 2 1
       43 MOVE                             R15 R16
       44 GETUPVAL                         R16 2
       45 DUPTABLE                         R17 K20 [{["tokens"], ["testId"], ["label"], ["checked"], ["trailing"], ["bodyTone"] = "content-emphasis", ["textStyle"] = "text-label-medium", ["LayoutOrder"], ["onActivated"]}]
       46 SETTABLEKS                       R1 R17 K9 ["tokens"]
       48 LOADK                            R19 K21 ["--appkit-sub-nav-group-%*"]
       49 GETTABLEKS                       R21 R13 K6 ["key"]
       51 NAMECALL                         R19 R19 K8 ["format"]
       53 CALL                             R19 2 1
       54 MOVE                             R18 R19
       55 SETTABLEKS                       R18 R17 K10 ["testId"]
       57 GETTABLEKS                       R18 R13 K11 ["label"]
       59 SETTABLEKS                       R18 R17 K11 ["label"]
       61 SETTABLEKS                       R14 R17 K12 ["checked"]
       63 JUMPIFNOT                        R14 ; [+2]
       64 LOADK                            R18 K22 ["collapse"]
       65 JUMP                             ; [+1]
       66 LOADK                            R18 K23 ["expand"]
       67 SETTABLEKS                       R18 R17 K13 ["trailing"]
       69 ADDK                             R6 R6 K24 [1]
       70 MOVE                             R18 R6
       71 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
       73 NEWCLOSURE                       R18 P3
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R18 R17 K19 ["onActivated"]
       79 CALL                             R16 1 1
       80 SETTABLE                         R16 R8 R15
       81 JUMPIFNOT                        R14 ; [+123]
       82 GETTABLEKS                       R15 R13 K5 ["items"]
       84 LOADNIL                          R16
       85 LOADNIL                          R17
       86 FORGPREP                         R15
       87 LOADK                            R21 K25 ["item_%*"]
       88 GETTABLEKS                       R23 R19 K6 ["key"]
       90 NAMECALL                         R21 R21 K8 ["format"]
       92 CALL                             R21 2 1
       93 MOVE                             R20 R21
       94 GETUPVAL                         R21 2
       95 DUPTABLE                         R22 K29 [{["tokens"], ["testId"], ["label"], ["checked"], ["depth"], ["trailing"], ["disabled"], ["bodyTone"] = "content-default", ["LayoutOrder"], ["onActivated"]}]
       96 SETTABLEKS                       R1 R22 K9 ["tokens"]
       98 LOADK                            R24 K30 ["--appkit-sub-nav-item-%*"]
       99 GETTABLEKS                       R26 R19 K6 ["key"]
      101 NAMECALL                         R24 R24 K8 ["format"]
      103 CALL                             R24 2 1
      104 MOVE                             R23 R24
      105 SETTABLEKS                       R23 R22 K10 ["testId"]
      107 GETTABLEKS                       R23 R19 K11 ["label"]
      109 SETTABLEKS                       R23 R22 K11 ["label"]
      111 GETTABLEKS                       R24 R0 K31 ["selectedKey"]
      113 GETTABLEKS                       R25 R19 K6 ["key"]
      115 JUMPIFEQ                         R24 R25 ; [+2]
      117 LOADB                            R23 0 +1
      118 LOADB                            R23 1
      119 SETTABLEKS                       R23 R22 K12 ["checked"]
      121 GETTABLEKS                       R24 R19 K26 ["depth"]
      123 ORK                              R23 R24 K32 ["level1"]
      124 SETTABLEKS                       R23 R22 K26 ["depth"]
      126 GETTABLEKS                       R23 R19 K13 ["trailing"]
      128 SETTABLEKS                       R23 R22 K13 ["trailing"]
      130 GETTABLEKS                       R23 R19 K27 ["disabled"]
      132 SETTABLEKS                       R23 R22 K27 ["disabled"]
      134 ADDK                             R6 R6 K24 [1]
      135 MOVE                             R23 R6
      136 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      138 NEWCLOSURE                       R23 P4
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R19
      141 SETTABLEKS                       R23 R22 K19 ["onActivated"]
      143 CALL                             R21 1 1
      144 SETTABLE                         R21 R8 R20
      145 FORGLOOP                         R15 2 ; [-59]
      147 JUMP                             ; [+57]
      148 LOADK                            R15 K25 ["item_%*"]
      149 GETTABLEKS                       R17 R13 K6 ["key"]
      151 NAMECALL                         R15 R15 K8 ["format"]
      153 CALL                             R15 2 1
      154 MOVE                             R14 R15
      155 GETUPVAL                         R15 2
      156 DUPTABLE                         R16 K29 [{["tokens"], ["testId"], ["label"], ["checked"], ["depth"], ["trailing"], ["disabled"], ["bodyTone"] = "content-default", ["LayoutOrder"], ["onActivated"]}]
      157 SETTABLEKS                       R1 R16 K9 ["tokens"]
      159 LOADK                            R18 K30 ["--appkit-sub-nav-item-%*"]
      160 GETTABLEKS                       R20 R13 K6 ["key"]
      162 NAMECALL                         R18 R18 K8 ["format"]
      164 CALL                             R18 2 1
      165 MOVE                             R17 R18
      166 SETTABLEKS                       R17 R16 K10 ["testId"]
      168 GETTABLEKS                       R17 R13 K11 ["label"]
      170 SETTABLEKS                       R17 R16 K11 ["label"]
      172 GETTABLEKS                       R18 R0 K31 ["selectedKey"]
      174 GETTABLEKS                       R19 R13 K6 ["key"]
      176 JUMPIFEQ                         R18 R19 ; [+2]
      178 LOADB                            R17 0 +1
      179 LOADB                            R17 1
      180 SETTABLEKS                       R17 R16 K12 ["checked"]
      182 GETTABLEKS                       R17 R13 K26 ["depth"]
      184 SETTABLEKS                       R17 R16 K26 ["depth"]
      186 GETTABLEKS                       R17 R13 K13 ["trailing"]
      188 SETTABLEKS                       R17 R16 K13 ["trailing"]
      190 GETTABLEKS                       R17 R13 K27 ["disabled"]
      192 SETTABLEKS                       R17 R16 K27 ["disabled"]
      194 ADDK                             R6 R6 K24 [1]
      195 MOVE                             R17 R6
      196 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      198 NEWCLOSURE                       R17 P5
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R13
      201 SETTABLEKS                       R17 R16 K19 ["onActivated"]
      203 CALL                             R15 1 1
      204 SETTABLE                         R15 R8 R14
      205 FORGLOOP                         R9 2 ; [-180]
      207 DUPTABLE                         R9 K35 [{"Body", "Edge"}]
      208 GETUPVAL                         R10 3
      209 GETUPVAL                         R11 0
      210 GETTABLEKS                       R11 R11 K36 ["ScrollView"]
      212 DUPTABLE                         R12 K42 [{"Position", "Size", "scroll", "padding", "layout"}]
      213 GETIMPORT                        R13 K45 [UDim2.fromOffset]
      215 LOADN                            R14 0
      216 GETTABLEKS                       R16 R0 K46 ["title"]
      218 JUMPIFEQKNIL                     R16 ; [+3]
      220 GETUPVAL                         R15 4
      221 JUMP                             ; [+1]
      222 LOADN                            R15 0
      223 CALL                             R13 2 1
      224 SETTABLEKS                       R13 R12 K37 ["Position"]
      226 GETIMPORT                        R13 K48 [UDim2.new]
      228 LOADN                            R14 1
      229 LOADN                            R15 0
      230 LOADN                            R16 1
      231 GETTABLEKS                       R18 R0 K46 ["title"]
      233 JUMPIFEQKNIL                     R18 ; [+4]
      235 GETUPVAL                         R18 4
      236 MINUS                            R17 R18
      237 JUMP                             ; [+1]
      238 LOADN                            R17 0
      239 CALL                             R13 4 1
      240 SETTABLEKS                       R13 R12 K38 ["Size"]
      242 DUPTABLE                         R13 K53 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      243 GETIMPORT                        R14 K56 [Enum.ScrollingDirection.Y]
      245 SETTABLEKS                       R14 R13 K49 ["ScrollingDirection"]
      247 GETIMPORT                        R14 K58 [Enum.AutomaticSize.Y]
      249 SETTABLEKS                       R14 R13 K50 ["AutomaticCanvasSize"]
      251 GETIMPORT                        R14 K45 [UDim2.fromOffset]
      253 LOADN                            R15 0
      254 LOADN                            R16 0
      255 CALL                             R14 2 1
      256 SETTABLEKS                       R14 R13 K51 ["CanvasSize"]
      258 GETIMPORT                        R14 K61 [Enum.ScrollBarInset.Always]
      260 SETTABLEKS                       R14 R13 K52 ["VerticalScrollBarInset"]
      262 SETTABLEKS                       R13 R12 K39 ["scroll"]
      264 DUPTABLE                         R13 K66 [{"left", "right", "top", "bottom"}]
      265 GETIMPORT                        R14 K68 [UDim.new]
      267 LOADN                            R15 0
      268 GETUPVAL                         R16 5
      269 GETTABLEKS                       R16 R16 K69 ["Padding"]
      271 GETTABLEKS                       R16 R16 K70 ["Large"]
      273 CALL                             R14 2 1
      274 SETTABLEKS                       R14 R13 K62 ["left"]
      276 GETIMPORT                        R14 K68 [UDim.new]
      278 LOADN                            R15 0
      279 GETUPVAL                         R16 5
      280 GETTABLEKS                       R16 R16 K69 ["Padding"]
      282 GETTABLEKS                       R16 R16 K70 ["Large"]
      284 CALL                             R14 2 1
      285 SETTABLEKS                       R14 R13 K63 ["right"]
      287 GETIMPORT                        R14 K68 [UDim.new]
      289 LOADN                            R15 0
      290 GETUPVAL                         R16 5
      291 GETTABLEKS                       R16 R16 K69 ["Padding"]
      293 GETTABLEKS                       R16 R16 K70 ["Large"]
      295 CALL                             R14 2 1
      296 SETTABLEKS                       R14 R13 K64 ["top"]
      298 GETIMPORT                        R14 K68 [UDim.new]
      300 LOADN                            R15 0
      301 GETUPVAL                         R16 5
      302 GETTABLEKS                       R16 R16 K69 ["Padding"]
      304 GETTABLEKS                       R16 R16 K70 ["Large"]
      306 CALL                             R14 2 1
      307 SETTABLEKS                       R14 R13 K65 ["bottom"]
      309 SETTABLEKS                       R13 R12 K40 ["padding"]
      311 DUPTABLE                         R13 K73 [{"FillDirection", "SortOrder", "Padding"}]
      312 GETIMPORT                        R14 K75 [Enum.FillDirection.Vertical]
      314 SETTABLEKS                       R14 R13 K71 ["FillDirection"]
      316 GETIMPORT                        R14 K76 [Enum.SortOrder.LayoutOrder]
      318 SETTABLEKS                       R14 R13 K72 ["SortOrder"]
      320 GETIMPORT                        R14 K68 [UDim.new]
      322 LOADN                            R15 0
      323 GETUPVAL                         R16 5
      324 GETTABLEKS                       R16 R16 K77 ["Gap"]
      326 GETTABLEKS                       R16 R16 K78 ["XSmall"]
      328 CALL                             R14 2 1
      329 SETTABLEKS                       R14 R13 K69 ["Padding"]
      331 SETTABLEKS                       R13 R12 K41 ["layout"]
      333 MOVE                             R13 R8
      334 CALL                             R10 3 1
      335 SETTABLEKS                       R10 R9 K33 ["Body"]
      337 GETUPVAL                         R10 3
      338 GETUPVAL                         R11 0
      339 GETTABLEKS                       R11 R11 K79 ["View"]
      341 DUPTABLE                         R12 K83 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "bg-shift-200"}]
      342 GETIMPORT                        R13 K85 [Vector2.new]
      344 LOADN                            R14 1
      345 LOADN                            R15 0
      346 CALL                             R13 2 1
      347 SETTABLEKS                       R13 R12 K80 ["AnchorPoint"]
      349 GETIMPORT                        R13 K87 [UDim2.fromScale]
      351 LOADN                            R14 1
      352 LOADN                            R15 0
      353 CALL                             R13 2 1
      354 SETTABLEKS                       R13 R12 K37 ["Position"]
      356 GETIMPORT                        R13 K48 [UDim2.new]
      358 LOADN                            R14 0
      359 GETUPVAL                         R15 5
      360 GETTABLEKS                       R15 R15 K88 ["Stroke"]
      362 GETTABLEKS                       R15 R15 K89 ["Standard"]
      364 LOADN                            R16 1
      365 LOADN                            R17 0
      366 CALL                             R13 4 1
      367 SETTABLEKS                       R13 R12 K38 ["Size"]
      369 CALL                             R10 2 1
      370 SETTABLEKS                       R10 R9 K34 ["Edge"]
      372 GETTABLEKS                       R10 R0 K46 ["title"]
      374 JUMPIFEQKNIL                     R10 ; [+210]
      376 GETUPVAL                         R10 3
      377 GETUPVAL                         R11 0
      378 GETTABLEKS                       R11 R11 K79 ["View"]
      380 DUPTABLE                         R12 K91 [{["testId"] = "--appkit-sub-nav-header", ["onActivated"], ["Position"], ["Size"], ["padding"]}]
      381 GETTABLEKS                       R13 R0 K92 ["onBack"]
      383 SETTABLEKS                       R13 R12 K19 ["onActivated"]
      385 GETIMPORT                        R13 K45 [UDim2.fromOffset]
      387 LOADN                            R14 0
      388 LOADN                            R15 0
      389 CALL                             R13 2 1
      390 SETTABLEKS                       R13 R12 K37 ["Position"]
      392 GETIMPORT                        R13 K48 [UDim2.new]
      394 LOADN                            R14 1
      395 LOADN                            R15 0
      396 LOADN                            R16 0
      397 GETUPVAL                         R17 4
      398 CALL                             R13 4 1
      399 SETTABLEKS                       R13 R12 K38 ["Size"]
      401 DUPTABLE                         R13 K66 [{"left", "right", "top", "bottom"}]
      402 GETIMPORT                        R14 K68 [UDim.new]
      404 LOADN                            R15 0
      405 GETUPVAL                         R16 5
      406 GETTABLEKS                       R16 R16 K69 ["Padding"]
      408 GETTABLEKS                       R16 R16 K70 ["Large"]
      410 CALL                             R14 2 1
      411 SETTABLEKS                       R14 R13 K62 ["left"]
      413 GETIMPORT                        R14 K68 [UDim.new]
      415 LOADN                            R15 0
      416 GETUPVAL                         R16 5
      417 GETTABLEKS                       R16 R16 K69 ["Padding"]
      419 GETTABLEKS                       R16 R16 K70 ["Large"]
      421 CALL                             R14 2 1
      422 SETTABLEKS                       R14 R13 K63 ["right"]
      424 GETIMPORT                        R14 K68 [UDim.new]
      426 LOADN                            R15 0
      427 GETUPVAL                         R16 5
      428 GETTABLEKS                       R16 R16 K69 ["Padding"]
      430 GETTABLEKS                       R16 R16 K93 ["Small"]
      432 CALL                             R14 2 1
      433 SETTABLEKS                       R14 R13 K64 ["top"]
      435 GETIMPORT                        R14 K68 [UDim.new]
      437 LOADN                            R15 0
      438 GETUPVAL                         R16 5
      439 GETTABLEKS                       R16 R16 K69 ["Padding"]
      441 GETTABLEKS                       R16 R16 K93 ["Small"]
      443 CALL                             R14 2 1
      444 SETTABLEKS                       R14 R13 K65 ["bottom"]
      446 SETTABLEKS                       R13 R12 K40 ["padding"]
      448 DUPTABLE                         R13 K97 [{"Back", "Title", "Hairline"}]
      449 GETUPVAL                         R14 3
      450 GETUPVAL                         R15 0
      451 GETTABLEKS                       R15 R15 K79 ["View"]
      453 DUPTABLE                         R16 K99 [{["Position"], ["Size"], ["tag"] = "row align-x-center align-y-center"}]
      454 GETIMPORT                        R17 K45 [UDim2.fromOffset]
      456 LOADN                            R18 0
      457 LOADN                            R19 0
      458 CALL                             R17 2 1
      459 SETTABLEKS                       R17 R16 K37 ["Position"]
      461 GETIMPORT                        R17 K48 [UDim2.new]
      463 LOADN                            R18 0
      464 GETUPVAL                         R19 6
      465 LOADN                            R20 1
      466 LOADN                            R21 0
      467 CALL                             R17 4 1
      468 SETTABLEKS                       R17 R16 K38 ["Size"]
      470 DUPTABLE                         R17 K101 [{"Icon"}]
      471 GETUPVAL                         R18 3
      472 GETUPVAL                         R19 0
      473 GETTABLEKS                       R19 R19 K100 ["Icon"]
      475 DUPTABLE                         R20 K105 [{"name", "size", "style"}]
      476 GETTABLEKS                       R22 R0 K107 ["backIcon"]
      478 ORK                              R21 R22 K106 ["chevron-large-left"]
      479 SETTABLEKS                       R21 R20 K102 ["name"]
      481 GETUPVAL                         R21 0
      482 GETTABLEKS                       R21 R21 K108 ["Enums"]
      484 GETTABLEKS                       R21 R21 K109 ["IconSize"]
      486 GETTABLEKS                       R21 R21 K110 ["Medium"]
      488 SETTABLEKS                       R21 R20 K103 ["size"]
      490 GETTABLEKS                       R21 R1 K111 ["Color"]
      492 GETTABLEKS                       R21 R21 K112 ["Content"]
      494 GETTABLEKS                       R21 R21 K113 ["Emphasis"]
      496 SETTABLEKS                       R21 R20 K104 ["style"]
      498 CALL                             R18 2 1
      499 SETTABLEKS                       R18 R17 K100 ["Icon"]
      501 CALL                             R14 3 1
      502 SETTABLEKS                       R14 R13 K94 ["Back"]
      504 GETUPVAL                         R14 3
      505 GETUPVAL                         R15 0
      506 GETTABLEKS                       R15 R15 K114 ["Text"]
      508 DUPTABLE                         R16 K116 [{["Text"], ["Position"], ["Size"], ["tag"] = "text-label-medium content-emphasis text-align-x-left text-align-y-center text-truncate-end"}]
      509 GETTABLEKS                       R17 R0 K46 ["title"]
      511 SETTABLEKS                       R17 R16 K114 ["Text"]
      513 GETIMPORT                        R17 K48 [UDim2.new]
      515 LOADN                            R18 0
      516 GETUPVAL                         R20 6
      517 GETUPVAL                         R21 5
      518 GETTABLEKS                       R21 R21 K77 ["Gap"]
      520 GETTABLEKS                       R21 R21 K78 ["XSmall"]
      522 ADD                              R19 R20 R21
      523 LOADN                            R20 0
      524 LOADN                            R21 0
      525 CALL                             R17 4 1
      526 SETTABLEKS                       R17 R16 K37 ["Position"]
      528 GETIMPORT                        R17 K48 [UDim2.new]
      530 LOADN                            R18 1
      531 GETUPVAL                         R21 6
      532 GETUPVAL                         R22 5
      533 GETTABLEKS                       R22 R22 K38 ["Size"]
      535 GETTABLEKS                       R22 R22 K117 ["Size_300"]
      537 ADD                              R20 R21 R22
      538 MINUS                            R19 R20
      539 LOADN                            R20 1
      540 LOADN                            R21 0
      541 CALL                             R17 4 1
      542 SETTABLEKS                       R17 R16 K38 ["Size"]
      544 CALL                             R14 2 1
      545 SETTABLEKS                       R14 R13 K95 ["Title"]
      547 GETUPVAL                         R14 3
      548 GETUPVAL                         R15 0
      549 GETTABLEKS                       R15 R15 K79 ["View"]
      551 DUPTABLE                         R16 K83 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "bg-shift-200"}]
      552 GETIMPORT                        R17 K85 [Vector2.new]
      554 LOADN                            R18 0
      555 LOADN                            R19 1
      556 CALL                             R17 2 1
      557 SETTABLEKS                       R17 R16 K80 ["AnchorPoint"]
      559 GETIMPORT                        R17 K87 [UDim2.fromScale]
      561 LOADN                            R18 0
      562 LOADN                            R19 1
      563 CALL                             R17 2 1
      564 SETTABLEKS                       R17 R16 K37 ["Position"]
      566 GETIMPORT                        R17 K48 [UDim2.new]
      568 LOADN                            R18 1
      569 LOADN                            R19 0
      570 LOADN                            R20 0
      571 GETUPVAL                         R21 5
      572 GETTABLEKS                       R21 R21 K88 ["Stroke"]
      574 GETTABLEKS                       R21 R21 K89 ["Standard"]
      576 CALL                             R17 4 1
      577 SETTABLEKS                       R17 R16 K38 ["Size"]
      579 CALL                             R14 2 1
      580 SETTABLEKS                       R14 R13 K96 ["Hairline"]
      582 CALL                             R10 3 1
      583 SETTABLEKS                       R10 R9 K118 ["Header"]
      585 GETUPVAL                         R10 3
      586 GETUPVAL                         R11 0
      587 GETTABLEKS                       R11 R11 K79 ["View"]
      589 DUPTABLE                         R12 K121 [{["testId"] = "--appkit-sub-nav-rail", ["LayoutOrder"], ["Size"], ["tag"] = "bg-surface-0"}]
      590 GETTABLEKS                       R13 R0 K18 ["LayoutOrder"]
      592 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      594 GETIMPORT                        R13 K48 [UDim2.new]
      596 LOADN                            R14 0
      597 GETUPVAL                         R15 7
      598 LOADN                            R16 1
      599 LOADN                            R17 0
      600 CALL                             R13 4 1
      601 SETTABLEKS                       R13 R12 K38 ["Size"]
      603 MOVE                             R13 R9
      604 CALL                             R10 3 -1
      605 CLOSEUPVALS                      R6
      606 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.SubNavigationRail must run inside the DesignAssist plugin tree"]
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
       28 GETTABLEKS                       R3 R1 K12 ["createElement"]
       30 GETTABLEKS                       R4 R2 K13 ["Utility"]
       32 GETTABLEKS                       R4 R4 K14 ["getTokens"]
       34 GETTABLEKS                       R5 R2 K15 ["Enums"]
       36 GETTABLEKS                       R5 R5 K16 ["Theme"]
       38 GETTABLEKS                       R5 R5 K17 ["Dark"]
       40 GETTABLEKS                       R6 R2 K15 ["Enums"]
       42 GETTABLEKS                       R6 R6 K18 ["Device"]
       44 GETTABLEKS                       R6 R6 K19 ["Desktop"]
       46 CALL                             R4 2 1
       47 GETTABLEKS                       R6 R4 K21 ["Size"]
       49 GETTABLEKS                       R6 R6 K22 ["Size_1600"]
       51 MULK                             R5 R6 K20 [4]
       52 GETTABLEKS                       R6 R4 K21 ["Size"]
       54 GETTABLEKS                       R6 R6 K23 ["Size_1000"]
       56 GETTABLEKS                       R7 R4 K21 ["Size"]
       58 GETTABLEKS                       R7 R7 K24 ["Size_1400"]
       60 DUPTABLE                         R8 K28 [{"none", "level1", "level2"}]
       61 GETTABLEKS                       R9 R4 K21 ["Size"]
       63 GETTABLEKS                       R9 R9 K29 ["Size_0"]
       65 SETTABLEKS                       R9 R8 K25 ["none"]
       67 GETTABLEKS                       R9 R4 K21 ["Size"]
       69 GETTABLEKS                       R9 R9 K30 ["Size_800"]
       71 SETTABLEKS                       R9 R8 K26 ["level1"]
       73 GETTABLEKS                       R9 R4 K21 ["Size"]
       75 GETTABLEKS                       R9 R9 K31 ["Size_1300"]
       77 SETTABLEKS                       R9 R8 K27 ["level2"]
       79 DUPTABLE                         R9 K38 [{["collapse"] = "chevron-small-down", ["expand"] = "chevron-small-right", ["overflow"] = "three-dots-horizontal"}]
       80 DUPCLOSURE                       R10 K39 [PROTO_0]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R11 K40 [PROTO_8]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 RETURN                           R11 1
