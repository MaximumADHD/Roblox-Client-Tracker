PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["action"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETTABLEKS                       R3 R1 K1 ["uuid"]
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Action must have action and uuid fields"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R2 K7 [table.clone]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 MOVE                             R0 R2
       16 GETTABLEKS                       R2 R1 K0 ["action"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K8 ["GENERATION_ACTIONS"]
       21 GETTABLEKS                       R3 R3 K9 ["UPDATE"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+31]
       25 GETTABLEKS                       R3 R1 K10 ["data"]
       27 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       29 LOADK                            R4 K11 ["Action must have data field"]
       30 GETIMPORT                        R2 K4 [assert]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R3 R1 K1 ["uuid"]
       35 GETTABLE                         R2 R0 R3
       36 JUMPIF                           R2 ; [+5]
       37 GETTABLEKS                       R2 R1 K1 ["uuid"]
       39 NEWTABLE                         R3 0 0
       41 SETTABLE                         R3 R0 R2
       42 GETTABLEKS                       R2 R1 K1 ["uuid"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K12 ["join"]
       47 GETTABLEKS                       R5 R1 K1 ["uuid"]
       49 GETTABLE                         R4 R0 R5
       50 GETTABLEKS                       R5 R1 K10 ["data"]
       52 CALL                             R3 2 1
       53 SETTABLE                         R3 R0 R2
       54 RETURN                           R0 1
       55 GETTABLEKS                       R2 R1 K0 ["action"]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K8 ["GENERATION_ACTIONS"]
       60 GETTABLEKS                       R3 R3 K13 ["REMOVE"]
       62 JUMPIFNOTEQ                      R2 R3 ; [+6]
       64 GETTABLEKS                       R2 R1 K1 ["uuid"]
       66 LOADNIL                          R3
       67 SETTABLE                         R3 R0 R2
       68 RETURN                           R0 1
       69 GETIMPORT                        R2 K15 [error]
       71 LOADK                            R4 K16 ["Invalid action: %*"]
       72 GETTABLEKS                       R6 R1 K0 ["action"]
       74 NAMECALL                         R4 R4 K17 ["format"]
       76 CALL                             R4 2 1
       77 MOVE                             R3 R4
       78 CALL                             R2 1 0
       79 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
