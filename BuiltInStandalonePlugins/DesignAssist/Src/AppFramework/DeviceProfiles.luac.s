PROTO_0:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 GETUPVAL                         R6 1
        8 GETTABLE                         R5 R6 R4
        9 JUMPIFNOTLE                      R0 R5 ; [+2]
       11 RETURN                           R4 1
       12 FORNLOOP                         R1
       13 LOADK                            R1 K0 ["XXLarge"]
       14 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1300
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADN                            R1 72
        4 RETURN                           R1 1
        5 LOADN                            R1 860
        6 JUMPIFNOTLE                      R1 R0 ; [+3]
        8 LOADN                            R1 64
        9 RETURN                           R1 1
       10 LOADN                            R1 56
       11 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R1 720
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADN                            R1 72
        4 RETURN                           R1 1
        5 LOADN                            R1 500
        6 JUMPIFNOTLE                      R1 R0 ; [+3]
        8 LOADN                            R1 64
        9 RETURN                           R1 1
       10 LOADN                            R1 56
       11 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R1 1
        1 GETUPVAL                         R5 0
        2 LENGTH                           R4 R5
        3 LOADN                            R2 1
        4 LOADN                            R3 -1
        5 FORNPREP                         R2
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R4
        8 GETTABLEKS                       R5 R5 K0 ["min"]
       10 JUMPIFNOTLE                      R5 R0 ; [+3]
       12 MOVE                             R1 R4
       13 JUMP                             ; [+1]
       14 FORNLOOP                         R2
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R2 R3 R1
       17 GETUPVAL                         R4 0
       18 ADDK                             R5 R1 K1 [1]
       19 GETTABLE                         R3 R4 R5
       20 DUPTABLE                         R4 K5 [{"label", "minWidth", "maxWidth"}]
       21 GETTABLEKS                       R5 R2 K2 ["label"]
       23 SETTABLEKS                       R5 R4 K2 ["label"]
       25 GETTABLEKS                       R5 R2 K0 ["min"]
       27 SETTABLEKS                       R5 R4 K3 ["minWidth"]
       29 JUMPIFNOT                        R3 ; [+3]
       30 GETTABLEKS                       R5 R3 K0 ["min"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K4 ["maxWidth"]
       36 RETURN                           R4 1

PROTO_4:
        0 LOADN                            R4 1
        1 GETUPVAL                         R5 0
        2 LENGTH                           R2 R5
        3 LOADN                            R3 1
        4 FORNPREP                         R2
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R5 R6 R4
        7 GETUPVAL                         R7 1
        8 GETTABLE                         R6 R7 R5
        9 JUMPIFNOTLE                      R0 R6 ; [+3]
       11 MOVE                             R1 R5
       12 JUMP                             ; [+2]
       13 FORNLOOP                         R2
       14 LOADK                            R1 K0 ["XXLarge"]
       15 DUPTABLE                         R2 K7 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
       16 SETTABLEKS                       R1 R2 K1 ["breakpoint"]
       18 GETUPVAL                         R4 2
       19 GETTABLE                         R3 R4 R1
       20 SETTABLEKS                       R3 R2 K2 ["columns"]
       22 GETUPVAL                         R4 3
       23 GETTABLE                         R3 R4 R1
       24 SETTABLEKS                       R3 R2 K3 ["margin"]
       26 GETUPVAL                         R4 4
       27 GETTABLE                         R3 R4 R1
       28 SETTABLEKS                       R3 R2 K4 ["gutter"]
       30 GETUPVAL                         R4 5
       31 GETTABLE                         R3 R4 R1
       32 SETTABLEKS                       R3 R2 K5 ["gap"]
       34 GETUPVAL                         R4 6
       35 GETTABLE                         R3 R4 R1
       36 SETTABLEKS                       R3 R2 K6 ["peek"]
       38 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["width"]
        2 LOADN                            R6 1
        3 GETUPVAL                         R7 0
        4 LENGTH                           R4 R7
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETUPVAL                         R8 0
        8 GETTABLE                         R7 R8 R6
        9 GETUPVAL                         R9 1
       10 GETTABLE                         R8 R9 R7
       11 JUMPIFNOTLE                      R2 R8 ; [+3]
       13 MOVE                             R3 R7
       14 JUMP                             ; [+2]
       15 FORNLOOP                         R4
       16 LOADK                            R3 K1 ["XXLarge"]
       17 DUPTABLE                         R1 K8 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
       18 SETTABLEKS                       R3 R1 K2 ["breakpoint"]
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R4 R5 R3
       22 SETTABLEKS                       R4 R1 K3 ["columns"]
       24 GETUPVAL                         R5 3
       25 GETTABLE                         R4 R5 R3
       26 SETTABLEKS                       R4 R1 K4 ["margin"]
       28 GETUPVAL                         R5 4
       29 GETTABLE                         R4 R5 R3
       30 SETTABLEKS                       R4 R1 K5 ["gutter"]
       32 GETUPVAL                         R5 5
       33 GETTABLE                         R4 R5 R3
       34 SETTABLEKS                       R4 R1 K6 ["gap"]
       36 GETUPVAL                         R5 6
       37 GETTABLE                         R4 R5 R3
       38 SETTABLEKS                       R4 R1 K7 ["peek"]
       40 GETTABLEKS                       R2 R1 K2 ["breakpoint"]
       42 SETTABLEKS                       R2 R0 K9 ["layoutBreakpoint"]
       44 GETTABLEKS                       R2 R1 K3 ["columns"]
       46 SETTABLEKS                       R2 R0 K3 ["columns"]
       48 GETTABLEKS                       R2 R1 K4 ["margin"]
       50 SETTABLEKS                       R2 R0 K4 ["margin"]
       52 GETTABLEKS                       R2 R1 K5 ["gutter"]
       54 SETTABLEKS                       R2 R0 K5 ["gutter"]
       56 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Resizable"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R1 1
        5 GETTABLEN                        R0 R1 1
        6 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["id"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+8]
        8 GETUPVAL                         R7 0
        9 GETUPVAL                         R11 0
       10 LENGTH                           R10 R11
       11 MOD                              R9 R4 R10
       12 ADDK                             R8 R9 K1 [1]
       13 GETTABLE                         R6 R7 R8
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K2 ["Resizable"]
       20 JUMPIF                           R1 ; [+2]
       21 GETUPVAL                         R2 0
       22 GETTABLEN                        R1 R2 1
       23 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Resizable"]
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 1
        6 LENGTH                           R4 R5
        7 GETTABLE                         R2 R3 R4
        8 LOADN                            R7 1
        9 GETUPVAL                         R8 2
       10 LENGTH                           R5 R8
       11 LOADN                            R6 1
       12 FORNPREP                         R5
       13 GETUPVAL                         R9 2
       14 GETTABLE                         R8 R9 R7
       15 GETUPVAL                         R10 3
       16 GETTABLE                         R9 R10 R8
       17 JUMPIFNOTLE                      R0 R9 ; [+3]
       19 MOVE                             R4 R8
       20 JUMP                             ; [+2]
       21 FORNLOOP                         R5
       22 LOADK                            R4 K1 ["XXLarge"]
       23 DUPTABLE                         R3 K8 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
       24 SETTABLEKS                       R4 R3 K2 ["breakpoint"]
       26 GETUPVAL                         R6 4
       27 GETTABLE                         R5 R6 R4
       28 SETTABLEKS                       R5 R3 K3 ["columns"]
       30 GETUPVAL                         R6 5
       31 GETTABLE                         R5 R6 R4
       32 SETTABLEKS                       R5 R3 K4 ["margin"]
       34 GETUPVAL                         R6 6
       35 GETTABLE                         R5 R6 R4
       36 SETTABLEKS                       R5 R3 K5 ["gutter"]
       38 GETUPVAL                         R6 7
       39 GETTABLE                         R5 R6 R4
       40 SETTABLEKS                       R5 R3 K6 ["gap"]
       42 GETUPVAL                         R6 8
       43 GETTABLE                         R5 R6 R4
       44 SETTABLEKS                       R5 R3 K7 ["peek"]
       46 DUPTABLE                         R4 K21 [{"id", "label", "breakpoint", "layoutBreakpoint", "orientation", "width", "height", "keySizeX", "keySizeY", "margin", "gutter", "columns", "cornerRadius", "bezelThickness", "strokeThickness", "chrome"}]
       47 GETTABLEKS                       R5 R2 K9 ["id"]
       49 SETTABLEKS                       R5 R4 K9 ["id"]
       51 GETTABLEKS                       R5 R2 K10 ["label"]
       53 SETTABLEKS                       R5 R4 K10 ["label"]
       55 GETTABLEKS                       R5 R2 K2 ["breakpoint"]
       57 SETTABLEKS                       R5 R4 K2 ["breakpoint"]
       59 GETTABLEKS                       R5 R3 K2 ["breakpoint"]
       61 SETTABLEKS                       R5 R4 K11 ["layoutBreakpoint"]
       63 JUMPIFNOTLT                      R0 R1 ; [+3]
       65 LOADK                            R5 K22 ["Portrait"]
       66 JUMP                             ; [+1]
       67 LOADK                            R5 K23 ["Landscape"]
       68 SETTABLEKS                       R5 R4 K12 ["orientation"]
       70 SETTABLEKS                       R0 R4 K13 ["width"]
       72 SETTABLEKS                       R1 R4 K14 ["height"]
       74 GETTABLEKS                       R5 R2 K15 ["keySizeX"]
       76 SETTABLEKS                       R5 R4 K15 ["keySizeX"]
       78 GETTABLEKS                       R5 R2 K16 ["keySizeY"]
       80 SETTABLEKS                       R5 R4 K16 ["keySizeY"]
       82 GETTABLEKS                       R5 R3 K4 ["margin"]
       84 SETTABLEKS                       R5 R4 K4 ["margin"]
       86 GETTABLEKS                       R5 R3 K5 ["gutter"]
       88 SETTABLEKS                       R5 R4 K5 ["gutter"]
       90 GETTABLEKS                       R5 R3 K3 ["columns"]
       92 SETTABLEKS                       R5 R4 K3 ["columns"]
       94 GETTABLEKS                       R5 R2 K17 ["cornerRadius"]
       96 SETTABLEKS                       R5 R4 K17 ["cornerRadius"]
       98 GETTABLEKS                       R5 R2 K18 ["bezelThickness"]
      100 SETTABLEKS                       R5 R4 K18 ["bezelThickness"]
      102 GETTABLEKS                       R5 R2 K19 ["strokeThickness"]
      104 SETTABLEKS                       R5 R4 K19 ["strokeThickness"]
      106 GETTABLEKS                       R5 R2 K20 ["chrome"]
      108 SETTABLEKS                       R5 R4 K20 ["chrome"]
      110 RETURN                           R4 1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"breakpoint", "grid"}]
        1 DUPTABLE                         R1 K6 [{"shortNames", "widths", "order"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K3 ["shortNames"]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K4 ["widths"]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K5 ["order"]
       11 SETTABLEKS                       R1 R0 K0 ["breakpoint"]
       13 DUPTABLE                         R1 K11 [{"columns", "margins", "gutters", "gaps"}]
       14 GETUPVAL                         R2 3
       15 SETTABLEKS                       R2 R1 K7 ["columns"]
       17 GETUPVAL                         R2 4
       18 SETTABLEKS                       R2 R1 K8 ["margins"]
       20 GETUPVAL                         R2 5
       21 SETTABLEKS                       R2 R1 K9 ["gutters"]
       23 GETUPVAL                         R2 6
       24 SETTABLEKS                       R2 R1 K10 ["gaps"]
       26 SETTABLEKS                       R1 R0 K1 ["grid"]
       28 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 6
        3 LOADK                            R1 K0 ["XSmall"]
        4 LOADK                            R2 K1 ["Small"]
        5 LOADK                            R3 K2 ["Medium"]
        6 LOADK                            R4 K3 ["Large"]
        7 LOADK                            R5 K4 ["XLarge"]
        8 LOADK                            R6 K5 ["XXLarge"]
        9 SETLIST                          R0 R1 6 [1]
       11 DUPTABLE                         R1 K11 [{[1] = 599, ["Small"] = 1139, ["Medium"] = 1519, ["Large"] = 1919, ["XLarge"] = ∞, ["XXLarge"] = ∞}]
       12 DUPTABLE                         R2 K15 [{[1] = 3, ["Small"] = 6, ["Medium"] = 12, ["Large"] = 12, ["XLarge"] = 12, ["XXLarge"] = 12}]
       13 DUPTABLE                         R3 K19 [{[1] = 12, ["Small"] = 20, ["Medium"] = 32, ["Large"] = 32, ["XLarge"] = 64, ["XXLarge"] = 64}]
       14 DUPTABLE                         R4 K22 [{[1] = 8, ["Small"] = 12, ["Medium"] = 16, ["Large"] = 16, ["XLarge"] = 16, ["XXLarge"] = 16}]
       15 DUPTABLE                         R5 K26 [{[1] = 36, ["Small"] = 60, ["Medium"] = 0, ["Large"] = 0, ["XLarge"] = 0, ["XXLarge"] = 0}]
       16 DUPTABLE                         R6 K33 [{[1] = "xs", ["Small"] = "sm", ["Medium"] = "md", ["Large"] = "lg", ["XLarge"] = "xl", ["XXLarge"] = "xxl"}]
       17 DUPCLOSURE                       R7 K34 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R8 0 5
       22 DUPTABLE                         R9 K38 [{["label"] = "XS", ["min"] = 0}]
       23 DUPTABLE                         R10 K41 [{["label"] = "SM", ["min"] = 352}]
       24 DUPTABLE                         R11 K44 [{["label"] = "MD", ["min"] = 608}]
       25 DUPTABLE                         R12 K47 [{["label"] = "LG", ["min"] = 1120}]
       26 DUPTABLE                         R13 K50 [{["label"] = "XL", ["min"] = 1632}]
       27 SETLIST                          R8 R9 5 [1]
       29 DUPCLOSURE                       R9 K51 [PROTO_1]
       30 DUPCLOSURE                       R10 K52 [PROTO_2]
       31 DUPCLOSURE                       R11 K53 [PROTO_3]
       32 CAPTURE                          VAL R8
       33 DUPCLOSURE                       R12 K54 [PROTO_4]
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 DUPCLOSURE                       R13 K55 [PROTO_5]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R14 0 5
       51 DUPTABLE                         R16 K80 [{["id"] = "MobilePortrait", ["label"] = "Mobile Portrait", ["breakpoint"] = "Mobile", ["layoutBreakpoint"] = "Small", ["orientation"] = "Portrait", ["width"] = 393, ["height"] = 852, ["keySizeX"] = 56, ["keySizeY"] = 56, ["margin"] = 0, ["gutter"] = 0, ["columns"] = 0, ["cornerRadius"] = 40, ["bezelThickness"] = 12, ["strokeThickness"] = 0, ["chrome"] = "Bezel"}]
       52 GETTABLEKS                       R18 R16 K64 ["width"]
       54 LOADN                            R22 1
       55 LENGTH                           R20 R0
       56 LOADN                            R21 1
       57 FORNPREP                         R20
       58 GETTABLE                         R23 R0 R22
       59 GETTABLE                         R24 R1 R23
       60 JUMPIFNOTLE                      R18 R24 ; [+3]
       62 MOVE                             R19 R23
       63 JUMP                             ; [+2]
       64 FORNLOOP                         R20
       65 LOADK                            R19 K5 ["XXLarge"]
       66 DUPTABLE                         R17 K83 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
       67 SETTABLEKS                       R19 R17 K59 ["breakpoint"]
       69 GETTABLE                         R20 R2 R19
       70 SETTABLEKS                       R20 R17 K73 ["columns"]
       72 GETTABLE                         R20 R3 R19
       73 SETTABLEKS                       R20 R17 K71 ["margin"]
       75 GETTABLE                         R20 R4 R19
       76 SETTABLEKS                       R20 R17 K72 ["gutter"]
       78 GETTABLE                         R20 R4 R19
       79 SETTABLEKS                       R20 R17 K81 ["gap"]
       81 GETTABLE                         R20 R5 R19
       82 SETTABLEKS                       R20 R17 K82 ["peek"]
       84 GETTABLEKS                       R18 R17 K59 ["breakpoint"]
       86 SETTABLEKS                       R18 R16 K61 ["layoutBreakpoint"]
       88 GETTABLEKS                       R18 R17 K73 ["columns"]
       90 SETTABLEKS                       R18 R16 K73 ["columns"]
       92 GETTABLEKS                       R18 R17 K71 ["margin"]
       94 SETTABLEKS                       R18 R16 K71 ["margin"]
       96 GETTABLEKS                       R18 R17 K72 ["gutter"]
       98 SETTABLEKS                       R18 R16 K72 ["gutter"]
      100 MOVE                             R15 R16
      101 DUPTABLE                         R17 K87 [{["id"] = "MobileLandscape", ["label"] = "Mobile Landscape", ["breakpoint"] = "Mobile", ["layoutBreakpoint"] = "Medium", ["orientation"] = "Landscape", ["width"] = 852, ["height"] = 393, ["keySizeX"] = 64, ["keySizeY"] = 56, ["margin"] = 0, ["gutter"] = 0, ["columns"] = 0, ["cornerRadius"] = 40, ["bezelThickness"] = 12, ["strokeThickness"] = 0, ["chrome"] = "Bezel"}]
      102 GETTABLEKS                       R19 R17 K64 ["width"]
      104 LOADN                            R23 1
      105 LENGTH                           R21 R0
      106 LOADN                            R22 1
      107 FORNPREP                         R21
      108 GETTABLE                         R24 R0 R23
      109 GETTABLE                         R25 R1 R24
      110 JUMPIFNOTLE                      R19 R25 ; [+3]
      112 MOVE                             R20 R24
      113 JUMP                             ; [+2]
      114 FORNLOOP                         R21
      115 LOADK                            R20 K5 ["XXLarge"]
      116 DUPTABLE                         R18 K83 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
      117 SETTABLEKS                       R20 R18 K59 ["breakpoint"]
      119 GETTABLE                         R21 R2 R20
      120 SETTABLEKS                       R21 R18 K73 ["columns"]
      122 GETTABLE                         R21 R3 R20
      123 SETTABLEKS                       R21 R18 K71 ["margin"]
      125 GETTABLE                         R21 R4 R20
      126 SETTABLEKS                       R21 R18 K72 ["gutter"]
      128 GETTABLE                         R21 R4 R20
      129 SETTABLEKS                       R21 R18 K81 ["gap"]
      131 GETTABLE                         R21 R5 R20
      132 SETTABLEKS                       R21 R18 K82 ["peek"]
      134 GETTABLEKS                       R19 R18 K59 ["breakpoint"]
      136 SETTABLEKS                       R19 R17 K61 ["layoutBreakpoint"]
      138 GETTABLEKS                       R19 R18 K73 ["columns"]
      140 SETTABLEKS                       R19 R17 K73 ["columns"]
      142 GETTABLEKS                       R19 R18 K71 ["margin"]
      144 SETTABLEKS                       R19 R17 K71 ["margin"]
      146 GETTABLEKS                       R19 R18 K72 ["gutter"]
      148 SETTABLEKS                       R19 R17 K72 ["gutter"]
      150 MOVE                             R16 R17
      151 DUPTABLE                         R18 K95 [{["id"] = "DesktopMedium", ["label"] = "Desktop Medium", ["breakpoint"] = "Desktop", ["layoutBreakpoint"] = "Medium", ["orientation"] = "Landscape", ["width"] = 960, ["height"] = 660, ["keySizeX"] = 64, ["keySizeY"] = 64, ["margin"] = 0, ["gutter"] = 0, ["columns"] = 0, ["cornerRadius"] = 12, ["bezelThickness"] = 0, ["strokeThickness"] = 1, ["chrome"] = "Stroke"}]
      152 GETTABLEKS                       R20 R18 K64 ["width"]
      154 LOADN                            R24 1
      155 LENGTH                           R22 R0
      156 LOADN                            R23 1
      157 FORNPREP                         R22
      158 GETTABLE                         R25 R0 R24
      159 GETTABLE                         R26 R1 R25
      160 JUMPIFNOTLE                      R20 R26 ; [+3]
      162 MOVE                             R21 R25
      163 JUMP                             ; [+2]
      164 FORNLOOP                         R22
      165 LOADK                            R21 K5 ["XXLarge"]
      166 DUPTABLE                         R19 K83 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
      167 SETTABLEKS                       R21 R19 K59 ["breakpoint"]
      169 GETTABLE                         R22 R2 R21
      170 SETTABLEKS                       R22 R19 K73 ["columns"]
      172 GETTABLE                         R22 R3 R21
      173 SETTABLEKS                       R22 R19 K71 ["margin"]
      175 GETTABLE                         R22 R4 R21
      176 SETTABLEKS                       R22 R19 K72 ["gutter"]
      178 GETTABLE                         R22 R4 R21
      179 SETTABLEKS                       R22 R19 K81 ["gap"]
      181 GETTABLE                         R22 R5 R21
      182 SETTABLEKS                       R22 R19 K82 ["peek"]
      184 GETTABLEKS                       R20 R19 K59 ["breakpoint"]
      186 SETTABLEKS                       R20 R18 K61 ["layoutBreakpoint"]
      188 GETTABLEKS                       R20 R19 K73 ["columns"]
      190 SETTABLEKS                       R20 R18 K73 ["columns"]
      192 GETTABLEKS                       R20 R19 K71 ["margin"]
      194 SETTABLEKS                       R20 R18 K71 ["margin"]
      196 GETTABLEKS                       R20 R19 K72 ["gutter"]
      198 SETTABLEKS                       R20 R18 K72 ["gutter"]
      200 MOVE                             R17 R18
      201 DUPTABLE                         R19 K101 [{["id"] = "DesktopLarge", ["label"] = "Desktop Large", ["breakpoint"] = "Desktop", ["layoutBreakpoint"] = "Large", ["orientation"] = "Landscape", ["width"] = 1472, ["height"] = 904, ["keySizeX"] = 72, ["keySizeY"] = 72, ["margin"] = 0, ["gutter"] = 0, ["columns"] = 0, ["cornerRadius"] = 12, ["bezelThickness"] = 0, ["strokeThickness"] = 1, ["chrome"] = "Stroke"}]
      202 GETTABLEKS                       R21 R19 K64 ["width"]
      204 LOADN                            R25 1
      205 LENGTH                           R23 R0
      206 LOADN                            R24 1
      207 FORNPREP                         R23
      208 GETTABLE                         R26 R0 R25
      209 GETTABLE                         R27 R1 R26
      210 JUMPIFNOTLE                      R21 R27 ; [+3]
      212 MOVE                             R22 R26
      213 JUMP                             ; [+2]
      214 FORNLOOP                         R23
      215 LOADK                            R22 K5 ["XXLarge"]
      216 DUPTABLE                         R20 K83 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
      217 SETTABLEKS                       R22 R20 K59 ["breakpoint"]
      219 GETTABLE                         R23 R2 R22
      220 SETTABLEKS                       R23 R20 K73 ["columns"]
      222 GETTABLE                         R23 R3 R22
      223 SETTABLEKS                       R23 R20 K71 ["margin"]
      225 GETTABLE                         R23 R4 R22
      226 SETTABLEKS                       R23 R20 K72 ["gutter"]
      228 GETTABLE                         R23 R4 R22
      229 SETTABLEKS                       R23 R20 K81 ["gap"]
      231 GETTABLE                         R23 R5 R22
      232 SETTABLEKS                       R23 R20 K82 ["peek"]
      234 GETTABLEKS                       R21 R20 K59 ["breakpoint"]
      236 SETTABLEKS                       R21 R19 K61 ["layoutBreakpoint"]
      238 GETTABLEKS                       R21 R20 K73 ["columns"]
      240 SETTABLEKS                       R21 R19 K73 ["columns"]
      242 GETTABLEKS                       R21 R20 K71 ["margin"]
      244 SETTABLEKS                       R21 R19 K71 ["margin"]
      246 GETTABLEKS                       R21 R20 K72 ["gutter"]
      248 SETTABLEKS                       R21 R19 K72 ["gutter"]
      250 MOVE                             R18 R19
      251 DUPTABLE                         R20 K106 [{["id"] = "Resizable", ["label"] = "Resizable", ["breakpoint"] = "Desktop", ["layoutBreakpoint"] = "Medium", ["orientation"] = "Landscape", ["width"] = 1200, ["height"] = 800, ["keySizeX"] = 64, ["keySizeY"] = 64, ["margin"] = 0, ["gutter"] = 0, ["columns"] = 0, ["cornerRadius"] = 0, ["bezelThickness"] = 0, ["strokeThickness"] = 0, ["chrome"] = "None"}]
      252 GETTABLEKS                       R22 R20 K64 ["width"]
      254 LOADN                            R26 1
      255 LENGTH                           R24 R0
      256 LOADN                            R25 1
      257 FORNPREP                         R24
      258 GETTABLE                         R27 R0 R26
      259 GETTABLE                         R28 R1 R27
      260 JUMPIFNOTLE                      R22 R28 ; [+3]
      262 MOVE                             R23 R27
      263 JUMP                             ; [+2]
      264 FORNLOOP                         R24
      265 LOADK                            R23 K5 ["XXLarge"]
      266 DUPTABLE                         R21 K83 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
      267 SETTABLEKS                       R23 R21 K59 ["breakpoint"]
      269 GETTABLE                         R24 R2 R23
      270 SETTABLEKS                       R24 R21 K73 ["columns"]
      272 GETTABLE                         R24 R3 R23
      273 SETTABLEKS                       R24 R21 K71 ["margin"]
      275 GETTABLE                         R24 R4 R23
      276 SETTABLEKS                       R24 R21 K72 ["gutter"]
      278 GETTABLE                         R24 R4 R23
      279 SETTABLEKS                       R24 R21 K81 ["gap"]
      281 GETTABLE                         R24 R5 R23
      282 SETTABLEKS                       R24 R21 K82 ["peek"]
      284 GETTABLEKS                       R22 R21 K59 ["breakpoint"]
      286 SETTABLEKS                       R22 R20 K61 ["layoutBreakpoint"]
      288 GETTABLEKS                       R22 R21 K73 ["columns"]
      290 SETTABLEKS                       R22 R20 K73 ["columns"]
      292 GETTABLEKS                       R22 R21 K71 ["margin"]
      294 SETTABLEKS                       R22 R20 K71 ["margin"]
      296 GETTABLEKS                       R22 R21 K72 ["gutter"]
      298 SETTABLEKS                       R22 R20 K72 ["gutter"]
      300 MOVE                             R19 R20
      301 SETLIST                          R14 R15 5 [1]
      303 NEWTABLE                         R15 0 0
      305 MOVE                             R16 R14
      306 LOADNIL                          R17
      307 LOADNIL                          R18
      308 FORGPREP                         R16
      309 GETTABLEKS                       R21 R20 K56 ["id"]
      311 SETTABLE                         R20 R15 R21
      312 FORGLOOP                         R16 2 ; [-4]
      314 DUPCLOSURE                       R16 K107 [PROTO_6]
      315 CAPTURE                          VAL R14
      316 DUPCLOSURE                       R17 K108 [PROTO_7]
      317 CAPTURE                          VAL R15
      318 DUPCLOSURE                       R18 K109 [PROTO_8]
      319 CAPTURE                          VAL R15
      320 CAPTURE                          VAL R14
      321 DUPCLOSURE                       R19 K110 [PROTO_9]
      322 CAPTURE                          VAL R14
      323 CAPTURE                          VAL R15
      324 DUPCLOSURE                       R20 K111 [PROTO_10]
      325 CAPTURE                          VAL R15
      326 CAPTURE                          VAL R14
      327 CAPTURE                          VAL R0
      328 CAPTURE                          VAL R1
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R5
      334 DUPCLOSURE                       R21 K112 [PROTO_11]
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R1
      337 CAPTURE                          VAL R0
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R4
      341 CAPTURE                          VAL R4
      342 DUPTABLE                         R22 K124 [{"list", "get", "getDefault", "nextAfter", "getLayoutBreakpoint", "getLayoutMetrics", "getContainerBreakpoint", "getKeySizeX", "getKeySizeY", "makeResizableProfile", "getResponsiveConfig"}]
      343 SETTABLEKS                       R16 R22 K113 ["list"]
      345 SETTABLEKS                       R17 R22 K114 ["get"]
      347 SETTABLEKS                       R18 R22 K115 ["getDefault"]
      349 SETTABLEKS                       R19 R22 K116 ["nextAfter"]
      351 SETTABLEKS                       R7 R22 K117 ["getLayoutBreakpoint"]
      353 SETTABLEKS                       R12 R22 K118 ["getLayoutMetrics"]
      355 SETTABLEKS                       R11 R22 K119 ["getContainerBreakpoint"]
      357 SETTABLEKS                       R9 R22 K120 ["getKeySizeX"]
      359 SETTABLEKS                       R10 R22 K121 ["getKeySizeY"]
      361 SETTABLEKS                       R20 R22 K122 ["makeResizableProfile"]
      363 SETTABLEKS                       R21 R22 K123 ["getResponsiveConfig"]
      365 RETURN                           R22 1
