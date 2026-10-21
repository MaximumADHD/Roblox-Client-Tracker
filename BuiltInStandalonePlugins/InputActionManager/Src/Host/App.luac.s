PROTO_0:
        0 NEWTABLE                         R1 0 7
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Provider"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["createElement"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["createElement"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K1 ["Provider"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R5 2
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["createElement"]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K1 ["Provider"]
       36 CALL                             R4 1 1
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["createElement"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K2 ["Fragment"]
       44 CALL                             R4 1 1
       45 GETUPVAL                         R6 2
       46 CALL                             R6 0 1
       47 JUMPIFNOT                        R6 ; [+8]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R6 R6 K1 ["Provider"]
       54 CALL                             R5 1 1
       55 JUMP                             ; [+7]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["createElement"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K2 ["Fragment"]
       62 CALL                             R5 1 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K0 ["createElement"]
       66 GETUPVAL                         R7 6
       67 GETTABLEKS                       R7 R7 K1 ["Provider"]
       69 CALL                             R6 1 1
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K0 ["createElement"]
       73 GETUPVAL                         R8 7
       74 GETTABLEKS                       R8 R8 K1 ["Provider"]
       76 DUPTABLE                         R9 K5 [{"plugin", "pluginEnabled"}]
       77 GETTABLEKS                       R10 R0 K3 ["plugin"]
       79 SETTABLEKS                       R10 R9 K3 ["plugin"]
       81 GETTABLEKS                       R10 R0 K4 ["pluginEnabled"]
       83 SETTABLEKS                       R10 R9 K4 ["pluginEnabled"]
       85 CALL                             R7 2 1
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K0 ["createElement"]
       89 GETUPVAL                         R9 8
       90 GETTABLEKS                       R9 R9 K1 ["Provider"]
       92 CALL                             R8 1 -1
       93 SETLIST                          R1 R2 -1 [1]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R2 R2 K0 ["createElement"]
       98 GETUPVAL                         R3 9
       99 GETTABLEKS                       R3 R3 K6 ["ContextStack"]
      101 DUPTABLE                         R4 K8 [{"providers"}]
      102 SETTABLEKS                       R1 R4 K7 ["providers"]
      104 DUPTABLE                         R5 K10 [{"Root"}]
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K0 ["createElement"]
      108 GETUPVAL                         R7 10
      109 CALL                             R6 1 1
      110 SETTABLEKS                       R6 R5 K9 ["Root"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ExpansionConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["FilterConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["InputConfiguration"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K14 ["PluginConfiguration"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K10 ["Contexts"]
       63 GETTABLEKS                       R8 R8 K15 ["SchemaConfiguration"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["Contexts"]
       72 GETTABLEKS                       R9 R9 K16 ["SelectionConfiguration"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K10 ["Contexts"]
       81 GETTABLEKS                       R10 R10 K17 ["Status"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K18 ["Components"]
       90 GETTABLEKS                       R11 R11 K19 ["Root"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R0 K9 ["Src"]
       95 GETTABLEKS                       R11 R11 K20 ["Flags"]
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R11 K21 ["getFFlagIAMRefactorPluginConfiguration"]
      101 CALL                             R12 1 1
      102 DUPCLOSURE                       R13 K22 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 RETURN                           R13 1
