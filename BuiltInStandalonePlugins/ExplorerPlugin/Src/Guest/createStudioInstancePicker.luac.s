PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["InstancePicker"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K2 ["AddWidgetConsumerAsync"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETIMPORT                        R3 K3 [warn]
        8 LOADK                            R4 K4 ["The pcall expected to figure out what version of InstancePicker is available succeeded, but it's NEVER supposed to."]
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 LOADK                            R5 K5 ["Incorrect number of parameters passed to AddWidgetConsumerAsync"]
       13 NAMECALL                         R3 R2 K6 ["match"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 LOADK                            R5 K7 ["InstancePicker"]
       20 NAMECALL                         R3 R0 K8 ["GetPluginComponent"]
       22 CALL                             R3 2 1
       23 RETURN                           R3 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["HoverInstance"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 DUPCLOSURE                       R3 K0 [PROTO_3]
        3 CAPTURE                          UPVAL U3
        4 NAMECALL                         R0 R0 K1 ["AddWidgetConsumerAsync"]
        6 CALL                             R0 3 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SubmitPickedInstanceAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K0 ["Disconnect"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K0 [PROTO_2]
        7 RETURN                           R2 2
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K3 [task.spawn]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CALL                             R3 1 0
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K4 ["Signal"]
       20 GETTABLEKS                       R3 R4 K5 ["new"]
       22 CALL                             R3 0 1
       23 GETTABLEKS                       R4 R1 K6 ["Activated"]
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R3
       27 NAMECALL                         R4 R4 K7 ["Connect"]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K4 ["Signal"]
       33 GETTABLEKS                       R5 R6 K5 ["new"]
       35 CALL                             R5 0 1
       36 GETTABLEKS                       R6 R1 K8 ["Deactivated"]
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          VAL R5
       40 NAMECALL                         R6 R6 K7 ["Connect"]
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R7 P4
       44 CAPTURE                          VAL R1
       45 NEWCLOSURE                       R8 P5
       46 CAPTURE                          REF R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 DUPTABLE                         R9 K12 [{"activatedSignal", "deactivatedSignal", "submitPickedInstance"}]
       50 SETTABLEKS                       R3 R9 K9 ["activatedSignal"]
       52 SETTABLEKS                       R5 R9 K10 ["deactivatedSignal"]
       54 SETTABLEKS                       R7 R9 K11 ["submitPickedInstance"]
       56 MOVE                             R10 R8
       57 CLOSEUPVALS                      R2
       58 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Explorer"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["ExplorerGuiUri"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_1]
       30 DUPCLOSURE                       R5 K16 [PROTO_10]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
