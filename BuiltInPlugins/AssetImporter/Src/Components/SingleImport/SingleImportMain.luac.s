PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 DUPTABLE                         R3 K5 [{"loading", "location", "importing", "failed"}]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R4 R3 K1 ["loading"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R4 R3 K2 ["location"]
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K3 ["importing"]
       30 NEWCLOSURE                       R4 P3
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K4 ["failed"]
       36 GETTABLE                         R4 R3 R2
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K6 ["createElement"]
       40 GETUPVAL                         R6 7
       41 DUPTABLE                         R7 K9 [{"enabled", "size"}]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K10 ["state"]
       45 GETTABLEKS                       R9 R9 K11 ["closed"]
       47 JUMPIFNOTEQ                      R2 R9 ; [+2]
       49 LOADB                            R8 0 +1
       50 LOADB                            R8 1
       51 SETTABLEKS                       R8 R7 K7 ["enabled"]
       53 GETIMPORT                        R8 K14 [Vector2.new]
       55 LOADN                            R9 164
       56 LOADN                            R10 135
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K8 ["size"]
       60 DUPTABLE                         R8 K16 [{"child"}]
       61 JUMPIFNOT                        R4 ; [+3]
       62 MOVE                             R9 R4
       63 CALL                             R9 0 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R9
       66 SETTABLEKS                       R9 R8 K15 ["child"]
       68 CALL                             R5 3 -1
       69 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Components"]
       18 GETTABLEKS                       R2 R2 K10 ["SingleImport"]
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
       37 GETTABLEKS                       R7 R2 K14 ["FailureWidget"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Packages"]
       44 GETTABLEKS                       R8 R8 K15 ["Framework"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       49 GETTABLEKS                       R9 R8 K17 ["Localization"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K8 ["Src"]
       55 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       57 GETTABLEKS                       R11 R11 K19 ["useState"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K8 ["Src"]
       64 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       66 GETTABLEKS                       R12 R12 K21 ["SingleMeshController"]
       68 CALL                             R11 1 1
       69 DUPCLOSURE                       R12 K22 [PROTO_5]
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 RETURN                           R12 1
