PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Type"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        6 GETTABLEKS                       R2 R2 K2 ["User"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+18]
       10 GETIMPORT                        R1 K4 [pcall]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["GetNameFromUserIdAsync"]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["Id"]
       19 CALL                             R1 3 2
       20 MOVE                             R3 R0
       21 JUMPIFNOT                        R1 ; [+2]
       22 MOVE                             R4 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["Type"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       33 GETTABLEKS                       R2 R2 K7 ["Group"]
       35 JUMPIFNOTEQ                      R1 R2 ; [+19]
       37 GETIMPORT                        R1 K4 [pcall]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K8 ["GetGroupInfoAsync"]
       42 GETUPVAL                         R3 3
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K6 ["Id"]
       46 CALL                             R1 3 2
       47 MOVE                             R3 R0
       48 JUMPIFNOT                        R1 ; [+3]
       49 GETTABLEKS                       R4 R2 K9 ["Name"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R4
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K0 ["Type"]
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       61 GETTABLEKS                       R2 R2 K10 ["Universe"]
       63 JUMPIFNOTEQ                      R1 R2 ; [+14]
       65 GETUPVAL                         R1 4
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K6 ["Id"]
       69 CALL                             R1 1 1
       70 NEWCLOSURE                       R3 P0
       71 CAPTURE                          VAL R0
       72 NEWCLOSURE                       R4 P1
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R1 R1 K11 ["andThen"]
       76 CALL                             R1 3 0
       77 RETURN                           R0 0
       78 MOVE                             R1 R0
       79 LOADNIL                          R2
       80 CALL                             R1 1 0
       81 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 LOADB                            R2 0
        1 NEWTABLE                         R3 0 0
        3 NEWTABLE                         R4 0 0
        5 MOVE                             R5 R0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R10 R9 K0 ["action"]
       11 GETTABLEKS                       R11 R9 K1 ["subjectType"]
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R12 R12 K2 ["All"]
       16 JUMPIFNOTEQ                      R11 R12 ; [+8]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K3 ["Use"]
       21 JUMPIFNOTEQ                      R10 R11 ; [+3]
       23 LOADB                            R2 1
       24 JUMP                             ; [+61]
       25 GETUPVAL                         R12 2
       26 GETTABLEKS                       R13 R9 K1 ["subjectType"]
       28 GETTABLE                         R11 R12 R13
       29 GETTABLEKS                       R13 R9 K4 ["subjectId"]
       31 FASTCALL1                        TONUMBER R13 ; [+2]
       32 GETIMPORT                        R12 K6 [tonumber]
       34 CALL                             R12 1 1
       35 JUMPIFNOT                        R11 ; [+50]
       36 JUMPIFNOT                        R12 ; [+49]
       37 JUMPIFNOT                        R10 ; [+48]
       38 GETUPVAL                         R14 3
       39 GETTABLE                         R13 R14 R10
       40 JUMPIFNOT                        R13 ; [+45]
       41 GETUPVAL                         R13 4
       42 MOVE                             R14 R11
       43 MOVE                             R15 R12
       44 CALL                             R13 2 1
       45 GETTABLEKS                       R14 R1 K7 ["Uid"]
       47 JUMPIFEQ                         R13 R14 ; [+38]
       49 GETTABLE                         R14 R4 R13
       50 JUMPIFNOT                        R14 ; [+8]
       51 GETUPVAL                         R15 1
       52 GETTABLEKS                       R15 R15 K8 ["Edit"]
       54 JUMPIFNOTEQ                      R10 R15 ; [+31]
       56 SETTABLEKS                       R10 R14 K9 ["Action"]
       58 JUMP                             ; [+27]
       59 DUPTABLE                         R15 K11 [{"Scope", "Action"}]
       60 DUPTABLE                         R16 K15 [{"Id", "Name", "Type", "Uid"}]
       61 SETTABLEKS                       R12 R16 K12 ["Id"]
       63 FASTCALL1                        TOSTRING R12 ; [+3]
       64 MOVE                             R18 R12
       65 GETIMPORT                        R17 K17 [tostring]
       67 CALL                             R17 1 1
       68 SETTABLEKS                       R17 R16 K13 ["Name"]
       70 SETTABLEKS                       R11 R16 K14 ["Type"]
       72 SETTABLEKS                       R13 R16 K7 ["Uid"]
       74 SETTABLEKS                       R16 R15 K10 ["Scope"]
       76 SETTABLEKS                       R10 R15 K9 ["Action"]
       78 SETTABLE                         R15 R4 R13
       79 FASTCALL2                        TABLE_INSERT R3 R15 ; [+5]
       81 MOVE                             R17 R3
       82 MOVE                             R18 R15
       83 GETIMPORT                        R16 K20 [table.insert]
       85 CALL                             R16 2 0
       86 FORGLOOP                         R5 2 ; [-78]
       88 JUMPIFNOT                        R2 ; [+6]
       89 GETUPVAL                         R5 5
       90 GETTABLEKS                       R5 R5 K21 ["AssetPrivacy"]
       92 GETTABLEKS                       R5 R5 K22 ["OpenUse"]
       94 JUMP                             ; [+15]
       95 LENGTH                           R6 R3
       96 LOADN                            R7 0
       97 JUMPIFNOTLT                      R7 R6 ; [+7]
       99 GETUPVAL                         R5 5
      100 GETTABLEKS                       R5 R5 K21 ["AssetPrivacy"]
      102 GETTABLEKS                       R5 R5 K23 ["Shared"]
      104 JUMP                             ; [+5]
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K21 ["AssetPrivacy"]
      108 GETTABLEKS                       R5 R5 K24 ["Restricted"]
      110 DUPTABLE                         R6 K27 [{"Privacy", "SharedWith"}]
      111 SETTABLEKS                       R5 R6 K25 ["Privacy"]
      113 SETTABLEKS                       R3 R6 K26 ["SharedWith"]
      115 RETURN                           R6 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Scope"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R4
        5 JUMPIF                           R6 ; [+2]
        6 GETTABLEKS                       R6 R5 K0 ["Name"]
        8 SETTABLEKS                       R6 R5 K0 ["Name"]
       10 FORGLOOP                         R1 2 ; [-7]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K1 ["results"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R4 1
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["map"]
       14 GETTABLEKS                       R4 R2 K3 ["SharedWith"]
       16 DUPCLOSURE                       R5 K4 [PROTO_5]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["all"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K2 ["map"]
       24 MOVE                             R6 R3
       25 GETUPVAL                         R7 4
       26 CALL                             R5 2 -1
       27 CALL                             R4 -1 1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R4 K6 ["andThen"]
       34 CALL                             R4 2 -1
       35 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["fetchAssetPermissionsAsync failed: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["toError"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetAssetPermissionsRequest"]
        3 NEWTABLE                         R3 0 1
        5 GETUPVAL                         R4 1
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R2 1 1
        9 NAMECALL                         R2 R2 K1 ["makeRequest"]
       11 CALL                             R2 1 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R2 K2 ["andThen"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U8
       27 NAMECALL                         R2 R2 K3 ["catch"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Enums"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Networking"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K11 ["Promise"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Services"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K9 ["Networking"]
       42 GETTABLEKS                       R8 R8 K13 ["Shared"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Types"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Networking"]
       54 GETTABLEKS                       R10 R10 K14 ["Urls"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Utils"]
       61 GETTABLEKS                       R11 R11 K16 ["createScopeUid"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K9 ["Networking"]
       68 GETTABLEKS                       R12 R12 K17 ["fetchUniverseInfoAsync"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K15 ["Utils"]
       75 GETTABLEKS                       R13 R13 K18 ["logIfDebug"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R6 K19 ["GetService"]
       80 LOADK                            R14 K20 ["GroupService"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R6 K19 ["GetService"]
       84 LOADK                            R15 K21 ["Players"]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R15 R3 K22 ["PermissionsAction"]
       88 GETTABLEKS                       R16 R3 K23 ["PermissionsSubject"]
       90 NEWTABLE                         R17 4 0
       92 GETTABLEKS                       R18 R16 K24 ["User"]
       94 GETTABLEKS                       R19 R3 K25 ["ScopeType"]
       96 GETTABLEKS                       R19 R19 K24 ["User"]
       98 SETTABLE                         R19 R17 R18
       99 GETTABLEKS                       R18 R16 K26 ["Group"]
      101 GETTABLEKS                       R19 R3 K25 ["ScopeType"]
      103 GETTABLEKS                       R19 R19 K26 ["Group"]
      105 SETTABLE                         R19 R17 R18
      106 GETTABLEKS                       R18 R16 K27 ["Universe"]
      108 GETTABLEKS                       R19 R3 K25 ["ScopeType"]
      110 GETTABLEKS                       R19 R19 K27 ["Universe"]
      112 SETTABLE                         R19 R17 R18
      113 NEWTABLE                         R18 2 0
      115 GETTABLEKS                       R19 R15 K28 ["Use"]
      117 LOADB                            R20 1
      118 SETTABLE                         R20 R18 R19
      119 GETTABLEKS                       R19 R15 K29 ["Edit"]
      121 LOADB                            R20 1
      122 SETTABLE                         R20 R18 R19
      123 DUPCLOSURE                       R19 K30 [PROTO_3]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R11
      129 DUPCLOSURE                       R20 K31 [PROTO_4]
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R21 K32 [PROTO_10]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R7
      144 RETURN                           R21 1
