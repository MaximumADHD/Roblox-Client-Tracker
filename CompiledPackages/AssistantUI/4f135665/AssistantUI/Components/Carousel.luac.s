PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["size"]
        8 GETTABLEKS                       R4 R0 K4 ["imagePadding"]
       10 ORK                              R3 R4 K3 [0]
       11 GETTABLEKS                       R5 R1 K5 ["Radius"]
       13 GETTABLEKS                       R4 R5 K6 ["Small"]
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K11 [{"tag", "Size", "onActivated", "LayoutOrder"}]
       18 LOADK                            R8 K12 ["bg-shift-300 radius-small Component-CarouselItem"]
       19 SETTABLEKS                       R8 R7 K7 ["tag"]
       21 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R2
       25 CALL                             R8 2 1
       26 SETTABLEKS                       R8 R7 K8 ["Size"]
       28 GETTABLEKS                       R8 R0 K9 ["onActivated"]
       30 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       32 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       34 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       36 DUPTABLE                         R8 K19 [{"InnerBorder", "Image", "UIPadding"}]
       37 GETTABLEKS                       R9 R0 K20 ["selected"]
       39 JUMPIFNOT                        R9 ; [+55]
       40 GETUPVAL                         R9 1
       41 GETUPVAL                         R10 2
       42 DUPTABLE                         R11 K23 [{"tag", "Size", "ZIndex", "testId"}]
       43 LOADK                            R12 K24 ["anchor-center-center position-center-center"]
       44 SETTABLEKS                       R12 R11 K7 ["tag"]
       46 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       48 SUBK                             R13 R2 K25 [4]
       49 SUBK                             R14 R2 K25 [4]
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K8 ["Size"]
       53 LOADN                            R12 2
       54 SETTABLEKS                       R12 R11 K21 ["ZIndex"]
       56 GETUPVAL                         R14 3
       57 GETTABLEKS                       R13 R14 K26 ["CarouselItem"]
       59 GETTABLEKS                       R12 R13 K27 ["Selected"]
       61 SETTABLEKS                       R12 R11 K22 ["testId"]
       63 DUPTABLE                         R12 K30 [{"UICorner", "UIStroke"}]
       64 GETUPVAL                         R13 1
       65 LOADK                            R14 K28 ["UICorner"]
       66 DUPTABLE                         R15 K32 [{"CornerRadius"}]
       67 GETIMPORT                        R16 K35 [UDim.new]
       69 LOADN                            R17 0
       70 SUBK                             R18 R4 K36 [2]
       71 CALL                             R16 2 1
       72 SETTABLEKS                       R16 R15 K31 ["CornerRadius"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K28 ["UICorner"]
       77 GETUPVAL                         R13 1
       78 LOADK                            R14 K29 ["UIStroke"]
       79 DUPTABLE                         R15 K39 [{"Thickness", "Color"}]
       80 LOADN                            R16 2
       81 SETTABLEKS                       R16 R15 K37 ["Thickness"]
       83 GETIMPORT                        R16 K41 [Color3.new]
       85 LOADN                            R17 1
       86 LOADN                            R18 1
       87 LOADN                            R19 1
       88 CALL                             R16 3 1
       89 SETTABLEKS                       R16 R15 K38 ["Color"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K29 ["UIStroke"]
       94 CALL                             R9 3 1
       95 SETTABLEKS                       R9 R8 K16 ["InnerBorder"]
       97 GETUPVAL                         R9 1
       98 GETUPVAL                         R10 4
       99 DUPTABLE                         R11 K42 [{"tag", "Image"}]
      100 LOADK                            R12 K43 ["size-full-full radius-small anchor-center-center position-center-center"]
      101 SETTABLEKS                       R12 R11 K7 ["tag"]
      103 GETTABLEKS                       R12 R0 K44 ["uri"]
      105 SETTABLEKS                       R12 R11 K17 ["Image"]
      107 CALL                             R9 2 1
      108 SETTABLEKS                       R9 R8 K17 ["Image"]
      110 GETUPVAL                         R9 1
      111 LOADK                            R10 K18 ["UIPadding"]
      112 DUPTABLE                         R11 K49 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      113 GETIMPORT                        R12 K35 [UDim.new]
      115 LOADN                            R13 0
      116 MOVE                             R14 R3
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K45 ["PaddingLeft"]
      120 GETIMPORT                        R12 K35 [UDim.new]
      122 LOADN                            R13 0
      123 MOVE                             R14 R3
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K46 ["PaddingRight"]
      127 GETIMPORT                        R12 K35 [UDim.new]
      129 LOADN                            R13 0
      130 MOVE                             R14 R3
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K47 ["PaddingTop"]
      134 GETIMPORT                        R12 K35 [UDim.new]
      136 LOADN                            R13 0
      137 MOVE                             R14 R3
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K48 ["PaddingBottom"]
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K18 ["UIPadding"]
      144 CALL                             R5 3 -1
      145 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["canSelect"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K1 ["onActivated"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R0 R1 K1 ["onActivated"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K8 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection", "ScrollingEnabled", "HorizontalScrollBarInset", "VerticalScrollBarInset", "scrollBarVisibility"}]
        1 GETIMPORT                        R1 K11 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K13 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K16 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K17 ["height"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       18 GETIMPORT                        R1 K18 [Enum.ScrollingDirection.X]
       20 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       22 LOADB                            R1 1
       23 SETTABLEKS                       R1 R0 K4 ["ScrollingEnabled"]
       25 GETIMPORT                        R1 K21 [Enum.ScrollBarInset.ScrollBar]
       27 SETTABLEKS                       R1 R0 K5 ["HorizontalScrollBarInset"]
       29 GETIMPORT                        R1 K23 [Enum.ScrollBarInset.None]
       31 SETTABLEKS                       R1 R0 K6 ["VerticalScrollBarInset"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K24 ["Enums"]
       36 GETTABLEKS                       R2 R3 K25 ["Visibility"]
       38 GETTABLEKS                       R1 R2 K26 ["Auto"]
       40 SETTABLEKS                       R1 R0 K7 ["scrollBarVisibility"]
       42 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADN                            R3 1
        6 CALL                             R2 1 2
        7 NEWTABLE                         R4 0 0
        9 GETTABLEKS                       R5 R0 K1 ["items"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 2
       16 GETUPVAL                         R13 3
       17 DUPTABLE                         R14 K9 [{"key", "uri", "size", "imagePadding", "selected", "onActivated", "LayoutOrder"}]
       18 GETTABLEKS                       R15 R9 K3 ["uri"]
       20 SETTABLEKS                       R15 R14 K2 ["key"]
       22 GETTABLEKS                       R15 R9 K3 ["uri"]
       24 SETTABLEKS                       R15 R14 K3 ["uri"]
       26 GETTABLEKS                       R15 R0 K10 ["height"]
       28 SETTABLEKS                       R15 R14 K4 ["size"]
       30 GETTABLEKS                       R15 R0 K5 ["imagePadding"]
       32 SETTABLEKS                       R15 R14 K5 ["imagePadding"]
       34 GETTABLEKS                       R16 R0 K11 ["canSelect"]
       36 JUMPIFNOT                        R16 ; [+5]
       37 JUMPIFEQ                         R8 R2 ; [+2]
       39 LOADB                            R15 0 +1
       40 LOADB                            R15 1
       41 JUMP                             ; [+1]
       42 LOADB                            R15 0
       43 SETTABLEKS                       R15 R14 K6 ["selected"]
       45 NEWCLOSURE                       R15 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R9
       51 SETTABLEKS                       R15 R14 K7 ["onActivated"]
       53 MOVE                             R15 R1
       54 CALL                             R15 0 1
       55 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       57 CALL                             R12 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R10 K14 [table.insert]
       61 CALL                             R10 -1 0
       62 FORGLOOP                         R5 2 ; [-49]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R5 R6 K15 ["useMemo"]
       67 NEWCLOSURE                       R6 P1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U4
       70 NEWTABLE                         R7 0 1
       72 GETTABLEKS                       R8 R0 K10 ["height"]
       74 SETLIST                          R7 R8 1 [1]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 2
       78 GETUPVAL                         R7 5
       79 DUPTABLE                         R8 K18 [{"tag", "scroll", "LayoutOrder"}]
       80 LOADK                            R9 K19 ["size-full-0 auto-y Component-Carousel"]
       81 SETTABLEKS                       R9 R8 K16 ["tag"]
       83 SETTABLEKS                       R5 R8 K17 ["scroll"]
       85 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       87 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       89 DUPTABLE                         R9 K21 [{"Container"}]
       90 GETUPVAL                         R10 2
       91 GETUPVAL                         R11 6
       92 DUPTABLE                         R12 K23 [{"tag", "testId"}]
       93 LOADK                            R13 K24 ["row auto-xy gap-small padding-bottom-xsmall"]
       94 SETTABLEKS                       R13 R12 K16 ["tag"]
       96 GETUPVAL                         R15 7
       97 GETTABLEKS                       R14 R15 K25 ["Carousel"]
       99 GETTABLEKS                       R13 R14 K20 ["Container"]
      101 SETTABLEKS                       R13 R12 K22 ["testId"]
      103 MOVE                             R13 R4
      104 CALL                             R10 3 1
      105 SETTABLEKS                       R10 R9 K20 ["Container"]
      107 CALL                             R6 3 -1
      108 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["Image"]
       37 GETTABLEKS                       R6 R1 K13 ["ScrollView"]
       39 GETTABLEKS                       R7 R1 K14 ["View"]
       41 GETTABLEKS                       R8 R3 K15 ["createNextOrder"]
       43 GETTABLEKS                       R9 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R10 K17 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R11 K18 [PROTO_3]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 RETURN                           R11 1
