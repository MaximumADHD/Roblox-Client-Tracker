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
        0 GETUPVAL                         R2 0
        1 OR                               R1 R2 R0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 LOADK                            R4 K0 ["withNavigation and withNavigationFocus can only be used on a view hierarchy of a navigator. The wrapped component is unable to get access to navigation from props or context."]
        5 CALL                             R2 2 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["createElement"]
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R4 R5 K2 ["assign"]
       13 GETIMPORT                        R5 K5 [table.clone]
       15 GETUPVAL                         R6 5
       16 CALL                             R5 1 1
       17 NEWTABLE                         R6 2 0
       19 SETTABLEKS                       R1 R6 K6 ["navigation"]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K7 ["Ref"]
       24 GETUPVAL                         R10 6
       25 GETTABLEKS                       R9 R10 K8 ["forwardRef"]
       27 JUMPIFNOT                        R9 ; [+6]
       28 GETUPVAL                         R9 5
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K7 ["Ref"]
       32 GETTABLE                         R8 R9 R10
       33 JUMP                             ; [+3]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R8 R9 K9 ["None"]
       37 SETTABLE                         R8 R6 R7
       38 CALL                             R4 2 -1
       39 CALL                             R2 -1 -1
       40 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["navigation"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["Consumer"]
        8 DUPTABLE                         R4 K4 [{"render"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R5 R4 K3 ["render"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 LOADB                            R3 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+5]
        8 JUMPIFEQKS                       R4 K3 ["table"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       14 LOADK                            R4 K4 ["withNavigation must be called with a Roact component (stateful or functional)"]
       15 GETIMPORT                        R2 K6 [assert]
       17 CALL                             R2 2 0
       18 MOVE                             R2 R1
       19 JUMPIF                           R2 ; [+2]
       20 NEWTABLE                         R2 0 0
       22 MOVE                             R1 R2
       23 GETTABLEKS                       R2 R1 K7 ["forwardRef"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+4]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K7 ["forwardRef"]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          REF R1
       37 CLOSEUPVALS                      R1
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       23 GETTABLEKS                       R7 R0 K8 ["NavigationContext"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R9 R1 K9 ["utils"]
       30 GETTABLEKS                       R8 R9 K10 ["invariant"]
       32 CALL                             R7 1 1
       33 DUPCLOSURE                       R8 K11 [PROTO_0]
       34 DUPCLOSURE                       R9 K12 [PROTO_3]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R4
       39 RETURN                           R9 1
