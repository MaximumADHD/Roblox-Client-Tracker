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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K9 [{"stories"}]
       24 NEWTABLE                         R4 0 3
       26 DUPTABLE                         R5 K13 [{["name"] = "RoundedBorder", ["story"]}]
       27 GETTABLEKS                       R6 R1 K14 ["createElement"]
       29 MOVE                             R7 R2
       30 DUPTABLE                         R8 K23 [{["Size"], ["Style"] = "RoundedBorder", ["PlaceholderText"] = "Placeholder", ["TextXAlignment"], ["OnTextChanged"], ["OnFocusGained"], ["OnFocusLost"]}]
       31 GETIMPORT                        R9 K26 [UDim2.new]
       33 LOADN                            R10 0
       34 LOADN                            R11 150
       35 LOADN                            R12 0
       36 LOADN                            R13 20
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K15 ["Size"]
       40 GETIMPORT                        R9 K29 [Enum.TextXAlignment.Center]
       42 SETTABLEKS                       R9 R8 K19 ["TextXAlignment"]
       44 DUPCLOSURE                       R9 K30 [PROTO_0]
       45 SETTABLEKS                       R9 R8 K20 ["OnTextChanged"]
       47 DUPCLOSURE                       R9 K31 [PROTO_1]
       48 SETTABLEKS                       R9 R8 K21 ["OnFocusGained"]
       50 DUPCLOSURE                       R9 K32 [PROTO_2]
       51 SETTABLEKS                       R9 R8 K22 ["OnFocusLost"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K12 ["story"]
       56 DUPTABLE                         R6 K34 [{["name"] = "FilledRoundedBorder", ["story"]}]
       57 GETTABLEKS                       R7 R1 K14 ["createElement"]
       59 MOVE                             R8 R2
       60 DUPTABLE                         R9 K35 [{["Size"], ["Style"] = "FilledRoundedBorder", ["PlaceholderText"] = "Placeholder", ["OnTextChanged"], ["OnFocusGained"], ["OnFocusLost"]}]
       61 GETIMPORT                        R10 K26 [UDim2.new]
       63 LOADN                            R11 0
       64 LOADN                            R12 150
       65 LOADN                            R13 0
       66 LOADN                            R14 20
       67 CALL                             R10 4 1
       68 SETTABLEKS                       R10 R9 K15 ["Size"]
       70 DUPCLOSURE                       R10 K36 [PROTO_3]
       71 SETTABLEKS                       R10 R9 K20 ["OnTextChanged"]
       73 DUPCLOSURE                       R10 K37 [PROTO_4]
       74 SETTABLEKS                       R10 R9 K21 ["OnFocusGained"]
       76 DUPCLOSURE                       R10 K38 [PROTO_5]
       77 SETTABLEKS                       R10 R9 K22 ["OnFocusLost"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K12 ["story"]
       82 DUPTABLE                         R7 K40 [{["name"] = "FilledRoundedRedBorder", ["story"]}]
       83 GETTABLEKS                       R8 R1 K14 ["createElement"]
       85 MOVE                             R9 R2
       86 DUPTABLE                         R10 K41 [{["Size"], ["Style"] = "FilledRoundedRedBorder", ["PlaceholderText"] = "Placeholder", ["OnTextChanged"], ["OnFocusGained"], ["OnFocusLost"]}]
       87 GETIMPORT                        R11 K26 [UDim2.new]
       89 LOADN                            R12 0
       90 LOADN                            R13 150
       91 LOADN                            R14 0
       92 LOADN                            R15 20
       93 CALL                             R11 4 1
       94 SETTABLEKS                       R11 R10 K15 ["Size"]
       96 DUPCLOSURE                       R11 K42 [PROTO_6]
       97 SETTABLEKS                       R11 R10 K20 ["OnTextChanged"]
       99 DUPCLOSURE                       R11 K43 [PROTO_7]
      100 SETTABLEKS                       R11 R10 K21 ["OnFocusGained"]
      102 DUPCLOSURE                       R11 K44 [PROTO_8]
      103 SETTABLEKS                       R11 R10 K22 ["OnFocusLost"]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K12 ["story"]
      108 SETLIST                          R4 R5 3 [1]
      110 SETTABLEKS                       R4 R3 K8 ["stories"]
      112 RETURN                           R3 1
