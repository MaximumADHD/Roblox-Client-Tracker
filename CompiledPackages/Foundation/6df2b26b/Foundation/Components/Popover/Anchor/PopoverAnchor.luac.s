PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["anchorRef"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["table"] ; [+17]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["anchorRef"]
       12 GETTABLEKS                       R0 R1 K4 ["current"]
       14 JUMPIFNOT                        R0 ; [+10]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K5 ["setAnchor"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["anchorRef"]
       21 GETTABLEKS                       R1 R2 K4 ["current"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R0 R1 K5 ["setAnchor"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K4 ["current"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["useImperativeHandle"]
       13 MOVE                             R5 R1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R7 0 0
       18 CALL                             R4 3 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K3 ["useLayoutEffect"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R4 R0 K4 ["anchorRef"]
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 LOADK                            R5 K5 ["%*--anchor"]
       33 GETTABLEKS                       R7 R2 K6 ["testId"]
       35 NAMECALL                         R5 R5 K7 ["format"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 SETTABLEKS                       R4 R0 K6 ["testId"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K8 ["createElement"]
       44 GETUPVAL                         R5 2
       45 GETUPVAL                         R6 3
       46 MOVE                             R7 R0
       47 DUPTABLE                         R8 K11 [{"tag", "ref"}]
       48 LOADK                            R9 K12 ["auto-xy"]
       49 SETTABLEKS                       R9 R8 K9 ["tag"]
       51 SETTABLEKS                       R3 R8 K10 ["ref"]
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R7 R0 K13 ["children"]
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K9 ["Utility"]
       20 GETTABLEKS                       R4 R5 K10 ["withCommonProps"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K7 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["View"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R8 R9 K4 ["Parent"]
       36 GETTABLEKS                       R7 R8 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K12 ["PopoverContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R1 K13 ["React"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K14 [PROTO_2]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 GETTABLEKS                       R8 R6 K15 ["forwardRef"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 -1
       55 RETURN                           R8 -1
