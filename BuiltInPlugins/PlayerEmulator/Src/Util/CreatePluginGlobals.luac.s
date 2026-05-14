MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R5 R5 K9 ["Http"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K8 ["ContextServices"]
       38 GETTABLEKS                       R6 R6 K11 ["NetworkingContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Resources"]
       47 GETTABLEKS                       R7 R7 K13 ["MakeTheme"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Resources"]
       54 GETTABLEKS                       R7 R7 K14 ["SourceStrings"]
       56 GETTABLEKS                       R8 R0 K10 ["Src"]
       58 GETTABLEKS                       R8 R8 K12 ["Resources"]
       60 GETTABLEKS                       R8 R8 K15 ["LocalizedStrings"]
       62 GETIMPORT                        R9 K4 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Src"]
       66 GETTABLEKS                       R10 R10 K16 ["Reducers"]
       68 GETTABLEKS                       R10 R10 K17 ["createMainReducer"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R3 K18 ["Localization"]
       73 GETTABLEKS                       R10 R10 K19 ["new"]
       75 DUPTABLE                         R11 K23 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       76 SETTABLEKS                       R7 R11 K20 ["stringResourceTable"]
       78 SETTABLEKS                       R8 R11 K21 ["translationResourceTable"]
       80 LOADK                            R12 K24 ["PlayerEmulator"]
       81 SETTABLEKS                       R12 R11 K22 ["pluginName"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R1 K25 ["Store"]
       86 GETTABLEKS                       R11 R11 K19 ["new"]
       88 MOVE                             R12 R9
       89 CALL                             R12 0 1
       90 LOADNIL                          R13
       91 NEWTABLE                         R14 0 1
       93 GETTABLEKS                       R15 R1 K26 ["thunkMiddleware"]
       95 SETLIST                          R14 R15 1 [1]
       97 CALL                             R11 3 1
       98 GETTABLEKS                       R12 R4 K27 ["Networking"]
      100 GETTABLEKS                       R12 R12 K19 ["new"]
      102 DUPTABLE                         R13 K30 [{"isInternal", "loggingLevel"}]
      103 LOADB                            R14 1
      104 SETTABLEKS                       R14 R13 K28 ["isInternal"]
      106 LOADN                            R14 0
      107 SETTABLEKS                       R14 R13 K29 ["loggingLevel"]
      109 CALL                             R12 1 1
      110 DUPTABLE                         R13 K35 [{"theme", "localization", "store", "networking"}]
      111 MOVE                             R14 R6
      112 CALL                             R14 0 1
      113 SETTABLEKS                       R14 R13 K31 ["theme"]
      115 SETTABLEKS                       R10 R13 K32 ["localization"]
      117 GETTABLEKS                       R14 R3 K25 ["Store"]
      119 GETTABLEKS                       R14 R14 K19 ["new"]
      121 MOVE                             R15 R11
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K33 ["store"]
      125 GETTABLEKS                       R14 R5 K19 ["new"]
      127 MOVE                             R15 R12
      128 CALL                             R14 1 1
      129 SETTABLEKS                       R14 R13 K34 ["networking"]
      131 RETURN                           R13 1
