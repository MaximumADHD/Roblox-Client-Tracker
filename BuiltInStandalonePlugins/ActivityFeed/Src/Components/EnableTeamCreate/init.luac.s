PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showSaveOrPublishPlaceToRobloxFn"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 LOADK                            R4 K3 ["Frame"]
       13 NEWTABLE                         R5 1 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K4 ["Tag"]
       18 GETUPVAL                         R7 3
       19 LOADK                            R8 K5 ["X-Column"]
       20 LOADK                            R9 K6 ["X-Center"]
       21 LOADK                            R10 K7 ["Component-EnableTeamCreate"]
       22 CALL                             R7 3 1
       23 SETTABLE                         R7 R5 R6
       24 DUPTABLE                         R6 K11 [{"UnsavedExperienceIcon", "Text", "Button"}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K2 ["createElement"]
       28 LOADK                            R8 K12 ["ImageLabel"]
       29 DUPTABLE                         R9 K14 [{"LayoutOrder"}]
       30 GETUPVAL                         R10 4
       31 NAMECALL                         R10 R10 K15 ["getNextOrder"]
       33 CALL                             R10 1 1
       34 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K8 ["UnsavedExperienceIcon"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K2 ["createElement"]
       42 LOADK                            R8 K16 ["TextLabel"]
       43 NEWTABLE                         R9 4 0
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K4 ["Tag"]
       48 GETUPVAL                         R11 3
       49 LOADK                            R12 K17 ["CX-Invisible"]
       50 LOADK                            R13 K18 ["X-Fit"]
       51 CALL                             R11 2 1
       52 SETTABLE                         R11 R9 R10
       53 GETUPVAL                         R10 4
       54 NAMECALL                         R10 R10 K15 ["getNextOrder"]
       56 CALL                             R10 1 1
       57 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       59 LOADK                            R12 K19 ["EnableTeamCreate"]
       60 LOADK                            R13 K20 ["SaveText"]
       61 NAMECALL                         R10 R2 K21 ["getText"]
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K9 ["Text"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K9 ["Text"]
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K2 ["createElement"]
       72 LOADK                            R8 K22 ["TextButton"]
       73 NEWTABLE                         R9 4 0
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K4 ["Tag"]
       78 GETUPVAL                         R11 3
       79 LOADK                            R12 K23 ["X-Corner"]
       80 LOADK                            R13 K18 ["X-Fit"]
       81 CALL                             R11 2 1
       82 SETTABLE                         R11 R9 R10
       83 GETUPVAL                         R10 4
       84 NAMECALL                         R10 R10 K15 ["getNextOrder"]
       86 CALL                             R10 1 1
       87 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K24 ["Event"]
       92 GETTABLEKS                       R10 R10 K25 ["Activated"]
       94 NEWCLOSURE                       R11 P0
       95 CAPTURE                          VAL R1
       96 SETTABLE                         R11 R9 R10
       97 LOADK                            R12 K19 ["EnableTeamCreate"]
       98 LOADK                            R13 K26 ["SaveToRobloxButtonText"]
       99 NAMECALL                         R10 R2 K21 ["getText"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K9 ["Text"]
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K10 ["Button"]
      107 CALL                             R3 3 -1
      108 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K10 ["ActivityHistoryContext"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       34 GETTABLEKS                       R4 R4 K12 ["Localization"]
       36 GETTABLEKS                       R5 R2 K13 ["Util"]
       38 GETTABLEKS                       R5 R5 K14 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R6 R5 K15 ["new"]
       42 CALL                             R6 0 1
       43 GETTABLEKS                       R7 R2 K16 ["Styling"]
       45 GETTABLEKS                       R7 R7 K17 ["joinTags"]
       47 DUPCLOSURE                       R8 K18 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 RETURN                           R8 1
