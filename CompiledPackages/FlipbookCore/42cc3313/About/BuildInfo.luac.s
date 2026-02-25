PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["label"]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K1 ["createElement"]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R9 R10 K2 ["Text"]
       14 DUPTABLE                         R10 K5 [{"tag", "LayoutOrder", "Text"}]
       15 LOADK                            R11 K6 ["auto-xy text-body-medium content-muted"]
       16 SETTABLEKS                       R11 R10 K3 ["tag"]
       18 GETUPVAL                         R11 3
       19 CALL                             R11 0 1
       20 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       22 LOADK                            R12 K7 ["%*: %*"]
       23 GETTABLEKS                       R14 R6 K0 ["label"]
       25 GETTABLEKS                       R15 R6 K8 ["value"]
       27 NAMECALL                         R12 R12 K9 ["format"]
       29 CALL                             R12 3 1
       30 MOVE                             R11 R12
       31 SETTABLEKS                       R11 R10 K2 ["Text"]
       33 CALL                             R8 2 1
       34 SETTABLE                         R8 R1 R7
       35 FORGLOOP                         R2 2 ; [-30]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K1 ["createElement"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R3 R4 K10 ["View"]
       43 DUPTABLE                         R4 K11 [{"tag", "LayoutOrder"}]
       44 LOADK                            R5 K12 ["auto-xy col gap-medium align-x-center"]
       45 SETTABLEKS                       R5 R4 K3 ["tag"]
       47 GETTABLEKS                       R5 R0 K13 ["layoutOrder"]
       49 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       51 MOVE                             R5 R1
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

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
       40 NEWTABLE                         R3 0 3
       42 DUPTABLE                         R4 K13 [{"label", "value"}]
       43 LOADK                            R5 K14 ["Version"]
       44 SETTABLEKS                       R5 R4 K11 ["label"]
       46 LOADK                            R5 K15 ["2.3.0"]
       47 SETTABLEKS                       R5 R4 K12 ["value"]
       49 DUPTABLE                         R5 K13 [{"label", "value"}]
       50 LOADK                            R6 K16 ["Channel"]
       51 SETTABLEKS                       R6 R5 K11 ["label"]
       53 LOADK                            R6 K17 ["production"]
       54 SETTABLEKS                       R6 R5 K12 ["value"]
       56 DUPTABLE                         R6 K13 [{"label", "value"}]
       57 LOADK                            R7 K18 ["Hash"]
       58 SETTABLEKS                       R7 R6 K11 ["label"]
       60 LOADK                            R7 K19 [""]
       61 SETTABLEKS                       R7 R6 K12 ["value"]
       63 SETLIST                          R3 R4 3 [1]
       65 DUPCLOSURE                       R4 K20 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R2
       70 RETURN                           R4 1
