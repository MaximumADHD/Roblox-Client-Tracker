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
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Reducers"]
       22 GETTABLEKS                       R3 R3 K9 ["Status"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Reducers"]
       31 GETTABLEKS                       R4 R4 K10 ["PreviewStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Reducers"]
       40 GETTABLEKS                       R5 R5 K11 ["SelectItem"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K8 ["Reducers"]
       49 GETTABLEKS                       R6 R6 K12 ["ControlsPanelBlocker"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K8 ["Reducers"]
       58 GETTABLEKS                       R7 R7 K13 ["PreviewAssets"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K8 ["Reducers"]
       67 GETTABLEKS                       R8 R8 K14 ["Animation"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R1 K15 ["combineReducers"]
       72 DUPTABLE                         R9 K22 [{"status", "previewStatus", "selectItem", "controlsPanelBlocker", "previewAssets", "animation"}]
       73 SETTABLEKS                       R2 R9 K16 ["status"]
       75 SETTABLEKS                       R3 R9 K17 ["previewStatus"]
       77 SETTABLEKS                       R4 R9 K18 ["selectItem"]
       79 SETTABLEKS                       R5 R9 K19 ["controlsPanelBlocker"]
       81 SETTABLEKS                       R6 R9 K20 ["previewAssets"]
       83 SETTABLEKS                       R7 R9 K21 ["animation"]
       85 CALL                             R8 1 1
       86 RETURN                           R8 1
