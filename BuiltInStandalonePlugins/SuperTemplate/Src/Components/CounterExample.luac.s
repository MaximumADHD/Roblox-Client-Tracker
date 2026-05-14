PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADN                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R3
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["createElement"]
       26 GETUPVAL                         R6 2
       27 DUPTABLE                         R7 K6 [{"tag"}]
       28 LOADK                            R8 K7 ["auto-xy col gap-medium bg-surface-0 radius-medium"]
       29 SETTABLEKS                       R8 R7 K5 ["tag"]
       31 DUPTABLE                         R8 K10 [{"Label", "Button"}]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K4 ["createElement"]
       35 GETUPVAL                         R10 3
       36 DUPTABLE                         R11 K13 [{"Text", "tag", "testId"}]
       37 LOADK                            R14 K14 ["CounterExample"]
       38 LOADK                            R15 K15 ["CounterLabel"]
       39 DUPTABLE                         R16 K17 [{"counter"}]
       40 SETTABLEKS                       R2 R16 K16 ["counter"]
       42 NAMECALL                         R12 R1 K18 ["getText"]
       44 CALL                             R12 4 1
       45 SETTABLEKS                       R12 R11 K11 ["Text"]
       47 LOADK                            R12 K19 ["auto-xy content-emphasis"]
       48 SETTABLEKS                       R12 R11 K5 ["tag"]
       50 LOADK                            R12 K20 ["--counter-example-text"]
       51 SETTABLEKS                       R12 R11 K12 ["testId"]
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K8 ["Label"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K4 ["createElement"]
       59 GETUPVAL                         R10 4
       60 DUPTABLE                         R11 K24 [{"text", "onActivated", "variant", "testId"}]
       61 LOADK                            R14 K14 ["CounterExample"]
       62 LOADK                            R15 K9 ["Button"]
       63 NAMECALL                         R12 R1 K18 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K21 ["text"]
       68 SETTABLEKS                       R4 R11 K22 ["onActivated"]
       70 GETUPVAL                         R12 5
       71 GETTABLEKS                       R12 R12 K25 ["Emphasis"]
       73 SETTABLEKS                       R12 R11 K23 ["variant"]
       75 LOADK                            R12 K26 ["--counter-example-button"]
       76 SETTABLEKS                       R12 R11 K12 ["testId"]
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K9 ["Button"]
       81 CALL                             R5 3 -1
       82 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R3 R3 K11 ["Localization"]
       32 GETTABLEKS                       R4 R2 K12 ["View"]
       34 GETTABLEKS                       R5 R2 K13 ["Text"]
       36 GETTABLEKS                       R6 R2 K14 ["Button"]
       38 GETTABLEKS                       R7 R2 K15 ["Enums"]
       40 GETTABLEKS                       R7 R7 K16 ["ButtonVariant"]
       42 DUPCLOSURE                       R8 K17 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 RETURN                           R8 1
