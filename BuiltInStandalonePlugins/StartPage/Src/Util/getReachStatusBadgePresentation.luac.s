PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 LOADNIL                          R1
        3 LOADNIL                          R2
        4 RETURN                           R1 2
        5 GETIMPORT                        R1 K2 [string.match]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K3 ["^icon%-(%a+)%-(.+)$"]
        9 CALL                             R1 2 2
       10 JUMPIFEQKNIL                     R1 ; [+3]
       12 JUMPIFNOTEQKNIL                  R2 ; [+4]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 GETUPVAL                         R4 0
       18 GETTABLE                         R3 R4 R2
       19 GETUPVAL                         R5 1
       20 GETTABLE                         R4 R5 R1
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 JUMPIFNOTEQKNIL                  R4 ; [+4]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 RETURN                           R5 2
       28 RETURN                           R3 2

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["translatedStatus"]
        6 JUMPIFEQKNIL                     R1 ; [+3]
        8 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R4 R0 K2 ["iconName"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+4]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 JUMP                             ; [+25]
       19 GETIMPORT                        R5 K5 [string.match]
       21 MOVE                             R6 R4
       22 LOADK                            R7 K6 ["^icon%-(%a+)%-(.+)$"]
       23 CALL                             R5 2 2
       24 JUMPIFEQKNIL                     R5 ; [+3]
       26 JUMPIFNOTEQKNIL                  R6 ; [+4]
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 JUMP                             ; [+13]
       31 GETUPVAL                         R8 0
       32 GETTABLE                         R7 R8 R6
       33 GETUPVAL                         R9 1
       34 GETTABLE                         R8 R9 R5
       35 JUMPIFEQKNIL                     R7 ; [+3]
       37 JUMPIFNOTEQKNIL                  R8 ; [+4]
       39 LOADNIL                          R2
       40 LOADNIL                          R3
       41 JUMP                             ; [+2]
       42 MOVE                             R2 R7
       43 MOVE                             R3 R8
       44 JUMPIFEQKNIL                     R2 ; [+3]
       46 JUMPIFNOTEQKNIL                  R3 ; [+15]
       48 GETTABLEKS                       R4 R0 K7 ["chipStatus"]
       50 JUMPIFNOTEQKS                    R4 K8 ["Playtest"] ; [+5]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R2 R4 K9 ["LockClosed"]
       55 JUMP                             ; [+3]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R2 R4 K10 ["GlobeDetailed"]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R3 R4 K11 ["Filled"]
       62 GETTABLEKS                       R5 R0 K12 ["variant"]
       64 JUMPIFNOT                        R5 ; [+5]
       65 GETUPVAL                         R5 4
       66 GETTABLEKS                       R6 R0 K12 ["variant"]
       68 GETTABLE                         R4 R5 R6
       69 JUMP                             ; [+1]
       70 LOADNIL                          R4
       71 DUPTABLE                         R5 K15 [{"label", "iconName", "iconVariant", "variant"}]
       72 SETTABLEKS                       R1 R5 K13 ["label"]
       74 SETTABLEKS                       R2 R5 K2 ["iconName"]
       76 SETTABLEKS                       R3 R5 K14 ["iconVariant"]
       78 MOVE                             R6 R4
       79 JUMPIF                           R6 ; [+3]
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K16 ["Standard"]
       83 SETTABLEKS                       R6 R5 K12 ["variant"]
       85 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["UniverseReachStatusResponse"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["Enums"]
       27 GETTABLEKS                       R3 R3 K12 ["IconName"]
       29 GETTABLEKS                       R4 R2 K11 ["Enums"]
       31 GETTABLEKS                       R4 R4 K13 ["IconVariant"]
       33 GETTABLEKS                       R5 R2 K11 ["Enums"]
       35 GETTABLEKS                       R5 R5 K14 ["BadgeVariant"]
       37 NEWTABLE                         R6 0 0
       39 MOVE                             R7 R3
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 FORGPREP                         R7
       43 SETTABLE                         R11 R6 R11
       44 FORGLOOP                         R7 2 ; [-2]
       46 DUPTABLE                         R7 K17 [{"filled", "regular"}]
       47 GETTABLEKS                       R8 R4 K18 ["Filled"]
       49 SETTABLEKS                       R8 R7 K15 ["filled"]
       51 GETTABLEKS                       R8 R4 K19 ["Regular"]
       53 SETTABLEKS                       R8 R7 K16 ["regular"]
       55 DUPCLOSURE                       R8 K20 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R9 K21 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 RETURN                           R9 1
