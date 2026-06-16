PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["createRef"]
        2 LOADK                            R3 K1 ["spinboxInput"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K2 [{"spinboxInput"}]
        5 SETTABLEKS                       R2 R3 K1 ["spinboxInput"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["TextBox"]
       20 GETTABLEKS                       R6 R1 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       24 MOVE                             R8 R3
       25 LOADK                            R9 K13 ["Spinbox"]
       26 DUPTABLE                         R10 K19 [{"value", "min", "max", "increment", "onChanged"}]
       27 LOADN                            R11 0
       28 SETTABLEKS                       R11 R10 K14 ["value"]
       30 LOADN                            R11 0
       31 SETTABLEKS                       R11 R10 K15 ["min"]
       33 LOADN                            R11 100
       34 SETTABLEKS                       R11 R10 K16 ["max"]
       36 LOADN                            R11 1
       37 SETTABLEKS                       R11 R10 K17 ["increment"]
       39 DUPCLOSURE                       R11 K20 [PROTO_0]
       40 SETTABLEKS                       R11 R10 K18 ["onChanged"]
       42 NEWTABLE                         R11 0 1
       44 MOVE                             R12 R4
       45 NEWTABLE                         R13 4 3
       47 LOADK                            R17 K13 ["Spinbox"]
       48 SETTABLEKS                       R17 R13 K21 ["Name"]
       50 LOADK                            R17 K22 ["spinbox"]
       51 SETTABLEKS                       R17 R13 K23 ["Tags"]
       53 MOVE                             R17 R2
       54 LOADK                            R18 K24 ["api.childOrder"]
       55 CALL                             R17 1 1
       56 SETTABLEKS                       R17 R13 K25 ["LayoutOrder"]
       58 MOVE                             R14 R6
       59 NEWTABLE                         R15 4 1
       61 LOADK                            R17 K26 ["SpinboxDecrement"]
       62 SETTABLEKS                       R17 R15 K21 ["Name"]
       64 LOADK                            R17 K27 ["spinbox-btn"]
       65 SETTABLEKS                       R17 R15 K23 ["Tags"]
       67 MOVE                             R17 R2
       68 LOADK                            R18 K28 ["fn() onChanged(math.max(min, api.peek(value) - increment))"]
       69 CALL                             R17 1 1
       70 SETTABLEKS                       R17 R15 K29 ["OnActivated"]
       72 MOVE                             R16 R7
       73 DUPTABLE                         R17 K31 [{"Name", "Tags", "Text"}]
       74 LOADK                            R18 K32 ["SpinboxDecrementLabel"]
       75 SETTABLEKS                       R18 R17 K21 ["Name"]
       77 LOADK                            R18 K33 ["spinbox-btn-label"]
       78 SETTABLEKS                       R18 R17 K23 ["Tags"]
       80 LOADK                            R18 K34 ["−"]
       81 SETTABLEKS                       R18 R17 K30 ["Text"]
       83 CALL                             R16 1 -1
       84 SETLIST                          R15 R16 -1 [1]
       86 CALL                             R14 1 1
       87 MOVE                             R15 R5
       88 DUPTABLE                         R16 K37 [{"Name", "Tags", "Text", "OnFocusLost", "ref"}]
       89 LOADK                            R17 K38 ["SpinboxInput"]
       90 SETTABLEKS                       R17 R16 K21 ["Name"]
       92 LOADK                            R17 K39 ["spinbox-input"]
       93 SETTABLEKS                       R17 R16 K23 ["Tags"]
       95 MOVE                             R17 R2
       96 LOADK                            R18 K40 ["`{value}`"]
       97 CALL                             R17 1 1
       98 SETTABLEKS                       R17 R16 K30 ["Text"]
      100 MOVE                             R17 R2
      101 LOADK                            R18 K41 ["fn() onChanged(math.clamp(tonumber(api.peek(spinboxInput).Text) or api.peek(value), min, max))"]
      102 CALL                             R17 1 1
      103 SETTABLEKS                       R17 R16 K35 ["OnFocusLost"]
      105 LOADK                            R17 K42 ["spinboxInput"]
      106 SETTABLEKS                       R17 R16 K36 ["ref"]
      108 CALL                             R15 1 1
      109 MOVE                             R16 R6
      110 NEWTABLE                         R17 4 1
      112 LOADK                            R19 K43 ["SpinboxIncrement"]
      113 SETTABLEKS                       R19 R17 K21 ["Name"]
      115 LOADK                            R19 K27 ["spinbox-btn"]
      116 SETTABLEKS                       R19 R17 K23 ["Tags"]
      118 MOVE                             R19 R2
      119 LOADK                            R20 K44 ["fn() onChanged(math.min(max, api.peek(value) + increment))"]
      120 CALL                             R19 1 1
      121 SETTABLEKS                       R19 R17 K29 ["OnActivated"]
      123 MOVE                             R18 R7
      124 DUPTABLE                         R19 K31 [{"Name", "Tags", "Text"}]
      125 LOADK                            R20 K45 ["SpinboxIncrementLabel"]
      126 SETTABLEKS                       R20 R19 K21 ["Name"]
      128 LOADK                            R20 K33 ["spinbox-btn-label"]
      129 SETTABLEKS                       R20 R19 K23 ["Tags"]
      131 LOADK                            R20 K46 ["+"]
      132 SETTABLEKS                       R20 R19 K30 ["Text"]
      134 CALL                             R18 1 -1
      135 SETLIST                          R17 R18 -1 [1]
      137 CALL                             R16 1 -1
      138 SETLIST                          R13 R14 -1 [1]
      140 CALL                             R12 1 -1
      141 SETLIST                          R11 R12 -1 [1]
      143 DUPCLOSURE                       R12 K47 [PROTO_1]
      144 CALL                             R8 4 1
      145 RETURN                           R8 1
