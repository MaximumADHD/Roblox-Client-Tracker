PROTO_0:
        0 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.floor]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K5 [string.format]
        7 LOADK                            R3 K6 ["%d:%02d"]
        8 IDIVK                            R4 R1 K7 [60]
        9 MODK                             R5 R1 K7 [60]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 ADD                              R2 R0 R3
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useClock"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R4 K3 [os.clock]
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R5 R0 K4 ["startTime"]
        9 SUB                              R3 R4 R5
       10 NAMECALL                         R4 R1 K5 ["getValue"]
       12 CALL                             R4 1 1
       13 SUB                              R2 R3 R4
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K6 ["createNextOrder"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["createElement"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K8 ["View"]
       24 DUPTABLE                         R6 K12 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       25 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       29 DUPTABLE                         R7 K15 [{"Label", "Time"}]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K7 ["createElement"]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K16 ["Text"]
       36 DUPTABLE                         R10 K19 [{["Text"] = "Elapsed", ["tag"] = "auto-xy text-body-small content-muted", ["LayoutOrder"]}]
       37 MOVE                             R11 R3
       38 CALL                             R11 0 1
       39 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K13 ["Label"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K7 ["createElement"]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K16 ["Text"]
       50 DUPTABLE                         R10 K20 [{["Text"], ["tag"] = "auto-xy text-body-small content-muted", ["LayoutOrder"]}]
       51 NEWCLOSURE                       R13 P0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R2
       54 NAMECALL                         R11 R1 K21 ["map"]
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K16 ["Text"]
       59 MOVE                             R11 R3
       60 CALL                             R11 0 1
       61 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K14 ["Time"]
       66 CALL                             R4 3 -1
       67 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 DUPCLOSURE                       R5 K11 [PROTO_2]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 GETTABLEKS                       R6 R2 K12 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
