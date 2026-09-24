MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Util"]
        9 GETTABLEKS                       R2 R2 K6 ["strict"]
       11 CALL                             R1 1 1
       12 MOVE                             R2 R1
       13 DUPTABLE                         R3 K19 [{"Colors", "ComponentSymbols", "createDefaultTheme", "makeTheme", "getRawComponentStyle", "Padding", "StyleKey", "Stylizer", "ThemeSwitcher", "Themes", "ColorSystem", "StudioColorClasses"}]
       14 GETIMPORT                        R4 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R5 R5 K7 ["Colors"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K7 ["Colors"]
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K8 ["ComponentSymbols"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K8 ["ComponentSymbols"]
       32 GETIMPORT                        R4 K4 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K9 ["createDefaultTheme"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R3 K9 ["createDefaultTheme"]
       41 GETIMPORT                        R4 K4 [require]
       43 GETIMPORT                        R5 K1 [script]
       45 GETTABLEKS                       R5 R5 K10 ["makeTheme"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K10 ["makeTheme"]
       50 GETIMPORT                        R4 K4 [require]
       52 GETIMPORT                        R5 K1 [script]
       54 GETTABLEKS                       R5 R5 K11 ["getRawComponentStyle"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K11 ["getRawComponentStyle"]
       59 GETIMPORT                        R4 K4 [require]
       61 GETIMPORT                        R5 K1 [script]
       63 GETTABLEKS                       R5 R5 K12 ["Padding"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K12 ["Padding"]
       68 GETIMPORT                        R4 K4 [require]
       70 GETIMPORT                        R5 K1 [script]
       72 GETTABLEKS                       R5 R5 K13 ["StyleKey"]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K13 ["StyleKey"]
       77 GETIMPORT                        R4 K4 [require]
       79 GETTABLEKS                       R5 R0 K20 ["UI"]
       81 GETTABLEKS                       R5 R5 K21 ["ContextServices"]
       83 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K14 ["Stylizer"]
       88 GETIMPORT                        R4 K4 [require]
       90 GETIMPORT                        R5 K1 [script]
       92 GETTABLEKS                       R5 R5 K15 ["ThemeSwitcher"]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R4 R3 K15 ["ThemeSwitcher"]
       97 MOVE                             R4 R1
       98 DUPTABLE                         R5 K28 [{"BaseTheme", "DarkTheme", "LightTheme", "StudioTheme", "FoundationDark", "FoundationLight"}]
       99 GETIMPORT                        R6 K4 [require]
      101 GETIMPORT                        R7 K1 [script]
      103 GETTABLEKS                       R7 R7 K16 ["Themes"]
      105 GETTABLEKS                       R7 R7 K22 ["BaseTheme"]
      107 CALL                             R6 1 1
      108 SETTABLEKS                       R6 R5 K22 ["BaseTheme"]
      110 GETIMPORT                        R6 K4 [require]
      112 GETIMPORT                        R7 K1 [script]
      114 GETTABLEKS                       R7 R7 K16 ["Themes"]
      116 GETTABLEKS                       R7 R7 K23 ["DarkTheme"]
      118 CALL                             R6 1 1
      119 SETTABLEKS                       R6 R5 K23 ["DarkTheme"]
      121 GETIMPORT                        R6 K4 [require]
      123 GETIMPORT                        R7 K1 [script]
      125 GETTABLEKS                       R7 R7 K16 ["Themes"]
      127 GETTABLEKS                       R7 R7 K24 ["LightTheme"]
      129 CALL                             R6 1 1
      130 SETTABLEKS                       R6 R5 K24 ["LightTheme"]
      132 GETIMPORT                        R6 K4 [require]
      134 GETIMPORT                        R7 K1 [script]
      136 GETTABLEKS                       R7 R7 K16 ["Themes"]
      138 GETTABLEKS                       R7 R7 K25 ["StudioTheme"]
      140 CALL                             R6 1 1
      141 SETTABLEKS                       R6 R5 K25 ["StudioTheme"]
      143 GETIMPORT                        R6 K4 [require]
      145 GETIMPORT                        R7 K1 [script]
      147 GETTABLEKS                       R7 R7 K16 ["Themes"]
      149 GETTABLEKS                       R7 R7 K26 ["FoundationDark"]
      151 CALL                             R6 1 1
      152 SETTABLEKS                       R6 R5 K26 ["FoundationDark"]
      154 GETIMPORT                        R6 K4 [require]
      156 GETIMPORT                        R7 K1 [script]
      158 GETTABLEKS                       R7 R7 K16 ["Themes"]
      160 GETTABLEKS                       R7 R7 K27 ["FoundationLight"]
      162 CALL                             R6 1 1
      163 SETTABLEKS                       R6 R5 K27 ["FoundationLight"]
      165 CALL                             R4 1 1
      166 SETTABLEKS                       R4 R3 K16 ["Themes"]
      168 GETIMPORT                        R4 K4 [require]
      170 GETIMPORT                        R5 K1 [script]
      172 GETTABLEKS                       R5 R5 K17 ["ColorSystem"]
      174 CALL                             R4 1 1
      175 SETTABLEKS                       R4 R3 K17 ["ColorSystem"]
      177 GETIMPORT                        R4 K4 [require]
      179 GETIMPORT                        R5 K1 [script]
      181 GETTABLEKS                       R5 R5 K17 ["ColorSystem"]
      183 GETTABLEKS                       R5 R5 K18 ["StudioColorClasses"]
      185 CALL                             R4 1 1
      186 SETTABLEKS                       R4 R3 K18 ["StudioColorClasses"]
      188 CALL                             R2 1 -1
      189 RETURN                           R2 -1
