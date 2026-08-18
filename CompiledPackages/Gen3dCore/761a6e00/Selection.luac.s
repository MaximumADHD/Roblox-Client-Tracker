PROTO_0:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["Model"]
        8 NAMECALL                         R1 R0 K1 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R1 0
       13 RETURN                           R1 1
       14 LOADNIL                          R1
       15 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       17 CALL                             R2 1 3
       18 FORGPREP                         R2
       19 LOADK                            R9 K0 ["MeshPart"]
       20 NAMECALL                         R7 R6 K1 ["IsA"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+4]
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADB                            R7 0
       26 RETURN                           R7 1
       27 MOVE                             R1 R6
       28 FORGLOOP                         R2 2 ; [-10]
       30 JUMPIFNOTEQKNIL                  R1 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["selection"]
        2 GETTABLEKS                       R1 R1 K1 ["get"]
        4 CALL                             R1 0 1
        5 LENGTH                           R2 R1
        6 JUMPIFEQKN                       R2 K2 [1] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEN                        R2 R1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["isSegmentableInstance"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 DUPTABLE                         R3 K7 [{"uniqueId", "name", "className"}]
       20 GETTABLEKS                       R4 R0 K8 ["instances"]
       22 GETTABLEKS                       R4 R4 K9 ["getUniqueId"]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K4 ["uniqueId"]
       28 GETTABLEKS                       R4 R2 K10 ["Name"]
       30 SETTABLEKS                       R4 R3 K5 ["name"]
       32 GETTABLEKS                       R4 R2 K11 ["ClassName"]
       34 SETTABLEKS                       R4 R3 K6 ["className"]
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HostSurface"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 2 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["isSegmentableInstance"]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R1 K9 ["getSelectedMeshRef"]
       19 RETURN                           R1 1
