PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["%."]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+21]
       12 DUPTABLE                         R2 K7 [{"group", "name"}]
       13 LOADN                            R5 1
       14 SUBK                             R6 R1 K8 [1]
       15 FASTCALL3                        STRING_SUB R0 R5 R6
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K10 [string.sub]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K5 ["group"]
       23 ADDK                             R5 R1 K8 [1]
       24 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       26 MOVE                             R4 R0
       27 GETIMPORT                        R3 K10 [string.sub]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K6 ["name"]
       32 RETURN                           R2 1
       33 DUPTABLE                         R2 K11 [{"name"}]
       34 SETTABLEKS                       R0 R2 K6 ["name"]
       36 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 LOADN                            R5 1
        6 LOADN                            R6 3
        7 FASTCALL3                        STRING_SUB R0 R5 R6
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K3 [string.sub]
       12 CALL                             R3 3 1
       13 JUMPIFNOTEQKS                    R3 K4 ["..."] ; [+9]
       15 FASTCALL2K                       STRING_SUB R0 K5 ; [+5]
       17 MOVE                             R3 R0
       18 LOADK                            R4 K5 [4]
       19 GETIMPORT                        R2 K3 [string.sub]
       21 CALL                             R2 2 1
       22 JUMP                             ; [+1]
       23 MOVE                             R2 R0
       24 LOADNIL                          R3
       25 MOVE                             R4 R1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K6 ["full"]
       31 JUMPIFNOTEQ                      R9 R0 ; [+4]
       33 GETTABLEKS                       R9 R8 K7 ["instance"]
       35 RETURN                           R9 1
       36 JUMPIF                           R3 ; [+17]
       37 LENGTH                           R9 R2
       38 LOADN                            R10 0
       39 JUMPIFNOTLT                      R10 R9 ; [+14]
       41 GETTABLEKS                       R10 R8 K6 ["full"]
       43 LENGTH                           R12 R2
       44 MINUS                            R11 R12
       45 FASTCALL2                        STRING_SUB R10 R11 ; [+3]
       47 GETIMPORT                        R9 K3 [string.sub]
       49 CALL                             R9 2 1
       50 JUMPIFNOTEQ                      R9 R2 ; [+3]
       52 GETTABLEKS                       R3 R8 K7 ["instance"]
       54 FORGLOOP                         R4 2 ; [-26]
       56 JUMPIFNOT                        R3 ; [+1]
       57 RETURN                           R3 1
       58 GETIMPORT                        R4 K9 [string.match]
       60 MOVE                             R5 R2
       61 LOADK                            R6 K10 ["([^%.]+)$"]
       62 CALL                             R4 2 1
       63 JUMPIFNOT                        R4 ; [+13]
       64 MOVE                             R5 R1
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 FORGPREP                         R5
       68 GETTABLEKS                       R10 R9 K11 ["name"]
       70 JUMPIFNOTEQ                      R10 R4 ; [+4]
       72 GETTABLEKS                       R10 R9 K7 ["instance"]
       74 RETURN                           R10 1
       75 FORGLOOP                         R5 2 ; [-8]
       77 LOADNIL                          R5
       78 RETURN                           R5 1

PROTO_2:
        0 LOADN                            R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 ADDK                             R2 R2 K0 [1]
        6 GETTABLE                         R8 R1 R7
        7 JUMPIF                           R8 ; [+2]
        8 LOADB                            R8 0
        9 RETURN                           R8 1
       10 FORGLOOP                         R3 2 ; [-6]
       12 LOADN                            R3 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 ADDK                             R3 R3 K0 [1]
       18 FORGLOOP                         R4 1 ; [-2]
       20 JUMPIFEQ                         R2 R3 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 MOVE                             R9 R1
        9 MOVE                             R10 R7
       10 CALL                             R9 1 3
       11 FORGPREP                         R9
       12 GETTABLE                         R14 R3 R13
       13 JUMPIF                           R14 ; [+9]
       14 LOADB                            R14 1
       15 SETTABLE                         R14 R3 R13
       16 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       18 MOVE                             R15 R2
       19 MOVE                             R16 R13
       20 GETIMPORT                        R14 K2 [table.insert]
       22 CALL                             R14 2 0
       23 FORGLOOP                         R9 2 ; [-12]
       25 FORGLOOP                         R4 1 ; [-18]
       27 RETURN                           R2 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 LOADB                            R2 1
        3 JUMPIFEQKS                       R1 K1 ["setContainsFilter"] ; [+5]
        5 JUMPIFEQKS                       R1 K2 ["toggleEnabled"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["parseCallbackName"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["resolveScript"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["selectionMatches"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["unionMembers"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["commandNeedsRepublish"]
       18 RETURN                           R0 1
