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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R5 0 1
        9 MOVE                             R6 R2
       10 SETLIST                          R5 R6 1 [1]
       12 CALL                             R3 2 1
       13 MOVE                             R4 R0
       14 JUMPIFNOT                        R1 ; [+7]
       15 GETIMPORT                        R5 K3 [table.clone]
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R1 R4 K4 ["ref"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K5 ["FoundationPopoverPluginSupport"]
       25 JUMPIFNOT                        R5 ; [+8]
       26 JUMPIFNOT                        R3 ; [+7]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K6 ["createElement"]
       30 GETUPVAL                         R6 3
       31 MOVE                             R7 R4
       32 CALL                             R5 2 -1
       33 RETURN                           R5 -1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K6 ["createElement"]
       37 GETUPVAL                         R6 4
       38 MOVE                             R7 R4
       39 CALL                             R5 2 -1
       40 RETURN                           R5 -1

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
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["Content"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K9 ["ContentPlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Utility"]
       36 GETTABLEKS                       R6 R7 K11 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R9 R0 K12 ["Providers"]
       43 GETTABLEKS                       R8 R9 K13 ["Plugin"]
       45 GETTABLEKS                       R7 R8 K14 ["usePlugin"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K15 [PROTO_2]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 GETTABLEKS                       R8 R2 K16 ["forwardRef"]
       56 MOVE                             R9 R7
       57 CALL                             R8 1 -1
       58 RETURN                           R8 -1
