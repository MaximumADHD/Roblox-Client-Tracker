PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked primary action"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["on close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 DUPTABLE                         R4 K8 [{["Title"] = "Alert Title", ["Description"] = "Alert Description", ["PrimaryAction"], ["OnClose"]}]
        8 DUPTABLE                         R5 K12 [{["Text"] = "Primary Action", ["OnClick"]}]
        9 DUPCLOSURE                       R6 K13 [PROTO_0]
       10 SETTABLEKS                       R6 R5 K11 ["OnClick"]
       12 SETTABLEKS                       R5 R4 K6 ["PrimaryAction"]
       14 DUPCLOSURE                       R5 K14 [PROTO_1]
       15 SETTABLEKS                       R5 R4 K7 ["OnClose"]
       17 MOVE                             R5 R0
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 LOADN                            R2 500
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K6 [{"AutomaticSize", "Layout", "HorizontalAlignment"}]
       14 GETIMPORT                        R6 K9 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       18 GETIMPORT                        R6 K12 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R6 R5 K4 ["Layout"]
       22 GETIMPORT                        R6 K14 [Enum.HorizontalAlignment.Left]
       24 SETTABLEKS                       R6 R5 K5 ["HorizontalAlignment"]
       26 DUPTABLE                         R6 K17 [{"Slider", "AlertPane"}]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K26 [{["Min"] = 150, ["Max"] = 500, ["Value"], ["Size"], ["OnValueChanged"], ["LayoutOrder"]}]
       32 SETTABLEKS                       R1 R9 K22 ["Value"]
       34 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       36 LOADN                            R11 250
       37 LOADN                            R12 32
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K23 ["Size"]
       41 SETTABLEKS                       R2 R9 K24 ["OnValueChanged"]
       43 NAMECALL                         R10 R0 K30 ["getNextOrder"]
       45 CALL                             R10 1 1
       46 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K15 ["Slider"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K2 ["createElement"]
       54 GETUPVAL                         R8 2
       55 DUPTABLE                         R9 K31 [{"AutomaticSize", "LayoutOrder", "Size"}]
       56 GETIMPORT                        R10 K33 [Enum.AutomaticSize.Y]
       58 SETTABLEKS                       R10 R9 K3 ["AutomaticSize"]
       60 NAMECALL                         R10 R0 K30 ["getNextOrder"]
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
       65 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       67 MOVE                             R11 R1
       68 LOADN                            R12 0
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K23 ["Size"]
       72 DUPTABLE                         R10 K35 [{"Alert"}]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R11 R11 K2 ["createElement"]
       76 GETUPVAL                         R12 4
       77 DUPTABLE                         R13 K42 [{["Title"] = "My very long alert title", ["ShortTitle"] = "Short title", ["Description"] = "My very very very very very long alert description"}]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K34 ["Alert"]
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K16 ["AlertPane"]
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K10 ["Alert"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R3 K11 ["Slider"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R3 K12 ["Pane"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Util"]
       46 GETTABLEKS                       R8 R8 K14 ["LayoutOrderIterator"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K15 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 DUPTABLE                         R9 K17 [{"stories"}]
       54 NEWTABLE                         R10 0 6
       56 DUPTABLE                         R11 K20 [{["name"] = "Alert", ["story"]}]
       57 GETTABLEKS                       R12 R2 K21 ["createElement"]
       59 MOVE                             R13 R8
       60 CALL                             R12 1 1
       61 SETTABLEKS                       R12 R11 K19 ["story"]
       63 DUPTABLE                         R12 K23 [{["name"] = "Warning", ["story"]}]
       64 GETTABLEKS                       R13 R2 K21 ["createElement"]
       66 MOVE                             R14 R8
       67 DUPTABLE                         R15 K25 [{["Style"] = "Warning"}]
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K19 ["story"]
       71 DUPTABLE                         R13 K27 [{["name"] = "Error", ["story"]}]
       72 GETTABLEKS                       R14 R2 K21 ["createElement"]
       74 MOVE                             R15 R8
       75 DUPTABLE                         R16 K28 [{["Style"] = "Error"}]
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K19 ["story"]
       79 DUPTABLE                         R14 K30 [{["name"] = "Success", ["story"]}]
       80 GETTABLEKS                       R15 R2 K21 ["createElement"]
       82 MOVE                             R16 R8
       83 DUPTABLE                         R17 K31 [{["Style"] = "Success"}]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K19 ["story"]
       87 DUPTABLE                         R15 K33 [{["name"] = "Info", ["story"]}]
       88 GETTABLEKS                       R16 R2 K21 ["createElement"]
       90 MOVE                             R17 R8
       91 DUPTABLE                         R18 K34 [{["Style"] = "Info"}]
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K19 ["story"]
       95 DUPTABLE                         R16 K36 [{["name"] = "Reactive sizing", ["story"]}]
       96 DUPCLOSURE                       R17 K37 [PROTO_3]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R17 R16 K19 ["story"]
      104 SETLIST                          R10 R11 6 [1]
      106 SETTABLEKS                       R10 R9 K16 ["stories"]
      108 RETURN                           R9 1
