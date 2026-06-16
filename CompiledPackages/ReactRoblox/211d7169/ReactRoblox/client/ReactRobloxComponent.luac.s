PROTO_0:
        0 LOADNIL                          R5
        1 GETIMPORT                        R6 K1 [pairs]
        3 MOVE                             R7 R2
        4 CALL                             R6 1 3
        5 FORGPREP_NEXT                    R6
        6 GETTABLE                         R11 R3 R9
        7 JUMPIFNOTEQKNIL                  R11 ; [+24]
        9 MOVE                             R11 R5
       10 JUMPIF                           R11 ; [+4]
       11 GETIMPORT                        R11 K4 [table.create]
       13 LOADN                            R12 2
       14 CALL                             R11 1 1
       15 MOVE                             R5 R11
       16 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       18 MOVE                             R12 R5
       19 MOVE                             R13 R9
       20 GETIMPORT                        R11 K6 [table.insert]
       22 CALL                             R11 2 0
       23 GETUPVAL                         R13 0
       24 GETTABLEKS                       R13 R13 K7 ["None"]
       26 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       28 MOVE                             R12 R5
       29 GETIMPORT                        R11 K6 [table.insert]
       31 CALL                             R11 2 0
       32 FORGLOOP                         R6 2 ; [-27]
       34 GETIMPORT                        R6 K1 [pairs]
       36 MOVE                             R7 R3
       37 CALL                             R6 1 3
       38 FORGPREP_NEXT                    R6
       39 JUMPIFEQKNIL                     R2 ; [+3]
       41 GETTABLE                         R11 R2 R9
       42 JUMPIF                           R11 ; [+1]
       43 LOADNIL                          R11
       44 JUMPIFEQ                         R10 R11 ; [+22]
       46 MOVE                             R12 R5
       47 JUMPIF                           R12 ; [+4]
       48 GETIMPORT                        R12 K4 [table.create]
       50 LOADN                            R13 2
       51 CALL                             R12 1 1
       52 MOVE                             R5 R12
       53 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       55 MOVE                             R13 R5
       56 MOVE                             R14 R9
       57 GETIMPORT                        R12 K6 [table.insert]
       59 CALL                             R12 2 0
       60 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       62 MOVE                             R13 R5
       63 MOVE                             R14 R10
       64 GETIMPORT                        R12 K6 [table.insert]
       66 CALL                             R12 2 0
       67 FORGLOOP                         R6 2 ; [-29]
       69 RETURN                           R5 1

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
