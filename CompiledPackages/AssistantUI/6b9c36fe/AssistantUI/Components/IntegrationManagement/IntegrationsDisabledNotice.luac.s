PROTO_0:
        0 DUPTABLE                         R0 K1 [{"NoticeText"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["IntegrationMenu"]
        3 LOADK                            R4 K3 ["ThirdPartyDisabled"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NoticeText"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["integrations-disabled-notice-dismissed"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        8 DUPCLOSURE                       R4 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["locale"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 NEWTABLE                         R6 0 0
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R1 ; [+2]
       29 LOADNIL                          R5
       30 RETURN                           R5 1
       31 GETUPVAL                         R5 4
       32 GETUPVAL                         R6 5
       33 DUPTABLE                         R7 K8 [{"Text", "OnClose", "LayoutOrder"}]
       34 GETTABLEKS                       R8 R3 K9 ["NoticeText"]
       36 SETTABLEKS                       R8 R7 K5 ["Text"]
       38 SETTABLEKS                       R4 R7 K6 ["OnClose"]
       40 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       42 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["AlertContent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Resources"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R4 R4 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["callOnce"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K15 ["createElement"]
       39 LOADB                            R6 0
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          REF R6
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 GETTABLEKS                       R8 R2 K16 ["memo"]
       49 MOVE                             R9 R7
       50 CALL                             R8 1 -1
       51 CLOSEUPVALS                      R6
       52 RETURN                           R8 -1
