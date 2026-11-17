PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["className"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["node"]
        3 GETTABLEKS                       R3 R3 K2 ["Size"]
        5 ORK                              R2 R3 K0 [0]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R3 R3 K2 ["references"]
        4 ORK                              R2 R3 K0 [0]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K4 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["owners"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 ORK                              R5 R2 K0 [0]
        5 JUMPIFNOTEQKNIL                  R3 ; [+3]
        7 LOADB                            R6 1
        8 JUMP                             ; [+1]
        9 MOVE                             R6 R3
       10 GETTABLEKS                       R7 R0 K1 ["Children"]
       12 JUMPIFNOT                        R7 ; [+9]
       13 GETIMPORT                        R8 K3 [next]
       15 GETTABLEKS                       R9 R0 K1 ["Children"]
       17 CALL                             R8 1 1
       18 JUMPIFNOTEQKNIL                  R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 JUMPIFNOT                        R7 ; [+15]
       23 GETIMPORT                        R8 K5 [pairs]
       25 GETTABLEKS                       R9 R0 K1 ["Children"]
       27 CALL                             R8 1 3
       28 FORGPREP_NEXT                    R8
       29 GETUPVAL                         R13 0
       30 MOVE                             R14 R12
       31 MOVE                             R15 R4
       32 ADDK                             R16 R5 K6 [1]
       33 LOADB                            R17 0
       34 CALL                             R13 4 0
       35 FORGLOOP                         R8 2 ; [-7]
       37 RETURN                           R4 1
       38 JUMPIF                           R6 ; [+11]
       39 DUPTABLE                         R10 K9 [{"node", "depth"}]
       40 SETTABLEKS                       R0 R10 K7 ["node"]
       42 SETTABLEKS                       R5 R10 K8 ["depth"]
       44 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       46 MOVE                             R9 R4
       47 GETIMPORT                        R8 K12 [table.insert]
       49 CALL                             R8 2 0
       50 RETURN                           R4 1

PROTO_10:
        0 JUMPIFNOTEQKS                    R1 K0 ["size"] ; [+5]
        2 GETTABLEKS                       R3 R0 K2 ["Size"]
        4 ORK                              R2 R3 K1 [0]
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R1 K3 ["className"] ; [+4]
        8 GETTABLEKS                       R2 R0 K3 ["className"]
       10 RETURN                           R2 1
       11 GETTABLE                         R2 R0 R1
       12 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["node"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQKS                    R4 K1 ["size"] ; [+5]
        5 GETTABLEKS                       R5 R3 K3 ["Size"]
        7 ORK                              R2 R5 K2 [0]
        8 JUMP                             ; [+6]
        9 JUMPIFNOTEQKS                    R4 K4 ["className"] ; [+4]
       11 GETTABLEKS                       R2 R3 K4 ["className"]
       13 JUMP                             ; [+1]
       14 GETTABLE                         R2 R3 R4
       15 GETTABLEKS                       R4 R1 K0 ["node"]
       17 GETUPVAL                         R5 0
       18 JUMPIFNOTEQKS                    R5 K1 ["size"] ; [+5]
       20 GETTABLEKS                       R6 R4 K3 ["Size"]
       22 ORK                              R3 R6 K2 [0]
       23 JUMP                             ; [+6]
       24 JUMPIFNOTEQKS                    R5 K4 ["className"] ; [+4]
       26 GETTABLEKS                       R3 R4 K4 ["className"]
       28 JUMP                             ; [+1]
       29 GETTABLE                         R3 R4 R5
       30 JUMPIFNOTEQKNIL                  R2 ; [+5]
       32 JUMPIFNOTEQKNIL                  R3 ; [+3]
       34 LOADB                            R4 0
       35 RETURN                           R4 1
       36 JUMPIFNOTEQKNIL                  R2 ; [+12]
       38 GETUPVAL                         R5 1
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K5 ["Direction"]
       42 GETTABLEKS                       R6 R6 K6 ["desc"]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 RETURN                           R4 1
       49 JUMPIFNOTEQKNIL                  R3 ; [+12]
       51 GETUPVAL                         R5 1
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K5 ["Direction"]
       55 GETTABLEKS                       R6 R6 K7 ["asc"]
       57 JUMPIFEQ                         R5 R6 ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 RETURN                           R4 1
       62 FASTCALL1                        TYPE R2 ; [+3]
       63 MOVE                             R5 R2
       64 GETIMPORT                        R4 K9 [type]
       66 CALL                             R4 1 1
       67 JUMPIFNOTEQKS                    R4 K10 ["number"] ; [+26]
       69 FASTCALL1                        TYPE R3 ; [+3]
       70 MOVE                             R5 R3
       71 GETIMPORT                        R4 K9 [type]
       73 CALL                             R4 1 1
       74 JUMPIFNOTEQKS                    R4 K10 ["number"] ; [+19]
       76 GETUPVAL                         R5 1
       77 GETUPVAL                         R6 2
       78 GETTABLEKS                       R6 R6 K5 ["Direction"]
       80 GETTABLEKS                       R6 R6 K7 ["asc"]
       82 JUMPIFNOTEQ                      R5 R6 ; [+6]
       84 JUMPIFLT                         R2 R3 ; [+2]
       86 LOADB                            R4 0 +1
       87 LOADB                            R4 1
       88 RETURN                           R4 1
       89 JUMPIFLT                         R3 R2 ; [+2]
       91 LOADB                            R4 0 +1
       92 LOADB                            R4 1
       93 RETURN                           R4 1
       94 FASTCALL1                        TOSTRING R2 ; [+3]
       95 MOVE                             R5 R2
       96 GETIMPORT                        R4 K12 [tostring]
       98 CALL                             R4 1 1
       99 NAMECALL                         R4 R4 K13 ["lower"]
      101 CALL                             R4 1 1
      102 FASTCALL1                        TOSTRING R3 ; [+3]
      103 MOVE                             R6 R3
      104 GETIMPORT                        R5 K12 [tostring]
      106 CALL                             R5 1 1
      107 NAMECALL                         R5 R5 K13 ["lower"]
      109 CALL                             R5 1 1
      110 GETUPVAL                         R7 1
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R8 R8 K5 ["Direction"]
      114 GETTABLEKS                       R8 R8 K7 ["asc"]
      116 JUMPIFNOTEQ                      R7 R8 ; [+6]
      118 JUMPIFLT                         R4 R5 ; [+2]
      120 LOADB                            R6 0 +1
      121 LOADB                            R6 1
      122 RETURN                           R6 1
      123 JUMPIFLT                         R5 R4 ; [+2]
      125 LOADB                            R6 0 +1
      126 LOADB                            R6 1
      127 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["column"]
        2 GETTABLEKS                       R3 R1 K1 ["direction"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Column"]
        7 GETTABLEKS                       R4 R4 K3 ["none"]
        9 JUMPIFNOTEQ                      R2 R4 ; [+15]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K4 ["node"]
       19 GETTABLEKS                       R10 R10 K5 ["Id"]
       21 SETTABLE                         R10 R4 R8
       22 FORGLOOP                         R5 2 ; [-6]
       24 RETURN                           R4 1
       25 GETIMPORT                        R4 K8 [table.clone]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [table.sort]
       31 MOVE                             R6 R4
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 0
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R4
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLEKS                       R11 R10 K4 ["node"]
       45 GETTABLEKS                       R11 R11 K5 ["Id"]
       47 SETTABLE                         R11 R5 R9
       48 FORGLOOP                         R6 2 ; [-6]
       50 RETURN                           R5 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["Owners"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+8]
        6 LOADN                            R2 0
        7 LOADK                            R3 K2 [""]
        8 NEWTABLE                         R4 0 0
       10 GETTABLEKS                       R5 R0 K3 ["ClassName"]
       12 RETURN                           R2 4
       13 NEWTABLE                         R2 0 0
       15 NEWTABLE                         R3 0 0
       17 LOADNIL                          R4
       18 GETIMPORT                        R5 K5 [ipairs]
       20 MOVE                             R6 R1
       21 CALL                             R5 1 3
       22 FORGPREP_INEXT                   R5
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FASTCALL1                        TYPEOF R9 ; [+3]
       27 MOVE                             R14 R9
       28 GETIMPORT                        R13 K7 [typeof]
       30 CALL                             R13 1 1
       31 JUMPIFNOTEQKS                    R13 K8 ["Instance"] ; [+9]
       33 NAMECALL                         R13 R9 K9 ["GetFullName"]
       35 CALL                             R13 1 1
       36 MOVE                             R11 R13
       37 MOVE                             R10 R11
       38 GETTABLEKS                       R12 R9 K3 ["ClassName"]
       40 JUMP                             ; [+22]
       41 FASTCALL1                        TYPE R9 ; [+3]
       42 MOVE                             R14 R9
       43 GETIMPORT                        R13 K11 [type]
       45 CALL                             R13 1 1
       46 JUMPIFNOTEQKS                    R13 K12 ["table"] ; [+7]
       48 GETTABLEKS                       R11 R9 K13 ["Name"]
       50 MOVE                             R10 R11
       51 GETTABLEKS                       R12 R9 K3 ["ClassName"]
       53 JUMP                             ; [+9]
       54 FASTCALL1                        TYPE R9 ; [+3]
       55 MOVE                             R14 R9
       56 GETIMPORT                        R13 K11 [type]
       58 CALL                             R13 1 1
       59 JUMPIFNOTEQKS                    R13 K14 ["string"] ; [+3]
       61 MOVE                             R11 R9
       62 MOVE                             R10 R9
       63 JUMPIFNOT                        R10 ; [+14]
       64 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       66 MOVE                             R14 R2
       67 MOVE                             R15 R10
       68 GETIMPORT                        R13 K16 [table.insert]
       70 CALL                             R13 2 0
       71 OR                               R15 R11 R10
       72 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       74 MOVE                             R14 R3
       75 GETIMPORT                        R13 K16 [table.insert]
       77 CALL                             R13 2 0
       78 JUMPIFNOT                        R12 ; [+7]
       79 JUMPIFNOT                        R4 ; [+4]
       80 JUMPIFEQ                         R4 R12 ; [+3]
       82 LOADK                            R4 K17 ["Mixed"]
       83 JUMP                             ; [+2]
       84 JUMPIF                           R4 ; [+1]
       85 MOVE                             R4 R12
       86 FORGLOOP                         R5 2 [inext] ; [-64]
       88 LENGTH                           R5 R1
       89 GETIMPORT                        R6 K19 [table.concat]
       91 MOVE                             R7 R2
       92 LOADK                            R8 K20 [", "]
       93 CALL                             R6 2 1
       94 MOVE                             R7 R3
       95 MOVE                             R8 R4
       96 RETURN                           R5 4

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Direction"]
        7 GETTABLEKS                       R2 R2 K2 ["desc"]
        9 GETTABLEKS                       R3 R1 K3 ["column"]
       11 JUMPIFNOTEQ                      R3 R0 ; [+21]
       13 GETTABLEKS                       R3 R1 K4 ["direction"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["Direction"]
       18 GETTABLEKS                       R4 R4 K5 ["asc"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+7]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K1 ["Direction"]
       25 GETTABLEKS                       R2 R3 K2 ["desc"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["Direction"]
       31 GETTABLEKS                       R2 R3 K5 ["asc"]
       33 GETUPVAL                         R3 2
       34 DUPTABLE                         R4 K6 [{"column", "direction"}]
       35 SETTABLEKS                       R0 R4 K3 ["column"]
       37 SETTABLEKS                       R2 R4 K4 ["direction"]
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 4
       44 GETUPVAL                         R5 5
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K0 ["get"]
       48 CALL                             R6 0 -1
       49 CALL                             R5 -1 1
       50 MOVE                             R6 R3
       51 CALL                             R4 2 1
       52 GETUPVAL                         R5 7
       53 MOVE                             R6 R4
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 8
       56 LENGTH                           R6 R4
       57 CALL                             R5 1 0
       58 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADN                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K0 ["nodeById"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["parentById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["instanceOrder"]
       25 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 3
        4 FORGPREP                         R1
        5 JUMPIFNOTEQ                      R5 R0 ; [+2]
        7 RETURN                           R4 1
        8 FORGLOOP                         R1 2 ; [-4]
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R2 R1 K1 ["ownerPaths"]
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETTABLEKS                       R3 R1 K1 ["ownerPaths"]
       11 LENGTH                           R2 R3
       12 LOADN                            R3 0
       13 JUMPIFNOTLT                      R3 R2 ; [+8]
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K2 ["SelectInstancesByPaths"]
       17 GETTABLEKS                       R5 R1 K1 ["ownerPaths"]
       19 NAMECALL                         R2 R2 K3 ["CallAssetPluginAsync"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_19:
        0 LOADN                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["parentById"]
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+6]
        6 ADDK                             R1 R1 K1 [1]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["parentById"]
       10 GETTABLE                         R2 R3 R2
       11 JUMPBACK                         ; [-7]
       12 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["getNodeById"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 DUPTABLE                         R3 K6 [{"node", "depth", "hasChildren", "id"}]
       17 SETTABLEKS                       R2 R3 K2 ["node"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["getDepth"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K3 ["depth"]
       26 GETTABLEKS                       R4 R2 K8 ["Children"]
       28 JUMPIFNOT                        R4 ; [+9]
       29 GETIMPORT                        R5 K10 [next]
       31 GETTABLEKS                       R6 R2 K8 ["Children"]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKNIL                  R5 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K4 ["hasChildren"]
       40 SETTABLEKS                       R1 R3 K5 ["id"]
       42 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["Id"]
        6 GETUPVAL                         R2 0
        7 ADDK                             R2 R2 K1 [1]
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 4
       12 GETTABLEKS                       R6 R0 K2 ["Owners"]
       14 JUMPIF                           R6 ; [+10]
       15 GETTABLEKS                       R6 R0 K3 ["Children"]
       17 JUMPIFNOT                        R6 ; [+7]
       18 GETIMPORT                        R6 K5 [next]
       20 GETTABLEKS                       R7 R0 K3 ["Children"]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKNIL                  R6 ; [+9]
       25 SETTABLEKS                       R2 R0 K6 ["references"]
       27 SETTABLEKS                       R3 R0 K7 ["owners"]
       29 SETTABLEKS                       R4 R0 K8 ["ownerPaths"]
       31 SETTABLEKS                       R5 R0 K9 ["className"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K10 ["nodeById"]
       36 GETTABLEKS                       R7 R0 K0 ["Id"]
       38 SETTABLE                         R0 R6 R7
       39 JUMPIFNOT                        R1 ; [+6]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K11 ["parentById"]
       43 GETTABLEKS                       R7 R0 K0 ["Id"]
       45 SETTABLE                         R1 R6 R7
       46 GETTABLEKS                       R6 R0 K3 ["Children"]
       48 JUMPIFNOT                        R6 ; [+19]
       49 GETIMPORT                        R6 K5 [next]
       51 GETTABLEKS                       R7 R0 K3 ["Children"]
       53 CALL                             R6 1 1
       54 JUMPIFEQKNIL                     R6 ; [+13]
       56 GETTABLEKS                       R6 R0 K3 ["Children"]
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 FORGPREP                         R6
       61 GETUPVAL                         R11 3
       62 MOVE                             R12 R10
       63 GETTABLEKS                       R13 R0 K0 ["Id"]
       65 CALL                             R11 2 0
       66 FORGLOOP                         R6 2 ; [-6]
       68 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchCollisionGeometryMemory"]
        2 NEWTABLE                         R4 0 0
        4 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+13]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["reset"]
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 3
       20 RETURN                           R2 1
       21 FASTCALL1                        TYPE R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K5 [type]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+11]
       28 GETTABLEKS                       R2 R1 K7 ["Name"]
       30 JUMPIF                           R2 ; [+7]
       31 GETTABLEKS                       R2 R1 K8 ["Children"]
       33 JUMPIF                           R2 ; [+4]
       34 DUPTABLE                         R2 K12 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       35 SETTABLEKS                       R1 R2 K8 ["Children"]
       37 MOVE                             R1 R2
       38 GETUPVAL                         R2 2
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R2 K13 ["nodeById"]
       43 GETUPVAL                         R2 2
       44 NEWTABLE                         R3 0 0
       46 SETTABLEKS                       R3 R2 K14 ["parentById"]
       48 LOADN                            R2 1
       49 NEWCLOSURE                       R3 P0
       50 CAPTURE                          REF R2
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R3
       54 MOVE                             R4 R3
       55 MOVE                             R5 R1
       56 LOADNIL                          R6
       57 CALL                             R4 2 0
       58 GETUPVAL                         R4 5
       59 MOVE                             R5 R1
       60 CALL                             R4 1 1
       61 GETUPVAL                         R5 6
       62 MOVE                             R6 R4
       63 GETUPVAL                         R7 7
       64 GETTABLEKS                       R7 R7 K15 ["get"]
       66 CALL                             R7 0 -1
       67 CALL                             R5 -1 1
       68 GETUPVAL                         R6 8
       69 MOVE                             R7 R1
       70 CALL                             R6 1 0
       71 GETUPVAL                         R6 9
       72 MOVE                             R7 R1
       73 CALL                             R6 1 0
       74 GETUPVAL                         R6 10
       75 MOVE                             R7 R5
       76 CALL                             R6 1 0
       77 GETUPVAL                         R6 11
       78 LENGTH                           R7 R5
       79 CALL                             R6 1 0
       80 CLOSEUPVALS                      R2
       81 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R5 R0 K1 ["Size"]
        5 ORK                              R4 R5 K0 [0]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R1 ; [+14]
        8 MOVE                             R5 R2
        9 LOADK                            R8 K2 ["Tooltip"]
       10 LOADK                            R9 K3 ["MemoryLabel"]
       11 DUPTABLE                         R10 K5 [{"value"}]
       12 SETTABLEKS                       R3 R10 K4 ["value"]
       14 NAMECALL                         R6 R1 K6 ["getText"]
       16 CALL                             R6 4 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R4 K9 [table.insert]
       20 CALL                             R4 -1 0
       21 RETURN                           R2 1
       22 LOADK                            R7 K10 ["Memory: "]
       23 MOVE                             R8 R3
       24 CONCAT                           R6 R7 R8
       25 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K9 [table.insert]
       30 CALL                             R4 2 0
       31 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"column", "direction"}]
        3 SETTABLEKS                       R1 R5 K0 ["column"]
        5 SETTABLEKS                       R2 R5 K1 ["direction"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagSceneAnalysisBugfixesMay2026"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 NEWTABLE                         R1 0 1
       11 LOADK                            R4 K1 ["Messages"]
       12 LOADK                            R5 K2 ["LocalMachineValuesWarning"]
       13 NAMECALL                         R2 R0 K3 ["getText"]
       15 CALL                             R2 3 -1
       16 SETLIST                          R1 R2 -1 [1]
       18 RETURN                           R1 1
       19 NEWTABLE                         R1 0 1
       21 LOADK                            R2 K4 ["Local machine values. Memory usage will vary on player's devices."]
       22 SETLIST                          R1 R2 1 [1]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Util"]
       15 GETTABLEKS                       R3 R3 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K7 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Observable"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K10 ["deepFreeze"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K7 ["Util"]
       42 GETTABLEKS                       R6 R6 K11 ["formatSize"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K12 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Components"]
       60 GETTABLEKS                       R8 R8 K14 ["AbridgedPathCell"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K15 ["Bin"]
       67 GETTABLEKS                       R9 R9 K16 ["Common"]
       69 GETTABLEKS                       R9 R9 K17 ["defineLuaFlags"]
       71 CALL                             R8 1 1
       72 NEWTABLE                         R9 0 4
       74 DUPTABLE                         R10 K31 [{["id"] = "className", ["headerText"] = "ClassName", ["sortKey"] = "className", ["width"] = 0.18, ["idealWidth"] = 100, ["priority"] = 1, ["order"] = 1, ["cell"]}]
       75 DUPCLOSURE                       R11 K32 [PROTO_0]
       76 SETTABLEKS                       R11 R10 K30 ["cell"]
       78 DUPTABLE                         R11 K39 [{["id"] = "size", ["headerText"] = "Memory", ["headerKey"] = "Memory", ["sortKey"] = "size", ["width"] = 0.13, ["idealWidth"] = 90, ["priority"] = 2, ["order"] = 2, ["cell"]}]
       79 DUPCLOSURE                       R12 K40 [PROTO_1]
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R12 R11 K30 ["cell"]
       83 DUPTABLE                         R12 K46 [{["id"] = "references", ["headerText"] = "References", ["headerKey"] = "References", ["sortKey"] = "references", ["width"] = 0.1, ["idealWidth"] = 70, ["priority"] = 3, ["order"] = 3, ["cell"]}]
       84 DUPCLOSURE                       R13 K47 [PROTO_2]
       85 SETTABLEKS                       R13 R12 K30 ["cell"]
       87 DUPTABLE                         R13 K54 [{["id"] = "owners", ["headerText"] = "Owners", ["headerKey"] = "Owners", ["sortKey"] = "owners", ["width"] = 0.32, ["idealWidth"] = 250, ["priority"] = 4, ["order"] = 4, ["cell"], ["renderCell"]}]
       88 DUPCLOSURE                       R14 K55 [PROTO_3]
       89 SETTABLEKS                       R14 R13 K30 ["cell"]
       91 SETTABLEKS                       R7 R13 K53 ["renderCell"]
       93 SETLIST                          R9 R10 4 [1]
       95 MOVE                             R10 R9
       96 LOADNIL                          R11
       97 LOADNIL                          R12
       98 FORGPREP                         R10
       99 MOVE                             R15 R6
      100 GETTABLEKS                       R16 R14 K20 ["headerText"]
      102 CALL                             R15 1 1
      103 SETTABLEKS                       R15 R14 K56 ["minWidth"]
      105 FORGLOOP                         R10 2 ; [-7]
      107 NEWTABLE                         R10 0 0
      109 SETTABLEKS                       R10 R0 K57 ["instanceOrder"]
      111 NEWTABLE                         R10 0 0
      113 SETTABLEKS                       R10 R0 K58 ["nodeById"]
      115 NEWTABLE                         R10 0 0
      117 SETTABLEKS                       R10 R0 K59 ["parentById"]
      119 GETIMPORT                        R10 K62 [table.freeze]
      121 DUPTABLE                         R11 K65 [{"Column", "Direction"}]
      122 GETIMPORT                        R12 K62 [table.freeze]
      124 DUPTABLE                         R13 K68 [{["none"] = "none", ["ClassName"] = "className", ["Size"] = "size", ["References"] = "references", ["Owners"] = "owners"}]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K63 ["Column"]
      128 GETIMPORT                        R12 K62 [table.freeze]
      130 DUPTABLE                         R13 K71 [{["asc"] = "asc", ["desc"] = "desc"}]
      131 CALL                             R12 1 1
      132 SETTABLEKS                       R12 R11 K64 ["Direction"]
      134 CALL                             R10 1 1
      135 MOVE                             R11 R4
      136 DUPTABLE                         R12 K76 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      137 NEWTABLE                         R13 0 0
      139 SETTABLEKS                       R13 R12 K75 ["Children"]
      141 CALL                             R11 1 1
      142 GETTABLEKS                       R12 R3 K77 ["create"]
      144 MOVE                             R13 R11
      145 CALL                             R12 1 2
      146 GETTABLEKS                       R14 R3 K77 ["create"]
      148 NEWTABLE                         R15 0 0
      150 CALL                             R14 1 2
      151 GETTABLEKS                       R16 R3 K77 ["create"]
      153 MOVE                             R17 R4
      154 DUPTABLE                         R18 K80 [{"column", "direction"}]
      155 GETTABLEKS                       R19 R10 K63 ["Column"]
      157 GETTABLEKS                       R19 R19 K67 ["Size"]
      159 SETTABLEKS                       R19 R18 K78 ["column"]
      161 GETTABLEKS                       R19 R10 K64 ["Direction"]
      163 GETTABLEKS                       R19 R19 K70 ["desc"]
      165 SETTABLEKS                       R19 R18 K79 ["direction"]
      167 CALL                             R17 1 -1
      168 CALL                             R16 -1 2
      169 GETTABLEKS                       R18 R3 K77 ["create"]
      171 LOADN                            R19 0
      172 CALL                             R18 1 2
      173 DUPCLOSURE                       R20 K81 [PROTO_4]
      174 CAPTURE                          VAL R12
      175 SETTABLEKS                       R20 R0 K82 ["getNodesObservable"]
      177 DUPCLOSURE                       R20 K83 [PROTO_5]
      178 CAPTURE                          VAL R14
      179 SETTABLEKS                       R20 R0 K84 ["getOrderObservable"]
      181 DUPCLOSURE                       R20 K85 [PROTO_6]
      182 CAPTURE                          VAL R16
      183 SETTABLEKS                       R20 R0 K86 ["getSortStateObservable"]
      185 DUPCLOSURE                       R20 K87 [PROTO_7]
      186 CAPTURE                          VAL R18
      187 SETTABLEKS                       R20 R0 K88 ["getTotalCountObservable"]
      189 DUPCLOSURE                       R20 K89 [PROTO_8]
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R20 R0 K90 ["getColumns"]
      193 DUPCLOSURE                       R20 K91 [PROTO_9]
      194 CAPTURE                          VAL R20
      195 DUPCLOSURE                       R21 K92 [PROTO_10]
      196 DUPCLOSURE                       R22 K93 [PROTO_12]
      197 CAPTURE                          VAL R10
      198 DUPCLOSURE                       R23 K94 [PROTO_13]
      199 DUPCLOSURE                       R24 K95 [PROTO_14]
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R19
      209 SETTABLEKS                       R24 R0 K96 ["setSort"]
      211 DUPCLOSURE                       R24 K97 [PROTO_15]
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R24 R0 K98 ["reset"]
      219 DUPCLOSURE                       R24 K99 [PROTO_16]
      220 CAPTURE                          VAL R14
      221 SETTABLEKS                       R24 R0 K100 ["getIndexForId"]
      223 DUPCLOSURE                       R24 K101 [PROTO_17]
      224 CAPTURE                          VAL R0
      225 SETTABLEKS                       R24 R0 K102 ["getNodeById"]
      227 DUPCLOSURE                       R24 K103 [PROTO_18]
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R2
      230 SETTABLEKS                       R24 R0 K104 ["onRightClick"]
      232 DUPCLOSURE                       R24 K105 [PROTO_19]
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R24 R0 K106 ["getDepth"]
      236 DUPCLOSURE                       R24 K107 [PROTO_20]
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R0
      239 SETTABLEKS                       R24 R0 K108 ["getNodeAtIndex"]
      241 DUPCLOSURE                       R24 K109 [PROTO_22]
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R23
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R22
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R19
      254 SETTABLEKS                       R24 R0 K110 ["RunQueryAsync"]
      256 DUPCLOSURE                       R24 K111 [PROTO_23]
      257 CAPTURE                          VAL R5
      258 SETTABLEKS                       R24 R0 K112 ["tooltipLabels"]
      260 DUPCLOSURE                       R24 K113 [PROTO_24]
      261 CAPTURE                          VAL R22
      262 SETTABLEKS                       R24 R0 K114 ["sortedIds"]
      264 DUPCLOSURE                       R24 K115 [PROTO_25]
      265 CAPTURE                          VAL R8
      266 SETTABLEKS                       R24 R0 K116 ["getWarnings"]
      268 RETURN                           R0 1
