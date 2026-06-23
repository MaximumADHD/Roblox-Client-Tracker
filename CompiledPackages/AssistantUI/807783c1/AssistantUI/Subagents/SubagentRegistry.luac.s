PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [string.gmatch]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 LOADK                            R3 K3 ["[^,%s]+"]
        7 CALL                             R1 2 3
        8 FORGPREP                         R1
        9 LOADB                            R6 1
       10 SETTABLE                         R6 R0 R4
       11 FORGLOOP                         R1 1 ; [-3]
       13 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K2 [string.gmatch]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 LOADK                            R6 K3 ["[^,%s]+"]
        7 CALL                             R4 2 3
        8 FORGPREP                         R4
        9 LOADB                            R9 1
       10 SETTABLE                         R9 R3 R7
       11 FORGLOOP                         R4 1 ; [-3]
       13 MOVE                             R2 R3
       14 GETTABLEKS                       R3 R0 K4 ["name"]
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R3 R0 K4 ["name"]
       22 GETTABLE                         R1 R2 R3
       23 JUMPIFNOT                        R1 ; [+10]
       24 GETIMPORT                        R1 K6 [warn]
       26 LOADK                            R3 K7 ["Subagent with name \"%*\" is already registered. Overwriting."]
       27 GETTABLEKS                       R5 R0 K4 ["name"]
       29 NAMECALL                         R3 R3 K8 ["format"]
       31 CALL                             R3 2 1
       32 MOVE                             R2 R3
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R2 R0 K4 ["name"]
       37 SETTABLE                         R0 R1 R2
       38 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ScreenCaptureSubagent"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Tools"]
       20 GETTABLEKS                       R2 R2 K7 ["ToolTypes"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K8 ["SubagentDefinition"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K9 ["Flags"]
       42 GETTABLEKS                       R4 R4 K10 ["FStringAssistantDisabledSubagents"]
       44 CALL                             R3 1 1
       45 NEWTABLE                         R4 8 0
       47 NEWTABLE                         R5 0 0
       49 NEWTABLE                         R6 0 0
       51 NEWTABLE                         R7 0 0
       53 DUPCLOSURE                       R8 K11 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          REF R5
       58 SETTABLEKS                       R9 R4 K12 ["register"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          REF R6
       62 SETTABLEKS                       R9 R4 K13 ["setInternalVisibleSubagents"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          REF R7
       66 SETTABLEKS                       R9 R4 K14 ["setExternalVisibleSubagents"]
       68 NEWCLOSURE                       R9 P4
       69 CAPTURE                          REF R5
       70 SETTABLEKS                       R9 R4 K15 ["get"]
       72 NEWCLOSURE                       R9 P5
       73 CAPTURE                          REF R5
       74 SETTABLEKS                       R9 R4 K16 ["getAll"]
       76 NEWCLOSURE                       R9 P6
       77 CAPTURE                          REF R6
       78 CAPTURE                          REF R7
       79 CAPTURE                          REF R5
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R9 R4 K17 ["getVisibleSubagents"]
       83 NEWCLOSURE                       R9 P7
       84 CAPTURE                          REF R5
       85 SETTABLEKS                       R9 R4 K18 ["getNames"]
       87 NEWCLOSURE                       R9 P8
       88 CAPTURE                          REF R5
       89 SETTABLEKS                       R9 R4 K19 ["clear"]
       91 CLOSEUPVALS                      R5
       92 RETURN                           R4 1
