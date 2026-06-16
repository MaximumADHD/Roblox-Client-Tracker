PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R1 K0 ["definition"]
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 LOADB                            R3 0
        7 JUMPIFEQKNIL                     R1 ; [+5]
        9 JUMPIFNOTEQKS                    R1 K2 [""] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       15 LOADK                            R4 K3 ["Tool name is required"]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R5 0
       20 GETTABLE                         R4 R5 R1
       21 JUMPIFEQKNIL                     R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 LOADK                            R5 K6 ["Tool already registered: %*"]
       26 MOVE                             R7 R1
       27 NAMECALL                         R5 R5 K7 ["format"]
       29 CALL                             R5 2 1
       30 MOVE                             R4 R5
       31 FASTCALL2                        ASSERT R3 R4 ; [+3]
       33 GETIMPORT                        R2 K5 [assert]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 0
       37 SETTABLE                         R0 R2 R1
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["permissionStorage"]
        8 JUMPIFNOT                        R6 ; [+3]
        9 GETTABLEKS                       R7 R6 K1 ["defaultDecision"]
       11 SETTABLE                         R7 R0 R4
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Permissioning"]
       11 GETTABLEKS                       R2 R2 K7 ["PermissionStorageProvider"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 NEWTABLE                         R3 0 0
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          REF R3
       20 SETTABLEKS                       R4 R2 K8 ["register"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R4 R2 K9 ["get"]
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R4 R2 K10 ["getToolNames"]
       30 NEWCLOSURE                       R4 P3
       31 CAPTURE                          REF R3
       32 SETTABLEKS                       R4 R2 K11 ["getPermissionDefaultConfig"]
       34 NEWCLOSURE                       R4 P4
       35 CAPTURE                          REF R3
       36 SETTABLEKS                       R4 R2 K12 ["clear"]
       38 CLOSEUPVALS                      R3
       39 RETURN                           R2 1
