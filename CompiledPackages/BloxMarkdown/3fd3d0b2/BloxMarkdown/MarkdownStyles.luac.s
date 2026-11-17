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
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BloxUI"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["template"]
       21 GETTABLEKS                       R5 R2 K10 ["Folder"]
       23 GETTABLEKS                       R6 R2 K11 ["StyleLink"]
       25 GETTABLEKS                       R7 R3 K12 ["ThemeProvider"]
       27 GETIMPORT                        R8 K6 [require]
       29 GETIMPORT                        R9 K1 [script]
       31 GETTABLEKS                       R9 R9 K4 ["Parent"]
       33 GETTABLEKS                       R9 R9 K13 ["MarkdownDarkStyles"]
       35 CALL                             R8 1 1
       36 GETIMPORT                        R9 K6 [require]
       38 GETIMPORT                        R10 K1 [script]
       40 GETTABLEKS                       R10 R10 K4 ["Parent"]
       42 GETTABLEKS                       R10 R10 K14 ["MarkdownLightStyles"]
       44 CALL                             R9 1 1
       45 MOVE                             R10 R4
       46 LOADK                            R11 K15 ["MarkdownStyles"]
       47 NEWTABLE                         R12 0 0
       49 NEWTABLE                         R13 0 2
       51 MOVE                             R14 R5
       52 NEWTABLE                         R15 1 2
       54 LOADK                            R18 K16 ["Styles"]
       55 SETTABLEKS                       R18 R15 K17 ["Name"]
       57 MOVE                             R16 R8
       58 NEWTABLE                         R17 0 0
       60 CALL                             R16 1 1
       61 MOVE                             R17 R9
       62 NEWTABLE                         R18 0 0
       64 CALL                             R17 1 -1
       65 SETLIST                          R15 R16 -1 [1]
       67 CALL                             R14 1 1
       68 MOVE                             R15 R6
       69 NEWTABLE                         R16 0 0
       71 CALL                             R15 1 -1
       72 SETLIST                          R13 R14 -1 [1]
       74 DUPCLOSURE                       R14 K18 [PROTO_1]
       75 CAPTURE                          VAL R7
       76 CALL                             R10 4 1
       77 RETURN                           R10 1
