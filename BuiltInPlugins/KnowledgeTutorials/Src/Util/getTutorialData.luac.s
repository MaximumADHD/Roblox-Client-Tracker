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
        0 DUPTABLE                         R1 K4 [{"title", "summary", "difficulty", "categories"}]
        1 LOADK                            R2 K5 ["Untitled"]
        2 SETTABLEKS                       R2 R1 K0 ["title"]
        4 LOADK                            R2 K6 [""]
        5 SETTABLEKS                       R2 R1 K1 ["summary"]
        7 LOADK                            R2 K6 [""]
        8 SETTABLEKS                       R2 R1 K2 ["difficulty"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["categories"]
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R0
       16 LOADK                            R4 K7 ["TutorialInfo"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+58]
       19 GETTABLEKS                       R3 R2 K8 ["attributes"]
       21 JUMPIFNOT                        R3 ; [+55]
       22 GETTABLEKS                       R5 R2 K8 ["attributes"]
       24 GETTABLEKS                       R5 R5 K0 ["title"]
       26 ORK                              R4 R5 K5 ["Untitled"]
       27 FASTCALL1                        TOSTRING R4 ; [+2]
       28 GETIMPORT                        R3 K10 [tostring]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R1 K0 ["title"]
       33 GETTABLEKS                       R5 R2 K8 ["attributes"]
       35 GETTABLEKS                       R5 R5 K1 ["summary"]
       37 ORK                              R4 R5 K6 [""]
       38 FASTCALL1                        TOSTRING R4 ; [+2]
       39 GETIMPORT                        R3 K10 [tostring]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R1 K1 ["summary"]
       44 GETTABLEKS                       R5 R2 K8 ["attributes"]
       46 GETTABLEKS                       R5 R5 K2 ["difficulty"]
       48 ORK                              R4 R5 K6 [""]
       49 FASTCALL1                        TOSTRING R4 ; [+2]
       50 GETIMPORT                        R3 K10 [tostring]
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R3 R1 K2 ["difficulty"]
       55 GETTABLEKS                       R4 R2 K8 ["attributes"]
       57 GETTABLEKS                       R4 R4 K3 ["categories"]
       59 JUMPIFNOT                        R4 ; [+13]
       60 GETIMPORT                        R3 K13 [string.split]
       62 GETTABLEKS                       R5 R2 K8 ["attributes"]
       64 GETTABLEKS                       R5 R5 K3 ["categories"]
       66 FASTCALL1                        TOSTRING R5 ; [+2]
       67 GETIMPORT                        R4 K10 [tostring]
       69 CALL                             R4 1 1
       70 LOADK                            R5 K14 [", "]
       71 CALL                             R3 2 1
       72 JUMP                             ; [+2]
       73 NEWTABLE                         R3 0 0
       75 SETTABLEKS                       R3 R1 K3 ["categories"]
       77 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"ast"}]
        1 DUPTABLE                         R2 K5 [{"name", "offset", "children"}]
        2 LOADK                            R3 K6 ["ROOT"]
        3 SETTABLEKS                       R3 R2 K2 ["name"]
        5 LOADN                            R3 1
        6 SETTABLEKS                       R3 R2 K3 ["offset"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K4 ["children"]
       12 SETTABLEKS                       R2 R1 K0 ["ast"]
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R0
       16 LOADK                            R4 K7 ["TutorialHome"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETTABLEKS                       R3 R1 K0 ["ast"]
       21 GETTABLEKS                       R4 R2 K4 ["children"]
       23 SETTABLEKS                       R4 R3 K4 ["children"]
       25 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["children"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["name"]
        9 JUMPIFNOTEQKS                    R7 K2 ["TAG"] ; [+38]
       11 GETTABLEKS                       R7 R6 K3 ["text"]
       13 JUMPIFNOTEQKS                    R7 K4 ["TutorialSection"] ; [+34]
       15 DUPTABLE                         R7 K7 [{"title", "ast"}]
       16 GETTABLEKS                       R9 R6 K8 ["attributes"]
       18 JUMPIFNOT                        R9 ; [+6]
       19 GETTABLEKS                       R9 R6 K8 ["attributes"]
       21 GETTABLEKS                       R9 R9 K5 ["title"]
       23 ORK                              R8 R9 K9 [""]
       24 JUMP                             ; [+1]
       25 LOADK                            R8 K9 [""]
       26 SETTABLEKS                       R8 R7 K5 ["title"]
       28 DUPTABLE                         R8 K11 [{"name", "offset", "children"}]
       29 LOADK                            R9 K12 ["ROOT"]
       30 SETTABLEKS                       R9 R8 K1 ["name"]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K10 ["offset"]
       35 GETTABLEKS                       R9 R6 K0 ["children"]
       37 SETTABLEKS                       R9 R8 K0 ["children"]
       39 SETTABLEKS                       R8 R7 K6 ["ast"]
       41 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       43 MOVE                             R9 R1
       44 MOVE                             R10 R7
       45 GETIMPORT                        R8 K15 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R2 2 ; [-42]
       50 RETURN                           R1 1

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
       11 DUPTABLE                         R5 K4 [{"ActionButton"}]
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K3 ["ActionButton"]
       15 SETTABLEKS                       R5 R4 K1 ["inlineTags"]
       17 CALL                             R2 2 2
       18 JUMPIF                           R2 ; [+11]
       19 GETIMPORT                        R4 K6 [warn]
       21 LOADK                            R6 K7 ["Tutorial failed to parse: %*"]
       22 MOVE                             R8 R3
       23 NAMECALL                         R6 R6 K8 ["format"]
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 CALL                             R4 1 0
       28 LOADNIL                          R4
       29 RETURN                           R4 1
       30 DUPTABLE                         R4 K12 [{"info", "home", "sections"}]
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R3
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K9 ["info"]
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R3
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K10 ["home"]
       41 GETUPVAL                         R5 4
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K11 ["sections"]
       46 RETURN                           R4 1

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
