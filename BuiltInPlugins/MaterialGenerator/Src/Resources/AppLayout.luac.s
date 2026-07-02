MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["EDITOR_WIDTH"]
       20 GETTABLEKS                       R3 R1 K9 ["EDITOR_HEIGHT"]
       22 GETTABLEKS                       R4 R1 K10 ["PROMPT_HEIGHT"]
       24 LOADN                            R7 2
       25 MUL                              R6 R7 R2
       26 ADDK                             R5 R6 K11 [50]
       27 NEWTABLE                         R6 0 4
       29 DUPTABLE                         R7 K13 [{"value"}]
       30 DUPTABLE                         R8 K19 [{["name"] = "Prompt, Browser, Editor (horizontal)", ["fillDirection"], ["mainContentSize"], ["editorSize"]}]
       31 GETIMPORT                        R9 K23 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R9 R8 K16 ["fillDirection"]
       35 GETIMPORT                        R9 K26 [UDim2.new]
       37 LOADN                            R10 1
       38 MINUS                            R11 R2
       39 LOADN                            R12 1
       40 LOADN                            R13 0
       41 CALL                             R9 4 1
       42 SETTABLEKS                       R9 R8 K17 ["mainContentSize"]
       44 GETIMPORT                        R9 K26 [UDim2.new]
       46 LOADN                            R10 0
       47 MOVE                             R11 R2
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K18 ["editorSize"]
       53 SETTABLEKS                       R8 R7 K12 ["value"]
       55 DUPTABLE                         R8 K28 [{"maxWidth", "value"}]
       56 SETTABLEKS                       R5 R8 K27 ["maxWidth"]
       58 DUPTABLE                         R9 K30 [{["name"] = "Prompt, Browser, Editor (vertical)", ["fillDirection"], ["mainContentSize"], ["editorSize"]}]
       59 GETIMPORT                        R10 K32 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R10 R9 K16 ["fillDirection"]
       63 GETIMPORT                        R10 K26 [UDim2.new]
       65 LOADN                            R11 1
       66 LOADN                            R12 0
       67 LOADN                            R13 1
       68 MINUS                            R14 R3
       69 CALL                             R10 4 1
       70 SETTABLEKS                       R10 R9 K17 ["mainContentSize"]
       72 GETIMPORT                        R10 K26 [UDim2.new]
       74 LOADN                            R11 1
       75 LOADN                            R12 0
       76 LOADN                            R13 0
       77 MOVE                             R14 R3
       78 CALL                             R10 4 1
       79 SETTABLEKS                       R10 R9 K18 ["editorSize"]
       81 SETTABLEKS                       R9 R8 K12 ["value"]
       83 DUPTABLE                         R9 K34 [{"maxWidth", "maxHeight", "value"}]
       84 SETTABLEKS                       R5 R9 K27 ["maxWidth"]
       86 ADD                              R11 R4 R3
       87 ADDK                             R10 R11 K11 [50]
       88 SETTABLEKS                       R10 R9 K33 ["maxHeight"]
       90 DUPTABLE                         R10 K38 [{["name"] = "Prompt, Editor (vertical)", ["fillDirection"], ["mainContentSize"], ["editorSize"], ["browserVisible"] = False}]
       91 GETIMPORT                        R11 K32 [Enum.FillDirection.Vertical]
       93 SETTABLEKS                       R11 R10 K16 ["fillDirection"]
       95 GETIMPORT                        R11 K26 [UDim2.new]
       97 LOADN                            R12 1
       98 LOADN                            R13 0
       99 LOADN                            R14 0
      100 MOVE                             R15 R4
      101 CALL                             R11 4 1
      102 SETTABLEKS                       R11 R10 K17 ["mainContentSize"]
      104 GETIMPORT                        R11 K26 [UDim2.new]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 LOADN                            R14 1
      109 MINUS                            R15 R4
      110 CALL                             R11 4 1
      111 SETTABLEKS                       R11 R10 K18 ["editorSize"]
      113 SETTABLEKS                       R10 R9 K12 ["value"]
      115 DUPTABLE                         R10 K34 [{"maxWidth", "maxHeight", "value"}]
      116 SETTABLEKS                       R5 R10 K27 ["maxWidth"]
      118 ADDK                             R11 R3 K11 [50]
      119 SETTABLEKS                       R11 R10 K33 ["maxHeight"]
      121 DUPTABLE                         R11 K41 [{["name"] = "Editor only", ["mainContentVisible"] = False, ["editorSize"]}]
      122 GETIMPORT                        R12 K43 [UDim2.fromScale]
      124 LOADN                            R13 1
      125 LOADN                            R14 1
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K18 ["editorSize"]
      129 SETTABLEKS                       R11 R10 K12 ["value"]
      131 SETLIST                          R6 R7 4 [1]
      133 RETURN                           R6 1
