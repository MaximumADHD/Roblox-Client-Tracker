PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 NEWTABLE                         R2 0 0
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETTABLEKS                       R3 R1 K1 ["content"]
        7 GETIMPORT                        R4 K4 [table.create]
        9 LENGTH                           R5 R3
       10 CALL                             R4 1 1
       11 MOVE                             R2 R4
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K5 ["type"]
       18 JUMPIFNOTEQKS                    R9 K6 ["image"] ; [+8]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K8 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-12]
       29 GETUPVAL                         R3 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K9 ["ContentWidget"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K10 ["assign"]
       36 DUPTABLE                         R6 K12 [{"imageContents"}]
       37 SETTABLEKS                       R2 R6 K11 ["imageContents"]
       39 MOVE                             R7 R0
       40 CALL                             R5 2 -1
       41 CALL                             R3 -1 -1
       42 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["ImageContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K13 ["createElement"]
       37 DUPCLOSURE                       R6 K14 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 DUPTABLE                         R7 K18 [{["Type"] = "ScreenCapture", ["ContentWidget"]}]
       42 GETTABLEKS                       R8 R3 K19 ["memo"]
       44 MOVE                             R9 R6
       45 CALL                             R8 1 1
       46 SETTABLEKS                       R8 R7 K17 ["ContentWidget"]
       48 RETURN                           R7 1
