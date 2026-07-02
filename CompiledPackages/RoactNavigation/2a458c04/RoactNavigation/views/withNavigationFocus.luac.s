PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKS                       R1 K2 ["function"] ; [+5]
        8 JUMPIFEQKS                       R1 K3 ["table"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"isFocused"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["navigation"]
        5 GETTABLEKS                       R2 R2 K0 ["isFocused"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K0 ["isFocused"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 NEWTABLE                         R2 0 2
        6 GETTABLEKS                       R3 R1 K2 ["addListener"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["WillFocus"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R4 R1 K2 ["addListener"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["WillBlur"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 CALL                             R4 2 -1
       22 SETLIST                          R2 R3 -1 [1]
       24 SETTABLEKS                       R2 R0 K5 ["subscriptions"]
       26 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["subscriptions"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["remove"]
        7 CALL                             R6 0 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["assign"]
        7 GETIMPORT                        R4 K4 [table.clone]
        9 GETTABLEKS                       R5 R0 K5 ["props"]
       11 CALL                             R4 1 1
       12 DUPTABLE                         R5 K7 [{"isFocused"}]
       13 GETTABLEKS                       R6 R0 K8 ["state"]
       15 GETTABLEKS                       R6 R6 K6 ["isFocused"]
       17 SETTABLEKS                       R6 R5 K6 ["isFocused"]
       19 CALL                             R3 2 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 LOADB                            R2 1
        6 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
        8 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       14 LOADK                            R3 K4 ["withNavigationFocus must be called with a Roact component (stateful or functional)"]
       15 GETIMPORT                        R1 K6 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K7 ["Component"]
       21 LOADK                            R3 K8 ["NavigationFocusComponent"]
       22 NAMECALL                         R1 R1 K9 ["extend"]
       24 CALL                             R1 2 1
       25 DUPCLOSURE                       R2 K10 [PROTO_1]
       26 SETTABLEKS                       R2 R1 K11 ["init"]
       28 DUPCLOSURE                       R2 K12 [PROTO_4]
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R2 R1 K13 ["didMount"]
       32 DUPCLOSURE                       R2 K14 [PROTO_5]
       33 SETTABLEKS                       R2 R1 K15 ["willUnmount"]
       35 NEWCLOSURE                       R2 P3
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R2 R1 K16 ["render"]
       41 GETUPVAL                         R2 3
       42 MOVE                             R3 R1
       43 DUPTABLE                         R4 K19 [{["forwardRef"] = False}]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R2 K7 ["Roact"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R1 K8 ["Events"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R0 K9 ["withNavigation"]
       30 CALL                             R7 1 1
       31 DUPCLOSURE                       R8 K10 [PROTO_0]
       32 DUPCLOSURE                       R9 K11 [PROTO_7]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R7
       37 RETURN                           R9 1
