PROTO_0:
        0 DUPTABLE                         R0 K12 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["autoSelectView"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K13 ["getFFlagTextureGenAutoSelectView"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K6 ["autoSelectView"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K7 ["slots"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R2 R0 R3
        3 JUMPIF                           R2 ; [+2]
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K2 [table.clone]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K3 ["stage"]
       13 JUMPIFNOTEQKS                    R3 K4 ["Idle"] ; [+13]
       15 GETTABLEKS                       R3 R1 K5 ["prompt"]
       17 JUMPIFNOTEQKS                    R3 K6 [""] ; [+9]
       19 GETTABLEKS                       R3 R1 K7 ["model"]
       21 JUMPIFNOTEQKS                    R3 K6 [""] ; [+5]
       23 GETUPVAL                         R3 1
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R2 1
       27 GETUPVAL                         R3 1
       28 SETTABLE                         R1 R2 R3
       29 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R8 R5 K0 ["stage"]
        9 GETTABLE                         R6 R7 R8
       10 JUMPIFNOT                        R6 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R4
       15 GETIMPORT                        R6 K3 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-13]
       20 GETIMPORT                        R1 K5 [table.sort]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["useRefToState"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useRef"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R3 1 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 NEWTABLE                         R7 0 1
       27 MOVE                             R8 R0
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 DUPTABLE                         R6 K10 [{"sessions", "sessionsRef", "updateSession", "setSessions", "activeUniqueIds", "cancelledRequestIds"}]
       32 SETTABLEKS                       R0 R6 K4 ["sessions"]
       34 SETTABLEKS                       R2 R6 K5 ["sessionsRef"]
       36 SETTABLEKS                       R4 R6 K6 ["updateSession"]
       38 SETTABLEKS                       R1 R6 K7 ["setSessions"]
       40 SETTABLEKS                       R5 R6 K8 ["activeUniqueIds"]
       42 GETTABLEKS                       R7 R3 K11 ["current"]
       44 SETTABLEKS                       R7 R6 K9 ["cancelledRequestIds"]
       46 RETURN                           R6 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Bin"]
       32 GETTABLEKS                       R5 R5 K12 ["Common"]
       34 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K19 [{["GeneratingImages"] = True, ["PickingImage"] = True, ["GeneratingTexture"] = True, ["Inserting"] = True}]
       38 GETIMPORT                        R6 K22 [table.freeze]
       40 NEWTABLE                         R7 0 0
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K23 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 DUPCLOSURE                       R8 K24 [PROTO_4]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 RETURN                           R8 1
