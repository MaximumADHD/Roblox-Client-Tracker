PROTO_0:
        0 DUPTABLE                         R0 K1 [{"absoluteSizeHook"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["absoluteSizeHook"]
        4 SETTABLEKS                       R1 R0 K0 ["absoluteSizeHook"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["absoluteSizeHook"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["Provider"]
       18 DUPTABLE                         R4 K5 [{"value"}]
       19 SETTABLEKS                       R1 R4 K4 ["value"]
       21 GETTABLEKS                       R5 R0 K6 ["children"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["SignalsUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K11 ["useAbsoluteSize"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K13 [{"absoluteSizeHook"}]
       36 DUPTABLE                         R6 K20 [{"observeAbsoluteSize", "observeAbsolutePosition", "observeRelativeAbsolutePosition", "observeFrame", "observeAbsoluteSizeState", "setFrame"}]
       37 GETTABLEKS                       R7 R3 K21 ["of"]
       39 LOADNIL                          R8
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K14 ["observeAbsoluteSize"]
       43 GETTABLEKS                       R7 R3 K21 ["of"]
       45 LOADNIL                          R8
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K15 ["observeAbsolutePosition"]
       49 GETTABLEKS                       R7 R2 K22 ["createUnimplemented"]
       51 LOADK                            R8 K16 ["observeRelativeAbsolutePosition"]
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R6 K16 ["observeRelativeAbsolutePosition"]
       55 GETTABLEKS                       R7 R3 K21 ["of"]
       57 LOADNIL                          R8
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R7 R6 K17 ["observeFrame"]
       61 GETTABLEKS                       R7 R3 K21 ["of"]
       63 LOADNIL                          R8
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K18 ["observeAbsoluteSizeState"]
       67 GETTABLEKS                       R7 R2 K22 ["createUnimplemented"]
       69 LOADK                            R8 K19 ["setFrame"]
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R6 K19 ["setFrame"]
       73 SETTABLEKS                       R6 R5 K12 ["absoluteSizeHook"]
       75 GETTABLEKS                       R6 R1 K23 ["createContext"]
       77 MOVE                             R7 R5
       78 CALL                             R6 1 1
       79 DUPCLOSURE                       R7 K24 [PROTO_1]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 DUPTABLE                         R8 K27 [{"Context", "Provider"}]
       83 SETTABLEKS                       R6 R8 K25 ["Context"]
       85 SETTABLEKS                       R7 R8 K26 ["Provider"]
       87 RETURN                           R8 1
