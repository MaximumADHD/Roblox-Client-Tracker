PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"text"}]
        5 GETUPVAL                         R3 2
        6 LOADK                            R5 K3 ["SingleImport"]
        7 LOADK                            R6 K4 ["Parsing"]
        8 NAMECALL                         R3 R3 K5 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K1 ["text"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setUseLocation"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"text", "resultCallback"}]
        5 GETUPVAL                         R3 2
        6 LOADK                            R5 K4 ["SingleImport"]
        7 LOADK                            R6 K5 ["LocationQuestion"]
        8 NAMECALL                         R3 R3 K6 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K1 ["text"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R3 R2 K2 ["resultCallback"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"text"}]
        5 GETUPVAL                         R3 2
        6 LOADK                            R5 K3 ["SingleImport"]
        7 LOADK                            R6 K4 ["Importing"]
        8 NAMECALL                         R3 R3 K5 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K1 ["text"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K4 [{"loading", "location", "importing"}]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R4 R3 K1 ["loading"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K2 ["location"]
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R4 R3 K3 ["importing"]
       31 GETTABLE                         R4 R3 R2
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K5 ["createElement"]
       35 GETUPVAL                         R6 6
       36 DUPTABLE                         R7 K7 [{"enabled"}]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R10 R11 K8 ["state"]
       40 GETTABLEKS                       R9 R10 K9 ["closed"]
       42 JUMPIFNOTEQ                      R2 R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 SETTABLEKS                       R8 R7 K6 ["enabled"]
       48 DUPTABLE                         R8 K11 [{"child"}]
       49 JUMPIFNOT                        R4 ; [+3]
       50 MOVE                             R9 R4
       51 CALL                             R9 0 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R9
       54 SETTABLEKS                       R9 R8 K10 ["child"]
       56 CALL                             R5 3 -1
       57 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R4 R0 K8 ["Src"]
       16 GETTABLEKS                       R3 R4 K9 ["Components"]
       18 GETTABLEKS                       R2 R3 K10 ["SingleImport"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K11 ["SingleImportDialog"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K12 ["TextQuestionWidget"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R2 K13 ["LoadingWidget"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R8 R0 K6 ["Packages"]
       39 GETTABLEKS                       R7 R8 K14 ["Framework"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K16 ["Localization"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R12 R0 K8 ["Src"]
       50 GETTABLEKS                       R11 R12 K17 ["Hooks"]
       52 GETTABLEKS                       R10 R11 K18 ["useState"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R13 R0 K8 ["Src"]
       59 GETTABLEKS                       R12 R13 K19 ["Controllers"]
       61 GETTABLEKS                       R11 R12 K20 ["SingleMeshController"]
       63 CALL                             R10 1 1
       64 DUPCLOSURE                       R11 K21 [PROTO_4]
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R3
       72 RETURN                           R11 1
