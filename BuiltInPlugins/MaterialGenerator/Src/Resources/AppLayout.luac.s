MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["EDITOR_WIDTH"]
       20 GETTABLEKS                       R3 R1 K9 ["EDITOR_HEIGHT"]
       22 GETTABLEKS                       R4 R1 K10 ["PROMPT_HEIGHT"]
       24 LOADN                            R7 2
       25 MUL                              R6 R7 R2
       26 ADDK                             R5 R6 K11 [50]
       27 NEWTABLE                         R6 0 4
       29 DUPTABLE                         R7 K13 [{"value"}]
       30 DUPTABLE                         R8 K18 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
       31 LOADK                            R9 K19 ["Prompt, Browser, Editor (horizontal)"]
       32 SETTABLEKS                       R9 R8 K14 ["name"]
       34 GETIMPORT                        R9 K23 [Enum.FillDirection.Horizontal]
       36 SETTABLEKS                       R9 R8 K15 ["fillDirection"]
       38 GETIMPORT                        R9 K26 [UDim2.new]
       40 LOADN                            R10 1
       41 MINUS                            R11 R2
       42 LOADN                            R12 1
       43 LOADN                            R13 0
       44 CALL                             R9 4 1
       45 SETTABLEKS                       R9 R8 K16 ["mainContentSize"]
       47 GETIMPORT                        R9 K26 [UDim2.new]
       49 LOADN                            R10 0
       50 MOVE                             R11 R2
       51 LOADN                            R12 1
       52 LOADN                            R13 0
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K17 ["editorSize"]
       56 SETTABLEKS                       R8 R7 K12 ["value"]
       58 DUPTABLE                         R8 K28 [{"maxWidth", "value"}]
       59 SETTABLEKS                       R5 R8 K27 ["maxWidth"]
       61 DUPTABLE                         R9 K18 [{"name", "fillDirection", "mainContentSize", "editorSize"}]
       62 LOADK                            R10 K29 ["Prompt, Browser, Editor (vertical)"]
       63 SETTABLEKS                       R10 R9 K14 ["name"]
       65 GETIMPORT                        R10 K31 [Enum.FillDirection.Vertical]
       67 SETTABLEKS                       R10 R9 K15 ["fillDirection"]
       69 GETIMPORT                        R10 K26 [UDim2.new]
       71 LOADN                            R11 1
       72 LOADN                            R12 0
       73 LOADN                            R13 1
       74 MINUS                            R14 R3
       75 CALL                             R10 4 1
       76 SETTABLEKS                       R10 R9 K16 ["mainContentSize"]
       78 GETIMPORT                        R10 K26 [UDim2.new]
       80 LOADN                            R11 1
       81 LOADN                            R12 0
       82 LOADN                            R13 0
       83 MOVE                             R14 R3
       84 CALL                             R10 4 1
       85 SETTABLEKS                       R10 R9 K17 ["editorSize"]
       87 SETTABLEKS                       R9 R8 K12 ["value"]
       89 DUPTABLE                         R9 K33 [{"maxWidth", "maxHeight", "value"}]
       90 SETTABLEKS                       R5 R9 K27 ["maxWidth"]
       92 ADD                              R11 R4 R3
       93 ADDK                             R10 R11 K11 [50]
       94 SETTABLEKS                       R10 R9 K32 ["maxHeight"]
       96 DUPTABLE                         R10 K35 [{"name", "fillDirection", "mainContentSize", "editorSize", "browserVisible"}]
       97 LOADK                            R11 K36 ["Prompt, Editor (vertical)"]
       98 SETTABLEKS                       R11 R10 K14 ["name"]
      100 GETIMPORT                        R11 K31 [Enum.FillDirection.Vertical]
      102 SETTABLEKS                       R11 R10 K15 ["fillDirection"]
      104 GETIMPORT                        R11 K26 [UDim2.new]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 LOADN                            R14 0
      109 MOVE                             R15 R4
      110 CALL                             R11 4 1
      111 SETTABLEKS                       R11 R10 K16 ["mainContentSize"]
      113 GETIMPORT                        R11 K26 [UDim2.new]
      115 LOADN                            R12 1
      116 LOADN                            R13 0
      117 LOADN                            R14 1
      118 MINUS                            R15 R4
      119 CALL                             R11 4 1
      120 SETTABLEKS                       R11 R10 K17 ["editorSize"]
      122 LOADB                            R11 0
      123 SETTABLEKS                       R11 R10 K34 ["browserVisible"]
      125 SETTABLEKS                       R10 R9 K12 ["value"]
      127 DUPTABLE                         R10 K33 [{"maxWidth", "maxHeight", "value"}]
      128 SETTABLEKS                       R5 R10 K27 ["maxWidth"]
      130 ADDK                             R11 R3 K11 [50]
      131 SETTABLEKS                       R11 R10 K32 ["maxHeight"]
      133 DUPTABLE                         R11 K38 [{"name", "mainContentVisible", "editorSize"}]
      134 LOADK                            R12 K39 ["Editor only"]
      135 SETTABLEKS                       R12 R11 K14 ["name"]
      137 LOADB                            R12 0
      138 SETTABLEKS                       R12 R11 K37 ["mainContentVisible"]
      140 GETIMPORT                        R12 K41 [UDim2.fromScale]
      142 LOADN                            R13 1
      143 LOADN                            R14 1
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K17 ["editorSize"]
      147 SETTABLEKS                       R11 R10 K12 ["value"]
      149 SETLIST                          R6 R7 4 [1]
      151 RETURN                           R6 1
