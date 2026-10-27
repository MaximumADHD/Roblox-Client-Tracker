MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K4 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["UIFolderData"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R6 K15 ["RoundBox"]
       50 GETTABLEKS                       R8 R8 K16 ["style"]
       52 CALL                             R7 1 1
       53 DUPTABLE                         R8 K23 [{["Left"] = 10, ["Top"] = 5, ["Right"] = 10, ["Bottom"] = 5}]
       54 DUPTABLE                         R9 K26 [{["Left"] = 1, ["Top"] = 0, ["Right"] = 0, ["Bottom"] = 0}]
       55 MOVE                             R10 R4
       56 MOVE                             R11 R7
       57 CALL                             R10 1 1
       58 NEWTABLE                         R11 8 0
       60 GETTABLEKS                       R12 R1 K27 ["DimmedText"]
       62 SETTABLEKS                       R12 R11 K28 ["PlaceholderTextColor"]
       64 LOADB                            R12 0
       65 SETTABLEKS                       R12 R11 K29 ["useRoundBox"]
       67 SETTABLEKS                       R9 R11 K30 ["Padding"]
       69 NEWTABLE                         R12 4 0
       71 LOADB                            R13 1
       72 SETTABLEKS                       R13 R12 K29 ["useRoundBox"]
       74 SETTABLEKS                       R8 R12 K30 ["Padding"]
       76 SETTABLEKS                       R7 R12 K31 ["BackgroundStyle"]
       78 GETTABLEKS                       R13 R5 K32 ["Hover"]
       80 DUPTABLE                         R14 K33 [{"BackgroundStyle"}]
       81 GETTABLEKS                       R15 R3 K34 ["Dictionary"]
       83 GETTABLEKS                       R15 R15 K35 ["join"]
       85 MOVE                             R16 R10
       86 DUPTABLE                         R17 K37 [{"BorderColor"}]
       87 GETTABLEKS                       R18 R1 K38 ["DialogMainButton"]
       89 SETTABLEKS                       R18 R17 K36 ["BorderColor"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K31 ["BackgroundStyle"]
       94 SETTABLE                         R14 R12 R13
       95 SETTABLEKS                       R12 R11 K39 ["&RoundedBorder"]
       97 NEWTABLE                         R12 4 0
       99 LOADB                            R13 1
      100 SETTABLEKS                       R13 R12 K29 ["useRoundBox"]
      102 SETTABLEKS                       R8 R12 K30 ["Padding"]
      104 GETTABLEKS                       R13 R3 K34 ["Dictionary"]
      106 GETTABLEKS                       R13 R13 K35 ["join"]
      108 MOVE                             R14 R10
      109 DUPTABLE                         R15 K41 [{"Color"}]
      110 GETTABLEKS                       R16 R1 K42 ["InputFieldBackground"]
      112 SETTABLEKS                       R16 R15 K40 ["Color"]
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K31 ["BackgroundStyle"]
      117 GETTABLEKS                       R13 R5 K43 ["Selected"]
      119 DUPTABLE                         R14 K33 [{"BackgroundStyle"}]
      120 GETTABLEKS                       R15 R3 K34 ["Dictionary"]
      122 GETTABLEKS                       R15 R15 K35 ["join"]
      124 MOVE                             R16 R10
      125 DUPTABLE                         R17 K44 [{"Color", "BorderColor"}]
      126 GETTABLEKS                       R18 R1 K42 ["InputFieldBackground"]
      128 SETTABLEKS                       R18 R17 K40 ["Color"]
      130 GETTABLEKS                       R18 R1 K38 ["DialogMainButton"]
      132 SETTABLEKS                       R18 R17 K36 ["BorderColor"]
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K31 ["BackgroundStyle"]
      137 SETTABLE                         R14 R12 R13
      138 SETTABLEKS                       R12 R11 K45 ["&FilledRoundedBorder"]
      140 DUPTABLE                         R12 K47 [{["useRoundBox"] = True, ["Padding"], ["BackgroundStyle"]}]
      141 SETTABLEKS                       R8 R12 K30 ["Padding"]
      143 GETTABLEKS                       R13 R3 K34 ["Dictionary"]
      145 GETTABLEKS                       R13 R13 K35 ["join"]
      147 MOVE                             R14 R10
      148 DUPTABLE                         R15 K44 [{"Color", "BorderColor"}]
      149 GETTABLEKS                       R16 R1 K42 ["InputFieldBackground"]
      151 SETTABLEKS                       R16 R15 K40 ["Color"]
      153 GETTABLEKS                       R16 R1 K48 ["ErrorText"]
      155 SETTABLEKS                       R16 R15 K36 ["BorderColor"]
      157 CALL                             R13 2 1
      158 SETTABLEKS                       R13 R12 K31 ["BackgroundStyle"]
      160 SETTABLEKS                       R12 R11 K49 ["&FilledRoundedRedBorder"]
      162 RETURN                           R11 1
