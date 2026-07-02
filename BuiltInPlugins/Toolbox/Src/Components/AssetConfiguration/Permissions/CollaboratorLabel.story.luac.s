PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 2
       12 NEWTABLE                         R7 0 0
       14 NEWTABLE                         R8 0 1
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K0 ["createElement"]
       19 GETUPVAL                         R10 3
       20 DUPTABLE                         R11 K4 [{"Size", "SubjectType", "Id"}]
       21 GETIMPORT                        R12 K7 [UDim2.new]
       23 LOADN                            R13 1
       24 LOADN                            R14 0
       25 LOADN                            R15 0
       26 GETTABLEKS                       R16 R0 K8 ["controls"]
       28 GETTABLEKS                       R16 R16 K9 ["height"]
       30 CALL                             R12 4 1
       31 SETTABLEKS                       R12 R11 K1 ["Size"]
       33 GETUPVAL                         R12 4
       34 GETTABLEKS                       R12 R12 K2 ["SubjectType"]
       36 SETTABLEKS                       R12 R11 K2 ["SubjectType"]
       38 GETUPVAL                         R12 4
       39 GETTABLEKS                       R12 R12 K3 ["Id"]
       41 SETTABLEKS                       R12 R11 K3 ["Id"]
       43 CALL                             R9 2 -1
       44 SETLIST                          R8 R9 -1 [1]
       46 CALL                             R5 3 -1
       47 SETLIST                          R4 R5 -1 [1]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

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
       27 GETTABLEKS                       R6 R4 K11 ["CollaboratorLabel"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R4 K12 ["CollaboratorInfoContextMock"]
       34 CALL                             R6 1 1
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 DUPTABLE                         R8 K18 [{["summary"] = "This component displays a collaborator (user or group) with icon, display name and (optional) handle", ["controls"], ["stories"]}]
       41 DUPTABLE                         R9 K21 [{["height"] = 60}]
       42 SETTABLEKS                       R9 R8 K16 ["controls"]
       44 NEWTABLE                         R9 0 3
       46 DUPTABLE                         R10 K25 [{["name"] = "User", ["story"]}]
       47 DUPTABLE                         R12 K29 [{["SubjectType"], ["Id"] = 1}]
       48 GETIMPORT                        R13 K32 [Enum.CreatorType.User]
       50 SETTABLEKS                       R13 R12 K26 ["SubjectType"]
       52 NEWCLOSURE                       R11 P1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R12
       58 SETTABLEKS                       R11 R10 K24 ["story"]
       60 DUPTABLE                         R11 K34 [{["name"] = "Group", ["story"]}]
       61 DUPTABLE                         R13 K36 [{["SubjectType"], ["Id"] = 1200769}]
       62 GETIMPORT                        R14 K37 [Enum.CreatorType.Group]
       64 SETTABLEKS                       R14 R13 K26 ["SubjectType"]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R13
       72 SETTABLEKS                       R12 R11 K24 ["story"]
       74 DUPTABLE                         R12 K39 [{["name"] = "Invalid Id / Loading", ["story"]}]
       75 DUPTABLE                         R14 K41 [{["SubjectType"], ["Id"] = 0}]
       76 GETIMPORT                        R15 K32 [Enum.CreatorType.User]
       78 SETTABLEKS                       R15 R14 K26 ["SubjectType"]
       80 NEWCLOSURE                       R13 P1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R14
       86 SETTABLEKS                       R13 R12 K24 ["story"]
       88 SETLIST                          R9 R10 3 [1]
       90 SETTABLEKS                       R9 R8 K17 ["stories"]
       92 RETURN                           R8 1
