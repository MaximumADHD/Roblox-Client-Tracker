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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["tag"] = "row size-full-600", ["testId"]}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K7 ["TestId"]
       13 SETTABLEKS                       R4 R3 K5 ["testId"]
       15 DUPTABLE                         R4 K11 [{"Label", "ColumnDivider", "Value"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K12 ["Text"]
       22 DUPTABLE                         R7 K16 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["tag"] = "padding-left-xxlarge padding-right-small text-body-small text-align-x-left text-truncate-end content-default"}]
       23 GETIMPORT                        R8 K19 [UDim2.fromScale]
       25 LOADK                            R9 K20 [0.5]
       26 LOADN                            R10 1
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K14 ["Size"]
       30 GETTABLEKS                       R8 R0 K8 ["Label"]
       32 SETTABLEKS                       R8 R7 K12 ["Text"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K8 ["Label"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["createElement"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K21 ["Divider"]
       43 DUPTABLE                         R7 K24 [{["LayoutOrder"] = 2, ["orientation"]}]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K25 ["Enums"]
       47 GETTABLEKS                       R8 R8 K26 ["DividerOrientation"]
       49 GETTABLEKS                       R8 R8 K27 ["Vertical"]
       51 SETTABLEKS                       R8 R7 K23 ["orientation"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K9 ["ColumnDivider"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["createElement"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K12 ["Text"]
       62 DUPTABLE                         R7 K30 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "fill size-0-full padding-x-xsmall text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       63 GETTABLEKS                       R8 R0 K10 ["Value"]
       65 SETTABLEKS                       R8 R7 K12 ["Text"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K10 ["Value"]
       70 CALL                             R1 3 -1
       71 RETURN                           R1 -1

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["createElement"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["View"]
       19 DUPTABLE                         R6 K8 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
       20 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R0 K9 ["TestId"]
       26 SETTABLEKS                       R7 R6 K7 ["testId"]
       28 DUPTABLE                         R7 K12 [{"Header", "Content"}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K2 ["createElement"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K3 ["View"]
       35 DUPTABLE                         R10 K16 [{["LayoutOrder"] = 1, ["onActivated"], ["tag"] = "row align-y-center gap-small size-full-700 padding-left-xsmall padding-right-medium bg-surface-200", ["testId"]}]
       36 SETTABLEKS                       R3 R10 K14 ["onActivated"]
       38 LOADK                            R11 K17 ["%*-header"]
       39 GETTABLEKS                       R13 R0 K9 ["TestId"]
       41 NAMECALL                         R11 R11 K18 ["format"]
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K7 ["testId"]
       46 DUPTABLE                         R11 K21 [{"Caret", "Title"}]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K2 ["createElement"]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K22 ["Icon"]
       53 DUPTABLE                         R14 K26 [{["LayoutOrder"] = 1, ["name"], ["size"], ["variant"]}]
       54 JUMPIFNOT                        R1 ; [+8]
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K27 ["Enums"]
       58 GETTABLEKS                       R15 R15 K28 ["IconName"]
       60 GETTABLEKS                       R15 R15 K29 ["CaretSmallDown"]
       62 JUMP                             ; [+7]
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R15 R15 K27 ["Enums"]
       66 GETTABLEKS                       R15 R15 K28 ["IconName"]
       68 GETTABLEKS                       R15 R15 K30 ["CaretSmallRight"]
       70 SETTABLEKS                       R15 R14 K23 ["name"]
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K27 ["Enums"]
       75 GETTABLEKS                       R15 R15 K31 ["IconSize"]
       77 GETTABLEKS                       R15 R15 K32 ["XSmall"]
       79 SETTABLEKS                       R15 R14 K24 ["size"]
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K27 ["Enums"]
       84 GETTABLEKS                       R15 R15 K33 ["IconVariant"]
       86 GETTABLEKS                       R15 R15 K34 ["Filled"]
       88 SETTABLEKS                       R15 R14 K25 ["variant"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K19 ["Caret"]
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K2 ["createElement"]
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K35 ["Text"]
       99 DUPTABLE                         R14 K38 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill size-0-full text-title-small text-align-x-left text-truncate-end content-default"}]
      100 GETTABLEKS                       R15 R0 K20 ["Title"]
      102 SETTABLEKS                       R15 R14 K35 ["Text"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K20 ["Title"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K10 ["Header"]
      110 JUMPIFNOT                        R1 ; [+11]
      111 GETUPVAL                         R8 0
      112 GETTABLEKS                       R8 R8 K2 ["createElement"]
      114 GETUPVAL                         R9 1
      115 GETTABLEKS                       R9 R9 K3 ["View"]
      117 DUPTABLE                         R10 K39 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      118 GETTABLEKS                       R11 R0 K40 ["children"]
      120 CALL                             R8 3 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R7 K11 ["Content"]
      125 CALL                             R4 3 -1
      126 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["Size"], ["tag"] = "clip"}]
        7 GETIMPORT                        R4 K8 [UDim2.new]
        9 LOADN                            R5 1
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 LOADN                            R8 164
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
       27 LOADN                            R10 164
       28 LOADN                            R11 164
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K15 ["MaxSize"]
       32 SETTABLEKS                       R8 R7 K12 ["sizeConstraint"]
       34 DUPTABLE                         R8 K21 [{["AspectRatio"] = 1}]
       35 SETTABLEKS                       R8 R7 K13 ["aspectRatio"]
       37 GETTABLEKS                       R8 R0 K22 ["children"]
       39 CALL                             R5 3 1
       40 SETTABLEKS                       R5 R4 K9 ["Content"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

PROTO_7:
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
       15 GETTABLEKS                       R8 R0 K7 ["Image"]
       17 SETTABLEKS                       R8 R7 K7 ["Image"]
       19 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       21 LOADN                            R9 600
       22 LOADN                            R10 40
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K8 ["Size"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K5 ["Content"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R5 R0 K1 ["RowCount"]
        5 ORK                              R2 R5 K0 [7]
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 LOADK                            R5 K2 ["Row%*"]
        9 MOVE                             R7 R4
       10 NAMECALL                         R5 R5 K3 ["format"]
       12 CALL                             R5 2 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["createElement"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["Skeleton"]
       19 DUPTABLE                         R8 K9 [{"LayoutOrder", "Size", "radius"}]
       20 SETTABLEKS                       R4 R8 K6 ["LayoutOrder"]
       22 GETIMPORT                        R9 K12 [UDim2.new]
       24 LOADN                            R10 1
       25 LOADN                            R11 0
       26 LOADN                            R12 0
       27 LOADN                            R13 12
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K7 ["Size"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K13 ["Enums"]
       34 GETTABLEKS                       R9 R9 K14 ["Radius"]
       36 GETTABLEKS                       R9 R9 K15 ["Small"]
       38 SETTABLEKS                       R9 R8 K8 ["radius"]
       40 CALL                             R6 2 1
       41 SETTABLE                         R6 R1 R5
       42 FORNLOOP                         R2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K4 ["createElement"]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K16 ["View"]
       49 DUPTABLE                         R4 K21 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y padding-medium", ["testId"] = "details-drawer-loading"}]
       50 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       52 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       54 MOVE                             R5 R1
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getNextOrder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
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
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K2 ["createElement"]
       36 GETUPVAL                         R5 5
       37 DUPTABLE                         R6 K14 [{"LayoutOrder", "Label", "Value", "TestId"}]
       38 GETUPVAL                         R7 4
       39 NAMECALL                         R7 R7 K7 ["getNextOrder"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       44 SETTABLEKS                       R1 R6 K11 ["Label"]
       46 SETTABLEKS                       R2 R6 K12 ["Value"]
       48 LOADK                            R7 K15 ["details-drawer-row-%*"]
       49 MOVE                             R9 R0
       50 NAMECALL                         R7 R7 K1 ["format"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K13 ["TestId"]
       55 CALL                             R4 2 1
       56 SETTABLE                         R4 R3 R0
       57 LOADB                            R3 1
       58 SETUPVAL                         R3 0
       59 RETURN                           R0 0

PROTO_11:
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
       16 MOVE                             R5 R1
       17 MOVE                             R6 R4
       18 MOVE                             R7 R3
       19 CLOSEUPVALS                      R2
       20 RETURN                           R5 3

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADN                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["ScrollView"]
       15 DUPTABLE                         R6 K12 [{["LayoutOrder"], ["tag"] = "fill size-full-0", ["layout"], ["scroll"], ["onAbsoluteWindowSizeChanged"], ["testId"] = "details-drawer-body"}]
       16 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       20 DUPTABLE                         R7 K14 [{"FillDirection"}]
       21 GETIMPORT                        R8 K17 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R8 R7 K13 ["FillDirection"]
       25 SETTABLEKS                       R7 R6 K7 ["layout"]
       27 DUPTABLE                         R7 K22 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       28 GETIMPORT                        R8 K25 [Enum.AutomaticSize.Y]
       30 SETTABLEKS                       R8 R7 K18 ["AutomaticCanvasSize"]
       32 GETIMPORT                        R8 K28 [UDim2.fromOffset]
       34 FASTCALL2K                       MATH_MAX R2 K29 ; [+5]
       36 MOVE                             R10 R2
       37 LOADK                            R11 K29 [180]
       38 GETIMPORT                        R9 K32 [math.max]
       40 CALL                             R9 2 1
       41 LOADN                            R10 0
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K19 ["CanvasSize"]
       45 GETIMPORT                        R8 K34 [Enum.ScrollingDirection.XY]
       47 SETTABLEKS                       R8 R7 K20 ["ScrollingDirection"]
       49 GETIMPORT                        R8 K37 [Enum.ScrollBarInset.Always]
       51 SETTABLEKS                       R8 R7 K21 ["VerticalScrollBarInset"]
       53 SETTABLEKS                       R7 R6 K8 ["scroll"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R6 K9 ["onAbsoluteWindowSizeChanged"]
       59 DUPTABLE                         R7 K39 [{"Inner"}]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K2 ["createElement"]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K40 ["View"]
       66 DUPTABLE                         R10 K44 [{["tag"] = "col size-full-0 auto-y", ["testId"] = "details-drawer-content", ["sizeConstraint"]}]
       67 DUPTABLE                         R11 K46 [{"MinSize"}]
       68 GETIMPORT                        R12 K48 [Vector2.new]
       70 LOADN                            R13 180
       71 LOADN                            R14 0
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K45 ["MinSize"]
       75 SETTABLEKS                       R11 R10 K43 ["sizeConstraint"]
       77 DUPTABLE                         R11 K53 [{"Media", "AssetHeader", "ThumbnailDivider", "Content"}]
       78 GETUPVAL                         R12 1
       79 GETTABLEKS                       R12 R12 K2 ["createElement"]
       81 GETUPVAL                         R13 2
       82 GETTABLEKS                       R13 R13 K40 ["View"]
       84 DUPTABLE                         R14 K56 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-small bg-surface-0", ["testId"] = "details-drawer-media"}]
       85 NAMECALL                         R15 R1 K57 ["getNextOrder"]
       87 CALL                             R15 1 1
       88 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       90 DUPTABLE                         R15 K60 [{"Thumbnail", "Preview"}]
       91 GETUPVAL                         R16 1
       92 GETTABLEKS                       R16 R16 K2 ["createElement"]
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K40 ["View"]
       97 DUPTABLE                         R18 K63 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
       98 DUPTABLE                         R19 K64 [{"Content"}]
       99 GETTABLEKS                       R20 R0 K58 ["Thumbnail"]
      101 SETTABLEKS                       R20 R19 K52 ["Content"]
      103 CALL                             R16 3 1
      104 SETTABLEKS                       R16 R15 K58 ["Thumbnail"]
      106 GETTABLEKS                       R17 R0 K65 ["MediaPreview"]
      108 JUMPIFNOT                        R17 ; [+14]
      109 GETUPVAL                         R16 1
      110 GETTABLEKS                       R16 R16 K2 ["createElement"]
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R17 R17 K40 ["View"]
      115 DUPTABLE                         R18 K68 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y padding-x-xsmall"}]
      116 DUPTABLE                         R19 K64 [{"Content"}]
      117 GETTABLEKS                       R20 R0 K65 ["MediaPreview"]
      119 SETTABLEKS                       R20 R19 K52 ["Content"]
      121 CALL                             R16 3 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R16
      124 SETTABLEKS                       R16 R15 K59 ["Preview"]
      126 CALL                             R12 3 1
      127 SETTABLEKS                       R12 R11 K49 ["Media"]
      129 GETTABLEKS                       R13 R0 K50 ["AssetHeader"]
      131 JUMPIFNOT                        R13 ; [+19]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R12 R12 K2 ["createElement"]
      135 GETUPVAL                         R13 2
      136 GETTABLEKS                       R13 R13 K40 ["View"]
      138 DUPTABLE                         R14 K69 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      139 NAMECALL                         R15 R1 K57 ["getNextOrder"]
      141 CALL                             R15 1 1
      142 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      144 DUPTABLE                         R15 K64 [{"Content"}]
      145 GETTABLEKS                       R16 R0 K50 ["AssetHeader"]
      147 SETTABLEKS                       R16 R15 K52 ["Content"]
      149 CALL                             R12 3 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R12
      152 SETTABLEKS                       R12 R11 K50 ["AssetHeader"]
      154 GETUPVAL                         R12 1
      155 GETTABLEKS                       R12 R12 K2 ["createElement"]
      157 GETUPVAL                         R13 2
      158 GETTABLEKS                       R13 R13 K70 ["Divider"]
      160 DUPTABLE                         R14 K72 [{"LayoutOrder", "orientation"}]
      161 NAMECALL                         R15 R1 K57 ["getNextOrder"]
      163 CALL                             R15 1 1
      164 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      166 GETUPVAL                         R15 2
      167 GETTABLEKS                       R15 R15 K73 ["Enums"]
      169 GETTABLEKS                       R15 R15 K74 ["DividerOrientation"]
      171 GETTABLEKS                       R15 R15 K75 ["Horizontal"]
      173 SETTABLEKS                       R15 R14 K71 ["orientation"]
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K51 ["ThumbnailDivider"]
      178 GETUPVAL                         R12 1
      179 GETTABLEKS                       R12 R12 K2 ["createElement"]
      181 GETUPVAL                         R13 2
      182 GETTABLEKS                       R13 R13 K40 ["View"]
      184 DUPTABLE                         R14 K77 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"] = "details-drawer-rows"}]
      185 NAMECALL                         R15 R1 K57 ["getNextOrder"]
      187 CALL                             R15 1 1
      188 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      190 GETTABLEKS                       R15 R0 K78 ["children"]
      192 CALL                             R12 3 1
      193 SETTABLEKS                       R12 R11 K52 ["Content"]
      195 CALL                             R8 3 1
      196 SETTABLEKS                       R8 R7 K38 ["Inner"]
      198 CALL                             R4 3 -1
      199 RETURN                           R4 -1

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
       50 LOADN                            R10 164
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
       69 DUPCLOSURE                       R9 K26 [PROTO_5]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R9 R7 K27 ["Section"]
       74 DUPCLOSURE                       R9 K28 [PROTO_6]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R9 R7 K29 ["ThumbnailSquare"]
       79 DUPCLOSURE                       R9 K30 [PROTO_7]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R9 R7 K31 ["FontThumbnailStrip"]
       84 DUPCLOSURE                       R9 K32 [PROTO_8]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R9 R7 K33 ["LoadingRows"]
       89 DUPCLOSURE                       R9 K34 [PROTO_11]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R9 R7 K35 ["createRowList"]
       96 DUPCLOSURE                       R9 K36 [PROTO_13]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R9 R7 K37 ["DrawerBody"]
      102 RETURN                           R7 1
