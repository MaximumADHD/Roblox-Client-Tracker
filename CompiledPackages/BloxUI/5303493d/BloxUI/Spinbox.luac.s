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
       20 GETTABLEKS                       R6 R2 K11 ["TextBox"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K14 ["Spinbox"]
       28 DUPTABLE                         R11 K20 [{"value", "min", "max", "increment", "onChanged"}]
       29 LOADN                            R12 0
       30 SETTABLEKS                       R12 R11 K15 ["value"]
       32 LOADN                            R12 0
       33 SETTABLEKS                       R12 R11 K16 ["min"]
       35 LOADN                            R12 100
       36 SETTABLEKS                       R12 R11 K17 ["max"]
       38 LOADN                            R12 1
       39 SETTABLEKS                       R12 R11 K18 ["increment"]
       41 DUPCLOSURE                       R12 K21 [PROTO_0]
       42 SETTABLEKS                       R12 R11 K19 ["onChanged"]
       44 NEWTABLE                         R12 0 1
       46 MOVE                             R13 R5
       47 NEWTABLE                         R14 4 3
       49 LOADK                            R18 K14 ["Spinbox"]
       50 SETTABLEKS                       R18 R14 K22 ["Name"]
       52 LOADK                            R18 K23 ["spinbox"]
       53 SETTABLEKS                       R18 R14 K24 ["Tags"]
       55 MOVE                             R18 R3
       56 LOADK                            R19 K25 ["api.childOrder"]
       57 CALL                             R18 1 1
       58 SETTABLEKS                       R18 R14 K26 ["LayoutOrder"]
       60 MOVE                             R15 R7
       61 NEWTABLE                         R16 4 1
       63 LOADK                            R18 K27 ["SpinboxDecrement"]
       64 SETTABLEKS                       R18 R16 K22 ["Name"]
       66 LOADK                            R18 K28 ["spinbox-btn"]
       67 SETTABLEKS                       R18 R16 K24 ["Tags"]
       69 MOVE                             R18 R3
       70 LOADK                            R19 K29 ["fn() onChanged(math.max(min, api.peek(value) - increment))"]
       71 CALL                             R18 1 1
       72 SETTABLEKS                       R18 R16 K30 ["OnActivated"]
       74 MOVE                             R17 R8
       75 DUPTABLE                         R18 K32 [{"Name", "Tags", "Text"}]
       76 LOADK                            R19 K33 ["SpinboxDecrementLabel"]
       77 SETTABLEKS                       R19 R18 K22 ["Name"]
       79 LOADK                            R19 K34 ["spinbox-btn-label"]
       80 SETTABLEKS                       R19 R18 K24 ["Tags"]
       82 LOADK                            R19 K35 ["−"]
       83 SETTABLEKS                       R19 R18 K31 ["Text"]
       85 CALL                             R17 1 -1
       86 SETLIST                          R16 R17 -1 [1]
       88 CALL                             R15 1 1
       89 MOVE                             R16 R6
       90 DUPTABLE                         R17 K38 [{"Name", "Tags", "Text", "OnFocusLost", "ref"}]
       91 LOADK                            R18 K39 ["SpinboxInput"]
       92 SETTABLEKS                       R18 R17 K22 ["Name"]
       94 LOADK                            R18 K40 ["spinbox-input"]
       95 SETTABLEKS                       R18 R17 K24 ["Tags"]
       97 MOVE                             R18 R3
       98 LOADK                            R19 K41 ["`{value}`"]
       99 CALL                             R18 1 1
      100 SETTABLEKS                       R18 R17 K31 ["Text"]
      102 MOVE                             R18 R3
      103 LOADK                            R19 K42 ["fn() onChanged(math.clamp(tonumber(api.peek(spinboxInput).Text) or api.peek(value), min, max))"]
      104 CALL                             R18 1 1
      105 SETTABLEKS                       R18 R17 K36 ["OnFocusLost"]
      107 LOADK                            R18 K43 ["spinboxInput"]
      108 SETTABLEKS                       R18 R17 K37 ["ref"]
      110 CALL                             R16 1 1
      111 MOVE                             R17 R7
      112 NEWTABLE                         R18 4 1
      114 LOADK                            R20 K44 ["SpinboxIncrement"]
      115 SETTABLEKS                       R20 R18 K22 ["Name"]
      117 LOADK                            R20 K28 ["spinbox-btn"]
      118 SETTABLEKS                       R20 R18 K24 ["Tags"]
      120 MOVE                             R20 R3
      121 LOADK                            R21 K45 ["fn() onChanged(math.min(max, api.peek(value) + increment))"]
      122 CALL                             R20 1 1
      123 SETTABLEKS                       R20 R18 K30 ["OnActivated"]
      125 MOVE                             R19 R8
      126 DUPTABLE                         R20 K32 [{"Name", "Tags", "Text"}]
      127 LOADK                            R21 K46 ["SpinboxIncrementLabel"]
      128 SETTABLEKS                       R21 R20 K22 ["Name"]
      130 LOADK                            R21 K34 ["spinbox-btn-label"]
      131 SETTABLEKS                       R21 R20 K24 ["Tags"]
      133 LOADK                            R21 K47 ["+"]
      134 SETTABLEKS                       R21 R20 K31 ["Text"]
      136 CALL                             R19 1 -1
      137 SETLIST                          R18 R19 -1 [1]
      139 CALL                             R17 1 -1
      140 SETLIST                          R14 R15 -1 [1]
      142 CALL                             R13 1 -1
      143 SETLIST                          R12 R13 -1 [1]
      145 DUPCLOSURE                       R13 K48 [PROTO_1]
      146 CALL                             R9 4 1
      147 RETURN                           R9 1
