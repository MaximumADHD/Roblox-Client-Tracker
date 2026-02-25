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
       24 DUPTABLE                         R7 K11 [{"text"}]
       25 LOADK                            R8 K12 ["Discard feedback"]
       26 SETTABLEKS                       R8 R7 K10 ["text"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K6 ["Title"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K0 ["createElement"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K1 ["Dialog"]
       37 GETTABLEKS                       R6 R7 K7 ["Content"]
       39 LOADNIL                          R7
       40 DUPTABLE                         R8 K14 [{"Message"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R9 R10 K0 ["createElement"]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K15 ["Text"]
       47 DUPTABLE                         R11 K18 [{"tag", "Text", "LayoutOrder"}]
       48 LOADK                            R12 K19 ["auto-xy padding-top-medium"]
       49 SETTABLEKS                       R12 R11 K16 ["tag"]
       51 LOADK                            R12 K20 ["Are you sure you want to discard your changes?"]
       52 SETTABLEKS                       R12 R11 K15 ["Text"]
       54 GETUPVAL                         R12 2
       55 CALL                             R12 0 1
       56 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K13 ["Message"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K7 ["Content"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K0 ["createElement"]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R7 R8 K1 ["Dialog"]
       70 GETTABLEKS                       R6 R7 K8 ["Actions"]
       72 DUPTABLE                         R7 K22 [{"actions", "LayoutOrder"}]
       73 NEWTABLE                         R8 0 2
       75 DUPTABLE                         R9 K25 [{"variant", "text", "onActivated"}]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K26 ["Enums"]
       79 GETTABLEKS                       R11 R12 K27 ["ButtonVariant"]
       81 GETTABLEKS                       R10 R11 K28 ["Standard"]
       83 SETTABLEKS                       R10 R9 K23 ["variant"]
       85 LOADK                            R10 K29 ["Keep editing"]
       86 SETTABLEKS                       R10 R9 K10 ["text"]
       88 GETTABLEKS                       R10 R0 K30 ["onKeepEditing"]
       90 SETTABLEKS                       R10 R9 K24 ["onActivated"]
       92 DUPTABLE                         R10 K25 [{"variant", "text", "onActivated"}]
       93 GETUPVAL                         R14 1
       94 GETTABLEKS                       R13 R14 K26 ["Enums"]
       96 GETTABLEKS                       R12 R13 K27 ["ButtonVariant"]
       98 GETTABLEKS                       R11 R12 K31 ["Emphasis"]
      100 SETTABLEKS                       R11 R10 K23 ["variant"]
      102 LOADK                            R11 K32 ["Discard"]
      103 SETTABLEKS                       R11 R10 K10 ["text"]
      105 GETTABLEKS                       R11 R0 K33 ["onDiscard"]
      107 SETTABLEKS                       R11 R10 K24 ["onActivated"]
      109 SETLIST                          R8 R9 2 [1]
      111 SETTABLEKS                       R8 R7 K21 ["actions"]
      113 GETUPVAL                         R8 2
      114 CALL                             R8 0 1
      115 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K8 ["Actions"]
      120 CALL                             R1 3 -1
      121 RETURN                           R1 -1

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
