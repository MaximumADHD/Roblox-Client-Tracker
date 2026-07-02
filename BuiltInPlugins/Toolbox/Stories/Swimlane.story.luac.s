PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Example"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
        0 DUPTABLE                         R2 K5 [{[1], ["Image"] = "rbxassetid://6002241241", ["Key"], ["Title"]}]
        1 GETIMPORT                        R3 K8 [Color3.fromRGB]
        3 GETIMPORT                        R4 K11 [math.random]
        5 LOADN                            R5 255
        6 CALL                             R4 1 1
        7 GETIMPORT                        R5 K11 [math.random]
        9 LOADN                            R6 255
       10 CALL                             R5 1 1
       11 GETIMPORT                        R6 K11 [math.random]
       13 LOADN                            R7 255
       14 CALL                             R6 1 -1
       15 CALL                             R3 -1 1
       16 SETTABLEKS                       R3 R2 K0 ["BackgroundColor"]
       18 SETTABLEKS                       R0 R2 K3 ["Key"]
       20 SETTABLEKS                       R1 R2 K4 ["Title"]
       22 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["See All"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["Categorization"]
       22 GETTABLEKS                       R3 R3 K10 ["Swimlane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Stories"]
       29 GETTABLEKS                       R4 R4 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Src"]
       36 GETTABLEKS                       R5 R5 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K9 ["Categorization"]
       40 GETTABLEKS                       R5 R5 K13 ["IconTile"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K15 [PROTO_2]
       48 DUPTABLE                         R7 K19 [{["summary"] = "A section with a title, horizontal list, and optional 'see all' button", ["stories"]}]
       49 NEWTABLE                         R8 0 2
       51 DUPTABLE                         R9 K24 [{["name"] = "Simple example", ["summary"] = "a general example with data", ["story"]}]
       52 DUPTABLE                         R11 K32 [{["Data"], ["Total"] = 123, ["Title"] = "Just a bunch of Frames", ["OnClickSeeAll"], ["OnRenderItem"]}]
       53 NEWTABLE                         R12 0 4
       55 LOADK                            R13 K33 ["This"]
       56 LOADK                            R14 K34 ["is"]
       57 LOADK                            R15 K35 ["a"]
       58 LOADK                            R16 K36 ["test"]
       59 SETLIST                          R12 R13 4 [1]
       61 SETTABLEKS                       R12 R11 K25 ["Data"]
       63 DUPCLOSURE                       R12 K37 [PROTO_3]
       64 SETTABLEKS                       R12 R11 K30 ["OnClickSeeAll"]
       66 DUPCLOSURE                       R12 K38 [PROTO_4]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R12 R11 K31 ["OnRenderItem"]
       70 NEWCLOSURE                       R10 P4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R11
       75 SETTABLEKS                       R10 R9 K23 ["story"]
       77 DUPTABLE                         R10 K41 [{["name"] = "Icon Tiles", ["summary"] = "Tiles that represent products to buy", ["story"]}]
       78 DUPTABLE                         R12 K44 [{["Data"], ["Title"] = "Check Out This Hair!", ["Total"] = 12341115, ["OnClickSeeAll"], ["OnRenderItem"]}]
       79 NEWTABLE                         R13 0 10
       81 MOVE                             R14 R6
       82 LOADK                            R15 K45 ["1"]
       83 LOADK                            R16 K46 ["Blonde Hair"]
       84 CALL                             R14 2 1
       85 MOVE                             R15 R6
       86 LOADK                            R16 K47 ["2"]
       87 LOADK                            R17 K48 ["Cool Blonde Hair"]
       88 CALL                             R15 2 1
       89 MOVE                             R16 R6
       90 LOADK                            R17 K49 ["3"]
       91 LOADK                            R18 K50 ["Original Blonde"]
       92 CALL                             R16 2 1
       93 MOVE                             R17 R6
       94 LOADK                            R18 K51 ["4"]
       95 LOADK                            R19 K52 ["Blonde"]
       96 CALL                             R17 2 1
       97 MOVE                             R18 R6
       98 LOADK                            R19 K53 ["5"]
       99 LOADK                            R20 K54 ["Blondie"]
      100 CALL                             R18 2 1
      101 MOVE                             R19 R6
      102 LOADK                            R20 K55 ["6"]
      103 LOADK                            R21 K56 ["Bulond"]
      104 CALL                             R19 2 1
      105 MOVE                             R20 R6
      106 LOADK                            R21 K57 ["7"]
      107 LOADK                            R22 K58 ["Blund"]
      108 CALL                             R20 2 1
      109 MOVE                             R21 R6
      110 LOADK                            R22 K59 ["8"]
      111 LOADK                            R23 K60 ["Real Blonde"]
      112 CALL                             R21 2 1
      113 MOVE                             R22 R6
      114 LOADK                            R23 K61 ["9"]
      115 LOADK                            R24 K62 ["Blond"]
      116 CALL                             R22 2 1
      117 MOVE                             R23 R6
      118 LOADK                            R24 K63 ["10"]
      119 LOADK                            R25 K52 ["Blonde"]
      120 CALL                             R23 2 1
      121 SETLIST                          R13 R14 10 [1]
      123 SETTABLEKS                       R13 R12 K25 ["Data"]
      125 DUPCLOSURE                       R13 K64 [PROTO_5]
      126 SETTABLEKS                       R13 R12 K30 ["OnClickSeeAll"]
      128 DUPCLOSURE                       R13 K65 [PROTO_7]
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R13 R12 K31 ["OnRenderItem"]
      133 NEWCLOSURE                       R11 P4
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R12
      138 SETTABLEKS                       R11 R10 K23 ["story"]
      140 SETLIST                          R8 R9 2 [1]
      142 SETTABLEKS                       R8 R7 K18 ["stories"]
      144 RETURN                           R7 1
