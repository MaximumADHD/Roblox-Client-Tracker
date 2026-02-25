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
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R8 0 1
       37 GETTABLEKS                       R9 R0 K3 ["page"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K5 ["createElement"]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K6 ["ScrollView"]
       48 DUPTABLE                         R8 K12 [{"tag", "scrollingFrameRef", "layout", "scroll", "LayoutOrder"}]
       49 LOADK                            R9 K13 ["size-full-full"]
       50 SETTABLEKS                       R9 R8 K7 ["tag"]
       52 SETTABLEKS                       R4 R8 K8 ["scrollingFrameRef"]
       54 DUPTABLE                         R9 K18 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
       55 GETIMPORT                        R10 K21 [Enum.HorizontalAlignment.Left]
       57 SETTABLEKS                       R10 R9 K14 ["HorizontalAlignment"]
       59 GETIMPORT                        R10 K23 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R10 R9 K15 ["FillDirection"]
       63 GETIMPORT                        R10 K24 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R10 R9 K16 ["SortOrder"]
       67 GETIMPORT                        R10 K27 [Enum.UIFlexAlignment.Fill]
       69 SETTABLEKS                       R10 R9 K17 ["HorizontalFlex"]
       71 SETTABLEKS                       R9 R8 K9 ["layout"]
       73 DUPTABLE                         R9 K32 [{"AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "CanvasSize"}]
       74 GETIMPORT                        R10 K35 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R10 R9 K28 ["AutomaticCanvasSize"]
       78 GETIMPORT                        R10 K36 [Enum.ScrollingDirection.Y]
       80 SETTABLEKS                       R10 R9 K29 ["ScrollingDirection"]
       82 GETIMPORT                        R10 K39 [Enum.ScrollBarInset.None]
       84 SETTABLEKS                       R10 R9 K30 ["VerticalScrollBarInset"]
       86 GETIMPORT                        R10 K42 [UDim2.fromScale]
       88 LOADN                            R11 0
       89 LOADN                            R12 0
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K31 ["CanvasSize"]
       93 SETTABLEKS                       R9 R8 K10 ["scroll"]
       95 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       97 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       99 DUPTABLE                         R9 K44 [{"View"}]
      100 GETUPVAL                         R11 3
      101 GETTABLEKS                       R10 R11 K5 ["createElement"]
      103 GETUPVAL                         R12 5
      104 GETTABLEKS                       R11 R12 K43 ["View"]
      106 DUPTABLE                         R12 K45 [{"tag"}]
      107 LOADK                            R13 K46 ["size-0-0 auto-xy col flex-x-fill align-x-left padding-left-medium padding-right-medium padding-top-small gap-small"]
      108 SETTABLEKS                       R13 R12 K7 ["tag"]
      110 MOVE                             R13 R5
      111 CALL                             R10 3 1
      112 SETTABLEKS                       R10 R9 K43 ["View"]
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R8 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R8 K14 ["Components"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["PlaceVersionGroup"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R3 K16 ["createNextOrder"]
       50 GETTABLEKS                       R10 R3 K17 ["createUniqueKey"]
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R13 R0 K13 ["Src"]
       56 GETTABLEKS                       R12 R13 K18 ["Types"]
       58 CALL                             R11 1 1
       59 DUPCLOSURE                       R12 K19 [PROTO_3]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 RETURN                           R12 1
