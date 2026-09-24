PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 NOT                              R1 R2
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["filter"]
        3 MOVE                             R4 R0
        4 DUPCLOSURE                       R5 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R3 2 1
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["toJSBoolean"]
       18 GETTABLEKS                       R5 R1 K4 ["selectProjects"]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+7]
       22 FASTCALL2K                       TABLE_INSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["--selectProjects"]
       26 GETIMPORT                        R4 K8 [table.insert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K3 ["toJSBoolean"]
       32 GETTABLEKS                       R5 R1 K9 ["ignoreProjects"]
       34 CALL                             R4 1 1
       35 JUMPIFNOT                        R4 ; [+7]
       36 FASTCALL2K                       TABLE_INSERT R3 K10 ; [+5]
       38 MOVE                             R5 R3
       39 LOADK                            R6 K10 ["--ignoreProjects"]
       40 GETIMPORT                        R4 K8 [table.insert]
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K11 ["yellow"]
       46 LOADK                            R8 K12 ["You provided values for %s but %s.\n"]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K13 ["join"]
       50 MOVE                             R12 R3
       51 LOADK                            R13 K14 [" and "]
       52 CALL                             R11 2 -1
       53 FASTCALL                         TOSTRING ; [+2]
       54 GETIMPORT                        R10 K16 [tostring]
       56 CALL                             R10 -1 1
       57 JUMPIFNOTEQKN                    R2 K17 [1] ; [+3]
       59 LOADK                            R11 K18 ["a project does not have a name"]
       60 JUMP                             ; [+9]
       61 LOADK                            R11 K19 ["%s projects do not have a name"]
       62 FASTCALL1                        TOSTRING R2 ; [+3]
       63 MOVE                             R14 R2
       64 GETIMPORT                        R13 K16 [tostring]
       66 CALL                             R13 1 1
       67 NAMECALL                         R11 R11 K20 ["format"]
       69 CALL                             R11 2 1
       70 NAMECALL                         R8 R8 K20 ["format"]
       72 CALL                             R8 3 1
       73 MOVE                             R6 R8
       74 LOADK                            R7 K21 ["Set displayName in the config of all projects in order to disable this warning.\n"]
       75 CONCAT                           R5 R6 R7
       76 CALL                             R4 1 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["ChalkLua"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["JestTypes"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K2 ["Parent"]
       34 GETTABLEKS                       R8 R8 K10 ["getProjectDisplayName"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R7 R7 K11 ["default"]
       39 DUPCLOSURE                       R8 K12 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R8 R4 K11 ["default"]
       46 RETURN                           R4 1
