PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expandAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["getExplorerNodeById"]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       10 LOADK                            R6 K1 ["Double clicking on unknown node"]
       11 GETIMPORT                        R4 K3 [assert]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 0
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+21]
       17 GETIMPORT                        R4 K6 [table.find]
       19 GETTABLEKS                       R5 R0 K7 ["capabilities"]
       21 GETTABLEKS                       R5 R5 K8 ["openableClassNames"]
       23 GETTABLEKS                       R6 R3 K9 ["datum"]
       25 GETTABLEKS                       R6 R6 K10 ["className"]
       27 CALL                             R4 2 1
       28 JUMPIFEQKNIL                     R4 ; [+28]
       30 GETTABLEKS                       R4 R1 K11 ["guestRpcInterface"]
       32 GETTABLEKS                       R4 R4 K12 ["openInstance"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 0
       36 RETURN                           R0 0
       37 JUMP                             ; [+19]
       38 GETTABLEKS                       R4 R0 K7 ["capabilities"]
       40 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_canOpenScripts"]
       42 JUMPIFNOT                        R4 ; [+14]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R5 R3 K9 ["datum"]
       46 GETTABLEKS                       R5 R5 K10 ["className"]
       48 CALL                             R4 1 1
       49 JUMPIFNOT                        R4 ; [+7]
       50 GETTABLEKS                       R4 R1 K11 ["guestRpcInterface"]
       52 GETTABLEKS                       R4 R4 K14 ["DEPRECATED_openScript"]
       54 MOVE                             R5 R2
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
       57 GETTABLEKS                       R4 R3 K9 ["datum"]
       59 GETTABLEKS                       R4 R4 K15 ["hasChildren"]
       61 JUMPIF                           R4 ; [+1]
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 2
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 JUMPIFNOT                        R4 ; [+5]
       67 GETTABLEKS                       R4 R0 K16 ["unexpand"]
       69 MOVE                             R5 R2
       70 CALL                             R4 1 0
       71 RETURN                           R0 0
       72 GETIMPORT                        R4 K19 [task.spawn]
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CALL                             R4 1 0
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["createSession"]
       18 GETTABLEKS                       R3 R3 K9 ["createSessionTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["getFFlagStudioTextDocumentAssetEditor"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Networking"]
       32 GETTABLEKS                       R5 R5 K8 ["createSession"]
       34 GETTABLEKS                       R5 R5 K12 ["isClassNameLuaSourceContainer"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["isExpanded"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
