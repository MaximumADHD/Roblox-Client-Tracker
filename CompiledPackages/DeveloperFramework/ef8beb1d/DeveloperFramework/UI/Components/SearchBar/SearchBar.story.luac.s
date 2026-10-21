PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Search: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Search: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Search: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Search: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["SearchBar"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["createElement"]
       36 MOVE                             R5 R2
       37 DUPTABLE                         R6 K17 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 10, ["Size"]}]
       38 GETIMPORT                        R7 K20 [Enum.AutomaticSize.Y]
       40 SETTABLEKS                       R7 R6 K12 ["AutomaticSize"]
       42 GETIMPORT                        R7 K23 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R7 R6 K13 ["Layout"]
       46 GETIMPORT                        R7 K26 [UDim2.new]
       48 LOADN                            R8 0
       49 LOADN                            R9 300
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 CALL                             R7 4 1
       53 SETTABLEKS                       R7 R6 K16 ["Size"]
       55 DUPTABLE                         R7 K31 [{"Default", "WithIcon", "Compact", "Incremental"}]
       56 GETTABLEKS                       R8 R1 K11 ["createElement"]
       58 MOVE                             R9 R3
       59 DUPTABLE                         R10 K33 [{"OnSearchRequested", "Size"}]
       60 DUPCLOSURE                       R11 K34 [PROTO_0]
       61 SETTABLEKS                       R11 R10 K32 ["OnSearchRequested"]
       63 GETIMPORT                        R11 K26 [UDim2.new]
       65 LOADN                            R12 0
       66 LOADN                            R13 300
       67 LOADN                            R14 0
       68 LOADN                            R15 32
       69 CALL                             R11 4 1
       70 SETTABLEKS                       R11 R10 K16 ["Size"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K27 ["Default"]
       75 GETTABLEKS                       R8 R1 K11 ["createElement"]
       77 MOVE                             R9 R3
       78 DUPTABLE                         R10 K41 [{["PlaceholderText"] = "With Left Icon", ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"], ["Size"]}]
       79 DUPCLOSURE                       R11 K42 [PROTO_1]
       80 SETTABLEKS                       R11 R10 K32 ["OnSearchRequested"]
       82 GETIMPORT                        R11 K26 [UDim2.new]
       84 LOADN                            R12 0
       85 LOADN                            R13 300
       86 LOADN                            R14 0
       87 LOADN                            R15 32
       88 CALL                             R11 4 1
       89 SETTABLEKS                       R11 R10 K16 ["Size"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K28 ["WithIcon"]
       94 GETTABLEKS                       R8 R1 K11 ["createElement"]
       96 MOVE                             R9 R3
       97 DUPTABLE                         R10 K44 [{["PlaceholderText"] = "Compact", ["Style"] = "Compact", ["ShowSearchButton"] = True, ["OnSearchRequested"], ["Size"]}]
       98 DUPCLOSURE                       R11 K45 [PROTO_2]
       99 SETTABLEKS                       R11 R10 K32 ["OnSearchRequested"]
      101 GETIMPORT                        R11 K26 [UDim2.new]
      103 LOADN                            R12 0
      104 LOADN                            R13 300
      105 LOADN                            R14 0
      106 LOADN                            R15 32
      107 CALL                             R11 4 1
      108 SETTABLEKS                       R11 R10 K16 ["Size"]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R7 K29 ["Compact"]
      113 GETTABLEKS                       R8 R1 K11 ["createElement"]
      115 MOVE                             R9 R3
      116 DUPTABLE                         R10 K47 [{["PlaceholderText"] = "Incremental", ["IncrementalTextSearch"] = True, ["OnSearchRequested"], ["Size"]}]
      117 DUPCLOSURE                       R11 K48 [PROTO_3]
      118 SETTABLEKS                       R11 R10 K32 ["OnSearchRequested"]
      120 GETIMPORT                        R11 K26 [UDim2.new]
      122 LOADN                            R12 0
      123 LOADN                            R13 300
      124 LOADN                            R14 0
      125 LOADN                            R15 32
      126 CALL                             R11 4 1
      127 SETTABLEKS                       R11 R10 K16 ["Size"]
      129 CALL                             R8 2 1
      130 SETTABLEKS                       R8 R7 K30 ["Incremental"]
      132 CALL                             R4 3 -1
      133 RETURN                           R4 -1
