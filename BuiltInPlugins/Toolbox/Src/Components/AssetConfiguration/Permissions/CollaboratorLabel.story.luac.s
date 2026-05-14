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
       40 DUPTABLE                         R8 K17 [{"summary", "controls", "stories"}]
       41 LOADK                            R9 K18 ["This component displays a collaborator (user or group) with icon, display name and (optional) handle"]
       42 SETTABLEKS                       R9 R8 K14 ["summary"]
       44 DUPTABLE                         R9 K20 [{"height"}]
       45 LOADN                            R10 60
       46 SETTABLEKS                       R10 R9 K19 ["height"]
       48 SETTABLEKS                       R9 R8 K15 ["controls"]
       50 NEWTABLE                         R9 0 3
       52 DUPTABLE                         R10 K23 [{"name", "story"}]
       53 LOADK                            R11 K24 ["User"]
       54 SETTABLEKS                       R11 R10 K21 ["name"]
       56 DUPTABLE                         R12 K27 [{"SubjectType", "Id"}]
       57 GETIMPORT                        R13 K30 [Enum.CreatorType.User]
       59 SETTABLEKS                       R13 R12 K25 ["SubjectType"]
       61 LOADN                            R13 1
       62 SETTABLEKS                       R13 R12 K26 ["Id"]
       64 NEWCLOSURE                       R11 P1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R11 R10 K22 ["story"]
       72 DUPTABLE                         R11 K23 [{"name", "story"}]
       73 LOADK                            R12 K31 ["Group"]
       74 SETTABLEKS                       R12 R11 K21 ["name"]
       76 DUPTABLE                         R13 K27 [{"SubjectType", "Id"}]
       77 GETIMPORT                        R14 K32 [Enum.CreatorType.Group]
       79 SETTABLEKS                       R14 R13 K25 ["SubjectType"]
       81 LOADK                            R14 K33 [1200769]
       82 SETTABLEKS                       R14 R13 K26 ["Id"]
       84 NEWCLOSURE                       R12 P1
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R12 R11 K22 ["story"]
       92 DUPTABLE                         R12 K23 [{"name", "story"}]
       93 LOADK                            R13 K34 ["Invalid Id / Loading"]
       94 SETTABLEKS                       R13 R12 K21 ["name"]
       96 DUPTABLE                         R14 K27 [{"SubjectType", "Id"}]
       97 GETIMPORT                        R15 K30 [Enum.CreatorType.User]
       99 SETTABLEKS                       R15 R14 K25 ["SubjectType"]
      101 LOADN                            R15 0
      102 SETTABLEKS                       R15 R14 K26 ["Id"]
      104 NEWCLOSURE                       R13 P1
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R14
      110 SETTABLEKS                       R13 R12 K22 ["story"]
      112 SETLIST                          R9 R10 3 [1]
      114 SETTABLEKS                       R9 R8 K16 ["stories"]
      116 RETURN                           R8 1
