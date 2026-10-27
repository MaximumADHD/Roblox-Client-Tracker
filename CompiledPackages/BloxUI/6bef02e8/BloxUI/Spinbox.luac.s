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
       28 DUPTABLE                         R11 K23 [{["value"] = 0, ["min"] = 0, ["max"] = 100, ["increment"] = 1, ["onChanged"]}]
       29 DUPCLOSURE                       R12 K24 [PROTO_0]
       30 SETTABLEKS                       R12 R11 K22 ["onChanged"]
       32 NEWTABLE                         R12 0 1
       34 MOVE                             R13 R5
       35 NEWTABLE                         R14 4 3
       37 LOADK                            R18 K14 ["Spinbox"]
       38 SETTABLEKS                       R18 R14 K25 ["Name"]
       40 LOADK                            R18 K26 ["spinbox"]
       41 SETTABLEKS                       R18 R14 K27 ["Tags"]
       43 MOVE                             R18 R3
       44 LOADK                            R19 K28 ["api.childOrder"]
       45 CALL                             R18 1 1
       46 SETTABLEKS                       R18 R14 K29 ["LayoutOrder"]
       48 MOVE                             R15 R7
       49 NEWTABLE                         R16 4 1
       51 LOADK                            R18 K30 ["SpinboxDecrement"]
       52 SETTABLEKS                       R18 R16 K25 ["Name"]
       54 LOADK                            R18 K31 ["spinbox-btn"]
       55 SETTABLEKS                       R18 R16 K27 ["Tags"]
       57 MOVE                             R18 R3
       58 LOADK                            R19 K32 ["fn() onChanged(math.max(min, api.peek(value) - increment))"]
       59 CALL                             R18 1 1
       60 SETTABLEKS                       R18 R16 K33 ["OnActivated"]
       62 MOVE                             R17 R8
       63 DUPTABLE                         R18 K38 [{["Name"] = "SpinboxDecrementLabel", ["Tags"] = "spinbox-btn-label", ["Text"] = "−"}]
       64 CALL                             R17 1 -1
       65 SETLIST                          R16 R17 -1 [1]
       67 CALL                             R15 1 1
       68 MOVE                             R16 R6
       69 DUPTABLE                         R17 K44 [{["Name"] = "SpinboxInput", ["Tags"] = "spinbox-input", ["Text"], ["OnFocusLost"], ["ref"] = "spinboxInput"}]
       70 MOVE                             R18 R3
       71 LOADK                            R19 K45 ["`{value}`"]
       72 CALL                             R18 1 1
       73 SETTABLEKS                       R18 R17 K36 ["Text"]
       75 MOVE                             R18 R3
       76 LOADK                            R19 K46 ["fn() onChanged(math.clamp(tonumber(api.peek(spinboxInput).Text) or api.peek(value), min, max))"]
       77 CALL                             R18 1 1
       78 SETTABLEKS                       R18 R17 K41 ["OnFocusLost"]
       80 CALL                             R16 1 1
       81 MOVE                             R17 R7
       82 NEWTABLE                         R18 4 1
       84 LOADK                            R20 K47 ["SpinboxIncrement"]
       85 SETTABLEKS                       R20 R18 K25 ["Name"]
       87 LOADK                            R20 K31 ["spinbox-btn"]
       88 SETTABLEKS                       R20 R18 K27 ["Tags"]
       90 MOVE                             R20 R3
       91 LOADK                            R21 K48 ["fn() onChanged(math.min(max, api.peek(value) + increment))"]
       92 CALL                             R20 1 1
       93 SETTABLEKS                       R20 R18 K33 ["OnActivated"]
       95 MOVE                             R19 R8
       96 DUPTABLE                         R20 K51 [{["Name"] = "SpinboxIncrementLabel", ["Tags"] = "spinbox-btn-label", ["Text"] = "+"}]
       97 CALL                             R19 1 -1
       98 SETLIST                          R18 R19 -1 [1]
      100 CALL                             R17 1 -1
      101 SETLIST                          R14 R15 -1 [1]
      103 CALL                             R13 1 -1
      104 SETLIST                          R12 R13 -1 [1]
      106 DUPCLOSURE                       R13 K52 [PROTO_1]
      107 CALL                             R9 4 1
      108 RETURN                           R9 1
