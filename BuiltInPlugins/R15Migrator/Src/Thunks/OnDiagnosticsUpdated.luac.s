PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R0 K0 ["_list"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETUPVAL                         R8 0
       10 LOADK                            R10 K1 ["'"]
       11 GETTABLEKS                       R11 R7 K2 ["instanceName"]
       13 LOADK                            R12 K1 ["'"]
       14 CONCAT                           R9 R10 R12
       15 CALL                             R8 1 1
       16 JUMPIFNOT                        R8 ; [+18]
       17 GETTABLE                         R9 R2 R8
       18 JUMPIF                           R9 ; [+3]
       19 NEWTABLE                         R9 0 0
       21 SETTABLE                         R9 R2 R8
       22 GETTABLE                         R10 R2 R8
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R11 R12 K3 ["new"]
       26 MOVE                             R12 R8
       27 GETTABLEKS                       R13 R7 K4 ["range"]
       29 MOVE                             R14 R1
       30 CALL                             R11 3 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R9 K7 [table.insert]
       34 CALL                             R9 -1 0
       35 FORGLOOP                         R3 2 ; [-27]
       37 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R6 R4 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R5 R6 K2 ["diagnostics"]
        7 GETUPVAL                         R6 0
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 GETUPVAL                         R7 1
       11 GETTABLE                         R8 R6 R1
       12 MOVE                             R9 R3
       13 CALL                             R7 2 1
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 CALL                             R8 2 1
       18 GETUPVAL                         R11 2
       19 MOVE                             R12 R7
       20 MOVE                             R13 R8
       21 CALL                             R11 2 -1
       22 NAMECALL                         R9 R0 K3 ["dispatch"]
       24 CALL                             R9 -1 0
       25 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R5 R3 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R4 R5 K2 ["diagnostics"]
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R4
        9 CALL                             R5 1 1
       10 SETTABLE                         R2 R5 R1
       11 GETUPVAL                         R8 1
       12 MOVE                             R9 R5
       13 CALL                             R8 1 -1
       14 NAMECALL                         R6 R0 K3 ["dispatch"]
       16 CALL                             R6 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R7 R4 K1 ["ScriptConversion"]
        6 GETTABLEKS                       R6 R7 K2 ["completedScripts"]
        8 CALL                             R5 1 1
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R6 R3 K3 ["HasErrors"]
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+8]
       15 GETUPVAL                         R6 1
       16 MOVE                             R8 R2
       17 NAMECALL                         R6 R6 K4 ["addTag"]
       19 CALL                             R6 2 0
       20 LOADNIL                          R6
       21 SETTABLE                         R6 R5 R1
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R6 1
       24 MOVE                             R8 R2
       25 NAMECALL                         R6 R6 K5 ["removeTag"]
       27 CALL                             R6 2 0
       28 LOADB                            R6 1
       29 SETTABLE                         R6 R5 R1
       30 GETUPVAL                         R8 2
       31 MOVE                             R9 R5
       32 CALL                             R8 1 -1
       33 NAMECALL                         R6 R0 K6 ["dispatch"]
       35 CALL                             R6 -1 0
       36 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R2 ; [+1]
        1 RETURN                           R0 0
        2 NAMECALL                         R3 R0 K0 ["getState"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R6 R3 K1 ["ScriptConversion"]
        8 GETTABLEKS                       R5 R6 K2 ["revertedScripts"]
       10 CALL                             R4 1 1
       11 LOADNIL                          R5
       12 SETTABLE                         R5 R4 R1
       13 GETUPVAL                         R7 1
       14 MOVE                             R8 R4
       15 CALL                             R7 1 -1
       16 NAMECALL                         R5 R0 K3 ["dispatch"]
       18 CALL                             R5 -1 0
       19 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R6 R4 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R5 R6 K2 ["initialIssueCounts"]
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETUPVAL                         R6 0
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 LOADNIL                          R7
       12 SETTABLE                         R7 R6 R1
       13 GETUPVAL                         R9 1
       14 MOVE                             R10 R6
       15 CALL                             R9 1 -1
       16 NAMECALL                         R7 R0 K3 ["dispatch"]
       18 CALL                             R7 -1 0
       19 RETURN                           R0 0
       20 GETTABLE                         R6 R5 R1
       21 JUMPIF                           R6 ; [+2]
       22 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R6 0
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 SETTABLE                         R2 R6 R1
       29 GETUPVAL                         R9 1
       30 MOVE                             R10 R6
       31 CALL                             R9 1 -1
       32 NAMECALL                         R7 R0 K3 ["dispatch"]
       34 CALL                             R7 -1 0
       35 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["diagnostics"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 NAMECALL                         R3 R3 K3 ["addOrFindScript"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["AttributeChunkCountName"]
       16 NAMECALL                         R4 R4 K5 ["GetAttribute"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K6 ["AttributeInitialIssueCountName"]
       23 NAMECALL                         R5 R5 K5 ["GetAttribute"]
       25 CALL                             R5 2 1
       26 GETTABLE                         R7 R2 R3
       27 JUMPIFNOTEQKNIL                  R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 GETUPVAL                         R7 3
       32 JUMPIFNOT                        R7 ; [+9]
       33 GETUPVAL                         R7 3
       34 NAMECALL                         R7 R7 K7 ["GetSize"]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKN                    R7 K8 [0] ; [+4]
       39 JUMPIF                           R6 ; [+2]
       40 JUMPIF                           R4 ; [+1]
       41 RETURN                           R0 0
       42 GETTABLE                         R7 R2 R3
       43 GETUPVAL                         R8 3
       44 JUMPIFNOTEQ                      R7 R8 ; [+2]
       46 RETURN                           R0 0
       47 JUMPIF                           R4 ; [+3]
       48 GETUPVAL                         R7 4
       49 GETUPVAL                         R8 1
       50 CALL                             R7 1 0
       51 JUMPIF                           R5 ; [+11]
       52 GETUPVAL                         R7 1
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K6 ["AttributeInitialIssueCountName"]
       56 GETUPVAL                         R10 3
       57 NAMECALL                         R10 R10 K7 ["GetSize"]
       59 CALL                             R10 1 -1
       60 NAMECALL                         R7 R7 K9 ["SetAttribute"]
       62 CALL                             R7 -1 0
       63 GETUPVAL                         R7 5
       64 MOVE                             R8 R0
       65 MOVE                             R9 R3
       66 GETUPVAL                         R10 1
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R12 R13 K6 ["AttributeInitialIssueCountName"]
       70 NAMECALL                         R10 R10 K5 ["GetAttribute"]
       72 CALL                             R10 2 1
       73 GETUPVAL                         R12 3
       74 JUMPIFEQKNIL                     R12 ; [+2]
       76 LOADB                            R11 0 +1
       77 LOADB                            R11 1
       78 CALL                             R7 4 0
       79 NAMECALL                         R7 R0 K0 ["getState"]
       81 CALL                             R7 1 1
       82 MOVE                             R1 R7
       83 GETTABLEKS                       R8 R1 K1 ["ScriptConversion"]
       85 GETTABLEKS                       R7 R8 K2 ["diagnostics"]
       87 MOVE                             R8 R7
       88 JUMPIFNOT                        R8 ; [+1]
       89 GETTABLE                         R8 R7 R3
       90 JUMPIFNOT                        R8 ; [+7]
       91 GETUPVAL                         R9 3
       92 JUMPIFNOT                        R9 ; [+5]
       93 GETUPVAL                         R11 3
       94 NAMECALL                         R9 R8 K10 ["Merge"]
       96 CALL                             R9 2 1
       97 SETUPVAL                         R9 3
       98 GETUPVAL                         R9 6
       99 GETUPVAL                         R11 1
      100 NAMECALL                         R9 R9 K11 ["DidSourceChange"]
      102 CALL                             R9 2 1
      103 GETUPVAL                         R10 7
      104 MOVE                             R11 R0
      105 MOVE                             R12 R3
      106 GETUPVAL                         R13 3
      107 GETUPVAL                         R14 1
      108 CALL                             R10 4 0
      109 GETUPVAL                         R10 3
      110 NAMECALL                         R11 R0 K0 ["getState"]
      112 CALL                             R11 1 1
      113 GETTABLEKS                       R13 R11 K1 ["ScriptConversion"]
      115 GETTABLEKS                       R12 R13 K2 ["diagnostics"]
      117 GETUPVAL                         R13 8
      118 MOVE                             R14 R12
      119 CALL                             R13 1 1
      120 SETTABLE                         R10 R13 R3
      121 GETUPVAL                         R16 9
      122 MOVE                             R17 R13
      123 CALL                             R16 1 -1
      124 NAMECALL                         R14 R0 K12 ["dispatch"]
      126 CALL                             R14 -1 0
      127 JUMPIF                           R9 ; [+1]
      128 JUMP                             ; [+17]
      129 NAMECALL                         R10 R0 K0 ["getState"]
      131 CALL                             R10 1 1
      132 GETUPVAL                         R11 8
      133 GETTABLEKS                       R13 R10 K1 ["ScriptConversion"]
      135 GETTABLEKS                       R12 R13 K13 ["revertedScripts"]
      137 CALL                             R11 1 1
      138 LOADNIL                          R12
      139 SETTABLE                         R12 R11 R3
      140 GETUPVAL                         R14 10
      141 MOVE                             R15 R11
      142 CALL                             R14 1 -1
      143 NAMECALL                         R12 R0 K12 ["dispatch"]
      145 CALL                             R12 -1 0
      146 GETUPVAL                         R10 11
      147 MOVE                             R11 R0
      148 MOVE                             R12 R3
      149 GETUPVAL                         R13 1
      150 GETUPVAL                         R14 3
      151 CALL                             R10 4 0
      152 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CLOSEUPVALS                      R2
       14 RETURN                           R3 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Util"]
       20 GETTABLEKS                       R4 R5 K10 ["ScriptHistory"]
       22 GETTABLEKS                       R3 R4 K11 ["backupScript"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R1 K9 ["Util"]
       27 GETTABLEKS                       R3 R4 K12 ["deepCopy"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K8 ["Src"]
       33 GETTABLEKS                       R6 R7 K13 ["Actions"]
       35 GETTABLEKS                       R5 R6 K14 ["SetDiagnostics"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R8 R0 K8 ["Src"]
       42 GETTABLEKS                       R7 R8 K13 ["Actions"]
       44 GETTABLEKS                       R6 R7 K15 ["SetCompletedScripts"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Src"]
       51 GETTABLEKS                       R8 R9 K13 ["Actions"]
       53 GETTABLEKS                       R7 R8 K16 ["SetInitialIssueCounts"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Src"]
       60 GETTABLEKS                       R9 R10 K13 ["Actions"]
       62 GETTABLEKS                       R8 R9 K17 ["SetRevertedScripts"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Src"]
       69 GETTABLEKS                       R11 R12 K9 ["Util"]
       71 GETTABLEKS                       R10 R11 K18 ["ScriptAnalysis"]
       73 GETTABLEKS                       R9 R10 K19 ["Constants"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R13 R0 K8 ["Src"]
       80 GETTABLEKS                       R12 R13 K9 ["Util"]
       82 GETTABLEKS                       R11 R12 K18 ["ScriptAnalysis"]
       84 GETTABLEKS                       R10 R11 K20 ["findAssetId"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R14 R0 K8 ["Src"]
       91 GETTABLEKS                       R13 R14 K9 ["Util"]
       93 GETTABLEKS                       R12 R13 K10 ["ScriptHistory"]
       95 GETTABLEKS                       R11 R12 K21 ["ChunkUtil"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K8 ["Src"]
      102 GETTABLEKS                       R14 R15 K9 ["Util"]
      104 GETTABLEKS                       R13 R14 K22 ["PublishTagging"]
      106 CALL                             R12 1 1
      107 GETTABLEKS                       R11 R12 K23 ["ScriptTagging"]
      109 GETIMPORT                        R12 K5 [require]
      111 GETTABLEKS                       R16 R0 K8 ["Src"]
      113 GETTABLEKS                       R15 R16 K9 ["Util"]
      115 GETTABLEKS                       R14 R15 K24 ["AnimationConversion"]
      117 GETTABLEKS                       R13 R14 K25 ["DiagRef"]
      119 CALL                             R12 1 1
      120 GETIMPORT                        R13 K5 [require]
      122 GETTABLEKS                       R16 R0 K8 ["Src"]
      124 GETTABLEKS                       R15 R16 K26 ["Thunks"]
      126 GETTABLEKS                       R14 R15 K27 ["UpdateAnimationIssues"]
      128 CALL                             R13 1 1
      129 DUPCLOSURE                       R14 K28 [PROTO_0]
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R12
      132 DUPCLOSURE                       R15 K29 [PROTO_1]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R13
      136 DUPCLOSURE                       R16 K30 [PROTO_2]
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R4
      139 DUPCLOSURE                       R17 K31 [PROTO_3]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R5
      143 DUPCLOSURE                       R18 K32 [PROTO_4]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R7
      146 DUPCLOSURE                       R19 K33 [PROTO_5]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R6
      149 DUPCLOSURE                       R20 K34 [PROTO_7]
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R17
      159 RETURN                           R20 1
