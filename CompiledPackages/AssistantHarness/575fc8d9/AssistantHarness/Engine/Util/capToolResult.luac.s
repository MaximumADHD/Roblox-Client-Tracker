PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantCapToolResultExemptTools"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+29]
        6 SETUPVAL                         R0 1
        7 NEWTABLE                         R1 0 0
        9 SETUPVAL                         R1 2
       10 GETIMPORT                        R1 K3 [string.split]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K4 [","]
       14 CALL                             R1 2 3
       15 FORGPREP                         R1
       16 GETIMPORT                        R6 K6 [string.match]
       18 MOVE                             R7 R5
       19 LOADK                            R8 K7 ["^%s*(.-)%s*$"]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+10]
       22 JUMPIFEQKS                       R6 K8 [""] ; [+9]
       24 GETUPVAL                         R7 2
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K9 ["stripPrefix"]
       28 MOVE                             R9 R6
       29 CALL                             R8 1 1
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R7 R8
       32 FORGLOOP                         R1 2 ; [-17]
       34 GETUPVAL                         R1 2
       35 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R2 0
        1 JUMPIFNOTLE                      R1 R2 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["stripPrefix"]
        9 GETTABLEKS                       R5 R0 K1 ["name"]
       11 CALL                             R4 1 1
       12 GETTABLE                         R2 R3 R4
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 1
       15 GETTABLEKS                       R2 R0 K2 ["content"]
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 1
       19 LOADB                            R2 0
       20 NEWTABLE                         R3 0 0
       22 GETTABLEKS                       R4 R0 K2 ["content"]
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 FASTCALL1                        TYPEOF R8 ; [+3]
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K4 [typeof]
       31 CALL                             R9 1 1
       32 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+51]
       34 GETTABLEKS                       R9 R8 K6 ["type"]
       36 JUMPIFNOTEQKS                    R9 K7 ["text"] ; [+47]
       38 GETTABLEKS                       R10 R8 K7 ["text"]
       40 FASTCALL1                        TYPEOF R10 ; [+2]
       41 GETIMPORT                        R9 K4 [typeof]
       43 CALL                             R9 1 1
       44 JUMPIFNOTEQKS                    R9 K8 ["string"] ; [+39]
       46 GETTABLEKS                       R10 R8 K7 ["text"]
       48 LENGTH                           R9 R10
       49 JUMPIFNOTLT                      R1 R9 ; [+34]
       51 GETTABLEKS                       R10 R8 K7 ["text"]
       53 LENGTH                           R9 R10
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R11 R8 K7 ["text"]
       57 MOVE                             R12 R1
       58 CALL                             R10 2 1
       59 LENGTH                           R12 R10
       60 SUB                              R11 R9 R12
       61 GETIMPORT                        R12 K10 [table.clone]
       63 MOVE                             R13 R8
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K12 [string.format]
       67 LOADK                            R14 K13 ["%s\n\n[... tool result truncated by client: %d characters omitted to stay within the model context window. Tool result limit is %d characters and this tool result was %d characters. Re-run the tool with a narrower query if you need the omitted output ...]"]
       68 MOVE                             R15 R10
       69 MOVE                             R16 R11
       70 MOVE                             R17 R1
       71 MOVE                             R18 R9
       72 CALL                             R13 5 1
       73 SETTABLEKS                       R13 R12 K7 ["text"]
       75 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       77 MOVE                             R14 R3
       78 MOVE                             R15 R12
       79 GETIMPORT                        R13 K15 [table.insert]
       81 CALL                             R13 2 0
       82 LOADB                            R2 1
       83 JUMP                             ; [+7]
       84 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       86 MOVE                             R10 R3
       87 MOVE                             R11 R8
       88 GETIMPORT                        R9 K15 [table.insert]
       90 CALL                             R9 2 0
       91 FORGLOOP                         R4 2 ; [-65]
       93 JUMPIF                           R2 ; [+1]
       94 RETURN                           R0 1
       95 GETIMPORT                        R4 K10 [table.clone]
       97 MOVE                             R5 R0
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R3 R4 K2 ["content"]
      101 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 GETTABLEKS                       R2 R2 K7 ["EngineFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Engine"]
       18 GETTABLEKS                       R3 R3 K8 ["StreamTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R4 K10 ["ToolNaming"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Engine"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["truncateUtf8Safe"]
       36 CALL                             R4 1 1
       37 LOADNIL                          R5
       38 NEWTABLE                         R6 0 0
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R5
       43 CAPTURE                          REF R6
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R8 K13 [PROTO_1]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CLOSEUPVALS                      R5
       50 RETURN                           R8 1
