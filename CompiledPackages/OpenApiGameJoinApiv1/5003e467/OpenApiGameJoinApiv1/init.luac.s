PROTO_0:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["baseUrl"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["baseUrl"]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["baseUrl"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R4 R1 K1 ["pathPrefix"]
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R1 K1 ["pathPrefix"]
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K1 ["pathPrefix"]
       20 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       22 MOVE                             R5 R2
       23 LOADK                            R6 K2 ["baseUrl is required: pass { baseUrl = ... } to new"]
       24 GETIMPORT                        R4 K4 [assert]
       26 CALL                             R4 2 0
       27 GETIMPORT                        R4 K7 [string.gsub]
       29 MOVE                             R5 R2
       30 LOADK                            R6 K8 ["/+$"]
       31 LOADK                            R7 K9 [""]
       32 CALL                             R4 3 1
       33 JUMPIFNOT                        R3 ; [+7]
       34 GETIMPORT                        R6 K11 [string.match]
       36 MOVE                             R7 R3
       37 LOADK                            R8 K12 ["^/*(.-)/*$"]
       38 CALL                             R6 2 1
       39 ORK                              R5 R6 K9 [""]
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K9 [""]
       42 DUPTABLE                         R6 K14 [{"runtime", "baseUrl"}]
       43 SETTABLEKS                       R0 R6 K13 ["runtime"]
       45 JUMPIFEQKS                       R5 K9 [""] ; [+8]
       47 LOADK                            R7 K15 ["%*/%*"]
       48 MOVE                             R9 R4
       49 MOVE                             R10 R5
       50 NAMECALL                         R7 R7 K16 ["format"]
       52 CALL                             R7 3 1
       53 JUMP                             ; [+1]
       54 MOVE                             R7 R4
       55 SETTABLEKS                       R7 R6 K0 ["baseUrl"]
       57 GETIMPORT                        R7 K19 [table.freeze]
       59 DUPTABLE                         R8 K22 [{"GameJoin", "Teleport"}]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K23 ["new"]
       63 MOVE                             R10 R6
       64 CALL                             R9 1 1
       65 SETTABLEKS                       R9 R8 K20 ["GameJoin"]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K23 ["new"]
       70 MOVE                             R10 R6
       71 CALL                             R9 1 1
       72 SETTABLEKS                       R9 R8 K21 ["Teleport"]
       74 CALL                             R7 1 -1
       75 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["@self/Api/GameJoin"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K1 [require]
        7 LOADK                            R2 K3 ["./OpenApi"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K1 [require]
       11 LOADK                            R3 K4 ["@self/PathMetadata"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K1 [require]
       15 LOADK                            R4 K5 ["@self/Api/Teleport"]
       16 CALL                             R3 1 1
       17 DUPCLOSURE                       R4 K6 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 GETIMPORT                        R5 K9 [table.freeze]
       23 DUPTABLE                         R6 K11 [{"new"}]
       24 SETTABLEKS                       R4 R6 K10 ["new"]
       26 CALL                             R5 1 -1
       27 RETURN                           R5 -1
