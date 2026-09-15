PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "size-full row align-y-center"}]
        5 DUPTABLE                         R4 K6 [{"Cells", "Kebab"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K8 [{["tag"] = "size-0-full row align-y-center grow"}]
       11 GETTABLEKS                       R8 R0 K9 ["cells"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K4 ["Cells"]
       16 GETTABLEKS                       R6 R0 K10 ["hasKebab"]
       18 JUMPIFNOT                        R6 ; [+18]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 DUPTABLE                         R7 K12 [{["tag"] = "size-1200-full row align-x-center align-y-center"}]
       24 GETTABLEKS                       R9 R0 K13 ["kebab"]
       26 JUMPIFEQKNIL                     R9 ; [+7]
       28 DUPTABLE                         R8 K15 [{"Button"}]
       29 GETTABLEKS                       R9 R0 K13 ["kebab"]
       31 SETTABLEKS                       R9 R8 K14 ["Button"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R8
       35 CALL                             R5 3 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K5 ["Kebab"]
       40 CALL                             R1 3 -1
       41 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADK                            R3 K1 ["PluginGui"]
        7 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R3 R1 K3 ["GetRelativeMousePosition"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R3 R0 K1 ["AbsolutePosition"]
        9 GETIMPORT                        R4 K4 [Vector2.new]
       11 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       13 GETTABLEKS                       R6 R6 K7 ["X"]
       15 DIVK                             R5 R6 K5 [2]
       16 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R6 K8 ["Y"]
       20 CALL                             R4 2 1
       21 ADD                              R2 R3 R4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 LOADK                            R5 K1 ["PointingHand"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R0 K2 ["onOpenMenu"]
       17 NEWTABLE                         R6 0 0
       19 GETTABLEKS                       R7 R0 K3 ["columns"]
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 FORGPREP                         R7
       24 NEWTABLE                         R12 2 0
       26 GETTABLEKS                       R13 R11 K4 ["HasIcon"]
       28 JUMPIFNOT                        R13 ; [+53]
       29 GETTABLEKS                       R14 R0 K5 ["getRowIcon"]
       31 JUMPIFNOT                        R14 ; [+6]
       32 GETTABLEKS                       R13 R0 K5 ["getRowIcon"]
       34 GETTABLEKS                       R14 R0 K6 ["row"]
       36 CALL                             R13 1 1
       37 JUMP                             ; [+1]
       38 LOADB                            R13 0
       39 GETTABLEKS                       R14 R1 K7 ["Size"]
       41 GETTABLEKS                       R14 R14 K8 ["Size_800"]
       43 JUMPIFNOTEQKB                    R13 FALSE ; [+8]
       45 GETUPVAL                         R15 1
       46 GETTABLEKS                       R15 R15 K9 ["createElement"]
       48 GETUPVAL                         R16 3
       49 DUPTABLE                         R17 K16 [{["tag"] = "radius-small size-800 StartPage-Placeholder", ["testId"] = "--start-page-ListViewThumbnail", ["LayoutOrder"] = 1}]
       50 CALL                             R15 2 1
       51 JUMP                             ; [+28]
       52 JUMPIFNOT                        R13 ; [+9]
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R15 R15 K9 ["createElement"]
       56 GETUPVAL                         R16 3
       57 DUPTABLE                         R17 K19 [{["Image"], ["tag"] = "radius-small size-800", ["testId"] = "--start-page-ListViewThumbnail", ["LayoutOrder"] = 1}]
       58 SETTABLEKS                       R13 R17 K17 ["Image"]
       60 CALL                             R15 2 1
       61 JUMP                             ; [+18]
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R15 R15 K9 ["createElement"]
       65 GETUPVAL                         R16 4
       66 DUPTABLE                         R17 K21 [{["radius"], ["Size"], ["testId"] = "--start-page-ListViewThumbnail", ["LayoutOrder"] = 1}]
       67 GETUPVAL                         R18 5
       68 GETTABLEKS                       R18 R18 K22 ["Small"]
       70 SETTABLEKS                       R18 R17 K20 ["radius"]
       72 GETIMPORT                        R18 K25 [UDim2.fromOffset]
       74 MOVE                             R19 R14
       75 MOVE                             R20 R14
       76 CALL                             R18 2 1
       77 SETTABLEKS                       R18 R17 K7 ["Size"]
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R12 K26 ["Icon"]
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R13 R13 K9 ["createElement"]
       85 GETUPVAL                         R14 6
       86 DUPTABLE                         R15 K31 [{["text"], ["tag"] = "text-body-small content-default text-align-x-left text-align-y-center text-truncate-end size-0-full grow", ["layoutOrder"] = 2}]
       87 GETTABLEKS                       R16 R0 K32 ["renderCellText"]
       89 GETTABLEKS                       R17 R11 K33 ["Key"]
       91 GETTABLEKS                       R18 R0 K6 ["row"]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K27 ["text"]
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K34 ["Label"]
       99 LOADK                            R13 K35 ["Cell_%*"]
      100 GETTABLEKS                       R15 R11 K33 ["Key"]
      102 NAMECALL                         R13 R13 K36 ["format"]
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R14 R14 K9 ["createElement"]
      108 GETUPVAL                         R15 7
      109 DUPTABLE                         R16 K38 [{["Size"], ["LayoutOrder"], ["tag"] = "row align-y-center gap-small padding-x-small clip"}]
      110 GETIMPORT                        R17 K40 [UDim2.fromScale]
      112 GETTABLEKS                       R18 R11 K41 ["WidthScale"]
      114 LOADN                            R19 1
      115 CALL                             R17 2 1
      116 SETTABLEKS                       R17 R16 K7 ["Size"]
      118 SETTABLEKS                       R10 R16 K14 ["LayoutOrder"]
      120 MOVE                             R17 R12
      121 CALL                             R14 3 1
      122 SETTABLE                         R14 R6 R13
      123 FORGLOOP                         R7 2 ; [-100]
      125 GETUPVAL                         R7 1
      126 GETTABLEKS                       R7 R7 K9 ["createElement"]
      128 GETUPVAL                         R8 7
      129 DUPTABLE                         R9 K47 [{["tag"] = "size-full-1200 clip", ["LayoutOrder"], ["ref"], ["onStateChanged"], ["onActivated"], ["onSecondaryActivated"]}]
      130 GETTABLEKS                       R10 R0 K29 ["layoutOrder"]
      132 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      134 SETTABLEKS                       R2 R9 K43 ["ref"]
      136 SETTABLEKS                       R4 R9 K44 ["onStateChanged"]
      138 GETTABLEKS                       R10 R0 K45 ["onActivated"]
      140 SETTABLEKS                       R10 R9 K45 ["onActivated"]
      142 JUMPIFNOT                        R5 ; [+4]
      143 NEWCLOSURE                       R10 P0
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R5
      146 JUMP                             ; [+1]
      147 LOADNIL                          R10
      148 SETTABLEKS                       R10 R9 K46 ["onSecondaryActivated"]
      150 DUPTABLE                         R10 K50 [{"Content", "Divider"}]
      151 GETUPVAL                         R11 1
      152 GETTABLEKS                       R11 R11 K9 ["createElement"]
      154 GETUPVAL                         R12 8
      155 DUPTABLE                         R13 K54 [{"cells", "hasKebab", "kebab"}]
      156 SETTABLEKS                       R6 R13 K51 ["cells"]
      158 GETTABLEKS                       R14 R0 K52 ["hasKebab"]
      160 SETTABLEKS                       R14 R13 K52 ["hasKebab"]
      162 GETTABLEKS                       R15 R0 K52 ["hasKebab"]
      164 JUMPIFNOT                        R15 ; [+30]
      165 JUMPIFNOT                        R5 ; [+29]
      166 GETUPVAL                         R14 1
      167 GETTABLEKS                       R14 R14 K9 ["createElement"]
      169 GETUPVAL                         R15 9
      170 DUPTABLE                         R16 K59 [{["ref"], ["icon"], ["size"], ["variant"], ["testId"] = "--start-page-ListViewKebab", ["onActivated"]}]
      171 SETTABLEKS                       R3 R16 K43 ["ref"]
      173 GETUPVAL                         R17 10
      174 GETTABLEKS                       R17 R17 K60 ["ThreeDotsVertical"]
      176 SETTABLEKS                       R17 R16 K55 ["icon"]
      178 GETUPVAL                         R17 11
      179 GETTABLEKS                       R17 R17 K22 ["Small"]
      181 SETTABLEKS                       R17 R16 K56 ["size"]
      183 GETUPVAL                         R17 12
      184 GETTABLEKS                       R17 R17 K61 ["Utility"]
      186 SETTABLEKS                       R17 R16 K57 ["variant"]
      188 NEWCLOSURE                       R17 P1
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R5
      191 SETTABLEKS                       R17 R16 K45 ["onActivated"]
      193 CALL                             R14 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R14
      196 SETTABLEKS                       R14 R13 K53 ["kebab"]
      198 CALL                             R11 2 1
      199 SETTABLEKS                       R11 R10 K48 ["Content"]
      201 GETUPVAL                         R11 1
      202 GETTABLEKS                       R11 R11 K9 ["createElement"]
      204 GETUPVAL                         R12 13
      205 DUPTABLE                         R13 K66 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["Visible"]}]
      206 GETIMPORT                        R14 K69 [Vector2.new]
      208 LOADN                            R15 0
      209 LOADN                            R16 1
      210 CALL                             R14 2 1
      211 SETTABLEKS                       R14 R13 K62 ["AnchorPoint"]
      213 GETIMPORT                        R14 K40 [UDim2.fromScale]
      215 LOADN                            R15 0
      216 LOADN                            R16 1
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K63 ["Position"]
      220 GETTABLEKS                       R14 R0 K70 ["isBottomEdgeRow"]
      222 DUPCLOSURE                       R16 K71 [PROTO_3]
      223 NAMECALL                         R14 R14 K72 ["map"]
      225 CALL                             R14 2 1
      226 SETTABLEKS                       R14 R13 K65 ["Visible"]
      228 CALL                             R11 2 1
      229 SETTABLEKS                       R11 R10 K49 ["Divider"]
      231 CALL                             R7 3 -1
      232 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_800"]
        6 GETTABLEKS                       R3 R1 K2 ["Typography"]
        8 GETTABLEKS                       R3 R3 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R3 K4 ["FontSize"]
       12 NEWTABLE                         R4 0 0
       14 GETTABLEKS                       R5 R0 K5 ["columns"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 NEWTABLE                         R10 2 0
       21 GETTABLEKS                       R11 R9 K6 ["HasIcon"]
       23 JUMPIFNOT                        R11 ; [+20]
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R11 R11 K7 ["createElement"]
       27 GETUPVAL                         R12 2
       28 DUPTABLE                         R13 K13 [{["radius"], [2], ["testId"] = "--start-page-ListViewThumbnail", ["LayoutOrder"] = 1}]
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R14 R14 K14 ["Small"]
       32 SETTABLEKS                       R14 R13 K8 ["radius"]
       34 GETIMPORT                        R14 K17 [UDim2.fromOffset]
       36 MOVE                             R15 R2
       37 MOVE                             R16 R2
       38 CALL                             R14 2 1
       39 SETTABLEKS                       R14 R13 K0 ["Size"]
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K18 ["Icon"]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K7 ["createElement"]
       47 GETUPVAL                         R12 2
       48 DUPTABLE                         R13 K20 [{["radius"], [2], ["LayoutOrder"] = 2}]
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R14 R14 K14 ["Small"]
       52 SETTABLEKS                       R14 R13 K8 ["radius"]
       54 GETIMPORT                        R14 K22 [UDim2.new]
       56 LOADN                            R15 1
       57 LOADN                            R16 0
       58 LOADN                            R17 0
       59 MOVE                             R18 R3
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K0 ["Size"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K23 ["Label"]
       66 LOADK                            R11 K24 ["Cell_%*"]
       67 GETTABLEKS                       R13 R9 K25 ["Key"]
       69 NAMECALL                         R11 R11 K26 ["format"]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K7 ["createElement"]
       75 GETUPVAL                         R13 4
       76 DUPTABLE                         R14 K29 [{[1], ["LayoutOrder"], ["tag"] = "row align-y-center gap-small padding-x-small clip"}]
       77 GETIMPORT                        R15 K31 [UDim2.fromScale]
       79 GETTABLEKS                       R16 R9 K32 ["WidthScale"]
       81 LOADN                            R17 1
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K0 ["Size"]
       85 SETTABLEKS                       R8 R14 K11 ["LayoutOrder"]
       87 MOVE                             R15 R10
       88 CALL                             R12 3 1
       89 SETTABLE                         R12 R4 R11
       90 FORGLOOP                         R5 2 ; [-72]
       92 GETUPVAL                         R5 1
       93 GETTABLEKS                       R5 R5 K7 ["createElement"]
       95 GETUPVAL                         R6 4
       96 DUPTABLE                         R7 K34 [{["tag"] = "size-full-1200", ["LayoutOrder"]}]
       97 GETTABLEKS                       R8 R0 K35 ["layoutOrder"]
       99 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      101 DUPTABLE                         R8 K37 [{"Content"}]
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K7 ["createElement"]
      105 GETUPVAL                         R10 5
      106 DUPTABLE                         R11 K40 [{"cells", "hasKebab"}]
      107 SETTABLEKS                       R4 R11 K38 ["cells"]
      109 GETTABLEKS                       R12 R0 K39 ["hasKebab"]
      111 SETTABLEKS                       R12 R11 K39 ["hasKebab"]
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R8 K36 ["Content"]
      116 CALL                             R5 3 -1
      117 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Typography"]
        4 GETTABLEKS                       R2 R2 K1 ["LabelMedium"]
        6 GETTABLEKS                       R2 R2 K2 ["FontSize"]
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R0 K3 ["columns"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 LOADK                            R9 K4 ["Header_%*"]
       16 GETTABLEKS                       R11 R8 K5 ["Key"]
       18 NAMECALL                         R9 R9 K6 ["format"]
       20 CALL                             R9 2 1
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K7 ["createElement"]
       24 GETUPVAL                         R11 2
       25 DUPTABLE                         R12 K12 [{["Size"], ["LayoutOrder"], ["tag"] = "row align-y-center padding-x-small clip"}]
       26 GETIMPORT                        R13 K15 [UDim2.fromScale]
       28 GETTABLEKS                       R14 R8 K16 ["WidthScale"]
       30 LOADN                            R15 1
       31 CALL                             R13 2 1
       32 SETTABLEKS                       R13 R12 K8 ["Size"]
       34 SETTABLEKS                       R7 R12 K9 ["LayoutOrder"]
       36 DUPTABLE                         R13 K18 [{"Label"}]
       37 GETTABLEKS                       R15 R0 K19 ["isLoading"]
       39 JUMPIFNOT                        R15 ; [+21]
       40 GETUPVAL                         R14 1
       41 GETTABLEKS                       R14 R14 K7 ["createElement"]
       43 GETUPVAL                         R15 3
       44 DUPTABLE                         R16 K21 [{"radius", "Size"}]
       45 GETUPVAL                         R17 4
       46 GETTABLEKS                       R17 R17 K22 ["Small"]
       48 SETTABLEKS                       R17 R16 K20 ["radius"]
       50 GETIMPORT                        R17 K24 [UDim2.new]
       52 LOADN                            R18 1
       53 LOADN                            R19 0
       54 LOADN                            R20 0
       55 MOVE                             R21 R2
       56 CALL                             R17 4 1
       57 SETTABLEKS                       R17 R16 K8 ["Size"]
       59 CALL                             R14 2 1
       60 JUMP                             ; [+10]
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R14 R14 K7 ["createElement"]
       64 GETUPVAL                         R15 5
       65 DUPTABLE                         R16 K27 [{["text"], ["tag"] = "text-label-medium content-muted text-align-x-left text-align-y-center text-truncate-end size-0-full grow"}]
       66 GETTABLEKS                       R17 R8 K28 ["Title"]
       68 SETTABLEKS                       R17 R16 K25 ["text"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K17 ["Label"]
       73 CALL                             R10 3 1
       74 SETTABLE                         R10 R3 R9
       75 FORGLOOP                         R4 2 ; [-61]
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K7 ["createElement"]
       80 GETUPVAL                         R5 2
       81 DUPTABLE                         R6 K31 [{["tag"] = "size-full-800", ["LayoutOrder"] = 1}]
       82 DUPTABLE                         R7 K34 [{"Content", "Divider"}]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K7 ["createElement"]
       86 GETUPVAL                         R9 6
       87 DUPTABLE                         R10 K37 [{"cells", "hasKebab"}]
       88 SETTABLEKS                       R3 R10 K35 ["cells"]
       90 GETTABLEKS                       R11 R0 K36 ["hasKebab"]
       92 SETTABLEKS                       R11 R10 K36 ["hasKebab"]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K32 ["Content"]
       97 GETTABLEKS                       R9 R0 K38 ["showDivider"]
       99 JUMPIFNOT                        R9 ; [+21]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K7 ["createElement"]
      103 GETUPVAL                         R9 7
      104 DUPTABLE                         R10 K41 [{"AnchorPoint", "Position"}]
      105 GETIMPORT                        R11 K43 [Vector2.new]
      107 LOADN                            R12 0
      108 LOADN                            R13 1
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K39 ["AnchorPoint"]
      112 GETIMPORT                        R11 K15 [UDim2.fromScale]
      114 LOADN                            R12 0
      115 LOADN                            R13 1
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K40 ["Position"]
      119 CALL                             R8 2 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K33 ["Divider"]
      124 CALL                             R4 3 -1
      125 RETURN                           R4 -1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K3 [{"id", "text", "isChecked"}]
        7 SETTABLEKS                       R5 R8 K0 ["id"]
        9 FASTCALL1                        TOSTRING R5 ; [+3]
       10 MOVE                             R10 R5
       11 GETIMPORT                        R9 K5 [tostring]
       13 CALL                             R9 1 1
       14 SETTABLEKS                       R9 R8 K1 ["text"]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K6 ["pageSize"]
       19 JUMPIFEQ                         R5 R10 ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 SETTABLEKS                       R9 R8 K2 ["isChecked"]
       25 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K9 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-26]
       33 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onPageSizeChange"]
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tonumber]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onPageChange"]
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onPageChange"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["pageIndex"]
        8 SUBK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onPageChange"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["pageIndex"]
        8 ADDK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onPageChange"]
        5 GETUPVAL                         R2 2
        6 SUBK                             R1 R2 K1 [1]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R7 0 1
       15 GETTABLEKS                       R8 R0 K1 ["pageSize"]
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 LOADN                            R7 1
       21 GETTABLEKS                       R10 R0 K2 ["totalCount"]
       23 GETTABLEKS                       R11 R0 K1 ["pageSize"]
       25 DIV                              R9 R10 R11
       26 FASTCALL1                        MATH_CEIL R9 ; [+2]
       27 GETIMPORT                        R8 K5 [math.ceil]
       29 CALL                             R8 1 1
       30 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       32 GETIMPORT                        R6 K7 [math.max]
       34 CALL                             R6 2 1
       35 GETTABLEKS                       R8 R0 K2 ["totalCount"]
       37 JUMPIFNOTEQKN                    R8 K8 [0] ; [+3]
       39 LOADN                            R7 0
       40 JUMP                             ; [+6]
       41 GETTABLEKS                       R9 R0 K10 ["pageIndex"]
       43 GETTABLEKS                       R10 R0 K1 ["pageSize"]
       45 MUL                              R8 R9 R10
       46 ADDK                             R7 R8 K9 [1]
       47 GETTABLEKS                       R11 R0 K10 ["pageIndex"]
       49 ADDK                             R10 R11 K9 [1]
       50 GETTABLEKS                       R11 R0 K1 ["pageSize"]
       52 MUL                              R9 R10 R11
       53 GETTABLEKS                       R10 R0 K2 ["totalCount"]
       55 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       57 GETIMPORT                        R8 K12 [math.min]
       59 CALL                             R8 2 1
       60 GETTABLEKS                       R10 R0 K10 ["pageIndex"]
       62 LOADN                            R11 0
       63 JUMPIFLE                         R10 R11 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 GETTABLEKS                       R11 R0 K10 ["pageIndex"]
       69 SUBK                             R12 R6 K9 [1]
       70 JUMPIFLE                         R12 R11 ; [+2]
       72 LOADB                            R10 0 +1
       73 LOADB                            R10 1
       74 GETUPVAL                         R11 5
       75 GETTABLEKS                       R11 R11 K13 ["createElement"]
       77 GETUPVAL                         R12 6
       78 DUPTABLE                         R13 K17 [{["LayoutOrder"], ["tag"] = "size-full-1000 row align-x-right align-y-center gap-small"}]
       79 GETTABLEKS                       R14 R0 K18 ["layoutOrder"]
       81 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       83 DUPTABLE                         R14 K26 [{"RowsPerPageLabel", "PageSizeMenu", "RangeLabel", "FirstButton", "PrevButton", "NextButton", "LastButton"}]
       84 GETUPVAL                         R15 5
       85 GETTABLEKS                       R15 R15 K13 ["createElement"]
       87 GETUPVAL                         R16 7
       88 DUPTABLE                         R17 K31 [{["Text"], ["tag"] = "text-body-small content-muted text-align-x-right auto-x self-stretch", ["LayoutOrder"] = 1, ["testId"] = "--start-page-ListViewRowsPerPage"}]
       89 LOADK                            R20 K32 ["Plugin"]
       90 LOADK                            R21 K33 ["ListView.Pagination.RowsPerPage"]
       91 NAMECALL                         R18 R2 K34 ["getText"]
       93 CALL                             R18 3 1
       94 SETTABLEKS                       R18 R17 K27 ["Text"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K19 ["RowsPerPageLabel"]
       99 GETUPVAL                         R15 5
      100 GETTABLEKS                       R15 R15 K13 ["createElement"]
      102 GETUPVAL                         R16 8
      103 DUPTABLE                         R17 K42 [{["LayoutOrder"] = 2, ["isOpen"], ["items"], ["size"], ["width"], ["onPressedOutside"], ["onActivated"]}]
      104 SETTABLEKS                       R3 R17 K36 ["isOpen"]
      106 SETTABLEKS                       R5 R17 K37 ["items"]
      108 GETUPVAL                         R18 9
      109 GETTABLEKS                       R18 R18 K43 ["XSmall"]
      111 SETTABLEKS                       R18 R17 K38 ["size"]
      113 GETIMPORT                        R18 K46 [UDim.new]
      115 LOADN                            R19 0
      116 GETTABLEKS                       R20 R1 K47 ["Size"]
      118 GETTABLEKS                       R20 R20 K48 ["Size_2000"]
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K39 ["width"]
      123 NEWCLOSURE                       R18 P1
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R18 R17 K40 ["onPressedOutside"]
      127 NEWCLOSURE                       R18 P2
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R18 R17 K41 ["onActivated"]
      132 DUPTABLE                         R18 K50 [{"Chip"}]
      133 GETUPVAL                         R19 5
      134 GETTABLEKS                       R19 R19 K13 ["createElement"]
      136 GETUPVAL                         R20 10
      137 DUPTABLE                         R21 K54 [{["text"], ["trailing"], ["size"], ["testId"] = "--start-page-ListViewPageSize", ["onActivated"]}]
      138 GETTABLEKS                       R23 R0 K1 ["pageSize"]
      140 FASTCALL1                        TOSTRING R23 ; [+2]
      141 GETIMPORT                        R22 K56 [tostring]
      143 CALL                             R22 1 1
      144 SETTABLEKS                       R22 R21 K51 ["text"]
      146 GETUPVAL                         R22 11
      147 GETTABLEKS                       R22 R22 K57 ["ChevronSmallDown"]
      149 SETTABLEKS                       R22 R21 K52 ["trailing"]
      151 GETUPVAL                         R22 12
      152 GETTABLEKS                       R22 R22 K58 ["Small"]
      154 SETTABLEKS                       R22 R21 K38 ["size"]
      156 NEWCLOSURE                       R22 P3
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R22 R21 K41 ["onActivated"]
      161 CALL                             R19 2 1
      162 SETTABLEKS                       R19 R18 K49 ["Chip"]
      164 CALL                             R15 3 1
      165 SETTABLEKS                       R15 R14 K20 ["PageSizeMenu"]
      167 GETUPVAL                         R15 5
      168 GETTABLEKS                       R15 R15 K13 ["createElement"]
      170 GETUPVAL                         R16 7
      171 DUPTABLE                         R17 K62 [{["Text"], ["tag"] = "text-body-small content-muted text-align-x-center auto-x self-stretch", ["LayoutOrder"] = 3, ["testId"] = "--start-page-ListViewPageRange"}]
      172 LOADK                            R20 K32 ["Plugin"]
      173 LOADK                            R21 K63 ["ListView.Pagination.RangeOfTotal"]
      174 NEWTABLE                         R22 4 0
      176 FASTCALL1                        TOSTRING R7 ; [+3]
      177 MOVE                             R24 R7
      178 GETIMPORT                        R23 K56 [tostring]
      180 CALL                             R23 1 1
      181 SETTABLEKS                       R23 R22 K64 ["start"]
      183 FASTCALL1                        TOSTRING R8 ; [+3]
      184 MOVE                             R24 R8
      185 GETIMPORT                        R23 K56 [tostring]
      187 CALL                             R23 1 1
      188 SETTABLEKS                       R23 R22 K65 ["end"]
      190 GETTABLEKS                       R24 R0 K2 ["totalCount"]
      192 FASTCALL1                        TOSTRING R24 ; [+2]
      193 GETIMPORT                        R23 K56 [tostring]
      195 CALL                             R23 1 1
      196 SETTABLEKS                       R23 R22 K66 ["total"]
      198 NAMECALL                         R18 R2 K34 ["getText"]
      200 CALL                             R18 4 1
      201 SETTABLEKS                       R18 R17 K27 ["Text"]
      203 CALL                             R15 2 1
      204 SETTABLEKS                       R15 R14 K21 ["RangeLabel"]
      206 GETUPVAL                         R15 5
      207 GETTABLEKS                       R15 R15 K13 ["createElement"]
      209 GETUPVAL                         R16 13
      210 DUPTABLE                         R17 K72 [{["LayoutOrder"] = 4, ["icon"], ["size"], ["variant"], ["isDisabled"], ["testId"] = "--start-page-ListViewFirstPage", ["onActivated"]}]
      211 GETUPVAL                         R18 11
      212 GETTABLEKS                       R18 R18 K73 ["ChevronSmallLeftToLine"]
      214 SETTABLEKS                       R18 R17 K68 ["icon"]
      216 GETUPVAL                         R18 9
      217 GETTABLEKS                       R18 R18 K58 ["Small"]
      219 SETTABLEKS                       R18 R17 K38 ["size"]
      221 GETUPVAL                         R18 14
      222 GETTABLEKS                       R18 R18 K74 ["Utility"]
      224 SETTABLEKS                       R18 R17 K69 ["variant"]
      226 SETTABLEKS                       R9 R17 K70 ["isDisabled"]
      228 NEWCLOSURE                       R18 P4
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R0
      231 SETTABLEKS                       R18 R17 K41 ["onActivated"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K22 ["FirstButton"]
      236 GETUPVAL                         R15 5
      237 GETTABLEKS                       R15 R15 K13 ["createElement"]
      239 GETUPVAL                         R16 13
      240 DUPTABLE                         R17 K77 [{["LayoutOrder"] = 5, ["icon"], ["size"], ["variant"], ["isDisabled"], ["testId"] = "--start-page-ListViewPrevPage", ["onActivated"]}]
      241 GETUPVAL                         R18 11
      242 GETTABLEKS                       R18 R18 K78 ["ChevronSmallLeft"]
      244 SETTABLEKS                       R18 R17 K68 ["icon"]
      246 GETUPVAL                         R18 9
      247 GETTABLEKS                       R18 R18 K58 ["Small"]
      249 SETTABLEKS                       R18 R17 K38 ["size"]
      251 GETUPVAL                         R18 14
      252 GETTABLEKS                       R18 R18 K74 ["Utility"]
      254 SETTABLEKS                       R18 R17 K69 ["variant"]
      256 SETTABLEKS                       R9 R17 K70 ["isDisabled"]
      258 NEWCLOSURE                       R18 P5
      259 CAPTURE                          VAL R9
      260 CAPTURE                          VAL R0
      261 SETTABLEKS                       R18 R17 K41 ["onActivated"]
      263 CALL                             R15 2 1
      264 SETTABLEKS                       R15 R14 K23 ["PrevButton"]
      266 GETUPVAL                         R15 5
      267 GETTABLEKS                       R15 R15 K13 ["createElement"]
      269 GETUPVAL                         R16 13
      270 DUPTABLE                         R17 K81 [{["LayoutOrder"] = 6, ["icon"], ["size"], ["variant"], ["isDisabled"], ["testId"] = "--start-page-ListViewNextPage", ["onActivated"]}]
      271 GETUPVAL                         R18 11
      272 GETTABLEKS                       R18 R18 K82 ["ChevronSmallRight"]
      274 SETTABLEKS                       R18 R17 K68 ["icon"]
      276 GETUPVAL                         R18 9
      277 GETTABLEKS                       R18 R18 K58 ["Small"]
      279 SETTABLEKS                       R18 R17 K38 ["size"]
      281 GETUPVAL                         R18 14
      282 GETTABLEKS                       R18 R18 K74 ["Utility"]
      284 SETTABLEKS                       R18 R17 K69 ["variant"]
      286 SETTABLEKS                       R10 R17 K70 ["isDisabled"]
      288 NEWCLOSURE                       R18 P6
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R0
      291 SETTABLEKS                       R18 R17 K41 ["onActivated"]
      293 CALL                             R15 2 1
      294 SETTABLEKS                       R15 R14 K24 ["NextButton"]
      296 GETUPVAL                         R15 5
      297 GETTABLEKS                       R15 R15 K13 ["createElement"]
      299 GETUPVAL                         R16 13
      300 DUPTABLE                         R17 K85 [{["LayoutOrder"] = 7, ["icon"], ["size"], ["variant"], ["isDisabled"], ["testId"] = "--start-page-ListViewLastPage", ["onActivated"]}]
      301 GETUPVAL                         R18 11
      302 GETTABLEKS                       R18 R18 K86 ["ChevronSmallRightToLine"]
      304 SETTABLEKS                       R18 R17 K68 ["icon"]
      306 GETUPVAL                         R18 9
      307 GETTABLEKS                       R18 R18 K58 ["Small"]
      309 SETTABLEKS                       R18 R17 K38 ["size"]
      311 GETUPVAL                         R18 14
      312 GETTABLEKS                       R18 R18 K74 ["Utility"]
      314 SETTABLEKS                       R18 R17 K69 ["variant"]
      316 SETTABLEKS                       R10 R17 K70 ["isDisabled"]
      318 NEWCLOSURE                       R18 P7
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R0
      321 CAPTURE                          VAL R6
      322 SETTABLEKS                       R18 R17 K41 ["onActivated"]
      324 CALL                             R15 2 1
      325 SETTABLEKS                       R15 R14 K25 ["LastButton"]
      327 CALL                             R11 3 -1
      328 RETURN                           R11 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 ADD                              R1 R0 R2
        2 LOADB                            R2 0
        3 GETUPVAL                         R3 1
        4 JUMPIFNOTLT                      R3 R1 ; [+8]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 ADD                              R3 R4 R5
        9 JUMPIFLE                         R1 R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRowActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_1200"]
        6 GETTABLEKS                       R3 R1 K0 ["Size"]
        8 GETTABLEKS                       R3 R3 K2 ["Size_800"]
       10 GETTABLEKS                       R4 R1 K0 ["Size"]
       12 GETTABLEKS                       R4 R4 K3 ["Size_1000"]
       14 GETTABLEKS                       R5 R1 K0 ["Size"]
       16 GETTABLEKS                       R5 R5 K4 ["Size_200"]
       18 GETUPVAL                         R6 1
       19 LOADN                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K5 ["useBinding"]
       24 LOADN                            R9 0
       25 CALL                             R8 1 2
       26 GETTABLEKS                       R11 R0 K6 ["Pagination"]
       28 JUMPIFNOTEQKNIL                  R11 ; [+2]
       30 LOADB                            R10 0 +1
       31 LOADB                            R10 1
       32 GETTABLEKS                       R12 R0 K8 ["ShimmerRowCount"]
       34 ORK                              R11 R12 K7 [10]
       35 GETTABLEKS                       R13 R0 K9 ["MaxVisibleRows"]
       37 JUMPIFNOTEQKNIL                  R13 ; [+2]
       39 LOADB                            R12 0 +1
       40 LOADB                            R12 1
       41 GETTABLEKS                       R14 R0 K10 ["IsLoading"]
       43 JUMPIFNOT                        R14 ; [+2]
       44 MOVE                             R13 R11
       45 JUMP                             ; [+3]
       46 GETTABLEKS                       R14 R0 K11 ["Rows"]
       48 LENGTH                           R13 R14
       49 MUL                              R14 R13 R2
       50 LOADNIL                          R15
       51 GETTABLEKS                       R16 R0 K9 ["MaxVisibleRows"]
       53 JUMPIFNOT                        R16 ; [+10]
       54 GETTABLEKS                       R18 R0 K9 ["MaxVisibleRows"]
       56 FASTCALL2                        MATH_MIN R13 R18 ; [+4]
       58 MOVE                             R17 R13
       59 GETIMPORT                        R16 K14 [math.min]
       61 CALL                             R16 2 1
       62 MUL                              R15 R16 R2
       63 JUMP                             ; [+19]
       64 JUMPIFNOT                        R10 ; [+2]
       65 ADD                              R16 R4 R5
       66 JUMP                             ; [+1]
       67 LOADN                            R16 0
       68 SUB                              R18 R6 R3
       69 SUB                              R17 R18 R16
       70 LOADN                            R18 0
       71 JUMPIFNOTLT                      R18 R6 ; [+10]
       73 FASTCALL2                        MATH_MIN R14 R17 ; [+5]
       75 MOVE                             R19 R14
       76 MOVE                             R20 R17
       77 GETIMPORT                        R18 K14 [math.min]
       79 CALL                             R18 2 1
       80 MOVE                             R15 R18
       81 JUMP                             ; [+1]
       82 MOVE                             R15 R14
       83 FASTCALL2K                       MATH_MAX R15 K15 ; [+5]
       85 MOVE                             R17 R15
       86 LOADK                            R18 K15 [0]
       87 GETIMPORT                        R16 K17 [math.max]
       89 CALL                             R16 2 1
       90 MOVE                             R15 R16
       91 NEWTABLE                         R16 0 0
       93 GETTABLEKS                       R17 R0 K10 ["IsLoading"]
       95 JUMPIFNOT                        R17 ; [+28]
       96 LOADN                            R19 1
       97 MOVE                             R17 R11
       98 LOADN                            R18 1
       99 FORNPREP                         R17
      100 LOADK                            R20 K18 ["Shimmer_%*"]
      101 MOVE                             R22 R19
      102 NAMECALL                         R20 R20 K19 ["format"]
      104 CALL                             R20 2 1
      105 GETUPVAL                         R21 2
      106 GETTABLEKS                       R21 R21 K20 ["createElement"]
      108 GETUPVAL                         R22 3
      109 DUPTABLE                         R23 K24 [{"columns", "hasKebab", "layoutOrder"}]
      110 GETTABLEKS                       R24 R0 K25 ["Columns"]
      112 SETTABLEKS                       R24 R23 K21 ["columns"]
      114 GETTABLEKS                       R24 R0 K26 ["HasKebab"]
      116 SETTABLEKS                       R24 R23 K22 ["hasKebab"]
      118 SETTABLEKS                       R19 R23 K23 ["layoutOrder"]
      120 CALL                             R21 2 1
      121 SETTABLE                         R21 R16 R20
      122 FORNLOOP                         R17
      123 JUMP                             ; [+65]
      124 GETTABLEKS                       R17 R0 K27 ["OnRowOpenMenu"]
      126 GETTABLEKS                       R18 R0 K11 ["Rows"]
      128 LOADNIL                          R19
      129 LOADNIL                          R20
      130 FORGPREP                         R18
      131 GETTABLEKS                       R23 R0 K28 ["GetRowKey"]
      133 MOVE                             R24 R22
      134 MOVE                             R25 R21
      135 CALL                             R23 2 1
      136 SUBK                             R25 R21 K29 [1]
      137 MUL                              R24 R25 R2
      138 NEWCLOSURE                       R27 P0
      139 CAPTURE                          REF R15
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R2
      142 NAMECALL                         R25 R8 K30 ["map"]
      144 CALL                             R25 2 1
      145 GETUPVAL                         R26 2
      146 GETTABLEKS                       R26 R26 K20 ["createElement"]
      148 GETUPVAL                         R27 4
      149 DUPTABLE                         R28 K37 [{"row", "columns", "layoutOrder", "isBottomEdgeRow", "hasKebab", "renderCellText", "getRowIcon", "onActivated", "onOpenMenu"}]
      150 SETTABLEKS                       R22 R28 K31 ["row"]
      152 GETTABLEKS                       R29 R0 K25 ["Columns"]
      154 SETTABLEKS                       R29 R28 K21 ["columns"]
      156 SETTABLEKS                       R21 R28 K23 ["layoutOrder"]
      158 SETTABLEKS                       R25 R28 K32 ["isBottomEdgeRow"]
      160 GETTABLEKS                       R29 R0 K26 ["HasKebab"]
      162 SETTABLEKS                       R29 R28 K22 ["hasKebab"]
      164 GETTABLEKS                       R29 R0 K38 ["RenderCellText"]
      166 SETTABLEKS                       R29 R28 K33 ["renderCellText"]
      168 GETTABLEKS                       R29 R0 K39 ["GetRowIcon"]
      170 SETTABLEKS                       R29 R28 K34 ["getRowIcon"]
      172 NEWCLOSURE                       R29 P1
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R22
      175 SETTABLEKS                       R29 R28 K35 ["onActivated"]
      177 JUMPIFNOT                        R17 ; [+4]
      178 NEWCLOSURE                       R29 P2
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R22
      181 JUMP                             ; [+1]
      182 LOADNIL                          R29
      183 SETTABLEKS                       R29 R28 K36 ["onOpenMenu"]
      185 CALL                             R26 2 1
      186 SETTABLE                         R26 R16 R23
      187 FORGLOOP                         R18 2 ; [-57]
      189 GETUPVAL                         R17 2
      190 GETTABLEKS                       R17 R17 K20 ["createElement"]
      192 GETUPVAL                         R18 5
      193 DUPTABLE                         R19 K44 [{"tag", "LayoutOrder", "testId", "onAbsoluteSizeChanged"}]
      194 JUMPIFNOT                        R12 ; [+2]
      195 LOADK                            R20 K45 ["size-full-0 col gap-small auto-y"]
      196 JUMP                             ; [+1]
      197 LOADK                            R20 K46 ["size-full col gap-small"]
      198 SETTABLEKS                       R20 R19 K40 ["tag"]
      200 GETTABLEKS                       R20 R0 K41 ["LayoutOrder"]
      202 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      204 GETTABLEKS                       R20 R0 K42 ["testId"]
      206 SETTABLEKS                       R20 R19 K42 ["testId"]
      208 JUMPIFNOT                        R12 ; [+2]
      209 LOADNIL                          R20
      210 JUMP                             ; [+2]
      211 NEWCLOSURE                       R20 P3
      212 CAPTURE                          VAL R7
      213 SETTABLEKS                       R20 R19 K43 ["onAbsoluteSizeChanged"]
      215 DUPTABLE                         R20 K49 [{"Table", "Pagination", "Overlay"}]
      216 GETUPVAL                         R21 2
      217 GETTABLEKS                       R21 R21 K20 ["createElement"]
      219 GETUPVAL                         R22 5
      220 DUPTABLE                         R23 K51 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 col auto-y clip radius-medium stroke-default"}]
      221 DUPTABLE                         R24 K54 [{"Header", "Body"}]
      222 GETUPVAL                         R25 2
      223 GETTABLEKS                       R25 R25 K20 ["createElement"]
      225 GETUPVAL                         R26 6
      226 DUPTABLE                         R27 K57 [{"columns", "hasKebab", "isLoading", "showDivider"}]
      227 GETTABLEKS                       R28 R0 K25 ["Columns"]
      229 SETTABLEKS                       R28 R27 K21 ["columns"]
      231 GETTABLEKS                       R28 R0 K26 ["HasKebab"]
      233 SETTABLEKS                       R28 R27 K22 ["hasKebab"]
      235 GETTABLEKS                       R28 R0 K10 ["IsLoading"]
      237 SETTABLEKS                       R28 R27 K55 ["isLoading"]
      239 LOADN                            R29 0
      240 JUMPIFLT                         R29 R13 ; [+2]
      242 LOADB                            R28 0 +1
      243 LOADB                            R28 1
      244 SETTABLEKS                       R28 R27 K56 ["showDivider"]
      246 CALL                             R25 2 1
      247 SETTABLEKS                       R25 R24 K52 ["Header"]
      249 GETUPVAL                         R25 2
      250 GETTABLEKS                       R25 R25 K20 ["createElement"]
      252 GETUPVAL                         R26 7
      253 DUPTABLE                         R27 K62 [{["LayoutOrder"] = 2, [2], ["scroll"], ["layout"], ["onCanvasPositionChanged"]}]
      254 GETIMPORT                        R28 K65 [UDim2.new]
      256 LOADN                            R29 1
      257 LOADN                            R30 0
      258 LOADN                            R31 0
      259 MOVE                             R32 R15
      260 CALL                             R28 4 1
      261 SETTABLEKS                       R28 R27 K0 ["Size"]
      263 DUPTABLE                         R28 K70 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      264 GETIMPORT                        R29 K72 [UDim2.fromScale]
      266 LOADN                            R30 0
      267 LOADN                            R31 0
      268 CALL                             R29 2 1
      269 SETTABLEKS                       R29 R28 K66 ["CanvasSize"]
      271 GETIMPORT                        R29 K76 [Enum.AutomaticSize.Y]
      273 SETTABLEKS                       R29 R28 K67 ["AutomaticCanvasSize"]
      275 GETIMPORT                        R29 K77 [Enum.ScrollingDirection.Y]
      277 SETTABLEKS                       R29 R28 K68 ["ScrollingDirection"]
      279 GETUPVAL                         R29 8
      280 GETTABLEKS                       R29 R29 K78 ["Always"]
      282 SETTABLEKS                       R29 R28 K69 ["scrollBarVisibility"]
      284 SETTABLEKS                       R28 R27 K59 ["scroll"]
      286 DUPTABLE                         R28 K81 [{"FillDirection", "SortOrder"}]
      287 GETIMPORT                        R29 K83 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R29 R28 K79 ["FillDirection"]
      291 GETIMPORT                        R29 K84 [Enum.SortOrder.LayoutOrder]
      293 SETTABLEKS                       R29 R28 K80 ["SortOrder"]
      295 SETTABLEKS                       R28 R27 K60 ["layout"]
      297 NEWCLOSURE                       R28 P4
      298 CAPTURE                          VAL R9
      299 SETTABLEKS                       R28 R27 K61 ["onCanvasPositionChanged"]
      301 MOVE                             R28 R16
      302 CALL                             R25 3 1
      303 SETTABLEKS                       R25 R24 K53 ["Body"]
      305 CALL                             R21 3 1
      306 SETTABLEKS                       R21 R20 K47 ["Table"]
      308 GETTABLEKS                       R22 R0 K6 ["Pagination"]
      310 JUMPIFNOT                        R22 ; [+37]
      311 GETUPVAL                         R21 2
      312 GETTABLEKS                       R21 R21 K20 ["createElement"]
      314 GETUPVAL                         R22 9
      315 DUPTABLE                         R23 K90 [{["layoutOrder"] = 2, ["pageIndex"], ["pageSize"], ["totalCount"], ["onPageChange"], ["onPageSizeChange"]}]
      316 GETTABLEKS                       R24 R0 K6 ["Pagination"]
      318 GETTABLEKS                       R24 R24 K85 ["pageIndex"]
      320 SETTABLEKS                       R24 R23 K85 ["pageIndex"]
      322 GETTABLEKS                       R24 R0 K6 ["Pagination"]
      324 GETTABLEKS                       R24 R24 K86 ["pageSize"]
      326 SETTABLEKS                       R24 R23 K86 ["pageSize"]
      328 GETTABLEKS                       R24 R0 K6 ["Pagination"]
      330 GETTABLEKS                       R24 R24 K87 ["totalCount"]
      332 SETTABLEKS                       R24 R23 K87 ["totalCount"]
      334 GETTABLEKS                       R24 R0 K6 ["Pagination"]
      336 GETTABLEKS                       R24 R24 K88 ["onPageChange"]
      338 SETTABLEKS                       R24 R23 K88 ["onPageChange"]
      340 GETTABLEKS                       R24 R0 K6 ["Pagination"]
      342 GETTABLEKS                       R24 R24 K89 ["onPageSizeChange"]
      344 SETTABLEKS                       R24 R23 K89 ["onPageSizeChange"]
      346 CALL                             R21 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R21
      349 SETTABLEKS                       R21 R20 K6 ["Pagination"]
      351 GETTABLEKS                       R21 R0 K48 ["Overlay"]
      353 SETTABLEKS                       R21 R20 K48 ["Overlay"]
      355 CALL                             R17 3 -1
      356 CLOSEUPVALS                      R15
      357 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R5 K12 ["Localization"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K16 ["Hooks"]
       40 GETTABLEKS                       R7 R7 K17 ["useTokens"]
       42 GETTABLEKS                       R8 R6 K18 ["Text"]
       44 GETTABLEKS                       R9 R6 K19 ["View"]
       46 GETTABLEKS                       R10 R6 K20 ["ScrollView"]
       48 GETTABLEKS                       R11 R6 K21 ["Image"]
       50 GETTABLEKS                       R12 R6 K22 ["Chip"]
       52 GETTABLEKS                       R13 R6 K23 ["Menu"]
       54 GETTABLEKS                       R14 R6 K24 ["IconButton"]
       56 GETTABLEKS                       R15 R6 K25 ["Skeleton"]
       58 GETTABLEKS                       R16 R6 K26 ["Divider"]
       60 GETTABLEKS                       R17 R6 K27 ["Enums"]
       62 GETTABLEKS                       R17 R17 K28 ["InputSize"]
       64 GETTABLEKS                       R18 R6 K27 ["Enums"]
       66 GETTABLEKS                       R18 R18 K29 ["ChipSize"]
       68 GETTABLEKS                       R19 R6 K27 ["Enums"]
       70 GETTABLEKS                       R19 R19 K30 ["ButtonVariant"]
       72 GETTABLEKS                       R20 R6 K27 ["Enums"]
       74 GETTABLEKS                       R20 R20 K31 ["IconName"]
       76 GETTABLEKS                       R21 R6 K27 ["Enums"]
       78 GETTABLEKS                       R21 R21 K32 ["Radius"]
       80 GETTABLEKS                       R22 R6 K27 ["Enums"]
       82 GETTABLEKS                       R22 R22 K33 ["Visibility"]
       84 GETIMPORT                        R23 K5 [require]
       86 GETTABLEKS                       R24 R0 K13 ["Src"]
       88 GETTABLEKS                       R24 R24 K16 ["Hooks"]
       90 GETTABLEKS                       R24 R24 K34 ["useOnStateChangedCursor"]
       92 CALL                             R23 1 1
       93 GETIMPORT                        R24 K5 [require]
       95 GETTABLEKS                       R25 R0 K13 ["Src"]
       97 GETTABLEKS                       R25 R25 K35 ["Components"]
       99 GETTABLEKS                       R25 R25 K36 ["TruncatableText"]
      101 CALL                             R24 1 1
      102 NEWTABLE                         R25 0 3
      104 LOADN                            R26 20
      105 LOADN                            R27 50
      106 LOADN                            R28 100
      107 SETLIST                          R25 R26 3 [1]
      109 DUPCLOSURE                       R26 K37 [PROTO_0]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R9
      112 DUPCLOSURE                       R27 K38 [PROTO_4]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R23
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R24
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R26
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R16
      127 DUPCLOSURE                       R28 K39 [PROTO_5]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R26
      134 DUPCLOSURE                       R29 K40 [PROTO_6]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R26
      142 CAPTURE                          VAL R16
      143 DUPCLOSURE                       R30 K41 [PROTO_15]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R19
      159 DUPCLOSURE                       R31 K42 [PROTO_21]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R28
      164 CAPTURE                          VAL R27
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R29
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R30
      170 RETURN                           R31 1
