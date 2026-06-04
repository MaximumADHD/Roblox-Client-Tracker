PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["bypassFlags"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R3 R1 K0 ["bypassFlags"]
        5 GETTABLEKS                       R3 R3 K1 ["skipPhysicsDataReset"]
        7 JUMPIF                           R3 ; [+7]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R0 K2 ["MeshSize"]
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R0 K3 ["Size"]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R1 K4 ["partSizes"]
       17 JUMPIF                           R3 ; [+4]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R1 K4 ["partSizes"]
       22 GETTABLEKS                       R4 R1 K4 ["partSizes"]
       24 GETTABLE                         R3 R4 R0
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R4 R1 K4 ["partSizes"]
       28 GETTABLE                         R3 R4 R0
       29 RETURN                           R3 1
       30 DUPTABLE                         R3 K9 [{"fullName", "fieldName", "contentId", "context"}]
       31 NAMECALL                         R4 R0 K10 ["GetFullName"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K5 ["fullName"]
       36 LOADK                            R4 K11 ["MeshId"]
       37 SETTABLEKS                       R4 R3 K6 ["fieldName"]
       39 GETTABLEKS                       R4 R0 K11 ["MeshId"]
       41 SETTABLEKS                       R4 R3 K7 ["contentId"]
       43 GETTABLEKS                       R4 R0 K12 ["Name"]
       45 SETTABLEKS                       R4 R3 K8 ["context"]
       47 GETUPVAL                         R4 0
       48 MOVE                             R5 R0
       49 LOADK                            R6 K11 ["MeshId"]
       50 MOVE                             R7 R1
       51 CALL                             R4 3 2
       52 JUMPIF                           R4 ; [+7]
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETTABLEKS                       R6 R0 K2 ["MeshSize"]
       56 RETURN                           R6 1
       57 GETTABLEKS                       R6 R0 K3 ["Size"]
       59 RETURN                           R6 1
       60 SETTABLEKS                       R5 R3 K13 ["editableMesh"]
       62 GETTABLEKS                       R8 R1 K14 ["editableMeshes"]
       64 GETTABLE                         R7 R8 R0
       65 GETTABLEKS                       R6 R7 K11 ["MeshId"]
       67 GETTABLEKS                       R6 R6 K15 ["created"]
       69 JUMPIFNOT                        R6 ; [+7]
       70 JUMPIFNOT                        R2 ; [+3]
       71 GETTABLEKS                       R6 R0 K2 ["MeshSize"]
       73 RETURN                           R6 1
       74 GETTABLEKS                       R6 R0 K3 ["Size"]
       76 RETURN                           R6 1
       77 GETUPVAL                         R6 1
       78 NEWCLOSURE                       R7 P0
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R3
       81 MOVE                             R8 R1
       82 CALL                             R6 2 2
       83 JUMPIF                           R6 ; [+7]
       84 JUMPIFNOT                        R2 ; [+3]
       85 GETTABLEKS                       R8 R0 K2 ["MeshSize"]
       87 RETURN                           R8 1
       88 GETTABLEKS                       R8 R0 K3 ["Size"]
       90 RETURN                           R8 1
       91 GETTABLEKS                       R8 R1 K4 ["partSizes"]
       93 SETTABLE                         R7 R8 R0
       94 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["getEditableMeshFromContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["util"]
       25 GETTABLEKS                       R4 R4 K8 ["getMeshSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["util"]
       32 GETTABLEKS                       R5 R5 K9 ["pcallDeferred"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K10 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 RETURN                           R5 1
