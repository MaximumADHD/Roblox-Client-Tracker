PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K3 [{"tag"}]
        7 LOADK                            R4 K4 ["size-full col padding-medium gap-medium"]
        8 SETTABLEKS                       R4 R3 K2 ["tag"]
       10 DUPTABLE                         R4 K7 [{"Body", "ButtonPanel"}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["createElement"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["View"]
       17 DUPTABLE                         R7 K3 [{"tag"}]
       18 LOADK                            R8 K8 ["size-0-full auto-x shrink row gap-medium"]
       19 SETTABLEKS                       R8 R7 K2 ["tag"]
       21 DUPTABLE                         R8 K11 [{"loadingIcon", "MainText"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K0 ["createElement"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K1 ["View"]
       28 DUPTABLE                         R11 K13 [{"tag", "LayoutOrder"}]
       29 LOADK                            R12 K14 ["align-y-center auto-xy padding-small"]
       30 SETTABLEKS                       R12 R11 K2 ["tag"]
       32 LOADN                            R12 1
       33 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       35 DUPTABLE                         R12 K16 [{"container"}]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K0 ["createElement"]
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R14 R14 K1 ["View"]
       42 DUPTABLE                         R15 K13 [{"tag", "LayoutOrder"}]
       43 LOADK                            R16 K17 ["size-0-0 auto-xy"]
       44 SETTABLEKS                       R16 R15 K2 ["tag"]
       46 LOADN                            R16 1
       47 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       49 NEWTABLE                         R16 0 1
       51 GETUPVAL                         R17 0
       52 GETTABLEKS                       R17 R17 K0 ["createElement"]
       54 GETUPVAL                         R18 2
       55 DUPTABLE                         R19 K20 [{"size", "testId"}]
       56 GETUPVAL                         R20 3
       57 GETTABLEKS                       R20 R20 K21 ["Medium"]
       59 SETTABLEKS                       R20 R19 K18 ["size"]
       61 LOADK                            R20 K22 ["loadingSymbol"]
       62 SETTABLEKS                       R20 R19 K19 ["testId"]
       64 CALL                             R17 2 -1
       65 SETLIST                          R16 R17 -1 [1]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K15 ["container"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K9 ["loadingIcon"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K0 ["createElement"]
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K23 ["Text"]
       79 DUPTABLE                         R11 K24 [{"tag", "Text", "LayoutOrder", "testId"}]
       80 LOADK                            R12 K25 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y shrink padding-small"]
       81 SETTABLEKS                       R12 R11 K2 ["tag"]
       83 GETTABLEKS                       R12 R0 K26 ["text"]
       85 SETTABLEKS                       R12 R11 K23 ["Text"]
       87 LOADN                            R12 2
       88 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       90 LOADK                            R12 K27 ["loadingText"]
       91 SETTABLEKS                       R12 R11 K19 ["testId"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K10 ["MainText"]
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K5 ["Body"]
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K0 ["createElement"]
      102 GETUPVAL                         R6 1
      103 GETTABLEKS                       R6 R6 K1 ["View"]
      105 DUPTABLE                         R7 K13 [{"tag", "LayoutOrder"}]
      106 LOADK                            R8 K28 ["row align-x-right padding-small size-full-1200 gap-medium"]
      107 SETTABLEKS                       R8 R7 K2 ["tag"]
      109 LOADN                            R8 2
      110 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      112 CALL                             R5 2 1
      113 SETTABLEKS                       R5 R4 K6 ["ButtonPanel"]
      115 CALL                             R1 3 -1
      116 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Loading"]
       23 GETTABLEKS                       R4 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["IconSize"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
