PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 GETTABLE                         R1 R2 R3
        7 MOVE                             R3 R1
        8 GETIMPORT                        R4 K4 [table.concat]
       10 NEWTABLE                         R5 0 2
       12 LOADK                            R6 K5 ["Unsupported property type"]
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R8 R0
       15 GETIMPORT                        R7 K1 [type]
       17 CALL                             R7 1 1
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R4 1 -1
       21 FASTCALL                         ASSERT ; [+2]
       22 GETIMPORT                        R2 K7 [assert]
       24 CALL                             R2 -1 0
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Components"]
       11 GETTABLEKS                       R1 R1 K6 ["Properties"]
       13 GETTABLEKS                       R1 R1 K7 ["Types"]
       15 GETIMPORT                        R2 K9 [require]
       17 GETTABLEKS                       R3 R1 K10 ["BooleanProperty"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K11 ["EnumProperty"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R1 K12 ["NumberProperty"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R1 K13 ["StringProperty"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R7 R1 K14 ["VectorProperty"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 8 0
       42 SETTABLEKS                       R2 R7 K15 ["boolean"]
       44 SETTABLEKS                       R3 R7 K16 ["userdata"]
       46 SETTABLEKS                       R4 R7 K17 ["number"]
       48 SETTABLEKS                       R5 R7 K18 ["string"]
       50 SETTABLEKS                       R6 R7 K19 ["vector"]
       52 DUPCLOSURE                       R8 K20 [PROTO_0]
       53 CAPTURE                          VAL R7
       54 RETURN                           R8 1
