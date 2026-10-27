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
       12 GETTABLEKS                       R2 R0 K4 ["props"]
       14 GETTABLEKS                       R2 R2 K5 ["DraggerContext"]
       16 LOADK                            R4 K6 ["CoreDraggersSummonHintHidden"]
       17 NAMECALL                         R2 R2 K7 ["getSetting"]
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 1
       21 GETUPVAL                         R2 0
       22 LOADN                            R3 0
       23 JUMPIFNOTLE                      R2 R3 ; [+14]
       25 GETUPVAL                         R2 1
       26 JUMPIF                           R2 ; [+11]
       27 GETTABLEKS                       R2 R0 K4 ["props"]
       29 GETTABLEKS                       R2 R2 K5 ["DraggerContext"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["PureComponent"]
       16 LOADK                            R4 K7 ["SummonHandlesHider"]
       17 NAMECALL                         R2 R2 K8 ["extend"]
       19 CALL                             R2 2 1
       20 LOADN                            R3 2
       21 LOADNIL                          R4
       22 DUPCLOSURE                       R5 K9 [PROTO_0]
       23 SETTABLEKS                       R5 R2 K10 ["didMount"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          REF R3
       27 CAPTURE                          REF R4
       28 SETTABLEKS                       R5 R2 K11 ["willUnmount"]
       30 DUPCLOSURE                       R5 K12 [PROTO_2]
       31 SETTABLEKS                       R5 R2 K13 ["render"]
       33 NEWCLOSURE                       R5 P3
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R3
       36 SETTABLEKS                       R5 R2 K14 ["hasSeenEnough"]
       38 CLOSEUPVALS                      R3
       39 RETURN                           R2 1
