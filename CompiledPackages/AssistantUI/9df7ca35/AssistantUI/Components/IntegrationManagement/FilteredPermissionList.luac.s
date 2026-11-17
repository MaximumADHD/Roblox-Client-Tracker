PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["results"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+34]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K7 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["testId"], ["LayoutOrder"]}]
        8 GETUPVAL                         R4 2
        9 LOADK                            R6 K8 ["Permissions"]
       10 LOADK                            R7 K9 ["FilterNoResults"]
       11 DUPTABLE                         R8 K11 [{"query"}]
       12 GETUPVAL                         R9 3
       13 GETTABLEKS                       R9 R9 K12 ["normalizeQuery"]
       15 GETTABLEKS                       R10 R0 K10 ["query"]
       17 CALL                             R9 1 1
       18 SETTABLEKS                       R9 R8 K10 ["query"]
       20 NAMECALL                         R4 R4 K13 ["getText"]
       22 CALL                             R4 4 1
       23 SETTABLEKS                       R4 R3 K4 ["Text"]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K14 ["ScopePermissions"]
       28 GETTABLEKS                       R4 R4 K9 ["FilterNoResults"]
       30 SETTABLEKS                       R4 R3 K5 ["testId"]
       32 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       34 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1
       38 NEWTABLE                         R1 0 0
       40 GETTABLEKS                       R2 R0 K0 ["results"]
       42 LOADNIL                          R3
       43 LOADNIL                          R4
       44 FORGPREP                         R2
       45 GETTABLEKS                       R7 R6 K15 ["entry"]
       47 GETTABLEKS                       R7 R7 K16 ["key"]
       49 GETUPVAL                         R8 0
       50 GETUPVAL                         R9 5
       51 DUPTABLE                         R10 K20 [{"entry", "categoryName", "onToggle", "isDisabled", "testId", "LayoutOrder"}]
       52 GETTABLEKS                       R11 R6 K15 ["entry"]
       54 SETTABLEKS                       R11 R10 K15 ["entry"]
       56 GETTABLEKS                       R11 R6 K17 ["categoryName"]
       58 SETTABLEKS                       R11 R10 K17 ["categoryName"]
       60 GETTABLEKS                       R11 R0 K18 ["onToggle"]
       62 SETTABLEKS                       R11 R10 K18 ["onToggle"]
       64 GETTABLEKS                       R11 R0 K19 ["isDisabled"]
       66 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K14 ["ScopePermissions"]
       71 GETTABLEKS                       R11 R11 K21 ["FilteredRow"]
       73 MOVE                             R12 R7
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K5 ["testId"]
       77 MULK                             R12 R5 K23 [2]
       78 SUBK                             R11 R12 K22 [1]
       79 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       81 CALL                             R8 2 1
       82 SETTABLE                         R8 R1 R7
       83 LOADK                            R8 K24 ["%*-divider"]
       84 MOVE                             R10 R7
       85 NAMECALL                         R8 R8 K25 ["format"]
       87 CALL                             R8 2 1
       88 GETUPVAL                         R9 0
       89 GETUPVAL                         R10 6
       90 DUPTABLE                         R11 K26 [{"LayoutOrder"}]
       91 MULK                             R12 R5 K23 [2]
       92 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       94 CALL                             R9 2 1
       95 SETTABLE                         R9 R1 R8
       96 FORGLOOP                         R2 2 ; [-52]
       98 GETUPVAL                         R2 0
       99 GETUPVAL                         R3 7
      100 DUPTABLE                         R4 K28 [{["tag"] = "col size-full-0 auto-y", ["testId"], ["LayoutOrder"]}]
      101 GETUPVAL                         R5 4
      102 GETTABLEKS                       R5 R5 K14 ["ScopePermissions"]
      104 GETTABLEKS                       R5 R5 K29 ["FilteredList"]
      106 SETTABLEKS                       R5 R4 K5 ["testId"]
      108 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
      110 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
      112 MOVE                             R5 R1
      113 CALL                             R2 3 -1
      114 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["PermissionFilter"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["IntegrationManagement"]
       22 GETTABLEKS                       R3 R3 K9 ["PermissionRow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["TestIds"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Localization"]
       38 GETTABLEKS                       R5 R5 K14 ["Translator"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Parent"]
       52 GETTABLEKS                       R7 R7 K17 ["React"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R5 K18 ["Divider"]
       57 GETTABLEKS                       R8 R5 K19 ["Text"]
       59 GETTABLEKS                       R9 R5 K20 ["View"]
       61 GETTABLEKS                       R10 R6 K21 ["createElement"]
       63 DUPCLOSURE                       R11 K22 [PROTO_0]
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 RETURN                           R11 1
