PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["unmount"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K1 ["OnClose"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["unmount"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R4
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R4
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K0 ["RunTests"]
        7 CALL                             R6 0 1
        8 JUMPIF                           R6 ; [+4]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K1 ["RunRhodiumTests"]
       12 CALL                             R6 0 1
       13 LOADNIL                          R7
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R8 R9 K2 ["mock"]
       18 CALL                             R8 0 1
       19 MOVE                             R7 R8
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R8 R9 K3 ["makePluginTheme"]
       24 CALL                             R8 0 1
       25 MOVE                             R7 R8
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K4 ["provide"]
       29 NEWTABLE                         R9 0 4
       31 MOVE                             R10 R1
       32 MOVE                             R11 R7
       33 MOVE                             R12 R0
       34 GETUPVAL                         R14 4
       35 GETTABLEKS                       R13 R14 K5 ["new"]
       37 NAMECALL                         R14 R0 K6 ["get"]
       39 CALL                             R14 1 1
       40 NAMECALL                         R14 R14 K7 ["getMouse"]
       42 CALL                             R14 1 -1
       43 CALL                             R13 -1 -1
       44 SETLIST                          R9 R10 -1 [1]
       46 NEWTABLE                         R10 0 1
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R11 R12 K8 ["createElement"]
       51 MOVE                             R12 R2
       52 GETUPVAL                         R15 5
       53 GETTABLEKS                       R14 R15 K9 ["Dictionary"]
       55 GETTABLEKS                       R13 R14 K10 ["join"]
       57 MOVE                             R14 R3
       58 DUPTABLE                         R15 K12 [{"OnClose"}]
       59 NEWCLOSURE                       R16 P1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          REF R4
       62 CAPTURE                          UPVAL U0
       63 SETTABLEKS                       R16 R15 K11 ["OnClose"]
       65 CALL                             R13 2 -1
       66 CALL                             R11 -1 -1
       67 SETLIST                          R10 R11 -1 [1]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R9 R10 K13 ["mount"]
       73 MOVE                             R10 R8
       74 LOADNIL                          R11
       75 CALL                             R9 2 1
       76 MOVE                             R4 R9
       77 CLOSEUPVALS                      R4
       78 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["Mouse"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Resources"]
       40 GETTABLEKS                       R7 R8 K13 ["PluginTheme"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K14 ["Util"]
       49 GETTABLEKS                       R8 R9 K15 ["DebugFlags"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K5 ["Packages"]
       56 GETTABLEKS                       R9 R10 K16 ["Cryo"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K9 ["ContextServices"]
       61 DUPCLOSURE                       R10 K17 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 RETURN                           R10 1
