PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["get"]
       10 CALL                             R0 0 1
       11 GETTABLEKS                       R1 R0 K2 ["getClassIcon"]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 NEWTABLE                         R5 0 2
       21 MOVE                             R6 R2
       22 MOVE                             R7 R0
       23 SETLIST                          R5 R6 2 [1]
       25 CALL                             R3 2 1
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K14 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       29 LOADK                            R5 K15 [""]
       30 SETTABLEKS                       R5 R4 K11 ["Image"]
       32 GETIMPORT                        R5 K18 [Vector2.new]
       34 LOADN                            R6 0
       35 LOADN                            R7 0
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K12 ["ImageRectOffset"]
       39 GETIMPORT                        R5 K18 [Vector2.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K13 ["ImageRectSize"]
       46 DUPCLOSURE                       R5 K19 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 RETURN                           R5 1
