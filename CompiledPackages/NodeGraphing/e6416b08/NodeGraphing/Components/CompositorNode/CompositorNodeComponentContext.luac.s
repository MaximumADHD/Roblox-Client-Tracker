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
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Signals"]
       27 GETTABLEKS                       R4 R4 K11 ["SignalsUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K13 ["useAbsoluteSize"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K15 [{"absoluteSizeHook"}]
       38 DUPTABLE                         R6 K21 [{"observeAbsoluteSize", "observeAbsolutePosition", "observeFrame", "observeAbsoluteSizeState", "setFrame"}]
       39 GETTABLEKS                       R7 R3 K22 ["of"]
       41 LOADNIL                          R8
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K16 ["observeAbsoluteSize"]
       45 GETTABLEKS                       R7 R3 K22 ["of"]
       47 LOADNIL                          R8
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K17 ["observeAbsolutePosition"]
       51 GETTABLEKS                       R7 R3 K22 ["of"]
       53 LOADNIL                          R8
       54 CALL                             R7 1 1
       55 SETTABLEKS                       R7 R6 K18 ["observeFrame"]
       57 GETTABLEKS                       R7 R3 K22 ["of"]
       59 LOADNIL                          R8
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K19 ["observeAbsoluteSizeState"]
       63 GETTABLEKS                       R7 R2 K23 ["createUnimplemented"]
       65 LOADK                            R8 K20 ["setFrame"]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K20 ["setFrame"]
       69 SETTABLEKS                       R6 R5 K14 ["absoluteSizeHook"]
       71 GETTABLEKS                       R6 R1 K24 ["createContext"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 1
       75 DUPCLOSURE                       R7 K25 [PROTO_1]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 DUPTABLE                         R8 K28 [{"Context", "Provider"}]
       79 SETTABLEKS                       R6 R8 K26 ["Context"]
       81 SETTABLEKS                       R7 R8 K27 ["Provider"]
       83 RETURN                           R8 1
