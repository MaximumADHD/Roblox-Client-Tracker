PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scheduled"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["depth"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K2 ["enqueue"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["new"]
        6 LOADK                            R3 K1 ["test"]
        7 LOADN                            R4 1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 CALL                             R2 3 1
       12 MOVE                             R0 R2
       13 DUPTABLE                         R3 K5 [{"hosts", "publish", "queue"}]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K2 ["hosts"]
       18 SETTABLEKS                       R1 R3 K3 ["publish"]
       20 SETTABLEKS                       R0 R3 K4 ["queue"]
       22 GETUPVAL                         R4 2
       23 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       25 GETIMPORT                        R2 K7 [setmetatable]
       27 CALL                             R2 2 1
       28 NAMECALL                         R3 R0 K8 ["start"]
       30 CALL                             R3 1 0
       31 CLOSEUPVALS                      R0
       32 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["queue"]
        2 NAMECALL                         R1 R1 K1 ["stop"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["hosts"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 NAMECALL                         R6 R5 K3 ["Destroy"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-4]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["queue"]
        2 NAMECALL                         R1 R1 K1 ["flushNow"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["Parent"]
        5 GETTABLEKS                       R4 R4 K3 ["Dev"]
        7 GETTABLEKS                       R4 R4 K4 ["DomTestingLibrary"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R3 K5 ["document"]
       12 GETTABLEKS                       R5 R3 K6 ["within"]
       14 GETIMPORT                        R6 K9 [Instance.new]
       16 LOADK                            R7 K10 ["Folder"]
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R7 R1 K11 ["name"]
       20 SETTABLEKS                       R7 R6 K12 ["Name"]
       22 GETTABLEKS                       R7 R3 K5 ["document"]
       24 SETTABLEKS                       R7 R6 K2 ["Parent"]
       26 GETTABLEKS                       R8 R0 K13 ["hosts"]
       28 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       30 MOVE                             R9 R6
       31 GETIMPORT                        R7 K16 [table.insert]
       33 CALL                             R7 2 0
       34 DUPTABLE                         R7 K23 [{"type", "templateAst", "templateId", "params", "children", "host"}]
       35 LOADK                            R8 K24 ["Ref"]
       36 SETTABLEKS                       R8 R7 K17 ["type"]
       38 SETTABLEKS                       R1 R7 K18 ["templateAst"]
       40 LOADK                            R9 K25 ["/custom/%*"]
       41 GETTABLEKS                       R11 R1 K11 ["name"]
       43 NAMECALL                         R9 R9 K26 ["format"]
       45 CALL                             R9 2 1
       46 MOVE                             R8 R9
       47 SETTABLEKS                       R8 R7 K19 ["templateId"]
       49 SETTABLEKS                       R2 R7 K20 ["params"]
       51 NEWTABLE                         R8 0 0
       53 SETTABLEKS                       R8 R7 K21 ["children"]
       55 SETTABLEKS                       R6 R7 K22 ["host"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R9 R0 K27 ["publish"]
       60 MOVE                             R10 R7
       61 MOVE                             R11 R6
       62 CALL                             R8 3 1
       63 GETTABLEKS                       R9 R0 K27 ["publish"]
       65 MOVE                             R10 R8
       66 CALL                             R9 1 0
       67 MOVE                             R9 R7
       68 MOVE                             R10 R5
       69 MOVE                             R11 R4
       70 CALL                             R10 1 -1
       71 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Blox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K4 ["Parent"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["data"]
       17 GETTABLEKS                       R3 R3 K8 ["WorkQueue"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K9 ["types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K10 ["runtime"]
       29 GETTABLEKS                       R5 R5 K11 ["makeElement"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K10 ["runtime"]
       36 GETTABLEKS                       R6 R6 K12 ["update"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 8 0
       41 SETTABLEKS                       R6 R6 K13 ["__index"]
       43 DUPCLOSURE                       R7 K14 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R7 R6 K15 ["new"]
       49 DUPCLOSURE                       R7 K16 [PROTO_3]
       50 SETTABLEKS                       R7 R6 K17 ["dispose"]
       52 DUPCLOSURE                       R7 K18 [PROTO_4]
       53 SETTABLEKS                       R7 R6 K19 ["flushNow"]
       55 DUPCLOSURE                       R7 K20 [PROTO_5]
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R7 R6 K21 ["instantiate"]
       60 RETURN                           R6 1
