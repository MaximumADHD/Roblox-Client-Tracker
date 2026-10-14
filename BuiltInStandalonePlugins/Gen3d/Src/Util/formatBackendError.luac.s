PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["getText"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R2 K0 ["Studio.Gen3d.%*.%*"]
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 3 1
        6 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+14]
        3 GETIMPORT                        R3 K1 [pcall]
        5 DUPCLOSURE                       R4 K2 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+3]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R4
       13 JUMP                             ; [+1]
       14 DUPCLOSURE                       R5 K3 [PROTO_2]
       15 SETUPVAL                         R5 0
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R3 3 -1
       21 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 LOADK                            R3 K0 ["body=(.*)%)$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 JUMPIFNOTEQKS                    R1 K2 [""] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K4 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 JUMPIFNOT                        R2 ; [+25]
       16 FASTCALL1                        TYPEOF R3 ; [+3]
       17 MOVE                             R5 R3
       18 GETIMPORT                        R4 K6 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+19]
       23 GETTABLEKS                       R4 R3 K8 ["message"]
       25 JUMPIF                           R4 ; [+2]
       26 GETTABLEKS                       R4 R3 K9 ["details"]
       28 FASTCALL1                        TYPEOF R4 ; [+3]
       29 MOVE                             R7 R4
       30 GETIMPORT                        R6 K6 [typeof]
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKS                    R6 K10 ["string"] ; [+5]
       35 JUMPIFEQKS                       R4 K2 [""] ; [+3]
       37 MOVE                             R5 R4
       38 RETURN                           R5 1
       39 LOADNIL                          R5
       40 RETURN                           R5 1
       41 LENGTH                           R5 R1
       42 LOADN                            R6 300
       43 JUMPIFNOTLE                      R5 R6 ; [+3]
       45 MOVE                             R4 R1
       46 RETURN                           R4 1
       47 LOADNIL                          R4
       48 RETURN                           R4 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R2 K0 ["unknown error"]
        3 JUMP                             ; [+5]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K2 [tostring]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K4 [warn]
       11 LOADK                            R4 K5 ["[Gen3d] %* failed: %*"]
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 3 1
       17 CALL                             R3 1 0
       18 GETIMPORT                        R3 K9 [string.lower]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 GETTABLEKS                       R9 R8 K10 ["needles"]
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 FORGPREP                         R9
       31 GETIMPORT                        R14 K12 [string.find]
       33 MOVE                             R15 R3
       34 MOVE                             R16 R13
       35 LOADN                            R17 1
       36 LOADB                            R18 1
       37 CALL                             R14 4 1
       38 JUMPIFNOT                        R14 ; [+30]
       39 GETTABLEKS                       R14 R8 K13 ["kind"]
       41 JUMPIFNOTEQKS                    R14 K14 ["http"] ; [+13]
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K15 ["getFFlagGen3dSurfaceBackendErrorMessage"]
       46 CALL                             R14 0 1
       47 JUMPIFNOT                        R14 ; [+7]
       48 GETUPVAL                         R14 2
       49 MOVE                             R15 R2
       50 CALL                             R14 1 1
       51 JUMPIFNOT                        R14 ; [+3]
       52 MOVE                             R15 R14
       53 LOADK                            R16 K14 ["http"]
       54 RETURN                           R15 2
       55 GETUPVAL                         R14 3
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R17 R8 K16 ["message"]
       59 GETTABLEN                        R16 R17 1
       60 GETTABLEKS                       R18 R8 K16 ["message"]
       62 GETTABLEN                        R17 R18 2
       63 GETTABLEKS                       R18 R8 K17 ["default"]
       65 CALL                             R14 4 1
       66 GETTABLEKS                       R15 R8 K13 ["kind"]
       68 RETURN                           R14 2
       69 FORGLOOP                         R9 2 ; [-39]
       71 FORGLOOP                         R4 2 ; [-46]
       73 GETUPVAL                         R4 3
       74 GETUPVAL                         R5 4
       75 LOADK                            R6 K18 ["Common"]
       76 LOADK                            R7 K19 ["UnknownError"]
       77 LOADK                            R8 K20 ["Something went wrong."]
       78 CALL                             R4 4 1
       79 LOADK                            R5 K21 ["unknown"]
       80 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["StudioFoundation"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K12 ["Src"]
       22 GETTABLEKS                       R3 R3 K13 ["Resources"]
       24 GETTABLEKS                       R3 R3 K14 ["Localization"]
       26 GETTABLEKS                       R3 R3 K15 ["LocalizedStrings"]
       28 GETTABLEKS                       R4 R1 K12 ["Src"]
       30 GETTABLEKS                       R4 R4 K13 ["Resources"]
       32 GETTABLEKS                       R4 R4 K14 ["Localization"]
       34 GETTABLEKS                       R4 R4 K16 ["SourceStrings"]
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K17 ["Util"]
       42 GETTABLEKS                       R6 R6 K18 ["getLocalizedTextOrDefault"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K19 ["Bin"]
       49 GETTABLEKS                       R7 R7 K20 ["Common"]
       51 GETTABLEKS                       R7 R7 K21 ["defineLuaFlags"]
       53 CALL                             R6 1 1
       54 LOADNIL                          R7
       55 NEWCLOSURE                       R8 P0
       56 CAPTURE                          REF R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R9 K22 [PROTO_5]
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R10 0 2
       64 DUPTABLE                         R11 K29 [{["kind"] = "moderation", ["needles"], ["message"], ["default"] = "Generation was moderated."}]
       65 NEWTABLE                         R12 0 2
       67 LOADK                            R13 K30 ["moderat"]
       68 LOADK                            R14 K31 ["content blocked"]
       69 SETLIST                          R12 R13 2 [1]
       71 SETTABLEKS                       R12 R11 K25 ["needles"]
       73 NEWTABLE                         R12 0 2
       75 LOADK                            R13 K20 ["Common"]
       76 LOADK                            R14 K32 ["GenerationModerated"]
       77 SETLIST                          R12 R13 2 [1]
       79 SETTABLEKS                       R12 R11 K26 ["message"]
       81 DUPTABLE                         R12 K35 [{["kind"] = "http", ["needles"], ["message"], ["default"] = "Something went wrong."}]
       82 NEWTABLE                         R13 0 1
       84 LOADK                            R14 K36 ["http error"]
       85 SETLIST                          R13 R14 1 [1]
       87 SETTABLEKS                       R13 R12 K25 ["needles"]
       89 NEWTABLE                         R13 0 2
       91 LOADK                            R14 K20 ["Common"]
       92 LOADK                            R15 K37 ["UnknownError"]
       93 SETLIST                          R13 R14 2 [1]
       95 SETTABLEKS                       R13 R12 K26 ["message"]
       97 SETLIST                          R10 R11 2 [1]
       99 DUPCLOSURE                       R11 K38 [PROTO_6]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R8
      105 CLOSEUPVALS                      R7
      106 RETURN                           R11 1
