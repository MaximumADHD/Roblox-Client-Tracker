PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationPopoverPluginUriAnchor"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["isStudioUri"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["anchorRef"]
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["setAnchorUri"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["anchorRef"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K2 ["anchorRef"]
       23 FASTCALL1                        TYPEOF R1 ; [+2]
       24 GETIMPORT                        R0 K5 [typeof]
       26 CALL                             R0 1 1
       27 JUMPIFNOTEQKS                    R0 K6 ["table"] ; [+17]
       29 GETUPVAL                         R0 2
       30 GETTABLEKS                       R0 R0 K2 ["anchorRef"]
       32 GETTABLEKS                       R0 R0 K7 ["current"]
       34 JUMPIFNOT                        R0 ; [+10]
       35 GETUPVAL                         R0 3
       36 GETTABLEKS                       R0 R0 K8 ["setAnchor"]
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R1 R1 K2 ["anchorRef"]
       41 GETTABLEKS                       R1 R1 K7 ["current"]
       43 CALL                             R0 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R0 3
       46 GETTABLEKS                       R0 R0 K8 ["setAnchor"]
       48 GETUPVAL                         R1 4
       49 GETTABLEKS                       R1 R1 K7 ["current"]
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useImperativeHandle"]
       13 MOVE                             R5 R1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R7 0 0
       18 CALL                             R4 3 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["useLayoutEffect"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R0 K4 ["anchorRef"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADNIL                          R4
       33 RETURN                           R4 1
       34 LOADK                            R5 K5 ["%*--anchor"]
       35 GETTABLEKS                       R7 R2 K6 ["testId"]
       37 NAMECALL                         R5 R5 K7 ["format"]
       39 CALL                             R5 2 1
       40 MOVE                             R4 R5
       41 SETTABLEKS                       R4 R0 K6 ["testId"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K8 ["createElement"]
       46 GETUPVAL                         R5 4
       47 GETUPVAL                         R6 5
       48 MOVE                             R7 R0
       49 DUPTABLE                         R8 K12 [{["tag"] = "auto-xy", ["ref"]}]
       50 SETTABLEKS                       R3 R8 K11 ["ref"]
       52 CALL                             R6 2 1
       53 GETTABLEKS                       R7 R0 K13 ["children"]
       55 CALL                             R4 3 -1
       56 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K4 ["Parent"]
       24 GETTABLEKS                       R4 R4 K9 ["PopoverContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Utility"]
       31 GETTABLEKS                       R5 R5 K10 ["Plugin"]
       33 GETTABLEKS                       R5 R5 K11 ["StudioUri"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Components"]
       40 GETTABLEKS                       R6 R6 K13 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K14 ["View"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K7 ["Utility"]
       54 GETTABLEKS                       R8 R8 K15 ["withCommonProps"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R1 K16 ["React"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K17 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 GETTABLEKS                       R10 R8 K18 ["forwardRef"]
       71 MOVE                             R11 R9
       72 CALL                             R10 1 -1
       73 RETURN                           R10 -1
