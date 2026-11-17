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
       27 DUPTABLE                         R7 K7 [{["tag"] = "col gap-medium auto-xy radius-medium bg-surface-0"}]
       28 DUPTABLE                         R8 K10 [{"Label", "Button"}]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K4 ["createElement"]
       32 GETUPVAL                         R10 3
       33 DUPTABLE                         R11 K15 [{["Text"], ["tag"] = "auto-xy content-emphasis", ["testId"] = "--counter-example-text"}]
       34 LOADK                            R14 K16 ["CounterExample"]
       35 LOADK                            R15 K17 ["CounterLabel"]
       36 DUPTABLE                         R16 K19 [{"counter"}]
       37 SETTABLEKS                       R2 R16 K18 ["counter"]
       39 NAMECALL                         R12 R1 K20 ["getText"]
       41 CALL                             R12 4 1
       42 SETTABLEKS                       R12 R11 K11 ["Text"]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K8 ["Label"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K4 ["createElement"]
       50 GETUPVAL                         R10 4
       51 DUPTABLE                         R11 K25 [{["text"], ["onActivated"], ["variant"], ["testId"] = "--counter-example-button"}]
       52 LOADK                            R14 K16 ["CounterExample"]
       53 LOADK                            R15 K9 ["Button"]
       54 NAMECALL                         R12 R1 K20 ["getText"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K21 ["text"]
       59 SETTABLEKS                       R4 R11 K22 ["onActivated"]
       61 GETUPVAL                         R12 5
       62 GETTABLEKS                       R12 R12 K26 ["Emphasis"]
       64 SETTABLEKS                       R12 R11 K23 ["variant"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K9 ["Button"]
       69 CALL                             R5 3 -1
       70 RETURN                           R5 -1

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
