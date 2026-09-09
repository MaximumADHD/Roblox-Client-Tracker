PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["getTutorialState"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["OnTutorialStateChanged"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["OnTutorialStateChanged"]
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getTutorialController"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["TutorialAdvanceSource"]
        8 GETTABLEKS                       R3 R3 K2 ["ManualAdvance"]
       10 NAMECALL                         R1 R0 K3 ["advance"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getTutorialController"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K1 ["notify"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getTutorialController"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 NAMECALL                         R1 R0 K1 ["dismiss"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getTutorialController"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 NAMECALL                         R1 R0 K1 ["pause"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["getTutorialController"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 0
       18 DUPTABLE                         R4 K7 [{"tutorialState", "advance", "notify", "dismiss", "pause"}]
       19 SETTABLEKS                       R2 R4 K2 ["tutorialState"]
       21 NEWCLOSURE                       R5 P2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R5 R4 K3 ["advance"]
       26 NEWCLOSURE                       R5 P3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K4 ["notify"]
       30 NEWCLOSURE                       R5 P4
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R4 K5 ["dismiss"]
       34 NEWCLOSURE                       R5 P5
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R5 R4 K6 ["pause"]
       38 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Analytics"]
       31 GETTABLEKS                       R6 R6 K11 ["Types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Src"]
       38 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       40 GETTABLEKS                       R7 R7 K14 ["PluginController"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K15 [PROTO_7]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
