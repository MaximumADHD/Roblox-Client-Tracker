PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wrap"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Category", "ItemId"}]
        5 LOADK                            R3 K4 ["Actions"]
        6 SETTABLEKS                       R3 R2 K1 ["Category"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K5 ["current"]
       11 SETTABLEKS                       R3 R2 K2 ["ItemId"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["useUniqueWidget must be used within a Plugin context"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R1
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K4 ["useRef"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K5 ["current"]
       29 JUMPIFNOTEQKNIL                  R5 ; [+15]
       31 JUMPIFNOT                        R0 ; [+8]
       32 GETTABLEKS                       R5 R0 K6 ["id"]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETTABLEKS                       R5 R0 K6 ["id"]
       37 SETTABLEKS                       R5 R4 K5 ["current"]
       39 JUMP                             ; [+5]
       40 GETTABLEKS                       R5 R2 K7 ["nextId"]
       42 CALL                             R5 0 1
       43 SETTABLEKS                       R5 R4 K5 ["current"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R7 0 2
       54 MOVE                             R8 R3
       55 GETTABLEKS                       R9 R4 K5 ["current"]
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 4
       61 MOVE                             R7 R5
       62 MOVE                             R8 R0
       63 JUMPIFNOT                        R8 ; [+2]
       64 GETTABLEKS                       R8 R0 K8 ["forwardRef"]
       66 CALL                             R6 2 1
       67 DUPTABLE                         R7 K11 [{"ref", "uri"}]
       68 SETTABLEKS                       R6 R7 K9 ["ref"]
       70 SETTABLEKS                       R5 R7 K10 ["uri"]
       72 RETURN                           R7 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Plugin"]
       20 GETTABLEKS                       R4 R4 K10 ["StudioUri"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Providers"]
       27 GETTABLEKS                       R5 R5 K9 ["Plugin"]
       29 GETTABLEKS                       R5 R5 K12 ["usePlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K13 ["useWidgetRef"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K14 ["useWidgetsContext"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K15 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
