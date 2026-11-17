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
        9 GETTABLEKS                       R4 R0 K2 ["survey"]
       11 JUMPIFNOTEQKS                    R4 K3 ["AvatarCreation"] ; [+3]
       13 LOADK                            R3 K4 ["PromptToAvatarSurvey"]
       14 JUMP                             ; [+1]
       15 LOADK                            R3 K5 ["Survey"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K6 ["useState"]
       19 DUPTABLE                         R5 K12 [{["rating"] = , ["message"] = "", ["problems"]}]
       20 NEWTABLE                         R6 0 0
       22 SETTABLEKS                       R6 R5 K11 ["problems"]
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K6 ["useState"]
       28 LOADN                            R7 100
       29 CALL                             R6 1 2
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K6 ["useState"]
       33 LOADB                            R9 0
       34 CALL                             R8 1 2
       35 JUMPIFNOT                        R8 ; [+56]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K13 ["createElement"]
       39 GETUPVAL                         R11 3
       40 DUPTABLE                         R12 K24 [{["key"] = "Finish", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       41 MOVE                             R15 R3
       42 LOADK                            R16 K19 ["Title"]
       43 NAMECALL                         R13 R1 K25 ["getText"]
       45 CALL                             R13 3 1
       46 SETTABLEKS                       R13 R12 K19 ["Title"]
       48 GETTABLEKS                       R13 R2 K26 ["FinishDialogSize"]
       50 SETTABLEKS                       R13 R12 K20 ["MinContentSize"]
       52 NEWTABLE                         R13 0 1
       54 DUPTABLE                         R14 K30 [{["Key"] = "close", ["Text"]}]
       55 LOADK                            R17 K1 ["SurveyDialog"]
       56 LOADK                            R18 K31 ["Close"]
       57 NAMECALL                         R15 R1 K25 ["getText"]
       59 CALL                             R15 3 1
       60 SETTABLEKS                       R15 R14 K29 ["Text"]
       62 SETLIST                          R13 R14 1 [1]
       64 SETTABLEKS                       R13 R12 K21 ["Buttons"]
       66 GETTABLEKS                       R13 R0 K28 ["close"]
       68 SETTABLEKS                       R13 R12 K22 ["OnButtonPressed"]
       70 GETTABLEKS                       R13 R0 K28 ["close"]
       72 SETTABLEKS                       R13 R12 K23 ["OnClose"]
       74 DUPTABLE                         R13 K33 [{"Label"}]
       75 GETUPVAL                         R14 2
       76 GETTABLEKS                       R14 R14 K13 ["createElement"]
       78 GETUPVAL                         R15 4
       79 DUPTABLE                         R16 K34 [{"Text"}]
       80 LOADK                            R19 K1 ["SurveyDialog"]
       81 LOADK                            R20 K35 ["FinishAlert"]
       82 NAMECALL                         R17 R1 K25 ["getText"]
       84 CALL                             R17 3 1
       85 SETTABLEKS                       R17 R16 K29 ["Text"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K32 ["Label"]
       90 CALL                             R10 3 -1
       91 RETURN                           R10 -1
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K13 ["createElement"]
       95 GETUPVAL                         R11 3
       96 DUPTABLE                         R12 K36 [{["key"] = "Survey", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       97 MOVE                             R15 R3
       98 LOADK                            R16 K19 ["Title"]
       99 NAMECALL                         R13 R1 K25 ["getText"]
      101 CALL                             R13 3 1
      102 SETTABLEKS                       R13 R12 K19 ["Title"]
      104 GETIMPORT                        R13 K39 [Vector2.new]
      106 GETTABLEKS                       R14 R2 K40 ["Width"]
      108 MOVE                             R15 R6
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K20 ["MinContentSize"]
      112 NEWTABLE                         R13 0 1
      114 DUPTABLE                         R14 K45 [{["Key"] = "send", ["Text"], ["Style"] = "RoundPrimary", ["StyleModifier"]}]
      115 LOADK                            R17 K1 ["SurveyDialog"]
      116 LOADK                            R18 K46 ["SendFeedback"]
      117 NAMECALL                         R15 R1 K25 ["getText"]
      119 CALL                             R15 3 1
      120 SETTABLEKS                       R15 R14 K29 ["Text"]
      122 GETTABLEKS                       R16 R4 K7 ["rating"]
      124 JUMPIFNOTEQKNIL                  R16 ; [+5]
      126 GETUPVAL                         R15 5
      127 GETTABLEKS                       R15 R15 K47 ["Disabled"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R15
      131 SETTABLEKS                       R15 R14 K44 ["StyleModifier"]
      133 SETLIST                          R13 R14 1 [1]
      135 SETTABLEKS                       R13 R12 K21 ["Buttons"]
      137 NEWCLOSURE                       R13 P0
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R9
      141 SETTABLEKS                       R13 R12 K22 ["OnButtonPressed"]
      143 GETTABLEKS                       R13 R0 K28 ["close"]
      145 SETTABLEKS                       R13 R12 K23 ["OnClose"]
      147 GETUPVAL                         R13 2
      148 GETTABLEKS                       R13 R13 K13 ["createElement"]
      150 GETUPVAL                         R14 6
      151 DUPTABLE                         R15 K51 [{"survey", "results", "setResults", "setHeight"}]
      152 GETTABLEKS                       R16 R0 K2 ["survey"]
      154 SETTABLEKS                       R16 R15 K2 ["survey"]
      156 SETTABLEKS                       R4 R15 K48 ["results"]
      158 SETTABLEKS                       R5 R15 K49 ["setResults"]
      160 SETTABLEKS                       R7 R15 K50 ["setHeight"]
      162 CALL                             R13 2 -1
      163 CALL                             R10 -1 -1
      164 RETURN                           R10 -1

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
