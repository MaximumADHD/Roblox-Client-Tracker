PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["screenProps"]
        4 DUPTABLE                         R2 K3 [{"descriptors", "screenProps"}]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K2 ["descriptors"]
        9 SETTABLEKS                       R1 R2 K1 ["screenProps"]
       11 SETTABLEKS                       R2 R0 K4 ["state"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getComponentForRouteName"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["routeName"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["descriptors"]
        2 GETTABLEKS                       R3 R0 K1 ["navigation"]
        4 GETTABLEKS                       R4 R0 K2 ["screenProps"]
        6 GETUPVAL                         R5 0
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R6 0 +1
       10 LOADB                            R6 1
       11 LOADK                            R7 K3 ["The navigation prop is missing for this navigator"]
       12 CALL                             R5 2 0
       13 GETTABLEKS                       R5 R3 K4 ["state"]
       15 GETTABLEKS                       R5 R5 K5 ["routes"]
       17 GETUPVAL                         R6 0
       18 FASTCALL1                        TYPE R5 ; [+3]
       19 MOVE                             R9 R5
       20 GETIMPORT                        R8 K7 [type]
       22 CALL                             R8 1 1
       23 JUMPIFEQKS                       R8 K8 ["table"] ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 LOADK                            R8 K9 ["No 'routes' found in navigation state. Don't try to pass the navigation prop from a Roact component to a Navigator child."]
       28 CALL                             R6 2 0
       29 NEWTABLE                         R6 0 0
       31 GETIMPORT                        R7 K11 [ipairs]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 3
       35 FORGPREP_INEXT                   R7
       36 JUMPIFNOT                        R2 ; [+22]
       37 GETTABLEKS                       R13 R11 K12 ["key"]
       39 GETTABLE                         R12 R2 R13
       40 JUMPIFNOT                        R12 ; [+18]
       41 GETTABLEKS                       R13 R11 K12 ["key"]
       43 GETTABLE                         R12 R2 R13
       44 GETTABLEKS                       R12 R12 K4 ["state"]
       46 JUMPIFNOTEQ                      R11 R12 ; [+12]
       48 GETTABLEKS                       R12 R1 K2 ["screenProps"]
       50 JUMPIFNOTEQ                      R4 R12 ; [+8]
       52 GETTABLEKS                       R12 R11 K12 ["key"]
       54 GETTABLEKS                       R14 R11 K12 ["key"]
       56 GETTABLE                         R13 R2 R14
       57 SETTABLE                         R13 R6 R12
       58 JUMP                             ; [+30]
       59 NEWCLOSURE                       R12 P0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R11
       62 GETTABLEKS                       R13 R3 K13 ["getChildNavigation"]
       64 GETTABLEKS                       R14 R11 K12 ["key"]
       66 CALL                             R13 1 1
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R14 R14 K14 ["getScreenOptions"]
       70 MOVE                             R15 R13
       71 MOVE                             R16 R4
       72 CALL                             R14 2 1
       73 GETTABLEKS                       R15 R11 K12 ["key"]
       75 DUPTABLE                         R16 K17 [{"key", "getComponent", "options", "state", "navigation"}]
       76 GETTABLEKS                       R17 R11 K12 ["key"]
       78 SETTABLEKS                       R17 R16 K12 ["key"]
       80 SETTABLEKS                       R12 R16 K15 ["getComponent"]
       82 SETTABLEKS                       R14 R16 K16 ["options"]
       84 SETTABLEKS                       R11 R16 K4 ["state"]
       86 SETTABLEKS                       R13 R16 K1 ["navigation"]
       88 SETTABLE                         R16 R6 R15
       89 FORGLOOP                         R7 2 [inext] ; [-54]
       91 DUPTABLE                         R7 K18 [{"descriptors", "screenProps"}]
       92 SETTABLEKS                       R6 R7 K0 ["descriptors"]
       94 SETTABLEKS                       R4 R7 K2 ["screenProps"]
       96 RETURN                           R7 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R2 K3 ["screenProps"]
        8 GETTABLEKS                       R3 R0 K2 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["descriptors"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["createElement"]
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K6 ["Dictionary"]
       19 GETTABLEKS                       R6 R6 K7 ["join"]
       21 GETTABLEKS                       R7 R0 K0 ["props"]
       23 DUPTABLE                         R8 K9 [{"screenProps", "navigation", "navigationConfig", "descriptors"}]
       24 SETTABLEKS                       R2 R8 K3 ["screenProps"]
       26 SETTABLEKS                       R1 R8 K1 ["navigation"]
       28 GETUPVAL                         R9 3
       29 SETTABLEKS                       R9 R8 K8 ["navigationConfig"]
       31 SETTABLEKS                       R3 R8 K4 ["descriptors"]
       33 CALL                             R6 2 -1
       34 CALL                             R4 -1 -1
       35 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Component"]
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
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R4 R3 K7 ["getDerivedStateFromProps"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K8 ["render"]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K4 ["Parent"]
       33 GETTABLEKS                       R3 R3 K4 ["Parent"]
       35 GETTABLEKS                       R3 R3 K7 ["utils"]
       37 GETTABLEKS                       R3 R3 K8 ["validate"]
       39 CALL                             R2 1 1
       40 DUPCLOSURE                       R3 K9 [PROTO_4]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 RETURN                           R3 1
