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
       14 GETTABLEKS                       R4 R0 K4 ["capabilities"]
       16 GETTABLEKS                       R4 R4 K5 ["canOpenScripts"]
       18 JUMPIFNOT                        R4 ; [+14]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R5 R3 K6 ["datum"]
       22 GETTABLEKS                       R5 R5 K7 ["className"]
       24 CALL                             R4 1 1
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETTABLEKS                       R4 R1 K8 ["guestRpcInterface"]
       28 GETTABLEKS                       R4 R4 K9 ["openScript"]
       30 MOVE                             R5 R2
       31 CALL                             R4 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R3 K6 ["datum"]
       35 GETTABLEKS                       R4 R4 K10 ["hasChildren"]
       37 JUMPIF                           R4 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 1
       40 MOVE                             R5 R3
       41 CALL                             R4 1 1
       42 JUMPIFNOT                        R4 ; [+5]
       43 GETTABLEKS                       R4 R0 K11 ["unexpand"]
       45 MOVE                             R5 R2
       46 CALL                             R4 1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R4 K14 [task.spawn]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K7 ["Networking"]
       25 GETTABLEKS                       R4 R4 K8 ["createSession"]
       27 GETTABLEKS                       R4 R4 K10 ["isClassNameLuaSourceContainer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["isExpanded"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 RETURN                           R5 1
