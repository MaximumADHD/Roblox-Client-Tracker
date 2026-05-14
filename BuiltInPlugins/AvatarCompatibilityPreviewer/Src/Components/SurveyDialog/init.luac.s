PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["submitResults"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SurveyDialog"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 DUPTABLE                         R4 K6 [{"rating", "message", "problems"}]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K3 ["rating"]
       16 LOADK                            R5 K7 [""]
       17 SETTABLEKS                       R5 R4 K4 ["message"]
       19 NEWTABLE                         R5 0 0
       21 SETTABLEKS                       R5 R4 K5 ["problems"]
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K2 ["useState"]
       27 LOADN                            R6 100
       28 CALL                             R5 1 2
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K2 ["useState"]
       32 LOADB                            R8 0
       33 CALL                             R7 1 2
       34 JUMPIFNOT                        R7 ; [+68]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K8 ["createElement"]
       38 GETUPVAL                         R10 3
       39 DUPTABLE                         R11 K17 [{"key", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       40 LOADK                            R12 K18 ["Finish"]
       41 SETTABLEKS                       R12 R11 K9 ["key"]
       43 LOADB                            R12 1
       44 SETTABLEKS                       R12 R11 K10 ["Enabled"]
       46 LOADB                            R12 1
       47 SETTABLEKS                       R12 R11 K11 ["Modal"]
       49 LOADK                            R14 K19 ["Survey"]
       50 LOADK                            R15 K12 ["Title"]
       51 NAMECALL                         R12 R1 K20 ["getText"]
       53 CALL                             R12 3 1
       54 SETTABLEKS                       R12 R11 K12 ["Title"]
       56 GETTABLEKS                       R12 R2 K21 ["FinishDialogSize"]
       58 SETTABLEKS                       R12 R11 K13 ["MinContentSize"]
       60 NEWTABLE                         R12 0 1
       62 DUPTABLE                         R13 K24 [{"Key", "Text"}]
       63 LOADK                            R14 K25 ["close"]
       64 SETTABLEKS                       R14 R13 K22 ["Key"]
       66 LOADK                            R16 K1 ["SurveyDialog"]
       67 LOADK                            R17 K26 ["Close"]
       68 NAMECALL                         R14 R1 K20 ["getText"]
       70 CALL                             R14 3 1
       71 SETTABLEKS                       R14 R13 K23 ["Text"]
       73 SETLIST                          R12 R13 1 [1]
       75 SETTABLEKS                       R12 R11 K14 ["Buttons"]
       77 GETTABLEKS                       R12 R0 K25 ["close"]
       79 SETTABLEKS                       R12 R11 K15 ["OnButtonPressed"]
       81 GETTABLEKS                       R12 R0 K25 ["close"]
       83 SETTABLEKS                       R12 R11 K16 ["OnClose"]
       85 DUPTABLE                         R12 K28 [{"Label"}]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K8 ["createElement"]
       89 GETUPVAL                         R14 4
       90 DUPTABLE                         R15 K29 [{"Text"}]
       91 LOADK                            R18 K1 ["SurveyDialog"]
       92 LOADK                            R19 K30 ["FinishAlert"]
       93 NAMECALL                         R16 R1 K20 ["getText"]
       95 CALL                             R16 3 1
       96 SETTABLEKS                       R16 R15 K23 ["Text"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K27 ["Label"]
      101 CALL                             R9 3 -1
      102 RETURN                           R9 -1
      103 GETUPVAL                         R9 2
      104 GETTABLEKS                       R9 R9 K8 ["createElement"]
      106 GETUPVAL                         R10 3
      107 DUPTABLE                         R11 K17 [{"key", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      108 LOADK                            R12 K19 ["Survey"]
      109 SETTABLEKS                       R12 R11 K9 ["key"]
      111 LOADB                            R12 1
      112 SETTABLEKS                       R12 R11 K10 ["Enabled"]
      114 LOADB                            R12 1
      115 SETTABLEKS                       R12 R11 K11 ["Modal"]
      117 LOADK                            R14 K19 ["Survey"]
      118 LOADK                            R15 K12 ["Title"]
      119 NAMECALL                         R12 R1 K20 ["getText"]
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K12 ["Title"]
      124 GETIMPORT                        R12 K33 [Vector2.new]
      126 GETTABLEKS                       R13 R2 K34 ["Width"]
      128 MOVE                             R14 R5
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K13 ["MinContentSize"]
      132 NEWTABLE                         R12 0 1
      134 DUPTABLE                         R13 K37 [{"Key", "Text", "Style", "StyleModifier"}]
      135 LOADK                            R14 K38 ["send"]
      136 SETTABLEKS                       R14 R13 K22 ["Key"]
      138 LOADK                            R16 K1 ["SurveyDialog"]
      139 LOADK                            R17 K39 ["SendFeedback"]
      140 NAMECALL                         R14 R1 K20 ["getText"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K23 ["Text"]
      145 LOADK                            R14 K40 ["RoundPrimary"]
      146 SETTABLEKS                       R14 R13 K35 ["Style"]
      148 GETTABLEKS                       R15 R3 K3 ["rating"]
      150 JUMPIFNOTEQKNIL                  R15 ; [+5]
      152 GETUPVAL                         R14 5
      153 GETTABLEKS                       R14 R14 K41 ["Disabled"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R14
      157 SETTABLEKS                       R14 R13 K36 ["StyleModifier"]
      159 SETLIST                          R12 R13 1 [1]
      161 SETTABLEKS                       R12 R11 K14 ["Buttons"]
      163 NEWCLOSURE                       R12 P0
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R8
      167 SETTABLEKS                       R12 R11 K15 ["OnButtonPressed"]
      169 GETTABLEKS                       R12 R0 K25 ["close"]
      171 SETTABLEKS                       R12 R11 K16 ["OnClose"]
      173 GETUPVAL                         R12 2
      174 GETTABLEKS                       R12 R12 K8 ["createElement"]
      176 GETUPVAL                         R13 6
      177 DUPTABLE                         R14 K45 [{"results", "setResults", "setHeight"}]
      178 SETTABLEKS                       R3 R14 K42 ["results"]
      180 SETTABLEKS                       R4 R14 K43 ["setResults"]
      182 SETTABLEKS                       R6 R14 K44 ["setHeight"]
      184 CALL                             R12 2 -1
      185 CALL                             R9 -1 -1
      186 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Survey"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K14 ["UI"]
       46 GETTABLEKS                       R7 R6 K15 ["StyledDialog"]
       48 GETTABLEKS                       R8 R6 K16 ["TextLabel"]
       50 GETTABLEKS                       R9 R1 K17 ["ContextServices"]
       52 GETTABLEKS                       R9 R9 K18 ["Localization"]
       54 GETTABLEKS                       R10 R1 K17 ["ContextServices"]
       56 GETTABLEKS                       R10 R10 K19 ["Stylizer"]
       58 GETTABLEKS                       R11 R1 K20 ["Util"]
       60 GETTABLEKS                       R11 R11 K21 ["StyleModifier"]
       62 DUPCLOSURE                       R12 K22 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R3
       70 RETURN                           R12 1
