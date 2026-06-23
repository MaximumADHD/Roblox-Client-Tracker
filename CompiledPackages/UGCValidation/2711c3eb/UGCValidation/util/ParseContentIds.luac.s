PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^rbxassetid://(%d+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^https?://www%.(.+)"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R1 K2 [string.match]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["^https?://(.+)"]
       10 CALL                             R1 2 1
       11 MOVE                             R0 R1
       12 JUMPIF                           R0 ; [+2]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K2 [string.match]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K5 ["^sitetest%d%.robloxlabs(.+)"]
       19 CALL                             R1 2 1
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K2 [string.match]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K6 ["^roblox(.+)"]
       25 CALL                             R1 2 1
       26 MOVE                             R0 R1
       27 JUMPIF                           R0 ; [+2]
       28 LOADNIL                          R1
       29 RETURN                           R1 1
       30 GETIMPORT                        R1 K2 [string.match]
       32 MOVE                             R2 R0
       33 LOADK                            R3 K7 ["^%.com//?asset/%?id=(%d+)$"]
       34 CALL                             R1 2 1
       35 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^https?://assetdelivery%.(.+)"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 JUMPIF                           R0 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K2 [string.match]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K4 ["^sitetest%d%.robloxlabs(.+)"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+5]
       15 GETIMPORT                        R1 K2 [string.match]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K5 ["^roblox(.+)"]
       19 CALL                             R1 2 1
       20 MOVE                             R0 R1
       21 JUMPIF                           R0 ; [+2]
       22 LOADNIL                          R1
       23 RETURN                           R1 1
       24 GETIMPORT                        R1 K2 [string.match]
       26 MOVE                             R2 R0
       27 LOADK                            R3 K6 ["^%.com/v1/asset/%?id=(%d+)$"]
       28 CALL                             R1 2 1
       29 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+2]
        7 RETURN                           R1 1
        8 GETIMPORT                        R2 K4 [string.match]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K5 ["^rbxassetid://(%d+)$"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 JUMPIFEQKNIL                     R1 ; [+2]
       16 RETURN                           R1 1
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 MOVE                             R1 R2
       21 JUMPIFEQKNIL                     R1 ; [+2]
       23 RETURN                           R1 1
       24 GETUPVAL                         R2 1
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 MOVE                             R1 R2
       28 JUMPIFEQKNIL                     R1 ; [+2]
       30 RETURN                           R1 1
       31 LOADNIL                          R2
       32 RETURN                           R2 1

PROTO_4:
        0 JUMPIF                           R2 ; [+2]
        1 LOADB                            R3 0
        2 RETURN                           R3 1
        3 GETTABLEKS                       R3 R2 K0 ["allowEditableInstances"]
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETTABLEKS                       R4 R2 K1 ["editableImages"]
       10 GETTABLE                         R3 R4 R0
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETTABLE                         R4 R3 R1
       13 JUMPIFNOT                        R4 ; [+6]
       14 GETTABLE                         R4 R3 R1
       15 GETTABLEKS                       R4 R4 K2 ["instance"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADB                            R4 1
       19 RETURN                           R4 1
       20 GETTABLEKS                       R5 R2 K3 ["editableMeshes"]
       22 GETTABLE                         R4 R5 R0
       23 JUMPIFNOT                        R4 ; [+8]
       24 GETTABLE                         R5 R4 R1
       25 JUMPIFNOT                        R5 ; [+6]
       26 GETTABLE                         R5 R4 R1
       27 GETTABLEKS                       R5 R5 K2 ["instance"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADB                            R5 1
       31 RETURN                           R5 1
       32 LOADB                            R5 0
       33 RETURN                           R5 1

PROTO_5:
        0 GETTABLE                         R7 R3 R4
        1 JUMPIFNOTEQKS                    R7 K0 [""] ; [+65]
        3 JUMPIF                           R6 ; [+2]
        4 LOADB                            R8 0
        5 JUMP                             ; [+30]
        6 GETTABLEKS                       R9 R6 K1 ["allowEditableInstances"]
        8 JUMPIF                           R9 ; [+2]
        9 LOADB                            R8 0
       10 JUMP                             ; [+25]
       11 GETTABLEKS                       R10 R6 K2 ["editableImages"]
       13 GETTABLE                         R9 R10 R3
       14 JUMPIFNOT                        R9 ; [+8]
       15 GETTABLE                         R10 R9 R4
       16 JUMPIFNOT                        R10 ; [+6]
       17 GETTABLE                         R10 R9 R4
       18 GETTABLEKS                       R10 R10 K3 ["instance"]
       20 JUMPIFNOT                        R10 ; [+2]
       21 LOADB                            R8 1
       22 JUMP                             ; [+13]
       23 GETTABLEKS                       R11 R6 K4 ["editableMeshes"]
       25 GETTABLE                         R10 R11 R3
       26 JUMPIFNOT                        R10 ; [+8]
       27 GETTABLE                         R11 R10 R4
       28 JUMPIFNOT                        R11 ; [+6]
       29 GETTABLE                         R11 R10 R4
       30 GETTABLEKS                       R11 R11 K3 ["instance"]
       32 JUMPIFNOT                        R11 ; [+2]
       33 LOADB                            R8 1
       34 JUMP                             ; [+1]
       35 LOADB                            R8 0
       36 JUMPIFNOT                        R8 ; [+13]
       37 JUMPIFNOT                        R2 ; [+27]
       38 DUPTABLE                         R10 K6 [{"fieldName", "instance"}]
       39 SETTABLEKS                       R4 R10 K5 ["fieldName"]
       41 SETTABLEKS                       R3 R10 K3 ["instance"]
       43 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       45 MOVE                             R9 R2
       46 GETIMPORT                        R8 K9 [table.insert]
       48 CALL                             R8 2 0
       49 JUMP                             ; [+15]
       50 JUMPIFNOT                        R5 ; [+14]
       51 LOADB                            R8 0
       52 NEWTABLE                         R9 0 1
       54 GETIMPORT                        R10 K12 [string.format]
       56 LOADK                            R11 K13 ["%s.%s cannot be empty"]
       57 NAMECALL                         R12 R3 K14 ["GetFullName"]
       59 CALL                             R12 1 1
       60 MOVE                             R13 R4
       61 CALL                             R10 3 -1
       62 SETLIST                          R9 R10 -1 [1]
       64 RETURN                           R8 2
       65 LOADB                            R8 1
       66 RETURN                           R8 1
       67 FASTCALL1                        TONUMBER R7 ; [+3]
       68 MOVE                             R10 R7
       69 GETIMPORT                        R9 K16 [tonumber]
       71 CALL                             R9 1 1
       72 JUMPIFEQKNIL                     R9 ; [+3]
       74 MOVE                             R8 R9
       75 JUMP                             ; [+27]
       76 GETIMPORT                        R10 K18 [string.match]
       78 MOVE                             R11 R7
       79 LOADK                            R12 K19 ["^rbxassetid://(%d+)$"]
       80 CALL                             R10 2 1
       81 MOVE                             R9 R10
       82 JUMPIFEQKNIL                     R9 ; [+3]
       84 MOVE                             R8 R9
       85 JUMP                             ; [+17]
       86 GETUPVAL                         R10 0
       87 MOVE                             R11 R7
       88 CALL                             R10 1 1
       89 MOVE                             R9 R10
       90 JUMPIFEQKNIL                     R9 ; [+3]
       92 MOVE                             R8 R9
       93 JUMP                             ; [+9]
       94 GETUPVAL                         R10 1
       95 MOVE                             R11 R7
       96 CALL                             R10 1 1
       97 MOVE                             R9 R10
       98 JUMPIFEQKNIL                     R9 ; [+3]
      100 MOVE                             R8 R9
      101 JUMP                             ; [+1]
      102 LOADNIL                          R8
      103 JUMPIFNOTEQKNIL                  R8 ; [+16]
      105 LOADB                            R9 0
      106 NEWTABLE                         R10 0 1
      108 GETIMPORT                        R11 K12 [string.format]
      110 LOADK                            R12 K20 ["Could not parse ContentId %s in %s.%s. Please make sure you are using a valid URL with a valid ID."]
      111 MOVE                             R13 R7
      112 NAMECALL                         R14 R3 K14 ["GetFullName"]
      114 CALL                             R14 1 1
      115 MOVE                             R15 R4
      116 CALL                             R11 4 -1
      117 SETLIST                          R10 R11 -1 [1]
      119 RETURN                           R9 2
      120 GETTABLE                         R9 R1 R8
      121 JUMPIFNOTEQKNIL                  R9 ; [+14]
      123 DUPTABLE                         R9 K6 [{"fieldName", "instance"}]
      124 SETTABLEKS                       R4 R9 K5 ["fieldName"]
      126 SETTABLEKS                       R3 R9 K3 ["instance"]
      128 SETTABLE                         R9 R1 R8
      129 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
      131 MOVE                             R10 R0
      132 MOVE                             R11 R8
      133 GETIMPORT                        R9 K9 [table.insert]
      135 CALL                             R9 2 0
      136 JUMPIFNOT                        R2 ; [+13]
      137 DUPTABLE                         R11 K22 [{"fieldName", "instance", "id"}]
      138 SETTABLEKS                       R4 R11 K5 ["fieldName"]
      140 SETTABLEKS                       R3 R11 K3 ["instance"]
      142 SETTABLEKS                       R8 R11 K21 ["id"]
      144 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      146 MOVE                             R10 R2
      147 GETIMPORT                        R9 K9 [table.insert]
      149 CALL                             R9 2 0
      150 LOADB                            R9 1
      151 RETURN                           R9 1

PROTO_6:
        0 MOVE                             R7 R4
        1 JUMPIF                           R7 ; [+3]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["CONTENT_ID_FIELDS"]
        5 MOVE                             R4 R7
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K1 ["new"]
        9 CALL                             R7 0 1
       10 NAMECALL                         R8 R3 K2 ["GetDescendants"]
       12 CALL                             R8 1 1
       13 FASTCALL2                        TABLE_INSERT R8 R3 ; [+5]
       15 MOVE                             R10 R8
       16 MOVE                             R11 R3
       17 GETIMPORT                        R9 K5 [table.insert]
       19 CALL                             R9 2 0
       20 GETIMPORT                        R9 K7 [pairs]
       22 MOVE                             R10 R8
       23 CALL                             R9 1 3
       24 FORGPREP_NEXT                    R9
       25 GETTABLEKS                       R15 R13 K8 ["ClassName"]
       27 GETTABLE                         R14 R4 R15
       28 JUMPIFNOT                        R14 ; [+27]
       29 MOVE                             R15 R5
       30 JUMPIFNOT                        R15 ; [+3]
       31 GETTABLEKS                       R16 R13 K8 ["ClassName"]
       33 GETTABLE                         R15 R5 R16
       34 GETIMPORT                        R16 K10 [ipairs]
       36 MOVE                             R17 R14
       37 CALL                             R16 1 3
       38 FORGPREP_INEXT                   R16
       39 MOVE                             R21 R15
       40 JUMPIFNOT                        R21 ; [+1]
       41 GETTABLE                         R21 R15 R20
       42 GETUPVAL                         R24 2
       43 MOVE                             R25 R0
       44 MOVE                             R26 R1
       45 MOVE                             R27 R2
       46 MOVE                             R28 R13
       47 MOVE                             R29 R20
       48 MOVE                             R30 R21
       49 MOVE                             R31 R6
       50 CALL                             R24 7 -1
       51 NAMECALL                         R22 R7 K11 ["updateReasons"]
       53 CALL                             R22 -1 0
       54 FORGLOOP                         R16 2 [inext] ; [-16]
       56 FORGLOOP                         R9 2 ; [-32]
       58 NAMECALL                         R9 R7 K12 ["getFinalResults"]
       60 CALL                             R9 1 -1
       61 RETURN                           R9 -1

PROTO_7:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 MOVE                             R1 R2
        8 RETURN                           R1 1
        9 GETIMPORT                        R3 K4 [string.match]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K5 ["^rbxassetid://(%d+)$"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 MOVE                             R1 R2
       18 RETURN                           R1 1
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 MOVE                             R2 R3
       23 JUMPIFEQKNIL                     R2 ; [+3]
       25 MOVE                             R1 R2
       26 RETURN                           R1 1
       27 GETUPVAL                         R3 1
       28 MOVE                             R4 R0
       29 CALL                             R3 1 1
       30 MOVE                             R2 R3
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 MOVE                             R1 R2
       34 RETURN                           R1 1
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 LOADNIL                          R9
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R6 7 -1
        9 RETURN                           R6 -1

PROTO_9:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 GETUPVAL                         R6 0
        7 MOVE                             R7 R4
        8 MOVE                             R8 R3
        9 MOVE                             R9 R5
       10 MOVE                             R10 R0
       11 MOVE                             R11 R1
       12 LOADNIL                          R12
       13 MOVE                             R13 R2
       14 CALL                             R6 7 1
       15 FASTCALL1                        ASSERT R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [assert]
       19 CALL                             R7 1 0
       20 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["FailureReasonsAccumulator"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 DUPCLOSURE                       R5 K9 [PROTO_1]
       23 DUPCLOSURE                       R6 K10 [PROTO_2]
       24 DUPCLOSURE                       R7 K11 [PROTO_3]
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R6
       27 DUPCLOSURE                       R8 K12 [PROTO_4]
       28 DUPCLOSURE                       R9 K13 [PROTO_5]
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R6
       31 DUPCLOSURE                       R10 K14 [PROTO_6]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R9
       35 DUPCLOSURE                       R11 K15 [PROTO_7]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 SETTABLEKS                       R11 R3 K16 ["tryGetAssetIdFromContentId"]
       40 DUPCLOSURE                       R11 K17 [PROTO_8]
       41 CAPTURE                          VAL R10
       42 SETTABLEKS                       R11 R3 K18 ["parseWithErrorCheck"]
       44 DUPCLOSURE                       R11 K19 [PROTO_9]
       45 CAPTURE                          VAL R10
       46 SETTABLEKS                       R11 R3 K20 ["parse"]
       48 RETURN                           R3 1
