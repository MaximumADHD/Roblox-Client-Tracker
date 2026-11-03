PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["revision"]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLE                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K0 ["revision"]
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R1 2
       12 DUPTABLE                         R2 K4 [{"toolUseId", "actions", "snapshot"}]
       13 GETUPVAL                         R3 3
       14 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       16 GETUPVAL                         R3 4
       17 SETTABLEKS                       R3 R2 K2 ["actions"]
       19 SETTABLEKS                       R0 R2 K3 ["snapshot"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPlaybackState"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+23]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+28]
        9 GETTABLEKS                       R2 R1 K2 ["revision"]
       11 GETUPVAL                         R3 3
       12 JUMPIFNOTLE                      R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R1 K2 ["revision"]
       17 SETUPVAL                         R2 3
       18 GETUPVAL                         R2 4
       19 DUPTABLE                         R3 K6 [{"toolUseId", "actions", "snapshot"}]
       20 GETUPVAL                         R4 1
       21 SETTABLEKS                       R4 R3 K3 ["toolUseId"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K4 ["actions"]
       26 SETTABLEKS                       R1 R3 K5 ["snapshot"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 2
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETIMPORT                        R2 K8 [warn]
       34 LOADK                            R3 K9 ["[AnimationGen] Unable to read playback state:"]
       35 MOVE                             R4 R1
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+4]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 LOADB                            R0 1
       11 LOADN                            R1 -1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          REF R0
       14 CAPTURE                          REF R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U1
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K0 ["subscribePlaybackState"]
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R2
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K3 [task.spawn]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          REF R0
       30 CAPTURE                          REF R1
       31 CAPTURE                          UPVAL U0
       32 CALL                             R4 1 0
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          REF R0
       35 CAPTURE                          VAL R3
       36 CLOSEUPVALS                      R0
       37 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 NEWTABLE                         R6 0 2
       22 MOVE                             R7 R1
       23 MOVE                             R8 R0
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 0
       27 JUMPIFEQKNIL                     R2 ; [+9]
       29 GETTABLEKS                       R4 R2 K4 ["toolUseId"]
       31 JUMPIFNOTEQ                      R4 R0 ; [+5]
       33 GETTABLEKS                       R4 R2 K5 ["actions"]
       35 JUMPIFEQ                         R4 R1 ; [+3]
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 GETTABLEKS                       R4 R2 K6 ["snapshot"]
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationGenActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K12 ["HostTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K13 ["Parent"]
       31 GETTABLEKS                       R4 R4 K14 ["React"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K15 [PROTO_5]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 RETURN                           R4 1
