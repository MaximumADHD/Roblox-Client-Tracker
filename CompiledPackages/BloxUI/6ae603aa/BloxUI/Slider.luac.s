PROTO_0:
        0 RETURN                           R0 0

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
       18 GETTABLEKS                       R5 R1 K10 ["TextLabel"]
       20 MOVE                             R6 R3
       21 LOADK                            R7 K11 ["Slider"]
       22 DUPTABLE                         R8 K16 [{"value", "min", "max", "onChanged"}]
       23 LOADN                            R9 50
       24 SETTABLEKS                       R9 R8 K12 ["value"]
       26 LOADN                            R9 0
       27 SETTABLEKS                       R9 R8 K13 ["min"]
       29 LOADN                            R9 100
       30 SETTABLEKS                       R9 R8 K14 ["max"]
       32 DUPCLOSURE                       R9 K17 [PROTO_0]
       33 SETTABLEKS                       R9 R8 K15 ["onChanged"]
       35 NEWTABLE                         R9 0 1
       37 MOVE                             R10 R4
       38 NEWTABLE                         R11 4 2
       40 LOADK                            R14 K11 ["Slider"]
       41 SETTABLEKS                       R14 R11 K18 ["Name"]
       43 LOADK                            R14 K19 ["slider"]
       44 SETTABLEKS                       R14 R11 K20 ["Tags"]
       46 MOVE                             R14 R2
       47 LOADK                            R15 K21 ["api.childOrder"]
       48 CALL                             R14 1 1
       49 SETTABLEKS                       R14 R11 K22 ["LayoutOrder"]
       51 MOVE                             R12 R4
       52 NEWTABLE                         R13 2 2
       54 LOADK                            R16 K23 ["SliderTrack"]
       55 SETTABLEKS                       R16 R13 K18 ["Name"]
       57 LOADK                            R16 K24 ["slider-track"]
       58 SETTABLEKS                       R16 R13 K20 ["Tags"]
       60 MOVE                             R14 R4
       61 DUPTABLE                         R15 K26 [{"Name", "Tags", "Size"}]
       62 LOADK                            R16 K27 ["SliderFill"]
       63 SETTABLEKS                       R16 R15 K18 ["Name"]
       65 LOADK                            R16 K28 ["slider-fill"]
       66 SETTABLEKS                       R16 R15 K20 ["Tags"]
       68 MOVE                             R16 R2
       69 LOADK                            R17 K29 ["UDim2.fromOffset(math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120, 6)"]
       70 CALL                             R16 1 1
       71 SETTABLEKS                       R16 R15 K25 ["Size"]
       73 CALL                             R14 1 1
       74 MOVE                             R15 R4
       75 DUPTABLE                         R16 K31 [{"Name", "Tags", "Position"}]
       76 LOADK                            R17 K32 ["SliderThumb"]
       77 SETTABLEKS                       R17 R16 K18 ["Name"]
       79 LOADK                            R17 K33 ["slider-thumb"]
       80 SETTABLEKS                       R17 R16 K20 ["Tags"]
       82 MOVE                             R17 R2
       83 LOADK                            R18 K34 ["UDim2.new(0, math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120 - 7, 0.5, -7)"]
       84 CALL                             R17 1 1
       85 SETTABLEKS                       R17 R16 K30 ["Position"]
       87 CALL                             R15 1 -1
       88 SETLIST                          R13 R14 -1 [1]
       90 CALL                             R12 1 1
       91 MOVE                             R13 R5
       92 DUPTABLE                         R14 K36 [{"Name", "Tags", "Text"}]
       93 LOADK                            R15 K37 ["SliderValue"]
       94 SETTABLEKS                       R15 R14 K18 ["Name"]
       96 LOADK                            R15 K38 ["slider-value"]
       97 SETTABLEKS                       R15 R14 K20 ["Tags"]
       99 MOVE                             R15 R2
      100 LOADK                            R16 K39 ["`{math.floor(value)}`"]
      101 CALL                             R15 1 1
      102 SETTABLEKS                       R15 R14 K35 ["Text"]
      104 CALL                             R13 1 -1
      105 SETLIST                          R11 R12 -1 [1]
      107 CALL                             R10 1 -1
      108 SETLIST                          R9 R10 -1 [1]
      110 CALL                             R6 3 1
      111 RETURN                           R6 1
