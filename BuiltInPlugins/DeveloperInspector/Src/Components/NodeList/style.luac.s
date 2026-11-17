MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Style"]
       20 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       22 GETTABLEKS                       R3 R1 K9 ["Util"]
       24 GETTABLEKS                       R4 R3 K10 ["deepCopy"]
       26 GETTABLEKS                       R5 R1 K11 ["UIData"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R5 K12 ["ScrollingFrame"]
       32 GETTABLEKS                       R7 R7 K13 ["style"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K4 [require]
       37 GETTABLEKS                       R8 R5 K14 ["RoundBox"]
       39 GETTABLEKS                       R8 R8 K13 ["style"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R5 K15 ["LinkText"]
       46 GETTABLEKS                       R9 R9 K13 ["style"]
       48 CALL                             R8 1 1
       49 DUPTABLE                         R9 K29 [{["Background"], ["BackgroundStyle"], ["ScrollingFrame"], ["BackgroundColor"], ["Padding"] = 1, ["RowHeight"] = 24, ["IconPadding"] = 5, ["HoverColor"], ["SelectedColor"], ["SelectedTextColor"], ["Link"]}]
       50 SETTABLEKS                       R7 R9 K16 ["Background"]
       52 SETTABLEKS                       R7 R9 K17 ["BackgroundStyle"]
       54 SETTABLEKS                       R6 R9 K12 ["ScrollingFrame"]
       56 GETTABLEKS                       R10 R2 K30 ["MainBackground"]
       58 SETTABLEKS                       R10 R9 K18 ["BackgroundColor"]
       60 GETTABLEKS                       R10 R2 K31 ["ButtonHover"]
       62 SETTABLEKS                       R10 R9 K25 ["HoverColor"]
       64 GETTABLEKS                       R10 R2 K32 ["DialogMainButton"]
       66 SETTABLEKS                       R10 R9 K26 ["SelectedColor"]
       68 GETTABLEKS                       R10 R2 K33 ["DialogMainButtonText"]
       70 SETTABLEKS                       R10 R9 K27 ["SelectedTextColor"]
       72 MOVE                             R10 R4
       73 MOVE                             R11 R8
       74 CALL                             R10 1 1
       75 SETTABLEKS                       R10 R9 K28 ["Link"]
       77 RETURN                           R9 1
