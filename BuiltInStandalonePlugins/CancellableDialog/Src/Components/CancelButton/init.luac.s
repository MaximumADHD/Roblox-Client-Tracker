PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnCancel"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 NEWTABLE                         R4 2 0
       10 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["Tag"]
       17 LOADK                            R6 K5 ["X-FitY X-Row X-Right Component-CancelButton"]
       18 SETTABLE                         R6 R4 R5
       19 DUPTABLE                         R5 K7 [{"CancelButton"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 LOADK                            R7 K8 ["TextButton"]
       24 NEWTABLE                         R8 4 0
       26 LOADK                            R11 K9 ["Button"]
       27 LOADK                            R12 K10 ["Cancel"]
       28 NAMECALL                         R9 R1 K11 ["getText"]
       30 CALL                             R9 3 1
       31 SETTABLEKS                       R9 R8 K12 ["Text"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K4 ["Tag"]
       36 GETUPVAL                         R10 2
       37 LOADK                            R11 K13 ["X-Corner X-Fit Cancel-Button"]
       38 GETTABLEKS                       R13 R0 K14 ["Enabled"]
       40 JUMPIFNOT                        R13 ; [+2]
       41 LOADK                            R12 K14 ["Enabled"]
       42 JUMP                             ; [+1]
       43 LOADK                            R12 K15 ["Disabled"]
       44 CALL                             R10 2 1
       45 SETTABLE                         R10 R8 R9
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K16 ["Event"]
       49 GETTABLEKS                       R9 R9 K17 ["Activated"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R0
       53 SETTABLE                         R10 R8 R9
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K6 ["CancelButton"]
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Styling"]
       27 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       29 DUPCLOSURE                       R6 K13 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R5
       33 RETURN                           R6 1
