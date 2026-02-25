PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 3
       13 MOVE                             R6 R2
       14 CALL                             R5 1 1
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["useState"]
       18 NEWTABLE                         R7 0 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 4
       22 MOVE                             R9 R7
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 5
       25 CALL                             R9 0 1
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K0 ["useState"]
       29 LOADN                            R11 0
       30 CALL                             R10 1 2
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R12 R13 K0 ["useState"]
       34 LOADN                            R13 0
       35 CALL                             R12 1 2
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R14 R15 K1 ["createElement"]
       39 GETUPVAL                         R16 6
       40 GETTABLEKS                       R15 R16 K2 ["Provider"]
       42 DUPTABLE                         R16 K4 [{"value"}]
       43 DUPTABLE                         R17 K19 [{"previews", "addOrUpdatePreview", "updatePreview", "removePreview", "addError", "popError", "getTopError", "removeErrorById", "modelToPreview", "addOrUpdateModelToPreview", "quota", "setQuota", "total", "setTotal"}]
       44 SETTABLEKS                       R1 R17 K5 ["previews"]
       46 SETTABLEKS                       R3 R17 K6 ["addOrUpdatePreview"]
       48 SETTABLEKS                       R4 R17 K7 ["updatePreview"]
       50 SETTABLEKS                       R5 R17 K8 ["removePreview"]
       52 GETTABLEKS                       R18 R9 K9 ["addError"]
       54 SETTABLEKS                       R18 R17 K9 ["addError"]
       56 GETTABLEKS                       R18 R9 K10 ["popError"]
       58 SETTABLEKS                       R18 R17 K10 ["popError"]
       60 GETTABLEKS                       R18 R9 K11 ["getTopError"]
       62 SETTABLEKS                       R18 R17 K11 ["getTopError"]
       64 GETTABLEKS                       R18 R9 K12 ["removeErrorById"]
       66 SETTABLEKS                       R18 R17 K12 ["removeErrorById"]
       68 SETTABLEKS                       R6 R17 K13 ["modelToPreview"]
       70 SETTABLEKS                       R8 R17 K14 ["addOrUpdateModelToPreview"]
       72 SETTABLEKS                       R10 R17 K15 ["quota"]
       74 SETTABLEKS                       R11 R17 K16 ["setQuota"]
       76 SETTABLEKS                       R12 R17 K17 ["total"]
       78 SETTABLEKS                       R13 R17 K18 ["setTotal"]
       80 SETTABLEKS                       R17 R16 K3 ["value"]
       82 GETTABLEKS                       R17 R0 K20 ["children"]
       84 CALL                             R14 3 -1
       85 RETURN                           R14 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["PreviewsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R5 K12 ["useAddOrUpdateModelToPreview"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Hooks"]
       38 GETTABLEKS                       R5 R6 K13 ["useAddOrUpdatePreview"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Hooks"]
       47 GETTABLEKS                       R6 R7 K14 ["useErrorStates"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K11 ["Hooks"]
       56 GETTABLEKS                       R7 R8 K15 ["useRemovePreview"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K11 ["Hooks"]
       65 GETTABLEKS                       R8 R9 K16 ["useUpdatePreview"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K17 [PROTO_0]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R2
       76 RETURN                           R8 1
