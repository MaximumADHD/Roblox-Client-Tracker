MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPTABLE                         R1 K14 [{"Colors", "ColorSystem", "ComponentSymbols", "createDefaultTheme", "getRawComponentStyle", "makeTheme", "Padding", "StudioColorClasses", "StyleKey", "ThemeSwitcher", "Themes"}]
        8 GETIMPORT                        R2 K16 [require]
       10 GETTABLEKS                       R4 R0 K17 ["Style"]
       12 GETTABLEKS                       R3 R4 K3 ["Colors"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K3 ["Colors"]
       17 GETIMPORT                        R2 K16 [require]
       19 GETTABLEKS                       R4 R0 K17 ["Style"]
       21 GETTABLEKS                       R3 R4 K4 ["ColorSystem"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["ColorSystem"]
       26 GETIMPORT                        R2 K16 [require]
       28 GETTABLEKS                       R4 R0 K17 ["Style"]
       30 GETTABLEKS                       R3 R4 K5 ["ComponentSymbols"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K5 ["ComponentSymbols"]
       35 GETIMPORT                        R2 K16 [require]
       37 GETTABLEKS                       R4 R0 K17 ["Style"]
       39 GETTABLEKS                       R3 R4 K6 ["createDefaultTheme"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R1 K6 ["createDefaultTheme"]
       44 GETIMPORT                        R2 K16 [require]
       46 GETTABLEKS                       R4 R0 K17 ["Style"]
       48 GETTABLEKS                       R3 R4 K7 ["getRawComponentStyle"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K7 ["getRawComponentStyle"]
       53 GETIMPORT                        R2 K16 [require]
       55 GETTABLEKS                       R4 R0 K17 ["Style"]
       57 GETTABLEKS                       R3 R4 K8 ["makeTheme"]
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R1 K8 ["makeTheme"]
       62 GETIMPORT                        R2 K16 [require]
       64 GETTABLEKS                       R4 R0 K17 ["Style"]
       66 GETTABLEKS                       R3 R4 K9 ["Padding"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R1 K9 ["Padding"]
       71 GETIMPORT                        R2 K16 [require]
       73 GETTABLEKS                       R5 R0 K17 ["Style"]
       75 GETTABLEKS                       R4 R5 K4 ["ColorSystem"]
       77 GETTABLEKS                       R3 R4 K10 ["StudioColorClasses"]
       79 CALL                             R2 1 1
       80 SETTABLEKS                       R2 R1 K10 ["StudioColorClasses"]
       82 GETIMPORT                        R2 K16 [require]
       84 GETTABLEKS                       R4 R0 K17 ["Style"]
       86 GETTABLEKS                       R3 R4 K11 ["StyleKey"]
       88 CALL                             R2 1 1
       89 SETTABLEKS                       R2 R1 K11 ["StyleKey"]
       91 GETIMPORT                        R2 K16 [require]
       93 GETTABLEKS                       R4 R0 K17 ["Style"]
       95 GETTABLEKS                       R3 R4 K12 ["ThemeSwitcher"]
       97 CALL                             R2 1 1
       98 SETTABLEKS                       R2 R1 K12 ["ThemeSwitcher"]
      100 DUPTABLE                         R2 K22 [{"BaseTheme", "DarkTheme", "LightTheme", "StudioTheme"}]
      101 GETIMPORT                        R3 K16 [require]
      103 GETTABLEKS                       R6 R0 K17 ["Style"]
      105 GETTABLEKS                       R5 R6 K13 ["Themes"]
      107 GETTABLEKS                       R4 R5 K18 ["BaseTheme"]
      109 CALL                             R3 1 1
      110 SETTABLEKS                       R3 R2 K18 ["BaseTheme"]
      112 GETIMPORT                        R3 K16 [require]
      114 GETTABLEKS                       R6 R0 K17 ["Style"]
      116 GETTABLEKS                       R5 R6 K13 ["Themes"]
      118 GETTABLEKS                       R4 R5 K19 ["DarkTheme"]
      120 CALL                             R3 1 1
      121 SETTABLEKS                       R3 R2 K19 ["DarkTheme"]
      123 GETIMPORT                        R3 K16 [require]
      125 GETTABLEKS                       R6 R0 K17 ["Style"]
      127 GETTABLEKS                       R5 R6 K13 ["Themes"]
      129 GETTABLEKS                       R4 R5 K20 ["LightTheme"]
      131 CALL                             R3 1 1
      132 SETTABLEKS                       R3 R2 K20 ["LightTheme"]
      134 GETIMPORT                        R3 K16 [require]
      136 GETTABLEKS                       R6 R0 K17 ["Style"]
      138 GETTABLEKS                       R5 R6 K13 ["Themes"]
      140 GETTABLEKS                       R4 R5 K21 ["StudioTheme"]
      142 CALL                             R3 1 1
      143 SETTABLEKS                       R3 R2 K21 ["StudioTheme"]
      145 SETTABLEKS                       R2 R1 K13 ["Themes"]
      147 RETURN                           R1 1
