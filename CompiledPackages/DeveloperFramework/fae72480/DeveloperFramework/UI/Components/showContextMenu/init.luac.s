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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemClicked"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R5 R2
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+71]
        7 LENGTH                           R4 R2
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+19]
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 LOADNIL                          R7
       15 MOVE                             R8 R3
       16 CALL                             R4 4 1
       17 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       19 MOVE                             R6 R3
       20 MOVE                             R7 R4
       21 GETIMPORT                        R5 K4 [table.insert]
       23 CALL                             R5 2 0
       24 MOVE                             R7 R4
       25 NAMECALL                         R5 R1 K5 ["AddMenu"]
       27 CALL                             R5 2 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R4 R2 K6 ["ShowSeparator"]
       31 JUMPIFNOT                        R4 ; [+4]
       32 NAMECALL                         R4 R1 K7 ["AddSeparator"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R2 K8 ["Id"]
       38 JUMPIFNOTEQKNIL                  R4 ; [+7]
       40 GETUPVAL                         R4 1
       41 NAMECALL                         R4 R4 K9 ["GenerateGUID"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R2 K8 ["Id"]
       46 GETTABLEKS                       R6 R2 K8 ["Id"]
       48 GETTABLEKS                       R7 R2 K10 ["Text"]
       50 GETTABLEKS                       R8 R2 K11 ["Icon"]
       52 NAMECALL                         R4 R1 K12 ["AddNewAction"]
       54 CALL                             R4 4 1
       55 GETTABLEKS                       R6 R2 K13 ["Enabled"]
       57 JUMPIFNOTEQKNIL                  R6 ; [+3]
       59 LOADB                            R5 1
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R5 R2 K13 ["Enabled"]
       63 SETTABLEKS                       R5 R4 K13 ["Enabled"]
       65 GETTABLEKS                       R5 R2 K14 ["Checked"]
       67 SETTABLEKS                       R5 R4 K14 ["Checked"]
       69 GETTABLEKS                       R5 R4 K15 ["Triggered"]
       71 NEWCLOSURE                       R7 P0
       72 CAPTURE                          VAL R2
       73 NAMECALL                         R5 R5 K16 ["connect"]
       75 CALL                             R5 2 0
       76 RETURN                           R0 0
       77 FASTCALL1                        TYPEOF R2 ; [+3]
       78 MOVE                             R5 R2
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 JUMPIFNOTEQKS                    R4 K17 ["Instance"] ; [+11]
       84 LOADK                            R6 K18 ["PluginAction"]
       85 NAMECALL                         R4 R2 K19 ["IsA"]
       87 CALL                             R4 2 1
       88 JUMPIFNOT                        R4 ; [+5]
       89 MOVE                             R6 R2
       90 NAMECALL                         R4 R1 K20 ["AddAction"]
       92 CALL                             R4 2 0
       93 RETURN                           R0 0
       94 JUMPIFNOT                        R2 ; [+10]
       95 GETIMPORT                        R4 K22 [error]
       97 LOADK                            R6 K23 ["Unsupported action "]
       98 FASTCALL1                        TOSTRING R2 ; [+3]
       99 MOVE                             R8 R2
      100 GETIMPORT                        R7 K25 [tostring]
      102 CALL                             R7 1 1
      103 CONCAT                           R5 R6 R7
      104 CALL                             R4 1 0
      105 RETURN                           R0 0

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
       13 DUPCLOSURE                       R2 K5 [PROTO_3]
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R0
       16 DUPCLOSURE                       R4 K6 [PROTO_4]
       17 CAPTURE                          VAL R3
       18 CLOSEUPVALS                      R2
       19 RETURN                           R4 1
