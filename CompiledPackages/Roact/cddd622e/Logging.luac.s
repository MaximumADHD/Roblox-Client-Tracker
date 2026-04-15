PROTO_0:
        0 LOADK                            R2 K0 ["\t"]
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K1 ["rep"]
        4 CALL                             R2 2 1
        5 MOVE                             R4 R2
        6 LOADK                            R7 K2 ["\n"]
        7 LOADK                            R9 K2 ["\n"]
        8 MOVE                             R10 R2
        9 CONCAT                           R8 R9 R10
       10 NAMECALL                         R5 R0 K3 ["gsub"]
       12 CALL                             R5 3 1
       13 CONCAT                           R3 R4 R5
       14 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 LOADK                            R11 K2 ["\t"]
        8 MOVE                             R13 R1
        9 NAMECALL                         R11 R11 K3 ["rep"]
       11 CALL                             R11 2 1
       12 MOVE                             R12 R11
       13 LOADK                            R15 K4 ["\n"]
       14 LOADK                            R17 K4 ["\n"]
       15 MOVE                             R18 R11
       16 CONCAT                           R16 R17 R18
       17 NAMECALL                         R13 R7 K5 ["gsub"]
       19 CALL                             R13 3 1
       20 CONCAT                           R10 R12 R13
       21 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       23 MOVE                             R9 R2
       24 GETIMPORT                        R8 K8 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 [inext] ; [-21]
       29 GETIMPORT                        R3 K10 [table.concat]
       31 MOVE                             R4 R2
       32 LOADK                            R5 K4 ["\n"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["LogInfo {"]
        3 SETLIST                          R1 R2 1 [1]
        5 GETTABLEKS                       R3 R0 K1 ["errors"]
        7 LENGTH                           R2 R3
        8 GETTABLEKS                       R4 R0 K2 ["warnings"]
       10 LENGTH                           R3 R4
       11 GETTABLEKS                       R5 R0 K3 ["infos"]
       13 LENGTH                           R4 R5
       14 ADD                              R6 R2 R3
       15 ADD                              R5 R6 R4
       16 JUMPIFNOTEQKN                    R5 K4 [0] ; [+8]
       18 FASTCALL2K                       TABLE_INSERT R1 K5 ; [+5]
       20 MOVE                             R6 R1
       21 LOADK                            R7 K5 ["\t(no messages)"]
       22 GETIMPORT                        R5 K8 [table.insert]
       24 CALL                             R5 2 0
       25 LOADN                            R5 0
       26 JUMPIFNOTLT                      R5 R2 ; [+28]
       28 MOVE                             R6 R1
       29 LOADK                            R7 K9 ["\tErrors (%d) {"]
       30 MOVE                             R9 R2
       31 NAMECALL                         R7 R7 K10 ["format"]
       33 CALL                             R7 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R5 K8 [table.insert]
       37 CALL                             R5 -1 0
       38 MOVE                             R6 R1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R8 R0 K1 ["errors"]
       42 LOADN                            R9 2
       43 CALL                             R7 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R5 K8 [table.insert]
       47 CALL                             R5 -1 0
       48 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       50 MOVE                             R6 R1
       51 LOADK                            R7 K11 ["\t}"]
       52 GETIMPORT                        R5 K8 [table.insert]
       54 CALL                             R5 2 0
       55 LOADN                            R5 0
       56 JUMPIFNOTLT                      R5 R3 ; [+28]
       58 MOVE                             R6 R1
       59 LOADK                            R7 K12 ["\tWarnings (%d) {"]
       60 MOVE                             R9 R3
       61 NAMECALL                         R7 R7 K10 ["format"]
       63 CALL                             R7 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R5 K8 [table.insert]
       67 CALL                             R5 -1 0
       68 MOVE                             R6 R1
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R8 R0 K2 ["warnings"]
       72 LOADN                            R9 2
       73 CALL                             R7 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R5 K8 [table.insert]
       77 CALL                             R5 -1 0
       78 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       80 MOVE                             R6 R1
       81 LOADK                            R7 K11 ["\t}"]
       82 GETIMPORT                        R5 K8 [table.insert]
       84 CALL                             R5 2 0
       85 LOADN                            R5 0
       86 JUMPIFNOTLT                      R5 R4 ; [+28]
       88 MOVE                             R6 R1
       89 LOADK                            R7 K13 ["\tInfos (%d) {"]
       90 MOVE                             R9 R4
       91 NAMECALL                         R7 R7 K10 ["format"]
       93 CALL                             R7 2 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R5 K8 [table.insert]
       97 CALL                             R5 -1 0
       98 MOVE                             R6 R1
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R8 R0 K3 ["infos"]
      102 LOADN                            R9 2
      103 CALL                             R7 2 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R5 K8 [table.insert]
      107 CALL                             R5 -1 0
      108 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
      110 MOVE                             R6 R1
      111 LOADK                            R7 K11 ["\t}"]
      112 GETIMPORT                        R5 K8 [table.insert]
      114 CALL                             R5 2 0
      115 FASTCALL2K                       TABLE_INSERT R1 K14 ; [+5]
      117 MOVE                             R6 R1
      118 LOADK                            R7 K14 ["}"]
      119 GETIMPORT                        R5 K8 [table.insert]
      121 CALL                             R5 2 0
      122 GETIMPORT                        R5 K16 [table.concat]
      124 MOVE                             R6 R1
      125 LOADK                            R7 K17 ["\n"]
      126 CALL                             R5 2 -1
      127 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"errors", "warnings", "infos"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["errors"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["warnings"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["infos"]
       13 GETUPVAL                         R3 0
       14 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K5 [setmetatable]
       19 CALL                             R1 2 0
       20 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADB                            R3 0
        4 SETUPVAL                         R3 1
        5 GETUPVAL                         R3 2
        6 LOADB                            R4 1
        7 SETTABLE                         R4 R3 R1
        8 GETIMPORT                        R3 K1 [pcall]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 2
       13 LOADNIL                          R6
       14 SETTABLE                         R6 R5 R1
       15 SETUPVAL                         R2 1
       16 FASTCALL2                        ASSERT R3 R4 ; [+5]
       18 MOVE                             R6 R3
       19 MOVE                             R7 R4
       20 GETIMPORT                        R5 K3 [assert]
       22 CALL                             R5 2 0
       23 RETURN                           R1 1

PROTO_5:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["format"]
        4 CALL                             R1 -1 1
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETUPVAL                         R3 0
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETTABLEKS                       R8 R5 K3 ["warnings"]
       12 FASTCALL2                        TABLE_INSERT R8 R1 ; [+4]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R7 K6 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 1 ; [-9]
       20 GETIMPORT                        R2 K9 [debug.traceback]
       22 LOADK                            R3 K10 [""]
       23 LOADN                            R4 2
       24 CALL                             R2 2 1
       25 LOADN                            R4 2
       26 NAMECALL                         R2 R2 K11 ["sub"]
       28 CALL                             R2 2 1
       29 LOADK                            R3 K12 ["%s\n%s"]
       30 MOVE                             R5 R1
       31 LOADK                            R7 K13 ["\t"]
       32 LOADN                            R9 1
       33 NAMECALL                         R7 R7 K14 ["rep"]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R7
       37 LOADK                            R11 K15 ["\n"]
       38 LOADK                            R13 K15 ["\n"]
       39 MOVE                             R14 R7
       40 CONCAT                           R12 R13 R14
       41 NAMECALL                         R9 R2 K16 ["gsub"]
       43 CALL                             R9 3 1
       44 CONCAT                           R6 R8 R9
       45 NAMECALL                         R3 R3 K0 ["format"]
       47 CALL                             R3 3 1
       48 GETUPVAL                         R4 1
       49 JUMPIFNOT                        R4 ; [+4]
       50 GETIMPORT                        R4 K18 [warn]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [debug.traceback]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["warn"]
       14 MOVE                             R3 R0
       15 GETVARARGS                       R4 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 DUPCLOSURE                       R3 K0 [PROTO_0]
        7 DUPCLOSURE                       R4 K1 [PROTO_1]
        8 NEWTABLE                         R5 1 0
       10 DUPCLOSURE                       R6 K2 [PROTO_2]
       11 CAPTURE                          VAL R4
       12 SETTABLEKS                       R6 R5 K3 ["__tostring"]
       14 DUPCLOSURE                       R6 K4 [PROTO_3]
       15 CAPTURE                          VAL R5
       16 NEWTABLE                         R7 4 0
       18 NEWCLOSURE                       R8 P4
       19 CAPTURE                          VAL R6
       20 CAPTURE                          REF R0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R8 R7 K5 ["capture"]
       24 NEWCLOSURE                       R8 P5
       25 CAPTURE                          VAL R1
       26 CAPTURE                          REF R0
       27 SETTABLEKS                       R8 R7 K6 ["warn"]
       29 DUPCLOSURE                       R8 K7 [PROTO_6]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R7
       32 SETTABLEKS                       R8 R7 K8 ["warnOnce"]
       34 CLOSEUPVALS                      R0
       35 RETURN                           R7 1
