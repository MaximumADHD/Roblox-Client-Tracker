PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["progress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["progress"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["progress"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K3 ["createElement"]
       22 GETUPVAL                         R4 1
       23 DUPTABLE                         R5 K5 [{"tag"}]
       24 LOADK                            R6 K6 ["size-1000-1000"]
       25 SETTABLEKS                       R6 R5 K4 ["tag"]
       27 DUPTABLE                         R6 K8 [{"ProgressBar"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K3 ["createElement"]
       31 GETUPVAL                         R8 2
       32 DUPTABLE                         R9 K9 [{"progress"}]
       33 SETTABLEKS                       R1 R9 K1 ["progress"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K7 ["ProgressBar"]
       38 CALL                             R3 3 -1
       39 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"progress"}]
        2 GETTABLEKS                       R6 R0 K3 ["controls"]
        4 GETTABLEKS                       R5 R6 K0 ["progress"]
        6 DIVK                             R4 R5 K2 [100]
        7 LOADN                            R5 0
        8 LOADN                            R6 1
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R3 K6 [math.clamp]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K0 ["progress"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["CircularProgressBar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 DUPTABLE                         R6 K15 [{"summary", "stories", "controls"}]
       33 LOADK                            R7 K9 ["CircularProgressBar"]
       34 SETTABLEKS                       R7 R6 K12 ["summary"]
       36 NEWTABLE                         R7 0 1
       38 DUPTABLE                         R8 K18 [{"name", "story"}]
       39 LOADK                            R9 K9 ["CircularProgressBar"]
       40 SETTABLEKS                       R9 R8 K16 ["name"]
       42 DUPCLOSURE                       R9 K19 [PROTO_2]
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R9 R8 K17 ["story"]
       46 SETLIST                          R7 R8 1 [1]
       48 SETTABLEKS                       R7 R6 K13 ["stories"]
       50 DUPTABLE                         R7 K21 [{"progress"}]
       51 LOADN                            R8 0
       52 SETTABLEKS                       R8 R7 K20 ["progress"]
       54 SETTABLEKS                       R7 R6 K14 ["controls"]
       56 RETURN                           R6 1
