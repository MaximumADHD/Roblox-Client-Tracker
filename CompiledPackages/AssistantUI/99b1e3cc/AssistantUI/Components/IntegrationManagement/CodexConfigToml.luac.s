PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%[([^%[%]]+)%]%s*$"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R1 K2 [string.match]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["^%[([^%[%]]+)%]%s*#"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 MOVE                             R2 R1
       15 GETIMPORT                        R3 K2 [string.match]
       17 MOVE                             R4 R2
       18 LOADK                            R5 K5 ["^%s*(.-)%s*$"]
       19 CALL                             R3 2 1
       20 MOVE                             R1 R3
       21 GETIMPORT                        R2 K2 [string.match]
       23 MOVE                             R3 R1
       24 LOADK                            R4 K6 ["^mcp_servers%.([%w_%-]+)$"]
       25 CALL                             R2 2 1
       26 JUMPIF                           R2 ; [+11]
       27 GETIMPORT                        R2 K2 [string.match]
       29 MOVE                             R3 R1
       30 LOADK                            R4 K7 ["^mcp_servers%.\"([^\"\\]*)\"$"]
       31 CALL                             R2 2 1
       32 JUMPIF                           R2 ; [+5]
       33 GETIMPORT                        R2 K2 [string.match]
       35 MOVE                             R3 R1
       36 LOADK                            R4 K8 ["^mcp_servers%.'([^']*)'$"]
       37 CALL                             R2 2 1
       38 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^command%s*=%s*'([^']*)'"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 GETIMPORT                        R2 K2 [string.match]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K4 ["^command%s*=%s*\"(.*)\""]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETIMPORT                        R3 K6 [string.gsub]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K7 ["\\(.)"]
       17 LOADK                            R6 K8 ["%1"]
       18 CALL                             R3 3 1
       19 RETURN                           R3 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 LOADNIL                          R3
        5 GETIMPORT                        R4 K2 [string.split]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K3 ["\n"]
        9 CALL                             R4 2 3
       10 FORGPREP                         R4
       11 GETIMPORT                        R9 K5 [string.match]
       13 MOVE                             R10 R8
       14 LOADK                            R11 K6 ["^%s*(.-)%s*$"]
       15 CALL                             R9 2 1
       16 LOADN                            R12 1
       17 LOADN                            R13 1
       18 FASTCALL3                        STRING_SUB R9 R12 R13
       20 MOVE                             R11 R9
       21 GETIMPORT                        R10 K8 [string.sub]
       23 CALL                             R10 3 1
       24 JUMPIFNOTEQKS                    R10 K9 ["["] ; [+6]
       26 GETUPVAL                         R10 0
       27 MOVE                             R11 R9
       28 CALL                             R10 1 1
       29 MOVE                             R3 R10
       30 JUMP                             ; [+42]
       31 JUMPIFNOT                        R3 ; [+41]
       32 GETIMPORT                        R11 K5 [string.match]
       34 MOVE                             R12 R9
       35 LOADK                            R13 K10 ["^command%s*=%s*'([^']*)'"]
       36 CALL                             R11 2 1
       37 JUMPIFNOT                        R11 ; [+2]
       38 MOVE                             R10 R11
       39 JUMP                             ; [+15]
       40 GETIMPORT                        R12 K5 [string.match]
       42 MOVE                             R13 R9
       43 LOADK                            R14 K11 ["^command%s*=%s*\"(.*)\""]
       44 CALL                             R12 2 1
       45 JUMPIFNOT                        R12 ; [+8]
       46 GETIMPORT                        R13 K13 [string.gsub]
       48 MOVE                             R14 R12
       49 LOADK                            R15 K14 ["\\(.)"]
       50 LOADK                            R16 K15 ["%1"]
       51 CALL                             R13 3 1
       52 MOVE                             R10 R13
       53 JUMP                             ; [+1]
       54 LOADNIL                          R10
       55 JUMPIFNOT                        R10 ; [+17]
       56 MOVE                             R11 R1
       57 MOVE                             R12 R10
       58 CALL                             R11 1 1
       59 JUMPIFNOT                        R11 ; [+13]
       60 GETIMPORT                        R11 K18 [table.find]
       62 MOVE                             R12 R2
       63 MOVE                             R13 R3
       64 CALL                             R11 2 1
       65 JUMPIF                           R11 ; [+7]
       66 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       68 MOVE                             R12 R2
       69 MOVE                             R13 R3
       70 GETIMPORT                        R11 K20 [table.insert]
       72 CALL                             R11 2 0
       73 FORGLOOP                         R4 2 ; [-63]
       75 GETIMPORT                        R4 K22 [table.sort]
       77 MOVE                             R5 R2
       78 CALL                             R4 1 0
       79 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 CAPTURE                          VAL R1
        6 DUPTABLE                         R4 K5 [{"findMcpServerNames"}]
        7 SETTABLEKS                       R3 R4 K4 ["findMcpServerNames"]
        9 RETURN                           R4 1
