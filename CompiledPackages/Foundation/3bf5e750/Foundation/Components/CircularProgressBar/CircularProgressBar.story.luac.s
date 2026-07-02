PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["progress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["progress"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["progress"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["createElement"]
       22 GETUPVAL                         R4 1
       23 DUPTABLE                         R5 K6 [{["tag"] = "size-1000-1000"}]
       24 DUPTABLE                         R6 K8 [{"ProgressBar"}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K3 ["createElement"]
       28 GETUPVAL                         R8 2
       29 DUPTABLE                         R9 K9 [{"progress"}]
       30 SETTABLEKS                       R1 R9 K1 ["progress"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K7 ["ProgressBar"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"progress"}]
        2 GETTABLEKS                       R5 R0 K3 ["controls"]
        4 GETTABLEKS                       R5 R5 K0 ["progress"]
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
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["CircularProgressBar"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 DUPTABLE                         R6 K15 [{["summary"] = "CircularProgressBar", ["stories"], ["controls"]}]
       33 NEWTABLE                         R7 0 1
       35 DUPTABLE                         R8 K18 [{["name"] = "CircularProgressBar", ["story"]}]
       36 DUPCLOSURE                       R9 K19 [PROTO_2]
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R9 R8 K17 ["story"]
       40 SETLIST                          R7 R8 1 [1]
       42 SETTABLEKS                       R7 R6 K13 ["stories"]
       44 DUPTABLE                         R7 K22 [{["progress"] = 0}]
       45 SETTABLEKS                       R7 R6 K14 ["controls"]
       47 RETURN                           R6 1
