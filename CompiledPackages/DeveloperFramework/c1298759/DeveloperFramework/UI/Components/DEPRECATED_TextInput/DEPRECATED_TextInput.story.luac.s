PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInput - OnTextChanged: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["TextInput - OnFocusGained"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["TextInput - OnFocusLost"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K3 ["original text"]
        5 GETTABLEKS                       R6 R1 K4 ["Text"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInput - OnTextChanged: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["TextInput - OnFocusGained"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInput - OnFocusLost"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInput - OnTextChanged: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["TextInput - OnFocusGained"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInput - OnFocusLost"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K9 [{"stories"}]
       24 NEWTABLE                         R4 0 3
       26 DUPTABLE                         R5 K12 [{"name", "story"}]
       27 LOADK                            R6 K13 ["RoundedBorder"]
       28 SETTABLEKS                       R6 R5 K10 ["name"]
       30 GETTABLEKS                       R6 R1 K14 ["createElement"]
       32 MOVE                             R7 R2
       33 DUPTABLE                         R8 K22 [{"Size", "Style", "PlaceholderText", "TextXAlignment", "OnTextChanged", "OnFocusGained", "OnFocusLost"}]
       34 GETIMPORT                        R9 K25 [UDim2.new]
       36 LOADN                            R10 0
       37 LOADN                            R11 150
       38 LOADN                            R12 0
       39 LOADN                            R13 20
       40 CALL                             R9 4 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 LOADK                            R9 K13 ["RoundedBorder"]
       44 SETTABLEKS                       R9 R8 K16 ["Style"]
       46 LOADK                            R9 K26 ["Placeholder"]
       47 SETTABLEKS                       R9 R8 K17 ["PlaceholderText"]
       49 GETIMPORT                        R9 K29 [Enum.TextXAlignment.Center]
       51 SETTABLEKS                       R9 R8 K18 ["TextXAlignment"]
       53 DUPCLOSURE                       R9 K30 [PROTO_0]
       54 SETTABLEKS                       R9 R8 K19 ["OnTextChanged"]
       56 DUPCLOSURE                       R9 K31 [PROTO_1]
       57 SETTABLEKS                       R9 R8 K20 ["OnFocusGained"]
       59 DUPCLOSURE                       R9 K32 [PROTO_2]
       60 SETTABLEKS                       R9 R8 K21 ["OnFocusLost"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K11 ["story"]
       65 DUPTABLE                         R6 K12 [{"name", "story"}]
       66 LOADK                            R7 K33 ["FilledRoundedBorder"]
       67 SETTABLEKS                       R7 R6 K10 ["name"]
       69 GETTABLEKS                       R7 R1 K14 ["createElement"]
       71 MOVE                             R8 R2
       72 DUPTABLE                         R9 K34 [{"Size", "Style", "PlaceholderText", "OnTextChanged", "OnFocusGained", "OnFocusLost"}]
       73 GETIMPORT                        R10 K25 [UDim2.new]
       75 LOADN                            R11 0
       76 LOADN                            R12 150
       77 LOADN                            R13 0
       78 LOADN                            R14 20
       79 CALL                             R10 4 1
       80 SETTABLEKS                       R10 R9 K15 ["Size"]
       82 LOADK                            R10 K33 ["FilledRoundedBorder"]
       83 SETTABLEKS                       R10 R9 K16 ["Style"]
       85 LOADK                            R10 K26 ["Placeholder"]
       86 SETTABLEKS                       R10 R9 K17 ["PlaceholderText"]
       88 DUPCLOSURE                       R10 K35 [PROTO_3]
       89 SETTABLEKS                       R10 R9 K19 ["OnTextChanged"]
       91 DUPCLOSURE                       R10 K36 [PROTO_4]
       92 SETTABLEKS                       R10 R9 K20 ["OnFocusGained"]
       94 DUPCLOSURE                       R10 K37 [PROTO_5]
       95 SETTABLEKS                       R10 R9 K21 ["OnFocusLost"]
       97 CALL                             R7 2 1
       98 SETTABLEKS                       R7 R6 K11 ["story"]
      100 DUPTABLE                         R7 K12 [{"name", "story"}]
      101 LOADK                            R8 K38 ["FilledRoundedRedBorder"]
      102 SETTABLEKS                       R8 R7 K10 ["name"]
      104 GETTABLEKS                       R8 R1 K14 ["createElement"]
      106 MOVE                             R9 R2
      107 DUPTABLE                         R10 K34 [{"Size", "Style", "PlaceholderText", "OnTextChanged", "OnFocusGained", "OnFocusLost"}]
      108 GETIMPORT                        R11 K25 [UDim2.new]
      110 LOADN                            R12 0
      111 LOADN                            R13 150
      112 LOADN                            R14 0
      113 LOADN                            R15 20
      114 CALL                             R11 4 1
      115 SETTABLEKS                       R11 R10 K15 ["Size"]
      117 LOADK                            R11 K38 ["FilledRoundedRedBorder"]
      118 SETTABLEKS                       R11 R10 K16 ["Style"]
      120 LOADK                            R11 K26 ["Placeholder"]
      121 SETTABLEKS                       R11 R10 K17 ["PlaceholderText"]
      123 DUPCLOSURE                       R11 K39 [PROTO_6]
      124 SETTABLEKS                       R11 R10 K19 ["OnTextChanged"]
      126 DUPCLOSURE                       R11 K40 [PROTO_7]
      127 SETTABLEKS                       R11 R10 K20 ["OnFocusGained"]
      129 DUPCLOSURE                       R11 K41 [PROTO_8]
      130 SETTABLEKS                       R11 R10 K21 ["OnFocusLost"]
      132 CALL                             R8 2 1
      133 SETTABLEKS                       R8 R7 K11 ["story"]
      135 SETLIST                          R4 R5 3 [1]
      137 SETTABLEKS                       R4 R3 K8 ["stories"]
      139 RETURN                           R3 1
