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
       12 DUPTABLE                         R4 K8 [{["rating"] = , ["message"] = "", ["problems"]}]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K7 ["problems"]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["useState"]
       21 LOADN                            R6 100
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["useState"]
       26 LOADB                            R8 0
       27 CALL                             R7 1 2
       28 JUMPIFNOT                        R7 ; [+56]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K9 ["createElement"]
       32 GETUPVAL                         R10 3
       33 DUPTABLE                         R11 K20 [{["key"] = "Finish", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       34 LOADK                            R14 K21 ["Survey"]
       35 LOADK                            R15 K15 ["Title"]
       36 NAMECALL                         R12 R1 K22 ["getText"]
       38 CALL                             R12 3 1
       39 SETTABLEKS                       R12 R11 K15 ["Title"]
       41 GETTABLEKS                       R12 R2 K23 ["FinishDialogSize"]
       43 SETTABLEKS                       R12 R11 K16 ["MinContentSize"]
       45 NEWTABLE                         R12 0 1
       47 DUPTABLE                         R13 K27 [{["Key"] = "close", ["Text"]}]
       48 LOADK                            R16 K1 ["SurveyDialog"]
       49 LOADK                            R17 K28 ["Close"]
       50 NAMECALL                         R14 R1 K22 ["getText"]
       52 CALL                             R14 3 1
       53 SETTABLEKS                       R14 R13 K26 ["Text"]
       55 SETLIST                          R12 R13 1 [1]
       57 SETTABLEKS                       R12 R11 K17 ["Buttons"]
       59 GETTABLEKS                       R12 R0 K25 ["close"]
       61 SETTABLEKS                       R12 R11 K18 ["OnButtonPressed"]
       63 GETTABLEKS                       R12 R0 K25 ["close"]
       65 SETTABLEKS                       R12 R11 K19 ["OnClose"]
       67 DUPTABLE                         R12 K30 [{"Label"}]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K9 ["createElement"]
       71 GETUPVAL                         R14 4
       72 DUPTABLE                         R15 K31 [{"Text"}]
       73 LOADK                            R18 K1 ["SurveyDialog"]
       74 LOADK                            R19 K32 ["FinishAlert"]
       75 NAMECALL                         R16 R1 K22 ["getText"]
       77 CALL                             R16 3 1
       78 SETTABLEKS                       R16 R15 K26 ["Text"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K29 ["Label"]
       83 CALL                             R9 3 -1
       84 RETURN                           R9 -1
       85 GETUPVAL                         R9 2
       86 GETTABLEKS                       R9 R9 K9 ["createElement"]
       88 GETUPVAL                         R10 3
       89 DUPTABLE                         R11 K33 [{["key"] = "Survey", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       90 LOADK                            R14 K21 ["Survey"]
       91 LOADK                            R15 K15 ["Title"]
       92 NAMECALL                         R12 R1 K22 ["getText"]
       94 CALL                             R12 3 1
       95 SETTABLEKS                       R12 R11 K15 ["Title"]
       97 GETIMPORT                        R12 K36 [Vector2.new]
       99 GETTABLEKS                       R13 R2 K37 ["Width"]
      101 MOVE                             R14 R5
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K16 ["MinContentSize"]
      105 NEWTABLE                         R12 0 1
      107 DUPTABLE                         R13 K42 [{["Key"] = "send", ["Text"], ["Style"] = "RoundPrimary", ["StyleModifier"]}]
      108 LOADK                            R16 K1 ["SurveyDialog"]
      109 LOADK                            R17 K43 ["SendFeedback"]
      110 NAMECALL                         R14 R1 K22 ["getText"]
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K26 ["Text"]
      115 GETTABLEKS                       R15 R3 K3 ["rating"]
      117 JUMPIFNOTEQKNIL                  R15 ; [+5]
      119 GETUPVAL                         R14 5
      120 GETTABLEKS                       R14 R14 K44 ["Disabled"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R14
      124 SETTABLEKS                       R14 R13 K41 ["StyleModifier"]
      126 SETLIST                          R12 R13 1 [1]
      128 SETTABLEKS                       R12 R11 K17 ["Buttons"]
      130 NEWCLOSURE                       R12 P0
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R12 R11 K18 ["OnButtonPressed"]
      136 GETTABLEKS                       R12 R0 K25 ["close"]
      138 SETTABLEKS                       R12 R11 K19 ["OnClose"]
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R12 R12 K9 ["createElement"]
      143 GETUPVAL                         R13 6
      144 DUPTABLE                         R14 K48 [{"results", "setResults", "setHeight"}]
      145 SETTABLEKS                       R3 R14 K45 ["results"]
      147 SETTABLEKS                       R4 R14 K46 ["setResults"]
      149 SETTABLEKS                       R6 R14 K47 ["setHeight"]
      151 CALL                             R12 2 -1
      152 CALL                             R9 -1 -1
      153 RETURN                           R9 -1

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
