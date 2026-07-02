PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R6 K2 ["Type"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
       12 GETTABLEKS                       R8 R8 K4 ["Facs"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R6
       20 GETIMPORT                        R7 K7 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-17]
       25 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FacsControlToRegionMap"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 DUPTABLE                         R7 K7 [{["Name"], ["Instance"] = "Root", ["Type"]}]
       10 SETTABLEKS                       R5 R7 K3 ["Name"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K8 ["TRACK_TYPES"]
       15 GETTABLEKS                       R8 R8 K9 ["Facs"]
       17 SETTABLEKS                       R8 R7 K6 ["Type"]
       19 SETTABLE                         R7 R1 R5
       20 FORGLOOP                         R2 2 ; [-12]
       22 GETIMPORT                        R2 K1 [pairs]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 3
       26 FORGPREP_NEXT                    R2
       27 GETTABLEKS                       R7 R6 K3 ["Name"]
       29 LOADNIL                          R8
       30 SETTABLE                         R8 R1 R7
       31 FORGLOOP                         R2 2 ; [-5]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K10 ["Dictionary"]
       36 GETTABLEKS                       R2 R2 K11 ["values"]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 1
       40 MOVE                             R1 R2
       41 GETIMPORT                        R2 K14 [table.sort]
       43 MOVE                             R3 R1
       44 DUPCLOSURE                       R4 K15 [PROTO_1]
       45 CALL                             R2 2 0
       46 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K12 ["filterFacsTracks"]
       29 DUPCLOSURE                       R4 K13 [PROTO_2]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K14 ["getUnusedFacs"]
       34 RETURN                           R3 1
