MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["createUnimplemented"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K26 [{"previews", "addOrUpdatePreview", "updatePreview", "removePreview", "addError", "popError", "removeErrorById", "getTopError", "modelToPreview", "addOrUpdateModelToPreview", "quota", "setQuota", "total", "setTotal"}]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K12 ["previews"]
       35 MOVE                             R5 R3
       36 LOADK                            R6 K13 ["addOrUpdatePreview"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K13 ["addOrUpdatePreview"]
       40 MOVE                             R5 R3
       41 LOADK                            R6 K14 ["updatePreview"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K14 ["updatePreview"]
       45 MOVE                             R5 R3
       46 LOADK                            R6 K15 ["removePreview"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K15 ["removePreview"]
       50 MOVE                             R5 R3
       51 LOADK                            R6 K16 ["addError"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K16 ["addError"]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K17 ["popError"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K17 ["popError"]
       60 MOVE                             R5 R3
       61 LOADK                            R6 K18 ["removeErrorById"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K18 ["removeErrorById"]
       65 MOVE                             R5 R3
       66 LOADK                            R6 K19 ["getTopError"]
       67 CALL                             R5 1 1
       68 SETTABLEKS                       R5 R4 K19 ["getTopError"]
       70 NEWTABLE                         R5 0 0
       72 SETTABLEKS                       R5 R4 K20 ["modelToPreview"]
       74 MOVE                             R5 R3
       75 LOADK                            R6 K21 ["addOrUpdateModelToPreview"]
       76 CALL                             R5 1 1
       77 SETTABLEKS                       R5 R4 K21 ["addOrUpdateModelToPreview"]
       79 LOADN                            R5 0
       80 SETTABLEKS                       R5 R4 K22 ["quota"]
       82 MOVE                             R5 R3
       83 LOADK                            R6 K23 ["setQuota"]
       84 CALL                             R5 1 1
       85 SETTABLEKS                       R5 R4 K23 ["setQuota"]
       87 LOADN                            R5 0
       88 SETTABLEKS                       R5 R4 K24 ["total"]
       90 MOVE                             R5 R3
       91 LOADK                            R6 K25 ["setTotal"]
       92 CALL                             R5 1 1
       93 SETTABLEKS                       R5 R4 K25 ["setTotal"]
       95 GETTABLEKS                       R5 R1 K27 ["createContext"]
       97 MOVE                             R6 R4
       98 CALL                             R5 1 1
       99 RETURN                           R5 1
