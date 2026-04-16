PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
        6 LOADK                            R4 K4 ["col size-full-0 auto-y margin-y-small"]
        7 SETTABLEKS                       R4 R3 K1 ["tag"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K6 [{"Widget"}]
       14 GETUPVAL                         R5 1
       15 GETUPVAL                         R6 3
       16 MOVE                             R7 R0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K5 ["Widget"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_1:
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
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_2:
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
       16 GETTABLEKS                       R4 R5 K5 ["useRef"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R0 R4 K6 ["current"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K7 ["useEffect"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R1
       36 MOVE                             R9 R3
       37 SETLIST                          R7 R8 2 [1]
       39 CALL                             R5 2 0
       40 JUMPIFNOT                        R1 ; [+2]
       41 LOADNIL                          R5
       42 RETURN                           R5 1
       43 GETUPVAL                         R5 3
       44 GETUPVAL                         R6 5
       45 MOVE                             R7 R0
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1

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
       50 GETTABLEKS                       R7 R0 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K15 ["View"]
       55 GETTABLEKS                       R8 R5 K16 ["createElement"]
       57 GETTABLEKS                       R9 R4 K17 ["OverridePriorities"]
       59 DUPCLOSURE                       R10 K18 [PROTO_2]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R1
       66 GETTABLEKS                       R11 R5 K19 ["memo"]
       68 MOVE                             R12 R10
       69 CALL                             R11 1 -1
       70 RETURN                           R11 -1
