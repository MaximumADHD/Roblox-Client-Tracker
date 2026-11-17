PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 NAMECALL                         R6 R6 K0 ["GenerateGUID"]
        3 CALL                             R6 1 1
        4 GETTABLEKS                       R7 R1 K1 ["Text"]
        6 GETTABLEKS                       R8 R1 K2 ["Icon"]
        8 NAMECALL                         R4 R0 K3 ["CreatePluginMenu"]
       10 CALL                             R4 4 1
       11 JUMPIFNOT                        R2 ; [+15]
       12 GETIMPORT                        R5 K5 [ipairs]
       14 MOVE                             R6 R2
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 GETTABLE                         R10 R1 R9
       18 GETUPVAL                         R11 1
       19 MOVE                             R12 R0
       20 MOVE                             R13 R4
       21 MOVE                             R14 R10
       22 MOVE                             R15 R3
       23 CALL                             R11 4 0
       24 FORGLOOP                         R5 2 [inext] ; [-8]
       26 RETURN                           R4 1
       27 GETIMPORT                        R5 K5 [ipairs]
       29 MOVE                             R6 R1
       30 CALL                             R5 1 3
       31 FORGPREP_INEXT                   R5
       32 GETUPVAL                         R10 1
       33 MOVE                             R11 R0
       34 MOVE                             R12 R4
       35 MOVE                             R13 R9
       36 MOVE                             R14 R3
       37 CALL                             R10 4 0
       38 FORGLOOP                         R5 2 [inext] ; [-7]
       40 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnItemClicked"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R5 R2
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+89]
        7 LENGTH                           R4 R2
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+37]
       11 GETUPVAL                         R6 0
       12 NAMECALL                         R6 R6 K3 ["GenerateGUID"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R7 R2 K4 ["Text"]
       17 GETTABLEKS                       R8 R2 K5 ["Icon"]
       19 NAMECALL                         R4 R0 K6 ["CreatePluginMenu"]
       21 CALL                             R4 4 1
       22 GETIMPORT                        R5 K8 [ipairs]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 3
       26 FORGPREP_INEXT                   R5
       27 GETUPVAL                         R10 1
       28 MOVE                             R11 R0
       29 MOVE                             R12 R4
       30 MOVE                             R13 R9
       31 MOVE                             R14 R3
       32 CALL                             R10 4 0
       33 FORGLOOP                         R5 2 [inext] ; [-7]
       35 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       37 MOVE                             R6 R3
       38 MOVE                             R7 R4
       39 GETIMPORT                        R5 K10 [table.insert]
       41 CALL                             R5 2 0
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R1 K11 ["AddMenu"]
       45 CALL                             R5 2 0
       46 RETURN                           R0 0
       47 GETTABLEKS                       R4 R2 K12 ["ShowSeparator"]
       49 JUMPIFNOT                        R4 ; [+4]
       50 NAMECALL                         R4 R1 K13 ["AddSeparator"]
       52 CALL                             R4 1 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R4 R2 K14 ["Id"]
       56 JUMPIFNOTEQKNIL                  R4 ; [+7]
       58 GETUPVAL                         R4 0
       59 NAMECALL                         R4 R4 K3 ["GenerateGUID"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R2 K14 ["Id"]
       64 GETTABLEKS                       R6 R2 K14 ["Id"]
       66 GETTABLEKS                       R7 R2 K4 ["Text"]
       68 GETTABLEKS                       R8 R2 K5 ["Icon"]
       70 NAMECALL                         R4 R1 K15 ["AddNewAction"]
       72 CALL                             R4 4 1
       73 GETTABLEKS                       R6 R2 K16 ["Enabled"]
       75 JUMPIFNOTEQKNIL                  R6 ; [+3]
       77 LOADB                            R5 1
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R5 R2 K16 ["Enabled"]
       81 SETTABLEKS                       R5 R4 K16 ["Enabled"]
       83 GETTABLEKS                       R5 R2 K17 ["Checked"]
       85 SETTABLEKS                       R5 R4 K17 ["Checked"]
       87 GETTABLEKS                       R5 R4 K18 ["Triggered"]
       89 NEWCLOSURE                       R7 P0
       90 CAPTURE                          VAL R2
       91 NAMECALL                         R5 R5 K19 ["connect"]
       93 CALL                             R5 2 0
       94 RETURN                           R0 0
       95 FASTCALL1                        TYPEOF R2 ; [+3]
       96 MOVE                             R5 R2
       97 GETIMPORT                        R4 K1 [typeof]
       99 CALL                             R4 1 1
      100 JUMPIFNOTEQKS                    R4 K20 ["Instance"] ; [+11]
      102 LOADK                            R6 K21 ["PluginAction"]
      103 NAMECALL                         R4 R2 K22 ["IsA"]
      105 CALL                             R4 2 1
      106 JUMPIFNOT                        R4 ; [+5]
      107 MOVE                             R6 R2
      108 NAMECALL                         R4 R1 K23 ["AddAction"]
      110 CALL                             R4 2 0
      111 RETURN                           R0 0
      112 JUMPIFNOT                        R2 ; [+10]
      113 GETIMPORT                        R4 K25 [error]
      115 LOADK                            R6 K26 ["Unsupported action "]
      116 FASTCALL1                        TOSTRING R2 ; [+3]
      117 MOVE                             R8 R2
      118 GETIMPORT                        R7 K28 [tostring]
      120 CALL                             R7 1 1
      121 CONCAT                           R5 R6 R7
      122 CALL                             R4 1 0
      123 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 NAMECALL                         R5 R4 K0 ["ShowAsync"]
       10 CALL                             R5 1 0
       11 GETIMPORT                        R5 K2 [ipairs]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 NAMECALL                         R10 R9 K3 ["Destroy"]
       18 CALL                             R10 1 0
       19 FORGLOOP                         R5 2 [inext] ; [-4]
       21 NAMECALL                         R5 R4 K3 ["Destroy"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 LOADNIL                          R2
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R2
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R2
       16 DUPCLOSURE                       R4 K5 [PROTO_4]
       17 CAPTURE                          VAL R3
       18 CLOSEUPVALS                      R2
       19 RETURN                           R4 1
