PROTO_0:
        0 LOADN                            R2 0
        1 JUMPIFNOTLT                      R2 R0 ; [+6]
        3 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestampMillis]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%d:%02d"]
        3 IDIVK                            R3 R0 K4 [60]
        4 MODK                             R5 R0 K4 [60]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K7 [math.floor]
        8 CALL                             R4 1 1
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["View"]
        6 DUPTABLE                         R6 K6 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-x-medium padding-y-xsmall", ["testId"]}]
        7 SETTABLEKS                       R0 R6 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R3 R6 K5 ["testId"]
       11 DUPTABLE                         R7 K9 [{"Label", "Value"}]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K0 ["createElement"]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K10 ["Text"]
       18 DUPTABLE                         R10 K13 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-0 auto-xy text-body-small content-muted"}]
       19 SETTABLEKS                       R1 R10 K10 ["Text"]
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K7 ["Label"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K0 ["createElement"]
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K10 ["Text"]
       30 DUPTABLE                         R10 K16 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill text-body-small text-align-x-right text-truncate-end content-default"}]
       31 SETTABLEKS                       R2 R10 K10 ["Text"]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K8 ["Value"]
       36 CALL                             R4 3 -1
       37 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["Size"], ["tag"] = "clip"}]
        7 GETIMPORT                        R4 K8 [UDim2.new]
        9 LOADN                            R5 1
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 LOADN                            R8 150
       13 CALL                             R4 4 1
       14 SETTABLEKS                       R4 R3 K2 ["Size"]
       16 DUPTABLE                         R4 K10 [{"Content"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["View"]
       23 DUPTABLE                         R7 K14 [{["tag"] = "position-center-center anchor-center-center size-full radius-medium bg-shift-200", ["sizeConstraint"], ["aspectRatio"]}]
       24 DUPTABLE                         R8 K16 [{"MaxSize"}]
       25 GETIMPORT                        R9 K18 [Vector2.new]
       27 LOADN                            R10 150
       28 LOADN                            R11 150
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K15 ["MaxSize"]
       32 SETTABLEKS                       R8 R7 K12 ["sizeConstraint"]
       34 DUPTABLE                         R8 K21 [{["AspectRatio"] = 1}]
       35 SETTABLEKS                       R8 R7 K13 ["aspectRatio"]
       37 DUPTABLE                         R8 K10 [{"Content"}]
       38 SETTABLEKS                       R0 R8 K9 ["Content"]
       40 CALL                             R5 3 1
       41 SETTABLEKS                       R5 R4 K9 ["Content"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{["tag"] = "size-full-1000 clip"}]
        7 DUPTABLE                         R4 K6 [{"Content"}]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K7 ["Image"]
       14 DUPTABLE                         R7 K12 [{["Image"], ["Size"], ["tag"] = "content-default", ["testId"] = "details-drawer-font-strip"}]
       15 SETTABLEKS                       R0 R7 K7 ["Image"]
       17 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       19 LOADN                            R9 600
       20 LOADN                            R10 40
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K8 ["Size"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K5 ["Content"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 ORK                              R3 R1 K0 [7]
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 LOADK                            R6 K1 ["Row%*"]
        7 MOVE                             R8 R5
        8 NAMECALL                         R6 R6 K2 ["format"]
       10 CALL                             R6 2 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K3 ["createElement"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K4 ["Skeleton"]
       17 DUPTABLE                         R9 K8 [{"LayoutOrder", "Size", "radius"}]
       18 SETTABLEKS                       R5 R9 K5 ["LayoutOrder"]
       20 GETIMPORT                        R10 K11 [UDim2.new]
       22 LOADN                            R11 1
       23 LOADN                            R12 0
       24 LOADN                            R13 0
       25 LOADN                            R14 12
       26 CALL                             R10 4 1
       27 SETTABLEKS                       R10 R9 K6 ["Size"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K12 ["Enums"]
       32 GETTABLEKS                       R10 R10 K13 ["Radius"]
       34 GETTABLEKS                       R10 R10 K14 ["Small"]
       36 SETTABLEKS                       R10 R9 K7 ["radius"]
       38 CALL                             R7 2 1
       39 SETTABLE                         R7 R2 R6
       40 FORNLOOP                         R3
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K3 ["createElement"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K15 ["View"]
       47 DUPTABLE                         R5 K20 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y padding-medium", ["testId"] = "details-drawer-loading"}]
       48 SETTABLEKS                       R0 R5 K5 ["LayoutOrder"]
       50 MOVE                             R6 R2
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["View"]
        6 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-0 auto-y padding-x-medium padding-bottom-xsmall padding-top-medium", ["testId"]}]
        7 SETTABLEKS                       R0 R5 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R2 R5 K5 ["testId"]
       11 DUPTABLE                         R6 K8 [{"Label"}]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K0 ["createElement"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K9 ["Text"]
       18 DUPTABLE                         R9 K11 [{["Text"], ["tag"] = "size-0 auto-xy text-title-small content-emphasis"}]
       19 SETTABLEKS                       R1 R9 K9 ["Text"]
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R6 K7 ["Label"]
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getNextOrder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+30]
        2 GETUPVAL                         R3 1
        3 LOADK                            R4 K0 ["Divider_%*"]
        4 MOVE                             R6 R0
        5 NAMECALL                         R4 R4 K1 ["format"]
        7 CALL                             R4 2 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["createElement"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K3 ["Divider"]
       14 DUPTABLE                         R7 K6 [{"LayoutOrder", "orientation"}]
       15 GETUPVAL                         R8 4
       16 NAMECALL                         R8 R8 K7 ["getNextOrder"]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K8 ["Enums"]
       24 GETTABLEKS                       R8 R8 K9 ["DividerOrientation"]
       26 GETTABLEKS                       R8 R8 K10 ["Horizontal"]
       28 SETTABLEKS                       R8 R7 K5 ["orientation"]
       30 CALL                             R5 2 1
       31 SETTABLE                         R5 R3 R4
       32 GETUPVAL                         R3 1
       33 GETUPVAL                         R4 5
       34 GETUPVAL                         R5 4
       35 NAMECALL                         R5 R5 K7 ["getNextOrder"]
       37 CALL                             R5 1 1
       38 MOVE                             R6 R1
       39 MOVE                             R7 R2
       40 LOADK                            R8 K11 ["details-drawer-row-%*"]
       41 MOVE                             R10 R0
       42 NAMECALL                         R8 R8 K1 ["format"]
       44 CALL                             R8 2 1
       45 CALL                             R4 4 1
       46 SETTABLE                         R4 R3 R0
       47 LOADB                            R3 1
       48 SETUPVAL                         R3 0
       49 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 LOADB                            R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          REF R2
       18 MOVE                             R6 R1
       19 MOVE                             R7 R4
       20 MOVE                             R8 R3
       21 MOVE                             R9 R5
       22 CLOSEUPVALS                      R2
       23 RETURN                           R6 4

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["createElement"]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K2 ["View"]
       10 DUPTABLE                         R7 K8 [{["LayoutOrder"], ["tag"] = "col fill size-full-0 clip", ["testId"] = "details-drawer-body"}]
       11 SETTABLEKS                       R0 R7 K3 ["LayoutOrder"]
       13 DUPTABLE                         R8 K10 [{"Inner"}]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K1 ["createElement"]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K2 ["View"]
       20 DUPTABLE                         R11 K14 [{["tag"] = "col size-full", ["testId"] = "details-drawer-content", ["sizeConstraint"]}]
       21 DUPTABLE                         R12 K16 [{"MinSize"}]
       22 GETIMPORT                        R13 K18 [Vector2.new]
       24 LOADN                            R14 180
       25 LOADN                            R15 0
       26 CALL                             R13 2 1
       27 SETTABLEKS                       R13 R12 K15 ["MinSize"]
       29 SETTABLEKS                       R12 R11 K13 ["sizeConstraint"]
       31 DUPTABLE                         R12 K23 [{"Thumbnail", "MediaPreview", "ThumbnailDivider", "Content"}]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R13 R13 K1 ["createElement"]
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R14 R14 K2 ["View"]
       38 DUPTABLE                         R15 K26 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-medium", ["testId"] = "details-drawer-thumbnail"}]
       39 NAMECALL                         R16 R4 K27 ["getNextOrder"]
       41 CALL                             R16 1 1
       42 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       44 DUPTABLE                         R16 K29 [{"Track"}]
       45 SETTABLEKS                       R1 R16 K28 ["Track"]
       47 CALL                             R13 3 1
       48 SETTABLEKS                       R13 R12 K19 ["Thumbnail"]
       50 JUMPIFNOT                        R3 ; [+17]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K1 ["createElement"]
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K2 ["View"]
       57 DUPTABLE                         R15 K31 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-medium padding-bottom-medium"}]
       58 NAMECALL                         R16 R4 K27 ["getNextOrder"]
       60 CALL                             R16 1 1
       61 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       63 DUPTABLE                         R16 K33 [{"Preview"}]
       64 SETTABLEKS                       R3 R16 K32 ["Preview"]
       66 CALL                             R13 3 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R13
       69 SETTABLEKS                       R13 R12 K20 ["MediaPreview"]
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K1 ["createElement"]
       74 GETUPVAL                         R14 2
       75 GETTABLEKS                       R14 R14 K34 ["Divider"]
       77 DUPTABLE                         R15 K36 [{"LayoutOrder", "orientation"}]
       78 NAMECALL                         R16 R4 K27 ["getNextOrder"]
       80 CALL                             R16 1 1
       81 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       83 GETUPVAL                         R16 2
       84 GETTABLEKS                       R16 R16 K37 ["Enums"]
       86 GETTABLEKS                       R16 R16 K38 ["DividerOrientation"]
       88 GETTABLEKS                       R16 R16 K39 ["Horizontal"]
       90 SETTABLEKS                       R16 R15 K35 ["orientation"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K21 ["ThumbnailDivider"]
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K1 ["createElement"]
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K40 ["ScrollView"]
      101 DUPTABLE                         R15 K45 [{["LayoutOrder"], ["tag"] = "fill size-full-0", ["layout"], ["scroll"], ["testId"] = "details-drawer-scroll"}]
      102 NAMECALL                         R16 R4 K27 ["getNextOrder"]
      104 CALL                             R16 1 1
      105 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      107 DUPTABLE                         R16 K47 [{"FillDirection"}]
      108 GETIMPORT                        R17 K50 [Enum.FillDirection.Vertical]
      110 SETTABLEKS                       R17 R16 K46 ["FillDirection"]
      112 SETTABLEKS                       R16 R15 K42 ["layout"]
      114 DUPTABLE                         R16 K54 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      115 GETIMPORT                        R17 K57 [Enum.AutomaticSize.Y]
      117 SETTABLEKS                       R17 R16 K51 ["AutomaticCanvasSize"]
      119 GETIMPORT                        R17 K59 [UDim2.new]
      121 CALL                             R17 0 1
      122 SETTABLEKS                       R17 R16 K52 ["CanvasSize"]
      124 GETIMPORT                        R17 K60 [Enum.ScrollingDirection.Y]
      126 SETTABLEKS                       R17 R16 K53 ["ScrollingDirection"]
      128 SETTABLEKS                       R16 R15 K43 ["scroll"]
      130 MOVE                             R16 R2
      131 CALL                             R13 3 1
      132 SETTABLEKS                       R13 R12 K22 ["Content"]
      134 CALL                             R9 3 1
      135 SETTABLEKS                       R9 R8 K9 ["Inner"]
      137 CALL                             R5 3 -1
      138 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K14 ["Util"]
       46 GETTABLEKS                       R6 R6 K15 ["LayoutOrderIterator"]
       48 NEWTABLE                         R7 16 0
       50 LOADN                            R10 150
       51 GETTABLEKS                       R11 R4 K16 ["ListThumbnailScale"]
       53 MUL                              R9 R10 R11
       54 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       55 GETIMPORT                        R8 K19 [math.floor]
       57 CALL                             R8 1 1
       58 SETTABLEKS                       R8 R7 K20 ["THUMBNAIL_ICON_SIZE"]
       60 DUPCLOSURE                       R8 K21 [PROTO_0]
       61 SETTABLEKS                       R8 R7 K22 ["toDateTime"]
       63 DUPCLOSURE                       R8 K23 [PROTO_1]
       64 SETTABLEKS                       R8 R7 K24 ["formatDuration"]
       66 DUPCLOSURE                       R8 K25 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R9 K26 [PROTO_3]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R9 R7 K27 ["ThumbnailSquare"]
       74 DUPCLOSURE                       R9 K28 [PROTO_4]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R9 R7 K29 ["FontThumbnailStrip"]
       79 DUPCLOSURE                       R9 K30 [PROTO_5]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R9 R7 K31 ["LoadingRows"]
       84 DUPCLOSURE                       R9 K32 [PROTO_6]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R9 R7 K33 ["SectionLabel"]
       89 DUPCLOSURE                       R9 K34 [PROTO_10]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R9 R7 K35 ["createRowList"]
       96 DUPCLOSURE                       R9 K36 [PROTO_11]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R9 R7 K37 ["DrawerBody"]
      102 RETURN                           R7 1
