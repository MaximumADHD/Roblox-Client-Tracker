PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 LOADN                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["createElement"]
       12 LOADK                            R5 K3 ["Frame"]
       13 NEWTABLE                         R6 1 0
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K4 ["Tag"]
       18 LOADK                            R8 K5 ["Component-CounterExample X-Fit X-Column"]
       19 SETTABLE                         R8 R6 R7
       20 DUPTABLE                         R7 K8 [{"Label", "Button"}]
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K2 ["createElement"]
       24 LOADK                            R9 K9 ["TextLabel"]
       25 DUPTABLE                         R10 K11 [{"Text"}]
       26 LOADK                            R13 K12 ["CounterExample"]
       27 LOADK                            R14 K13 ["CounterLabel"]
       28 DUPTABLE                         R15 K15 [{"counter"}]
       29 SETTABLEKS                       R2 R15 K14 ["counter"]
       31 NAMECALL                         R11 R1 K16 ["getText"]
       33 CALL                             R11 4 1
       34 SETTABLEKS                       R11 R10 K10 ["Text"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K6 ["Label"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K2 ["createElement"]
       42 LOADK                            R9 K17 ["TextButton"]
       43 NEWTABLE                         R10 2 0
       45 LOADK                            R13 K12 ["CounterExample"]
       46 LOADK                            R14 K7 ["Button"]
       47 NAMECALL                         R11 R1 K16 ["getText"]
       49 CALL                             R11 3 1
       50 SETTABLEKS                       R11 R10 K10 ["Text"]
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R12 R13 K18 ["Event"]
       55 GETTABLEKS                       R11 R12 K19 ["Activated"]
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 SETTABLE                         R12 R10 R11
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K7 ["Button"]
       64 CALL                             R4 3 -1
       65 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 DUPCLOSURE                       R5 K11 [PROTO_1]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
