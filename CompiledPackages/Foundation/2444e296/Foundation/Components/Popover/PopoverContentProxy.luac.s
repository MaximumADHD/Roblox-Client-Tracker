PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Panels"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 1 2
       10 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["FoundationFixUserLevelPlugins"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 2
        8 MOVE                             R2 R4
        9 MOVE                             R3 R5
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 MOVE                             R2 R4
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["FoundationFixUserLevelPlugins"]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADNIL                          R4
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          REF R2
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R2
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 MOVE                             R5 R0
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETIMPORT                        R6 K4 [table.clone]
       35 MOVE                             R7 R0
       36 CALL                             R6 1 1
       37 MOVE                             R5 R6
       38 SETTABLEKS                       R1 R5 K5 ["ref"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K6 ["FoundationPopoverPluginSupport"]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K7 ["FoundationPopoverPluginSecurityGate"]
       46 JUMPIFNOT                        R7 ; [+5]
       47 MOVE                             R7 R6
       48 JUMPIFNOT                        R7 ; [+2]
       49 GETUPVAL                         R7 3
       50 CALL                             R7 0 1
       51 MOVE                             R6 R7
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K0 ["FoundationFixUserLevelPlugins"]
       55 JUMPIFNOT                        R7 ; [+11]
       56 JUMPIFNOT                        R6 ; [+20]
       57 JUMPIFNOT                        R3 ; [+19]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K8 ["createElement"]
       61 GETUPVAL                         R8 4
       62 MOVE                             R9 R5
       63 CALL                             R7 2 -1
       64 CLOSEUPVALS                      R2
       65 RETURN                           R7 -1
       66 JUMP                             ; [+10]
       67 JUMPIFNOT                        R6 ; [+9]
       68 JUMPIFNOT                        R4 ; [+8]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K8 ["createElement"]
       72 GETUPVAL                         R8 4
       73 MOVE                             R9 R5
       74 CALL                             R7 2 -1
       75 CLOSEUPVALS                      R2
       76 RETURN                           R7 -1
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K8 ["createElement"]
       80 GETUPVAL                         R8 5
       81 MOVE                             R9 R5
       82 CALL                             R7 2 -1
       83 CLOSEUPVALS                      R2
       84 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["Content"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["ContentPlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Utility"]
       36 GETTABLEKS                       R6 R6 K11 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Utility"]
       43 GETTABLEKS                       R7 R7 K12 ["isPluginSecurity"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Providers"]
       50 GETTABLEKS                       R8 R8 K14 ["Plugin"]
       52 GETTABLEKS                       R8 R8 K15 ["usePlugin"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K16 [PROTO_2]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 GETTABLEKS                       R9 R2 K17 ["forwardRef"]
       64 MOVE                             R10 R8
       65 CALL                             R9 1 -1
       66 RETURN                           R9 -1
