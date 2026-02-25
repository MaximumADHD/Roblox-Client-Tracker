PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["unmount"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["unmount"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["OnButtonPressed"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["OnButtonPressed"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["unmount"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["OnButtonPressed"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["OnButtonPressed"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R6
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          REF R6
        3 CAPTURE                          UPVAL U0
        4 NEWCLOSURE                       R8 P1
        5 CAPTURE                          REF R6
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R5
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K0 ["provide"]
       11 NEWTABLE                         R10 4 1
       13 SETTABLEKS                       R3 R10 K1 ["Mouse"]
       15 SETTABLEKS                       R1 R10 K2 ["Localization"]
       17 GETUPVAL                         R11 2
       18 CALL                             R11 0 1
       19 SETLIST                          R10 R11 1 [1]
       21 SETTABLEKS                       R0 R10 K3 ["Plugin"]
       23 NEWTABLE                         R11 0 1
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R12 R13 K4 ["createElement"]
       28 MOVE                             R13 R4
       29 GETUPVAL                         R16 3
       30 GETTABLEKS                       R15 R16 K5 ["Dictionary"]
       32 GETTABLEKS                       R14 R15 K6 ["join"]
       34 MOVE                             R15 R5
       35 DUPTABLE                         R16 K9 [{"OnClose", "OnButtonPressed"}]
       36 NEWCLOSURE                       R17 P2
       37 CAPTURE                          REF R6
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R17 R16 K7 ["OnClose"]
       41 NEWCLOSURE                       R17 P3
       42 CAPTURE                          REF R6
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R17 R16 K8 ["OnButtonPressed"]
       47 CALL                             R14 2 -1
       48 CALL                             R12 -1 -1
       49 SETLIST                          R11 R12 -1 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R10 R11 K10 ["mount"]
       55 MOVE                             R11 R9
       56 CALL                             R10 1 1
       57 MOVE                             R6 R10
       58 CLOSEUPVALS                      R6
       59 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 DUPCLOSURE                       R6 K14 [PROTO_4]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
