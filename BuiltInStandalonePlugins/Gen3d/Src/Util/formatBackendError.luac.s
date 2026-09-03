PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R2 K0 ["unknown error"]
        3 JUMP                             ; [+5]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K2 [tostring]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K4 [warn]
       11 LOADK                            R5 K5 ["[Gen3d] %* failed: %*"]
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 GETIMPORT                        R3 K9 [string.lower]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 GETTABLEKS                       R9 R8 K10 ["needles"]
       29 LOADNIL                          R10
       30 LOADNIL                          R11
       31 FORGPREP                         R9
       32 GETIMPORT                        R14 K12 [string.find]
       34 MOVE                             R15 R3
       35 MOVE                             R16 R13
       36 LOADN                            R17 1
       37 LOADB                            R18 1
       38 CALL                             R14 4 1
       39 JUMPIFNOT                        R14 ; [+13]
       40 GETUPVAL                         R14 1
       41 GETTABLEKS                       R17 R8 K13 ["message"]
       43 FASTCALL1                        TABLE_UNPACK R17 ; [+2]
       44 GETIMPORT                        R16 K15 [unpack]
       46 CALL                             R16 1 -1
       47 NAMECALL                         R14 R14 K16 ["getText"]
       49 CALL                             R14 -1 1
       50 GETTABLEKS                       R15 R8 K17 ["kind"]
       52 RETURN                           R14 2
       53 FORGLOOP                         R9 2 ; [-22]
       55 FORGLOOP                         R4 2 ; [-29]
       57 GETUPVAL                         R4 1
       58 LOADK                            R6 K18 ["Common"]
       59 LOADK                            R7 K19 ["UnknownError"]
       60 NAMECALL                         R4 R4 K16 ["getText"]
       62 CALL                             R4 3 1
       63 LOADK                            R5 K20 ["unknown"]
       64 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Resources"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETTABLEKS                       R2 R2 K10 ["Translator"]
       20 NEWTABLE                         R3 0 2
       22 DUPTABLE                         R4 K15 [{["kind"] = "moderation", ["needles"], ["message"]}]
       23 NEWTABLE                         R5 0 2
       25 LOADK                            R6 K16 ["moderat"]
       26 LOADK                            R7 K17 ["content blocked"]
       27 SETLIST                          R5 R6 2 [1]
       29 SETTABLEKS                       R5 R4 K13 ["needles"]
       31 NEWTABLE                         R5 0 2
       33 LOADK                            R6 K18 ["Common"]
       34 LOADK                            R7 K19 ["GenerationModerated"]
       35 SETLIST                          R5 R6 2 [1]
       37 SETTABLEKS                       R5 R4 K14 ["message"]
       39 DUPTABLE                         R5 K21 [{["kind"] = "http", ["needles"], ["message"]}]
       40 NEWTABLE                         R6 0 1
       42 LOADK                            R7 K22 ["http error"]
       43 SETLIST                          R6 R7 1 [1]
       45 SETTABLEKS                       R6 R5 K13 ["needles"]
       47 NEWTABLE                         R6 0 2
       49 LOADK                            R7 K18 ["Common"]
       50 LOADK                            R8 K23 ["UnknownError"]
       51 SETLIST                          R6 R7 2 [1]
       53 SETTABLEKS                       R6 R5 K14 ["message"]
       55 SETLIST                          R3 R4 2 [1]
       57 DUPCLOSURE                       R4 K24 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 RETURN                           R4 1
