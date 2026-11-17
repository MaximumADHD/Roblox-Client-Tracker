PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenTextDocumentAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R3 K0 ["TextDocument"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K3 [pcall]
       12 CALL                             R1 1 3
       13 JUMPIF                           R1 ; [+16]
       14 GETIMPORT                        R4 K5 [warn]
       16 LOADK                            R5 K6 ["[TextDocumentAssetEditor] The Script Editor would not open %*: %*"]
       17 NAMECALL                         R7 R0 K7 ["GetFullName"]
       19 CALL                             R7 1 1
       20 FASTCALL1                        TOSTRING R2 ; [+3]
       21 MOVE                             R9 R2
       22 GETIMPORT                        R8 K9 [tostring]
       24 CALL                             R8 1 1
       25 NAMECALL                         R5 R5 K10 ["format"]
       27 CALL                             R5 3 1
       28 CALL                             R4 1 0
       29 RETURN                           R0 0
       30 JUMPIF                           R2 ; [+20]
       31 GETIMPORT                        R4 K5 [warn]
       33 LOADK                            R6 K11 ["[TextDocumentAssetEditor] The Script Editor declined to open %*: "]
       34 NAMECALL                         R8 R0 K7 ["GetFullName"]
       36 CALL                             R8 1 1
       37 NAMECALL                         R6 R6 K10 ["format"]
       39 CALL                             R6 2 1
       40 LOADK                            R7 K12 ["%*"]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R10 R3
       43 GETIMPORT                        R9 K9 [tostring]
       45 CALL                             R9 1 1
       46 NAMECALL                         R7 R7 K10 ["format"]
       48 CALL                             R7 2 1
       49 CONCAT                           R5 R6 R7
       50 CALL                             R4 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["ScriptEditorService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K5 [require]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K6 ["Packages"]
       11 GETTABLEKS                       R3 R3 K7 ["SharedPluginConstants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["Packages"]
       19 GETTABLEKS                       R4 R4 K8 ["_Index"]
       21 GETTABLEKS                       R4 R4 K9 ["DeveloperFramework"]
       23 GETTABLEKS                       R4 R4 K9 ["DeveloperFramework"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["CrossPluginCommunication"]
       29 CALL                             R3 1 1
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R1
       32 GETTABLEKS                       R5 R3 K12 ["new"]
       34 GETTABLEKS                       R6 R2 K13 ["CONTENT_EDIT"]
       36 GETTABLEKS                       R6 R6 K14 ["CPC_ID"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R2 K13 ["CONTENT_EDIT"]
       41 GETTABLEKS                       R6 R6 K15 ["editInstanceEvent"]
       43 LOADK                            R7 K16 ["TextDocument"]
       44 CALL                             R6 1 1
       45 MOVE                             R9 R6
       46 MOVE                             R10 R4
       47 NAMECALL                         R7 R5 K17 ["Connect"]
       49 CALL                             R7 3 1
       50 GETTABLEKS                       R8 R0 K18 ["Unloading"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R7
       54 NAMECALL                         R8 R8 K17 ["Connect"]
       56 CALL                             R8 2 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextDocumentAssetEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_3]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
