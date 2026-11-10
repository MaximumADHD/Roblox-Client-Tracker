PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getPlaceKindAsync"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 2
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K3 ["current"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+21]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R2 4
       15 DUPTABLE                         R3 K7 [{["type"] = "Prompt", ["place"]}]
       16 SETTABLEKS                       R1 R3 K6 ["place"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K9 [warn]
       22 LOADK                            R4 K10 ["Failed to determine place kind for Expanded Terrain: "]
       23 FASTCALL1                        TOSTRING R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K12 [tostring]
       27 CALL                             R5 1 1
       28 CONCAT                           R3 R4 R5
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 4
       31 DUPTABLE                         R3 K14 [{["type"] = "Hidden"}]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["current"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETTABLEKS                       R1 R1 K1 ["type"]
       10 JUMPIFNOTEQKS                    R1 K2 ["Restarting"] ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R2 R1 K0 ["current"]
       16 ADDK                             R2 R2 K3 [1]
       17 SETTABLEKS                       R2 R1 K0 ["current"]
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 GETUPVAL                         R2 4
       23 DUPTABLE                         R3 K5 [{["type"] = "Resolving"}]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K8 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Prompt"] ; [+4]
        7 GETUPVAL                         R0 1
        8 DUPTABLE                         R1 K4 [{["type"] = "Hidden"}]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+11]
        2 DUPTABLE                         R0 K2 [{"isCancelled", "getTargetBackend"}]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R1 R0 K0 ["isCancelled"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U3
       10 SETTABLEKS                       R1 R0 K1 ["getTargetBackend"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R0
       14 GETIMPORT                        R1 K4 [pcall]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K5 ["restartAsync"]
       19 GETUPVAL                         R3 5
       20 GETUPVAL                         R4 6
       21 MOVE                             R5 R0
       22 CALL                             R1 4 2
       23 GETUPVAL                         R3 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["current"]
       27 JUMPIFEQ                         R3 R4 ; [+2]
       29 RETURN                           R0 0
       30 JUMPIFNOT                        R1 ; [+11]
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R3 R3 K7 ["placeKind"]
       34 JUMPIFEQKS                       R3 K8 ["New"] ; [+3]
       36 GETUPVAL                         R3 0
       37 JUMPIFNOT                        R3 ; [+20]
       38 GETUPVAL                         R3 7
       39 DUPTABLE                         R4 K11 [{["type"] = "Hidden"}]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K13 [warn]
       44 LOADK                            R5 K14 ["Failed to restart place for Expanded Terrain: "]
       45 FASTCALL1                        TOSTRING R2 ; [+3]
       46 MOVE                             R7 R2
       47 GETIMPORT                        R6 K16 [tostring]
       49 CALL                             R6 1 1
       50 CONCAT                           R4 R5 R6
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 7
       53 DUPTABLE                         R4 K19 [{["type"] = "Prompt", ["place"]}]
       54 GETUPVAL                         R5 6
       55 SETTABLEKS                       R5 R4 K18 ["place"]
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R1 R0 K1 ["type"]
        5 JUMPIFEQKS                       R1 K2 ["Prompt"] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K3 ["place"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R3 R2 K0 ["current"]
       13 ADDK                             R3 R3 K4 [1]
       14 SETTABLEKS                       R3 R2 K0 ["current"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K0 ["current"]
       19 GETUPVAL                         R3 2
       20 DUPTABLE                         R4 K6 [{["type"] = "Restarting", ["place"]}]
       21 SETTABLEKS                       R1 R4 K3 ["place"]
       23 CALL                             R3 1 0
       24 GETIMPORT                        R3 K9 [task.spawn]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useState"]
        5 DUPTABLE                         R4 K3 [{["type"] = "Hidden"}]
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K4 ["useRef"]
       10 MOVE                             R6 R3
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K4 ["useRef"]
       15 LOADN                            R7 0
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K4 ["useRef"]
       20 LOADNIL                          R8
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R10 0 0
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          VAL R6
       36 NEWTABLE                         R11 0 0
       38 CALL                             R9 2 0
       39 GETUPVAL                         R9 2
       40 MOVE                             R10 R1
       41 NEWCLOSURE                       R11 P2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R8
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R12 0 3
       51 MOVE                             R13 R0
       52 MOVE                             R14 R8
       53 MOVE                             R15 R2
       54 SETLIST                          R12 R13 3 [1]
       56 CALL                             R9 3 0
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       60 NEWCLOSURE                       R10 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R8
       63 NEWTABLE                         R11 0 1
       65 MOVE                             R12 R8
       66 SETLIST                          R11 R12 1 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       72 NEWCLOSURE                       R11 P4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R12 0 3
       82 MOVE                             R13 R0
       83 MOVE                             R14 R8
       84 MOVE                             R15 R2
       85 SETLIST                          R12 R13 3 [1]
       87 CALL                             R10 2 1
       88 DUPTABLE                         R11 K11 [{"isVisible", "isRestarting", "close", "restart"}]
       89 LOADB                            R12 1
       90 GETTABLEKS                       R13 R3 K1 ["type"]
       92 JUMPIFEQKS                       R13 K12 ["Prompt"] ; [+14]
       94 LOADB                            R12 0
       95 GETTABLEKS                       R13 R3 K1 ["type"]
       97 JUMPIFNOTEQKS                    R13 K13 ["Restarting"] ; [+9]
       99 GETTABLEKS                       R13 R3 K14 ["place"]
      101 GETTABLEKS                       R13 R13 K15 ["placeKind"]
      103 JUMPIFNOTEQKS                    R13 K16 ["New"] ; [+2]
      105 LOADB                            R12 0 +1
      106 LOADB                            R12 1
      107 SETTABLEKS                       R12 R11 K7 ["isVisible"]
      109 LOADB                            R12 0
      110 GETTABLEKS                       R13 R3 K1 ["type"]
      112 JUMPIFNOTEQKS                    R13 K13 ["Restarting"] ; [+9]
      114 GETTABLEKS                       R13 R3 K14 ["place"]
      116 GETTABLEKS                       R13 R13 K15 ["placeKind"]
      118 JUMPIFNOTEQKS                    R13 K16 ["New"] ; [+2]
      120 LOADB                            R12 0 +1
      121 LOADB                            R12 1
      122 SETTABLEKS                       R12 R11 K8 ["isRestarting"]
      124 SETTABLEKS                       R9 R11 K9 ["close"]
      126 SETTABLEKS                       R10 R11 K10 ["restart"]
      128 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExpandedTerrainRestart"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useEventConnection"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagTerrainEditorExpandedTerrainShutdownTeamCreate"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_10]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 RETURN                           R5 1
