PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+20]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["callbacks"]
        5 JUMPIFEQKNIL                     R2 ; [+16]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["callbacks"]
       10 GETTABLEKS                       R2 R3 K1 ["onActivated"]
       12 JUMPIFEQKNIL                     R2 ; [+9]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["callbacks"]
       17 GETTABLEKS                       R2 R3 K1 ["onActivated"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 1
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+6]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["shouldIgnoreHoverBlocker"]
        6 JUMPIFEQKB                       R4 TRUE ; [+9]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["isBlockingHoveringObservable"]
       11 GETTABLEKS                       R4 R5 K2 ["get"]
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 0
       17 JUMPIFEQKNIL                     R4 ; [+22]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K3 ["callbacks"]
       22 JUMPIFEQKNIL                     R4 ; [+17]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K3 ["callbacks"]
       27 GETTABLEKS                       R4 R5 K4 ["onMouseEnter"]
       29 JUMPIFEQKNIL                     R4 ; [+10]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K3 ["callbacks"]
       34 GETTABLEKS                       R4 R5 K4 ["onMouseEnter"]
       36 MOVE                             R5 R0
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 CALL                             R4 3 0
       40 GETUPVAL                         R4 2
       41 MOVE                             R5 R0
       42 MOVE                             R6 R3
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+22]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["callbacks"]
        6 JUMPIFEQKNIL                     R3 ; [+17]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["callbacks"]
       11 GETTABLEKS                       R3 R4 K1 ["onMouseLeave"]
       13 JUMPIFEQKNIL                     R3 ; [+10]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["callbacks"]
       18 GETTABLEKS                       R3 R4 K1 ["onMouseLeave"]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R3 3 0
       24 GETUPVAL                         R3 1
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["useTooltip"]
        9 MOVE                             R3 R0
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETTABLEKS                       R3 R0 K3 ["tooltipText"]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["useContext"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K1 ["Context"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R7 0 2
       29 MOVE                             R8 R0
       30 JUMPIFNOT                        R8 ; [+7]
       31 GETTABLEKS                       R8 R0 K5 ["callbacks"]
       33 JUMPIFNOT                        R8 ; [+4]
       34 GETTABLEKS                       R9 R0 K5 ["callbacks"]
       36 GETTABLEKS                       R8 R9 K6 ["onActivated"]
       38 MOVE                             R9 R3
       39 SETLIST                          R7 R8 2 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R8 0 2
       51 MOVE                             R9 R0
       52 JUMPIFNOT                        R9 ; [+7]
       53 GETTABLEKS                       R9 R0 K5 ["callbacks"]
       55 JUMPIFNOT                        R9 ; [+4]
       56 GETTABLEKS                       R10 R0 K5 ["callbacks"]
       58 GETTABLEKS                       R9 R10 K7 ["onMouseEnter"]
       60 MOVE                             R10 R2
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R9 0 2
       72 MOVE                             R10 R0
       73 JUMPIFNOT                        R10 ; [+7]
       74 GETTABLEKS                       R10 R0 K5 ["callbacks"]
       76 JUMPIFNOT                        R10 ; [+4]
       77 GETTABLEKS                       R11 R0 K5 ["callbacks"]
       79 GETTABLEKS                       R10 R11 K8 ["onMouseLeave"]
       81 MOVE                             R11 R3
       82 SETLIST                          R9 R10 2 [1]
       84 CALL                             R7 2 1
       85 DUPTABLE                         R8 K12 [{"activated", "mouseEnter", "mouseLeave"}]
       86 SETTABLEKS                       R5 R8 K9 ["activated"]
       88 SETTABLEKS                       R6 R8 K10 ["mouseEnter"]
       90 SETTABLEKS                       R7 R8 K11 ["mouseLeave"]
       92 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["HoverBlockerContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["TooltipContext"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
