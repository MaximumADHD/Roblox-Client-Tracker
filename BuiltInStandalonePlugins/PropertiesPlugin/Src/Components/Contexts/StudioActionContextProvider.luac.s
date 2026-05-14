PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldFocusProperties"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["dockWidget"]
        7 NAMECALL                         R0 R0 K2 ["RequestRaise"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["onActionActivated"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R0 R0 K2 ["Connect"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [task.spawn]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          REF R1
       12 CLOSEUPVALS                      R1
       13 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["Actions"]
        3 NAMECALL                         R1 R1 K2 ["GetPluginComponent"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R0 K4 ["dockWidget"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["Components"]
       23 GETTABLEKS                       R4 R4 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K7 ["ActionContextProvider"]
       27 DUPTABLE                         R5 K9 [{"bindToAction"}]
       28 SETTABLEKS                       R2 R5 K8 ["bindToAction"]
       30 GETTABLEKS                       R6 R0 K10 ["children"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 DUPCLOSURE                       R4 K10 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 RETURN                           R4 1
