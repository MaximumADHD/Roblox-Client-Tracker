PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+6]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["No insertNodeContext.visibleMenuState"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["PARAMETER_NODE_CLASSNAME"]
       13 JUMPIFNOTEQ                      R0 R1 ; [+54]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       18 GETTABLEKS                       R3 R3 K5 ["sourcePinInfo"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       26 LOADK                            R3 K6 ["Expected sourcePinInfo"]
       27 GETIMPORT                        R1 K8 [assert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K9 ["createConnectedParameterAsync"]
       33 DUPTABLE                         R2 K13 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue"}]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       37 GETTABLEKS                       R3 R3 K5 ["sourcePinInfo"]
       39 SETTABLEKS                       R3 R2 K5 ["sourcePinInfo"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       44 GETTABLEKS                       R3 R3 K14 ["targetPinPosition"]
       46 SETTABLEKS                       R3 R2 K10 ["pinPosition"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       51 GETTABLEKS                       R3 R3 K5 ["sourcePinInfo"]
       53 GETTABLEKS                       R3 R3 K15 ["sourcePinName"]
       55 SETTABLEKS                       R3 R2 K11 ["parameterName"]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       60 GETTABLEKS                       R3 R3 K5 ["sourcePinInfo"]
       62 GETTABLEKS                       R3 R3 K16 ["sourcePinValue"]
       64 SETTABLEKS                       R3 R2 K12 ["existingValue"]
       66 CALL                             R1 1 0
       67 JUMP                             ; [+27]
       68 FASTCALL1                        TYPE R0 ; [+3]
       69 MOVE                             R2 R0
       70 GETIMPORT                        R1 K18 [type]
       72 CALL                             R1 1 1
       73 JUMPIFNOTEQKS                    R1 K19 ["number"] ; [+6]
       75 GETIMPORT                        R1 K21 [error]
       77 LOADK                            R2 K22 ["Unexpected node ID type of number"]
       78 CALL                             R1 1 0
       79 JUMP                             ; [+15]
       80 GETUPVAL                         R1 2
       81 GETTABLEKS                       R1 R1 K23 ["createNode"]
       83 MOVE                             R2 R0
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K0 ["visibleMenuState"]
       87 GETTABLEKS                       R3 R3 K14 ["targetPinPosition"]
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R4 R4 K0 ["visibleMenuState"]
       92 GETTABLEKS                       R4 R4 K5 ["sourcePinInfo"]
       94 CALL                             R1 3 0
       95 GETUPVAL                         R1 3
       96 CALL                             R1 0 0
       97 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["GraphContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Components"]
       23 GETTABLEKS                       R4 R4 K9 ["InsertNodeContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_1]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
