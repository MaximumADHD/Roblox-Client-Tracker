PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K3 ["width"]
        8 ORK                              R2 R3 K2 [152]
        9 GETTABLEKS                       R4 R0 K5 ["aspectRatio"]
       11 ORK                              R3 R4 K4 [1.77777777777778]
       12 LOADN                            R5 1
       13 DIV                              R7 R2 R3
       14 FASTCALL1                        MATH_ROUND R7 ; [+2]
       15 GETIMPORT                        R6 K8 [math.round]
       17 CALL                             R6 1 1
       18 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       20 GETIMPORT                        R4 K10 [math.max]
       22 CALL                             R4 2 1
       23 NEWTABLE                         R5 2 0
       25 GETTABLEKS                       R6 R0 K11 ["image"]
       27 JUMPIFEQKNIL                     R6 ; [+17]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K12 ["Image"]
       33 DUPTABLE                         R8 K16 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium"}]
       34 GETTABLEKS                       R9 R0 K11 ["image"]
       36 SETTABLEKS                       R9 R8 K12 ["Image"]
       38 GETIMPORT                        R9 K19 [Enum.ScaleType.Crop]
       40 SETTABLEKS                       R9 R8 K13 ["ScaleType"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K12 ["Image"]
       45 GETTABLEKS                       R6 R0 K20 ["badge"]
       47 JUMPIFEQKNIL                     R6 ; [+55]
       49 GETUPVAL                         R6 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K21 ["View"]
       53 DUPTABLE                         R8 K25 [{"AnchorPoint", "Position", "AutomaticSize"}]
       54 GETIMPORT                        R9 K28 [Vector2.new]
       56 LOADN                            R10 0
       57 LOADN                            R11 0
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K22 ["AnchorPoint"]
       61 GETIMPORT                        R9 K31 [UDim2.fromOffset]
       63 GETTABLEKS                       R10 R1 K32 ["Padding"]
       65 GETTABLEKS                       R10 R10 K33 ["Small"]
       67 GETTABLEKS                       R11 R1 K32 ["Padding"]
       69 GETTABLEKS                       R11 R11 K33 ["Small"]
       71 CALL                             R9 2 1
       72 SETTABLEKS                       R9 R8 K23 ["Position"]
       74 GETIMPORT                        R9 K35 [Enum.AutomaticSize.XY]
       76 SETTABLEKS                       R9 R8 K24 ["AutomaticSize"]
       78 DUPTABLE                         R9 K37 [{"Badge"}]
       79 GETUPVAL                         R10 1
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K36 ["Badge"]
       83 DUPTABLE                         R12 K40 [{"text", "variant"}]
       84 GETTABLEKS                       R13 R0 K20 ["badge"]
       86 SETTABLEKS                       R13 R12 K38 ["text"]
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K41 ["Enums"]
       91 GETTABLEKS                       R13 R13 K42 ["BadgeVariant"]
       93 GETTABLEKS                       R13 R13 K43 ["Contrast"]
       95 SETTABLEKS                       R13 R12 K39 ["variant"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K36 ["Badge"]
      100 CALL                             R6 3 1
      101 SETTABLEKS                       R6 R5 K36 ["Badge"]
      103 DUPTABLE                         R6 K46 [{"Media", "Title"}]
      104 GETUPVAL                         R7 1
      105 GETUPVAL                         R8 0
      106 GETTABLEKS                       R8 R8 K21 ["View"]
      108 DUPTABLE                         R9 K53 [{["LayoutOrder"] = 1, ["Size"], ["ClipsDescendants"] = True, ["tag"] = "bg-surface-200 radius-medium stroke-default stroke-standard stroke-position-inner"}]
      109 GETIMPORT                        R10 K54 [UDim2.new]
      111 LOADN                            R11 1
      112 LOADN                            R12 0
      113 LOADN                            R13 0
      114 MOVE                             R14 R4
      115 CALL                             R10 4 1
      116 SETTABLEKS                       R10 R9 K49 ["Size"]
      118 MOVE                             R10 R5
      119 CALL                             R7 3 1
      120 SETTABLEKS                       R7 R6 K44 ["Media"]
      122 GETUPVAL                         R7 1
      123 GETUPVAL                         R8 0
      124 GETTABLEKS                       R8 R8 K55 ["Text"]
      126 DUPTABLE                         R9 K58 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-body-medium content-emphasis text-truncate-end text-align-x-left"}]
      127 GETTABLEKS                       R10 R0 K59 ["title"]
      129 SETTABLEKS                       R10 R9 K55 ["Text"]
      131 GETIMPORT                        R10 K54 [UDim2.new]
      133 LOADN                            R11 1
      134 LOADN                            R12 0
      135 LOADN                            R13 0
      136 LOADN                            R14 0
      137 CALL                             R10 4 1
      138 SETTABLEKS                       R10 R9 K49 ["Size"]
      140 GETIMPORT                        R10 K61 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      144 CALL                             R7 2 1
      145 SETTABLEKS                       R7 R6 K45 ["Title"]
      147 GETTABLEKS                       R7 R0 K62 ["metadata"]
      149 JUMPIFEQKNIL                     R7 ; [+26]
      151 GETUPVAL                         R7 1
      152 GETUPVAL                         R8 0
      153 GETTABLEKS                       R8 R8 K55 ["Text"]
      155 DUPTABLE                         R9 K65 [{["Text"], ["LayoutOrder"] = 3, ["Size"], ["AutomaticSize"], ["tag"] = "text-body-small content-muted text-truncate-end text-align-x-left"}]
      156 GETTABLEKS                       R10 R0 K62 ["metadata"]
      158 SETTABLEKS                       R10 R9 K55 ["Text"]
      160 GETIMPORT                        R10 K54 [UDim2.new]
      162 LOADN                            R11 1
      163 LOADN                            R12 0
      164 LOADN                            R13 0
      165 LOADN                            R14 0
      166 CALL                             R10 4 1
      167 SETTABLEKS                       R10 R9 K49 ["Size"]
      169 GETIMPORT                        R10 K61 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      173 CALL                             R7 2 1
      174 SETTABLEKS                       R7 R6 K66 ["Metadata"]
      176 GETUPVAL                         R7 1
      177 GETUPVAL                         R8 0
      178 GETTABLEKS                       R8 R8 K21 ["View"]
      180 DUPTABLE                         R9 K71 [{["testId"] = "--appkit-media-tile", ["onActivated"], ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
      181 GETTABLEKS                       R10 R0 K69 ["onActivated"]
      183 SETTABLEKS                       R10 R9 K69 ["onActivated"]
      185 GETTABLEKS                       R10 R0 K47 ["LayoutOrder"]
      187 SETTABLEKS                       R10 R9 K47 ["LayoutOrder"]
      189 GETIMPORT                        R10 K54 [UDim2.new]
      191 LOADN                            R11 0
      192 MOVE                             R12 R2
      193 LOADN                            R13 0
      194 LOADN                            R14 0
      195 CALL                             R10 4 1
      196 SETTABLEKS                       R10 R9 K49 ["Size"]
      198 GETIMPORT                        R10 K61 [Enum.AutomaticSize.Y]
      200 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      202 DUPTABLE                         R10 K74 [{"FillDirection", "SortOrder", "Padding"}]
      203 GETIMPORT                        R11 K76 [Enum.FillDirection.Vertical]
      205 SETTABLEKS                       R11 R10 K72 ["FillDirection"]
      207 GETIMPORT                        R11 K77 [Enum.SortOrder.LayoutOrder]
      209 SETTABLEKS                       R11 R10 K73 ["SortOrder"]
      211 GETIMPORT                        R11 K79 [UDim.new]
      213 LOADN                            R12 0
      214 GETTABLEKS                       R13 R1 K80 ["Gap"]
      216 GETTABLEKS                       R13 R13 K33 ["Small"]
      218 CALL                             R11 2 1
      219 SETTABLEKS                       R11 R10 K32 ["Padding"]
      221 SETTABLEKS                       R10 R9 K70 ["layout"]
      223 MOVE                             R10 R6
      224 CALL                             R7 3 -1
      225 RETURN                           R7 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["metadata"]
        2 JUMPIFEQKNIL                     R2 ; [+11]
        4 DUPTABLE                         R1 K2 [{"title", "metadata"}]
        5 GETTABLEKS                       R2 R0 K1 ["title"]
        7 SETTABLEKS                       R2 R1 K1 ["title"]
        9 GETTABLEKS                       R2 R0 K0 ["metadata"]
       11 SETTABLEKS                       R2 R1 K0 ["metadata"]
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R1 R0 K1 ["title"]
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["List"]
       20 GETTABLEKS                       R3 R3 K4 ["Item"]
       22 DUPTABLE                         R4 K12 [{["testId"] = "--appkit-list-row", ["title"], ["description"], ["leading"], ["trailing"], ["onActivated"], ["LayoutOrder"]}]
       23 SETTABLEKS                       R1 R4 K1 ["title"]
       25 GETTABLEKS                       R5 R0 K7 ["description"]
       27 SETTABLEKS                       R5 R4 K7 ["description"]
       29 GETTABLEKS                       R5 R0 K13 ["leadingIcon"]
       31 SETTABLEKS                       R5 R4 K8 ["leading"]
       33 GETTABLEKS                       R5 R0 K9 ["trailing"]
       35 SETTABLEKS                       R5 R4 K9 ["trailing"]
       37 GETTABLEKS                       R5 R0 K10 ["onActivated"]
       39 SETTABLEKS                       R5 R4 K10 ["onActivated"]
       41 GETTABLEKS                       R5 R0 K11 ["LayoutOrder"]
       43 SETTABLEKS                       R5 R4 K11 ["LayoutOrder"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useResponsiveTileWidth"]
        7 GETTABLEKS                       R3 R0 K2 ["visible"]
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K3 ["tileWidth"]
       14 GETTABLEKS                       R6 R0 K5 ["aspectRatio"]
       16 ORK                              R5 R6 K4 [1]
       17 DIV                              R4 R3 R5
       18 GETTABLEKS                       R5 R0 K6 ["height"]
       20 JUMPIF                           R5 ; [+5]
       21 ADDK                             R6 R4 K7 [52]
       22 FASTCALL1                        MATH_ROUND R6 ; [+2]
       23 GETIMPORT                        R5 K10 [math.round]
       25 CALL                             R5 1 1
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R0 K11 ["tiles"]
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 LOADK                            R13 K12 ["tile_%*"]
       34 MOVE                             R15 R10
       35 NAMECALL                         R13 R13 K13 ["format"]
       37 CALL                             R13 2 1
       38 MOVE                             R12 R13
       39 GETTABLEKS                       R13 R0 K14 ["renderTile"]
       41 MOVE                             R14 R11
       42 MOVE                             R15 R10
       43 MOVE                             R16 R3
       44 CALL                             R13 3 1
       45 SETTABLE                         R13 R6 R12
       46 FORGLOOP                         R7 2 ; [-14]
       48 GETUPVAL                         R7 2
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K15 ["ScrollView"]
       52 DUPTABLE                         R9 K22 [{["testId"] = "--appkit-content-carousel", ["LayoutOrder"], ["Size"], ["scroll"], ["layout"]}]
       53 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
       55 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       57 GETIMPORT                        R10 K25 [UDim2.new]
       59 LOADN                            R11 1
       60 LOADN                            R12 0
       61 LOADN                            R13 0
       62 MOVE                             R14 R5
       63 CALL                             R10 4 1
       64 SETTABLEKS                       R10 R9 K19 ["Size"]
       66 DUPTABLE                         R10 K29 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
       67 GETIMPORT                        R11 K32 [Enum.ScrollingDirection.X]
       69 SETTABLEKS                       R11 R10 K26 ["ScrollingDirection"]
       71 GETIMPORT                        R11 K34 [Enum.AutomaticSize.X]
       73 SETTABLEKS                       R11 R10 K27 ["AutomaticCanvasSize"]
       75 GETIMPORT                        R11 K36 [UDim2.fromOffset]
       77 LOADN                            R12 0
       78 LOADN                            R13 0
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K28 ["CanvasSize"]
       82 SETTABLEKS                       R10 R9 K20 ["scroll"]
       84 DUPTABLE                         R10 K40 [{"FillDirection", "SortOrder", "Padding"}]
       85 GETIMPORT                        R11 K42 [Enum.FillDirection.Horizontal]
       87 SETTABLEKS                       R11 R10 K37 ["FillDirection"]
       89 GETIMPORT                        R11 K43 [Enum.SortOrder.LayoutOrder]
       91 SETTABLEKS                       R11 R10 K38 ["SortOrder"]
       93 GETIMPORT                        R11 K45 [UDim.new]
       95 LOADN                            R12 0
       96 GETTABLEKS                       R13 R0 K46 ["gutter"]
       98 JUMPIF                           R13 ; [+2]
       99 GETTABLEKS                       R13 R1 K46 ["gutter"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K39 ["Padding"]
      104 SETTABLEKS                       R10 R9 K21 ["layout"]
      106 MOVE                             R10 R6
      107 CALL                             R7 3 -1
      108 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useResponsiveTileWidth"]
        7 GETTABLEKS                       R3 R0 K2 ["visible"]
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R0 K3 ["tiles"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 LOADK                            R10 K4 ["tile_%*"]
       20 MOVE                             R12 R7
       21 NAMECALL                         R10 R10 K5 ["format"]
       23 CALL                             R10 2 1
       24 MOVE                             R9 R10
       25 GETTABLEKS                       R10 R0 K6 ["renderTile"]
       27 MOVE                             R11 R8
       28 MOVE                             R12 R7
       29 GETTABLEKS                       R13 R2 K7 ["tileWidth"]
       31 CALL                             R10 3 1
       32 SETTABLE                         R10 R3 R9
       33 FORGLOOP                         R4 2 ; [-15]
       35 GETUPVAL                         R4 2
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R5 R5 K8 ["View"]
       39 DUPTABLE                         R6 K15 [{["testId"] = "--appkit-content-grid", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
       40 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       44 GETIMPORT                        R7 K18 [UDim2.new]
       46 LOADN                            R8 1
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 CALL                             R7 4 1
       51 SETTABLEKS                       R7 R6 K12 ["Size"]
       53 GETIMPORT                        R7 K21 [Enum.AutomaticSize.Y]
       55 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       57 DUPTABLE                         R7 K27 [{["FillDirection"], ["SortOrder"], ["Wraps"] = True, ["Padding"]}]
       58 GETIMPORT                        R8 K29 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R8 R7 K22 ["FillDirection"]
       62 GETIMPORT                        R8 K30 [Enum.SortOrder.LayoutOrder]
       64 SETTABLEKS                       R8 R7 K23 ["SortOrder"]
       66 GETIMPORT                        R8 K32 [UDim.new]
       68 LOADN                            R9 0
       69 GETTABLEKS                       R10 R0 K33 ["gutter"]
       71 JUMPIF                           R10 ; [+2]
       72 GETTABLEKS                       R10 R1 K33 ["gutter"]
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K26 ["Padding"]
       77 SETTABLEKS                       R7 R6 K14 ["layout"]
       79 MOVE                             R7 R3
       80 CALL                             R4 3 -1
       81 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Parts must run inside the DesignAssist plugin tree"]
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
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K14 ["createElement"]
       39 DUPTABLE                         R5 K22 [{["l"] = 4, ["m"] = 4, ["s"] = 2, ["xs"] = 1}]
       40 DUPCLOSURE                       R6 K23 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R7 K24 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R8 K25 [PROTO_2]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R9 K26 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 DUPTABLE                         R10 K31 [{"MediaTile", "ListRow", "ContentCarousel", "ContentGrid"}]
       57 SETTABLEKS                       R6 R10 K27 ["MediaTile"]
       59 SETTABLEKS                       R7 R10 K28 ["ListRow"]
       61 SETTABLEKS                       R8 R10 K29 ["ContentCarousel"]
       63 SETTABLEKS                       R9 R10 K30 ["ContentGrid"]
       65 RETURN                           R10 1
