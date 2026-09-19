PROTO_0:
        0 DUPTABLE                         R0 K2 [{"absoluteSizeHook", "observeControlledHeight"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["absoluteSizeHook"]
        4 SETTABLEKS                       R1 R0 K0 ["absoluteSizeHook"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["observeControlledHeight"]
        9 SETTABLEKS                       R1 R0 K1 ["observeControlledHeight"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["absoluteSizeHook"]
        9 GETTABLEKS                       R5 R0 K2 ["observeControlledHeight"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["Provider"]
       20 DUPTABLE                         R4 K6 [{"value"}]
       21 SETTABLEKS                       R1 R4 K5 ["value"]
       23 GETTABLEKS                       R5 R0 K7 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K12 ["useAbsoluteSize"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K15 [{"absoluteSizeHook", "observeControlledHeight"}]
       43 DUPTABLE                         R7 K22 [{"observeAbsoluteSize", "observeAbsolutePosition", "observeRelativeAbsolutePosition", "observeFrame", "observeAbsoluteSizeState", "setFrame"}]
       44 GETTABLEKS                       R8 R4 K23 ["of"]
       46 LOADNIL                          R9
       47 CALL                             R8 1 1
       48 SETTABLEKS                       R8 R7 K16 ["observeAbsoluteSize"]
       50 GETTABLEKS                       R8 R4 K23 ["of"]
       52 LOADNIL                          R9
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K17 ["observeAbsolutePosition"]
       56 GETTABLEKS                       R8 R2 K24 ["createUnimplemented"]
       58 LOADK                            R9 K18 ["observeRelativeAbsolutePosition"]
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R8 R7 K18 ["observeRelativeAbsolutePosition"]
       62 GETTABLEKS                       R8 R4 K23 ["of"]
       64 LOADNIL                          R9
       65 CALL                             R8 1 1
       66 SETTABLEKS                       R8 R7 K19 ["observeFrame"]
       68 GETTABLEKS                       R8 R4 K23 ["of"]
       70 LOADNIL                          R9
       71 CALL                             R8 1 1
       72 SETTABLEKS                       R8 R7 K20 ["observeAbsoluteSizeState"]
       74 GETTABLEKS                       R8 R2 K24 ["createUnimplemented"]
       76 LOADK                            R9 K21 ["setFrame"]
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K21 ["setFrame"]
       80 SETTABLEKS                       R7 R6 K13 ["absoluteSizeHook"]
       82 GETTABLEKS                       R7 R4 K23 ["of"]
       84 LOADNIL                          R8
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R6 K14 ["observeControlledHeight"]
       88 GETTABLEKS                       R7 R1 K25 ["createContext"]
       90 MOVE                             R8 R6
       91 CALL                             R7 1 1
       92 DUPCLOSURE                       R8 K26 [PROTO_1]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R7
       95 DUPTABLE                         R9 K29 [{"Context", "Provider"}]
       96 SETTABLEKS                       R7 R9 K27 ["Context"]
       98 SETTABLEKS                       R8 R9 K28 ["Provider"]
      100 RETURN                           R9 1
