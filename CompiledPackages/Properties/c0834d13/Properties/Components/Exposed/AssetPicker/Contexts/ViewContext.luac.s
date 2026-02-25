PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADK                            R3 K2 ["List"]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 LOADK                            R5 K3 ["Recent"]
       14 CALL                             R4 1 2
       15 DUPTABLE                         R6 K9 [{"scopeIdRef", "layout", "setLayout", "sort", "setSort"}]
       16 SETTABLEKS                       R1 R6 K4 ["scopeIdRef"]
       18 SETTABLEKS                       R2 R6 K5 ["layout"]
       20 SETTABLEKS                       R3 R6 K6 ["setLayout"]
       22 SETTABLEKS                       R4 R6 K7 ["sort"]
       24 SETTABLEKS                       R5 R6 K8 ["setSort"]
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K10 ["Provider"]
       30 DUPTABLE                         R9 K12 [{"value"}]
       31 SETTABLEKS                       R6 R9 K11 ["value"]
       33 GETTABLEKS                       R10 R0 K13 ["children"]
       35 CALL                             R7 3 -1
       36 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R7 R0 K10 ["Util"]
       29 GETTABLEKS                       R6 R7 K11 ["createUnimplemented"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K12 ["createElement"]
       34 DUPTABLE                         R7 K18 [{"scopeIdRef", "layout", "setLayout", "sort", "setSort"}]
       35 DUPTABLE                         R8 K20 [{"current"}]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K19 ["current"]
       39 SETTABLEKS                       R8 R7 K13 ["scopeIdRef"]
       41 LOADK                            R8 K21 ["List"]
       42 SETTABLEKS                       R8 R7 K14 ["layout"]
       44 MOVE                             R8 R5
       45 LOADK                            R9 K15 ["setLayout"]
       46 CALL                             R8 1 1
       47 SETTABLEKS                       R8 R7 K15 ["setLayout"]
       49 LOADK                            R8 K22 ["Recent"]
       50 SETTABLEKS                       R8 R7 K16 ["sort"]
       52 MOVE                             R8 R5
       53 LOADK                            R9 K17 ["setSort"]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K17 ["setSort"]
       57 GETTABLEKS                       R8 R3 K23 ["createContext"]
       59 MOVE                             R9 R7
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K24 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 DUPTABLE                         R10 K27 [{"Context", "Provider"}]
       66 SETTABLEKS                       R8 R10 K25 ["Context"]
       68 SETTABLEKS                       R9 R10 K26 ["Provider"]
       70 RETURN                           R10 1
