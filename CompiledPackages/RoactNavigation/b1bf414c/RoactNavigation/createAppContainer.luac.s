PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["navigation"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [pairs]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 0
       10 LOADB                            R7 1
       11 JUMPIFEQKS                       R4 K3 ["screenProps"] ; [+5]
       13 JUMPIFEQKS                       R4 K0 ["navigation"] ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 LOADK                            R8 K4 ["This navigator has both 'navigation' and container props. It is unclear if it should own its own state. Remove the container props or don't pass a 'navigation' prop."]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 1 ; [-11]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 CALL                             R1 1 0
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_actionEventSubscribers"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["init"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["_initialAction"]
       14 LOADNIL                          R1
       15 NAMECALL                         R2 R0 K4 ["_isStateful"]
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R2 ; [+14]
       19 GETTABLEKS                       R3 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K5 ["persistenceKey"]
       23 JUMPIF                           R3 ; [+9]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["router"]
       27 GETTABLEKS                       R3 R3 K7 ["getStateForAction"]
       29 GETTABLEKS                       R4 R0 K3 ["_initialAction"]
       31 CALL                             R3 1 1
       32 MOVE                             R1 R3
       33 DUPTABLE                         R3 K9 [{"nav"}]
       34 SETTABLEKS                       R1 R3 K8 ["nav"]
       36 SETTABLEKS                       R3 R0 K10 ["state"]
       38 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETVARARGS                       R2 -1
        7 NAMECALL                         R0 R0 K1 ["dispatch"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1
       11 LOADB                            R0 0
       12 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["externalDispatchConnector"]
        4 GETTABLEKS                       R2 R0 K2 ["_subs"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R2 R0 K2 ["_subs"]
        9 CALL                             R2 0 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K2 ["_subs"]
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 MOVE                             R2 R1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R0 K2 ["_subs"]
       21 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["renderLoading"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 MOVE                             R2 R1
        6 CALL                             R2 0 -1
        7 RETURN                           R2 -1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_getScreenProps"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_navigation"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 NAMECALL                         R2 R0 K2 ["_isStateful"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+36]
        8 GETTABLEKS                       R2 R0 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["nav"]
       12 JUMPIF                           R2 ; [+4]
       13 NAMECALL                         R3 R0 K5 ["_renderLoading"]
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 GETTABLEKS                       R3 R0 K6 ["_navigation"]
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETTABLEKS                       R3 R0 K6 ["_navigation"]
       22 GETTABLEKS                       R3 R3 K3 ["state"]
       24 JUMPIFEQ                         R3 R2 ; [+17]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K7 ["router"]
       30 MOVE                             R5 R2
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R0
       33 GETTABLEKS                       R7 R0 K8 ["_actionEventSubscribers"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R0
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R0
       39 CALL                             R3 6 1
       40 SETTABLEKS                       R3 R0 K6 ["_navigation"]
       42 GETTABLEKS                       R1 R0 K6 ["_navigation"]
       44 GETUPVAL                         R2 2
       45 JUMPIFNOTEQKNIL                  R1 ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 LOADK                            R4 K9 ["failed to get navigation"]
       50 CALL                             R2 2 0
       51 GETUPVAL                         R2 3
       52 GETTABLEKS                       R2 R2 K10 ["createElement"]
       54 GETUPVAL                         R3 4
       55 GETTABLEKS                       R3 R3 K11 ["Provider"]
       57 DUPTABLE                         R4 K12 [{"navigation"}]
       58 SETTABLEKS                       R1 R4 K1 ["navigation"]
       60 DUPTABLE                         R5 K14 [{"AppComponent"}]
       61 GETUPVAL                         R6 3
       62 GETTABLEKS                       R6 R6 K10 ["createElement"]
       64 GETUPVAL                         R7 1
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R8 R8 K15 ["Dictionary"]
       68 GETTABLEKS                       R8 R8 K16 ["join"]
       70 GETTABLEKS                       R9 R0 K0 ["props"]
       72 DUPTABLE                         R10 K12 [{"navigation"}]
       73 SETTABLEKS                       R1 R10 K1 ["navigation"]
       75 CALL                             R8 2 -1
       76 CALL                             R6 -1 1
       77 SETTABLEKS                       R6 R5 K13 ["AppComponent"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["_actionEventSubscribers"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 MOVE                             R5 R3
        8 DUPTABLE                         R6 K6 [{"type", "action", "state"}]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K7 ["Action"]
       12 SETTABLEKS                       R7 R6 K3 ["type"]
       14 GETUPVAL                         R7 2
       15 SETTABLEKS                       R7 R6 K4 ["action"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K5 ["state"]
       20 GETTABLEKS                       R7 R7 K8 ["nav"]
       22 SETTABLEKS                       R7 R6 K5 ["state"]
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 1 ; [-19]
       27 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 NAMECALL                         R1 R0 K1 ["_updateExternalDispatchConnector"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["_isStateful"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K3 ["_initialAction"]
       13 GETTABLEKS                       R2 R0 K4 ["state"]
       15 GETTABLEKS                       R2 R2 K5 ["nav"]
       17 JUMPIF                           R2 ; [+8]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K6 ["router"]
       21 GETTABLEKS                       R3 R3 K7 ["getStateForAction"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 MOVE                             R2 R3
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 GETTABLEKS                       R4 R0 K4 ["state"]
       32 GETTABLEKS                       R4 R4 K5 ["nav"]
       34 JUMPIFEQ                         R2 R4 ; [+7]
       36 DUPTABLE                         R6 K8 [{"nav"}]
       37 SETTABLEKS                       R2 R6 K5 ["nav"]
       39 NAMECALL                         R4 R0 K9 ["setState"]
       41 CALL                             R4 2 0
       42 GETIMPORT                        R4 K11 [spawn]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_subs"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["_subs"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_subs"]
       12 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_navState"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["nav"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+4]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K0 ["_navState"]
       11 GETTABLEKS                       R2 R0 K3 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["externalDispatchConnector"]
       15 GETTABLEKS                       R3 R1 K4 ["externalDispatchConnector"]
       17 JUMPIFEQ                         R2 R3 ; [+4]
       19 NAMECALL                         R2 R0 K5 ["_updateExternalDispatchConnector"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["navigation"]
        4 NOT                              R1 R2
        5 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["onNavigationStateChange"]
        4 FASTCALL1                        TYPE R4 ; [+3]
        5 MOVE                             R6 R4
        6 GETIMPORT                        R5 K3 [type]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K4 ["function"] ; [+6]
       11 MOVE                             R5 R4
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 CALL                             R5 3 0
       16 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["screenProps"]
        4 RETURN                           R1 1

PROTO_17:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["_actionEventSubscribers"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 MOVE                             R5 R3
        8 DUPTABLE                         R6 K7 [{"type", "action", "state", "lastState"}]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K8 ["Action"]
       12 SETTABLEKS                       R7 R6 K3 ["type"]
       14 GETUPVAL                         R7 2
       15 SETTABLEKS                       R7 R6 K4 ["action"]
       17 GETUPVAL                         R7 3
       18 SETTABLEKS                       R7 R6 K5 ["state"]
       20 GETUPVAL                         R7 4
       21 SETTABLEKS                       R7 R6 K6 ["lastState"]
       23 CALL                             R5 1 0
       24 FORGLOOP                         R0 1 ; [-18]
       26 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["_onNavigationStateChange"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 4
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["navigation"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["navigation"]
        9 GETTABLEKS                       R2 R2 K2 ["dispatch"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1
       14 GETTABLEKS                       R2 R0 K3 ["_navState"]
       16 JUMPIF                           R2 ; [+4]
       17 GETTABLEKS                       R2 R0 K4 ["state"]
       19 GETTABLEKS                       R2 R2 K5 ["nav"]
       21 SETTABLEKS                       R2 R0 K3 ["_navState"]
       23 GETTABLEKS                       R2 R0 K3 ["_navState"]
       25 GETUPVAL                         R3 0
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 LOADK                            R5 K6 ["navState should be set in constructor if stateful"]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K7 ["router"]
       35 GETTABLEKS                       R3 R3 K8 ["getStateForAction"]
       37 MOVE                             R4 R1
       38 MOVE                             R5 R2
       39 CALL                             R3 2 1
       40 MOVE                             R4 R3
       41 JUMPIF                           R4 ; [+1]
       42 MOVE                             R4 R2
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R4
       48 CAPTURE                          VAL R2
       49 JUMPIFNOTEQKNIL                  R3 ; [+6]
       51 MOVE                             R6 R5
       52 CALL                             R6 0 0
       53 LOADB                            R6 1
       54 CLOSEUPVALS                      R4
       55 RETURN                           R6 1
       56 JUMPIFEQ                         R4 R2 ; [+21]
       58 SETTABLEKS                       R4 R0 K3 ["_navState"]
       60 DUPTABLE                         R8 K9 [{"nav"}]
       61 SETTABLEKS                       R4 R8 K5 ["nav"]
       63 NAMECALL                         R6 R0 K10 ["setState"]
       65 CALL                             R6 2 0
       66 GETIMPORT                        R6 K12 [spawn]
       68 NEWCLOSURE                       R7 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CALL                             R6 1 0
       75 LOADB                            R6 1
       76 CLOSEUPVALS                      R4
       77 RETURN                           R6 1
       78 GETIMPORT                        R6 K12 [spawn]
       80 MOVE                             R7 R5
       81 CALL                             R6 1 0
       82 LOADB                            R6 0
       83 CLOSEUPVALS                      R4
       84 RETURN                           R6 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
        9 GETTABLEKS                       R3 R0 K3 ["router"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 LOADK                            R3 K4 ["AppComponent must be a navigator or a stateful Roact component with a 'router' field"]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K7 [string.format]
       19 LOADK                            R2 K8 ["NavigationContainer(%s)"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K10 [tostring]
       24 CALL                             R3 1 1
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K11 ["Component"]
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K12 ["extend"]
       32 CALL                             R2 2 1
       33 DUPCLOSURE                       R3 K13 [PROTO_1]
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R3 R2 K14 ["getDerivedStateFromProps"]
       37 NEWCLOSURE                       R3 P1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R3 R2 K15 ["init"]
       43 DUPCLOSURE                       R3 K16 [PROTO_4]
       44 SETTABLEKS                       R3 R2 K17 ["_updateExternalDispatchConnector"]
       46 DUPCLOSURE                       R3 K18 [PROTO_5]
       47 SETTABLEKS                       R3 R2 K19 ["_renderLoading"]
       49 NEWCLOSURE                       R3 P4
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 SETTABLEKS                       R3 R2 K20 ["render"]
       58 NEWCLOSURE                       R3 P5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U7
       61 SETTABLEKS                       R3 R2 K21 ["didMount"]
       63 DUPCLOSURE                       R3 K22 [PROTO_12]
       64 SETTABLEKS                       R3 R2 K23 ["willUnmount"]
       66 DUPCLOSURE                       R3 K24 [PROTO_13]
       67 SETTABLEKS                       R3 R2 K25 ["didUpdate"]
       69 DUPCLOSURE                       R3 K26 [PROTO_14]
       70 SETTABLEKS                       R3 R2 K27 ["_isStateful"]
       72 DUPCLOSURE                       R3 K28 [PROTO_15]
       73 SETTABLEKS                       R3 R2 K29 ["_onNavigationStateChange"]
       75 DUPCLOSURE                       R3 K30 [PROTO_16]
       76 SETTABLEKS                       R3 R2 K31 ["_getScreenProps"]
       78 NEWCLOSURE                       R3 P11
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U7
       82 SETTABLEKS                       R3 R2 K32 ["dispatch"]
       84 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Roact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K7 ["NavigationActions"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K8 ["NavigationEvents"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K1 [require]
       43 GETIMPORT                        R5 K3 [script]
       45 GETTABLEKS                       R5 R5 K4 ["Parent"]
       47 GETTABLEKS                       R5 R5 K9 ["views"]
       49 GETTABLEKS                       R5 R5 K10 ["AppNavigationContext"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K1 [require]
       54 GETIMPORT                        R6 K3 [script]
       56 GETTABLEKS                       R6 R6 K4 ["Parent"]
       58 GETTABLEKS                       R6 R6 K11 ["getNavigation"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K1 [require]
       63 GETIMPORT                        R7 K3 [script]
       65 GETTABLEKS                       R7 R7 K4 ["Parent"]
       67 GETTABLEKS                       R7 R7 K12 ["utils"]
       69 GETTABLEKS                       R7 R7 K13 ["validate"]
       71 CALL                             R6 1 1
       72 DUPCLOSURE                       R7 K14 [PROTO_0]
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R8 K15 [PROTO_20]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 RETURN                           R8 1
