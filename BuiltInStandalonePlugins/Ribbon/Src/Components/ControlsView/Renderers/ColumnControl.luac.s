PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Renderers"]
        3 GETTABLEKS                       R4 R1 K1 ["Type"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOT                        R2 ; [+30]
        7 LOADK                            R3 K2 ["%* %*"]
        8 GETTABLEKS                       R5 R1 K1 ["Type"]
       10 MOVE                             R6 R0
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["Renderers"]
       19 GETTABLEKS                       R6 R1 K1 ["Type"]
       21 GETTABLE                         R4 R5 R6
       22 GETUPVAL                         R5 2
       23 GETUPVAL                         R6 0
       24 DUPTABLE                         R7 K7 [{"Item", "LayoutOrder", "IsColumn"}]
       25 SETTABLEKS                       R1 R7 K4 ["Item"]
       27 GETUPVAL                         R8 3
       28 CALL                             R8 0 1
       29 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K6 ["IsColumn"]
       34 CALL                             R5 2 -1
       35 CALL                             R3 -1 -1
       36 RETURN                           R2 -1
       37 LOADNIL                          R2
       38 LOADNIL                          R3
       39 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Item"]
        4 GETTABLEKS                       R3 R2 K1 ["Tags"]
        6 GETTABLEKS                       R4 R2 K2 ["Children"]
        8 JUMPIF                           R4 ; [+6]
        9 GETTABLEKS                       R4 R0 K3 ["Warn"]
       11 LOADK                            R5 K4 ["Missing Children field for Column"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R5 R2 K2 ["Children"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 LOADK                            R6 K5 ["Frame"]
       26 NEWTABLE                         R7 2 0
       28 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R8 R9 K7 ["Tag"]
       35 GETUPVAL                         R9 5
       36 LOADK                            R10 K8 ["Role-Surface X-Fit Role-Column"]
       37 MOVE                             R11 R3
       38 CALL                             R9 2 1
       39 SETTABLE                         R9 R7 R8
       40 MOVE                             R8 R4
       41 CALL                             R5 3 -1
       42 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["collect"]
       25 GETTABLEKS                       R5 R3 K11 ["join"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["Util"]
       36 GETTABLEKS                       R7 R8 K14 ["counter"]
       38 GETTABLEKS                       R8 R6 K15 ["Styling"]
       40 GETTABLEKS                       R9 R8 K16 ["joinTags"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R14 R0 K17 ["Src"]
       46 GETTABLEKS                       R13 R14 K18 ["Components"]
       48 GETTABLEKS                       R12 R13 K19 ["ControlsView"]
       50 GETTABLEKS                       R11 R12 K20 ["ControlProps"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R13 R0 K17 ["Src"]
       57 GETTABLEKS                       R12 R13 K21 ["Types"]
       59 CALL                             R11 1 1
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R9
       67 RETURN                           R12 1
