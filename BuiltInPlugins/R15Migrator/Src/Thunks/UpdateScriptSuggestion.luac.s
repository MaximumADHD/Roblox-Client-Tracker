PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["diagnostics"]
        7 GETTABLEKS                       R4 R1 K3 ["AnimationConversion"]
        9 GETTABLEKS                       R3 R4 K4 ["animations"]
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R5 R3 R6
       16 LOADB                            R6 0
       17 GETTABLEKS                       R7 R5 K5 ["refs"]
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 GETUPVAL                         R15 2
       23 GETTABLEKS                       R14 R15 K6 ["AssetIdString"]
       25 NAMECALL                         R12 R11 K7 ["IsA"]
       27 CALL                             R12 2 1
       28 JUMPIFNOT                        R12 ; [+36]
       29 GETUPVAL                         R12 3
       30 GETTABLEKS                       R14 R10 K8 ["scriptInstance"]
       32 NAMECALL                         R12 R12 K9 ["findScriptGUID"]
       34 CALL                             R12 2 1
       35 GETTABLE                         R13 R4 R12
       36 JUMPIFNOT                        R13 ; [+28]
       37 GETTABLE                         R16 R4 R12
       38 GETTABLEKS                       R13 R16 K10 ["_list"]
       40 LOADNIL                          R14
       41 LOADNIL                          R15
       42 FORGPREP                         R13
       43 GETTABLEKS                       R18 R17 K11 ["instanceName"]
       45 GETTABLEKS                       R19 R11 K12 ["url"]
       47 JUMPIFNOTEQ                      R18 R19 ; [+15]
       49 GETTABLEKS                       R18 R10 K13 ["range"]
       51 GETTABLEKS                       R19 R17 K13 ["range"]
       53 JUMPIFNOTEQ                      R18 R19 ; [+9]
       55 NEWTABLE                         R18 0 1
       57 GETUPVAL                         R19 4
       58 SETLIST                          R18 R19 1 [1]
       60 SETTABLEKS                       R18 R17 K14 ["suggestions"]
       62 LOADB                            R6 1
       63 FORGLOOP                         R13 2 ; [-21]
       65 FORGLOOP                         R7 2 ; [-44]
       67 JUMPIFNOT                        R6 ; [+6]
       68 GETUPVAL                         R9 5
       69 MOVE                             R10 R4
       70 CALL                             R9 1 -1
       71 NAMECALL                         R7 R0 K15 ["dispatch"]
       73 CALL                             R7 -1 0
       74 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Actions"]
       24 GETTABLEKS                       R4 R5 K12 ["SetDiagnostics"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R9 R0 K10 ["Src"]
       31 GETTABLEKS                       R8 R9 K8 ["Util"]
       33 GETTABLEKS                       R7 R8 K13 ["AnimationConversion"]
       35 GETTABLEKS                       R6 R7 K14 ["constants"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R4 R5 K15 ["AssetType"]
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R9 R0 K10 ["Src"]
       44 GETTABLEKS                       R8 R9 K8 ["Util"]
       46 GETTABLEKS                       R7 R8 K16 ["ScriptAnalysis"]
       48 GETTABLEKS                       R6 R7 K17 ["Constants"]
       50 CALL                             R5 1 1
       51 DUPCLOSURE                       R6 K18 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 RETURN                           R6 1
