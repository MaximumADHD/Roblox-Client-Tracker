PROTO_0:
        0 GETIMPORT                        R2 K2 [string.gsub]
        2 GETIMPORT                        R3 K4 [string.lower]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LOADK                            R4 K5 ["%s+"]
        7 LOADK                            R5 K6 [""]
        8 CALL                             R2 3 1
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETIMPORT                        R8 K2 [string.gsub]
       15 GETIMPORT                        R9 K4 [string.lower]
       17 MOVE                             R10 R7
       18 CALL                             R9 1 1
       19 LOADK                            R10 K5 ["%s+"]
       20 LOADK                            R11 K6 [""]
       21 CALL                             R8 3 1
       22 LENGTH                           R9 R8
       23 LOADN                            R10 0
       24 JUMPIFNOTLT                      R10 R9 ; [+12]
       26 GETIMPORT                        R9 K8 [string.find]
       28 MOVE                             R10 R2
       29 MOVE                             R11 R8
       30 LOADN                            R12 1
       31 LOADB                            R13 1
       32 CALL                             R9 4 1
       33 JUMPIFEQKNIL                     R9 ; [+3]
       35 LOADB                            R9 1
       36 RETURN                           R9 1
       37 FORGLOOP                         R3 2 ; [-25]
       39 LOADB                            R3 0
       40 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+29]
        2 DUPTABLE                         R5 K3 [{"id", "title", "items"}]
        3 SETTABLEKS                       R2 R5 K0 ["id"]
        5 LENGTH                           R7 R3
        6 LOADN                            R8 0
        7 JUMPIFNOTLT                      R8 R7 ; [+7]
        9 GETIMPORT                        R6 K6 [table.concat]
       11 MOVE                             R7 R3
       12 LOADK                            R8 K7 [" > "]
       13 CALL                             R6 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K1 ["title"]
       18 NEWTABLE                         R6 0 0
       20 SETTABLEKS                       R6 R5 K2 ["items"]
       22 MOVE                             R1 R5
       23 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R5
       27 GETIMPORT                        R6 K9 [table.insert]
       29 CALL                             R6 2 0
       30 MOVE                             R5 R1
       31 GETTABLEKS                       R7 R5 K2 ["items"]
       33 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
       35 MOVE                             R8 R4
       36 GETIMPORT                        R6 K9 [table.insert]
       38 CALL                             R6 2 0
       39 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 3
        3 FORGPREP                         R4
        4 JUMPIFNOTEQKS                    R1 K0 [""] ; [+7]
        6 LOADK                            R9 K1 ["group-%*"]
        7 MOVE                             R11 R7
        8 NAMECALL                         R9 R9 K2 ["format"]
       10 CALL                             R9 2 1
       11 JUMP                             ; [+6]
       12 LOADK                            R9 K3 ["%*/group-%*"]
       13 MOVE                             R11 R1
       14 MOVE                             R12 R7
       15 NAMECALL                         R9 R9 K2 ["format"]
       17 CALL                             R9 3 1
       18 GETIMPORT                        R10 K6 [table.clone]
       20 MOVE                             R11 R2
       21 CALL                             R10 1 1
       22 GETTABLEKS                       R11 R8 K7 ["title"]
       24 JUMPIFEQKNIL                     R11 ; [+9]
       26 GETTABLEKS                       R13 R8 K7 ["title"]
       28 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       30 MOVE                             R12 R10
       31 GETIMPORT                        R11 K9 [table.insert]
       33 CALL                             R11 2 0
       34 MOVE                             R11 R3
       35 JUMPIF                           R11 ; [+10]
       36 LOADB                            R11 0
       37 GETTABLEKS                       R12 R8 K7 ["title"]
       39 JUMPIFEQKNIL                     R12 ; [+6]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R12 R8 K7 ["title"]
       44 GETUPVAL                         R13 2
       45 CALL                             R11 2 1
       46 LOADNIL                          R12
       47 GETTABLEKS                       R13 R8 K10 ["items"]
       49 LOADNIL                          R14
       50 LOADNIL                          R15
       51 FORGPREP                         R13
       52 LOADK                            R18 K11 ["%*/item-%*"]
       53 MOVE                             R20 R9
       54 MOVE                             R21 R16
       55 NAMECALL                         R18 R18 K2 ["format"]
       57 CALL                             R18 3 1
       58 GETTABLEKS                       R19 R17 K10 ["items"]
       60 JUMPIFEQKNIL                     R19 ; [+27]
       62 GETIMPORT                        R19 K6 [table.clone]
       64 MOVE                             R20 R10
       65 CALL                             R19 1 1
       66 GETTABLEKS                       R22 R17 K12 ["text"]
       68 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
       70 MOVE                             R21 R19
       71 GETIMPORT                        R20 K9 [table.insert]
       73 CALL                             R20 2 0
       74 GETUPVAL                         R20 3
       75 GETTABLEKS                       R21 R17 K10 ["items"]
       77 MOVE                             R22 R18
       78 MOVE                             R23 R19
       79 MOVE                             R24 R11
       80 JUMPIF                           R24 ; [+5]
       81 GETUPVAL                         R24 1
       82 GETTABLEKS                       R25 R17 K12 ["text"]
       84 GETUPVAL                         R26 2
       85 CALL                             R24 2 1
       86 CALL                             R20 4 0
       87 JUMP                             ; [+15]
       88 JUMPIF                           R11 ; [+6]
       89 GETUPVAL                         R19 1
       90 GETTABLEKS                       R20 R17 K12 ["text"]
       92 GETUPVAL                         R21 2
       93 CALL                             R19 2 1
       94 JUMPIFNOT                        R19 ; [+8]
       95 GETUPVAL                         R19 4
       96 GETUPVAL                         R20 5
       97 MOVE                             R21 R12
       98 MOVE                             R22 R9
       99 MOVE                             R23 R10
      100 MOVE                             R24 R17
      101 CALL                             R19 5 1
      102 MOVE                             R12 R19
      103 FORGLOOP                         R13 2 ; [-52]
      105 FORGLOOP                         R4 2 ; [-102]
      107 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [string.split]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 [","]
        4 CALL                             R2 2 1
        5 NEWTABLE                         R3 0 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R4
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R3
       14 MOVE                             R5 R4
       15 MOVE                             R6 R0
       16 LOADK                            R7 K4 [""]
       17 NEWTABLE                         R8 0 0
       19 LOADB                            R9 0
       20 CALL                             R5 4 0
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["getMenuGroups"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_1]
       23 DUPCLOSURE                       R5 K11 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1
