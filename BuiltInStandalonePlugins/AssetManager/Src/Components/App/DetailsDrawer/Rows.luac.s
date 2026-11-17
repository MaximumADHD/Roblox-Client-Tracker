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
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["createElement"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Tooltip"]
        6 DUPTABLE                         R9 K6 [{"LayoutOrder", "title", "side", "align"}]
        7 SETTABLEKS                       R0 R9 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R2 R9 K3 ["title"]
       11 GETUPVAL                         R10 1
       12 GETTABLEKS                       R10 R10 K7 ["Enums"]
       14 GETTABLEKS                       R10 R10 K8 ["PopoverSide"]
       16 GETTABLEKS                       R10 R10 K9 ["Bottom"]
       18 SETTABLEKS                       R10 R9 K4 ["side"]
       20 SETTABLEKS                       R3 R9 K5 ["align"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K0 ["createElement"]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K10 ["IconButton"]
       28 DUPTABLE                         R12 K17 [{"onActivated", "icon", "variant", "size", "testId", "isDisabled"}]
       29 SETTABLEKS                       R4 R12 K11 ["onActivated"]
       31 SETTABLEKS                       R1 R12 K12 ["icon"]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R13 R13 K7 ["Enums"]
       36 GETTABLEKS                       R13 R13 K18 ["ButtonVariant"]
       38 GETTABLEKS                       R13 R13 K19 ["Utility"]
       40 SETTABLEKS                       R13 R12 K13 ["variant"]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R13 R13 K7 ["Enums"]
       45 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       47 GETTABLEKS                       R13 R13 K21 ["XSmall"]
       49 SETTABLEKS                       R13 R12 K14 ["size"]
       51 SETTABLEKS                       R5 R12 K15 ["testId"]
       53 SETTABLEKS                       R6 R12 K16 ["isDisabled"]
       55 CALL                             R10 2 -1
       56 CALL                             R7 -1 -1
       57 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["tag"] = "row size-full-600", ["testId"]}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K7 ["TestId"]
       13 SETTABLEKS                       R4 R3 K5 ["testId"]
       15 DUPTABLE                         R4 K12 [{"Label", "ColumnDivider", "Value", "Trailing"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K13 ["Text"]
       22 DUPTABLE                         R7 K17 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["tag"] = "padding-left-xxlarge padding-right-small text-body-small text-align-x-left text-truncate-end content-default"}]
       23 GETIMPORT                        R8 K20 [UDim2.fromScale]
       25 LOADK                            R9 K21 [0.5]
       26 LOADN                            R10 1
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K15 ["Size"]
       30 GETTABLEKS                       R8 R0 K8 ["Label"]
       32 SETTABLEKS                       R8 R7 K13 ["Text"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K8 ["Label"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["createElement"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K22 ["Divider"]
       43 DUPTABLE                         R7 K25 [{["LayoutOrder"] = 2, ["orientation"]}]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K26 ["Enums"]
       47 GETTABLEKS                       R8 R8 K27 ["DividerOrientation"]
       49 GETTABLEKS                       R8 R8 K28 ["Vertical"]
       51 SETTABLEKS                       R8 R7 K24 ["orientation"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K9 ["ColumnDivider"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["createElement"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K13 ["Text"]
       62 DUPTABLE                         R7 K31 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "fill size-0-full padding-x-xsmall text-body-small text-align-x-left text-truncate-end content-emphasis"}]
       63 GETTABLEKS                       R8 R0 K10 ["Value"]
       65 SETTABLEKS                       R8 R7 K13 ["Text"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K10 ["Value"]
       70 GETTABLEKS                       R5 R0 K11 ["Trailing"]
       72 SETTABLEKS                       R5 R4 K11 ["Trailing"]
       74 CALL                             R1 3 -1
       75 RETURN                           R1 -1

PROTO_4:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_4]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getNextOrder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+30]
        2 GETUPVAL                         R4 1
        3 LOADK                            R5 K0 ["Divider_%*"]
        4 MOVE                             R7 R0
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 2 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["createElement"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K3 ["Divider"]
       14 DUPTABLE                         R8 K6 [{"LayoutOrder", "orientation"}]
       15 GETUPVAL                         R9 4
       16 NAMECALL                         R9 R9 K7 ["getNextOrder"]
       18 CALL                             R9 1 1
       19 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R9 R9 K8 ["Enums"]
       24 GETTABLEKS                       R9 R9 K9 ["DividerOrientation"]
       26 GETTABLEKS                       R9 R9 K10 ["Horizontal"]
       28 SETTABLEKS                       R9 R8 K5 ["orientation"]
       30 CALL                             R6 2 1
       31 SETTABLE                         R6 R4 R5
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K2 ["createElement"]
       36 GETUPVAL                         R6 5
       37 DUPTABLE                         R7 K15 [{"LayoutOrder", "Label", "Value", "Trailing", "TestId"}]
       38 GETUPVAL                         R8 4
       39 NAMECALL                         R8 R8 K7 ["getNextOrder"]
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       44 SETTABLEKS                       R1 R7 K11 ["Label"]
       46 SETTABLEKS                       R2 R7 K12 ["Value"]
       48 SETTABLEKS                       R3 R7 K13 ["Trailing"]
       50 LOADK                            R8 K16 ["details-drawer-row-%*"]
       51 MOVE                             R10 R0
       52 NAMECALL                         R8 R8 K1 ["format"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K14 ["TestId"]
       57 CALL                             R5 2 1
       58 SETTABLE                         R5 R4 R0
       59 LOADB                            R4 1
       60 SETUPVAL                         R4 0
       61 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETIMPORT                        R3 K4 [Vector2.zero]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETTABLEKS                       R7 R2 K5 ["Y"]
       17 JUMPIFLT                         R7 R4 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 JUMPIFNOT                        R6 ; [+4]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K6 ["ScrollingBarWidth"]
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 GETTABLEKS                       R9 R2 K7 ["X"]
       29 SUB                              R8 R9 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K8 ["createElement"]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K9 ["ScrollView"]
       36 DUPTABLE                         R11 K19 [{["LayoutOrder"], ["tag"] = "fill size-full-0", ["layout"], ["scroll"], ["onAbsoluteWindowSizeChanged"], ["onAbsoluteCanvasSizeChanged"], ["testId"] = "details-drawer-body"}]
       37 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
       39 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       41 DUPTABLE                         R12 K21 [{"FillDirection"}]
       42 GETIMPORT                        R13 K24 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R13 R12 K20 ["FillDirection"]
       46 SETTABLEKS                       R12 R11 K13 ["layout"]
       48 DUPTABLE                         R12 K28 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       49 GETIMPORT                        R13 K30 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R13 R12 K25 ["AutomaticCanvasSize"]
       53 GETIMPORT                        R13 K33 [UDim2.fromOffset]
       55 FASTCALL2K                       MATH_MAX R8 K34 ; [+5]
       57 MOVE                             R15 R8
       58 LOADK                            R16 K34 [180]
       59 GETIMPORT                        R14 K37 [math.max]
       61 CALL                             R14 2 1
       62 LOADN                            R15 0
       63 CALL                             R13 2 1
       64 SETTABLEKS                       R13 R12 K26 ["CanvasSize"]
       66 GETIMPORT                        R13 K39 [Enum.ScrollingDirection.XY]
       68 SETTABLEKS                       R13 R12 K27 ["ScrollingDirection"]
       70 SETTABLEKS                       R12 R11 K14 ["scroll"]
       72 NEWCLOSURE                       R12 P0
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R12 R11 K15 ["onAbsoluteWindowSizeChanged"]
       76 NEWCLOSURE                       R12 P1
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R12 R11 K16 ["onAbsoluteCanvasSizeChanged"]
       80 DUPTABLE                         R12 K41 [{"Inner"}]
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R13 R13 K8 ["createElement"]
       84 GETUPVAL                         R14 3
       85 GETTABLEKS                       R14 R14 K42 ["View"]
       87 DUPTABLE                         R15 K46 [{["tag"] = "col size-full-0 auto-y", ["testId"] = "details-drawer-content", ["sizeConstraint"]}]
       88 DUPTABLE                         R16 K48 [{"MinSize"}]
       89 GETIMPORT                        R17 K49 [Vector2.new]
       91 LOADN                            R18 180
       92 LOADN                            R19 0
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K47 ["MinSize"]
       96 SETTABLEKS                       R16 R15 K45 ["sizeConstraint"]
       98 DUPTABLE                         R16 K54 [{"Media", "AssetHeader", "ThumbnailDivider", "Content"}]
       99 GETUPVAL                         R17 1
      100 GETTABLEKS                       R17 R17 K8 ["createElement"]
      102 GETUPVAL                         R18 3
      103 GETTABLEKS                       R18 R18 K42 ["View"]
      105 DUPTABLE                         R19 K57 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-small bg-surface-0", ["testId"] = "details-drawer-media"}]
      106 NAMECALL                         R20 R1 K58 ["getNextOrder"]
      108 CALL                             R20 1 1
      109 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      111 DUPTABLE                         R20 K61 [{"Thumbnail", "Preview"}]
      112 GETUPVAL                         R21 1
      113 GETTABLEKS                       R21 R21 K8 ["createElement"]
      115 GETUPVAL                         R22 3
      116 GETTABLEKS                       R22 R22 K42 ["View"]
      118 DUPTABLE                         R23 K64 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      119 DUPTABLE                         R24 K65 [{"Content"}]
      120 GETTABLEKS                       R25 R0 K59 ["Thumbnail"]
      122 SETTABLEKS                       R25 R24 K53 ["Content"]
      124 CALL                             R21 3 1
      125 SETTABLEKS                       R21 R20 K59 ["Thumbnail"]
      127 GETTABLEKS                       R22 R0 K66 ["MediaPreview"]
      129 JUMPIFNOT                        R22 ; [+14]
      130 GETUPVAL                         R21 1
      131 GETTABLEKS                       R21 R21 K8 ["createElement"]
      133 GETUPVAL                         R22 3
      134 GETTABLEKS                       R22 R22 K42 ["View"]
      136 DUPTABLE                         R23 K69 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y padding-x-xsmall"}]
      137 DUPTABLE                         R24 K65 [{"Content"}]
      138 GETTABLEKS                       R25 R0 K66 ["MediaPreview"]
      140 SETTABLEKS                       R25 R24 K53 ["Content"]
      142 CALL                             R21 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R21
      145 SETTABLEKS                       R21 R20 K60 ["Preview"]
      147 CALL                             R17 3 1
      148 SETTABLEKS                       R17 R16 K50 ["Media"]
      150 GETTABLEKS                       R18 R0 K51 ["AssetHeader"]
      152 JUMPIFNOT                        R18 ; [+19]
      153 GETUPVAL                         R17 1
      154 GETTABLEKS                       R17 R17 K8 ["createElement"]
      156 GETUPVAL                         R18 3
      157 GETTABLEKS                       R18 R18 K42 ["View"]
      159 DUPTABLE                         R19 K70 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      160 NAMECALL                         R20 R1 K58 ["getNextOrder"]
      162 CALL                             R20 1 1
      163 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      165 DUPTABLE                         R20 K65 [{"Content"}]
      166 GETTABLEKS                       R21 R0 K51 ["AssetHeader"]
      168 SETTABLEKS                       R21 R20 K53 ["Content"]
      170 CALL                             R17 3 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R17
      173 SETTABLEKS                       R17 R16 K51 ["AssetHeader"]
      175 GETUPVAL                         R17 1
      176 GETTABLEKS                       R17 R17 K8 ["createElement"]
      178 GETUPVAL                         R18 3
      179 GETTABLEKS                       R18 R18 K71 ["Divider"]
      181 DUPTABLE                         R19 K73 [{"LayoutOrder", "orientation"}]
      182 NAMECALL                         R20 R1 K58 ["getNextOrder"]
      184 CALL                             R20 1 1
      185 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      187 GETUPVAL                         R20 3
      188 GETTABLEKS                       R20 R20 K74 ["Enums"]
      190 GETTABLEKS                       R20 R20 K75 ["DividerOrientation"]
      192 GETTABLEKS                       R20 R20 K76 ["Horizontal"]
      194 SETTABLEKS                       R20 R19 K72 ["orientation"]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K52 ["ThumbnailDivider"]
      199 GETUPVAL                         R17 1
      200 GETTABLEKS                       R17 R17 K8 ["createElement"]
      202 GETUPVAL                         R18 3
      203 GETTABLEKS                       R18 R18 K42 ["View"]
      205 DUPTABLE                         R19 K78 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"] = "details-drawer-rows"}]
      206 NAMECALL                         R20 R1 K58 ["getNextOrder"]
      208 CALL                             R20 1 1
      209 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      211 GETTABLEKS                       R20 R0 K79 ["children"]
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K53 ["Content"]
      216 CALL                             R13 3 1
      217 SETTABLEKS                       R13 R12 K40 ["Inner"]
      219 CALL                             R9 3 -1
      220 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["StyleConstants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["Util"]
       53 GETTABLEKS                       R7 R7 K16 ["LayoutOrderIterator"]
       55 NEWTABLE                         R8 16 0
       57 LOADN                            R11 164
       58 GETTABLEKS                       R12 R5 K17 ["ListThumbnailScale"]
       60 MUL                              R10 R11 R12
       61 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       62 GETIMPORT                        R9 K20 [math.floor]
       64 CALL                             R9 1 1
       65 SETTABLEKS                       R9 R8 K21 ["THUMBNAIL_ICON_SIZE"]
       67 DUPCLOSURE                       R9 K22 [PROTO_0]
       68 SETTABLEKS                       R9 R8 K23 ["toDateTime"]
       70 DUPCLOSURE                       R9 K24 [PROTO_1]
       71 SETTABLEKS                       R9 R8 K25 ["formatDuration"]
       73 DUPCLOSURE                       R9 K26 [PROTO_2]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R9 R8 K27 ["ActionButton"]
       78 DUPCLOSURE                       R9 K28 [PROTO_3]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R10 K29 [PROTO_6]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R10 R8 K30 ["Section"]
       86 DUPCLOSURE                       R10 K31 [PROTO_7]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R10 R8 K32 ["ThumbnailSquare"]
       91 DUPCLOSURE                       R10 K33 [PROTO_8]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R10 R8 K34 ["FontThumbnailStrip"]
       96 DUPCLOSURE                       R10 K35 [PROTO_9]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R10 R8 K36 ["LoadingRows"]
      101 DUPCLOSURE                       R10 K37 [PROTO_12]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R10 R8 K38 ["createRowList"]
      108 DUPCLOSURE                       R10 K39 [PROTO_15]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R10 R8 K40 ["DrawerBody"]
      115 RETURN                           R8 1
