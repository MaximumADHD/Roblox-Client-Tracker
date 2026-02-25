PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Dialog"]
        6 GETTABLEKS                       R2 R3 K2 ["Root"]
        8 DUPTABLE                         R3 K5 [{"disablePortal", "hasBackdrop"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K3 ["disablePortal"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K4 ["hasBackdrop"]
       15 DUPTABLE                         R4 K9 [{"Title", "Content", "Actions"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K1 ["Dialog"]
       22 GETTABLEKS                       R6 R7 K6 ["Title"]
       24 DUPTABLE                         R7 K12 [{"text", "LayoutOrder"}]
       25 LOADK                            R8 K13 ["Feedback posted"]
       26 SETTABLEKS                       R8 R7 K10 ["text"]
       28 GETUPVAL                         R8 2
       29 CALL                             R8 0 1
       30 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["Title"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K0 ["createElement"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R7 R8 K1 ["Dialog"]
       41 GETTABLEKS                       R6 R7 K7 ["Content"]
       43 DUPTABLE                         R7 K14 [{"LayoutOrder"}]
       44 GETUPVAL                         R8 2
       45 CALL                             R8 0 1
       46 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       48 DUPTABLE                         R8 K16 [{"Message"}]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K0 ["createElement"]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K17 ["Text"]
       55 DUPTABLE                         R11 K19 [{"tag", "Text"}]
       56 LOADK                            R12 K20 ["auto-xy text-wrap text-align-x-left text-align-y-top padding-top-medium"]
       57 SETTABLEKS                       R12 R11 K18 ["tag"]
       59 LOADK                            R12 K21 ["Your feedback has been submitted! Thank you for helping us to improve Flipbook"]
       60 SETTABLEKS                       R12 R11 K17 ["Text"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K15 ["Message"]
       65 CALL                             R5 3 1
       66 SETTABLEKS                       R5 R4 K7 ["Content"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R5 R6 K0 ["createElement"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K1 ["Dialog"]
       74 GETTABLEKS                       R6 R7 K8 ["Actions"]
       76 DUPTABLE                         R7 K23 [{"actions", "LayoutOrder"}]
       77 NEWTABLE                         R8 0 1
       79 DUPTABLE                         R9 K26 [{"variant", "text", "onActivated"}]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R12 R13 K27 ["Enums"]
       83 GETTABLEKS                       R11 R12 K28 ["ButtonVariant"]
       85 GETTABLEKS                       R10 R11 K29 ["Emphasis"]
       87 SETTABLEKS                       R10 R9 K24 ["variant"]
       89 LOADK                            R10 K30 ["Close"]
       90 SETTABLEKS                       R10 R9 K10 ["text"]
       92 GETTABLEKS                       R10 R0 K31 ["onClose"]
       94 SETTABLEKS                       R10 R9 K25 ["onActivated"]
       96 SETLIST                          R8 R9 1 [1]
       98 SETTABLEKS                       R8 R7 K22 ["actions"]
      100 GETUPVAL                         R8 2
      101 CALL                             R8 0 1
      102 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      104 CALL                             R5 2 1
      105 SETTABLEKS                       R5 R4 K8 ["Actions"]
      107 CALL                             R1 3 -1
      108 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["React"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K9 ["Common"]
       37 GETTABLEKS                       R3 R4 K10 ["nextLayoutOrder"]
       39 CALL                             R2 1 1
       40 DUPCLOSURE                       R3 K11 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 RETURN                           R3 1
