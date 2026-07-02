PROTO_0:
        0 JUMPIFNOT                        R2 ; [+5]
        1 LOADN                            R3 20
        2 JUMPIFNOTLT                      R3 R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R0 K0 ["children"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["name"]
       13 JUMPIFNOTEQKS                    R8 K2 ["TAG"] ; [+6]
       15 GETTABLEKS                       R8 R7 K3 ["text"]
       17 JUMPIFNOTEQ                      R8 R1 ; [+2]
       19 RETURN                           R7 1
       20 GETTABLEKS                       R8 R7 K0 ["children"]
       22 JUMPIFNOT                        R8 ; [+8]
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R7
       25 MOVE                             R10 R1
       26 ORK                              R12 R2 K5 [0]
       27 ADDK                             R11 R12 K4 [1]
       28 CALL                             R8 3 1
       29 JUMPIFNOT                        R8 ; [+1]
       30 RETURN                           R8 1
       31 FORGLOOP                         R3 2 ; [-21]
       33 LOADNIL                          R3
       34 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{[1] = "Untitled", ["summary"] = "", ["difficulty"] = "", ["categories"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K5 ["categories"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 LOADK                            R4 K7 ["TutorialInfo"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+58]
       10 GETTABLEKS                       R3 R2 K8 ["attributes"]
       12 JUMPIFNOT                        R3 ; [+55]
       13 GETTABLEKS                       R5 R2 K8 ["attributes"]
       15 GETTABLEKS                       R5 R5 K0 ["title"]
       17 ORK                              R4 R5 K1 ["Untitled"]
       18 FASTCALL1                        TOSTRING R4 ; [+2]
       19 GETIMPORT                        R3 K10 [tostring]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R1 K0 ["title"]
       24 GETTABLEKS                       R5 R2 K8 ["attributes"]
       26 GETTABLEKS                       R5 R5 K2 ["summary"]
       28 ORK                              R4 R5 K3 [""]
       29 FASTCALL1                        TOSTRING R4 ; [+2]
       30 GETIMPORT                        R3 K10 [tostring]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R1 K2 ["summary"]
       35 GETTABLEKS                       R5 R2 K8 ["attributes"]
       37 GETTABLEKS                       R5 R5 K4 ["difficulty"]
       39 ORK                              R4 R5 K3 [""]
       40 FASTCALL1                        TOSTRING R4 ; [+2]
       41 GETIMPORT                        R3 K10 [tostring]
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R3 R1 K4 ["difficulty"]
       46 GETTABLEKS                       R4 R2 K8 ["attributes"]
       48 GETTABLEKS                       R4 R4 K5 ["categories"]
       50 JUMPIFNOT                        R4 ; [+13]
       51 GETIMPORT                        R3 K13 [string.split]
       53 GETTABLEKS                       R5 R2 K8 ["attributes"]
       55 GETTABLEKS                       R5 R5 K5 ["categories"]
       57 FASTCALL1                        TOSTRING R5 ; [+2]
       58 GETIMPORT                        R4 K10 [tostring]
       60 CALL                             R4 1 1
       61 LOADK                            R5 K14 [", "]
       62 CALL                             R3 2 1
       63 JUMP                             ; [+2]
       64 NEWTABLE                         R3 0 0
       66 SETTABLEKS                       R3 R1 K5 ["categories"]
       68 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"ast"}]
        1 DUPTABLE                         R2 K7 [{["name"] = "ROOT", ["offset"] = 1, ["children"]}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K6 ["children"]
        6 SETTABLEKS                       R2 R1 K0 ["ast"]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 LOADK                            R4 K8 ["TutorialHome"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETTABLEKS                       R3 R1 K0 ["ast"]
       15 GETTABLEKS                       R4 R2 K6 ["children"]
       17 SETTABLEKS                       R4 R3 K6 ["children"]
       19 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["children"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["name"]
        9 JUMPIFNOTEQKS                    R7 K2 ["TAG"] ; [+32]
       11 GETTABLEKS                       R7 R6 K3 ["text"]
       13 JUMPIFNOTEQKS                    R7 K4 ["TutorialSection"] ; [+28]
       15 DUPTABLE                         R7 K7 [{"title", "ast"}]
       16 GETTABLEKS                       R9 R6 K8 ["attributes"]
       18 JUMPIFNOT                        R9 ; [+6]
       19 GETTABLEKS                       R9 R6 K8 ["attributes"]
       21 GETTABLEKS                       R9 R9 K5 ["title"]
       23 ORK                              R8 R9 K9 [""]
       24 JUMP                             ; [+1]
       25 LOADK                            R8 K9 [""]
       26 SETTABLEKS                       R8 R7 K5 ["title"]
       28 DUPTABLE                         R8 K13 [{["name"] = "ROOT", ["offset"] = 1, [3]}]
       29 GETTABLEKS                       R9 R6 K0 ["children"]
       31 SETTABLEKS                       R9 R8 K0 ["children"]
       33 SETTABLEKS                       R8 R7 K6 ["ast"]
       35 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       37 MOVE                             R9 R1
       38 MOVE                             R10 R7
       39 GETIMPORT                        R8 K16 [table.insert]
       41 CALL                             R8 2 0
       42 FORGLOOP                         R2 2 ; [-36]
       44 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["safeParse"]
        9 MOVE                             R3 R1
       10 DUPTABLE                         R4 K2 [{"inlineTags"}]
       11 DUPTABLE                         R5 K5 [{["ActionButton"] = True}]
       12 SETTABLEKS                       R5 R4 K1 ["inlineTags"]
       14 CALL                             R2 2 2
       15 JUMPIF                           R2 ; [+11]
       16 GETIMPORT                        R4 K7 [warn]
       18 LOADK                            R6 K8 ["Tutorial failed to parse: %*"]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 CALL                             R4 1 0
       25 LOADNIL                          R4
       26 RETURN                           R4 1
       27 DUPTABLE                         R4 K13 [{"info", "home", "sections"}]
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K10 ["info"]
       33 GETUPVAL                         R5 3
       34 MOVE                             R6 R3
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K11 ["home"]
       38 GETUPVAL                         R5 4
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R4 K12 ["sections"]
       43 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["MarkdownParser"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K8 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["getTutorialSource"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R5
       36 DUPCLOSURE                       R6 K14 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R7 K15 [PROTO_2]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R8 K16 [PROTO_3]
       41 DUPCLOSURE                       R9 K17 [PROTO_4]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R8
       47 RETURN                           R9 1
