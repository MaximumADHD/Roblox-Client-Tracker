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
        7 DUPTABLE                         R4 K6 [{"Title", "Description", "PrimaryAction", "OnClose"}]
        8 LOADK                            R5 K7 ["Alert Title"]
        9 SETTABLEKS                       R5 R4 K2 ["Title"]
       11 LOADK                            R5 K8 ["Alert Description"]
       12 SETTABLEKS                       R5 R4 K3 ["Description"]
       14 DUPTABLE                         R5 K11 [{"Text", "OnClick"}]
       15 LOADK                            R6 K12 ["Primary Action"]
       16 SETTABLEKS                       R6 R5 K9 ["Text"]
       18 DUPCLOSURE                       R6 K13 [PROTO_0]
       19 SETTABLEKS                       R6 R5 K10 ["OnClick"]
       21 SETTABLEKS                       R5 R4 K4 ["PrimaryAction"]
       23 DUPCLOSURE                       R5 K14 [PROTO_1]
       24 SETTABLEKS                       R5 R4 K5 ["OnClose"]
       26 MOVE                             R5 R0
       27 CALL                             R3 2 -1
       28 CALL                             R1 -1 -1
       29 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 LOADN                            R2 244
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
       31 DUPTABLE                         R9 K24 [{"Min", "Max", "Value", "Size", "OnValueChanged", "LayoutOrder"}]
       32 LOADN                            R10 150
       33 SETTABLEKS                       R10 R9 K18 ["Min"]
       35 LOADN                            R10 244
       36 SETTABLEKS                       R10 R9 K19 ["Max"]
       38 SETTABLEKS                       R1 R9 K20 ["Value"]
       40 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       42 LOADN                            R11 250
       43 LOADN                            R12 32
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K21 ["Size"]
       47 SETTABLEKS                       R2 R9 K22 ["OnValueChanged"]
       49 NAMECALL                         R10 R0 K28 ["getNextOrder"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K15 ["Slider"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K2 ["createElement"]
       60 GETUPVAL                         R8 2
       61 DUPTABLE                         R9 K29 [{"AutomaticSize", "LayoutOrder", "Size"}]
       62 GETIMPORT                        R10 K31 [Enum.AutomaticSize.Y]
       64 SETTABLEKS                       R10 R9 K3 ["AutomaticSize"]
       66 NAMECALL                         R10 R0 K28 ["getNextOrder"]
       68 CALL                             R10 1 1
       69 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
       71 GETIMPORT                        R10 K27 [UDim2.fromOffset]
       73 MOVE                             R11 R1
       74 LOADN                            R12 0
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K21 ["Size"]
       78 DUPTABLE                         R10 K33 [{"Alert"}]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K2 ["createElement"]
       82 GETUPVAL                         R12 4
       83 DUPTABLE                         R13 K37 [{"Title", "ShortTitle", "Description"}]
       84 LOADK                            R14 K38 ["My very long alert title"]
       85 SETTABLEKS                       R14 R13 K34 ["Title"]
       87 LOADK                            R14 K39 ["Short title"]
       88 SETTABLEKS                       R14 R13 K35 ["ShortTitle"]
       90 LOADK                            R14 K40 ["My very very very very very long alert description"]
       91 SETTABLEKS                       R14 R13 K36 ["Description"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K32 ["Alert"]
       96 CALL                             R7 3 1
       97 SETTABLEKS                       R7 R6 K16 ["AlertPane"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

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
       56 DUPTABLE                         R11 K20 [{"name", "story"}]
       57 LOADK                            R12 K10 ["Alert"]
       58 SETTABLEKS                       R12 R11 K18 ["name"]
       60 GETTABLEKS                       R12 R2 K21 ["createElement"]
       62 MOVE                             R13 R8
       63 CALL                             R12 1 1
       64 SETTABLEKS                       R12 R11 K19 ["story"]
       66 DUPTABLE                         R12 K20 [{"name", "story"}]
       67 LOADK                            R13 K22 ["Warning"]
       68 SETTABLEKS                       R13 R12 K18 ["name"]
       70 GETTABLEKS                       R13 R2 K21 ["createElement"]
       72 MOVE                             R14 R8
       73 DUPTABLE                         R15 K24 [{"Style"}]
       74 LOADK                            R16 K22 ["Warning"]
       75 SETTABLEKS                       R16 R15 K23 ["Style"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K19 ["story"]
       80 DUPTABLE                         R13 K20 [{"name", "story"}]
       81 LOADK                            R14 K25 ["Error"]
       82 SETTABLEKS                       R14 R13 K18 ["name"]
       84 GETTABLEKS                       R14 R2 K21 ["createElement"]
       86 MOVE                             R15 R8
       87 DUPTABLE                         R16 K24 [{"Style"}]
       88 LOADK                            R17 K25 ["Error"]
       89 SETTABLEKS                       R17 R16 K23 ["Style"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K19 ["story"]
       94 DUPTABLE                         R14 K20 [{"name", "story"}]
       95 LOADK                            R15 K26 ["Success"]
       96 SETTABLEKS                       R15 R14 K18 ["name"]
       98 GETTABLEKS                       R15 R2 K21 ["createElement"]
      100 MOVE                             R16 R8
      101 DUPTABLE                         R17 K24 [{"Style"}]
      102 LOADK                            R18 K26 ["Success"]
      103 SETTABLEKS                       R18 R17 K23 ["Style"]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K19 ["story"]
      108 DUPTABLE                         R15 K20 [{"name", "story"}]
      109 LOADK                            R16 K27 ["Info"]
      110 SETTABLEKS                       R16 R15 K18 ["name"]
      112 GETTABLEKS                       R16 R2 K21 ["createElement"]
      114 MOVE                             R17 R8
      115 DUPTABLE                         R18 K24 [{"Style"}]
      116 LOADK                            R19 K27 ["Info"]
      117 SETTABLEKS                       R19 R18 K23 ["Style"]
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K19 ["story"]
      122 DUPTABLE                         R16 K20 [{"name", "story"}]
      123 LOADK                            R17 K28 ["Reactive sizing"]
      124 SETTABLEKS                       R17 R16 K18 ["name"]
      126 DUPCLOSURE                       R17 K29 [PROTO_3]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R8
      132 SETTABLEKS                       R17 R16 K19 ["story"]
      134 SETLIST                          R10 R11 6 [1]
      136 SETTABLEKS                       R10 R9 K16 ["stories"]
      138 RETURN                           R9 1
