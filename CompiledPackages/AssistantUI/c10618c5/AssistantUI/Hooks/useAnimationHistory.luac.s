PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 JUMPIFEQKNIL                     R0 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["revision"]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTLE                      R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K0 ["revision"]
       12 SETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R0 K1 ["selected"]
       15 GETTABLEKS                       R1 R1 K2 ["chainId"]
       17 SETUPVAL                         R1 2
       18 GETUPVAL                         R1 3
       19 DUPTABLE                         R2 K6 [{"toolUseId", "actions", "snapshot"}]
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
       23 GETUPVAL                         R3 5
       24 SETTABLEKS                       R3 R2 K4 ["actions"]
       26 SETTABLEKS                       R0 R2 K5 ["snapshot"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getAnimationCardState"]
        5 DUPTABLE                         R2 K4 [{"toolUseId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
        9 CALL                             R0 2 2
       10 JUMPIFNOT                        R0 ; [+30]
       11 GETUPVAL                         R2 2
       12 JUMPIFNOT                        R2 ; [+35]
       13 JUMPIFEQKNIL                     R1 ; [+34]
       15 GETTABLEKS                       R2 R1 K5 ["revision"]
       17 GETUPVAL                         R3 3
       18 JUMPIFNOTLE                      R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R1 K5 ["revision"]
       23 SETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R1 K6 ["selected"]
       26 GETTABLEKS                       R2 R2 K7 ["chainId"]
       28 SETUPVAL                         R2 4
       29 GETUPVAL                         R2 5
       30 DUPTABLE                         R3 K10 [{"toolUseId", "actions", "snapshot"}]
       31 GETUPVAL                         R4 1
       32 SETTABLEKS                       R4 R3 K3 ["toolUseId"]
       34 GETUPVAL                         R4 0
       35 SETTABLEKS                       R4 R3 K8 ["actions"]
       37 SETTABLEKS                       R1 R3 K9 ["snapshot"]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 2
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETIMPORT                        R2 K12 [warn]
       45 LOADK                            R3 K13 ["[AnimationGen] Could not read animation history:"]
       46 MOVE                             R4 R1
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K2 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U5
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFEQKNIL                     R0 ; [+4]
        9 GETUPVAL                         R0 3
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 LOADB                            R0 1
       14 LOADN                            R1 -1
       15 LOADNIL                          R2
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          REF R0
       18 CAPTURE                          REF R1
       19 CAPTURE                          REF R2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U2
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          REF R0
       28 CAPTURE                          REF R1
       29 CAPTURE                          UPVAL U0
       30 GETUPVAL                         R5 4
       31 SETTABLEKS                       R3 R5 K0 ["current"]
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K1 ["subscribeAnimationHistory"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [task.spawn]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          REF R0
       44 CAPTURE                          REF R1
       45 CAPTURE                          REF R2
       46 CAPTURE                          UPVAL U0
       47 CALL                             R6 1 0
       48 NEWCLOSURE                       R6 P3
       49 CAPTURE                          REF R0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R5
       52 CLOSEUPVALS                      R0
       53 RETURN                           R6 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["selectAnimationVersion"]
        5 DUPTABLE                         R2 K5 [{"toolUseId", "versionId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K4 ["versionId"]
       12 CALL                             R0 2 2
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K6 ["current"]
       16 GETUPVAL                         R3 4
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 5
       21 LOADB                            R3 0
       22 CALL                             R2 1 0
       23 JUMPIFNOT                        R0 ; [+4]
       24 GETUPVAL                         R2 4
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETIMPORT                        R2 K8 [warn]
       30 LOADK                            R3 K9 ["[AnimationGen] Could not select animation version:"]
       31 MOVE                             R4 R1
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+14]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQKNIL                     R2 ; [+11]
        8 GETUPVAL                         R2 2
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K2 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K3 ["string"] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 1
       21 CALL                             R2 1 0
       22 GETIMPORT                        R2 K6 [task.spawn]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_7:
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
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADB                            R5 0
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U1
       32 NEWTABLE                         R9 0 2
       34 MOVE                             R10 R1
       35 MOVE                             R11 R0
       36 SETLIST                          R9 R10 2 [1]
       38 CALL                             R7 2 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 NEWTABLE                         R9 0 2
       49 MOVE                             R10 R1
       50 MOVE                             R11 R0
       51 SETLIST                          R9 R10 2 [1]
       53 CALL                             R7 2 1
       54 LOADB                            R8 0
       55 JUMPIFEQKNIL                     R2 ; [+12]
       57 LOADB                            R8 0
       58 GETTABLEKS                       R9 R2 K6 ["toolUseId"]
       60 JUMPIFNOTEQ                      R9 R0 ; [+7]
       62 GETTABLEKS                       R9 R2 K7 ["actions"]
       64 JUMPIFEQ                         R9 R1 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 DUPTABLE                         R9 K11 [{"card", "selectVersion", "isSelecting"}]
       69 JUMPIFNOT                        R8 ; [+5]
       70 JUMPIFEQKNIL                     R2 ; [+4]
       72 GETTABLEKS                       R10 R2 K12 ["snapshot"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K8 ["card"]
       78 SETTABLEKS                       R7 R9 K9 ["selectVersion"]
       80 SETTABLEKS                       R4 R9 K10 ["isSelecting"]
       82 RETURN                           R9 1

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
       24 GETTABLEKS                       R3 R3 K12 ["State"]
       26 GETTABLEKS                       R3 R3 K13 ["AnimationHistoryTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K14 ["Parent"]
       33 GETTABLEKS                       R4 R4 K15 ["React"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K16 [PROTO_7]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 RETURN                           R4 1
