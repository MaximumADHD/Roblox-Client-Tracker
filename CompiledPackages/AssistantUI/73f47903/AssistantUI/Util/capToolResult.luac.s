PROTO_0:
        0 LOADN                            R2 0
        1 JUMPIFNOTLE                      R1 R2 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K0 ["name"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 1
       10 GETTABLEKS                       R2 R0 K1 ["content"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 1
       14 LOADB                            R2 0
       15 NEWTABLE                         R3 0 0
       17 GETTABLEKS                       R4 R0 K1 ["content"]
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 FASTCALL1                        TYPEOF R8 ; [+3]
       23 MOVE                             R10 R8
       24 GETIMPORT                        R9 K3 [typeof]
       26 CALL                             R9 1 1
       27 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+51]
       29 GETTABLEKS                       R9 R8 K5 ["type"]
       31 JUMPIFNOTEQKS                    R9 K6 ["text"] ; [+47]
       33 GETTABLEKS                       R10 R8 K6 ["text"]
       35 FASTCALL1                        TYPEOF R10 ; [+2]
       36 GETIMPORT                        R9 K3 [typeof]
       38 CALL                             R9 1 1
       39 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+39]
       41 GETTABLEKS                       R10 R8 K6 ["text"]
       43 LENGTH                           R9 R10
       44 JUMPIFNOTLT                      R1 R9 ; [+34]
       46 GETTABLEKS                       R10 R8 K6 ["text"]
       48 LENGTH                           R9 R10
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R11 R8 K6 ["text"]
       52 MOVE                             R12 R1
       53 CALL                             R10 2 1
       54 LENGTH                           R12 R10
       55 SUB                              R11 R9 R12
       56 GETIMPORT                        R12 K9 [table.clone]
       58 MOVE                             R13 R8
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K11 [string.format]
       62 LOADK                            R14 K12 ["%s\n\n[... tool result truncated by client: %d characters omitted to stay within the model context window. Tool result limit is %d characters and this tool result was %d characters. Re-run the tool with a narrower query if you need the omitted output ...]"]
       63 MOVE                             R15 R10
       64 MOVE                             R16 R11
       65 MOVE                             R17 R1
       66 MOVE                             R18 R9
       67 CALL                             R13 5 1
       68 SETTABLEKS                       R13 R12 K6 ["text"]
       70 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       72 MOVE                             R14 R3
       73 MOVE                             R15 R12
       74 GETIMPORT                        R13 K14 [table.insert]
       76 CALL                             R13 2 0
       77 LOADB                            R2 1
       78 JUMP                             ; [+7]
       79 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       81 MOVE                             R10 R3
       82 MOVE                             R11 R8
       83 GETIMPORT                        R9 K14 [table.insert]
       85 CALL                             R9 2 0
       86 FORGLOOP                         R4 2 ; [-65]
       88 JUMPIF                           R2 ; [+1]
       89 RETURN                           R0 1
       90 GETUPVAL                         R4 2
       91 GETTABLEKS                       R4 R4 K15 ["join"]
       93 MOVE                             R5 R0
       94 DUPTABLE                         R6 K16 [{"content"}]
       95 SETTABLEKS                       R3 R6 K1 ["content"]
       97 CALL                             R4 2 -1
       98 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolNames"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Util"]
       30 GETTABLEKS                       R5 R5 K12 ["truncateUtf8Safe"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 1 0
       35 GETTABLEKS                       R6 R2 K13 ["ReadFile"]
       37 LOADB                            R7 1
       38 SETTABLE                         R7 R5 R6
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 RETURN                           R6 1
