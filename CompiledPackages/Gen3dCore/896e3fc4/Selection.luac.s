PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveSingleMeshPart"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveSingleMeshPart"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["selection"]
        2 GETTABLEKS                       R1 R1 K1 ["get"]
        4 CALL                             R1 0 1
        5 LENGTH                           R2 R1
        6 JUMPIFEQKN                       R2 K2 [1] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEN                        R2 R1 1
       11 DUPTABLE                         R3 K8 [{"uniqueId", "name", "className", "isSegmentable", "isTextureable"}]
       12 GETTABLEKS                       R4 R0 K9 ["instances"]
       14 GETTABLEKS                       R4 R4 K10 ["getUniqueId"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K3 ["uniqueId"]
       20 GETTABLEKS                       R4 R2 K11 ["Name"]
       22 SETTABLEKS                       R4 R3 K4 ["name"]
       24 GETTABLEKS                       R4 R2 K12 ["ClassName"]
       26 SETTABLEKS                       R4 R3 K5 ["className"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K13 ["isSegmentableInstance"]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K6 ["isSegmentable"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K14 ["isTextureableInstance"]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K7 ["isTextureable"]
       42 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["GenerationUtils"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["HostSurface"]
       18 CALL                             R1 1 1
       19 NEWTABLE                         R2 4 0
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K8 ["isSegmentableInstance"]
       25 DUPCLOSURE                       R3 K9 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R3 R2 K10 ["isTextureableInstance"]
       29 DUPCLOSURE                       R3 K11 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K12 ["getSelectedMeshRef"]
       33 RETURN                           R2 1
