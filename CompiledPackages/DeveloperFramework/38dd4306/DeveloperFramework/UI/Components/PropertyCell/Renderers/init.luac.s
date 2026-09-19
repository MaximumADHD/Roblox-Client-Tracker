MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"Actions", "Breadcrumb", "Checkbox", "Color", "Number", "Slider", "Select", "SingleSelectButton", "Text", "Vector"}]
        2 GETIMPORT                        R1 K12 [require]
        4 GETIMPORT                        R2 K14 [script]
        6 GETTABLEKS                       R2 R2 K15 ["ActionsRenderer"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Actions"]
       11 GETIMPORT                        R1 K12 [require]
       13 GETIMPORT                        R2 K14 [script]
       15 GETTABLEKS                       R2 R2 K16 ["BreadcrumbRenderer"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["Breadcrumb"]
       20 GETIMPORT                        R1 K12 [require]
       22 GETIMPORT                        R2 K14 [script]
       24 GETTABLEKS                       R2 R2 K17 ["CheckboxRenderer"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["Checkbox"]
       29 GETIMPORT                        R1 K12 [require]
       31 GETIMPORT                        R2 K14 [script]
       33 GETTABLEKS                       R2 R2 K18 ["ColorRenderer"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["Color"]
       38 GETIMPORT                        R1 K12 [require]
       40 GETIMPORT                        R2 K14 [script]
       42 GETTABLEKS                       R2 R2 K19 ["NumberRenderer"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["Number"]
       47 GETIMPORT                        R1 K12 [require]
       49 GETIMPORT                        R2 K14 [script]
       51 GETTABLEKS                       R2 R2 K20 ["SliderRenderer"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["Slider"]
       56 GETIMPORT                        R1 K12 [require]
       58 GETIMPORT                        R2 K14 [script]
       60 GETTABLEKS                       R2 R2 K21 ["SelectRenderer"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K6 ["Select"]
       65 GETIMPORT                        R1 K12 [require]
       67 GETIMPORT                        R2 K14 [script]
       69 GETTABLEKS                       R2 R2 K22 ["SingleSelectButtonRenderer"]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K7 ["SingleSelectButton"]
       74 GETIMPORT                        R1 K12 [require]
       76 GETIMPORT                        R2 K14 [script]
       78 GETTABLEKS                       R2 R2 K23 ["TextRenderer"]
       80 CALL                             R1 1 1
       81 SETTABLEKS                       R1 R0 K8 ["Text"]
       83 GETIMPORT                        R1 K12 [require]
       85 GETIMPORT                        R2 K14 [script]
       87 GETTABLEKS                       R2 R2 K24 ["VectorRenderer"]
       89 CALL                             R1 1 1
       90 SETTABLEKS                       R1 R0 K9 ["Vector"]
       92 RETURN                           R0 1
