PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["diagnostics"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R3 R5
       12 GETTABLEKS                       R8 R4 K3 ["_list"]
       14 LENGTH                           R7 R8
       15 LOADN                            R5 1
       16 LOADN                            R6 255
       17 FORNPREP                         R5
       18 GETTABLEKS                       R9 R4 K3 ["_list"]
       20 GETTABLE                         R8 R9 R7
       21 GETTABLEKS                       R9 R8 K4 ["range"]
       23 GETUPVAL                         R10 2
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 GETTABLEKS                       R15 R8 K5 ["diagnosticId"]
       29 JUMPIFNOTEQ                      R15 R14 ; [+59]
       31 GETUPVAL                         R16 3
       32 GETUPVAL                         R18 4
       33 GETTABLEKS                       R17 R18 K6 ["UNASSIGNED"]
       35 JUMPIFNOTEQ                      R16 R17 ; [+4]
       37 GETTABLEKS                       R15 R8 K7 ["instanceName"]
       39 JUMP                             ; [+1]
       40 GETUPVAL                         R15 3
       41 GETUPVAL                         R17 4
       42 GETTABLEKS                       R16 R17 K8 ["goToScript"]
       44 GETUPVAL                         R17 1
       45 MOVE                             R18 R9
       46 GETUPVAL                         R19 5
       47 CALL                             R16 3 1
       48 MOVE                             R19 R15
       49 GETTABLEKS                       R20 R9 K9 ["startLine"]
       51 GETTABLEKS                       R21 R9 K10 ["startCharacter"]
       53 GETTABLEKS                       R22 R9 K11 ["endLine"]
       55 GETTABLEKS                       R23 R9 K12 ["endCharacter"]
       57 NAMECALL                         R17 R16 K13 ["EditTextAsync"]
       59 CALL                             R17 6 0
       60 GETTABLEKS                       R18 R8 K14 ["resolution"]
       62 JUMPIF                           R18 ; [+2]
       63 GETTABLEKS                       R18 R8 K7 ["instanceName"]
       65 LENGTH                           R17 R18
       66 GETTABLEKS                       R18 R8 K4 ["range"]
       68 GETTABLEKS                       R22 R8 K4 ["range"]
       70 GETTABLEKS                       R21 R22 K12 ["endCharacter"]
       72 SUB                              R20 R21 R17
       73 LENGTH                           R21 R15
       74 ADD                              R19 R20 R21
       75 SETTABLEKS                       R19 R18 K12 ["endCharacter"]
       77 GETUPVAL                         R19 3
       78 GETUPVAL                         R21 4
       79 GETTABLEKS                       R20 R21 K6 ["UNASSIGNED"]
       81 JUMPIFNOTEQ                      R19 R20 ; [+3]
       83 LOADNIL                          R18
       84 JUMP                             ; [+1]
       85 GETUPVAL                         R18 3
       86 SETTABLEKS                       R18 R8 K14 ["resolution"]
       88 JUMP                             ; [+2]
       89 FORGLOOP                         R10 2 ; [-63]
       91 FORNLOOP                         R5
       92 GETUPVAL                         R7 6
       93 MOVE                             R8 R3
       94 CALL                             R7 1 -1
       95 NAMECALL                         R5 R0 K15 ["dispatch"]
       97 CALL                             R5 -1 0
       98 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R4 1

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
       18 GETTABLEKS                       R4 R0 K10 ["Src"]
       20 GETTABLEKS                       R3 R4 K11 ["Actions"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K12 ["SetDiagnostics"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["Util"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R5 K13 ["ScriptReplacement"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K14 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 RETURN                           R7 1
