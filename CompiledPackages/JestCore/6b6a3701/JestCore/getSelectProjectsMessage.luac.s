PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+5]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        6 GETTABLEKS                       R4 R0 K1 ["ignoreProjects"]
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R2 R0 K2 ["selectProjects"]
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R2 R0 K1 ["ignoreProjects"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K3 ["yellow"]
       20 LOADK                            R2 K4 ["You provided values for --selectProjects and --ignoreProjects, but no projects were found matching the selection.\nAre you ignoring all the selected projects?\n"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
       26 GETTABLEKS                       R2 R0 K1 ["ignoreProjects"]
       28 CALL                             R1 1 1
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K3 ["yellow"]
       33 LOADK                            R2 K5 ["You provided values for --ignoreProjects, but no projects were found matching the selection.\nAre you ignoring all projects?\n"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
       39 GETTABLEKS                       R2 R0 K2 ["selectProjects"]
       41 CALL                             R1 1 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R1 R2 K3 ["yellow"]
       46 LOADK                            R2 K6 ["You provided values for --selectProjects but no projects were found matching the selection.\n"]
       47 CALL                             R1 1 -1
       48 RETURN                           R1 -1
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R1 R2 K3 ["yellow"]
       52 LOADK                            R2 K7 ["No projects were found.\n"]
       53 CALL                             R1 1 -1
       54 RETURN                           R1 -1

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+14]
        3 GETUPVAL                         R1 0
        4 GETTABLEN                        R2 R0 1
        5 CALL                             R1 1 1
        6 LOADK                            R2 K1 ["Running one project: %s\n"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["bold"]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 -1
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K4 ["join"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K5 ["sort"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K6 ["map"]
       25 MOVE                             R4 R0
       26 GETUPVAL                         R5 3
       27 CALL                             R3 2 -1
       28 CALL                             R2 -1 1
       29 LOADK                            R3 K7 ["\n"]
       30 CALL                             R1 2 1
       31 LOADK                            R2 K8 ["Running %s projects:\n%s\n"]
       32 LENGTH                           R5 R0
       33 FASTCALL1                        TOSTRING R5 ; [+2]
       34 GETIMPORT                        R4 K10 [tostring]
       36 CALL                             R4 1 1
       37 FASTCALL1                        TOSTRING R1 ; [+3]
       38 MOVE                             R6 R1
       39 GETIMPORT                        R5 K10 [tostring]
       41 CALL                             R5 1 1
       42 NAMECALL                         R2 R2 K3 ["format"]
       44 CALL                             R2 3 -1
       45 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["bold"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K2 ["<unnamed project>"]
       16 LOADK                            R3 K3 ["- %s"]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R6 R2
       19 GETIMPORT                        R5 K5 [tostring]
       21 CALL                             R5 1 1
       22 NAMECALL                         R3 R3 K6 ["format"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       28 GETIMPORT                        R8 K4 [require]
       30 GETIMPORT                        R11 K1 [script]
       32 GETTABLEKS                       R10 R11 K2 ["Parent"]
       34 GETTABLEKS                       R9 R10 K10 ["getProjectDisplayName"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R7 R8 K11 ["default"]
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 LOADNIL                          R10
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          REF R8
       44 CAPTURE                          REF R9
       45 SETTABLEKS                       R11 R4 K11 ["default"]
       47 DUPCLOSURE                       R8 K12 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          REF R10
       55 DUPCLOSURE                       R10 K13 [PROTO_3]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CLOSEUPVALS                      R8
       60 RETURN                           R4 1
