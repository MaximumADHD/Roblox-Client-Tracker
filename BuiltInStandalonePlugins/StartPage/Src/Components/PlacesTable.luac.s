PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        4 MOVE                             R1 R0
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Name"] ; [+5]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 ORK                              R3 R4 K1 [""]
        5 RETURN                           R3 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Created"] ; [+14]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R1 K2 ["Created"]
       11 JUMPIFEQKNIL                     R5 ; [+5]
       13 JUMPIFEQKS                       R5 K1 [""] ; [+3]
       15 MOVE                             R4 R5
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 MOVE                             R5 R2
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1
       21 JUMPIFNOTEQKS                    R0 K3 ["Updated"] ; [+14]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R5 R1 K3 ["Updated"]
       26 JUMPIFEQKNIL                     R5 ; [+5]
       28 JUMPIFEQKS                       R5 K1 [""] ; [+3]
       30 MOVE                             R4 R5
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 MOVE                             R5 R2
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
       36 LOADK                            R3 K1 [""]
       37 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [string.find]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 LOADN                            R6 1
        9 LOADB                            R7 1
       10 CALL                             R3 4 1
       11 JUMPIF                           R3 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R2
       16 MOVE                             R5 R1
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 GETTABLEKS                       R3 R0 K4 ["Name"]
        4 ORK                              R2 R3 K3 [""]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["Id"]
        2 ORK                              R1 R2 K0 [0]
        3 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K1 ["Created"]
        2 JUMPIFEQKNIL                     R3 ; [+5]
        4 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        6 MOVE                             R2 R3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 ORK                              R1 R2 K0 [""]
       10 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K1 ["Updated"]
        2 JUMPIFEQKNIL                     R3 ; [+5]
        4 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        6 MOVE                             R2 R3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 ORK                              R1 R2 K0 [""]
       10 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 GETTABLEKS                       R4 R0 K4 ["Name"]
        4 ORK                              R3 R4 K3 [""]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K2 [string.lower]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 ORK                              R4 R5 K3 [""]
       11 CALL                             R3 1 1
       12 JUMPIFEQ                         R2 R3 ; [+18]
       14 GETIMPORT                        R3 K2 [string.lower]
       16 GETTABLEKS                       R5 R0 K4 ["Name"]
       18 ORK                              R4 R5 K3 [""]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K2 [string.lower]
       22 GETTABLEKS                       R6 R1 K4 ["Name"]
       24 ORK                              R5 R6 K3 [""]
       25 CALL                             R4 1 1
       26 JUMPIFLT                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 GETTABLEKS                       R4 R0 K6 ["Id"]
       33 ORK                              R3 R4 K5 [0]
       34 GETTABLEKS                       R5 R1 K6 ["Id"]
       36 ORK                              R4 R5 K5 [0]
       37 JUMPIFLT                         R3 R4 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K1 ["Created"]
        2 JUMPIFEQKNIL                     R4 ; [+5]
        4 JUMPIFEQKS                       R4 K0 [""] ; [+3]
        6 MOVE                             R3 R4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 ORK                              R2 R3 K0 [""]
       10 GETTABLEKS                       R5 R1 K1 ["Created"]
       12 JUMPIFEQKNIL                     R5 ; [+5]
       14 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       16 MOVE                             R4 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 ORK                              R3 R4 K0 [""]
       20 JUMPIFEQ                         R2 R3 ; [+26]
       22 GETTABLEKS                       R5 R0 K1 ["Created"]
       24 JUMPIFEQKNIL                     R5 ; [+5]
       26 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       28 MOVE                             R4 R5
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 ORK                              R3 R4 K0 [""]
       32 GETTABLEKS                       R6 R1 K1 ["Created"]
       34 JUMPIFEQKNIL                     R6 ; [+5]
       36 JUMPIFEQKS                       R6 K0 [""] ; [+3]
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 ORK                              R4 R5 K0 [""]
       42 JUMPIFLT                         R3 R4 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1
       47 GETUPVAL                         R2 0
       48 MOVE                             R3 R0
       49 MOVE                             R4 R1
       50 CALL                             R2 2 1
       51 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K1 ["Created"]
        2 JUMPIFEQKNIL                     R4 ; [+5]
        4 JUMPIFEQKS                       R4 K0 [""] ; [+3]
        6 MOVE                             R3 R4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 ORK                              R2 R3 K0 [""]
       10 GETTABLEKS                       R5 R1 K1 ["Created"]
       12 JUMPIFEQKNIL                     R5 ; [+5]
       14 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       16 MOVE                             R4 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 ORK                              R3 R4 K0 [""]
       20 JUMPIFEQ                         R2 R3 ; [+26]
       22 GETTABLEKS                       R5 R0 K1 ["Created"]
       24 JUMPIFEQKNIL                     R5 ; [+5]
       26 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       28 MOVE                             R4 R5
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 ORK                              R3 R4 K0 [""]
       32 GETTABLEKS                       R6 R1 K1 ["Created"]
       34 JUMPIFEQKNIL                     R6 ; [+5]
       36 JUMPIFEQKS                       R6 K0 [""] ; [+3]
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 ORK                              R4 R5 K0 [""]
       42 JUMPIFLT                         R4 R3 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1
       47 GETUPVAL                         R2 0
       48 MOVE                             R3 R0
       49 MOVE                             R4 R1
       50 CALL                             R2 2 1
       51 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K1 ["Updated"]
        2 JUMPIFEQKNIL                     R4 ; [+5]
        4 JUMPIFEQKS                       R4 K0 [""] ; [+3]
        6 MOVE                             R3 R4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 ORK                              R2 R3 K0 [""]
       10 GETTABLEKS                       R5 R1 K1 ["Updated"]
       12 JUMPIFEQKNIL                     R5 ; [+5]
       14 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       16 MOVE                             R4 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 ORK                              R3 R4 K0 [""]
       20 JUMPIFEQ                         R2 R3 ; [+26]
       22 GETTABLEKS                       R5 R0 K1 ["Updated"]
       24 JUMPIFEQKNIL                     R5 ; [+5]
       26 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       28 MOVE                             R4 R5
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 ORK                              R3 R4 K0 [""]
       32 GETTABLEKS                       R6 R1 K1 ["Updated"]
       34 JUMPIFEQKNIL                     R6 ; [+5]
       36 JUMPIFEQKS                       R6 K0 [""] ; [+3]
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 ORK                              R4 R5 K0 [""]
       42 JUMPIFLT                         R4 R3 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1
       47 GETUPVAL                         R2 0
       48 MOVE                             R3 R0
       49 MOVE                             R4 R1
       50 CALL                             R2 2 1
       51 RETURN                           R2 1

PROTO_11:
        0 DUPCLOSURE                       R1 K0 [PROTO_3]
        1 DUPCLOSURE                       R2 K1 [PROTO_4]
        2 DUPCLOSURE                       R3 K2 [PROTO_5]
        3 DUPCLOSURE                       R4 K3 [PROTO_6]
        4 DUPCLOSURE                       R5 K4 [PROTO_7]
        5 JUMPIFNOTEQKS                    R0 K5 ["Created"] ; [+4]
        7 DUPCLOSURE                       R6 K6 [PROTO_8]
        8 CAPTURE                          VAL R5
        9 RETURN                           R6 1
       10 JUMPIFNOTEQKS                    R0 K7 ["CreatedDescending"] ; [+4]
       12 DUPCLOSURE                       R6 K8 [PROTO_9]
       13 CAPTURE                          VAL R5
       14 RETURN                           R6 1
       15 JUMPIFNOTEQKS                    R0 K9 ["Modified"] ; [+4]
       17 DUPCLOSURE                       R6 K10 [PROTO_10]
       18 CAPTURE                          VAL R5
       19 RETURN                           R6 1
       20 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 RETURN                           R0 1

PROTO_13:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_13]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Children"]
        5 JUMPIFNOT                        R1 ; [+27]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["Children"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+21]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Children"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R5 K1 ["Id"]
       21 JUMPIFNOT                        R6 ; [+8]
       22 GETTABLEKS                       R8 R5 K1 ["Id"]
       24 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K4 [table.insert]
       29 CALL                             R6 2 0
       30 FORGLOOP                         R1 2 ; [-12]
       32 JUMP                             ; [+13]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K5 ["RootPlaceId"]
       36 JUMPIFNOT                        R1 ; [+9]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K5 ["RootPlaceId"]
       40 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K4 [table.insert]
       45 CALL                             R1 2 0
       46 LENGTH                           R1 R0
       47 JUMPIFNOTEQKN                    R1 K6 [0] ; [+3]
       49 LOADNIL                          R1
       50 RETURN                           R1 1
       51 GETUPVAL                         R1 1
       52 MOVE                             R2 R0
       53 GETUPVAL                         R3 2
       54 CALL                             R1 2 0
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R1 R1 K7 ["signal"]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          UPVAL U4
       60 NAMECALL                         R1 R1 K8 ["Connect"]
       62 CALL                             R1 2 1
       63 NEWCLOSURE                       R2 P1
       64 CAPTURE                          VAL R1
       65 RETURN                           R2 1

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K2 [{"id", "text"}]
        7 GETTABLEKS                       R9 R5 K0 ["id"]
        9 SETTABLEKS                       R9 R8 K0 ["id"]
       11 GETUPVAL                         R9 1
       12 LOADK                            R11 K3 ["Plugin"]
       13 GETTABLEKS                       R12 R5 K4 ["labelKey"]
       15 NAMECALL                         R9 R9 K5 ["getText"]
       17 CALL                             R9 3 1
       18 SETTABLEKS                       R9 R8 K1 ["text"]
       20 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [table.insert]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-21]
       28 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["UniverseId"]
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["Id"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 JUMPIF                           R3 ; [+2]
       14 GETUPVAL                         R3 2
       15 JUMPIFNOT                        R3 ; [+29]
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 NAMECALL                         R4 R4 K2 ["GetUserId"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R2
       22 MOVE                             R6 R1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K3 ["RootPlaceId"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K4 ["showVerifyAge"]
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R9 R9 K5 ["showAgeRestricted"]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K6 ["IsTeamCreateEnabled"]
       35 JUMPIFEQKB                       R11 TRUE ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 GETUPVAL                         R11 6
       40 GETUPVAL                         R12 7
       41 GETUPVAL                         R13 8
       42 LOADB                            R14 0
       43 CALL                             R3 11 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 9
       46 MOVE                             R5 R1
       47 MOVE                             R6 R2
       48 LOADB                            R7 0
       49 NAMECALL                         R3 R3 K7 ["openPlace"]
       51 CALL                             R3 4 0
       52 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["score"]
        2 GETTABLEKS                       R3 R1 K0 ["score"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["score"]
        8 GETTABLEKS                       R4 R1 K0 ["score"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R3 R0 K1 ["place"]
       18 GETTABLEKS                       R4 R1 K1 ["place"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_20:
        0 GETIMPORT                        R0 K2 [string.lower]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 0 0
        9 JUMPIFNOTEQKS                    R0 K3 [""] ; [+20]
       11 GETUPVAL                         R3 3
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K6 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-8]
       24 GETIMPORT                        R3 K8 [table.sort]
       26 MOVE                             R4 R2
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 JUMP                             ; [+63]
       30 NEWTABLE                         R3 0 0
       32 GETUPVAL                         R4 3
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLEKS                       R11 R8 K9 ["Name"]
       38 ORK                              R10 R11 K3 [""]
       39 GETIMPORT                        R11 K2 [string.lower]
       41 MOVE                             R12 R10
       42 CALL                             R11 1 1
       43 GETIMPORT                        R12 K11 [string.find]
       45 MOVE                             R13 R11
       46 MOVE                             R14 R0
       47 LOADN                            R15 1
       48 LOADB                            R16 1
       49 CALL                             R12 4 1
       50 JUMPIF                           R12 ; [+2]
       51 LOADNIL                          R9
       52 JUMP                             ; [+5]
       53 GETUPVAL                         R12 4
       54 MOVE                             R13 R11
       55 MOVE                             R14 R0
       56 CALL                             R12 2 1
       57 MOVE                             R9 R12
       58 JUMPIFEQKNIL                     R9 ; [+12]
       60 DUPTABLE                         R12 K14 [{"place", "score"}]
       61 SETTABLEKS                       R8 R12 K12 ["place"]
       63 SETTABLEKS                       R9 R12 K13 ["score"]
       65 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       67 MOVE                             R11 R3
       68 GETIMPORT                        R10 K6 [table.insert]
       70 CALL                             R10 2 0
       71 FORGLOOP                         R4 2 ; [-36]
       73 GETIMPORT                        R4 K8 [table.sort]
       75 MOVE                             R5 R3
       76 NEWCLOSURE                       R6 P0
       77 CAPTURE                          VAL R1
       78 CALL                             R4 2 0
       79 MOVE                             R4 R3
       80 LOADNIL                          R5
       81 LOADNIL                          R6
       82 FORGPREP                         R4
       83 GETTABLEKS                       R11 R8 K12 ["place"]
       85 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       87 MOVE                             R10 R2
       88 GETIMPORT                        R9 K6 [table.insert]
       90 CALL                             R9 2 0
       91 FORGLOOP                         R4 2 ; [-9]
       93 NEWTABLE                         R3 0 0
       95 GETUPVAL                         R6 5
       96 GETUPVAL                         R7 6
       97 MUL                              R5 R6 R7
       98 ADDK                             R4 R5 K15 [1]
       99 GETUPVAL                         R8 5
      100 ADDK                             R7 R8 K15 [1]
      101 GETUPVAL                         R8 6
      102 MUL                              R6 R7 R8
      103 LENGTH                           R7 R2
      104 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
      106 GETIMPORT                        R5 K18 [math.min]
      108 CALL                             R5 2 1
      109 MOVE                             R8 R4
      110 MOVE                             R6 R5
      111 LOADN                            R7 1
      112 FORNPREP                         R6
      113 GETTABLE                         R11 R2 R8
      114 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      116 MOVE                             R10 R3
      117 GETIMPORT                        R9 K6 [table.insert]
      119 CALL                             R9 2 0
      120 FORNLOOP                         R6
      121 DUPTABLE                         R6 K21 [{"rows", "totalCount"}]
      122 SETTABLEKS                       R3 R6 K19 ["rows"]
      124 LENGTH                           R7 R2
      125 SETTABLEKS                       R7 R6 K20 ["totalCount"]
      127 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["Id"]
        2 JUMPIFNOT                        R3 ; [+8]
        3 LOADK                            R3 K1 ["Place_%*"]
        4 GETTABLEKS                       R5 R0 K0 ["Id"]
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 RETURN                           R2 1
       11 LOADK                            R3 K3 ["Row_%*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K2 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 RETURN                           R2 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K0 ["Id"]
        6 NAMECALL                         R1 R1 K1 ["getItem"]
        8 CALL                             R1 2 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETTABLEKS                       R2 R1 K2 ["ImageUrl"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R2 R1 K2 ["ImageUrl"]
       17 RETURN                           R2 1
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R2 R1 K3 ["NoLoadableImage"]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 3
        6 DUPTABLE                         R3 K8 [{["Key"] = "Name", ["Title"], ["WidthScale"] = 0.4, ["HasIcon"] = True}]
        7 LOADK                            R6 K9 ["Plugin"]
        8 LOADK                            R7 K10 ["ListView.Name"]
        9 NAMECALL                         R4 R1 K11 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K3 ["Title"]
       14 DUPTABLE                         R4 K14 [{["Key"] = "Created", ["Title"], ["WidthScale"] = 0.3}]
       15 LOADK                            R7 K9 ["Plugin"]
       16 LOADK                            R8 K15 ["SortOptions.Created"]
       17 NAMECALL                         R5 R1 K11 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K3 ["Title"]
       22 DUPTABLE                         R5 K17 [{["Key"] = "Updated", ["Title"], ["WidthScale"] = 0.3}]
       23 LOADK                            R8 K9 ["Plugin"]
       24 LOADK                            R9 K18 ["SortOptions.Modified"]
       25 NAMECALL                         R6 R1 K11 ["getText"]
       27 CALL                             R6 3 1
       28 SETTABLEKS                       R6 R5 K3 ["Title"]
       30 SETLIST                          R2 R3 3 [1]
       32 GETUPVAL                         R3 1
       33 LOADN                            R4 0
       34 CALL                             R3 1 2
       35 GETUPVAL                         R5 1
       36 LOADN                            R6 20
       37 CALL                             R5 1 2
       38 GETUPVAL                         R7 1
       39 LOADK                            R8 K19 [""]
       40 CALL                             R7 1 2
       41 GETUPVAL                         R9 1
       42 LOADK                            R10 K20 ["Alphabetical"]
       43 CALL                             R9 1 2
       44 GETUPVAL                         R11 1
       45 LOADN                            R12 0
       46 CALL                             R11 1 2
       47 LOADNIL                          R13
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 GETUPVAL                         R16 2
       51 JUMPIF                           R16 ; [+2]
       52 GETUPVAL                         R16 3
       53 JUMPIFNOT                        R16 ; [+14]
       54 GETUPVAL                         R16 4
       55 GETUPVAL                         R17 5
       56 CALL                             R16 1 1
       57 MOVE                             R13 R16
       58 GETUPVAL                         R16 6
       59 GETTABLEKS                       R16 R16 K21 ["getDialogManager"]
       61 CALL                             R16 0 1
       62 MOVE                             R14 R16
       63 GETUPVAL                         R16 6
       64 GETTABLEKS                       R16 R16 K22 ["getActionsBridge"]
       66 CALL                             R16 0 1
       67 MOVE                             R15 R16
       68 GETTABLEKS                       R16 R0 K23 ["cell"]
       70 GETTABLEKS                       R18 R16 K24 ["Children"]
       72 JUMPIFNOT                        R18 ; [+9]
       73 GETTABLEKS                       R19 R16 K24 ["Children"]
       75 LENGTH                           R18 R19
       76 LOADN                            R19 0
       77 JUMPIFNOTLT                      R19 R18 ; [+4]
       79 GETTABLEKS                       R17 R16 K24 ["Children"]
       81 JUMP                             ; [+29]
       82 NEWTABLE                         R17 0 1
       84 DUPTABLE                         R18 K28 [{"Name", "Id", "UniverseId", "Description", "Created", "Updated"}]
       85 GETTABLEKS                       R19 R16 K2 ["Name"]
       87 SETTABLEKS                       R19 R18 K2 ["Name"]
       89 GETTABLEKS                       R19 R16 K29 ["RootPlaceId"]
       91 SETTABLEKS                       R19 R18 K25 ["Id"]
       93 GETTABLEKS                       R19 R16 K25 ["Id"]
       95 SETTABLEKS                       R19 R18 K26 ["UniverseId"]
       97 GETTABLEKS                       R19 R16 K27 ["Description"]
       99 SETTABLEKS                       R19 R18 K27 ["Description"]
      101 GETTABLEKS                       R19 R16 K12 ["Created"]
      103 SETTABLEKS                       R19 R18 K12 ["Created"]
      105 GETTABLEKS                       R19 R16 K16 ["Updated"]
      107 SETTABLEKS                       R19 R18 K16 ["Updated"]
      109 SETLIST                          R17 R18 1 [1]
      111 GETUPVAL                         R18 7
      112 NEWCLOSURE                       R19 P0
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R20 0 2
      116 MOVE                             R21 R7
      117 MOVE                             R22 R9
      118 SETLIST                          R20 R21 2 [1]
      120 CALL                             R18 2 0
      121 LOADK                            R19 K30 ["PlaceIcons_%*"]
      122 GETTABLEKS                       R21 R16 K25 ["Id"]
      124 JUMPIF                           R21 ; [+4]
      125 GETTABLEKS                       R21 R16 K29 ["RootPlaceId"]
      127 JUMPIF                           R21 ; [+1]
      128 LOADK                            R21 K19 [""]
      129 NAMECALL                         R19 R19 K31 ["format"]
      131 CALL                             R19 2 1
      132 MOVE                             R18 R19
      133 GETUPVAL                         R19 7
      134 NEWCLOSURE                       R20 P1
      135 CAPTURE                          VAL R16
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          VAL R18
      138 CAPTURE                          UPVAL U9
      139 CAPTURE                          VAL R12
      140 NEWTABLE                         R21 0 1
      142 MOVE                             R22 R16
      143 SETLIST                          R21 R22 1 [1]
      145 CALL                             R19 2 0
      146 GETUPVAL                         R19 10
      147 NEWCLOSURE                       R20 P2
      148 CAPTURE                          UPVAL U11
      149 CAPTURE                          VAL R1
      150 NEWTABLE                         R21 0 1
      152 MOVE                             R22 R1
      153 SETLIST                          R21 R22 1 [1]
      155 CALL                             R19 2 1
      156 GETUPVAL                         R20 12
      157 NEWCLOSURE                       R21 P3
      158 CAPTURE                          VAL R16
      159 CAPTURE                          UPVAL U2
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U13
      162 CAPTURE                          UPVAL U14
      163 CAPTURE                          REF R13
      164 CAPTURE                          REF R15
      165 CAPTURE                          REF R14
      166 CAPTURE                          VAL R1
      167 CAPTURE                          UPVAL U15
      168 NEWTABLE                         R22 0 5
      170 MOVE                             R23 R13
      171 MOVE                             R24 R14
      172 MOVE                             R25 R15
      173 MOVE                             R26 R1
      174 MOVE                             R27 R16
      175 SETLIST                          R22 R23 5 [1]
      177 CALL                             R20 2 1
      178 GETUPVAL                         R21 10
      179 NEWCLOSURE                       R22 P4
      180 CAPTURE                          VAL R7
      181 CAPTURE                          UPVAL U16
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R17
      184 CAPTURE                          UPVAL U17
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R5
      187 NEWTABLE                         R23 0 5
      189 MOVE                             R24 R17
      190 MOVE                             R25 R7
      191 MOVE                             R26 R9
      192 MOVE                             R27 R3
      193 MOVE                             R28 R5
      194 SETLIST                          R23 R24 5 [1]
      196 CALL                             R21 2 1
      197 GETTABLEKS                       R22 R21 K32 ["rows"]
      199 GETTABLEKS                       R23 R21 K33 ["totalCount"]
      201 GETUPVAL                         R24 18
      202 GETTABLEKS                       R24 R24 K34 ["createElement"]
      204 GETUPVAL                         R25 19
      205 DUPTABLE                         R26 K38 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
      206 GETTABLEKS                       R27 R0 K35 ["LayoutOrder"]
      208 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      210 DUPTABLE                         R27 K41 [{"Controls", "Table"}]
      211 GETUPVAL                         R28 18
      212 GETTABLEKS                       R28 R28 K34 ["createElement"]
      214 GETUPVAL                         R29 19
      215 DUPTABLE                         R30 K44 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      216 DUPTABLE                         R31 K47 [{"Search", "Sort"}]
      217 GETUPVAL                         R32 18
      218 GETTABLEKS                       R32 R32 K34 ["createElement"]
      220 GETUPVAL                         R33 19
      221 DUPTABLE                         R34 K49 [{["LayoutOrder"] = 1, ["tag"] = "grow size-0-full auto-y"}]
      222 DUPTABLE                         R35 K51 [{"Input"}]
      223 GETUPVAL                         R36 18
      224 GETTABLEKS                       R36 R36 K34 ["createElement"]
      226 GETUPVAL                         R37 20
      227 DUPTABLE                         R38 K58 [{["text"], ["width"], ["size"], ["testId"] = "--start-page-PlacesTableSearch", ["onChanged"]}]
      228 SETTABLEKS                       R7 R38 K52 ["text"]
      230 GETIMPORT                        R39 K61 [UDim.new]
      232 LOADN                            R40 1
      233 LOADN                            R41 0
      234 CALL                             R39 2 1
      235 SETTABLEKS                       R39 R38 K53 ["width"]
      237 GETUPVAL                         R39 21
      238 GETTABLEKS                       R39 R39 K62 ["Small"]
      240 SETTABLEKS                       R39 R38 K54 ["size"]
      242 NEWCLOSURE                       R39 P5
      243 CAPTURE                          VAL R8
      244 SETTABLEKS                       R39 R38 K57 ["onChanged"]
      246 CALL                             R36 2 1
      247 SETTABLEKS                       R36 R35 K50 ["Input"]
      249 CALL                             R32 3 1
      250 SETTABLEKS                       R32 R31 K45 ["Search"]
      252 GETUPVAL                         R32 18
      253 GETTABLEKS                       R32 R32 K34 ["createElement"]
      255 GETUPVAL                         R33 22
      256 GETTABLEKS                       R33 R33 K63 ["Root"]
      258 DUPTABLE                         R34 K73 [{["LayoutOrder"] = 2, ["label"] = "", ["width"], ["size"], ["maxHeight"] = 300, ["placeholder"], ["value"], ["items"], ["testId"] = "--start-page-PlacesTableSort", ["onItemChanged"]}]
      259 GETIMPORT                        R35 K61 [UDim.new]
      261 LOADN                            R36 0
      262 LOADN                            R37 186
      263 CALL                             R35 2 1
      264 SETTABLEKS                       R35 R34 K53 ["width"]
      266 GETUPVAL                         R35 21
      267 GETTABLEKS                       R35 R35 K62 ["Small"]
      269 SETTABLEKS                       R35 R34 K54 ["size"]
      271 LOADK                            R37 K9 ["Plugin"]
      272 LOADK                            R38 K74 ["SortDropdown.Placeholder"]
      273 NAMECALL                         R35 R1 K11 ["getText"]
      275 CALL                             R35 3 1
      276 SETTABLEKS                       R35 R34 K68 ["placeholder"]
      278 SETTABLEKS                       R9 R34 K69 ["value"]
      280 SETTABLEKS                       R19 R34 K70 ["items"]
      282 NEWCLOSURE                       R35 P6
      283 CAPTURE                          VAL R10
      284 SETTABLEKS                       R35 R34 K72 ["onItemChanged"]
      286 CALL                             R32 2 1
      287 SETTABLEKS                       R32 R31 K46 ["Sort"]
      289 CALL                             R28 3 1
      290 SETTABLEKS                       R28 R27 K39 ["Controls"]
      292 GETUPVAL                         R28 18
      293 GETTABLEKS                       R28 R28 K34 ["createElement"]
      295 GETUPVAL                         R29 23
      296 DUPTABLE                         R30 K85 [{["LayoutOrder"] = 2, ["MaxVisibleRows"] = 6, ["testId"] = "--start-page-PlacesTable", ["Columns"], ["Rows"], ["RenderCellText"], ["GetRowKey"], ["GetRowIcon"], ["OnRowActivated"], ["Pagination"]}]
      297 SETTABLEKS                       R2 R30 K78 ["Columns"]
      299 SETTABLEKS                       R22 R30 K79 ["Rows"]
      301 NEWCLOSURE                       R31 P7
      302 CAPTURE                          UPVAL U24
      303 CAPTURE                          VAL R1
      304 SETTABLEKS                       R31 R30 K80 ["RenderCellText"]
      306 DUPCLOSURE                       R31 K86 [PROTO_24]
      307 SETTABLEKS                       R31 R30 K81 ["GetRowKey"]
      309 DUPCLOSURE                       R31 K87 [PROTO_25]
      310 CAPTURE                          UPVAL U9
      311 SETTABLEKS                       R31 R30 K82 ["GetRowIcon"]
      313 NEWCLOSURE                       R31 P10
      314 CAPTURE                          VAL R20
      315 SETTABLEKS                       R31 R30 K83 ["OnRowActivated"]
      317 DUPTABLE                         R31 K92 [{"pageIndex", "pageSize", "totalCount", "onPageChange", "onPageSizeChange"}]
      318 SETTABLEKS                       R3 R31 K88 ["pageIndex"]
      320 SETTABLEKS                       R5 R31 K89 ["pageSize"]
      322 SETTABLEKS                       R23 R31 K33 ["totalCount"]
      324 NEWCLOSURE                       R32 P11
      325 CAPTURE                          VAL R4
      326 SETTABLEKS                       R32 R31 K90 ["onPageChange"]
      328 NEWCLOSURE                       R32 P12
      329 CAPTURE                          VAL R6
      330 CAPTURE                          VAL R4
      331 SETTABLEKS                       R32 R31 K91 ["onPageSizeChange"]
      333 SETTABLEKS                       R31 R30 K84 ["Pagination"]
      335 CALL                             R28 2 1
      336 SETTABLEKS                       R28 R27 K40 ["Table"]
      338 CALL                             R24 3 -1
      339 CLOSEUPVALS                      R13
      340 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useMemo"]
       20 GETTABLEKS                       R5 R1 K11 ["useCallback"]
       22 GETTABLEKS                       R6 R1 K12 ["useContext"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R0 K6 ["Packages"]
       28 GETTABLEKS                       R8 R8 K13 ["Framework"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R8 R7 K14 ["ContextServices"]
       33 GETTABLEKS                       R8 R8 K15 ["Localization"]
       35 GETTABLEKS                       R9 R7 K16 ["Util"]
       37 GETTABLEKS                       R9 R9 K17 ["levenshteinDistance"]
       39 GETIMPORT                        R10 K5 [require]
       41 GETTABLEKS                       R11 R0 K18 ["Src"]
       43 GETTABLEKS                       R11 R11 K16 ["Util"]
       45 GETTABLEKS                       R11 R11 K19 ["Foundation"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R10 K20 ["View"]
       50 GETTABLEKS                       R12 R10 K21 ["SearchInput"]
       52 GETTABLEKS                       R13 R10 K22 ["Dropdown"]
       54 GETTABLEKS                       R14 R10 K23 ["Enums"]
       56 GETTABLEKS                       R14 R14 K24 ["InputSize"]
       58 GETIMPORT                        R15 K5 [require]
       60 GETTABLEKS                       R16 R0 K18 ["Src"]
       62 GETTABLEKS                       R16 R16 K16 ["Util"]
       64 GETTABLEKS                       R16 R16 K25 ["Services"]
       66 CALL                             R15 1 1
       67 GETTABLEKS                       R16 R15 K26 ["StartPageManager"]
       69 GETTABLEKS                       R17 R15 K27 ["StudioService"]
       71 GETIMPORT                        R18 K5 [require]
       73 GETTABLEKS                       R19 R0 K18 ["Src"]
       75 GETTABLEKS                       R19 R19 K16 ["Util"]
       77 GETTABLEKS                       R19 R19 K28 ["Dialogs"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K5 [require]
       82 GETTABLEKS                       R20 R0 K18 ["Src"]
       84 GETTABLEKS                       R20 R20 K29 ["Network"]
       86 GETTABLEKS                       R20 R20 K30 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K5 [require]
       91 GETTABLEKS                       R21 R0 K18 ["Src"]
       93 GETTABLEKS                       R21 R21 K31 ["Components"]
       95 GETTABLEKS                       R21 R21 K32 ["DataTable"]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K5 [require]
      100 GETTABLEKS                       R22 R0 K18 ["Src"]
      102 GETTABLEKS                       R22 R22 K29 ["Network"]
      104 GETTABLEKS                       R22 R22 K33 ["DiscoverPlaceIcons"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K5 [require]
      109 GETTABLEKS                       R23 R0 K18 ["Src"]
      111 GETTABLEKS                       R23 R23 K29 ["Network"]
      113 GETTABLEKS                       R23 R23 K34 ["GameCache"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K5 [require]
      118 GETTABLEKS                       R24 R0 K18 ["Src"]
      120 GETTABLEKS                       R24 R24 K16 ["Util"]
      122 GETTABLEKS                       R24 R24 K35 ["formatISOTimestamp"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K5 [require]
      127 GETTABLEKS                       R25 R0 K18 ["Src"]
      129 GETTABLEKS                       R25 R25 K36 ["SharedFlags"]
      131 GETTABLEKS                       R25 R25 K37 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      133 CALL                             R24 1 1
      134 CALL                             R24 0 1
      135 GETIMPORT                        R25 K5 [require]
      137 GETTABLEKS                       R26 R0 K18 ["Src"]
      139 GETTABLEKS                       R26 R26 K36 ["SharedFlags"]
      141 GETTABLEKS                       R26 R26 K38 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      143 CALL                             R25 1 1
      144 CALL                             R25 0 1
      145 GETIMPORT                        R26 K5 [require]
      147 GETTABLEKS                       R27 R0 K18 ["Src"]
      149 GETTABLEKS                       R27 R27 K39 ["Types"]
      151 CALL                             R26 1 1
      152 NEWTABLE                         R27 0 4
      154 DUPTABLE                         R28 K44 [{["id"] = "Alphabetical", ["labelKey"] = "SortOptions.Alphabetical"}]
      155 DUPTABLE                         R29 K47 [{["id"] = "Created", ["labelKey"] = "SortOptions.Created"}]
      156 DUPTABLE                         R30 K50 [{["id"] = "CreatedDescending", ["labelKey"] = "SortOptions.CreatedDescending"}]
      157 DUPTABLE                         R31 K53 [{["id"] = "Modified", ["labelKey"] = "SortOptions.Modified"}]
      158 SETLIST                          R27 R28 4 [1]
      160 DUPCLOSURE                       R28 K54 [PROTO_0]
      161 DUPCLOSURE                       R29 K55 [PROTO_1]
      162 CAPTURE                          VAL R23
      163 DUPCLOSURE                       R30 K56 [PROTO_2]
      164 CAPTURE                          VAL R9
      165 DUPCLOSURE                       R31 K57 [PROTO_11]
      166 DUPCLOSURE                       R32 K58 [PROTO_29]
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R27
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R31
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R29
      192 RETURN                           R32 1
