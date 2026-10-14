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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getReachStatusBadgePresentation should only be used when FFlagLuaStartPageReachStatus is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K3 ["translatedStatus"]
       14 JUMPIFEQKNIL                     R1 ; [+3]
       16 JUMPIFNOTEQKS                    R1 K4 [""] ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETTABLEKS                       R4 R0 K5 ["iconName"]
       22 JUMPIFNOTEQKNIL                  R4 ; [+4]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 JUMP                             ; [+25]
       27 GETIMPORT                        R5 K8 [string.match]
       29 MOVE                             R6 R4
       30 LOADK                            R7 K9 ["^icon%-(%a+)%-(.+)$"]
       31 CALL                             R5 2 2
       32 JUMPIFEQKNIL                     R5 ; [+3]
       34 JUMPIFNOTEQKNIL                  R6 ; [+4]
       36 LOADNIL                          R2
       37 LOADNIL                          R3
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R8 1
       40 GETTABLE                         R7 R8 R6
       41 GETUPVAL                         R9 2
       42 GETTABLE                         R8 R9 R5
       43 JUMPIFEQKNIL                     R7 ; [+3]
       45 JUMPIFNOTEQKNIL                  R8 ; [+4]
       47 LOADNIL                          R2
       48 LOADNIL                          R3
       49 JUMP                             ; [+2]
       50 MOVE                             R2 R7
       51 MOVE                             R3 R8
       52 JUMPIFEQKNIL                     R2 ; [+3]
       54 JUMPIFNOTEQKNIL                  R3 ; [+15]
       56 GETTABLEKS                       R4 R0 K10 ["chipStatus"]
       58 JUMPIFNOTEQKS                    R4 K11 ["Playtest"] ; [+5]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R2 R4 K12 ["LockClosed"]
       63 JUMP                             ; [+3]
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R2 R4 K13 ["GlobeDetailed"]
       67 GETUPVAL                         R4 4
       68 GETTABLEKS                       R3 R4 K14 ["Filled"]
       70 GETTABLEKS                       R5 R0 K15 ["variant"]
       72 JUMPIFNOT                        R5 ; [+5]
       73 GETUPVAL                         R5 5
       74 GETTABLEKS                       R6 R0 K15 ["variant"]
       76 GETTABLE                         R4 R5 R6
       77 JUMP                             ; [+1]
       78 LOADNIL                          R4
       79 DUPTABLE                         R5 K18 [{"label", "iconName", "iconVariant", "variant"}]
       80 SETTABLEKS                       R1 R5 K16 ["label"]
       82 SETTABLEKS                       R2 R5 K5 ["iconName"]
       84 SETTABLEKS                       R3 R5 K17 ["iconVariant"]
       86 MOVE                             R6 R4
       87 JUMPIF                           R6 ; [+3]
       88 GETUPVAL                         R6 5
       89 GETTABLEKS                       R6 R6 K19 ["Standard"]
       91 SETTABLEKS                       R6 R5 K15 ["variant"]
       93 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagLuaStartPageReachStatus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Models"]
       22 GETTABLEKS                       R3 R3 K10 ["UniverseReachStatusResponse"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K13 ["Enums"]
       36 GETTABLEKS                       R4 R4 K14 ["IconName"]
       38 GETTABLEKS                       R5 R3 K13 ["Enums"]
       40 GETTABLEKS                       R5 R5 K15 ["IconVariant"]
       42 GETTABLEKS                       R6 R3 K13 ["Enums"]
       44 GETTABLEKS                       R6 R6 K16 ["BadgeVariant"]
       46 NEWTABLE                         R7 0 0
       48 MOVE                             R8 R4
       49 LOADNIL                          R9
       50 LOADNIL                          R10
       51 FORGPREP                         R8
       52 SETTABLE                         R12 R7 R12
       53 FORGLOOP                         R8 2 ; [-2]
       55 DUPTABLE                         R8 K19 [{"filled", "regular"}]
       56 GETTABLEKS                       R9 R5 K20 ["Filled"]
       58 SETTABLEKS                       R9 R8 K17 ["filled"]
       60 GETTABLEKS                       R9 R5 K21 ["Regular"]
       62 SETTABLEKS                       R9 R8 K18 ["regular"]
       64 DUPCLOSURE                       R9 K22 [PROTO_0]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R10 K23 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 RETURN                           R10 1
