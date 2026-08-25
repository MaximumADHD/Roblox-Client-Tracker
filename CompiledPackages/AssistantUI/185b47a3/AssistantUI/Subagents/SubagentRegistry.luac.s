PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [string.gmatch]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["FStringAssistantDisabledSubagents"]
        7 LOADK                            R3 K4 ["[^,%s]+"]
        8 CALL                             R1 2 3
        9 FORGPREP                         R1
       10 LOADB                            R6 1
       11 SETTABLE                         R6 R0 R4
       12 FORGLOOP                         R1 1 ; [-3]
       14 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K2 [string.gmatch]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K3 ["FStringAssistantDisabledSubagents"]
        7 LOADK                            R6 K4 ["[^,%s]+"]
        8 CALL                             R4 2 3
        9 FORGPREP                         R4
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R3 R7
       12 FORGLOOP                         R4 1 ; [-3]
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R0 K5 ["name"]
       17 GETTABLE                         R1 R2 R3
       18 JUMPIFNOT                        R1 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R3 R0 K5 ["name"]
       23 GETTABLE                         R1 R2 R3
       24 JUMPIFNOT                        R1 ; [+10]
       25 GETIMPORT                        R1 K7 [warn]
       27 LOADK                            R3 K8 ["Subagent with name \"%*\" is already registered. Overwriting."]
       28 GETTABLEKS                       R5 R0 K5 ["name"]
       30 NAMECALL                         R3 R3 K9 ["format"]
       32 CALL                             R3 2 1
       33 MOVE                             R2 R3
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R2 R0 K5 ["name"]
       38 SETTABLE                         R0 R1 R2
       39 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETUPVAL                         R1 0
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R7 R5 K0 ["name"]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R6 R7
       12 FORGLOOP                         R1 2 ; [-6]
       14 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 SETUPVAL                         R1 0
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R7 R5 K0 ["name"]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R6 R7
       12 FORGLOOP                         R1 2 ; [-6]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["internal"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETUPVAL                         R2 0
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLE                         R8 R2 R6
       13 JUMPIFNOT                        R8 ; [+1]
       14 SETTABLE                         R7 R1 R6
       15 GETTABLEKS                       R8 R0 K0 ["internal"]
       17 JUMPIFNOT                        R8 ; [+9]
       18 GETTABLEKS                       R8 R0 K1 ["useScreenCaptureSubagent"]
       20 JUMPIFNOT                        R8 ; [+6]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K2 ["name"]
       24 JUMPIFNOTEQ                      R6 R8 ; [+2]
       26 SETTABLE                         R7 R1 R6
       27 FORGLOOP                         R3 2 ; [-16]
       29 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R4
       11 GETIMPORT                        R6 K4 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 1 ; [-8]
       16 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ScreenCaptureSubagent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K7 ["Parent"]
       27 GETTABLEKS                       R4 R4 K7 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["Tools"]
       31 GETTABLEKS                       R4 R4 K10 ["ToolTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K7 ["Parent"]
       40 GETTABLEKS                       R5 R5 K11 ["SubagentDefinition"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R5 8 0
       45 NEWTABLE                         R6 0 0
       47 NEWTABLE                         R7 0 0
       49 NEWTABLE                         R8 0 0
       51 DUPCLOSURE                       R9 K12 [PROTO_0]
       52 CAPTURE                          VAL R1
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          REF R6
       56 SETTABLEKS                       R10 R5 K13 ["register"]
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          REF R7
       60 SETTABLEKS                       R10 R5 K14 ["setInternalVisibleSubagents"]
       62 NEWCLOSURE                       R10 P3
       63 CAPTURE                          REF R8
       64 SETTABLEKS                       R10 R5 K15 ["setExternalVisibleSubagents"]
       66 NEWCLOSURE                       R10 P4
       67 CAPTURE                          REF R6
       68 SETTABLEKS                       R10 R5 K16 ["get"]
       70 NEWCLOSURE                       R10 P5
       71 CAPTURE                          REF R6
       72 SETTABLEKS                       R10 R5 K17 ["getAll"]
       74 NEWCLOSURE                       R10 P6
       75 CAPTURE                          REF R7
       76 CAPTURE                          REF R8
       77 CAPTURE                          REF R6
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R10 R5 K18 ["getVisibleSubagents"]
       81 NEWCLOSURE                       R10 P7
       82 CAPTURE                          REF R6
       83 SETTABLEKS                       R10 R5 K19 ["getNames"]
       85 NEWCLOSURE                       R10 P8
       86 CAPTURE                          REF R6
       87 SETTABLEKS                       R10 R5 K20 ["clear"]
       89 CLOSEUPVALS                      R6
       90 RETURN                           R5 1
