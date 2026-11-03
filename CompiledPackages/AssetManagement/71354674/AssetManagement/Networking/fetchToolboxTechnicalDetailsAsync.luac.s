PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["objectMeshSummary"]
        2 GETTABLEKS                       R2 R0 K1 ["instanceCounts"]
        4 GETTABLEKS                       R5 R0 K2 ["description"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K4 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+8]
       12 GETTABLEKS                       R4 R0 K2 ["description"]
       14 JUMPIFEQKS                       R4 K6 [""] ; [+4]
       16 GETTABLEKS                       R3 R0 K2 ["description"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 DUPTABLE                         R4 K15 [{"TriangleCount", "VertexCount", "ScriptCount", "MeshPartCount", "AnimationCount", "AudioCount", "DecalCount", "ToolCount"}]
       21 MOVE                             R5 R1
       22 JUMPIFNOT                        R5 ; [+2]
       23 GETTABLEKS                       R5 R1 K16 ["triangles"]
       25 SETTABLEKS                       R5 R4 K7 ["TriangleCount"]
       27 MOVE                             R5 R1
       28 JUMPIFNOT                        R5 ; [+2]
       29 GETTABLEKS                       R5 R1 K17 ["vertices"]
       31 SETTABLEKS                       R5 R4 K8 ["VertexCount"]
       33 MOVE                             R5 R2
       34 JUMPIFNOT                        R5 ; [+2]
       35 GETTABLEKS                       R5 R2 K18 ["script"]
       37 SETTABLEKS                       R5 R4 K9 ["ScriptCount"]
       39 MOVE                             R5 R2
       40 JUMPIFNOT                        R5 ; [+2]
       41 GETTABLEKS                       R5 R2 K19 ["meshPart"]
       43 SETTABLEKS                       R5 R4 K10 ["MeshPartCount"]
       45 MOVE                             R5 R2
       46 JUMPIFNOT                        R5 ; [+2]
       47 GETTABLEKS                       R5 R2 K20 ["animation"]
       49 SETTABLEKS                       R5 R4 K11 ["AnimationCount"]
       51 MOVE                             R5 R2
       52 JUMPIFNOT                        R5 ; [+2]
       53 GETTABLEKS                       R5 R2 K21 ["audio"]
       55 SETTABLEKS                       R5 R4 K12 ["AudioCount"]
       57 MOVE                             R5 R2
       58 JUMPIFNOT                        R5 ; [+2]
       59 GETTABLEKS                       R5 R2 K22 ["decal"]
       61 SETTABLEKS                       R5 R4 K13 ["DecalCount"]
       63 MOVE                             R5 R2
       64 JUMPIFNOT                        R5 ; [+2]
       65 GETTABLEKS                       R5 R2 K23 ["tool"]
       67 SETTABLEKS                       R5 R4 K14 ["ToolCount"]
       69 DUPTABLE                         R5 K28 [{"Description", "HasScripts", "Duration", "Counts"}]
       70 SETTABLEKS                       R3 R5 K24 ["Description"]
       72 GETTABLEKS                       R6 R0 K29 ["hasScripts"]
       74 SETTABLEKS                       R6 R5 K25 ["HasScripts"]
       76 GETTABLEKS                       R6 R0 K30 ["durationSeconds"]
       78 SETTABLEKS                       R6 R5 K26 ["Duration"]
       80 SETTABLEKS                       R4 R5 K27 ["Counts"]
       82 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["asset"]
        7 JUMPIF                           R1 ; [+3]
        8 NEWTABLE                         R2 0 0
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetToolboxAssetRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K1 ["makeRequest"]
        7 CALL                             R1 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_1]
        9 CAPTURE                          UPVAL U1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["reject"]
       13 NAMECALL                         R1 R1 K4 ["andThen"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Networking"]
       23 GETTABLEKS                       R4 R4 K9 ["Shared"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K7 ["Networking"]
       35 GETTABLEKS                       R6 R6 K10 ["Urls"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K11 [PROTO_0]
       39 DUPCLOSURE                       R7 K12 [PROTO_2]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1
