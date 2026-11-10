PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R3 R1 K1 ["CFrame"]
        6 GETTABLEKS                       R3 R3 K2 ["Position"]
        8 GETTABLEKS                       R5 R1 K1 ["CFrame"]
       10 GETTABLEKS                       R5 R5 K3 ["LookVector"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K4 ["VIEWPORT_BOUNDING_BOX_DISTANCE"]
       15 MUL                              R4 R5 R6
       16 ADD                              R2 R3 R4
       17 JUMP                             ; [+1]
       18 LOADK                            R2 K5 [{0, 0, 0}]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["VIEWPORT_BOUNDING_BOX_SIZE"]
       22 GETIMPORT                        R4 K8 [CFrame.new]
       24 GETTABLEKS                       R6 R2 K9 ["X"]
       26 GETTABLEKS                       R8 R3 K11 ["Y"]
       28 DIVK                             R7 R8 K10 [2]
       29 GETTABLEKS                       R8 R2 K12 ["Z"]
       31 FASTCALL                         VECTOR ; [+2]
       32 GETIMPORT                        R5 K14 [Vector3.new]
       34 CALL                             R5 3 1
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K16 [Instance.new]
       38 LOADK                            R6 K17 ["Part"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K18 ["VIEWPORT_BOUNDING_BOX_NAME"]
       43 SETTABLEKS                       R6 R5 K19 ["Name"]
       45 SETTABLEKS                       R3 R5 K20 ["Size"]
       47 SETTABLEKS                       R4 R5 K1 ["CFrame"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K21 ["Anchored"]
       52 LOADK                            R6 K22 [0.6]
       53 SETTABLEKS                       R6 R5 K23 ["Transparency"]
       55 GETIMPORT                        R6 K26 [Color3.fromRGB]
       57 LOADN                            R7 0
       58 LOADN                            R8 170
       59 LOADN                            R9 255
       60 CALL                             R6 3 1
       61 SETTABLEKS                       R6 R5 K27 ["Color"]
       63 GETIMPORT                        R6 K31 [Enum.Material.SmoothPlastic]
       65 SETTABLEKS                       R6 R5 K29 ["Material"]
       67 GETUPVAL                         R6 0
       68 SETTABLEKS                       R6 R5 K32 ["Parent"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K33 ["VIEWPORT_BOUNDING_BOX_TAG"]
       73 NAMECALL                         R6 R5 K34 ["AddTag"]
       75 CALL                             R6 2 0
       76 GETTABLEKS                       R6 R0 K35 ["setSelection"]
       78 NEWTABLE                         R7 0 1
       80 MOVE                             R8 R5
       81 SETLIST                          R7 R8 1 [1]
       83 CALL                             R6 1 0
       84 GETTABLEKS                       R6 R0 K36 ["activateScaleTool"]
       86 CALL                             R6 0 0
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["MeshGenConstants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K11 ["createViewportBoundingBox"]
       23 RETURN                           R2 1
