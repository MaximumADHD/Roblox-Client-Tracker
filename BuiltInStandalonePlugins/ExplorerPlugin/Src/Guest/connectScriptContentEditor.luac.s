PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["CPC_ID"]
        6 CALL                             R0 1 1
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 2
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 MOVE                             R8 R1
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K2 ["editInstanceEvent"]
       17 MOVE                             R12 R6
       18 CALL                             R11 1 1
       19 DUPCLOSURE                       R12 K3 [PROTO_0]
       20 CAPTURE                          UPVAL U3
       21 NAMECALL                         R9 R0 K4 ["Connect"]
       23 CALL                             R9 3 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R7 K7 [table.insert]
       27 CALL                             R7 -1 0
       28 FORGLOOP                         R2 2 ; [-16]
       30 NEWCLOSURE                       R2 P1
       31 CAPTURE                          VAL R1
       32 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedPluginConstants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Guest"]
       27 GETTABLEKS                       R4 R4 K11 ["luaSourceContainerClassNames"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Guest"]
       36 GETTABLEKS                       R5 R5 K12 ["openScript"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K13 ["Util"]
       41 GETTABLEKS                       R5 R5 K14 ["CrossPluginCommunication"]
       43 GETTABLEKS                       R6 R2 K15 ["CONTENT_EDIT"]
       45 DUPCLOSURE                       R7 K16 [PROTO_2]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 RETURN                           R7 1
