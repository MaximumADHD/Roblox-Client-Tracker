PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Value"]
        5 GETTABLEKS                       R0 R0 K2 ["Script"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K1 ["Value"]
       12 GETTABLEKS                       R1 R1 K3 ["Range"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["goToScriptInstance"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onLinkClick"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 GETTABLEKS                       R4 R2 K3 ["Value"]
        8 GETTABLEKS                       R5 R4 K4 ["Range"]
       10 JUMPIFNOT                        R5 ; [+31]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["createElement"]
       14 GETUPVAL                         R6 1
       15 DUPTABLE                         R7 K8 [{"Text", "OnClick"}]
       16 LOADK                            R10 K9 ["ScriptPane"]
       17 LOADK                            R11 K10 ["LineColumn"]
       18 DUPTABLE                         R12 K13 [{"line", "column"}]
       19 GETTABLEKS                       R13 R4 K4 ["Range"]
       21 GETTABLEKS                       R13 R13 K14 ["startLine"]
       23 SETTABLEKS                       R13 R12 K11 ["line"]
       25 GETTABLEKS                       R13 R4 K4 ["Range"]
       27 GETTABLEKS                       R13 R13 K15 ["startCharacter"]
       29 SETTABLEKS                       R13 R12 K12 ["column"]
       31 NAMECALL                         R8 R3 K16 ["getText"]
       33 CALL                             R8 4 1
       34 SETTABLEKS                       R8 R7 K6 ["Text"]
       36 GETTABLEKS                       R8 R0 K17 ["onLinkClick"]
       38 SETTABLEKS                       R8 R7 K7 ["OnClick"]
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K5 ["createElement"]
       45 GETUPVAL                         R6 2
       46 DUPTABLE                         R7 K20 [{"Text", "TextTruncate", "TextXAlignment"}]
       47 GETTABLEKS                       R8 R4 K21 ["Script"]
       49 NAMECALL                         R8 R8 K22 ["GetFullName"]
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R7 K6 ["Text"]
       54 GETIMPORT                        R8 K25 [Enum.TextTruncate.AtEnd]
       56 SETTABLEKS                       R8 R7 K18 ["TextTruncate"]
       58 GETIMPORT                        R8 K27 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R8 R7 K19 ["TextXAlignment"]
       62 DUPTABLE                         R8 K29 [{"Tooltip"}]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K5 ["createElement"]
       66 GETUPVAL                         R10 3
       67 DUPTABLE                         R11 K30 [{"Text"}]
       68 GETTABLEKS                       R12 R4 K21 ["Script"]
       70 NAMECALL                         R12 R12 K22 ["GetFullName"]
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K6 ["Text"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K28 ["Tooltip"]
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["Dash"]
       34 GETTABLEKS                       R7 R6 K13 ["join"]
       36 GETTABLEKS                       R8 R3 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["LinkText"]
       40 GETTABLEKS                       R10 R8 K16 ["TextLabel"]
       42 GETTABLEKS                       R11 R8 K17 ["Tooltip"]
       44 GETIMPORT                        R12 K5 [require]
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R13 R13 K19 ["Types"]
       50 CALL                             R12 1 1
       51 GETTABLEKS                       R13 R0 K18 ["Src"]
       53 GETTABLEKS                       R13 R13 K20 ["Util"]
       55 GETIMPORT                        R14 K5 [require]
       57 GETTABLEKS                       R15 R13 K21 ["ScriptReplacement"]
       59 CALL                             R14 1 1
       60 GETTABLEKS                       R15 R1 K22 ["PureComponent"]
       62 LOADK                            R17 K23 ["ScriptLinkCell"]
       63 NAMECALL                         R15 R15 K24 ["extend"]
       65 CALL                             R15 2 1
       66 DUPCLOSURE                       R16 K25 [PROTO_1]
       67 CAPTURE                          VAL R14
       68 SETTABLEKS                       R16 R15 K26 ["init"]
       70 DUPCLOSURE                       R16 K27 [PROTO_2]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 SETTABLEKS                       R16 R15 K28 ["render"]
       77 MOVE                             R16 R5
       78 DUPTABLE                         R17 K32 [{"Analytics", "Localization", "Stylizer"}]
       79 GETTABLEKS                       R18 R4 K29 ["Analytics"]
       81 SETTABLEKS                       R18 R17 K29 ["Analytics"]
       83 GETTABLEKS                       R18 R4 K30 ["Localization"]
       85 SETTABLEKS                       R18 R17 K30 ["Localization"]
       87 GETTABLEKS                       R18 R3 K33 ["Style"]
       89 GETTABLEKS                       R18 R18 K31 ["Stylizer"]
       91 SETTABLEKS                       R18 R17 K31 ["Stylizer"]
       93 CALL                             R16 1 1
       94 MOVE                             R17 R15
       95 CALL                             R16 1 1
       96 MOVE                             R15 R16
       97 RETURN                           R15 1
