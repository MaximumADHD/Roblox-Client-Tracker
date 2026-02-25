PROTO_0:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["_startTime"]
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K3 ["_startTime"]
        5 SUB                              R1 R2 R3
        6 GETUPVAL                         R2 0
        7 SUB                              R2 R2 R1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+10]
       12 GETTABLEKS                       R3 R0 K4 ["props"]
       14 GETTABLEKS                       R2 R3 K5 ["DraggerContext"]
       16 LOADK                            R4 K6 ["CoreDraggersSummonHintHidden"]
       17 NAMECALL                         R2 R2 K7 ["getSetting"]
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R2 0
       22 LOADN                            R3 0
       23 JUMPIFNOTLE                      R2 R3 ; [+14]
       25 GETUPVAL                         R2 1
       26 JUMPIF                           R2 ; [+11]
       27 GETTABLEKS                       R3 R0 K4 ["props"]
       29 GETTABLEKS                       R2 R3 K5 ["DraggerContext"]
       31 LOADK                            R4 K6 ["CoreDraggersSummonHintHidden"]
       32 LOADB                            R5 1
       33 NAMECALL                         R2 R2 K8 ["setSetting"]
       35 CALL                             R2 3 0
       36 LOADB                            R2 1
       37 SETUPVAL                         R2 1
       38 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+7]
        3 LOADK                            R4 K1 ["CoreDraggersSummonHintHidden"]
        4 NAMECALL                         R2 R0 K2 ["getSetting"]
        6 CALL                             R2 2 1
        7 ORK                              R1 R2 K0 [False]
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 0
       10 JUMPIF                           R1 ; [+6]
       11 GETUPVAL                         R2 1
       12 LOADN                            R3 0
       13 JUMPIFLE                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       20 LOADK                            R5 K8 ["SummonHandlesHider"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 LOADN                            R4 2
       25 LOADNIL                          R5
       26 DUPCLOSURE                       R6 K10 [PROTO_0]
       27 SETTABLEKS                       R6 R3 K11 ["didMount"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          REF R4
       31 CAPTURE                          REF R5
       32 SETTABLEKS                       R6 R3 K12 ["willUnmount"]
       34 DUPCLOSURE                       R6 K13 [PROTO_2]
       35 SETTABLEKS                       R6 R3 K14 ["render"]
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          REF R5
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R6 R3 K15 ["hasSeenEnough"]
       42 CLOSEUPVALS                      R4
       43 RETURN                           R3 1
