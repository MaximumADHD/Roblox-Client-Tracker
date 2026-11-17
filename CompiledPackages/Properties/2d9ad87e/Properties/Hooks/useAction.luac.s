PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disconnect"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{"isEnabled", "onActionActivated", "scope", "shouldFocusProperties"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K6 ["current"]
        8 SETTABLEKS                       R3 R2 K1 ["isEnabled"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K2 ["onActionActivated"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K7 ["scopeRef"]
       16 JUMPIFEQKNIL                     R4 ; [+7]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K7 ["scopeRef"]
       21 GETTABLEKS                       R3 R3 K6 ["current"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K3 ["scope"]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K4 ["shouldFocusProperties"]
       30 SETTABLEKS                       R3 R2 K4 ["shouldFocusProperties"]
       32 CALL                             R0 2 1
       33 GETUPVAL                         R1 5
       34 SETTABLEKS                       R0 R1 K6 ["current"]
       36 NEWCLOSURE                       R1 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U5
       39 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K1 ["setEnabled"]
        7 GETUPVAL                         R2 1
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R1 K2 ["isEnabled"]
        9 JUMPIFEQKNIL                     R4 ; [+4]
       11 GETTABLEKS                       R3 R1 K2 ["isEnabled"]
       13 JUMP                             ; [+1]
       14 LOADB                            R3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["useEventCallback"]
       18 GETTABLEKS                       R5 R1 K4 ["onActivated"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["useRef"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["useRef"]
       29 MOVE                             R7 R3
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 NEWTABLE                         R9 0 5
       43 MOVE                             R10 R0
       44 GETTABLEKS                       R11 R2 K7 ["bindToAction"]
       46 MOVE                             R12 R4
       47 GETTABLEKS                       R13 R1 K8 ["shouldFocusProperties"]
       49 GETTABLEKS                       R14 R1 K9 ["scopeRef"]
       51 SETLIST                          R9 R10 5 [1]
       53 CALL                             R7 2 0
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R9 0 1
       63 MOVE                             R10 R3
       64 SETLIST                          R9 R10 1 [1]
       66 CALL                             R7 2 0
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
