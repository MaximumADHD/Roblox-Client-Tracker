PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Example"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["Example"]
       15 CALL                             R0 3 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K4 [{"BackgroundColor", "Image", "Key", "Title"}]
        1 GETIMPORT                        R3 K7 [Color3.fromRGB]
        3 GETIMPORT                        R4 K10 [math.random]
        5 LOADN                            R5 255
        6 CALL                             R4 1 1
        7 GETIMPORT                        R5 K10 [math.random]
        9 LOADN                            R6 255
       10 CALL                             R5 1 1
       11 GETIMPORT                        R6 K10 [math.random]
       13 LOADN                            R7 255
       14 CALL                             R6 1 -1
       15 CALL                             R3 -1 1
       16 SETTABLEKS                       R3 R2 K0 ["BackgroundColor"]
       18 LOADK                            R3 K11 ["rbxassetid://6002241241"]
       19 SETTABLEKS                       R3 R2 K1 ["Image"]
       21 SETTABLEKS                       R0 R2 K2 ["Key"]
       23 SETTABLEKS                       R1 R2 K3 ["Title"]
       25 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["See All"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextLabel"]
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Size", "Text"}]
        5 SETTABLEKS                       R0 R4 K2 ["LayoutOrder"]
        7 GETIMPORT                        R5 K8 [UDim2.new]
        9 LOADN                            R6 0
       10 LOADN                            R7 100
       11 LOADN                            R8 0
       12 LOADN                            R9 100
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K3 ["Size"]
       16 SETTABLEKS                       R1 R4 K4 ["Text"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["See All"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"LayoutOrder", "BackgroundColor", "Image", "Key", "Title", "Size", "OnClick"}]
        5 SETTABLEKS                       R0 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R1 K2 ["BackgroundColor"]
        9 SETTABLEKS                       R5 R4 K2 ["BackgroundColor"]
       11 GETTABLEKS                       R5 R1 K3 ["Image"]
       13 SETTABLEKS                       R5 R4 K3 ["Image"]
       15 GETTABLEKS                       R5 R1 K4 ["Key"]
       17 SETTABLEKS                       R5 R4 K4 ["Key"]
       19 GETTABLEKS                       R5 R1 K5 ["Title"]
       21 SETTABLEKS                       R5 R4 K5 ["Title"]
       23 GETIMPORT                        R5 K11 [UDim2.new]
       25 LOADN                            R6 0
       26 LOADN                            R7 90
       27 LOADN                            R8 0
       28 LOADN                            R9 105
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K6 ["Size"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R6 R0 K7 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["Categorization"]
       22 GETTABLEKS                       R3 R4 K10 ["Swimlane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Stories"]
       29 GETTABLEKS                       R4 R5 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R8 R0 K7 ["Src"]
       36 GETTABLEKS                       R7 R8 K8 ["Components"]
       38 GETTABLEKS                       R6 R7 K9 ["Categorization"]
       40 GETTABLEKS                       R5 R6 K13 ["IconTile"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K15 [PROTO_2]
       48 DUPTABLE                         R7 K18 [{"summary", "stories"}]
       49 LOADK                            R8 K19 ["A section with a title, horizontal list, and optional 'see all' button"]
       50 SETTABLEKS                       R8 R7 K16 ["summary"]
       52 NEWTABLE                         R8 0 2
       54 DUPTABLE                         R9 K22 [{"name", "summary", "story"}]
       55 LOADK                            R10 K23 ["Simple example"]
       56 SETTABLEKS                       R10 R9 K20 ["name"]
       58 LOADK                            R10 K24 ["a general example with data"]
       59 SETTABLEKS                       R10 R9 K16 ["summary"]
       61 DUPTABLE                         R11 K30 [{"Data", "Total", "Title", "OnClickSeeAll", "OnRenderItem"}]
       62 NEWTABLE                         R12 0 4
       64 LOADK                            R13 K31 ["This"]
       65 LOADK                            R14 K32 ["is"]
       66 LOADK                            R15 K33 ["a"]
       67 LOADK                            R16 K34 ["test"]
       68 SETLIST                          R12 R13 4 [1]
       70 SETTABLEKS                       R12 R11 K25 ["Data"]
       72 LOADN                            R12 123
       73 SETTABLEKS                       R12 R11 K26 ["Total"]
       75 LOADK                            R12 K35 ["Just a bunch of Frames"]
       76 SETTABLEKS                       R12 R11 K27 ["Title"]
       78 DUPCLOSURE                       R12 K36 [PROTO_3]
       79 SETTABLEKS                       R12 R11 K28 ["OnClickSeeAll"]
       81 DUPCLOSURE                       R12 K37 [PROTO_4]
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R12 R11 K29 ["OnRenderItem"]
       85 NEWCLOSURE                       R10 P4
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R10 R9 K21 ["story"]
       92 DUPTABLE                         R10 K22 [{"name", "summary", "story"}]
       93 LOADK                            R11 K38 ["Icon Tiles"]
       94 SETTABLEKS                       R11 R10 K20 ["name"]
       96 LOADK                            R11 K39 ["Tiles that represent products to buy"]
       97 SETTABLEKS                       R11 R10 K16 ["summary"]
       99 DUPTABLE                         R12 K40 [{"Data", "Title", "Total", "OnClickSeeAll", "OnRenderItem"}]
      100 NEWTABLE                         R13 0 10
      102 MOVE                             R14 R6
      103 LOADK                            R15 K41 ["1"]
      104 LOADK                            R16 K42 ["Blonde Hair"]
      105 CALL                             R14 2 1
      106 MOVE                             R15 R6
      107 LOADK                            R16 K43 ["2"]
      108 LOADK                            R17 K44 ["Cool Blonde Hair"]
      109 CALL                             R15 2 1
      110 MOVE                             R16 R6
      111 LOADK                            R17 K45 ["3"]
      112 LOADK                            R18 K46 ["Original Blonde"]
      113 CALL                             R16 2 1
      114 MOVE                             R17 R6
      115 LOADK                            R18 K47 ["4"]
      116 LOADK                            R19 K48 ["Blonde"]
      117 CALL                             R17 2 1
      118 MOVE                             R18 R6
      119 LOADK                            R19 K49 ["5"]
      120 LOADK                            R20 K50 ["Blondie"]
      121 CALL                             R18 2 1
      122 MOVE                             R19 R6
      123 LOADK                            R20 K51 ["6"]
      124 LOADK                            R21 K52 ["Bulond"]
      125 CALL                             R19 2 1
      126 MOVE                             R20 R6
      127 LOADK                            R21 K53 ["7"]
      128 LOADK                            R22 K54 ["Blund"]
      129 CALL                             R20 2 1
      130 MOVE                             R21 R6
      131 LOADK                            R22 K55 ["8"]
      132 LOADK                            R23 K56 ["Real Blonde"]
      133 CALL                             R21 2 1
      134 MOVE                             R22 R6
      135 LOADK                            R23 K57 ["9"]
      136 LOADK                            R24 K58 ["Blond"]
      137 CALL                             R22 2 1
      138 MOVE                             R23 R6
      139 LOADK                            R24 K59 ["10"]
      140 LOADK                            R25 K48 ["Blonde"]
      141 CALL                             R23 2 1
      142 SETLIST                          R13 R14 10 [1]
      144 SETTABLEKS                       R13 R12 K25 ["Data"]
      146 LOADK                            R13 K60 ["Check Out This Hair!"]
      147 SETTABLEKS                       R13 R12 K27 ["Title"]
      149 LOADK                            R13 K61 [12341115]
      150 SETTABLEKS                       R13 R12 K26 ["Total"]
      152 DUPCLOSURE                       R13 K62 [PROTO_5]
      153 SETTABLEKS                       R13 R12 K28 ["OnClickSeeAll"]
      155 DUPCLOSURE                       R13 K63 [PROTO_7]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R4
      158 SETTABLEKS                       R13 R12 K29 ["OnRenderItem"]
      160 NEWCLOSURE                       R11 P4
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R12
      165 SETTABLEKS                       R11 R10 K21 ["story"]
      167 SETLIST                          R8 R9 2 [1]
      169 SETTABLEKS                       R8 R7 K17 ["stories"]
      171 RETURN                           R7 1
