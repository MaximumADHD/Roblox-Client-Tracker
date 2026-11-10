PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 LOADN                            R4 1
        3 LOADN                            R5 11
        4 NAMECALL                         R2 R1 K0 ["sub"]
        6 CALL                             R2 3 1
        7 JUMPIFNOTEQKS                    R2 K1 ["--!nocheck\n"] ; [+6]
        9 LOADN                            R4 12
       10 NAMECALL                         R2 R1 K0 ["sub"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K10 [{[1] = "RunClient", ["className"] = "LocalScript", ["runContext"] = , ["source"], ["isRoot"] = False, ["children"] = }]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["RunClient"]
        4 LOADN                            R7 1
        5 LOADN                            R8 11
        6 NAMECALL                         R5 R4 K11 ["sub"]
        8 CALL                             R5 3 1
        9 JUMPIFNOTEQKS                    R5 K12 ["--!nocheck\n"] ; [+7]
       11 LOADN                            R7 12
       12 NAMECALL                         R5 R4 K11 ["sub"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMP                             ; [+1]
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K6 ["source"]
       20 DUPTABLE                         R3 K15 [{[1] = "RunServer", ["className"] = "Script", ["runContext"] = , ["source"], ["isRoot"] = False, ["children"] = }]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K13 ["RunServer"]
       24 LOADN                            R8 1
       25 LOADN                            R9 11
       26 NAMECALL                         R6 R5 K11 ["sub"]
       28 CALL                             R6 3 1
       29 JUMPIFNOTEQKS                    R6 K12 ["--!nocheck\n"] ; [+7]
       31 LOADN                            R8 12
       32 NAMECALL                         R6 R5 K11 ["sub"]
       34 CALL                             R6 2 1
       35 MOVE                             R4 R6
       36 JUMP                             ; [+1]
       37 MOVE                             R4 R5
       38 SETTABLEKS                       R4 R3 K6 ["source"]
       40 JUMPIFEQKS                       R0 K16 ["StarterPlayer"] ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 JUMPIF                           R4 ; [+6]
       45 NEWTABLE                         R5 0 1
       47 MOVE                             R6 R3
       48 SETLIST                          R5 R6 1 [1]
       50 RETURN                           R5 1
       51 JUMPIFNOT                        R1 ; [+7]
       52 NEWTABLE                         R5 0 2
       54 MOVE                             R6 R3
       55 MOVE                             R7 R2
       56 SETLIST                          R5 R6 2 [1]
       58 RETURN                           R5 1
       59 NEWTABLE                         R5 0 1
       61 MOVE                             R6 R2
       62 SETLIST                          R5 R6 1 [1]
       64 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K10 [{[1] = "Animate", ["className"] = "ModuleScript", ["runContext"] = , ["source"], ["isRoot"] = True, ["children"]}]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["Animate"]
        6 LOADN                            R8 1
        7 LOADN                            R9 11
        8 NAMECALL                         R6 R5 K11 ["sub"]
       10 CALL                             R6 3 1
       11 JUMPIFNOTEQKS                    R6 K12 ["--!nocheck\n"] ; [+7]
       13 LOADN                            R8 12
       14 NAMECALL                         R6 R5 K11 ["sub"]
       16 CALL                             R6 2 1
       17 MOVE                             R4 R6
       18 JUMP                             ; [+1]
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R4 R3 K6 ["source"]
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K9 ["children"]
       28 SETLIST                          R2 R3 1 [1]
       30 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PreviewStaging"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["GeneratedTemplates"]
        7 CALL                             R0 1 1
        8 DUPCLOSURE                       R1 K5 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 DUPCLOSURE                       R3 K7 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 DUPCLOSURE                       R4 K8 [PROTO_3]
       16 CAPTURE                          VAL R1
       17 DUPTABLE                         R5 K11 [{"getActiveTemplateSet", "getPreviewStagingSource"}]
       18 SETTABLEKS                       R3 R5 K9 ["getActiveTemplateSet"]
       20 SETTABLEKS                       R4 R5 K10 ["getPreviewStagingSource"]
       22 RETURN                           R5 1
