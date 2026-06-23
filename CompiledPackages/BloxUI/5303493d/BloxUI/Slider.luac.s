PROTO_0:
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
       20 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K12 ["Slider"]
       24 DUPTABLE                         R9 K17 [{"value", "min", "max", "onChanged"}]
       25 LOADN                            R10 50
       26 SETTABLEKS                       R10 R9 K13 ["value"]
       28 LOADN                            R10 0
       29 SETTABLEKS                       R10 R9 K14 ["min"]
       31 LOADN                            R10 100
       32 SETTABLEKS                       R10 R9 K15 ["max"]
       34 DUPCLOSURE                       R10 K18 [PROTO_0]
       35 SETTABLEKS                       R10 R9 K16 ["onChanged"]
       37 NEWTABLE                         R10 0 1
       39 MOVE                             R11 R5
       40 NEWTABLE                         R12 4 2
       42 LOADK                            R15 K12 ["Slider"]
       43 SETTABLEKS                       R15 R12 K19 ["Name"]
       45 LOADK                            R15 K20 ["slider"]
       46 SETTABLEKS                       R15 R12 K21 ["Tags"]
       48 MOVE                             R15 R3
       49 LOADK                            R16 K22 ["api.childOrder"]
       50 CALL                             R15 1 1
       51 SETTABLEKS                       R15 R12 K23 ["LayoutOrder"]
       53 MOVE                             R13 R5
       54 NEWTABLE                         R14 2 2
       56 LOADK                            R17 K24 ["SliderTrack"]
       57 SETTABLEKS                       R17 R14 K19 ["Name"]
       59 LOADK                            R17 K25 ["slider-track"]
       60 SETTABLEKS                       R17 R14 K21 ["Tags"]
       62 MOVE                             R15 R5
       63 DUPTABLE                         R16 K27 [{"Name", "Tags", "Size"}]
       64 LOADK                            R17 K28 ["SliderFill"]
       65 SETTABLEKS                       R17 R16 K19 ["Name"]
       67 LOADK                            R17 K29 ["slider-fill"]
       68 SETTABLEKS                       R17 R16 K21 ["Tags"]
       70 MOVE                             R17 R3
       71 LOADK                            R18 K30 ["UDim2.fromOffset(math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120, 6)"]
       72 CALL                             R17 1 1
       73 SETTABLEKS                       R17 R16 K26 ["Size"]
       75 CALL                             R15 1 1
       76 MOVE                             R16 R5
       77 DUPTABLE                         R17 K32 [{"Name", "Tags", "Position"}]
       78 LOADK                            R18 K33 ["SliderThumb"]
       79 SETTABLEKS                       R18 R17 K19 ["Name"]
       81 LOADK                            R18 K34 ["slider-thumb"]
       82 SETTABLEKS                       R18 R17 K21 ["Tags"]
       84 MOVE                             R18 R3
       85 LOADK                            R19 K35 ["UDim2.new(0, math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120 - 7, 0.5, -7)"]
       86 CALL                             R18 1 1
       87 SETTABLEKS                       R18 R17 K31 ["Position"]
       89 CALL                             R16 1 -1
       90 SETLIST                          R14 R15 -1 [1]
       92 CALL                             R13 1 1
       93 MOVE                             R14 R6
       94 DUPTABLE                         R15 K37 [{"Name", "Tags", "Text"}]
       95 LOADK                            R16 K38 ["SliderValue"]
       96 SETTABLEKS                       R16 R15 K19 ["Name"]
       98 LOADK                            R16 K39 ["slider-value"]
       99 SETTABLEKS                       R16 R15 K21 ["Tags"]
      101 MOVE                             R16 R3
      102 LOADK                            R17 K40 ["`{math.floor(value)}`"]
      103 CALL                             R16 1 1
      104 SETTABLEKS                       R16 R15 K36 ["Text"]
      106 CALL                             R14 1 -1
      107 SETLIST                          R12 R13 -1 [1]
      109 CALL                             R11 1 -1
      110 SETLIST                          R10 R11 -1 [1]
      112 CALL                             R7 3 1
      113 RETURN                           R7 1
