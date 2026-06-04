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
       37 DUPTABLE                         R6 K16 [{"AutomaticSize", "Layout", "Spacing", "Size"}]
       38 GETIMPORT                        R7 K19 [Enum.AutomaticSize.Y]
       40 SETTABLEKS                       R7 R6 K12 ["AutomaticSize"]
       42 GETIMPORT                        R7 K22 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R7 R6 K13 ["Layout"]
       46 LOADN                            R7 10
       47 SETTABLEKS                       R7 R6 K14 ["Spacing"]
       49 GETIMPORT                        R7 K25 [UDim2.new]
       51 LOADN                            R8 0
       52 LOADN                            R9 44
       53 LOADN                            R10 0
       54 LOADN                            R11 0
       55 CALL                             R7 4 1
       56 SETTABLEKS                       R7 R6 K15 ["Size"]
       58 DUPTABLE                         R7 K30 [{"Default", "WithIcon", "Compact", "Incremental"}]
       59 GETTABLEKS                       R8 R1 K11 ["createElement"]
       61 MOVE                             R9 R3
       62 DUPTABLE                         R10 K32 [{"OnSearchRequested", "Size"}]
       63 DUPCLOSURE                       R11 K33 [PROTO_0]
       64 SETTABLEKS                       R11 R10 K31 ["OnSearchRequested"]
       66 GETIMPORT                        R11 K25 [UDim2.new]
       68 LOADN                            R12 0
       69 LOADN                            R13 44
       70 LOADN                            R14 0
       71 LOADN                            R15 32
       72 CALL                             R11 4 1
       73 SETTABLEKS                       R11 R10 K15 ["Size"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K26 ["Default"]
       78 GETTABLEKS                       R8 R1 K11 ["createElement"]
       80 MOVE                             R9 R3
       81 DUPTABLE                         R10 K37 [{"PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested", "Size"}]
       82 LOADK                            R11 K38 ["With Left Icon"]
       83 SETTABLEKS                       R11 R10 K34 ["PlaceholderText"]
       85 LOADB                            R11 1
       86 SETTABLEKS                       R11 R10 K35 ["ShowSearchIcon"]
       88 LOADB                            R11 0
       89 SETTABLEKS                       R11 R10 K36 ["ShowSearchButton"]
       91 DUPCLOSURE                       R11 K39 [PROTO_1]
       92 SETTABLEKS                       R11 R10 K31 ["OnSearchRequested"]
       94 GETIMPORT                        R11 K25 [UDim2.new]
       96 LOADN                            R12 0
       97 LOADN                            R13 44
       98 LOADN                            R14 0
       99 LOADN                            R15 32
      100 CALL                             R11 4 1
      101 SETTABLEKS                       R11 R10 K15 ["Size"]
      103 CALL                             R8 2 1
      104 SETTABLEKS                       R8 R7 K27 ["WithIcon"]
      106 GETTABLEKS                       R8 R1 K11 ["createElement"]
      108 MOVE                             R9 R3
      109 DUPTABLE                         R10 K41 [{"PlaceholderText", "Style", "ShowSearchButton", "OnSearchRequested", "Size"}]
      110 LOADK                            R11 K28 ["Compact"]
      111 SETTABLEKS                       R11 R10 K34 ["PlaceholderText"]
      113 LOADK                            R11 K28 ["Compact"]
      114 SETTABLEKS                       R11 R10 K40 ["Style"]
      116 LOADB                            R11 1
      117 SETTABLEKS                       R11 R10 K36 ["ShowSearchButton"]
      119 DUPCLOSURE                       R11 K42 [PROTO_2]
      120 SETTABLEKS                       R11 R10 K31 ["OnSearchRequested"]
      122 GETIMPORT                        R11 K25 [UDim2.new]
      124 LOADN                            R12 0
      125 LOADN                            R13 44
      126 LOADN                            R14 0
      127 LOADN                            R15 32
      128 CALL                             R11 4 1
      129 SETTABLEKS                       R11 R10 K15 ["Size"]
      131 CALL                             R8 2 1
      132 SETTABLEKS                       R8 R7 K28 ["Compact"]
      134 GETTABLEKS                       R8 R1 K11 ["createElement"]
      136 MOVE                             R9 R3
      137 DUPTABLE                         R10 K44 [{"PlaceholderText", "IncrementalTextSearch", "OnSearchRequested", "Size"}]
      138 LOADK                            R11 K29 ["Incremental"]
      139 SETTABLEKS                       R11 R10 K34 ["PlaceholderText"]
      141 LOADB                            R11 1
      142 SETTABLEKS                       R11 R10 K43 ["IncrementalTextSearch"]
      144 DUPCLOSURE                       R11 K45 [PROTO_3]
      145 SETTABLEKS                       R11 R10 K31 ["OnSearchRequested"]
      147 GETIMPORT                        R11 K25 [UDim2.new]
      149 LOADN                            R12 0
      150 LOADN                            R13 44
      151 LOADN                            R14 0
      152 LOADN                            R15 32
      153 CALL                             R11 4 1
      154 SETTABLEKS                       R11 R10 K15 ["Size"]
      156 CALL                             R8 2 1
      157 SETTABLEKS                       R8 R7 K29 ["Incremental"]
      159 CALL                             R4 3 -1
      160 RETURN                           R4 -1
