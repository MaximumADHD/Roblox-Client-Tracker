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
       24 DUPTABLE                         R9 K20 [{["value"] = 50, ["min"] = 0, ["max"] = 100, ["onChanged"]}]
       25 DUPCLOSURE                       R10 K21 [PROTO_0]
       26 SETTABLEKS                       R10 R9 K19 ["onChanged"]
       28 NEWTABLE                         R10 0 1
       30 MOVE                             R11 R5
       31 NEWTABLE                         R12 4 2
       33 LOADK                            R15 K12 ["Slider"]
       34 SETTABLEKS                       R15 R12 K22 ["Name"]
       36 LOADK                            R15 K23 ["slider"]
       37 SETTABLEKS                       R15 R12 K24 ["Tags"]
       39 MOVE                             R15 R3
       40 LOADK                            R16 K25 ["api.childOrder"]
       41 CALL                             R15 1 1
       42 SETTABLEKS                       R15 R12 K26 ["LayoutOrder"]
       44 MOVE                             R13 R5
       45 NEWTABLE                         R14 2 2
       47 LOADK                            R17 K27 ["SliderTrack"]
       48 SETTABLEKS                       R17 R14 K22 ["Name"]
       50 LOADK                            R17 K28 ["slider-track"]
       51 SETTABLEKS                       R17 R14 K24 ["Tags"]
       53 MOVE                             R15 R5
       54 DUPTABLE                         R16 K32 [{["Name"] = "SliderFill", ["Tags"] = "slider-fill", ["Size"]}]
       55 MOVE                             R17 R3
       56 LOADK                            R18 K33 ["UDim2.fromOffset(math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120, 6)"]
       57 CALL                             R17 1 1
       58 SETTABLEKS                       R17 R16 K31 ["Size"]
       60 CALL                             R15 1 1
       61 MOVE                             R16 R5
       62 DUPTABLE                         R17 K37 [{["Name"] = "SliderThumb", ["Tags"] = "slider-thumb", ["Position"]}]
       63 MOVE                             R18 R3
       64 LOADK                            R19 K38 ["UDim2.new(0, math.clamp((value - min) / math.max(max - min, 1), 0, 1) * 120 - 7, 0.5, -7)"]
       65 CALL                             R18 1 1
       66 SETTABLEKS                       R18 R17 K36 ["Position"]
       68 CALL                             R16 1 -1
       69 SETLIST                          R14 R15 -1 [1]
       71 CALL                             R13 1 1
       72 MOVE                             R14 R6
       73 DUPTABLE                         R15 K42 [{["Name"] = "SliderValue", ["Tags"] = "slider-value", ["Text"]}]
       74 MOVE                             R16 R3
       75 LOADK                            R17 K43 ["`{math.floor(value)}`"]
       76 CALL                             R16 1 1
       77 SETTABLEKS                       R16 R15 K41 ["Text"]
       79 CALL                             R14 1 -1
       80 SETLIST                          R12 R13 -1 [1]
       82 CALL                             R11 1 -1
       83 SETLIST                          R10 R11 -1 [1]
       85 CALL                             R7 3 1
       86 RETURN                           R7 1
