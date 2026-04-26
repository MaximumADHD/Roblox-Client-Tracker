PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUnparentedInstancesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K2 [ipairs]
        8 GETTABLEKS                       R3 R0 K0 ["Children"]
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 GETTABLEKS                       R7 R6 K3 ["Name"]
       14 JUMPIFEQKS                       R7 K4 ["(unknown)"] ; [+11]
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R6
       18 CALL                             R7 1 0
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 [inext] ; [-15]
       28 SETTABLEKS                       R1 R0 K0 ["Children"]
       30 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+20]
       13 GETIMPORT                        R3 K7 [warn]
       15 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 DUPTABLE                         R3 K13 [{"Id", "Name", "Size", "Children"}]
       19 LOADN                            R4 0
       20 SETTABLEKS                       R4 R3 K9 ["Id"]
       22 LOADK                            R4 K14 ["Root"]
       23 SETTABLEKS                       R4 R3 K10 ["Name"]
       25 LOADN                            R4 0
       26 SETTABLEKS                       R4 R3 K11 ["Size"]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R3 K12 ["Children"]
       32 RETURN                           R3 1
       33 DUPCLOSURE                       R3 K15 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 MOVE                             R4 R3
       36 MOVE                             R5 R2
       37 CALL                             R4 1 0
       38 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["FetchUnparentedInstances"]
        1 DUPCLOSURE                       R5 K1 [PROTO_2]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
