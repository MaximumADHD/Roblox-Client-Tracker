PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["datum"]
        5 GETTABLEKS                       R1 R1 K1 ["isGhost"]
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["key"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K2 ["key"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R0
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K2 ["key"]
       27 CALL                             R3 2 1
       28 LOADB                            R4 0
       29 JUMPIFEQKNIL                     R3 ; [+9]
       31 GETTABLEKS                       R5 R3 K3 ["ServiceType"]
       33 JUMPIFNOTEQKN                    R5 K4 [1] ; [+5]
       35 GETTABLEKS                       R6 R3 K5 ["RunningTCS"]
       37 NOT                              R5 R6
       38 RETURN                           R5 1
       39 LOADB                            R5 0
       40 JUMPIFEQKNIL                     R1 ; [+3]
       42 GETTABLEKS                       R5 R1 K6 ["Disabled"]
       44 JUMPIFEQKB                       R2 FALSE ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 GETUPVAL                         R7 5
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+10]
       51 GETUPVAL                         R7 1
       52 MOVE                             R8 R0
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R9 R9 K2 ["key"]
       56 CALL                             R7 2 1
       57 JUMPIFEQKB                       R7 TRUE ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 MOVE                             R7 R5
       62 JUMPIF                           R7 ; [+3]
       63 MOVE                             R7 R6
       64 JUMPIF                           R7 ; [+1]
       65 MOVE                             R7 R4
       66 NOT                              R8 R7
       67 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 GETTABLEKS                       R2 R2 K8 ["ChatMigration"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Fields"]
       20 GETTABLEKS                       R3 R3 K7 ["AllFields"]
       22 GETTABLEKS                       R3 R3 K9 ["IsGuiShown"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Fields"]
       29 GETTABLEKS                       R4 R4 K7 ["AllFields"]
       31 GETTABLEKS                       R4 R4 K10 ["ScriptState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagBehaviorVisualState"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Flags"]
       45 GETTABLEKS                       R6 R6 K13 ["getFFlagExplorerStreaming"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K14 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["getField"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Fields"]
       59 GETTABLEKS                       R8 R8 K7 ["AllFields"]
       61 GETTABLEKS                       R8 R8 K16 ["isAuroraDisabled"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useVisibleExplorerNodeRange"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K19 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
