PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["screenProps"]
        4 DUPTABLE                         R2 K4 [{"descriptors", "transitioningDescriptors", "screenProps"}]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K2 ["descriptors"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K3 ["transitioningDescriptors"]
       13 SETTABLEKS                       R1 R2 K1 ["screenProps"]
       15 SETTABLEKS                       R2 R0 K5 ["state"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getComponentForRouteName"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["routeName"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+27]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R1 K0 ["key"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOT                        R2 ; [+22]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R1 K0 ["key"]
       10 GETTABLE                         R3 R4 R5
       11 GETTABLEKS                       R2 R3 K1 ["state"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+15]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K2 ["screenProps"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+9]
       21 GETTABLEKS                       R2 R1 K0 ["key"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R5 R1 K0 ["key"]
       26 GETTABLE                         R3 R4 R5
       27 SETTABLE                         R3 R0 R2
       28 RETURN                           R0 1
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R1
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R3 R4 K3 ["getChildNavigation"]
       35 GETTABLEKS                       R4 R1 K0 ["key"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R4 R5 K4 ["getScreenOptions"]
       41 MOVE                             R5 R3
       42 GETUPVAL                         R6 1
       43 CALL                             R4 2 1
       44 GETTABLEKS                       R5 R1 K0 ["key"]
       46 DUPTABLE                         R6 K8 [{"key", "getComponent", "options", "state", "navigation"}]
       47 GETTABLEKS                       R7 R1 K0 ["key"]
       49 SETTABLEKS                       R7 R6 K0 ["key"]
       51 SETTABLEKS                       R2 R6 K5 ["getComponent"]
       53 SETTABLEKS                       R4 R6 K6 ["options"]
       55 SETTABLEKS                       R1 R6 K1 ["state"]
       57 SETTABLEKS                       R3 R6 K7 ["navigation"]
       59 SETTABLE                         R6 R0 R5
       60 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["key"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["None"]
        5 SETTABLE                         R3 R0 R2
        6 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["descriptors"]
        2 GETTABLEKS                       R3 R1 K1 ["transitioningDescriptors"]
        4 GETTABLEKS                       R4 R0 K2 ["navigation"]
        6 GETTABLEKS                       R5 R0 K3 ["screenProps"]
        8 GETUPVAL                         R6 0
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 LOADK                            R8 K4 ["The navigation prop is missing for this navigator. In react-navigation v3 and v4 you must set up your app container directly. More info: https://reactnavigation.org/docs/en/app-containers.html"]
       14 CALL                             R6 2 0
       15 GETTABLEKS                       R7 R4 K5 ["state"]
       17 GETTABLEKS                       R6 R7 K6 ["routes"]
       19 GETUPVAL                         R7 0
       20 FASTCALL1                        TYPE R6 ; [+3]
       21 MOVE                             R10 R6
       22 GETIMPORT                        R9 K8 [type]
       24 CALL                             R9 1 1
       25 JUMPIFEQKS                       R9 K9 ["table"] ; [+2]
       27 LOADB                            R8 0 +1
       28 LOADB                            R8 1
       29 LOADK                            R9 K10 ["No \"routes\" found in navigation state. Did you try to pass the navigation prop of a React component to a Navigator child? See https://reactnavigation.org/docs/en/custom-navigators.html#navigator-navigation-prop"]
       30 CALL                             R7 2 0
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K11 ["reduce"]
       34 MOVE                             R8 R6
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R10 0 0
       43 CALL                             R7 3 1
       44 NEWTABLE                         R8 0 0
       46 GETTABLEKS                       R10 R4 K5 ["state"]
       48 GETTABLEKS                       R9 R10 K12 ["isTransitioning"]
       50 JUMPIFNOT                        R9 ; [+18]
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R9 R10 K13 ["assign"]
       54 NEWTABLE                         R10 0 0
       56 MOVE                             R11 R3
       57 MOVE                             R12 R2
       58 GETUPVAL                         R14 1
       59 GETTABLEKS                       R13 R14 K11 ["reduce"]
       61 MOVE                             R14 R6
       62 DUPCLOSURE                       R15 K14 [PROTO_3]
       63 CAPTURE                          UPVAL U3
       64 NEWTABLE                         R16 0 0
       66 CALL                             R13 3 -1
       67 CALL                             R9 -1 1
       68 MOVE                             R8 R9
       69 DUPTABLE                         R9 K15 [{"descriptors", "transitioningDescriptors", "screenProps"}]
       70 SETTABLEKS                       R7 R9 K0 ["descriptors"]
       72 SETTABLEKS                       R8 R9 K1 ["transitioningDescriptors"]
       74 SETTABLEKS                       R5 R9 K3 ["screenProps"]
       76 RETURN                           R9 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R6 0
        4 GETTABLE                         R5 R6 R0
        5 GETTABLEKS                       R4 R5 K0 ["navigation"]
        7 GETTABLEKS                       R3 R4 K1 ["emit"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R3 R4 R0
       15 JUMPIFNOT                        R3 ; [+9]
       16 GETUPVAL                         R6 1
       17 GETTABLE                         R5 R6 R0
       18 GETTABLEKS                       R4 R5 K0 ["navigation"]
       20 GETTABLEKS                       R3 R4 K1 ["emit"]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["navigation"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R3 K3 ["screenProps"]
        8 GETTABLEKS                       R4 R0 K2 ["state"]
       10 GETTABLEKS                       R3 R4 K4 ["descriptors"]
       12 GETTABLEKS                       R5 R0 K2 ["state"]
       14 GETTABLEKS                       R4 R5 K5 ["transitioningDescriptors"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K6 ["createFragment"]
       19 DUPTABLE                         R6 K9 [{"Events", "View"}]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K10 ["createElement"]
       23 GETUPVAL                         R8 1
       24 DUPTABLE                         R9 K12 [{"navigation", "onEvent"}]
       25 SETTABLEKS                       R1 R9 K1 ["navigation"]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R10 R9 K11 ["onEvent"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K7 ["Events"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K10 ["createElement"]
       38 GETUPVAL                         R8 2
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R9 R10 K13 ["assign"]
       42 GETIMPORT                        R10 K16 [table.clone]
       44 GETTABLEKS                       R11 R0 K0 ["props"]
       46 CALL                             R10 1 1
       47 DUPTABLE                         R11 K18 [{"screenProps", "navigation", "navigationConfig", "descriptors"}]
       48 SETTABLEKS                       R2 R11 K3 ["screenProps"]
       50 SETTABLEKS                       R1 R11 K1 ["navigation"]
       52 GETUPVAL                         R12 4
       53 SETTABLEKS                       R12 R11 K17 ["navigationConfig"]
       55 SETTABLEKS                       R3 R11 K4 ["descriptors"]
       57 CALL                             R9 2 -1
       58 CALL                             R7 -1 1
       59 SETTABLEKS                       R7 R6 K8 ["View"]
       61 CALL                             R5 1 -1
       62 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Component"]
        3 LOADK                            R5 K1 ["Navigator"]
        4 NAMECALL                         R3 R3 K2 ["extend"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R1 R3 K3 ["router"]
        9 GETTABLEKS                       R4 R2 K4 ["navigationOptions"]
       11 SETTABLEKS                       R4 R3 K4 ["navigationOptions"]
       13 DUPCLOSURE                       R4 K5 [PROTO_0]
       14 SETTABLEKS                       R4 R3 K6 ["init"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R4 R3 K7 ["getDerivedStateFromProps"]
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K8 ["render"]
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["Object"]
       21 GETTABLEKS                       R5 R3 K8 ["Array"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R8 R0 K9 ["utils"]
       27 GETTABLEKS                       R7 R8 K10 ["invariant"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K4 [require]
       32 GETTABLEKS                       R9 R0 K11 ["views"]
       34 GETTABLEKS                       R8 R9 K12 ["NavigationFocusEvents"]
       36 CALL                             R7 1 1
       37 DUPCLOSURE                       R8 K13 [PROTO_7]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R7
       43 RETURN                           R8 1
