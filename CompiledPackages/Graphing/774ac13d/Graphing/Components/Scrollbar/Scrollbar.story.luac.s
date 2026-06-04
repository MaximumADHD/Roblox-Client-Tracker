PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [Rect.new]
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K3 ["Min"]
        7 GETTABLEKS                       R5 R5 K4 ["Y"]
        9 MOVE                             R6 R1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K5 ["Max"]
       13 GETTABLEKS                       R7 R7 K4 ["Y"]
       15 CALL                             R3 4 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [Rect.new]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K3 ["Min"]
        6 GETTABLEKS                       R4 R4 K4 ["X"]
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K5 ["Max"]
       12 GETTABLEKS                       R6 R6 K4 ["X"]
       14 MOVE                             R7 R1
       15 CALL                             R3 4 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [Rect.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 10
        8 LOADN                            R6 10
        9 CALL                             R2 4 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useState"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K9 [{"GraphRect", "ViewportRect", "children", "childrenUnclipped"}]
       21 SETTABLEKS                       R1 R7 K5 ["GraphRect"]
       23 SETTABLEKS                       R3 R7 K6 ["ViewportRect"]
       25 DUPTABLE                         R8 K11 [{"Grid"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K4 ["createElement"]
       29 GETUPVAL                         R10 2
       30 DUPTABLE                         R11 K16 [{"XAxis", "XAxisMinor", "YAxis", "YAxisMinor"}]
       31 DUPTABLE                         R12 K19 [{"Type", "Unit"}]
       32 LOADK                            R13 K20 ["Uniform"]
       33 SETTABLEKS                       R13 R12 K17 ["Type"]
       35 LOADN                            R13 1
       36 SETTABLEKS                       R13 R12 K18 ["Unit"]
       38 SETTABLEKS                       R12 R11 K12 ["XAxis"]
       40 DUPTABLE                         R12 K19 [{"Type", "Unit"}]
       41 LOADK                            R13 K20 ["Uniform"]
       42 SETTABLEKS                       R13 R12 K17 ["Type"]
       44 LOADK                            R13 K21 [0.5]
       45 SETTABLEKS                       R13 R12 K18 ["Unit"]
       47 SETTABLEKS                       R12 R11 K13 ["XAxisMinor"]
       49 DUPTABLE                         R12 K19 [{"Type", "Unit"}]
       50 LOADK                            R13 K20 ["Uniform"]
       51 SETTABLEKS                       R13 R12 K17 ["Type"]
       53 LOADN                            R13 1
       54 SETTABLEKS                       R13 R12 K18 ["Unit"]
       56 SETTABLEKS                       R12 R11 K14 ["YAxis"]
       58 DUPTABLE                         R12 K19 [{"Type", "Unit"}]
       59 LOADK                            R13 K20 ["Uniform"]
       60 SETTABLEKS                       R13 R12 K17 ["Type"]
       62 LOADK                            R13 K21 [0.5]
       63 SETTABLEKS                       R13 R12 K18 ["Unit"]
       65 SETTABLEKS                       R12 R11 K15 ["YAxisMinor"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K10 ["Grid"]
       70 SETTABLEKS                       R8 R7 K7 ["children"]
       72 DUPTABLE                         R8 K24 [{"ScrollbarX", "ScrollbarY"}]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K4 ["createElement"]
       76 GETUPVAL                         R10 3
       77 DUPTABLE                         R11 K28 [{"Axis", "MinZoom", "OnViewChanged"}]
       78 LOADK                            R12 K29 ["X"]
       79 SETTABLEKS                       R12 R11 K25 ["Axis"]
       81 LOADK                            R12 K30 [0.1]
       82 SETTABLEKS                       R12 R11 K26 ["MinZoom"]
       84 NEWCLOSURE                       R12 P0
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R12 R11 K27 ["OnViewChanged"]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K22 ["ScrollbarX"]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K4 ["createElement"]
       95 GETUPVAL                         R10 3
       96 DUPTABLE                         R11 K28 [{"Axis", "MinZoom", "OnViewChanged"}]
       97 LOADK                            R12 K31 ["Y"]
       98 SETTABLEKS                       R12 R11 K25 ["Axis"]
      100 LOADK                            R12 K30 [0.1]
      101 SETTABLEKS                       R12 R11 K26 ["MinZoom"]
      103 NEWCLOSURE                       R12 P1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R12 R11 K27 ["OnViewChanged"]
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K23 ["ScrollbarY"]
      111 SETTABLEKS                       R8 R7 K8 ["childrenUnclipped"]
      113 CALL                             R5 2 -1
      114 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Canvas"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Grid"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Scrollbar"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K13 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R8 K17 [{"summary", "story", "controls"}]
       46 LOADK                            R9 K18 ["Simple example demonstrating how to use scrollbars."]
       47 SETTABLEKS                       R9 R8 K14 ["summary"]
       49 SETTABLEKS                       R7 R8 K15 ["story"]
       51 NEWTABLE                         R9 0 0
       53 SETTABLEKS                       R9 R8 K16 ["controls"]
       55 RETURN                           R8 1
