PROTO_0:
        0 LOADN                            R3 1
        1 MOVE                             R4 R0
        2 ADD                              R6 R3 R4
        3 IDIVK                            R5 R6 K0 [2]
        4 MOVE                             R6 R2
        5 MOVE                             R7 R5
        6 CALL                             R6 1 1
        7 MOVE                             R7 R1
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K1 ["equal"] ; [+2]
       12 RETURN                           R5 1
       13 JUMPIFNOTLE                      R4 R3 ; [+3]
       15 LOADNIL                          R8
       16 RETURN                           R8 1
       17 JUMPIFNOTEQKS                    R7 K2 ["smaller"] ; [+3]
       19 ADDK                             R3 R5 K3 [1]
       20 JUMP                             ; [+7]
       21 JUMPIFNOTEQKS                    R7 K4 ["bigger"] ; [+3]
       23 SUBK                             R4 R5 K3 [1]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R8 0
       26 MOVE                             R9 R7
       27 CALL                             R8 1 0
       28 JUMPBACK                         ; [-27]
       29 LOADNIL                          R5
       30 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+4]
        7 NEWTABLE                         R4 0 0
        9 RETURN                           R4 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 FASTCALL2K                       ASSERT R5 K0 ; [+4]
       16 LOADK                            R6 K0 ["Luau"]
       17 GETIMPORT                        R4 K2 [assert]
       19 CALL                             R4 2 0
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R3
       23 SETLIST                          R4 R5 1 [1]
       25 SUBK                             R7 R3 K3 [1]
       26 LOADN                            R5 1
       27 LOADN                            R6 255
       28 FORNPREP                         R5
       29 MOVE                             R8 R1
       30 MOVE                             R9 R2
       31 MOVE                             R10 R7
       32 CALL                             R9 1 -1
       33 CALL                             R8 -1 1
       34 JUMPIFNOTEQKS                    R8 K4 ["equal"] ; [+11]
       36 FASTCALL2                        TABLE_INSERT R4 R7 ; [+5]
       38 MOVE                             R9 R4
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K7 [table.insert]
       42 CALL                             R8 2 0
       43 JUMP                             ; [+1]
       44 JUMP                             ; [+1]
       45 FORNLOOP                         R5
       46 ADDK                             R7 R3 K3 [1]
       47 MOVE                             R5 R0
       48 LOADN                            R6 1
       49 FORNPREP                         R5
       50 MOVE                             R8 R1
       51 MOVE                             R9 R2
       52 MOVE                             R10 R7
       53 CALL                             R9 1 -1
       54 CALL                             R8 -1 1
       55 JUMPIFNOTEQKS                    R8 K4 ["equal"] ; [+11]
       57 FASTCALL2                        TABLE_INSERT R4 R7 ; [+5]
       59 MOVE                             R9 R4
       60 MOVE                             R10 R7
       61 GETIMPORT                        R8 K7 [table.insert]
       63 CALL                             R8 2 0
       64 JUMP                             ; [+1]
       65 RETURN                           R4 1
       66 FORNLOOP                         R5
       67 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["exhaustiveMatch"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
