PROTO_0:
        0 LOADNIL                          R5
        1 MOVE                             R6 R2
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 GETTABLE                         R11 R3 R9
        6 JUMPIFNOTEQKNIL                  R11 ; [+24]
        8 MOVE                             R11 R5
        9 JUMPIF                           R11 ; [+4]
       10 GETIMPORT                        R11 K2 [table.create]
       12 LOADN                            R12 2
       13 CALL                             R11 1 1
       14 MOVE                             R5 R11
       15 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       17 MOVE                             R12 R5
       18 MOVE                             R13 R9
       19 GETIMPORT                        R11 K4 [table.insert]
       21 CALL                             R11 2 0
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K5 ["None"]
       25 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       27 MOVE                             R12 R5
       28 GETIMPORT                        R11 K4 [table.insert]
       30 CALL                             R11 2 0
       31 FORGLOOP                         R6 2 ; [-27]
       33 MOVE                             R6 R3
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 JUMPIFEQKNIL                     R2 ; [+3]
       39 GETTABLE                         R11 R2 R9
       40 JUMP                             ; [+1]
       41 LOADNIL                          R11
       42 JUMPIFEQ                         R10 R11 ; [+22]
       44 MOVE                             R12 R5
       45 JUMPIF                           R12 ; [+4]
       46 GETIMPORT                        R12 K2 [table.create]
       48 LOADN                            R13 2
       49 CALL                             R12 1 1
       50 MOVE                             R5 R12
       51 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       53 MOVE                             R13 R5
       54 MOVE                             R14 R9
       55 GETIMPORT                        R12 K4 [table.insert]
       57 CALL                             R12 2 0
       58 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       60 MOVE                             R13 R5
       61 MOVE                             R14 R10
       62 GETIMPORT                        R12 K4 [table.insert]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R6 2 ; [-29]
       67 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Object"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K7 ["roblox"]
       24 GETTABLEKS                       R4 R4 K8 ["RobloxComponentProps"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R6 R6 K2 ["Parent"]
       33 GETTABLEKS                       R5 R6 K9 ["ReactRobloxHostTypes.roblox"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 4 0
       38 GETTABLEKS                       R6 R3 K10 ["setInitialProperties"]
       40 SETTABLEKS                       R6 R5 K10 ["setInitialProperties"]
       42 DUPCLOSURE                       R6 K11 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R6 R5 K12 ["diffProperties"]
       46 GETTABLEKS                       R7 R3 K13 ["updateProperties"]
       48 SETTABLEKS                       R7 R5 K13 ["updateProperties"]
       50 GETTABLEKS                       R7 R3 K14 ["cleanupHostComponent"]
       52 SETTABLEKS                       R7 R5 K14 ["cleanupHostComponent"]
       54 RETURN                           R5 1
