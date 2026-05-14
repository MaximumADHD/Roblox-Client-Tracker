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
       49 DUPTABLE                         R9 K26 [{"Background", "BackgroundStyle", "ScrollingFrame", "BackgroundColor", "Padding", "RowHeight", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor", "Link"}]
       50 SETTABLEKS                       R7 R9 K16 ["Background"]
       52 SETTABLEKS                       R7 R9 K17 ["BackgroundStyle"]
       54 SETTABLEKS                       R6 R9 K12 ["ScrollingFrame"]
       56 GETTABLEKS                       R10 R2 K27 ["MainBackground"]
       58 SETTABLEKS                       R10 R9 K18 ["BackgroundColor"]
       60 LOADN                            R10 1
       61 SETTABLEKS                       R10 R9 K19 ["Padding"]
       63 LOADN                            R10 24
       64 SETTABLEKS                       R10 R9 K20 ["RowHeight"]
       66 LOADN                            R10 5
       67 SETTABLEKS                       R10 R9 K21 ["IconPadding"]
       69 GETTABLEKS                       R10 R2 K28 ["ButtonHover"]
       71 SETTABLEKS                       R10 R9 K22 ["HoverColor"]
       73 GETTABLEKS                       R10 R2 K29 ["DialogMainButton"]
       75 SETTABLEKS                       R10 R9 K23 ["SelectedColor"]
       77 GETTABLEKS                       R10 R2 K30 ["DialogMainButtonText"]
       79 SETTABLEKS                       R10 R9 K24 ["SelectedTextColor"]
       81 MOVE                             R10 R4
       82 MOVE                             R11 R8
       83 CALL                             R10 1 1
       84 SETTABLEKS                       R10 R9 K25 ["Link"]
       86 RETURN                           R9 1
