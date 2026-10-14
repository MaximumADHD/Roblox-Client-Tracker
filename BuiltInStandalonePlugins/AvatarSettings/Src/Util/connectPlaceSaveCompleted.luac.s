PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.PlacePublishType.Save]
        3 JUMPIFNOTEQ                      R0 R1 ; [+10]
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+7]
        7 GETUPVAL                         R0 2
        8 JUMPIF                           R0 ; [+5]
        9 GETIMPORT                        R0 K5 [Enum.PlacePublishType.None]
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 3
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K3 [Enum.PlacePublishType.None]
        2 JUMPIFNOTEQ                      R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 0
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+3]
        9 SETUPVAL                         R0 1
       10 LOADB                            R1 0
       11 SETUPVAL                         R1 2
       12 GETUPVAL                         R1 1
       13 GETIMPORT                        R2 K5 [Enum.PlacePublishType.Save]
       15 JUMPIFNOTEQ                      R1 R2 ; [+10]
       17 GETUPVAL                         R1 2
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETUPVAL                         R1 0
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K3 [Enum.PlacePublishType.None]
       23 SETUPVAL                         R1 1
       24 GETUPVAL                         R1 3
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETIMPORT                        R1 K3 [Enum.PlacePublishType.None]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 1
        6 GETIMPORT                        R2 K5 [Enum.PlacePublishType.Save]
        8 JUMPIFNOTEQ                      R1 R2 ; [+10]
       10 GETUPVAL                         R1 0
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R1 2
       13 JUMPIF                           R1 ; [+5]
       14 GETIMPORT                        R1 K3 [Enum.PlacePublishType.None]
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 3
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K3 [Enum.PlacePublishType.None]
        2 SETUPVAL                         R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 1
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 2
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K3 [Enum.PlacePublishType.None]
        2 LOADB                            R4 0
        3 LOADB                            R5 0
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R3
        6 CAPTURE                          REF R5
        7 CAPTURE                          REF R4
        8 CAPTURE                          VAL R2
        9 LOADK                            R9 K4 ["PublishMediator"]
       10 NAMECALL                         R7 R0 K5 ["GetPluginComponent"]
       12 CALL                             R7 2 1
       13 GETTABLEKS                       R7 R7 K6 ["OperationInProgressChanged"]
       15 NEWCLOSURE                       R9 P1
       16 CAPTURE                          REF R4
       17 CAPTURE                          REF R3
       18 CAPTURE                          REF R5
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R7 R7 K7 ["Connect"]
       22 CALL                             R7 2 1
       23 GETTABLEKS                       R8 R1 K8 ["GamePublishFinished"]
       25 NEWCLOSURE                       R10 P2
       26 CAPTURE                          REF R5
       27 CAPTURE                          REF R3
       28 CAPTURE                          REF R4
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R8 R8 K7 ["Connect"]
       32 CALL                             R8 2 1
       33 GETTABLEKS                       R9 R1 K9 ["GamePublishCancelled"]
       35 NEWCLOSURE                       R11 P3
       36 CAPTURE                          REF R3
       37 CAPTURE                          REF R4
       38 CAPTURE                          REF R5
       39 NAMECALL                         R9 R9 K7 ["Connect"]
       41 CALL                             R9 2 1
       42 NEWCLOSURE                       R10 P4
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R9
       46 CLOSEUPVALS                      R3
       47 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_5]
        2 RETURN                           R0 1
