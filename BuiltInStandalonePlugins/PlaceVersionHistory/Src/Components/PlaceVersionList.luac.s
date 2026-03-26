PROTO_0:
        0 LENGTH                           R2 R1
        1 JUMPIFEQKN                       R2 K0 [0] ; [+3]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{"label", "group", "key", "LayoutOrder"}]
       12 SETTABLEKS                       R0 R6 K2 ["label"]
       14 SETTABLEKS                       R1 R6 K3 ["group"]
       16 GETUPVAL                         R7 3
       17 MOVE                             R8 R0
       18 CALL                             R7 1 1
       19 SETTABLEKS                       R7 R6 K4 ["key"]
       21 GETUPVAL                         R7 4
       22 CALL                             R7 0 1
       23 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       25 CALL                             R4 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R2 K9 [table.insert]
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 LOADNIL                          R2
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R7 4
       12 GETTABLEKS                       R4 R7 K0 ["page"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K1 ["date"]
       19 LOADK                            R11 K2 ["LL"]
       20 GETUPVAL                         R12 5
       21 NAMECALL                         R12 R12 K3 ["getLocale"]
       23 CALL                             R12 1 -1
       24 NAMECALL                         R9 R9 K4 ["FormatLocalTime"]
       26 CALL                             R9 -1 1
       27 JUMPIFEQ                         R9 R2 ; [+8]
       29 MOVE                             R10 R1
       30 MOVE                             R11 R2
       31 MOVE                             R12 R3
       32 CALL                             R10 2 0
       33 MOVE                             R2 R9
       34 NEWTABLE                         R3 0 0
       36 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       38 MOVE                             R11 R3
       39 MOVE                             R12 R8
       40 GETIMPORT                        R10 K7 [table.insert]
       42 CALL                             R10 2 0
       43 FORGLOOP                         R4 2 ; [-27]
       45 MOVE                             R4 R1
       46 MOVE                             R5 R2
       47 MOVE                             R6 R3
       48 CALL                             R4 2 0
       49 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 GETIMPORT                        R1 K3 [Vector2.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K4 ["CanvasPosition"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 GETIMPORT                        R1 K3 [Vector2.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K4 ["CanvasPosition"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K1 ["useRef"]
       11 LOADNIL                          R5
       12 CALL                             R4 1 1
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K3 ["page"]
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R6 R7 K4 ["FFlagPVHUpdatePageOnNotesEdit"]
       33 JUMPIFNOT                        R6 ; [+13]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R8 0 1
       41 GETTABLEKS                       R9 R0 K6 ["pageNumber"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 0
       46 JUMP                             ; [+12]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 1
       54 GETTABLEKS                       R9 R0 K3 ["page"]
       56 SETLIST                          R8 R9 1 [1]
       58 CALL                             R6 2 0
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R6 R7 K7 ["createElement"]
       62 GETUPVAL                         R8 6
       63 GETTABLEKS                       R7 R8 K8 ["ScrollView"]
       65 DUPTABLE                         R8 K14 [{"tag", "scrollingFrameRef", "layout", "scroll", "LayoutOrder"}]
       66 LOADK                            R9 K15 ["size-full-full"]
       67 SETTABLEKS                       R9 R8 K9 ["tag"]
       69 SETTABLEKS                       R4 R8 K10 ["scrollingFrameRef"]
       71 DUPTABLE                         R9 K20 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
       72 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Left]
       74 SETTABLEKS                       R10 R9 K16 ["HorizontalAlignment"]
       76 GETIMPORT                        R10 K25 [Enum.FillDirection.Vertical]
       78 SETTABLEKS                       R10 R9 K17 ["FillDirection"]
       80 GETIMPORT                        R10 K26 [Enum.SortOrder.LayoutOrder]
       82 SETTABLEKS                       R10 R9 K18 ["SortOrder"]
       84 GETIMPORT                        R10 K29 [Enum.UIFlexAlignment.Fill]
       86 SETTABLEKS                       R10 R9 K19 ["HorizontalFlex"]
       88 SETTABLEKS                       R9 R8 K11 ["layout"]
       90 DUPTABLE                         R9 K34 [{"AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "CanvasSize"}]
       91 GETIMPORT                        R10 K37 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R10 R9 K30 ["AutomaticCanvasSize"]
       95 GETIMPORT                        R10 K38 [Enum.ScrollingDirection.Y]
       97 SETTABLEKS                       R10 R9 K31 ["ScrollingDirection"]
       99 GETIMPORT                        R10 K41 [Enum.ScrollBarInset.None]
      101 SETTABLEKS                       R10 R9 K32 ["VerticalScrollBarInset"]
      103 GETIMPORT                        R10 K44 [UDim2.fromScale]
      105 LOADN                            R11 0
      106 LOADN                            R12 0
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K33 ["CanvasSize"]
      110 SETTABLEKS                       R9 R8 K12 ["scroll"]
      112 GETTABLEKS                       R9 R0 K13 ["LayoutOrder"]
      114 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      116 DUPTABLE                         R9 K46 [{"View"}]
      117 GETUPVAL                         R11 3
      118 GETTABLEKS                       R10 R11 K7 ["createElement"]
      120 GETUPVAL                         R12 6
      121 GETTABLEKS                       R11 R12 K45 ["View"]
      123 DUPTABLE                         R12 K47 [{"tag"}]
      124 LOADK                            R13 K48 ["size-0-0 auto-xy col flex-x-fill align-x-left padding-left-medium padding-right-medium padding-top-small gap-small"]
      125 SETTABLEKS                       R13 R12 K9 ["tag"]
      127 MOVE                             R13 R5
      128 CALL                             R10 3 1
      129 SETTABLEKS                       R10 R9 K45 ["View"]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R7 K13 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R9 R0 K16 ["Src"]
       50 GETTABLEKS                       R8 R9 K17 ["Components"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R8 K18 ["PlaceVersionGroup"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R4 K19 ["createNextOrder"]
       59 GETTABLEKS                       R11 R4 K20 ["createUniqueKey"]
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R14 R0 K16 ["Src"]
       65 GETTABLEKS                       R13 R14 K21 ["Types"]
       67 CALL                             R12 1 1
       68 DUPCLOSURE                       R13 K22 [PROTO_4]
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 RETURN                           R13 1
