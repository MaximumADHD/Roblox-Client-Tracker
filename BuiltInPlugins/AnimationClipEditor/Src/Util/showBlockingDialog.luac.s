PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K5 [{"plugin", "OnButtonClicked", "OnClose", "TitleKey"}]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K1 ["plugin"]
       13 SETTABLEKS                       R1 R4 K2 ["OnButtonClicked"]
       15 SETTABLEKS                       R1 R4 K3 ["OnClose"]
       17 GETUPVAL                         R5 4
       18 SETTABLEKS                       R5 R4 K4 ["TitleKey"]
       20 GETUPVAL                         R5 5
       21 CALL                             R2 3 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K6 ["mount"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 MOVE                             R0 R3
       28 CLOSEUPVALS                      R0
       29 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 1
       10 NAMECALL                         R4 R3 K1 ["await"]
       12 CALL                             R4 1 -1
       13 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Promise"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R4 R4 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["BlockingDialog"]
       27 GETTABLEKS                       R4 R4 K11 ["BlockingDialog"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
