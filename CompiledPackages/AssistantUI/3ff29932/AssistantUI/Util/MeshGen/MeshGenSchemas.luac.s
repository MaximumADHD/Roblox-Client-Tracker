PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["[^\n]+"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K2 ["^([^|]+)|([^|]+)|(.+)$"]
        8 NAMECALL                         R7 R5 K3 ["match"]
       10 CALL                             R7 2 3
       11 JUMPIFNOT                        R7 ; [+40]
       12 JUMPIFNOT                        R8 ; [+39]
       13 JUMPIFNOT                        R9 ; [+38]
       14 NEWTABLE                         R10 0 0
       16 LOADK                            R13 K4 ["[^,]+"]
       17 NAMECALL                         R11 R9 K1 ["gmatch"]
       19 CALL                             R11 2 3
       20 FORGPREP                         R11
       21 LOADK                            R18 K5 ["^%s*(.-)%s*$"]
       22 NAMECALL                         R16 R14 K3 ["match"]
       24 CALL                             R16 2 1
       25 JUMPIFNOT                        R16 ; [+11]
       26 LENGTH                           R17 R16
       27 LOADN                            R18 0
       28 JUMPIFNOTLT                      R18 R17 ; [+8]
       30 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
       32 MOVE                             R18 R10
       33 MOVE                             R19 R16
       34 GETIMPORT                        R17 K8 [table.insert]
       36 CALL                             R17 2 0
       37 FORGLOOP                         R11 1 ; [-17]
       39 DUPTABLE                         R13 K12 [{"id", "name", "parts"}]
       40 SETTABLEKS                       R7 R13 K9 ["id"]
       42 SETTABLEKS                       R8 R13 K10 ["name"]
       44 SETTABLEKS                       R10 R13 K11 ["parts"]
       46 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
       48 MOVE                             R12 R1
       49 GETIMPORT                        R11 K8 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R2 1 ; [-46]
       54 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["FStringAssistantMeshGenSchemaData"]
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 MOVE                             R4 R3
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 DUPTABLE                         R5 K10 [{"SCHEMAS"}]
       19 SETTABLEKS                       R4 R5 K9 ["SCHEMAS"]
       21 RETURN                           R5 1
