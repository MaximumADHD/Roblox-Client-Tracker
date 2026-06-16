PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["navigation"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["persistenceKey"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETIMPORT                        R1 K2 [warn]
        5 LOADK                            R2 K3 ["You passed persistenceKey prop to a navigator. The persistenceKey prop was replaced by a more flexible persistence mechanism, please see the navigation state persistence docs for more information. Passing the persistenceKey prop is a no-op."]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R2 R0 K4 ["navigation"]
        9 NOT                              R1 R2
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["assign"]
       15 GETIMPORT                        R2 K8 [table.clone]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K13 [{"navigation", "screenProps", "persistNavigationState", "loadNavigationState", "externalDispatchConnector"}]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K14 ["None"]
       23 SETTABLEKS                       R4 R3 K4 ["navigation"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K14 ["None"]
       28 SETTABLEKS                       R4 R3 K9 ["screenProps"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K14 ["None"]
       33 SETTABLEKS                       R4 R3 K10 ["persistNavigationState"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K14 ["None"]
       38 SETTABLEKS                       R4 R3 K11 ["loadNavigationState"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K14 ["None"]
       43 SETTABLEKS                       R4 R3 K12 ["externalDispatchConnector"]
       45 CALL                             R1 2 1
       46 GETIMPORT                        R2 K16 [next]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 1
       50 JUMPIFEQKNIL                     R2 ; [+22]
       52 GETIMPORT                        R2 K18 [error]
       54 LOADK                            R4 K19 ["This navigator has both navigation and container props, so it is "]
       55 LOADK                            R8 K20 ["unclear if it should own its own state. Remove props: %q "]
       56 GETIMPORT                        R10 K22 [table.concat]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K23 ["keys"]
       61 MOVE                             R12 R1
       62 CALL                             R11 1 1
       63 LOADK                            R12 K24 [", "]
       64 CALL                             R10 2 -1
       65 NAMECALL                         R8 R8 K25 ["format"]
       67 CALL                             R8 -1 1
       68 MOVE                             R5 R8
       69 LOADK                            R6 K26 ["if the navigator should get its state from the navigation prop. If the "]
       70 LOADK                            R7 K27 ["navigator should maintain its own state, do not pass a navigation prop."]
       71 CONCAT                           R3 R4 R7
       72 CALL                             R2 1 0
       73 GETTABLEKS                       R2 R0 K10 ["persistNavigationState"]
       75 GETTABLEKS                       R3 R0 K11 ["loadNavigationState"]
       77 JUMPIFNOTEQKNIL                  R2 ; [+4]
       79 LOADB                            R5 1
       80 JUMPIFEQKNIL                     R3 ; [+18]
       82 LOADB                            R5 0
       83 FASTCALL1                        TYPE R2 ; [+3]
       84 MOVE                             R7 R2
       85 GETIMPORT                        R6 K29 [type]
       87 CALL                             R6 1 1
       88 JUMPIFNOTEQKS                    R6 K30 ["function"] ; [+10]
       90 FASTCALL1                        TYPE R3 ; [+3]
       91 MOVE                             R7 R3
       92 GETIMPORT                        R6 K29 [type]
       94 CALL                             R6 1 1
       95 JUMPIFEQKS                       R6 K30 ["function"] ; [+2]
       97 LOADB                            R5 0 +1
       98 LOADB                            R5 1
       99 FASTCALL2K                       ASSERT R5 K31 ; [+3]
      101 LOADK                            R6 K31 ["both persistNavigationState and loadNavigationState must either be undefined, or be functions"]
      102 GETUPVAL                         R4 1
      103 CALL                             R4 2 0
      104 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_4:
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
       21 GETTABLEKS                       R3 R3 K5 ["loadNavigationState"]
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_disconnectExternalDispatch"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_disconnectExternalDispatch"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_disconnectExternalDispatch"]
        9 GETTABLEKS                       R1 R0 K1 ["props"]
       11 GETTABLEKS                       R1 R1 K2 ["externalDispatchConnector"]
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 MOVE                             R2 R1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R0 K0 ["_disconnectExternalDispatch"]
       21 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["renderLoading"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["renderLoading"]
        9 CALL                             R1 0 1
       10 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["navigation"]
        4 NOT                              R1 R3
        5 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["url"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K2 ["enableURLHandling"]
        6 GETTABLEKS                       R4 R0 K1 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["uriPrefix"]
       10 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R2
       15 MOVE                             R7 R4
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+17]
       18 GETTABLEKS                       R6 R5 K4 ["path"]
       20 GETTABLEKS                       R7 R5 K5 ["params"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K6 ["router"]
       25 GETTABLEKS                       R8 R8 K7 ["getActionForPathAndParams"]
       27 MOVE                             R9 R6
       28 MOVE                             R10 R7
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+4]
       31 MOVE                             R11 R8
       32 NAMECALL                         R9 R0 K8 ["dispatch"]
       34 CALL                             R9 2 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["onNavigationStateChange"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+38]
        6 NAMECALL                         R5 R0 K2 ["_isStateful"]
        8 CALL                             R5 1 1
        9 JUMPIFNOT                        R5 ; [+33]
       10 GETIMPORT                        R5 K4 [_G]
       12 GETTABLEKS                       R5 R5 K5 ["REACT_NAV_LOGGING"]
       14 JUMPIFNOT                        R5 ; [+28]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["group"]
       18 LOADK                            R6 K7 ["Navigation Dispatch: "]
       19 CALL                             R5 1 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K8 ["log"]
       23 LOADK                            R6 K9 ["Action: "]
       24 MOVE                             R7 R3
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K8 ["log"]
       29 LOADK                            R6 K10 ["New State: "]
       30 MOVE                             R7 R2
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K8 ["log"]
       35 LOADK                            R6 K11 ["Last State: "]
       36 MOVE                             R7 R1
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K12 ["groupEnd"]
       41 CALL                             R5 0 0
       42 RETURN                           R0 0
       43 FASTCALL1                        TYPE R4 ; [+3]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K14 [type]
       47 CALL                             R5 1 1
       48 JUMPIFNOTEQKS                    R5 K15 ["function"] ; [+6]
       50 MOVE                             R5 R4
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 MOVE                             R8 R3
       54 CALL                             R5 3 0
       55 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"url"}]
        2 SETTABLEKS                       R0 R3 K0 ["url"]
        4 NAMECALL                         R1 R1 K2 ["_handleOpenURL"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_actionEventSubscribers"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R3
        7 DUPTABLE                         R6 K5 [{"type", "action", "state", "lastState"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K6 ["Action"]
       11 SETTABLEKS                       R7 R6 K1 ["type"]
       13 GETUPVAL                         R7 2
       14 SETTABLEKS                       R7 R6 K2 ["action"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K3 ["state"]
       19 GETTABLEKS                       R7 R7 K7 ["nav"]
       21 SETTABLEKS                       R7 R6 K3 ["state"]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K4 ["lastState"]
       26 CALL                             R5 1 0
       27 FORGLOOP                         R0 1 ; [-22]
       29 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 NAMECALL                         R1 R0 K1 ["_updateExternalDispatchConnector"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["_isStateful"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K4 [_G]
       13 GETTABLEKS                       R1 R1 K5 ["__DEV__"]
       15 JUMPIFNOT                        R1 ; [+14]
       16 GETTABLEKS                       R1 R0 K6 ["props"]
       18 GETTABLEKS                       R1 R1 K7 ["detached"]
       20 JUMPIF                           R1 ; [+9]
       21 GETUPVAL                         R1 0
       22 LOADN                            R2 0
       23 JUMPIFNOTLT                      R2 R1 ; [+6]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K8 ["warn"]
       28 LOADK                            R2 K9 ["You should only render one navigator explicitly in your app, and other navigators should be rendered by including them in that navigator. Full details at: https://reactnavigation.org/docs/4.x/common-mistakes#explicitly-rendering-more-than-one-navigator"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 0
       31 ADDK                             R1 R1 K10 [1]
       32 SETUPVAL                         R1 0
       33 GETUPVAL                         R1 2
       34 JUMPIFNOT                        R1 ; [+7]
       35 GETUPVAL                         R1 2
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          VAL R0
       38 LOADB                            R4 0
       39 NAMECALL                         R1 R1 K11 ["listenForLuaURLs"]
       41 CALL                             R1 3 0
       42 LOADNIL                          R1
       43 LOADNIL                          R2
       44 GETTABLEKS                       R3 R0 K6 ["props"]
       46 GETTABLEKS                       R3 R3 K12 ["enableURLHandling"]
       48 JUMPIFEQKB                       R3 FALSE ; [+8]
       50 NAMECALL                         R3 R0 K13 ["getStartupParams"]
       52 CALL                             R3 1 1
       53 GETTABLEKS                       R1 R3 K14 ["parsedUrl"]
       55 GETTABLEKS                       R2 R3 K15 ["userProvidedStartupState"]
       57 GETTABLEKS                       R3 R0 K16 ["_initialAction"]
       59 GETTABLEKS                       R4 R0 K17 ["state"]
       61 GETTABLEKS                       R4 R4 K18 ["nav"]
       63 JUMPIF                           R4 ; [+8]
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R5 R5 K19 ["router"]
       67 GETTABLEKS                       R5 R5 K20 ["getStateForAction"]
       69 MOVE                             R6 R3
       70 CALL                             R5 1 1
       71 MOVE                             R4 R5
       72 JUMPIFNOT                        R2 ; [+1]
       73 MOVE                             R4 R2
       74 JUMPIFNOT                        R1 ; [+23]
       75 GETTABLEKS                       R5 R1 K21 ["path"]
       77 GETTABLEKS                       R6 R1 K22 ["params"]
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K19 ["router"]
       82 GETTABLEKS                       R7 R7 K23 ["getActionForPathAndParams"]
       84 MOVE                             R8 R5
       85 MOVE                             R9 R6
       86 CALL                             R7 2 1
       87 JUMPIFNOT                        R7 ; [+10]
       88 MOVE                             R3 R7
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R8 R8 K19 ["router"]
       92 GETTABLEKS                       R8 R8 K20 ["getStateForAction"]
       94 MOVE                             R9 R7
       95 MOVE                             R10 R4
       96 CALL                             R8 2 1
       97 MOVE                             R4 R8
       98 NEWCLOSURE                       R5 P1
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          REF R3
      102 GETTABLEKS                       R6 R0 K17 ["state"]
      104 GETTABLEKS                       R6 R6 K18 ["nav"]
      106 JUMPIFNOTEQ                      R4 R6 ; [+7]
      108 GETIMPORT                        R6 K25 [spawn]
      110 MOVE                             R7 R5
      111 CALL                             R6 1 0
      112 CLOSEUPVALS                      R3
      113 RETURN                           R0 0
      114 DUPTABLE                         R8 K26 [{"nav"}]
      115 SETTABLEKS                       R4 R8 K18 ["nav"]
      117 MOVE                             R9 R5
      118 NAMECALL                         R6 R0 K27 ["setState"]
      120 CALL                             R6 3 0
      121 CLOSEUPVALS                      R3
      122 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["getLastLuaURL"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["uriPrefix"]
        4 GETTABLEKS                       R3 R1 K2 ["loadNavigationState"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R6 0
        9 JUMPIFNOT                        R6 ; [+6]
       10 GETIMPORT                        R6 K4 [pcall]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U0
       15 CALL                             R6 1 0
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETIMPORT                        R6 K4 [pcall]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          REF R5
       21 CAPTURE                          VAL R3
       22 CALL                             R6 1 0
       23 DUPTABLE                         R6 K7 [{"parsedUrl", "userProvidedStartupState"}]
       24 MOVE                             R7 R4
       25 JUMPIFNOT                        R7 ; [+4]
       26 GETUPVAL                         R7 1
       27 MOVE                             R8 R4
       28 MOVE                             R9 R2
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K5 ["parsedUrl"]
       32 SETTABLEKS                       R5 R6 K6 ["userProvidedStartupState"]
       34 CLOSEUPVALS                      R4
       35 RETURN                           R6 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["persistNavigationState"]
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETIMPORT                        R3 K3 [pcall]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 2
       10 JUMPIF                           R3 ; [+8]
       11 GETIMPORT                        R5 K5 [warn]
       13 LOADK                            R7 K6 ["Uncaught error while calling persistNavigationState()! "]
       14 LOADK                            R8 K7 ["You should handle exceptions thrown from persistNavigationState(), "]
       15 LOADK                            R9 K8 ["ignoring them may result in undefined behavior.\n"]
       16 MOVE                             R10 R4
       17 CONCAT                           R6 R7 R10
       18 CALL                             R5 1 0
       19 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K1 ["stopListeningForLuaURLs"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["_disconnectExternalDispatch"]
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETTABLEKS                       R1 R0 K2 ["_disconnectExternalDispatch"]
       14 CALL                             R1 0 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K2 ["_disconnectExternalDispatch"]
       18 NAMECALL                         R1 R0 K3 ["_isStateful"]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+3]
       22 GETUPVAL                         R2 1
       23 SUBK                             R1 R2 K4 [1]
       24 SETUPVAL                         R1 1
       25 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_actionEventSubscribers"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R3
        7 DUPTABLE                         R6 K5 [{"type", "action", "state", "lastState"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K6 ["Action"]
       11 SETTABLEKS                       R7 R6 K1 ["type"]
       13 GETUPVAL                         R7 2
       14 SETTABLEKS                       R7 R6 K2 ["action"]
       16 GETUPVAL                         R7 3
       17 SETTABLEKS                       R7 R6 K3 ["state"]
       19 GETUPVAL                         R7 4
       20 SETTABLEKS                       R7 R6 K4 ["lastState"]
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 1 ; [-18]
       25 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["_onNavigationStateChange"]
        6 CALL                             R0 4 0
        7 GETIMPORT                        R0 K3 [task.defer]
        9 GETUPVAL                         R1 4
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R0 R0 K4 ["_persistNavigationState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_22:
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
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K6 ; [+3]
       31 LOADK                            R5 K6 ["should be set in constructor if stateful"]
       32 GETUPVAL                         R3 0
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K7 ["router"]
       37 GETTABLEKS                       R3 R3 K8 ["getStateForAction"]
       39 MOVE                             R4 R1
       40 MOVE                             R5 R2
       41 CALL                             R3 2 1
       42 MOVE                             R4 R3
       43 JUMPIFNOTEQKNIL                  R3 ; [+2]
       45 MOVE                             R4 R2
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          REF R4
       51 CAPTURE                          VAL R2
       52 JUMPIFNOTEQKNIL                  R3 ; [+6]
       54 MOVE                             R6 R5
       55 CALL                             R6 0 0
       56 LOADB                            R6 1
       57 CLOSEUPVALS                      R4
       58 RETURN                           R6 1
       59 JUMPIFEQ                         R4 R2 ; [+18]
       61 SETTABLEKS                       R4 R0 K3 ["_navState"]
       63 DUPTABLE                         R8 K9 [{"nav"}]
       64 SETTABLEKS                       R4 R8 K5 ["nav"]
       66 NEWCLOSURE                       R9 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          REF R4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 NAMECALL                         R6 R0 K10 ["setState"]
       74 CALL                             R6 3 0
       75 LOADB                            R6 1
       76 CLOSEUPVALS                      R4
       77 RETURN                           R6 1
       78 MOVE                             R6 R5
       79 CALL                             R6 0 0
       80 LOADB                            R6 0
       81 CLOSEUPVALS                      R4
       82 RETURN                           R6 1

PROTO_23:
        0 JUMPIFNOTEQKNIL                  R1 ; [+6]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R3 R3 K1 ["screenProps"]
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["screenProps"]
       11 JUMPIFEQKNIL                     R3 ; [+4]
       13 GETTABLE                         R4 R3 R1
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 RETURN                           R2 1
       17 GETTABLE                         R4 R3 R1
       18 RETURN                           R4 1

PROTO_24:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_getScreenProps"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_navigation"]
        3 RETURN                           R0 1

PROTO_27:
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
       44 JUMPIFNOTEQKNIL                  R1 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 FASTCALL2K                       ASSERT R3 K9 ; [+3]
       50 LOADK                            R4 K9 ["failed to get navigation"]
       51 GETUPVAL                         R2 2
       52 CALL                             R2 2 0
       53 GETUPVAL                         R2 3
       54 GETTABLEKS                       R2 R2 K10 ["createElement"]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K11 ["Provider"]
       59 DUPTABLE                         R4 K13 [{"value"}]
       60 SETTABLEKS                       R1 R4 K12 ["value"]
       62 DUPTABLE                         R5 K15 [{"AppComponent"}]
       63 GETUPVAL                         R6 3
       64 GETTABLEKS                       R6 R6 K10 ["createElement"]
       66 GETUPVAL                         R7 1
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K16 ["assign"]
       70 GETIMPORT                        R9 K19 [table.clone]
       72 GETTABLEKS                       R10 R0 K0 ["props"]
       74 CALL                             R9 1 1
       75 DUPTABLE                         R10 K20 [{"navigation"}]
       76 SETTABLEKS                       R1 R10 K1 ["navigation"]
       78 CALL                             R8 2 -1
       79 CALL                             R6 -1 1
       80 SETTABLEKS                       R6 R5 K14 ["AppComponent"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

PROTO_28:
        0 LOADB                            R3 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R4 R0 K3 ["router"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K4 ; [+3]
       16 LOADK                            R4 K4 ["AppComponent must be a navigator or a stateful Roact component with a 'router' field"]
       17 GETUPVAL                         R2 0
       18 CALL                             R2 2 0
       19 GETIMPORT                        R2 K7 [string.format]
       21 LOADK                            R3 K8 ["NavigationContainer(%s)"]
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R5 R0
       24 GETIMPORT                        R4 K10 [tostring]
       26 CALL                             R4 1 1
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K11 ["Component"]
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K12 ["extend"]
       34 CALL                             R3 2 1
       35 GETTABLEKS                       R4 R0 K3 ["router"]
       37 SETTABLEKS                       R4 R3 K3 ["router"]
       39 DUPCLOSURE                       R4 K13 [PROTO_3]
       40 CAPTURE                          UPVAL U2
       41 SETTABLEKS                       R4 R3 K14 ["getDerivedStateFromProps"]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R4 R3 K15 ["init"]
       49 DUPCLOSURE                       R4 K16 [PROTO_6]
       50 SETTABLEKS                       R4 R3 K17 ["_updateExternalDispatchConnector"]
       52 DUPCLOSURE                       R4 K18 [PROTO_7]
       53 SETTABLEKS                       R4 R3 K19 ["_renderLoading"]
       55 DUPCLOSURE                       R4 K20 [PROTO_8]
       56 SETTABLEKS                       R4 R3 K21 ["_isStateful"]
       58 NEWCLOSURE                       R4 P5
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R4 R3 K22 ["_handleOpenURL"]
       63 DUPCLOSURE                       R4 K23 [PROTO_10]
       64 CAPTURE                          UPVAL U5
       65 SETTABLEKS                       R4 R3 K24 ["_onNavigationStateChange"]
       67 DUPCLOSURE                       R4 K25 [PROTO_11]
       68 SETTABLEKS                       R4 R3 K26 ["didUpdate"]
       70 NEWCLOSURE                       R4 P8
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U7
       76 SETTABLEKS                       R4 R3 K27 ["didMount"]
       78 NEWCLOSURE                       R4 P9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U4
       81 SETTABLEKS                       R4 R3 K28 ["getStartupParams"]
       83 DUPCLOSURE                       R4 K29 [PROTO_18]
       84 SETTABLEKS                       R4 R3 K30 ["_persistNavigationState"]
       86 NEWCLOSURE                       R4 P11
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U6
       89 SETTABLEKS                       R4 R3 K31 ["willUnmount"]
       91 NEWCLOSURE                       R4 P12
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U7
       95 SETTABLEKS                       R4 R3 K32 ["dispatch"]
       97 DUPCLOSURE                       R4 K33 [PROTO_23]
       98 SETTABLEKS                       R4 R3 K34 ["_getScreenProps"]
      100 NEWCLOSURE                       R4 P14
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          UPVAL U10
      107 SETTABLEKS                       R4 R3 K35 ["render"]
      109 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Roact"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["console"]
       19 GETTABLEKS                       R5 R3 K8 ["Object"]
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["NavigationActions"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R0 K10 ["Events"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K4 [require]
       33 GETTABLEKS                       R9 R0 K11 ["views"]
       35 GETTABLEKS                       R9 R9 K12 ["NavigationContext"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R10 R0 K13 ["getNavigation"]
       42 CALL                             R9 1 1
       43 GETIMPORT                        R10 K15 [assert]
       45 GETIMPORT                        R11 K4 [require]
       47 GETTABLEKS                       R12 R0 K16 ["routers"]
       49 GETTABLEKS                       R12 R12 K17 ["pathUtils"]
       51 CALL                             R11 1 1
       52 GETTABLEKS                       R12 R11 K18 ["urlToPathAndParams"]
       54 DUPCLOSURE                       R13 K19 [PROTO_0]
       55 DUPCLOSURE                       R14 K20 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R10
       58 LOADN                            R15 0
       59 NEWCLOSURE                       R16 P2
       60 CAPTURE                          REF R15
       61 NEWCLOSURE                       R17 P3
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R4
       68 CAPTURE                          REF R15
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 DUPTABLE                         R18 K23 [{"createAppContainer", "_TESTING_ONLY_reset_container_count"}]
       74 SETTABLEKS                       R17 R18 K21 ["createAppContainer"]
       76 SETTABLEKS                       R16 R18 K22 ["_TESTING_ONLY_reset_container_count"]
       78 CLOSEUPVALS                      R15
       79 RETURN                           R18 1
