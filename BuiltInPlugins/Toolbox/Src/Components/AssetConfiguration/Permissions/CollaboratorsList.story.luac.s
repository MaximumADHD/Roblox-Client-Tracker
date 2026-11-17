PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMockCollaborators"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["controls"]
        6 GETTABLEKS                       R1 R1 K2 ["CollaboratorCount"]
        8 GETIMPORT                        R2 K5 [Random.new]
       10 LOADN                            R3 0
       11 CALL                             R2 1 -1
       12 CALL                             R0 -1 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K2 [{"CollabInfo"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K4 [{"MockLoadTime"}]
       12 GETTABLEKS                       R8 R0 K5 ["controls"]
       14 GETTABLEKS                       R8 R8 K3 ["MockLoadTime"]
       16 SETTABLEKS                       R8 R7 K3 ["MockLoadTime"]
       18 DUPTABLE                         R8 K7 [{"List"}]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K0 ["createElement"]
       22 GETUPVAL                         R10 3
       23 DUPTABLE                         R11 K12 [{"ItemHeight", "Enabled", "PermissionChanged", "Permissions"}]
       24 GETIMPORT                        R12 K15 [UDim.new]
       26 LOADN                            R13 0
       27 LOADN                            R14 75
       28 CALL                             R12 2 1
       29 SETTABLEKS                       R12 R11 K8 ["ItemHeight"]
       31 GETTABLEKS                       R12 R0 K5 ["controls"]
       33 GETTABLEKS                       R12 R12 K9 ["Enabled"]
       35 SETTABLEKS                       R12 R11 K9 ["Enabled"]
       37 DUPCLOSURE                       R12 K16 [PROTO_0]
       38 SETTABLEKS                       R12 R11 K10 ["PermissionChanged"]
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R12 R12 K17 ["useMemo"]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 NEWTABLE                         R14 0 1
       48 GETTABLEKS                       R15 R0 K5 ["controls"]
       50 GETTABLEKS                       R15 R15 K18 ["CollaboratorCount"]
       52 SETLIST                          R14 R15 1 [1]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K11 ["Permissions"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K6 ["List"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K1 ["CollabInfo"]
       63 CALL                             R1 3 -1
       64 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Stories"]
       18 GETTABLEKS                       R4 R4 K9 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K10 ["Parent"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R4 K11 ["CollaboratorsList"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R4 K12 ["PermissionsConstants"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R4 K13 ["CollaboratorInfoContextMock"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R4 K14 ["PermissionsMock"]
       44 CALL                             R8 1 1
       45 DUPTABLE                         R9 K17 [{"controls", "story"}]
       46 DUPTABLE                         R10 K23 [{["CollaboratorCount"], ["Enabled"] = True, ["MockLoadTime"] = False}]
       47 NEWTABLE                         R11 0 6
       49 LOADN                            R12 8
       50 LOADN                            R13 0
       51 LOADN                            R14 5
       52 LOADN                            R15 12
       53 LOADN                            R16 20
       54 LOADN                            R17 100
       55 SETLIST                          R11 R12 6 [1]
       57 SETTABLEKS                       R11 R10 K18 ["CollaboratorCount"]
       59 SETTABLEKS                       R10 R9 K15 ["controls"]
       61 DUPCLOSURE                       R10 K24 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R10 R9 K16 ["story"]
       69 RETURN                           R9 1
