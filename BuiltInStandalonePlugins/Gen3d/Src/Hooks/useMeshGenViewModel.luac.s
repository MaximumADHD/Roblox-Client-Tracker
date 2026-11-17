PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["View"]
        3 GETTABLEKS                       R0 R0 K1 ["subscribe"]
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["View"]
        4 GETTABLEKS                       R1 R1 K1 ["sendIntent"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 GETVARARGS                       R4 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetPrompt"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetOptions"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["GenerateReferences"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SelectReference"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Generate"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Cancel"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPTABLE                         R1 K6 [{"setPrompt", "setOptions", "generateReferences", "selectReference", "generate", "cancel"}]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R2 R1 K0 ["setPrompt"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R2 R1 K1 ["setOptions"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R2 R1 K2 ["generateReferences"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R2 R1 K3 ["selectReference"]
       24 NEWCLOSURE                       R2 P5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R2 R1 K4 ["generate"]
       29 NEWCLOSURE                       R2 P6
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R2 R1 K5 ["cancel"]
       34 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R0 K11 [{"prompt", "options", "referenceSlots", "selectedReferenceIndex", "generation", "setPrompt", "setOptions", "generateReferences", "selectReference", "generate", "cancel"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["prompt"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["options"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["referenceSlots"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["selectedReferenceIndex"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["generation"]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K5 ["setPrompt"]
       19 SETTABLEKS                       R1 R0 K5 ["setPrompt"]
       21 GETUPVAL                         R1 5
       22 GETTABLEKS                       R1 R1 K6 ["setOptions"]
       24 SETTABLEKS                       R1 R0 K6 ["setOptions"]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K7 ["generateReferences"]
       29 SETTABLEKS                       R1 R0 K7 ["generateReferences"]
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K8 ["selectReference"]
       34 SETTABLEKS                       R1 R0 K8 ["selectReference"]
       36 GETUPVAL                         R1 5
       37 GETTABLEKS                       R1 R1 K9 ["generate"]
       39 SETTABLEKS                       R1 R0 K9 ["generate"]
       41 GETUPVAL                         R1 5
       42 GETTABLEKS                       R1 R1 K10 ["cancel"]
       44 SETTABLEKS                       R1 R0 K10 ["cancel"]
       46 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 NEWTABLE                         R6 0 1
       14 MOVE                             R7 R0
       15 SETLIST                          R6 R7 1 [1]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R0
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 LOADB                            R5 0
       32 JUMPIFEQKNIL                     R2 ; [+7]
       34 GETTABLEKS                       R6 R2 K3 ["editSessionId"]
       36 JUMPIFEQ                         R6 R1 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 JUMPIFNOT                        R2 ; [+3]
       41 GETTABLEKS                       R6 R2 K4 ["prompt"]
       43 JUMP                             ; [+1]
       44 LOADK                            R6 K5 [""]
       45 JUMPIFNOT                        R2 ; [+3]
       46 GETTABLEKS                       R7 R2 K6 ["options"]
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K7 ["DEFAULT_OPTIONS"]
       52 JUMPIFNOT                        R2 ; [+3]
       53 GETTABLEKS                       R8 R2 K8 ["referenceSlots"]
       55 JUMP                             ; [+1]
       56 GETUPVAL                         R8 3
       57 JUMPIFNOT                        R2 ; [+3]
       58 GETTABLEKS                       R9 R2 K9 ["selectedReferenceIndex"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 JUMPIFNOT                        R2 ; [+3]
       63 GETTABLEKS                       R10 R2 K10 ["generation"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R10
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K2 ["useMemo"]
       70 NEWCLOSURE                       R12 P2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R4
       77 NEWTABLE                         R13 0 6
       79 MOVE                             R14 R6
       80 MOVE                             R15 R7
       81 MOVE                             R16 R8
       82 MOVE                             R17 R9
       83 MOVE                             R18 R10
       84 MOVE                             R19 R4
       85 SETLIST                          R13 R14 6 [1]
       87 CALL                             R11 2 1
       88 DUPTABLE                         R12 K13 [{"visible", "value"}]
       89 SETTABLEKS                       R5 R12 K11 ["visible"]
       91 SETTABLEKS                       R11 R12 K12 ["value"]
       93 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MeshGenViewModel"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Intents"]
       25 GETIMPORT                        R4 K14 [table.freeze]
       27 NEWTABLE                         R5 0 0
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K15 [PROTO_11]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
