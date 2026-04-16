PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R3 K3 ["Subagent with name \"%*\" is already registered. Overwriting."]
        8 GETTABLEKS                       R5 R0 K0 ["name"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R2 R0 K0 ["name"]
       18 SETTABLE                         R0 R1 R2
       19 RETURN                           R0 0

PROTO_1:
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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 SETTABLE                         R5 R0 R4
        8 FORGLOOP                         R1 2 ; [-2]
       10 RETURN                           R0 1

PROTO_5:
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
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K2 ["name"]
       24 JUMPIFNOTEQ                      R6 R8 ; [+2]
       26 SETTABLE                         R7 R1 R6
       27 FORGLOOP                         R3 2 ; [-16]
       29 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ScreenCaptureSubagent"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R6 K3 [script]
       14 GETTABLEKS                       R5 R6 K4 ["Parent"]
       16 GETTABLEKS                       R4 R5 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["Tools"]
       20 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R4 R5 K4 ["Parent"]
       29 GETTABLEKS                       R3 R4 K8 ["SubagentDefinition"]
       31 CALL                             R2 1 1
       32 NEWTABLE                         R3 8 0
       34 NEWTABLE                         R4 0 0
       36 NEWTABLE                         R5 0 0
       38 NEWTABLE                         R6 0 0
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          REF R4
       42 SETTABLEKS                       R7 R3 K9 ["register"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          REF R5
       46 SETTABLEKS                       R7 R3 K10 ["setInternalVisibleSubagents"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          REF R6
       50 SETTABLEKS                       R7 R3 K11 ["setExternalVisibleSubagents"]
       52 NEWCLOSURE                       R7 P3
       53 CAPTURE                          REF R4
       54 SETTABLEKS                       R7 R3 K12 ["get"]
       56 NEWCLOSURE                       R7 P4
       57 CAPTURE                          REF R4
       58 SETTABLEKS                       R7 R3 K13 ["getAll"]
       60 NEWCLOSURE                       R7 P5
       61 CAPTURE                          REF R5
       62 CAPTURE                          REF R6
       63 CAPTURE                          REF R4
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R7 R3 K14 ["getVisibleSubagents"]
       67 NEWCLOSURE                       R7 P6
       68 CAPTURE                          REF R4
       69 SETTABLEKS                       R7 R3 K15 ["getNames"]
       71 NEWCLOSURE                       R7 P7
       72 CAPTURE                          REF R4
       73 SETTABLEKS                       R7 R3 K16 ["clear"]
       75 CLOSEUPVALS                      R4
       76 RETURN                           R3 1
