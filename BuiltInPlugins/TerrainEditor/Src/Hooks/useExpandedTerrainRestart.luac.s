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
       15 DUPTABLE                         R3 K7 [{["type"] = "Prompt", ["placeKind"]}]
       16 SETTABLEKS                       R1 R3 K6 ["placeKind"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Restarting"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R1 R0 K0 ["current"]
       11 ADDK                             R1 R1 K3 [1]
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["current"]
       17 GETUPVAL                         R1 2
       18 DUPTABLE                         R2 K5 [{["type"] = "Resolving"}]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K8 [task.spawn]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

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
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["restartAsync"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R0 3 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETTABLEKS                       R3 R3 K3 ["current"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 JUMPIFNOT                        R0 ; [+7]
       16 GETUPVAL                         R2 2
       17 JUMPIFNOTEQKS                    R2 K4 ["Local"] ; [+21]
       19 GETUPVAL                         R2 5
       20 DUPTABLE                         R3 K7 [{["type"] = "Hidden"}]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K9 [warn]
       25 LOADK                            R4 K10 ["Failed to restart place for Expanded Terrain: "]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R6 R1
       28 GETIMPORT                        R5 K12 [tostring]
       30 CALL                             R5 1 1
       31 CONCAT                           R3 R4 R5
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 5
       34 DUPTABLE                         R3 K15 [{["type"] = "Prompt", ["placeKind"]}]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K14 ["placeKind"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R1 R0 K1 ["type"]
        5 JUMPIFEQKS                       R1 K2 ["Prompt"] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K3 ["placeKind"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R3 R2 K0 ["current"]
       13 ADDK                             R3 R3 K4 [1]
       14 SETTABLEKS                       R3 R2 K0 ["current"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K0 ["current"]
       19 GETUPVAL                         R3 2
       20 DUPTABLE                         R4 K6 [{["type"] = "Restarting", ["placeKind"]}]
       21 SETTABLEKS                       R1 R4 K3 ["placeKind"]
       23 CALL                             R3 1 0
       24 GETIMPORT                        R3 K9 [task.spawn]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 DUPTABLE                         R3 K3 [{["type"] = "Hidden"}]
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["useRef"]
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["useRef"]
       13 LOADN                            R6 0
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R9 0 0
       31 CALL                             R7 2 0
       32 GETUPVAL                         R7 1
       33 MOVE                             R8 R1
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R10 0 2
       42 MOVE                             R11 R0
       43 MOVE                             R12 R6
       44 SETLIST                          R10 R11 2 [1]
       46 CALL                             R7 3 0
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       50 NEWCLOSURE                       R8 P3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R9 0 1
       55 MOVE                             R10 R6
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       62 NEWCLOSURE                       R9 P4
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R10 0 2
       70 MOVE                             R11 R0
       71 MOVE                             R12 R6
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 DUPTABLE                         R9 K11 [{"isVisible", "isRestarting", "close", "restart"}]
       76 LOADB                            R10 1
       77 GETTABLEKS                       R11 R2 K1 ["type"]
       79 JUMPIFEQKS                       R11 K12 ["Prompt"] ; [+12]
       81 LOADB                            R10 0
       82 GETTABLEKS                       R11 R2 K1 ["type"]
       84 JUMPIFNOTEQKS                    R11 K13 ["Restarting"] ; [+7]
       86 GETTABLEKS                       R11 R2 K14 ["placeKind"]
       88 JUMPIFEQKS                       R11 K15 ["Cloud"] ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 SETTABLEKS                       R10 R9 K7 ["isVisible"]
       94 LOADB                            R10 0
       95 GETTABLEKS                       R11 R2 K1 ["type"]
       97 JUMPIFNOTEQKS                    R11 K13 ["Restarting"] ; [+7]
       99 GETTABLEKS                       R11 R2 K14 ["placeKind"]
      101 JUMPIFEQKS                       R11 K15 ["Cloud"] ; [+2]
      103 LOADB                            R10 0 +1
      104 LOADB                            R10 1
      105 SETTABLEKS                       R10 R9 K8 ["isRestarting"]
      107 SETTABLEKS                       R7 R9 K9 ["close"]
      109 SETTABLEKS                       R8 R9 K10 ["restart"]
      111 RETURN                           R9 1

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
       32 DUPCLOSURE                       R4 K13 [PROTO_8]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
