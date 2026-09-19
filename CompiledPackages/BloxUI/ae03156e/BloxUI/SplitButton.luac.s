PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["ImageLabel"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K14 ["SplitButton"]
       28 DUPTABLE                         R11 K21 [{["text"] = "Action", ["icon"] = "", ["onActivated"], ["onArrowActivated"]}]
       29 DUPCLOSURE                       R12 K22 [PROTO_0]
       30 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       32 DUPCLOSURE                       R12 K23 [PROTO_1]
       33 SETTABLEKS                       R12 R11 K20 ["onArrowActivated"]
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R5
       38 NEWTABLE                         R14 4 3
       40 LOADK                            R18 K14 ["SplitButton"]
       41 SETTABLEKS                       R18 R14 K24 ["Name"]
       43 LOADK                            R18 K25 ["split-button"]
       44 SETTABLEKS                       R18 R14 K26 ["Tags"]
       46 MOVE                             R18 R3
       47 LOADK                            R19 K27 ["api.childOrder"]
       48 CALL                             R18 1 1
       49 SETTABLEKS                       R18 R14 K28 ["LayoutOrder"]
       51 MOVE                             R15 R7
       52 NEWTABLE                         R16 4 1
       54 LOADK                            R18 K29 ["SplitMain"]
       55 SETTABLEKS                       R18 R16 K24 ["Name"]
       57 LOADK                            R18 K30 ["split-main"]
       58 SETTABLEKS                       R18 R16 K26 ["Tags"]
       60 MOVE                             R18 R3
       61 LOADK                            R19 K31 ["fn() onActivated()"]
       62 CALL                             R18 1 1
       63 SETTABLEKS                       R18 R16 K32 ["OnActivated"]
       65 MOVE                             R17 R5
       66 NEWTABLE                         R18 2 2
       68 LOADK                            R21 K33 ["SplitMainContent"]
       69 SETTABLEKS                       R21 R18 K24 ["Name"]
       71 LOADK                            R21 K34 ["box row gap-4 auto-xy"]
       72 SETTABLEKS                       R21 R18 K26 ["Tags"]
       74 MOVE                             R19 R6
       75 DUPTABLE                         R20 K39 [{["Name"] = "SplitMainIcon", ["Tags"] = "button-icon", ["Image"], ["Visible"]}]
       76 MOVE                             R21 R3
       77 LOADK                            R22 K17 ["icon"]
       78 CALL                             R21 1 1
       79 SETTABLEKS                       R21 R20 K37 ["Image"]
       81 MOVE                             R21 R3
       82 LOADK                            R22 K40 ["icon ~= ''"]
       83 CALL                             R21 1 1
       84 SETTABLEKS                       R21 R20 K38 ["Visible"]
       86 CALL                             R19 1 1
       87 MOVE                             R20 R8
       88 DUPTABLE                         R21 K44 [{["Name"] = "SplitMainLabel", ["Tags"] = "button-label", ["Text"]}]
       89 MOVE                             R22 R3
       90 LOADK                            R23 K15 ["text"]
       91 CALL                             R22 1 1
       92 SETTABLEKS                       R22 R21 K43 ["Text"]
       94 CALL                             R20 1 -1
       95 SETLIST                          R18 R19 -1 [1]
       97 CALL                             R17 1 -1
       98 SETLIST                          R16 R17 -1 [1]
      100 CALL                             R15 1 1
      101 MOVE                             R16 R5
      102 DUPTABLE                         R17 K47 [{["Name"] = "SplitDivider", ["Tags"] = "split-divider"}]
      103 CALL                             R16 1 1
      104 MOVE                             R17 R7
      105 NEWTABLE                         R18 4 1
      107 LOADK                            R20 K48 ["SplitArrow"]
      108 SETTABLEKS                       R20 R18 K24 ["Name"]
      110 LOADK                            R20 K49 ["split-arrow"]
      111 SETTABLEKS                       R20 R18 K26 ["Tags"]
      113 MOVE                             R20 R3
      114 LOADK                            R21 K50 ["fn() onArrowActivated()"]
      115 CALL                             R20 1 1
      116 SETTABLEKS                       R20 R18 K32 ["OnActivated"]
      118 MOVE                             R19 R8
      119 DUPTABLE                         R20 K57 [{["Name"] = "SplitArrowLabel", ["Text"] = "▾", ["TextSize"] = 10, ["Position"], ["AnchorPoint"]}]
      120 GETIMPORT                        R21 K60 [UDim2.fromScale]
      122 LOADK                            R22 K61 [0.5]
      123 LOADK                            R23 K61 [0.5]
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K55 ["Position"]
      127 GETIMPORT                        R21 K64 [Vector2.new]
      129 LOADK                            R22 K61 [0.5]
      130 LOADK                            R23 K61 [0.5]
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K56 ["AnchorPoint"]
      134 CALL                             R19 1 -1
      135 SETLIST                          R18 R19 -1 [1]
      137 CALL                             R17 1 -1
      138 SETLIST                          R14 R15 -1 [1]
      140 CALL                             R13 1 -1
      141 SETLIST                          R12 R13 -1 [1]
      143 CALL                             R9 3 1
      144 RETURN                           R9 1
