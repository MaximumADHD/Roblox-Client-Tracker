PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["creationContext"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["creationContext"]
        5 GETTABLEKS                       R1 R1 K1 ["creator"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOTEQKNIL                  R1 ; [+4]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 RETURN                           R2 2
       14 GETTABLEKS                       R2 R1 K2 ["userId"]
       16 JUMPIFEQKNIL                     R2 ; [+5]
       18 LOADK                            R2 K3 ["User"]
       19 GETTABLEKS                       R3 R1 K2 ["userId"]
       21 RETURN                           R2 2
       22 GETTABLEKS                       R2 R1 K4 ["groupId"]
       24 JUMPIFEQKNIL                     R2 ; [+5]
       26 LOADK                            R2 K5 ["Group"]
       27 GETTABLEKS                       R3 R1 K4 ["groupId"]
       29 RETURN                           R2 2
       30 GETTABLEKS                       R2 R1 K6 ["universeId"]
       32 JUMPIFEQKNIL                     R2 ; [+5]
       34 LOADNIL                          R2
       35 GETTABLEKS                       R3 R1 K6 ["universeId"]
       37 RETURN                           R2 2
       38 LOADNIL                          R2
       39 LOADNIL                          R3
       40 RETURN                           R2 2

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["data"]
        4 JUMPIFNOT                        R3 ; [+27]
        5 GETIMPORT                        R3 K2 [pairs]
        7 GETTABLEKS                       R4 R0 K0 ["data"]
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETTABLEKS                       R8 R7 K3 ["message"]
       13 LOADK                            R10 K4 ["%s+"]
       14 LOADK                            R11 K5 [""]
       15 NAMECALL                         R8 R8 K6 ["gsub"]
       17 CALL                             R8 3 1
       18 JUMPIFEQKS                       R8 K5 [""] ; [+7]
       20 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       22 GETTABLEKS                       R9 R7 K3 ["message"]
       24 SETTABLE                         R9 R2 R8
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       28 LOADK                            R9 K5 [""]
       29 SETTABLE                         R9 R2 R8
       30 FORGLOOP                         R3 2 ; [-20]
       32 GETIMPORT                        R3 K2 [pairs]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP_NEXT                    R3
       37 GETTABLEKS                       R9 R7 K7 ["assetVersionNumber"]
       39 GETTABLE                         R8 R2 R9
       40 JUMPIF                           R8 ; [+4]
       41 GETTABLEKS                       R8 R7 K7 ["assetVersionNumber"]
       43 LOADK                            R9 K5 [""]
       44 SETTABLE                         R9 R2 R8
       45 FORGLOOP                         R3 2 ; [-9]
       47 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K3 [pairs]
        9 GETTABLEKS                       R4 R2 K4 ["data"]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETUPVAL                         R9 1
       14 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K7 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 2 ; [-8]
       22 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADN                            R4 50
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["getVersionHistory"]
        6 CALL                             R1 4 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R1 R1 K1 ["andThen"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["nextPageCursor"]
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 LOADN                            R6 50
        8 MOVE                             R7 R2
        9 NAMECALL                         R3 R3 K1 ["getVersionHistory"]
       11 CALL                             R3 4 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R3 R3 K2 ["andThen"]
       17 CALL                             R3 2 1
       18 MOVE                             R1 R3
       19 GETUPVAL                         R3 4
       20 NAMECALL                         R1 R1 K2 ["andThen"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K3 ["resolve"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R2
        9 CALL                             R5 1 -1
       10 NAMECALL                         R3 R3 K1 ["dispatch"]
       12 CALL                             R3 -1 0
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 DUPTABLE                         R8 K4 [{"assetId", "assetVersionNumber"}]
        8 GETUPVAL                         R9 1
        9 SETTABLEKS                       R9 R8 K2 ["assetId"]
       11 GETTABLEKS                       R9 R5 K3 ["assetVersionNumber"]
       13 SETTABLEKS                       R9 R8 K3 ["assetVersionNumber"]
       15 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K7 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 [inext] ; [-15]
       23 GETUPVAL                         R1 2
       24 MOVE                             R3 R0
       25 NAMECALL                         R1 R1 K8 ["getVersionDescriptions"]
       27 CALL                             R1 2 1
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 NAMECALL                         R1 R1 K9 ["andThen"]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 4
       37 GETUPVAL                         R3 6
       38 GETUPVAL                         R4 0
       39 CALL                             R3 1 -1
       40 NAMECALL                         R1 R1 K10 ["dispatch"]
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        2 JUMPIFNOT                        R2 ; [+21]
        3 GETTABLEKS                       R2 R0 K0 ["nextPageCursor"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 LOADN                            R6 50
        8 MOVE                             R7 R2
        9 NAMECALL                         R3 R3 K1 ["getVersionHistory"]
       11 CALL                             R3 4 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R3 R3 K2 ["andThen"]
       17 CALL                             R3 2 1
       18 MOVE                             R1 R3
       19 GETUPVAL                         R3 4
       20 NAMECALL                         R1 R1 K2 ["andThen"]
       22 CALL                             R1 2 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K3 ["resolve"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 NAMECALL                         R1 R1 K2 ["andThen"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R3
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U1
       14 MOVE                             R8 R1
       15 LOADN                            R9 50
       16 LOADNIL                          R10
       17 NAMECALL                         R6 R0 K0 ["getVersionHistory"]
       19 CALL                             R6 4 1
       20 NEWCLOSURE                       R8 P2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R6 R6 K1 ["andThen"]
       25 CALL                             R6 2 1
       26 NEWCLOSURE                       R8 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NEWCLOSURE                       R9 P4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U5
       40 NAMECALL                         R6 R6 K1 ["andThen"]
       42 CALL                             R6 3 -1
       43 RETURN                           R6 -1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["assetVersionNumber"]
        2 GETTABLEKS                       R4 R1 K0 ["assetVersionNumber"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K4 [table.sort]
        9 GETTABLEKS                       R4 R2 K5 ["data"]
       11 DUPCLOSURE                       R5 K6 [PROTO_10]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R6 R2 K5 ["data"]
       17 CALL                             R5 1 -1
       18 NAMECALL                         R3 R3 K7 ["dispatch"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getVersionHistoryWithNotes"]
        3 CALL                             R3 2 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R3 R3 K1 ["andThen"]
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R2 K2 ["assetVersions"]
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K3 ["path"]
       17 LOADK                            R10 K4 ["/"]
       18 NAMECALL                         R8 R8 K5 ["split"]
       20 CALL                             R8 2 1
       21 GETTABLEN                        R9 R8 2
       22 LENGTH                           R11 R8
       23 GETTABLE                         R10 R8 R11
       24 GETTABLEKS                       R14 R7 K6 ["creationContext"]
       26 JUMPIFNOT                        R14 ; [+5]
       27 GETTABLEKS                       R13 R7 K6 ["creationContext"]
       29 GETTABLEKS                       R13 R13 K7 ["creator"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R13
       33 JUMPIFNOTEQKNIL                  R13 ; [+4]
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 JUMP                             ; [+30]
       38 GETTABLEKS                       R14 R13 K8 ["userId"]
       40 JUMPIFEQKNIL                     R14 ; [+7]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K9 ["User"]
       45 GETTABLEKS                       R12 R13 K8 ["userId"]
       47 JUMP                             ; [+20]
       48 GETTABLEKS                       R14 R13 K10 ["groupId"]
       50 JUMPIFEQKNIL                     R14 ; [+7]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K11 ["Group"]
       55 GETTABLEKS                       R12 R13 K10 ["groupId"]
       57 JUMP                             ; [+10]
       58 GETTABLEKS                       R14 R13 K12 ["universeId"]
       60 JUMPIFEQKNIL                     R14 ; [+5]
       62 LOADNIL                          R11
       63 GETTABLEKS                       R12 R13 K12 ["universeId"]
       65 JUMP                             ; [+2]
       66 LOADNIL                          R11
       67 LOADNIL                          R12
       68 GETTABLEKS                       R13 R7 K13 ["moderationResult"]
       70 GETUPVAL                         R15 2
       71 DUPTABLE                         R16 K22 [{["assetVersionNumber"], ["assetId"], ["creatorType"], ["creatorTargetId"], ["created"], ["versionDescription"] = "", ["moderationState"]}]
       72 FASTCALL1                        TONUMBER R10 ; [+3]
       73 MOVE                             R18 R10
       74 GETIMPORT                        R17 K24 [tonumber]
       76 CALL                             R17 1 1
       77 SETTABLEKS                       R17 R16 K14 ["assetVersionNumber"]
       79 FASTCALL1                        TONUMBER R9 ; [+3]
       80 MOVE                             R18 R9
       81 GETIMPORT                        R17 K24 [tonumber]
       83 CALL                             R17 1 1
       84 SETTABLEKS                       R17 R16 K15 ["assetId"]
       86 SETTABLEKS                       R11 R16 K16 ["creatorType"]
       88 JUMPIFEQKNIL                     R12 ; [+7]
       90 FASTCALL1                        TONUMBER R12 ; [+3]
       91 MOVE                             R18 R12
       92 GETIMPORT                        R17 K24 [tonumber]
       94 CALL                             R17 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R17
       97 SETTABLEKS                       R17 R16 K17 ["creatorTargetId"]
       99 GETTABLEKS                       R17 R7 K25 ["createTime"]
      101 SETTABLEKS                       R17 R16 K18 ["created"]
      103 JUMPIFEQKNIL                     R13 ; [+4]
      105 GETTABLEKS                       R17 R13 K21 ["moderationState"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R17
      109 SETTABLEKS                       R17 R16 K21 ["moderationState"]
      111 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      113 GETIMPORT                        R14 K28 [table.insert]
      115 CALL                             R14 2 0
      116 FORGLOOP                         R3 2 ; [-102]
      118 GETTABLEKS                       R3 R2 K29 ["nextPageToken"]
      120 JUMPIFNOT                        R3 ; [+9]
      121 GETTABLEKS                       R3 R2 K29 ["nextPageToken"]
      123 JUMPIFEQKS                       R3 K20 [""] ; [+6]
      125 GETUPVAL                         R3 3
      126 GETTABLEKS                       R4 R2 K29 ["nextPageToken"]
      128 CALL                             R3 1 -1
      129 RETURN                           R3 -1
      130 LOADNIL                          R3
      131 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADN                            R4 50
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["getVersionHistoryOpenCloud"]
        6 CALL                             R1 4 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["assetVersionNumber"]
        2 GETTABLEKS                       R4 R1 K0 ["assetVersionNumber"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_17:
        0 GETIMPORT                        R0 K2 [table.sort]
        2 GETUPVAL                         R1 0
        3 DUPCLOSURE                       R2 K3 [PROTO_16]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 0
        8 CALL                             R2 1 -1
        9 NAMECALL                         R0 R0 K4 ["dispatch"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R4
        9 MOVE                             R7 R1
       10 LOADN                            R8 50
       11 LOADNIL                          R9
       12 NAMECALL                         R5 R0 K0 ["getVersionHistoryOpenCloud"]
       14 CALL                             R5 4 1
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NAMECALL                         R5 R5 K1 ["andThen"]
       22 CALL                             R5 2 1
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 NEWCLOSURE                       R8 P3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R5 R5 K1 ["andThen"]
       32 CALL                             R5 3 -1
       33 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 4
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 5
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 6
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 -1
       23 RETURN                           R1 -1

PROTO_21:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["HttpService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Actions"]
       23 GETTABLEKS                       R3 R3 K11 ["NetworkError"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R0 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Actions"]
       32 GETTABLEKS                       R4 R4 K12 ["SetPackageDescriptions"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R0 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K10 ["Actions"]
       41 GETTABLEKS                       R5 R5 K13 ["SetVersionHistoryData"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R6 R0 K9 ["Src"]
       48 GETTABLEKS                       R6 R6 K10 ["Actions"]
       50 GETTABLEKS                       R6 R6 K14 ["SetVersionHistoryWithDescriptions"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K8 [require]
       55 GETTABLEKS                       R7 R0 K9 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Flags"]
       59 GETTABLEKS                       R7 R7 K16 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K8 [require]
       64 GETTABLEKS                       R8 R0 K9 ["Src"]
       66 GETTABLEKS                       R8 R8 K15 ["Flags"]
       68 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxEnableExtendedVersioning"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K8 [require]
       73 GETTABLEKS                       R9 R0 K18 ["Packages"]
       75 GETTABLEKS                       R9 R9 K19 ["Framework"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R8 K20 ["Util"]
       80 GETTABLEKS                       R9 R9 K21 ["Promise"]
       82 DUPTABLE                         R10 K24 [{["User"] = "User", ["Group"] = "Group"}]
       83 DUPCLOSURE                       R11 K25 [PROTO_0]
       84 DUPCLOSURE                       R12 K26 [PROTO_1]
       85 DUPCLOSURE                       R13 K27 [PROTO_9]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 DUPCLOSURE                       R14 K28 [PROTO_13]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 DUPCLOSURE                       R15 K29 [PROTO_19]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R2
      101 DUPCLOSURE                       R16 K30 [PROTO_21]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R13
      107 RETURN                           R16 1
