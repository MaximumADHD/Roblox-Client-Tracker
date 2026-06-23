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
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K1 ["FoundationFixUserLevelPlugins"]
       10 JUMPIFNOT                        R5 ; [+5]
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 2
       13 MOVE                             R3 R5
       14 MOVE                             R4 R6
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 1
       18 MOVE                             R3 R5
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K1 ["FoundationFixUserLevelPlugins"]
       22 JUMPIFNOT                        R6 ; [+2]
       23 LOADNIL                          R5
       24 JUMP                             ; [+11]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          REF R3
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R3
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 MOVE                             R6 R0
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETIMPORT                        R7 K5 [table.clone]
       40 MOVE                             R8 R0
       41 CALL                             R7 1 1
       42 MOVE                             R6 R7
       43 SETTABLEKS                       R1 R6 K6 ["ref"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K7 ["FoundationPopoverPluginSupport"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K8 ["FoundationPopoverPluginSecurityGate"]
       51 JUMPIFNOT                        R8 ; [+5]
       52 MOVE                             R8 R7
       53 JUMPIFNOT                        R8 ; [+2]
       54 GETUPVAL                         R8 4
       55 CALL                             R8 0 1
       56 MOVE                             R7 R8
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K9 ["FoundationPopoverPluginVirtualAnchor"]
       60 JUMPIF                           R8 ; [+17]
       61 LOADB                            R8 0
       62 GETTABLEKS                       R9 R2 K10 ["anchor"]
       64 JUMPIFEQKNIL                     R9 ; [+11]
       66 GETTABLEKS                       R10 R2 K10 ["anchor"]
       68 FASTCALL1                        TYPEOF R10 ; [+2]
       69 GETIMPORT                        R9 K12 [typeof]
       71 CALL                             R9 1 1
       72 JUMPIFNOTEQKS                    R9 K13 ["Instance"] ; [+2]
       74 LOADB                            R8 0 +1
       75 LOADB                            R8 1
       76 JUMPIFNOT                        R8 ; [+1]
       77 LOADB                            R7 0
       78 GETUPVAL                         R8 2
       79 GETTABLEKS                       R8 R8 K1 ["FoundationFixUserLevelPlugins"]
       81 JUMPIFNOT                        R8 ; [+11]
       82 JUMPIFNOT                        R7 ; [+20]
       83 JUMPIFNOT                        R4 ; [+19]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K14 ["createElement"]
       87 GETUPVAL                         R9 5
       88 MOVE                             R10 R6
       89 CALL                             R8 2 -1
       90 CLOSEUPVALS                      R3
       91 RETURN                           R8 -1
       92 JUMP                             ; [+10]
       93 JUMPIFNOT                        R7 ; [+9]
       94 JUMPIFNOT                        R5 ; [+8]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K14 ["createElement"]
       98 GETUPVAL                         R9 5
       99 MOVE                             R10 R6
      100 CALL                             R8 2 -1
      101 CLOSEUPVALS                      R3
      102 RETURN                           R8 -1
      103 GETUPVAL                         R8 0
      104 GETTABLEKS                       R8 R8 K14 ["createElement"]
      106 GETUPVAL                         R9 6
      107 MOVE                             R10 R6
      108 CALL                             R8 2 -1
      109 CLOSEUPVALS                      R3
      110 RETURN                           R8 -1

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
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K12 ["PopoverContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Utility"]
       52 GETTABLEKS                       R8 R8 K13 ["isPluginSecurity"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K14 ["Providers"]
       59 GETTABLEKS                       R9 R9 K15 ["Plugin"]
       61 GETTABLEKS                       R9 R9 K16 ["usePlugin"]
       63 CALL                             R8 1 1
       64 DUPCLOSURE                       R9 K17 [PROTO_2]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R3
       72 GETTABLEKS                       R10 R2 K18 ["forwardRef"]
       74 MOVE                             R11 R9
       75 CALL                             R10 1 -1
       76 RETURN                           R10 -1
