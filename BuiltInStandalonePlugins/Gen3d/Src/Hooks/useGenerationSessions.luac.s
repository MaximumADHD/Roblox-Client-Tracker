PROTO_0:
        0 DUPTABLE                         R0 K11 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K6 ["slots"]
        5 RETURN                           R0 1

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
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R0
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 DUPTABLE                         R5 K8 [{"sessions", "sessionsRef", "updateSession", "setSessions", "activeUniqueIds"}]
       26 SETTABLEKS                       R0 R5 K3 ["sessions"]
       28 SETTABLEKS                       R2 R5 K4 ["sessionsRef"]
       30 SETTABLEKS                       R3 R5 K5 ["updateSession"]
       32 SETTABLEKS                       R1 R5 K6 ["setSessions"]
       34 SETTABLEKS                       R4 R5 K7 ["activeUniqueIds"]
       36 RETURN                           R5 1

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
       28 DUPTABLE                         R4 K16 [{["GeneratingImages"] = True, ["PickingImage"] = True, ["GeneratingTexture"] = True, ["Inserting"] = True}]
       29 GETIMPORT                        R5 K19 [table.freeze]
       31 NEWTABLE                         R6 0 0
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K20 [PROTO_0]
       35 DUPCLOSURE                       R7 K21 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 RETURN                           R7 1
