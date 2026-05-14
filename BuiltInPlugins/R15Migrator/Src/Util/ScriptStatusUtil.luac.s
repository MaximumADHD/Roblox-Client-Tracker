PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R7 R6
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 ADDK                             R1 R1 K0 [1]
       10 FORGLOOP                         R7 1 ; [-2]
       12 FORGLOOP                         R2 2 ; [-8]
       14 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["revertResult"]
        2 GETTABLEKS                       R3 R1 K1 ["scriptInstance"]
        4 GETTABLEKS                       R4 R1 K2 ["replaceResult"]
        6 GETTABLEKS                       R5 R1 K3 ["undoRevertResult"]
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 0
       11 LOADN                            R9 0
       12 JUMPIFNOT                        R4 ; [+39]
       13 GETTABLEKS                       R6 R4 K4 ["autoConverted"]
       15 GETTABLEKS                       R10 R4 K5 ["succeeded"]
       17 ADD                              R7 R7 R10
       18 GETTABLEKS                       R10 R4 K6 ["failed"]
       20 LOADN                            R11 0
       21 MOVE                             R12 R10
       22 LOADNIL                          R13
       23 LOADNIL                          R14
       24 FORGPREP                         R12
       25 MOVE                             R17 R16
       26 LOADNIL                          R18
       27 LOADNIL                          R19
       28 FORGPREP                         R17
       29 ADDK                             R11 R11 K7 [1]
       30 FORGLOOP                         R17 1 ; [-2]
       32 FORGLOOP                         R12 2 ; [-8]
       34 MOVE                             R8 R11
       35 GETTABLEKS                       R10 R4 K8 ["failedVar"]
       37 LOADN                            R11 0
       38 MOVE                             R12 R10
       39 LOADNIL                          R13
       40 LOADNIL                          R14
       41 FORGPREP                         R12
       42 MOVE                             R17 R16
       43 LOADNIL                          R18
       44 LOADNIL                          R19
       45 FORGPREP                         R17
       46 ADDK                             R11 R11 K7 [1]
       47 FORGLOOP                         R17 1 ; [-2]
       49 FORGLOOP                         R12 2 ; [-8]
       51 MOVE                             R9 R11
       52 JUMPIFNOT                        R3 ; [+1]
       53 LOADN                            R7 1
       54 NEWTABLE                         R10 0 0
       56 JUMPIFNOT                        R2 ; [+7]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
       60 GETTABLEKS                       R11 R11 K10 ["Reverted"]
       62 SETTABLE                         R2 R10 R11
       63 JUMP                             ; [+7]
       64 JUMPIFNOT                        R5 ; [+6]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
       68 GETTABLEKS                       R11 R11 K10 ["Reverted"]
       70 SETTABLE                         R5 R10 R11
       71 LOADN                            R11 0
       72 JUMPIFNOTLT                      R11 R6 ; [+7]
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
       77 GETTABLEKS                       R11 R11 K11 ["AutoConverted"]
       79 SETTABLE                         R6 R10 R11
       80 LOADN                            R11 0
       81 JUMPIFNOTLT                      R11 R7 ; [+7]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
       86 GETTABLEKS                       R11 R11 K12 ["Complete"]
       88 SETTABLE                         R7 R10 R11
       89 LOADN                            R11 0
       90 JUMPIFNOTLT                      R11 R8 ; [+7]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
       95 GETTABLEKS                       R11 R11 K13 ["Error"]
       97 SETTABLE                         R8 R10 R11
       98 LOADN                            R11 0
       99 JUMPIFNOTLT                      R11 R9 ; [+7]
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R11 R11 K9 ["ScriptStatus"]
      104 GETTABLEKS                       R11 R11 K14 ["VariableError"]
      106 SETTABLE                         R9 R10 R11
      107 RETURN                           R10 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["scriptInstance"]
        2 JUMPIFNOT                        R3 ; [+19]
        3 NEWTABLE                         R3 1 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["ScriptStatus"]
        8 GETTABLEKS                       R4 R4 K2 ["Complete"]
       10 LOADK                            R7 K3 ["ConversionResult"]
       11 LOADK                            R8 K4 ["Script"]
       12 DUPTABLE                         R9 K6 [{"name"}]
       13 GETTABLEKS                       R10 R1 K0 ["scriptInstance"]
       15 SETTABLEKS                       R10 R9 K5 ["name"]
       17 NAMECALL                         R5 R2 K7 ["getText"]
       19 CALL                             R5 4 1
       20 SETTABLE                         R5 R3 R4
       21 RETURN                           R3 1
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K8 ["GetStatusCounts"]
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 0 0
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K1 ["ScriptStatus"]
       35 GETTABLEKS                       R10 R10 K9 ["AutoConverted"]
       37 JUMPIFEQ                         R8 R10 ; [+29]
       39 DUPTABLE                         R10 K11 [{"count"}]
       40 GETIMPORT                        R11 K14 [string.format]
       42 LOADK                            R12 K15 ["%d"]
       43 MOVE                             R13 R9
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K10 ["count"]
       47 GETTABLEKS                       R11 R1 K16 ["undoRevertResult"]
       49 JUMPIFNOT                        R11 ; [+10]
       50 LOADK                            R13 K3 ["ConversionResult"]
       51 LOADK                            R15 K17 ["Undo"]
       52 MOVE                             R16 R8
       53 CONCAT                           R14 R15 R16
       54 MOVE                             R15 R10
       55 NAMECALL                         R11 R2 K7 ["getText"]
       57 CALL                             R11 4 1
       58 SETTABLE                         R11 R4 R8
       59 JUMP                             ; [+7]
       60 LOADK                            R13 K3 ["ConversionResult"]
       61 MOVE                             R14 R8
       62 MOVE                             R15 R10
       63 NAMECALL                         R11 R2 K7 ["getText"]
       65 CALL                             R11 4 1
       66 SETTABLE                         R11 R4 R8
       67 FORGLOOP                         R5 2 ; [-36]
       69 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ScriptAnalysis"]
       15 GETTABLEKS                       R2 R2 K9 ["Constants"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 2 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R2 K12 ["GetStatusCounts"]
       25 DUPCLOSURE                       R4 K13 [PROTO_2]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R2 K14 ["GetStatusMessages"]
       29 RETURN                           R2 1
