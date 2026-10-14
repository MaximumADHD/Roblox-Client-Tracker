MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["types"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K15 [{"createDesign", "createStudioDesign", "createStyleLink", "createStyleRule", "createStyleSheet", "joinTags", "hasTag", "omitTags", "registerPluginStyles", "printStyleSheetHierarchy"}]
        9 GETIMPORT                        R2 K1 [require]
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R3 R3 K5 ["createDesign"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["createDesign"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K6 ["createStudioDesign"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["createStudioDesign"]
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K7 ["createStyleLink"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["createStyleLink"]
       36 GETIMPORT                        R2 K1 [require]
       38 GETIMPORT                        R3 K3 [script]
       40 GETTABLEKS                       R3 R3 K8 ["createStyleRule"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K8 ["createStyleRule"]
       45 GETIMPORT                        R2 K1 [require]
       47 GETIMPORT                        R3 K3 [script]
       49 GETTABLEKS                       R3 R3 K9 ["createStyleSheet"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R1 K9 ["createStyleSheet"]
       54 GETIMPORT                        R2 K1 [require]
       56 GETIMPORT                        R3 K3 [script]
       58 GETTABLEKS                       R3 R3 K10 ["joinTags"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K10 ["joinTags"]
       63 GETIMPORT                        R2 K1 [require]
       65 GETIMPORT                        R3 K3 [script]
       67 GETTABLEKS                       R3 R3 K11 ["hasTag"]
       69 CALL                             R2 1 1
       70 SETTABLEKS                       R2 R1 K11 ["hasTag"]
       72 GETIMPORT                        R2 K1 [require]
       74 GETIMPORT                        R3 K3 [script]
       76 GETTABLEKS                       R3 R3 K12 ["omitTags"]
       78 CALL                             R2 1 1
       79 SETTABLEKS                       R2 R1 K12 ["omitTags"]
       81 GETIMPORT                        R2 K1 [require]
       83 GETIMPORT                        R3 K3 [script]
       85 GETTABLEKS                       R3 R3 K13 ["registerPluginStyles"]
       87 CALL                             R2 1 1
       88 SETTABLEKS                       R2 R1 K13 ["registerPluginStyles"]
       90 GETIMPORT                        R2 K1 [require]
       92 GETIMPORT                        R3 K3 [script]
       94 GETTABLEKS                       R3 R3 K14 ["printStyleSheetHierarchy"]
       96 CALL                             R2 1 1
       97 SETTABLEKS                       R2 R1 K14 ["printStyleSheetHierarchy"]
       99 RETURN                           R1 1
