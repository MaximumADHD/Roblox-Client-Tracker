PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 DUPTABLE                         R8 K2 [{"Type", "Id"}]
        7 NAMECALL                         R10 R1 K3 ["NextNumber"]
        9 CALL                             R10 1 1
       10 LOADK                            R11 K4 [0.5]
       11 JUMPIFNOTLT                      R11 R10 ; [+4]
       13 GETIMPORT                        R9 K8 [Enum.CreatorType.Group]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R9 K10 [Enum.CreatorType.User]
       18 SETTABLEKS                       R9 R8 K0 ["Type"]
       20 LOADK                            R11 K11 [111111]
       21 LOADK                            R12 K12 [999999]
       22 NAMECALL                         R9 R1 K13 ["NextInteger"]
       24 CALL                             R9 3 1
       25 SETTABLEKS                       R9 R8 K1 ["Id"]
       27 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K16 [table.insert]
       32 CALL                             R6 2 0
       33 FORNLOOP                         R3
       34 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Selected: "]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["SubjectNameKey"]
        6 GETTABLE                         R3 R0 R4
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K4 [table.find]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 CALL                             R4 2 1
        5 ORK                              R3 R4 K1 [0]
        6 MODK                             R2 R3 K0 [4]
        7 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [Random.new]
        2 LOADN                            R2 1
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K3 ["controls"]
        7 GETTABLEKS                       R3 R3 K4 ["PossibleCollaboratorCount"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K5 ["createElement"]
       14 GETUPVAL                         R4 2
       15 NEWTABLE                         R5 0 0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["createElement"]
       20 GETUPVAL                         R7 3
       21 NEWTABLE                         R8 0 0
       23 NEWTABLE                         R9 0 1
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K5 ["createElement"]
       28 LOADK                            R11 K6 ["Frame"]
       29 DUPTABLE                         R12 K10 [{["Size"], ["BackgroundTransparency"] = 1}]
       30 GETIMPORT                        R13 K13 [UDim2.fromOffset]
       32 LOADN                            R14 300
       33 LOADN                            R15 300
       34 CALL                             R13 2 1
       35 SETTABLEKS                       R13 R12 K7 ["Size"]
       37 NEWTABLE                         R13 0 1
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R14 R14 K5 ["createElement"]
       42 GETUPVAL                         R15 4
       43 DUPTABLE                         R16 K19 [{"Size", "Collaborators", "CollaboratorSelected", "Filter", "Enabled", "ListItemSize"}]
       44 GETIMPORT                        R17 K20 [UDim2.new]
       46 LOADN                            R18 1
       47 LOADN                            R19 0
       48 LOADN                            R20 0
       49 LOADN                            R21 80
       50 CALL                             R17 4 1
       51 SETTABLEKS                       R17 R16 K7 ["Size"]
       53 SETTABLEKS                       R2 R16 K14 ["Collaborators"]
       55 DUPCLOSURE                       R17 K21 [PROTO_1]
       56 CAPTURE                          UPVAL U5
       57 SETTABLEKS                       R17 R16 K15 ["CollaboratorSelected"]
       59 NEWCLOSURE                       R17 P1
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R17 R16 K16 ["Filter"]
       63 GETTABLEKS                       R17 R0 K3 ["controls"]
       65 GETTABLEKS                       R17 R17 K17 ["Enabled"]
       67 SETTABLEKS                       R17 R16 K17 ["Enabled"]
       69 GETIMPORT                        R17 K23 [Vector2.new]
       71 LOADN                            R18 300
       72 LOADN                            R19 60
       73 CALL                             R17 2 1
       74 SETTABLEKS                       R17 R16 K18 ["ListItemSize"]
       76 CALL                             R14 2 -1
       77 SETLIST                          R13 R14 -1 [1]
       79 CALL                             R10 3 -1
       80 SETLIST                          R9 R10 -1 [1]
       82 CALL                             R6 3 -1
       83 CALL                             R3 -1 -1
       84 RETURN                           R3 -1

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
       27 GETTABLEKS                       R6 R4 K11 ["CollaboratorSearch"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R4 K12 ["PermissionsConstants"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R4 K13 ["CollaboratorInfo"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R4 K14 ["CollaboratorInfoContextMock"]
       44 CALL                             R8 1 1
       45 DUPCLOSURE                       R9 K15 [PROTO_0]
       46 DUPTABLE                         R10 K20 [{["summary"] = "This component searches through a list of potential collaborators and displays results in a dropdown.", ["controls"], ["story"]}]
       47 DUPTABLE                         R11 K24 [{["PossibleCollaboratorCount"], ["Enabled"] = True}]
       48 NEWTABLE                         R12 0 4
       50 LOADN                            R13 10
       51 LOADN                            R14 0
       52 LOADN                            R15 25
       53 LOADN                            R16 100
       54 SETLIST                          R12 R13 4 [1]
       56 SETTABLEKS                       R12 R11 K21 ["PossibleCollaboratorCount"]
       58 SETTABLEKS                       R11 R10 K18 ["controls"]
       60 DUPCLOSURE                       R11 K25 [PROTO_3]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R11 R10 K19 ["story"]
       69 RETURN                           R10 1
