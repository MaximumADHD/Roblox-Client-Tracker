PROTO_0:
        0 DUPTABLE                         R0 K1 [{"InputAreaKeyboardHint"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["InputAreaKeyboardHint"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["InputAreaKeyboardHint"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETIMPORT                        R2 K3 [table.clone]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 MOVE                             R3 R1
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       16 LOADK                            R6 K7 ["col size-full-0 auto-y margin-y-small align-x-center gap-medium"]
       17 SETTABLEKS                       R6 R5 K5 ["tag"]
       19 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       23 DUPTABLE                         R6 K10 [{"Widget", "ExplanationText"}]
       24 GETUPVAL                         R7 2
       25 GETUPVAL                         R8 4
       26 MOVE                             R9 R2
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K8 ["Widget"]
       30 GETUPVAL                         R7 2
       31 GETUPVAL                         R8 5
       32 DUPTABLE                         R9 K12 [{"tag", "Text", "LayoutOrder"}]
       33 LOADK                            R10 K13 ["auto-xy text-caption-small content-default text-wrap text-align-x-center"]
       34 SETTABLEKS                       R10 R9 K5 ["tag"]
       36 GETUPVAL                         R11 6
       37 GETTABLEKS                       R10 R11 K14 ["InputAreaKeyboardHint"]
       39 SETTABLEKS                       R10 R9 K11 ["Text"]
       41 MOVE                             R10 R1
       42 CALL                             R10 0 1
       43 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K9 ["ExplanationText"]
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["QuestionAnswer"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFEQKS                       R2 K1 ["awaiting_answers"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["useContext"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K4 ["registerOverride"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       18 DUPCLOSURE                       R5 K6 [PROTO_0]
       19 CAPTURE                          UPVAL U2
       20 NEWTABLE                         R6 0 1
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K7 ["locale"]
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K8 ["useRef"]
       31 MOVE                             R6 R0
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R0 R5 K9 ["current"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K10 ["useEffect"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R8 0 3
       51 MOVE                             R9 R1
       52 MOVE                             R10 R3
       53 GETTABLEKS                       R11 R4 K11 ["InputAreaKeyboardHint"]
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 0
       58 JUMPIFNOT                        R1 ; [+2]
       59 LOADNIL                          R6
       60 RETURN                           R6 1
       61 GETUPVAL                         R6 5
       62 GETUPVAL                         R7 7
       63 MOVE                             R8 R0
       64 CALL                             R6 2 -1
       65 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["QuestionAnswerContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["QuestionAnswerTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       38 GETTABLEKS                       R5 R6 K12 ["InputAreaOverrideContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K13 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K15 ["Resources"]
       59 GETTABLEKS                       R9 R10 K16 ["Localization"]
       61 GETTABLEKS                       R8 R9 K17 ["Translator"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K18 ["Types"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R3 K19 ["Text"]
       71 GETTABLEKS                       R10 R3 K20 ["View"]
       73 GETTABLEKS                       R11 R6 K21 ["createNextOrder"]
       75 GETTABLEKS                       R12 R5 K22 ["createElement"]
       77 GETTABLEKS                       R13 R4 K23 ["OverridePriorities"]
       79 DUPCLOSURE                       R14 K24 [PROTO_3]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R9
       89 GETTABLEKS                       R15 R5 K25 ["memo"]
       91 MOVE                             R16 R14
       92 CALL                             R15 1 -1
       93 RETURN                           R15 -1
