PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKS                    R1 K0 ["Dark"] ; [+3]
        5 LOADK                            R2 K1 ["MarkdownDarkStyles"]
        6 JUMP                             ; [+1]
        7 LOADK                            R2 K2 ["MarkdownLightStyles"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["getChild"]
       11 LOADK                            R4 K4 ["Styles"]
       12 CALL                             R3 1 1
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R3 K5 ["FindFirstChild"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["getChild"]
       20 LOADK                            R6 K6 ["StyleLink"]
       21 CALL                             R5 1 1
       22 LOADNIL                          R6
       23 SETTABLEKS                       R6 R5 K7 ["StyleSheet"]
       25 SETTABLEKS                       R4 R5 K7 ["StyleSheet"]
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["provide"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["token"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K2 ["createDeferredEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 LOADK                            R5 K3 ["style-link"]
       12 CALL                             R3 2 0
       13 NEWTABLE                         R3 0 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["BloxUI"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K8 ["template"]
       19 GETTABLEKS                       R4 R1 K9 ["Folder"]
       21 GETTABLEKS                       R5 R1 K10 ["StyleLink"]
       23 GETTABLEKS                       R6 R2 K11 ["ThemeProvider"]
       25 GETIMPORT                        R7 K5 [require]
       27 GETIMPORT                        R8 K1 [script]
       29 GETTABLEKS                       R8 R8 K12 ["Parent"]
       31 GETTABLEKS                       R8 R8 K13 ["MarkdownDarkStyles"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K5 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R9 R9 K12 ["Parent"]
       40 GETTABLEKS                       R9 R9 K14 ["MarkdownLightStyles"]
       42 CALL                             R8 1 1
       43 MOVE                             R9 R3
       44 LOADK                            R10 K15 ["MarkdownStyles"]
       45 NEWTABLE                         R11 0 0
       47 NEWTABLE                         R12 0 2
       49 MOVE                             R13 R4
       50 NEWTABLE                         R14 1 2
       52 LOADK                            R17 K16 ["Styles"]
       53 SETTABLEKS                       R17 R14 K17 ["Name"]
       55 MOVE                             R15 R7
       56 NEWTABLE                         R16 0 0
       58 CALL                             R15 1 1
       59 MOVE                             R16 R8
       60 NEWTABLE                         R17 0 0
       62 CALL                             R16 1 -1
       63 SETLIST                          R14 R15 -1 [1]
       65 CALL                             R13 1 1
       66 MOVE                             R14 R5
       67 NEWTABLE                         R15 0 0
       69 CALL                             R14 1 -1
       70 SETLIST                          R12 R13 -1 [1]
       72 DUPCLOSURE                       R13 K18 [PROTO_1]
       73 CAPTURE                          VAL R6
       74 CALL                             R9 4 1
       75 RETURN                           R9 1
