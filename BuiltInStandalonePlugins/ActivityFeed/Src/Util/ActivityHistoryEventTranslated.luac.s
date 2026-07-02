PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ContentProvider"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["BaseUrl"]
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R1 K7 [string.gsub]
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K8 ["www"]
       13 LOADK                            R4 K9 ["create"]
       14 CALL                             R1 3 1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 MOVE                             R3 R5
        7 LOADK                            R4 K0 [""]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 MOVE                             R3 R5
        7 LOADK                            R4 K0 [""]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 MOVE                             R3 R5
        7 LOADK                            R4 K0 [""]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K5 ["true"] ; [+3]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 FASTCALL1                        STRING_LEN R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [string.len]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 MOVE                             R3 R0
       12 LOADK                            R4 K4 ["://"]
       13 MOVE                             R5 R1
       14 CONCAT                           R2 R3 R5
       15 RETURN                           R2 1

PROTO_7:
        0 GETGLOBAL                        R3 K0 ["getLink"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R1 1
        8 LOADK                            R5 K1 ["["]
        9 MOVE                             R6 R1
       10 LOADK                            R7 K2 ["]"]
       11 LOADK                            R8 K3 ["("]
       12 MOVE                             R9 R3
       13 LOADK                            R10 K4 [")"]
       14 CONCAT                           R4 R5 R10
       15 RETURN                           R4 1

PROTO_8:
        0 LOADK                            R2 K0 ["\\"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[%-=!|<>#%*_~`%[%]%(%)]"]
        4 DUPCLOSURE                       R4 K4 [PROTO_8]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 LOADK                            R3 K0 ["."]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+7]
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R0
       11 SETLIST                          R2 R3 1 [1]
       13 RETURN                           R2 1
       14 LOADN                            R4 1
       15 SUBK                             R5 R1 K2 [1]
       16 NAMECALL                         R2 R0 K3 ["sub"]
       18 CALL                             R2 3 1
       19 ADDK                             R5 R1 K2 [1]
       20 LENGTH                           R6 R0
       21 NAMECALL                         R3 R0 K3 ["sub"]
       23 CALL                             R3 3 1
       24 NEWTABLE                         R4 0 2
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 SETLIST                          R4 R5 2 [1]
       30 RETURN                           R4 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Universe"] ; [+4]
        2 GETTABLEKS                       R2 R1 K1 ["universeId"]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R0 K2 ["Place"] ; [+5]
        7 GETTABLEKS                       R3 R1 K4 ["placeId"]
        9 ORK                              R2 R3 K3 [0]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K5 ["resourceId"]
       13 ORK                              R2 R3 K3 [0]
       14 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [DateTime.fromUnixTimestampMillis]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADK                            R2 K3 ["MMM D, h:mm a"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K4 ["FormatLocalTime"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R3 1
        8 LOADK                            R4 K2 ["🤷🏻‍♀️"]
        9 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEN                        R3 R2 1
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEN                        R3 R2 2
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADK                            R3 K0 [""]
       10 RETURN                           R3 1
       11 JUMPIFEQKNIL                     R1 ; [+16]
       13 GETIMPORT                        R3 K2 [pairs]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETIMPORT                        R8 K5 [string.gsub]
       20 MOVE                             R9 R7
       21 LOADK                            R10 K6 ["[%-=!|<>#%*_~`%[%]%(%)]"]
       22 DUPCLOSURE                       R11 K7 [PROTO_8]
       23 CALL                             R8 3 1
       24 SETTABLE                         R8 R1 R6
       25 FORGLOOP                         R3 2 ; [-8]
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R1 0 0
       30 GETUPVAL                         R3 1
       31 GETTABLEN                        R5 R2 1
       32 GETTABLEN                        R6 R2 2
       33 MOVE                             R7 R1
       34 NAMECALL                         R3 R3 K8 ["getText"]
       36 CALL                             R3 4 -1
       37 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["localizeNumber"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["HttpService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["PlayableDevices"]
        9 NAMECALL                         R1 R0 K5 ["JSONDecode"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K7 [pairs]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 GETUPVAL                         R9 1
       20 GETTABLE                         R8 R9 R7
       21 JUMPIFEQKNIL                     R8 ; [+28]
       23 GETUPVAL                         R9 2
       24 GETUPVAL                         R11 1
       25 GETTABLE                         R10 R11 R7
       26 GETTABLE                         R8 R9 R10
       27 JUMPIFEQKNIL                     R8 ; [+22]
       29 GETUPVAL                         R11 3
       30 GETUPVAL                         R13 2
       31 GETUPVAL                         R15 1
       32 GETTABLE                         R14 R15 R7
       33 GETTABLE                         R12 R13 R14
       34 CALL                             R11 1 1
       35 LOADK                            R12 K8 [""]
       36 FASTCALL1                        TOSTRING R11 ; [+3]
       37 MOVE                             R16 R11
       38 GETIMPORT                        R15 K10 [tostring]
       40 CALL                             R15 1 1
       41 MOVE                             R13 R15
       42 LOADK                            R14 K8 [""]
       43 CONCAT                           R10 R12 R14
       44 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       46 MOVE                             R9 R2
       47 GETIMPORT                        R8 K13 [table.insert]
       49 CALL                             R8 2 0
       50 FORGLOOP                         R3 2 ; [-32]
       52 LENGTH                           R3 R2
       53 LOADN                            R4 0
       54 JUMPIFNOTLT                      R4 R3 ; [+14]
       56 GETUPVAL                         R3 3
       57 LOADK                            R4 K14 ["Description.MonetizationSettingsPlayableDevices"]
       58 DUPTABLE                         R5 K16 [{"playableDevices"}]
       59 GETGLOBAL                        R6 K17 ["joinStrings"]
       61 MOVE                             R7 R2
       62 LOADK                            R8 K18 [", "]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K15 ["playableDevices"]
       66 CALL                             R3 2 1
       67 SETUPVAL                         R3 4
       68 RETURN                           R0 0
       69 GETUPVAL                         R3 3
       70 LOADK                            R4 K19 ["Description.MonetizationSettingsPlayableDevicesEmpty"]
       71 CALL                             R3 1 1
       72 SETUPVAL                         R3 4
       73 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R1
        9 CALL                             R2 1 2
       10 CLOSEUPVALS                      R1
       11 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K1 ["metaData"]
        3 GETTABLEKS                       R3 R4 K0 ["Playability"]
        5 JUMPIFNOTEQKS                    R3 K2 ["Public"] ; [+5]
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K3 ["Description.ActionPublic"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+14]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["metaData"]
       14 GETTABLEKS                       R3 R4 K0 ["Playability"]
       16 JUMPIFNOTEQKS                    R3 K4 ["Private"] ; [+5]
       18 GETUPVAL                         R2 1
       19 LOADK                            R3 K5 ["Description.ActionPrivate"]
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+3]
       22 GETUPVAL                         R2 1
       23 LOADK                            R3 K6 ["Description.ActionFriends"]
       24 CALL                             R2 1 1
       25 LOADK                            R3 K7 [""]
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R7 R2
       28 GETIMPORT                        R6 K9 [tostring]
       30 CALL                             R6 1 1
       31 MOVE                             R4 R6
       32 LOADK                            R5 K7 [""]
       33 CONCAT                           R1 R3 R5
       34 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R3 K0 [""]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R4 R0 K1 ["NumberOfScripts"]
        6 JUMPIF                           R4 ; [+1]
        7 LOADN                            R4 0
        8 JUMPIFNOTEQKN                    R4 K2 [1] ; [+6]
       10 GETUPVAL                         R5 0
       11 LOADK                            R6 K3 ["Description.DraftCommitScriptsSingle"]
       12 CALL                             R5 1 1
       13 MOVE                             R3 R5
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 0
       16 LOADK                            R6 K4 ["Description.DraftCommitScriptsMultiple"]
       17 DUPTABLE                         R7 K6 [{"numberOfScripts"}]
       18 SETTABLEKS                       R4 R7 K5 ["numberOfScripts"]
       20 CALL                             R5 2 1
       21 MOVE                             R3 R5
       22 NEWTABLE                         R7 0 2
       24 MOVE                             R8 R3
       25 LOADK                            R9 K7 ["TextLabel"]
       26 SETLIST                          R7 R8 2 [1]
       28 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       30 MOVE                             R6 R2
       31 GETIMPORT                        R5 K10 [table.insert]
       33 CALL                             R5 2 0
       34 JUMPIFNOT                        R0 ; [+3]
       35 GETTABLEKS                       R5 R0 K11 ["Scripts"]
       37 JUMPIF                           R5 ; [+2]
       38 NEWTABLE                         R5 0 0
       40 GETTABLEKS                       R6 R1 K12 ["showMoreScripts"]
       42 JUMPIF                           R6 ; [+84]
       43 LENGTH                           R7 R5
       44 LOADN                            R8 3
       45 JUMPIFNOTLT                      R8 R7 ; [+81]
       47 LOADN                            R9 1
       48 LOADN                            R7 3
       49 LOADN                            R8 1
       50 FORNPREP                         R7
       51 JUMPIFNOTEQKN                    R9 K13 [3] ; [+43]
       53 NEWTABLE                         R12 0 5
       55 GETTABLE                         R14 R5 R9
       56 GETTABLEKS                       R14 R14 K14 ["Name"]
       58 FASTCALL1                        TOSTRING R14 ; [+2]
       59 GETIMPORT                        R13 K16 [tostring]
       61 CALL                             R13 1 1
       62 LOADK                            R14 K17 ["TextButton"]
       63 LOADK                            R15 K0 [""]
       64 GETGLOBAL                        R16 K18 ["getLink"]
       66 LOADK                            R17 K19 ["explorer"]
       67 GETTABLE                         R19 R5 R9
       68 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
       70 FASTCALL1                        TOSTRING R19 ; [+2]
       71 GETIMPORT                        R18 K16 [tostring]
       73 CALL                             R18 1 1
       74 CALL                             R16 2 1
       75 NEWTABLE                         R17 0 3
       77 LOADK                            R19 K21 [" ..."]
       78 GETUPVAL                         R20 0
       79 LOADK                            R21 K22 ["Description.More"]
       80 CALL                             R20 1 1
       81 CONCAT                           R18 R19 R20
       82 LOADK                            R19 K17 ["TextButton"]
       83 LOADK                            R20 K23 ["scripts"]
       84 SETLIST                          R17 R18 3 [1]
       86 SETLIST                          R12 R13 5 [1]
       88 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       90 MOVE                             R11 R2
       91 GETIMPORT                        R10 K10 [table.insert]
       93 CALL                             R10 2 0
       94 JUMP                             ; [+30]
       95 NEWTABLE                         R12 0 4
       97 GETTABLE                         R14 R5 R9
       98 GETTABLEKS                       R14 R14 K14 ["Name"]
      100 FASTCALL1                        TOSTRING R14 ; [+2]
      101 GETIMPORT                        R13 K16 [tostring]
      103 CALL                             R13 1 1
      104 LOADK                            R14 K17 ["TextButton"]
      105 LOADK                            R15 K0 [""]
      106 GETGLOBAL                        R16 K18 ["getLink"]
      108 LOADK                            R17 K19 ["explorer"]
      109 GETTABLE                         R19 R5 R9
      110 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
      112 FASTCALL1                        TOSTRING R19 ; [+2]
      113 GETIMPORT                        R18 K16 [tostring]
      115 CALL                             R18 1 1
      116 CALL                             R16 2 -1
      117 SETLIST                          R12 R13 -1 [1]
      119 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      121 MOVE                             R11 R2
      122 GETIMPORT                        R10 K10 [table.insert]
      124 CALL                             R10 2 0
      125 FORNLOOP                         R7
      126 JUMP                             ; [+95]
      127 LENGTH                           R7 R5
      128 JUMPIFNOTLT                      R7 R4 ; [+58]
      130 LENGTH                           R8 R5
      131 SUB                              R7 R4 R8
      132 LOADN                            R10 1
      133 LENGTH                           R8 R5
      134 LOADN                            R9 1
      135 FORNPREP                         R8
      136 NEWTABLE                         R13 0 4
      138 GETTABLE                         R15 R5 R10
      139 GETTABLEKS                       R15 R15 K14 ["Name"]
      141 FASTCALL1                        TOSTRING R15 ; [+2]
      142 GETIMPORT                        R14 K16 [tostring]
      144 CALL                             R14 1 1
      145 LOADK                            R15 K17 ["TextButton"]
      146 LOADK                            R16 K0 [""]
      147 GETGLOBAL                        R17 K18 ["getLink"]
      149 LOADK                            R18 K19 ["explorer"]
      150 GETTABLE                         R20 R5 R10
      151 GETTABLEKS                       R20 R20 K20 ["UniqueId"]
      153 FASTCALL1                        TOSTRING R20 ; [+2]
      154 GETIMPORT                        R19 K16 [tostring]
      156 CALL                             R19 1 1
      157 CALL                             R17 2 -1
      158 SETLIST                          R13 R14 -1 [1]
      160 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      162 MOVE                             R12 R2
      163 GETIMPORT                        R11 K10 [table.insert]
      165 CALL                             R11 2 0
      166 FORNLOOP                         R8
      167 NEWTABLE                         R10 0 2
      169 LOADK                            R12 K24 ["• "]
      170 GETUPVAL                         R13 0
      171 LOADK                            R14 K25 ["Description.DraftCommitXMoreScripts"]
      172 DUPTABLE                         R15 K27 [{"missingScripts"}]
      173 SETTABLEKS                       R7 R15 K26 ["missingScripts"]
      175 CALL                             R13 2 1
      176 CONCAT                           R11 R12 R13
      177 LOADK                            R12 K7 ["TextLabel"]
      178 SETLIST                          R10 R11 2 [1]
      180 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      182 MOVE                             R9 R2
      183 GETIMPORT                        R8 K10 [table.insert]
      185 CALL                             R8 2 0
      186 JUMP                             ; [+35]
      187 LOADN                            R9 1
      188 LENGTH                           R7 R5
      189 LOADN                            R8 1
      190 FORNPREP                         R7
      191 NEWTABLE                         R12 0 4
      193 GETTABLE                         R14 R5 R9
      194 GETTABLEKS                       R14 R14 K14 ["Name"]
      196 FASTCALL1                        TOSTRING R14 ; [+2]
      197 GETIMPORT                        R13 K16 [tostring]
      199 CALL                             R13 1 1
      200 LOADK                            R14 K17 ["TextButton"]
      201 LOADK                            R15 K0 [""]
      202 GETGLOBAL                        R16 K18 ["getLink"]
      204 LOADK                            R17 K19 ["explorer"]
      205 GETTABLE                         R19 R5 R9
      206 GETTABLEKS                       R19 R19 K20 ["UniqueId"]
      208 FASTCALL1                        TOSTRING R19 ; [+2]
      209 GETIMPORT                        R18 K16 [tostring]
      211 CALL                             R18 1 1
      212 CALL                             R16 2 -1
      213 SETLIST                          R12 R13 -1 [1]
      215 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      217 MOVE                             R11 R2
      218 GETIMPORT                        R10 K10 [table.insert]
      220 CALL                             R10 2 0
      221 FORNLOOP                         R7
      222 JUMPIFNOT                        R0 ; [+3]
      223 GETTABLEKS                       R7 R0 K28 ["CommitMessage"]
      225 JUMPIF                           R7 ; [+1]
      226 LOADK                            R7 K0 [""]
      227 JUMPIFNOTEQKS                    R7 K0 [""] ; [+2]
      229 RETURN                           R2 1
      230 LOADK                            R8 K29 ["\""]
      231 MOVE                             R9 R7
      232 LOADK                            R10 K29 ["\""]
      233 CONCAT                           R7 R8 R10
      234 NEWTABLE                         R10 0 3
      236 MOVE                             R11 R7
      237 LOADK                            R12 K7 ["TextLabel"]
      238 LOADK                            R13 K30 ["SecondaryText"]
      239 SETLIST                          R10 R11 3 [1]
      241 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      243 MOVE                             R9 R2
      244 GETIMPORT                        R8 K10 [table.insert]
      246 CALL                             R8 2 0
      247 RETURN                           R2 1

PROTO_20:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["HttpService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R6 R0 K4 ["Permissions"]
        8 NAMECALL                         R4 R3 K5 ["JSONDecode"]
       10 CALL                             R4 2 1
       11 NEWTABLE                         R5 0 0
       13 GETIMPORT                        R6 K7 [pairs]
       15 MOVE                             R7 R4
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 GETUPVAL                         R14 0
       19 LOADK                            R16 K8 ["Permission."]
       20 MOVE                             R17 R10
       21 CONCAT                           R15 R16 R17
       22 CALL                             R14 1 1
       23 LOADK                            R15 K9 [""]
       24 FASTCALL1                        TOSTRING R14 ; [+3]
       25 MOVE                             R19 R14
       26 GETIMPORT                        R18 K11 [tostring]
       28 CALL                             R18 1 1
       29 MOVE                             R16 R18
       30 LOADK                            R17 K9 [""]
       31 CONCAT                           R13 R15 R17
       32 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       34 MOVE                             R12 R5
       35 GETIMPORT                        R11 K14 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R6 2 ; [-21]
       40 GETUPVAL                         R6 0
       41 LENGTH                           R8 R4
       42 LOADN                            R9 0
       43 JUMPIFNOTLT                      R9 R8 ; [+3]
       45 MOVE                             R7 R1
       46 JUMP                             ; [+1]
       47 MOVE                             R7 R2
       48 DUPTABLE                         R8 K19 [{"roleName", "groupName", "universeName", "permissions"}]
       49 GETTABLEKS                       R9 R0 K20 ["RoleName"]
       51 SETTABLEKS                       R9 R8 K15 ["roleName"]
       53 GETTABLEKS                       R9 R0 K21 ["GroupName"]
       55 SETTABLEKS                       R9 R8 K16 ["groupName"]
       57 GETTABLEKS                       R9 R0 K22 ["UniverseName"]
       59 SETTABLEKS                       R9 R8 K17 ["universeName"]
       61 GETGLOBAL                        R9 K23 ["joinStrings"]
       63 MOVE                             R10 R5
       64 LOADK                            R11 K24 [", "]
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K18 ["permissions"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["metaData"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 RETURN                           R1 1

PROTO_22:
        0 NAMECALL                         R3 R1 K0 ["getLocale"]
        2 CALL                             R3 1 1
        3 GETUPVAL                         R5 0
        4 LOADK                            R6 K1 ["dashboard/creations/experiences/"]
        5 GETTABLEKS                       R8 R2 K2 ["universeId"]
        7 FASTCALL1                        TOSTRING R8 ; [+2]
        8 GETIMPORT                        R7 K4 [tostring]
       10 CALL                             R7 1 1
       11 CONCAT                           R4 R5 R7
       12 GETUPVAL                         R6 0
       13 LOADK                            R7 K1 ["dashboard/creations/experiences/"]
       14 GETTABLEKS                       R12 R2 K2 ["universeId"]
       16 FASTCALL1                        TOSTRING R12 ; [+2]
       17 GETIMPORT                        R11 K4 [tostring]
       19 CALL                             R11 1 1
       20 MOVE                             R8 R11
       21 LOADK                            R9 K5 ["/places/"]
       22 GETTABLEKS                       R11 R2 K6 ["placeId"]
       24 FASTCALL1                        TOSTRING R11 ; [+2]
       25 GETIMPORT                        R10 K4 [tostring]
       27 CALL                             R10 1 1
       28 CONCAT                           R5 R6 R10
       29 GETUPVAL                         R7 0
       30 LOADK                            R8 K1 ["dashboard/creations/experiences/"]
       31 GETTABLEKS                       R14 R2 K2 ["universeId"]
       33 FASTCALL1                        TOSTRING R14 ; [+2]
       34 GETIMPORT                        R13 K4 [tostring]
       36 CALL                             R13 1 1
       37 MOVE                             R9 R13
       38 LOADK                            R10 K7 ["/badges/"]
       39 GETTABLEKS                       R14 R2 K8 ["resourceId"]
       41 FASTCALL1                        TOSTRING R14 ; [+2]
       42 GETIMPORT                        R13 K4 [tostring]
       44 CALL                             R13 1 1
       45 MOVE                             R11 R13
       46 LOADK                            R12 K9 ["/overview"]
       47 CONCAT                           R6 R7 R12
       48 GETUPVAL                         R8 0
       49 LOADK                            R9 K1 ["dashboard/creations/experiences/"]
       50 GETTABLEKS                       R15 R2 K2 ["universeId"]
       52 FASTCALL1                        TOSTRING R15 ; [+2]
       53 GETIMPORT                        R14 K4 [tostring]
       55 CALL                             R14 1 1
       56 MOVE                             R10 R14
       57 LOADK                            R11 K10 ["/developer-products/"]
       58 GETTABLEKS                       R15 R2 K8 ["resourceId"]
       60 FASTCALL1                        TOSTRING R15 ; [+2]
       61 GETIMPORT                        R14 K4 [tostring]
       63 CALL                             R14 1 1
       64 MOVE                             R12 R14
       65 LOADK                            R13 K11 ["/configure"]
       66 CONCAT                           R7 R8 R13
       67 GETUPVAL                         R9 0
       68 LOADK                            R10 K1 ["dashboard/creations/experiences/"]
       69 GETTABLEKS                       R16 R2 K2 ["universeId"]
       71 FASTCALL1                        TOSTRING R16 ; [+2]
       72 GETIMPORT                        R15 K4 [tostring]
       74 CALL                             R15 1 1
       75 MOVE                             R11 R15
       76 LOADK                            R12 K12 ["/passes/"]
       77 GETTABLEKS                       R16 R2 K8 ["resourceId"]
       79 FASTCALL1                        TOSTRING R16 ; [+2]
       80 GETIMPORT                        R15 K4 [tostring]
       82 CALL                             R15 1 1
       83 MOVE                             R13 R15
       84 LOADK                            R14 K11 ["/configure"]
       85 CONCAT                           R8 R9 R14
       86 GETUPVAL                         R10 1
       87 LOADK                            R11 K13 ["users/"]
       88 GETTABLEKS                       R15 R2 K14 ["userId"]
       90 FASTCALL1                        TOSTRING R15 ; [+2]
       91 GETIMPORT                        R14 K4 [tostring]
       93 CALL                             R14 1 1
       94 MOVE                             R12 R14
       95 LOADK                            R13 K15 ["/profile"]
       96 CONCAT                           R9 R10 R13
       97 GETUPVAL                         R11 1
       98 LOADK                            R12 K13 ["users/"]
       99 GETTABLEKS                       R16 R2 K8 ["resourceId"]
      101 FASTCALL1                        TOSTRING R16 ; [+2]
      102 GETIMPORT                        R15 K4 [tostring]
      104 CALL                             R15 1 1
      105 MOVE                             R13 R15
      106 LOADK                            R14 K15 ["/profile"]
      107 CONCAT                           R10 R11 R14
      108 GETUPVAL                         R12 1
      109 LOADK                            R13 K16 ["groups/"]
      110 GETTABLEKS                       R15 R2 K8 ["resourceId"]
      112 FASTCALL1                        TOSTRING R15 ; [+2]
      113 GETIMPORT                        R14 K4 [tostring]
      115 CALL                             R14 1 1
      116 CONCAT                           R11 R12 R14
      117 NEWCLOSURE                       R12 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R1
      120 NEWCLOSURE                       R13 P1
      121 CAPTURE                          VAL R1
      122 NEWCLOSURE                       R14 P2
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R12
      126 NEWCLOSURE                       R15 P3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R12
      129 NEWCLOSURE                       R16 P4
      130 CAPTURE                          VAL R12
      131 NEWCLOSURE                       R17 P5
      132 CAPTURE                          VAL R12
      133 GETTABLEKS                       R18 R2 K17 ["eventType"]
      135 JUMPIFNOTEQKN                    R18 K18 [0] ; [+52]
      137 DUPTABLE                         R18 K32 [{["id"], ["eventType"] = "Init", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      138 GETTABLEKS                       R19 R2 K19 ["id"]
      140 SETTABLEKS                       R19 R18 K19 ["id"]
      142 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      144 GETIMPORT                        R21 K35 [pcall]
      146 NEWCLOSURE                       R22 P6
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R3
      149 CALL                             R21 1 2
      150 JUMPIFNOT                        R21 ; [+2]
      151 MOVE                             R19 R22
      152 JUMP                             ; [+1]
      153 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      154 SETTABLEKS                       R19 R18 K23 ["date"]
      156 MOVE                             R19 R12
      157 LOADK                            R20 K37 ["Description.Init"]
      158 CALL                             R19 1 1
      159 SETTABLEKS                       R19 R18 K24 ["translation"]
      161 GETTABLEKS                       R19 R2 K14 ["userId"]
      163 SETTABLEKS                       R19 R18 K25 ["actorId"]
      165 MOVE                             R19 R0
      166 GETTABLEKS                       R20 R2 K14 ["userId"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K26 ["actorName"]
      171 GETTABLEKS                       R19 R2 K2 ["universeId"]
      173 SETTABLEKS                       R19 R18 K29 ["iconId"]
      175 GETTABLEKS                       R19 R2 K2 ["universeId"]
      177 SETTABLEKS                       R19 R18 K2 ["universeId"]
      179 GETTABLEKS                       R19 R2 K30 ["headerText"]
      181 SETTABLEKS                       R19 R18 K30 ["headerText"]
      183 GETTABLEKS                       R19 R2 K31 ["footerText"]
      185 SETTABLEKS                       R19 R18 K31 ["footerText"]
      187 RETURN                           R18 1
      188 GETTABLEKS                       R18 R2 K17 ["eventType"]
      190 JUMPIFNOTEQKN                    R18 K38 [1] ; [+79]
      192 DUPTABLE                         R18 K41 [{["id"], ["eventType"] = "ArchivedExperience", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      193 GETTABLEKS                       R19 R2 K19 ["id"]
      195 SETTABLEKS                       R19 R18 K19 ["id"]
      197 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      199 GETIMPORT                        R21 K35 [pcall]
      201 NEWCLOSURE                       R22 P6
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R3
      204 CALL                             R21 1 2
      205 JUMPIFNOT                        R21 ; [+2]
      206 MOVE                             R19 R22
      207 JUMP                             ; [+1]
      208 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      209 SETTABLEKS                       R19 R18 K23 ["date"]
      211 GETTABLEKS                       R22 R2 K42 ["metaData"]
      213 JUMPIFNOT                        R22 ; [+5]
      214 GETTABLEKS                       R22 R2 K42 ["metaData"]
      216 GETTABLEKS                       R21 R22 K43 ["Action"]
      218 JUMPIF                           R21 ; [+1]
      219 LOADK                            R21 K44 [""]
      220 GETIMPORT                        R22 K47 [string.lower]
      222 FASTCALL1                        TOSTRING R21 ; [+3]
      223 MOVE                             R24 R21
      224 GETIMPORT                        R23 K4 [tostring]
      226 CALL                             R23 1 1
      227 CALL                             R22 1 1
      228 JUMPIFNOTEQKS                    R22 K48 ["true"] ; [+3]
      230 LOADB                            R20 1
      231 JUMP                             ; [+1]
      232 LOADB                            R20 0
      233 JUMPIFNOT                        R20 ; [+4]
      234 MOVE                             R19 R12
      235 LOADK                            R20 K49 ["Description.ArchivedExperience"]
      236 CALL                             R19 1 1
      237 JUMPIF                           R19 ; [+3]
      238 MOVE                             R19 R12
      239 LOADK                            R20 K50 ["Description.RestoredExperience"]
      240 CALL                             R19 1 1
      241 SETTABLEKS                       R19 R18 K24 ["translation"]
      243 GETTABLEKS                       R19 R2 K14 ["userId"]
      245 SETTABLEKS                       R19 R18 K25 ["actorId"]
      247 MOVE                             R19 R0
      248 GETTABLEKS                       R20 R2 K14 ["userId"]
      250 CALL                             R19 1 1
      251 SETTABLEKS                       R19 R18 K26 ["actorName"]
      253 GETTABLEKS                       R19 R2 K2 ["universeId"]
      255 SETTABLEKS                       R19 R18 K29 ["iconId"]
      257 GETTABLEKS                       R19 R2 K2 ["universeId"]
      259 SETTABLEKS                       R19 R18 K2 ["universeId"]
      261 GETTABLEKS                       R19 R2 K30 ["headerText"]
      263 SETTABLEKS                       R19 R18 K30 ["headerText"]
      265 GETTABLEKS                       R19 R2 K31 ["footerText"]
      267 SETTABLEKS                       R19 R18 K31 ["footerText"]
      269 RETURN                           R18 1
      270 GETTABLEKS                       R18 R2 K17 ["eventType"]
      272 JUMPIFNOTEQKN                    R18 K51 [2] ; [+100]
      274 DUPTABLE                         R18 K54 [{["id"], ["eventType"] = "PlayabilityChanged", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      275 GETTABLEKS                       R19 R2 K19 ["id"]
      277 SETTABLEKS                       R19 R18 K19 ["id"]
      279 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      281 GETIMPORT                        R21 K35 [pcall]
      283 NEWCLOSURE                       R22 P6
      284 CAPTURE                          VAL R20
      285 CAPTURE                          VAL R3
      286 CALL                             R21 1 2
      287 JUMPIFNOT                        R21 ; [+2]
      288 MOVE                             R19 R22
      289 JUMP                             ; [+1]
      290 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      291 SETTABLEKS                       R19 R18 K23 ["date"]
      293 MOVE                             R19 R12
      294 LOADK                            R20 K55 ["Description.PlayabilityChanged"]
      295 DUPTABLE                         R21 K57 [{"playability"}]
      296 GETTABLEKS                       R23 R2 K42 ["metaData"]
      298 GETTABLEKS                       R26 R2 K42 ["metaData"]
      300 GETTABLEKS                       R25 R26 K58 ["Playability"]
      302 JUMPIFNOTEQKS                    R25 K59 ["Public"] ; [+5]
      304 MOVE                             R24 R12
      305 LOADK                            R25 K60 ["Description.ActionPublic"]
      306 CALL                             R24 1 1
      307 JUMPIF                           R24 ; [+13]
      308 GETTABLEKS                       R26 R2 K42 ["metaData"]
      310 GETTABLEKS                       R25 R26 K58 ["Playability"]
      312 JUMPIFNOTEQKS                    R25 K61 ["Private"] ; [+5]
      314 MOVE                             R24 R12
      315 LOADK                            R25 K62 ["Description.ActionPrivate"]
      316 CALL                             R24 1 1
      317 JUMPIF                           R24 ; [+3]
      318 MOVE                             R24 R12
      319 LOADK                            R25 K63 ["Description.ActionFriends"]
      320 CALL                             R24 1 1
      321 LOADK                            R25 K44 [""]
      322 FASTCALL1                        TOSTRING R24 ; [+3]
      323 MOVE                             R29 R24
      324 GETIMPORT                        R28 K4 [tostring]
      326 CALL                             R28 1 1
      327 MOVE                             R26 R28
      328 LOADK                            R27 K44 [""]
      329 CONCAT                           R22 R25 R27
      330 SETTABLEKS                       R22 R21 K56 ["playability"]
      332 CALL                             R19 2 1
      333 SETTABLEKS                       R19 R18 K24 ["translation"]
      335 GETTABLEKS                       R19 R2 K14 ["userId"]
      337 SETTABLEKS                       R19 R18 K25 ["actorId"]
      339 MOVE                             R19 R0
      340 GETTABLEKS                       R20 R2 K14 ["userId"]
      342 CALL                             R19 1 1
      343 SETTABLEKS                       R19 R18 K26 ["actorName"]
      345 GETTABLEKS                       R19 R2 K2 ["universeId"]
      347 SETTABLEKS                       R19 R18 K29 ["iconId"]
      349 GETTABLEKS                       R19 R2 K2 ["universeId"]
      351 SETTABLEKS                       R19 R18 K2 ["universeId"]
      353 GETTABLEKS                       R19 R2 K30 ["headerText"]
      355 SETTABLEKS                       R19 R18 K30 ["headerText"]
      357 GETTABLEKS                       R19 R2 K31 ["footerText"]
      359 SETTABLEKS                       R19 R18 K31 ["footerText"]
      361 LOADK                            R20 K44 [""]
      362 FASTCALL1                        TOSTRING R4 ; [+3]
      363 MOVE                             R24 R4
      364 GETIMPORT                        R23 K4 [tostring]
      366 CALL                             R23 1 1
      367 MOVE                             R21 R23
      368 LOADK                            R22 K11 ["/configure"]
      369 CONCAT                           R19 R20 R22
      370 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      372 RETURN                           R18 1
      373 GETTABLEKS                       R18 R2 K17 ["eventType"]
      375 JUMPIFNOTEQKN                    R18 K64 [3] ; [+84]
      377 DUPTABLE                         R18 K66 [{["id"], ["eventType"] = "NotificationStringCreated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      378 GETTABLEKS                       R19 R2 K19 ["id"]
      380 SETTABLEKS                       R19 R18 K19 ["id"]
      382 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      384 GETIMPORT                        R21 K35 [pcall]
      386 NEWCLOSURE                       R22 P6
      387 CAPTURE                          VAL R20
      388 CAPTURE                          VAL R3
      389 CALL                             R21 1 2
      390 JUMPIFNOT                        R21 ; [+2]
      391 MOVE                             R19 R22
      392 JUMP                             ; [+1]
      393 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      394 SETTABLEKS                       R19 R18 K23 ["date"]
      396 MOVE                             R19 R12
      397 LOADK                            R20 K67 ["Description.NotificationStringCreated"]
      398 DUPTABLE                         R21 K69 [{"stringName"}]
      399 GETTABLEKS                       R24 R2 K42 ["metaData"]
      401 JUMPIFNOT                        R24 ; [+5]
      402 GETTABLEKS                       R24 R2 K42 ["metaData"]
      404 GETTABLEKS                       R23 R24 K70 ["StringName"]
      406 JUMPIF                           R23 ; [+1]
      407 LOADK                            R23 K44 [""]
      408 LOADK                            R24 K44 [""]
      409 FASTCALL1                        TOSTRING R23 ; [+3]
      410 MOVE                             R28 R23
      411 GETIMPORT                        R27 K4 [tostring]
      413 CALL                             R27 1 1
      414 MOVE                             R25 R27
      415 LOADK                            R26 K44 [""]
      416 CONCAT                           R22 R24 R26
      417 SETTABLEKS                       R22 R21 K68 ["stringName"]
      419 CALL                             R19 2 1
      420 SETTABLEKS                       R19 R18 K24 ["translation"]
      422 GETTABLEKS                       R19 R2 K14 ["userId"]
      424 SETTABLEKS                       R19 R18 K25 ["actorId"]
      426 MOVE                             R19 R0
      427 GETTABLEKS                       R20 R2 K14 ["userId"]
      429 CALL                             R19 1 1
      430 SETTABLEKS                       R19 R18 K26 ["actorName"]
      432 GETTABLEKS                       R19 R2 K2 ["universeId"]
      434 SETTABLEKS                       R19 R18 K29 ["iconId"]
      436 GETTABLEKS                       R19 R2 K2 ["universeId"]
      438 SETTABLEKS                       R19 R18 K2 ["universeId"]
      440 GETTABLEKS                       R19 R2 K30 ["headerText"]
      442 SETTABLEKS                       R19 R18 K30 ["headerText"]
      444 GETTABLEKS                       R19 R2 K31 ["footerText"]
      446 SETTABLEKS                       R19 R18 K31 ["footerText"]
      448 LOADK                            R20 K44 [""]
      449 FASTCALL1                        TOSTRING R4 ; [+3]
      450 MOVE                             R24 R4
      451 GETIMPORT                        R23 K4 [tostring]
      453 CALL                             R23 1 1
      454 MOVE                             R21 R23
      455 LOADK                            R22 K71 ["/notifications"]
      456 CONCAT                           R19 R20 R22
      457 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      459 RETURN                           R18 1
      460 GETTABLEKS                       R18 R2 K17 ["eventType"]
      462 JUMPIFNOTEQKN                    R18 K72 [4] ; [+84]
      464 DUPTABLE                         R18 K74 [{["id"], ["eventType"] = "NotificationStringDeleted", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      465 GETTABLEKS                       R19 R2 K19 ["id"]
      467 SETTABLEKS                       R19 R18 K19 ["id"]
      469 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      471 GETIMPORT                        R21 K35 [pcall]
      473 NEWCLOSURE                       R22 P6
      474 CAPTURE                          VAL R20
      475 CAPTURE                          VAL R3
      476 CALL                             R21 1 2
      477 JUMPIFNOT                        R21 ; [+2]
      478 MOVE                             R19 R22
      479 JUMP                             ; [+1]
      480 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      481 SETTABLEKS                       R19 R18 K23 ["date"]
      483 MOVE                             R19 R12
      484 LOADK                            R20 K75 ["Description.NotificationStringDeleted"]
      485 DUPTABLE                         R21 K69 [{"stringName"}]
      486 GETTABLEKS                       R24 R2 K42 ["metaData"]
      488 JUMPIFNOT                        R24 ; [+5]
      489 GETTABLEKS                       R24 R2 K42 ["metaData"]
      491 GETTABLEKS                       R23 R24 K70 ["StringName"]
      493 JUMPIF                           R23 ; [+1]
      494 LOADK                            R23 K44 [""]
      495 LOADK                            R24 K44 [""]
      496 FASTCALL1                        TOSTRING R23 ; [+3]
      497 MOVE                             R28 R23
      498 GETIMPORT                        R27 K4 [tostring]
      500 CALL                             R27 1 1
      501 MOVE                             R25 R27
      502 LOADK                            R26 K44 [""]
      503 CONCAT                           R22 R24 R26
      504 SETTABLEKS                       R22 R21 K68 ["stringName"]
      506 CALL                             R19 2 1
      507 SETTABLEKS                       R19 R18 K24 ["translation"]
      509 GETTABLEKS                       R19 R2 K14 ["userId"]
      511 SETTABLEKS                       R19 R18 K25 ["actorId"]
      513 MOVE                             R19 R0
      514 GETTABLEKS                       R20 R2 K14 ["userId"]
      516 CALL                             R19 1 1
      517 SETTABLEKS                       R19 R18 K26 ["actorName"]
      519 GETTABLEKS                       R19 R2 K2 ["universeId"]
      521 SETTABLEKS                       R19 R18 K29 ["iconId"]
      523 GETTABLEKS                       R19 R2 K2 ["universeId"]
      525 SETTABLEKS                       R19 R18 K2 ["universeId"]
      527 GETTABLEKS                       R19 R2 K30 ["headerText"]
      529 SETTABLEKS                       R19 R18 K30 ["headerText"]
      531 GETTABLEKS                       R19 R2 K31 ["footerText"]
      533 SETTABLEKS                       R19 R18 K31 ["footerText"]
      535 LOADK                            R20 K44 [""]
      536 FASTCALL1                        TOSTRING R4 ; [+3]
      537 MOVE                             R24 R4
      538 GETIMPORT                        R23 K4 [tostring]
      540 CALL                             R23 1 1
      541 MOVE                             R21 R23
      542 LOADK                            R22 K71 ["/notifications"]
      543 CONCAT                           R19 R20 R22
      544 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      546 RETURN                           R18 1
      547 GETTABLEKS                       R18 R2 K17 ["eventType"]
      549 JUMPIFNOTEQKN                    R18 K76 [5] ; [+84]
      551 DUPTABLE                         R18 K78 [{["id"], ["eventType"] = "NotificationStringUpdated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
      552 GETTABLEKS                       R19 R2 K19 ["id"]
      554 SETTABLEKS                       R19 R18 K19 ["id"]
      556 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      558 GETIMPORT                        R21 K35 [pcall]
      560 NEWCLOSURE                       R22 P6
      561 CAPTURE                          VAL R20
      562 CAPTURE                          VAL R3
      563 CALL                             R21 1 2
      564 JUMPIFNOT                        R21 ; [+2]
      565 MOVE                             R19 R22
      566 JUMP                             ; [+1]
      567 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      568 SETTABLEKS                       R19 R18 K23 ["date"]
      570 MOVE                             R19 R12
      571 LOADK                            R20 K79 ["Description.NotificationStringUpdated"]
      572 DUPTABLE                         R21 K69 [{"stringName"}]
      573 GETTABLEKS                       R24 R2 K42 ["metaData"]
      575 JUMPIFNOT                        R24 ; [+5]
      576 GETTABLEKS                       R24 R2 K42 ["metaData"]
      578 GETTABLEKS                       R23 R24 K70 ["StringName"]
      580 JUMPIF                           R23 ; [+1]
      581 LOADK                            R23 K44 [""]
      582 LOADK                            R24 K44 [""]
      583 FASTCALL1                        TOSTRING R23 ; [+3]
      584 MOVE                             R28 R23
      585 GETIMPORT                        R27 K4 [tostring]
      587 CALL                             R27 1 1
      588 MOVE                             R25 R27
      589 LOADK                            R26 K44 [""]
      590 CONCAT                           R22 R24 R26
      591 SETTABLEKS                       R22 R21 K68 ["stringName"]
      593 CALL                             R19 2 1
      594 SETTABLEKS                       R19 R18 K24 ["translation"]
      596 GETTABLEKS                       R19 R2 K14 ["userId"]
      598 SETTABLEKS                       R19 R18 K25 ["actorId"]
      600 MOVE                             R19 R0
      601 GETTABLEKS                       R20 R2 K14 ["userId"]
      603 CALL                             R19 1 1
      604 SETTABLEKS                       R19 R18 K26 ["actorName"]
      606 GETTABLEKS                       R19 R2 K2 ["universeId"]
      608 SETTABLEKS                       R19 R18 K29 ["iconId"]
      610 GETTABLEKS                       R19 R2 K2 ["universeId"]
      612 SETTABLEKS                       R19 R18 K2 ["universeId"]
      614 GETTABLEKS                       R19 R2 K30 ["headerText"]
      616 SETTABLEKS                       R19 R18 K30 ["headerText"]
      618 GETTABLEKS                       R19 R2 K31 ["footerText"]
      620 SETTABLEKS                       R19 R18 K31 ["footerText"]
      622 LOADK                            R20 K44 [""]
      623 FASTCALL1                        TOSTRING R4 ; [+3]
      624 MOVE                             R24 R4
      625 GETIMPORT                        R23 K4 [tostring]
      627 CALL                             R23 1 1
      628 MOVE                             R21 R23
      629 LOADK                            R22 K71 ["/notifications"]
      630 CONCAT                           R19 R20 R22
      631 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
      633 RETURN                           R18 1
      634 GETTABLEKS                       R18 R2 K17 ["eventType"]
      636 JUMPIFNOTEQKN                    R18 K80 [6] ; [+73]
      638 DUPTABLE                         R18 K82 [{["id"], ["eventType"] = "AvatarSettingsAvatarType", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      639 GETTABLEKS                       R19 R2 K19 ["id"]
      641 SETTABLEKS                       R19 R18 K19 ["id"]
      643 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      645 GETIMPORT                        R21 K35 [pcall]
      647 NEWCLOSURE                       R22 P6
      648 CAPTURE                          VAL R20
      649 CAPTURE                          VAL R3
      650 CALL                             R21 1 2
      651 JUMPIFNOT                        R21 ; [+2]
      652 MOVE                             R19 R22
      653 JUMP                             ; [+1]
      654 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      655 SETTABLEKS                       R19 R18 K23 ["date"]
      657 MOVE                             R19 R12
      658 LOADK                            R20 K83 ["Description.AvatarSettingsAvatarType"]
      659 DUPTABLE                         R21 K85 [{"avatarType"}]
      660 GETTABLEKS                       R24 R2 K42 ["metaData"]
      662 JUMPIFNOT                        R24 ; [+5]
      663 GETTABLEKS                       R24 R2 K42 ["metaData"]
      665 GETTABLEKS                       R23 R24 K86 ["AvatarType"]
      667 JUMPIF                           R23 ; [+1]
      668 LOADK                            R23 K44 [""]
      669 LOADK                            R24 K44 [""]
      670 FASTCALL1                        TOSTRING R23 ; [+3]
      671 MOVE                             R28 R23
      672 GETIMPORT                        R27 K4 [tostring]
      674 CALL                             R27 1 1
      675 MOVE                             R25 R27
      676 LOADK                            R26 K44 [""]
      677 CONCAT                           R22 R24 R26
      678 SETTABLEKS                       R22 R21 K84 ["avatarType"]
      680 CALL                             R19 2 1
      681 SETTABLEKS                       R19 R18 K24 ["translation"]
      683 GETTABLEKS                       R19 R2 K14 ["userId"]
      685 SETTABLEKS                       R19 R18 K25 ["actorId"]
      687 MOVE                             R19 R0
      688 GETTABLEKS                       R20 R2 K14 ["userId"]
      690 CALL                             R19 1 1
      691 SETTABLEKS                       R19 R18 K26 ["actorName"]
      693 GETTABLEKS                       R19 R2 K2 ["universeId"]
      695 SETTABLEKS                       R19 R18 K29 ["iconId"]
      697 GETTABLEKS                       R19 R2 K2 ["universeId"]
      699 SETTABLEKS                       R19 R18 K2 ["universeId"]
      701 GETTABLEKS                       R19 R2 K30 ["headerText"]
      703 SETTABLEKS                       R19 R18 K30 ["headerText"]
      705 GETTABLEKS                       R19 R2 K31 ["footerText"]
      707 SETTABLEKS                       R19 R18 K31 ["footerText"]
      709 RETURN                           R18 1
      710 GETTABLEKS                       R18 R2 K17 ["eventType"]
      712 JUMPIFNOTEQKN                    R18 K87 [7] ; [+73]
      714 DUPTABLE                         R18 K89 [{["id"], ["eventType"] = "AvatarSettingsAnimation", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      715 GETTABLEKS                       R19 R2 K19 ["id"]
      717 SETTABLEKS                       R19 R18 K19 ["id"]
      719 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      721 GETIMPORT                        R21 K35 [pcall]
      723 NEWCLOSURE                       R22 P6
      724 CAPTURE                          VAL R20
      725 CAPTURE                          VAL R3
      726 CALL                             R21 1 2
      727 JUMPIFNOT                        R21 ; [+2]
      728 MOVE                             R19 R22
      729 JUMP                             ; [+1]
      730 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      731 SETTABLEKS                       R19 R18 K23 ["date"]
      733 MOVE                             R19 R12
      734 LOADK                            R20 K90 ["Description.AvatarSettingsAnimation"]
      735 DUPTABLE                         R21 K92 [{"animation"}]
      736 GETTABLEKS                       R24 R2 K42 ["metaData"]
      738 JUMPIFNOT                        R24 ; [+5]
      739 GETTABLEKS                       R24 R2 K42 ["metaData"]
      741 GETTABLEKS                       R23 R24 K93 ["Animation"]
      743 JUMPIF                           R23 ; [+1]
      744 LOADK                            R23 K44 [""]
      745 LOADK                            R24 K44 [""]
      746 FASTCALL1                        TOSTRING R23 ; [+3]
      747 MOVE                             R28 R23
      748 GETIMPORT                        R27 K4 [tostring]
      750 CALL                             R27 1 1
      751 MOVE                             R25 R27
      752 LOADK                            R26 K44 [""]
      753 CONCAT                           R22 R24 R26
      754 SETTABLEKS                       R22 R21 K91 ["animation"]
      756 CALL                             R19 2 1
      757 SETTABLEKS                       R19 R18 K24 ["translation"]
      759 GETTABLEKS                       R19 R2 K14 ["userId"]
      761 SETTABLEKS                       R19 R18 K25 ["actorId"]
      763 MOVE                             R19 R0
      764 GETTABLEKS                       R20 R2 K14 ["userId"]
      766 CALL                             R19 1 1
      767 SETTABLEKS                       R19 R18 K26 ["actorName"]
      769 GETTABLEKS                       R19 R2 K2 ["universeId"]
      771 SETTABLEKS                       R19 R18 K29 ["iconId"]
      773 GETTABLEKS                       R19 R2 K2 ["universeId"]
      775 SETTABLEKS                       R19 R18 K2 ["universeId"]
      777 GETTABLEKS                       R19 R2 K30 ["headerText"]
      779 SETTABLEKS                       R19 R18 K30 ["headerText"]
      781 GETTABLEKS                       R19 R2 K31 ["footerText"]
      783 SETTABLEKS                       R19 R18 K31 ["footerText"]
      785 RETURN                           R18 1
      786 GETTABLEKS                       R18 R2 K17 ["eventType"]
      788 JUMPIFNOTEQKN                    R18 K94 [8] ; [+73]
      790 DUPTABLE                         R18 K96 [{["id"], ["eventType"] = "AvatarSettingsCollision", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      791 GETTABLEKS                       R19 R2 K19 ["id"]
      793 SETTABLEKS                       R19 R18 K19 ["id"]
      795 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      797 GETIMPORT                        R21 K35 [pcall]
      799 NEWCLOSURE                       R22 P6
      800 CAPTURE                          VAL R20
      801 CAPTURE                          VAL R3
      802 CALL                             R21 1 2
      803 JUMPIFNOT                        R21 ; [+2]
      804 MOVE                             R19 R22
      805 JUMP                             ; [+1]
      806 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      807 SETTABLEKS                       R19 R18 K23 ["date"]
      809 MOVE                             R19 R12
      810 LOADK                            R20 K97 ["Description.AvatarSettingsCollision"]
      811 DUPTABLE                         R21 K99 [{"collision"}]
      812 GETTABLEKS                       R24 R2 K42 ["metaData"]
      814 JUMPIFNOT                        R24 ; [+5]
      815 GETTABLEKS                       R24 R2 K42 ["metaData"]
      817 GETTABLEKS                       R23 R24 K100 ["Collision"]
      819 JUMPIF                           R23 ; [+1]
      820 LOADK                            R23 K44 [""]
      821 LOADK                            R24 K44 [""]
      822 FASTCALL1                        TOSTRING R23 ; [+3]
      823 MOVE                             R28 R23
      824 GETIMPORT                        R27 K4 [tostring]
      826 CALL                             R27 1 1
      827 MOVE                             R25 R27
      828 LOADK                            R26 K44 [""]
      829 CONCAT                           R22 R24 R26
      830 SETTABLEKS                       R22 R21 K98 ["collision"]
      832 CALL                             R19 2 1
      833 SETTABLEKS                       R19 R18 K24 ["translation"]
      835 GETTABLEKS                       R19 R2 K14 ["userId"]
      837 SETTABLEKS                       R19 R18 K25 ["actorId"]
      839 MOVE                             R19 R0
      840 GETTABLEKS                       R20 R2 K14 ["userId"]
      842 CALL                             R19 1 1
      843 SETTABLEKS                       R19 R18 K26 ["actorName"]
      845 GETTABLEKS                       R19 R2 K2 ["universeId"]
      847 SETTABLEKS                       R19 R18 K29 ["iconId"]
      849 GETTABLEKS                       R19 R2 K2 ["universeId"]
      851 SETTABLEKS                       R19 R18 K2 ["universeId"]
      853 GETTABLEKS                       R19 R2 K30 ["headerText"]
      855 SETTABLEKS                       R19 R18 K30 ["headerText"]
      857 GETTABLEKS                       R19 R2 K31 ["footerText"]
      859 SETTABLEKS                       R19 R18 K31 ["footerText"]
      861 RETURN                           R18 1
      862 GETTABLEKS                       R18 R2 K17 ["eventType"]
      864 JUMPIFNOTEQKN                    R18 K101 [9] ; [+73]
      866 DUPTABLE                         R18 K103 [{["id"], ["eventType"] = "AvatarSettingsScaleHeight", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      867 GETTABLEKS                       R19 R2 K19 ["id"]
      869 SETTABLEKS                       R19 R18 K19 ["id"]
      871 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      873 GETIMPORT                        R21 K35 [pcall]
      875 NEWCLOSURE                       R22 P6
      876 CAPTURE                          VAL R20
      877 CAPTURE                          VAL R3
      878 CALL                             R21 1 2
      879 JUMPIFNOT                        R21 ; [+2]
      880 MOVE                             R19 R22
      881 JUMP                             ; [+1]
      882 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      883 SETTABLEKS                       R19 R18 K23 ["date"]
      885 MOVE                             R19 R12
      886 LOADK                            R20 K104 ["Description.AvatarSettingsScaleHeight"]
      887 DUPTABLE                         R21 K106 [{"scale"}]
      888 GETTABLEKS                       R24 R2 K42 ["metaData"]
      890 JUMPIFNOT                        R24 ; [+5]
      891 GETTABLEKS                       R24 R2 K42 ["metaData"]
      893 GETTABLEKS                       R23 R24 K107 ["Scale"]
      895 JUMPIF                           R23 ; [+1]
      896 LOADK                            R23 K44 [""]
      897 LOADK                            R24 K44 [""]
      898 FASTCALL1                        TOSTRING R23 ; [+3]
      899 MOVE                             R28 R23
      900 GETIMPORT                        R27 K4 [tostring]
      902 CALL                             R27 1 1
      903 MOVE                             R25 R27
      904 LOADK                            R26 K44 [""]
      905 CONCAT                           R22 R24 R26
      906 SETTABLEKS                       R22 R21 K105 ["scale"]
      908 CALL                             R19 2 1
      909 SETTABLEKS                       R19 R18 K24 ["translation"]
      911 GETTABLEKS                       R19 R2 K14 ["userId"]
      913 SETTABLEKS                       R19 R18 K25 ["actorId"]
      915 MOVE                             R19 R0
      916 GETTABLEKS                       R20 R2 K14 ["userId"]
      918 CALL                             R19 1 1
      919 SETTABLEKS                       R19 R18 K26 ["actorName"]
      921 GETTABLEKS                       R19 R2 K2 ["universeId"]
      923 SETTABLEKS                       R19 R18 K29 ["iconId"]
      925 GETTABLEKS                       R19 R2 K2 ["universeId"]
      927 SETTABLEKS                       R19 R18 K2 ["universeId"]
      929 GETTABLEKS                       R19 R2 K30 ["headerText"]
      931 SETTABLEKS                       R19 R18 K30 ["headerText"]
      933 GETTABLEKS                       R19 R2 K31 ["footerText"]
      935 SETTABLEKS                       R19 R18 K31 ["footerText"]
      937 RETURN                           R18 1
      938 GETTABLEKS                       R18 R2 K17 ["eventType"]
      940 JUMPIFNOTEQKN                    R18 K108 [10] ; [+73]
      942 DUPTABLE                         R18 K110 [{["id"], ["eventType"] = "AvatarSettingsScaleWidth", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
      943 GETTABLEKS                       R19 R2 K19 ["id"]
      945 SETTABLEKS                       R19 R18 K19 ["id"]
      947 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
      949 GETIMPORT                        R21 K35 [pcall]
      951 NEWCLOSURE                       R22 P6
      952 CAPTURE                          VAL R20
      953 CAPTURE                          VAL R3
      954 CALL                             R21 1 2
      955 JUMPIFNOT                        R21 ; [+2]
      956 MOVE                             R19 R22
      957 JUMP                             ; [+1]
      958 LOADK                            R19 K36 ["🤷🏻‍♀️"]
      959 SETTABLEKS                       R19 R18 K23 ["date"]
      961 MOVE                             R19 R12
      962 LOADK                            R20 K111 ["Description.AvatarSettingsScaleWidth"]
      963 DUPTABLE                         R21 K106 [{"scale"}]
      964 GETTABLEKS                       R24 R2 K42 ["metaData"]
      966 JUMPIFNOT                        R24 ; [+5]
      967 GETTABLEKS                       R24 R2 K42 ["metaData"]
      969 GETTABLEKS                       R23 R24 K107 ["Scale"]
      971 JUMPIF                           R23 ; [+1]
      972 LOADK                            R23 K44 [""]
      973 LOADK                            R24 K44 [""]
      974 FASTCALL1                        TOSTRING R23 ; [+3]
      975 MOVE                             R28 R23
      976 GETIMPORT                        R27 K4 [tostring]
      978 CALL                             R27 1 1
      979 MOVE                             R25 R27
      980 LOADK                            R26 K44 [""]
      981 CONCAT                           R22 R24 R26
      982 SETTABLEKS                       R22 R21 K105 ["scale"]
      984 CALL                             R19 2 1
      985 SETTABLEKS                       R19 R18 K24 ["translation"]
      987 GETTABLEKS                       R19 R2 K14 ["userId"]
      989 SETTABLEKS                       R19 R18 K25 ["actorId"]
      991 MOVE                             R19 R0
      992 GETTABLEKS                       R20 R2 K14 ["userId"]
      994 CALL                             R19 1 1
      995 SETTABLEKS                       R19 R18 K26 ["actorName"]
      997 GETTABLEKS                       R19 R2 K2 ["universeId"]
      999 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1001 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1003 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1005 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1007 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1009 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1011 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1013 RETURN                           R18 1
     1014 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1016 JUMPIFNOTEQKN                    R18 K112 [11] ; [+73]
     1018 DUPTABLE                         R18 K114 [{["id"], ["eventType"] = "AvatarSettingsScaleHead", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1019 GETTABLEKS                       R19 R2 K19 ["id"]
     1021 SETTABLEKS                       R19 R18 K19 ["id"]
     1023 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1025 GETIMPORT                        R21 K35 [pcall]
     1027 NEWCLOSURE                       R22 P6
     1028 CAPTURE                          VAL R20
     1029 CAPTURE                          VAL R3
     1030 CALL                             R21 1 2
     1031 JUMPIFNOT                        R21 ; [+2]
     1032 MOVE                             R19 R22
     1033 JUMP                             ; [+1]
     1034 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1035 SETTABLEKS                       R19 R18 K23 ["date"]
     1037 MOVE                             R19 R12
     1038 LOADK                            R20 K115 ["Description.AvatarSettingsScaleHead"]
     1039 DUPTABLE                         R21 K106 [{"scale"}]
     1040 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1042 JUMPIFNOT                        R24 ; [+5]
     1043 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1045 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1047 JUMPIF                           R23 ; [+1]
     1048 LOADK                            R23 K44 [""]
     1049 LOADK                            R24 K44 [""]
     1050 FASTCALL1                        TOSTRING R23 ; [+3]
     1051 MOVE                             R28 R23
     1052 GETIMPORT                        R27 K4 [tostring]
     1054 CALL                             R27 1 1
     1055 MOVE                             R25 R27
     1056 LOADK                            R26 K44 [""]
     1057 CONCAT                           R22 R24 R26
     1058 SETTABLEKS                       R22 R21 K105 ["scale"]
     1060 CALL                             R19 2 1
     1061 SETTABLEKS                       R19 R18 K24 ["translation"]
     1063 GETTABLEKS                       R19 R2 K14 ["userId"]
     1065 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1067 MOVE                             R19 R0
     1068 GETTABLEKS                       R20 R2 K14 ["userId"]
     1070 CALL                             R19 1 1
     1071 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1073 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1075 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1077 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1079 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1081 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1083 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1085 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1087 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1089 RETURN                           R18 1
     1090 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1092 JUMPIFNOTEQKN                    R18 K116 [12] ; [+73]
     1094 DUPTABLE                         R18 K118 [{["id"], ["eventType"] = "AvatarSettingsScaleBodyType", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1095 GETTABLEKS                       R19 R2 K19 ["id"]
     1097 SETTABLEKS                       R19 R18 K19 ["id"]
     1099 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1101 GETIMPORT                        R21 K35 [pcall]
     1103 NEWCLOSURE                       R22 P6
     1104 CAPTURE                          VAL R20
     1105 CAPTURE                          VAL R3
     1106 CALL                             R21 1 2
     1107 JUMPIFNOT                        R21 ; [+2]
     1108 MOVE                             R19 R22
     1109 JUMP                             ; [+1]
     1110 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1111 SETTABLEKS                       R19 R18 K23 ["date"]
     1113 MOVE                             R19 R12
     1114 LOADK                            R20 K119 ["Description.AvatarSettingsScaleBodyType"]
     1115 DUPTABLE                         R21 K106 [{"scale"}]
     1116 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1118 JUMPIFNOT                        R24 ; [+5]
     1119 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1121 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1123 JUMPIF                           R23 ; [+1]
     1124 LOADK                            R23 K44 [""]
     1125 LOADK                            R24 K44 [""]
     1126 FASTCALL1                        TOSTRING R23 ; [+3]
     1127 MOVE                             R28 R23
     1128 GETIMPORT                        R27 K4 [tostring]
     1130 CALL                             R27 1 1
     1131 MOVE                             R25 R27
     1132 LOADK                            R26 K44 [""]
     1133 CONCAT                           R22 R24 R26
     1134 SETTABLEKS                       R22 R21 K105 ["scale"]
     1136 CALL                             R19 2 1
     1137 SETTABLEKS                       R19 R18 K24 ["translation"]
     1139 GETTABLEKS                       R19 R2 K14 ["userId"]
     1141 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1143 MOVE                             R19 R0
     1144 GETTABLEKS                       R20 R2 K14 ["userId"]
     1146 CALL                             R19 1 1
     1147 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1149 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1151 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1153 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1155 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1157 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1159 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1161 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1163 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1165 RETURN                           R18 1
     1166 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1168 JUMPIFNOTEQKN                    R18 K120 [13] ; [+73]
     1170 DUPTABLE                         R18 K122 [{["id"], ["eventType"] = "AvatarSettingsScaleProportions", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1171 GETTABLEKS                       R19 R2 K19 ["id"]
     1173 SETTABLEKS                       R19 R18 K19 ["id"]
     1175 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1177 GETIMPORT                        R21 K35 [pcall]
     1179 NEWCLOSURE                       R22 P6
     1180 CAPTURE                          VAL R20
     1181 CAPTURE                          VAL R3
     1182 CALL                             R21 1 2
     1183 JUMPIFNOT                        R21 ; [+2]
     1184 MOVE                             R19 R22
     1185 JUMP                             ; [+1]
     1186 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1187 SETTABLEKS                       R19 R18 K23 ["date"]
     1189 MOVE                             R19 R12
     1190 LOADK                            R20 K123 ["Description.AvatarSettingsScaleProportions"]
     1191 DUPTABLE                         R21 K106 [{"scale"}]
     1192 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1194 JUMPIFNOT                        R24 ; [+5]
     1195 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1197 GETTABLEKS                       R23 R24 K107 ["Scale"]
     1199 JUMPIF                           R23 ; [+1]
     1200 LOADK                            R23 K44 [""]
     1201 LOADK                            R24 K44 [""]
     1202 FASTCALL1                        TOSTRING R23 ; [+3]
     1203 MOVE                             R28 R23
     1204 GETIMPORT                        R27 K4 [tostring]
     1206 CALL                             R27 1 1
     1207 MOVE                             R25 R27
     1208 LOADK                            R26 K44 [""]
     1209 CONCAT                           R22 R24 R26
     1210 SETTABLEKS                       R22 R21 K105 ["scale"]
     1212 CALL                             R19 2 1
     1213 SETTABLEKS                       R19 R18 K24 ["translation"]
     1215 GETTABLEKS                       R19 R2 K14 ["userId"]
     1217 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1219 MOVE                             R19 R0
     1220 GETTABLEKS                       R20 R2 K14 ["userId"]
     1222 CALL                             R19 1 1
     1223 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1225 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1227 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1229 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1231 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1233 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1235 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1237 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1239 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1241 RETURN                           R18 1
     1242 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1244 JUMPIFNOTEQKN                    R18 K124 [14] ; [+52]
     1246 DUPTABLE                         R18 K126 [{["id"], ["eventType"] = "AvatarSettingsBodyParts", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1247 GETTABLEKS                       R19 R2 K19 ["id"]
     1249 SETTABLEKS                       R19 R18 K19 ["id"]
     1251 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1253 GETIMPORT                        R21 K35 [pcall]
     1255 NEWCLOSURE                       R22 P6
     1256 CAPTURE                          VAL R20
     1257 CAPTURE                          VAL R3
     1258 CALL                             R21 1 2
     1259 JUMPIFNOT                        R21 ; [+2]
     1260 MOVE                             R19 R22
     1261 JUMP                             ; [+1]
     1262 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1263 SETTABLEKS                       R19 R18 K23 ["date"]
     1265 MOVE                             R19 R12
     1266 LOADK                            R20 K127 ["Description.AvatarSettingsBodyParts"]
     1267 CALL                             R19 1 1
     1268 SETTABLEKS                       R19 R18 K24 ["translation"]
     1270 GETTABLEKS                       R19 R2 K14 ["userId"]
     1272 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1274 MOVE                             R19 R0
     1275 GETTABLEKS                       R20 R2 K14 ["userId"]
     1277 CALL                             R19 1 1
     1278 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1280 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1282 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1284 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1286 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1288 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1290 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1292 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1294 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1296 RETURN                           R18 1
     1297 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1299 JUMPIFNOTEQKN                    R18 K128 [15] ; [+52]
     1301 DUPTABLE                         R18 K130 [{["id"], ["eventType"] = "AvatarSettingsClothing", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1302 GETTABLEKS                       R19 R2 K19 ["id"]
     1304 SETTABLEKS                       R19 R18 K19 ["id"]
     1306 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1308 GETIMPORT                        R21 K35 [pcall]
     1310 NEWCLOSURE                       R22 P6
     1311 CAPTURE                          VAL R20
     1312 CAPTURE                          VAL R3
     1313 CALL                             R21 1 2
     1314 JUMPIFNOT                        R21 ; [+2]
     1315 MOVE                             R19 R22
     1316 JUMP                             ; [+1]
     1317 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1318 SETTABLEKS                       R19 R18 K23 ["date"]
     1320 MOVE                             R19 R12
     1321 LOADK                            R20 K131 ["Description.AvatarSettingsClothing"]
     1322 CALL                             R19 1 1
     1323 SETTABLEKS                       R19 R18 K24 ["translation"]
     1325 GETTABLEKS                       R19 R2 K14 ["userId"]
     1327 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1329 MOVE                             R19 R0
     1330 GETTABLEKS                       R20 R2 K14 ["userId"]
     1332 CALL                             R19 1 1
     1333 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1335 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1337 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1339 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1341 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1343 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1345 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1347 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1349 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1351 RETURN                           R18 1
     1352 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1354 JUMPIFNOTEQKN                    R18 K132 [16] ; [+104]
     1356 DUPTABLE                         R18 K134 [{["id"], ["eventType"] = "ExperienceName", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1357 GETTABLEKS                       R19 R2 K19 ["id"]
     1359 SETTABLEKS                       R19 R18 K19 ["id"]
     1361 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1363 GETIMPORT                        R21 K35 [pcall]
     1365 NEWCLOSURE                       R22 P6
     1366 CAPTURE                          VAL R20
     1367 CAPTURE                          VAL R3
     1368 CALL                             R21 1 2
     1369 JUMPIFNOT                        R21 ; [+2]
     1370 MOVE                             R19 R22
     1371 JUMP                             ; [+1]
     1372 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1373 SETTABLEKS                       R19 R18 K23 ["date"]
     1375 MOVE                             R19 R12
     1376 LOADK                            R20 K135 ["Description.ExperienceName"]
     1377 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     1378 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1380 JUMPIFNOT                        R24 ; [+5]
     1381 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1383 GETTABLEKS                       R23 R24 K139 ["NewName"]
     1385 JUMPIF                           R23 ; [+1]
     1386 LOADK                            R23 K44 [""]
     1387 LOADK                            R24 K44 [""]
     1388 FASTCALL1                        TOSTRING R23 ; [+3]
     1389 MOVE                             R28 R23
     1390 GETIMPORT                        R27 K4 [tostring]
     1392 CALL                             R27 1 1
     1393 MOVE                             R25 R27
     1394 LOADK                            R26 K44 [""]
     1395 CONCAT                           R22 R24 R26
     1396 SETTABLEKS                       R22 R21 K136 ["newName"]
     1398 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1400 JUMPIFNOT                        R24 ; [+5]
     1401 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1403 GETTABLEKS                       R23 R24 K140 ["OldName"]
     1405 JUMPIF                           R23 ; [+1]
     1406 LOADK                            R23 K44 [""]
     1407 LOADK                            R24 K44 [""]
     1408 FASTCALL1                        TOSTRING R23 ; [+3]
     1409 MOVE                             R28 R23
     1410 GETIMPORT                        R27 K4 [tostring]
     1412 CALL                             R27 1 1
     1413 MOVE                             R25 R27
     1414 LOADK                            R26 K44 [""]
     1415 CONCAT                           R22 R24 R26
     1416 SETTABLEKS                       R22 R21 K137 ["oldName"]
     1418 CALL                             R19 2 1
     1419 SETTABLEKS                       R19 R18 K24 ["translation"]
     1421 GETTABLEKS                       R19 R2 K14 ["userId"]
     1423 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1425 MOVE                             R19 R0
     1426 GETTABLEKS                       R20 R2 K14 ["userId"]
     1428 CALL                             R19 1 1
     1429 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1431 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1433 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1435 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1437 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1439 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1441 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1443 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1445 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1447 LOADK                            R20 K44 [""]
     1448 FASTCALL1                        TOSTRING R4 ; [+3]
     1449 MOVE                             R24 R4
     1450 GETIMPORT                        R23 K4 [tostring]
     1452 CALL                             R23 1 1
     1453 MOVE                             R21 R23
     1454 LOADK                            R22 K11 ["/configure"]
     1455 CONCAT                           R19 R20 R22
     1456 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1458 RETURN                           R18 1
     1459 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1461 JUMPIFNOTEQKN                    R18 K141 [17] ; [+63]
     1463 DUPTABLE                         R18 K143 [{["id"], ["eventType"] = "ExperienceDescription", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1464 GETTABLEKS                       R19 R2 K19 ["id"]
     1466 SETTABLEKS                       R19 R18 K19 ["id"]
     1468 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1470 GETIMPORT                        R21 K35 [pcall]
     1472 NEWCLOSURE                       R22 P6
     1473 CAPTURE                          VAL R20
     1474 CAPTURE                          VAL R3
     1475 CALL                             R21 1 2
     1476 JUMPIFNOT                        R21 ; [+2]
     1477 MOVE                             R19 R22
     1478 JUMP                             ; [+1]
     1479 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1480 SETTABLEKS                       R19 R18 K23 ["date"]
     1482 MOVE                             R19 R12
     1483 LOADK                            R20 K144 ["Description.ExperienceDescription"]
     1484 CALL                             R19 1 1
     1485 SETTABLEKS                       R19 R18 K24 ["translation"]
     1487 GETTABLEKS                       R19 R2 K14 ["userId"]
     1489 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1491 MOVE                             R19 R0
     1492 GETTABLEKS                       R20 R2 K14 ["userId"]
     1494 CALL                             R19 1 1
     1495 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1497 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1499 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1501 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1503 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1505 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1507 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1509 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1511 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1513 LOADK                            R20 K44 [""]
     1514 FASTCALL1                        TOSTRING R4 ; [+3]
     1515 MOVE                             R24 R4
     1516 GETIMPORT                        R23 K4 [tostring]
     1518 CALL                             R23 1 1
     1519 MOVE                             R21 R23
     1520 LOADK                            R22 K11 ["/configure"]
     1521 CONCAT                           R19 R20 R22
     1522 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1524 RETURN                           R18 1
     1525 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1527 JUMPIFNOTEQKN                    R18 K145 [18] ; [+84]
     1529 DUPTABLE                         R18 K147 [{["id"], ["eventType"] = "ExperienceGenre", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1530 GETTABLEKS                       R19 R2 K19 ["id"]
     1532 SETTABLEKS                       R19 R18 K19 ["id"]
     1534 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1536 GETIMPORT                        R21 K35 [pcall]
     1538 NEWCLOSURE                       R22 P6
     1539 CAPTURE                          VAL R20
     1540 CAPTURE                          VAL R3
     1541 CALL                             R21 1 2
     1542 JUMPIFNOT                        R21 ; [+2]
     1543 MOVE                             R19 R22
     1544 JUMP                             ; [+1]
     1545 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1546 SETTABLEKS                       R19 R18 K23 ["date"]
     1548 MOVE                             R19 R12
     1549 LOADK                            R20 K148 ["Description.ExperienceGenre"]
     1550 DUPTABLE                         R21 K150 [{"genre"}]
     1551 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1553 JUMPIFNOT                        R24 ; [+5]
     1554 GETTABLEKS                       R24 R2 K42 ["metaData"]
     1556 GETTABLEKS                       R23 R24 K151 ["Genre"]
     1558 JUMPIF                           R23 ; [+1]
     1559 LOADK                            R23 K44 [""]
     1560 LOADK                            R24 K44 [""]
     1561 FASTCALL1                        TOSTRING R23 ; [+3]
     1562 MOVE                             R28 R23
     1563 GETIMPORT                        R27 K4 [tostring]
     1565 CALL                             R27 1 1
     1566 MOVE                             R25 R27
     1567 LOADK                            R26 K44 [""]
     1568 CONCAT                           R22 R24 R26
     1569 SETTABLEKS                       R22 R21 K149 ["genre"]
     1571 CALL                             R19 2 1
     1572 SETTABLEKS                       R19 R18 K24 ["translation"]
     1574 GETTABLEKS                       R19 R2 K14 ["userId"]
     1576 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1578 MOVE                             R19 R0
     1579 GETTABLEKS                       R20 R2 K14 ["userId"]
     1581 CALL                             R19 1 1
     1582 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1584 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1586 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1588 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1590 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1592 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1594 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1596 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1598 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1600 LOADK                            R20 K44 [""]
     1601 FASTCALL1                        TOSTRING R4 ; [+3]
     1602 MOVE                             R24 R4
     1603 GETIMPORT                        R23 K4 [tostring]
     1605 CALL                             R23 1 1
     1606 MOVE                             R21 R23
     1607 LOADK                            R22 K11 ["/configure"]
     1608 CONCAT                           R19 R20 R22
     1609 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1611 RETURN                           R18 1
     1612 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1614 JUMPIFNOTEQKN                    R18 K152 [19] ; [+94]
     1616 DUPTABLE                         R18 K154 [{["id"], ["eventType"] = "SecuritySettingsHTTPRequests", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1617 GETTABLEKS                       R19 R2 K19 ["id"]
     1619 SETTABLEKS                       R19 R18 K19 ["id"]
     1621 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1623 GETIMPORT                        R21 K35 [pcall]
     1625 NEWCLOSURE                       R22 P6
     1626 CAPTURE                          VAL R20
     1627 CAPTURE                          VAL R3
     1628 CALL                             R21 1 2
     1629 JUMPIFNOT                        R21 ; [+2]
     1630 MOVE                             R19 R22
     1631 JUMP                             ; [+1]
     1632 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1633 SETTABLEKS                       R19 R18 K23 ["date"]
     1635 MOVE                             R19 R12
     1636 LOADK                            R20 K155 ["Description.SecuritySettingsHTTPRequests"]
     1637 DUPTABLE                         R21 K157 [{"action"}]
     1638 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1640 JUMPIFNOT                        R26 ; [+5]
     1641 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1643 GETTABLEKS                       R25 R26 K43 ["Action"]
     1645 JUMPIF                           R25 ; [+1]
     1646 LOADK                            R25 K44 [""]
     1647 GETIMPORT                        R26 K47 [string.lower]
     1649 FASTCALL1                        TOSTRING R25 ; [+3]
     1650 MOVE                             R28 R25
     1651 GETIMPORT                        R27 K4 [tostring]
     1653 CALL                             R27 1 1
     1654 CALL                             R26 1 1
     1655 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1657 LOADB                            R24 1
     1658 JUMP                             ; [+1]
     1659 LOADB                            R24 0
     1660 JUMPIFNOT                        R24 ; [+4]
     1661 MOVE                             R23 R12
     1662 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1663 CALL                             R23 1 1
     1664 JUMPIF                           R23 ; [+3]
     1665 MOVE                             R23 R12
     1666 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1667 CALL                             R23 1 1
     1668 LOADK                            R24 K44 [""]
     1669 FASTCALL1                        TOSTRING R23 ; [+3]
     1670 MOVE                             R28 R23
     1671 GETIMPORT                        R27 K4 [tostring]
     1673 CALL                             R27 1 1
     1674 MOVE                             R25 R27
     1675 LOADK                            R26 K44 [""]
     1676 CONCAT                           R22 R24 R26
     1677 SETTABLEKS                       R22 R21 K156 ["action"]
     1679 CALL                             R19 2 1
     1680 SETTABLEKS                       R19 R18 K24 ["translation"]
     1682 GETTABLEKS                       R19 R2 K14 ["userId"]
     1684 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1686 MOVE                             R19 R0
     1687 GETTABLEKS                       R20 R2 K14 ["userId"]
     1689 CALL                             R19 1 1
     1690 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1692 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1694 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1696 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1698 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1700 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1702 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1704 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1706 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1708 RETURN                           R18 1
     1709 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1711 JUMPIFNOTEQKN                    R18 K160 [20] ; [+105]
     1713 DUPTABLE                         R18 K162 [{["id"], ["eventType"] = "SecuritySettingsStudioAccessToAPI", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     1714 GETTABLEKS                       R19 R2 K19 ["id"]
     1716 SETTABLEKS                       R19 R18 K19 ["id"]
     1718 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1720 GETIMPORT                        R21 K35 [pcall]
     1722 NEWCLOSURE                       R22 P6
     1723 CAPTURE                          VAL R20
     1724 CAPTURE                          VAL R3
     1725 CALL                             R21 1 2
     1726 JUMPIFNOT                        R21 ; [+2]
     1727 MOVE                             R19 R22
     1728 JUMP                             ; [+1]
     1729 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1730 SETTABLEKS                       R19 R18 K23 ["date"]
     1732 MOVE                             R19 R12
     1733 LOADK                            R20 K163 ["Description.SecuritySettingsStudioAccessToAPI"]
     1734 DUPTABLE                         R21 K157 [{"action"}]
     1735 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1737 JUMPIFNOT                        R26 ; [+5]
     1738 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1740 GETTABLEKS                       R25 R26 K43 ["Action"]
     1742 JUMPIF                           R25 ; [+1]
     1743 LOADK                            R25 K44 [""]
     1744 GETIMPORT                        R26 K47 [string.lower]
     1746 FASTCALL1                        TOSTRING R25 ; [+3]
     1747 MOVE                             R28 R25
     1748 GETIMPORT                        R27 K4 [tostring]
     1750 CALL                             R27 1 1
     1751 CALL                             R26 1 1
     1752 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1754 LOADB                            R24 1
     1755 JUMP                             ; [+1]
     1756 LOADB                            R24 0
     1757 JUMPIFNOT                        R24 ; [+4]
     1758 MOVE                             R23 R12
     1759 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1760 CALL                             R23 1 1
     1761 JUMPIF                           R23 ; [+3]
     1762 MOVE                             R23 R12
     1763 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1764 CALL                             R23 1 1
     1765 LOADK                            R24 K44 [""]
     1766 FASTCALL1                        TOSTRING R23 ; [+3]
     1767 MOVE                             R28 R23
     1768 GETIMPORT                        R27 K4 [tostring]
     1770 CALL                             R27 1 1
     1771 MOVE                             R25 R27
     1772 LOADK                            R26 K44 [""]
     1773 CONCAT                           R22 R24 R26
     1774 SETTABLEKS                       R22 R21 K156 ["action"]
     1776 CALL                             R19 2 1
     1777 SETTABLEKS                       R19 R18 K24 ["translation"]
     1779 GETTABLEKS                       R19 R2 K14 ["userId"]
     1781 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1783 MOVE                             R19 R0
     1784 GETTABLEKS                       R20 R2 K14 ["userId"]
     1786 CALL                             R19 1 1
     1787 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1789 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1791 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1793 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1795 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1797 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1799 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1801 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1803 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1805 LOADK                            R20 K44 [""]
     1806 FASTCALL1                        TOSTRING R4 ; [+3]
     1807 MOVE                             R24 R4
     1808 GETIMPORT                        R23 K4 [tostring]
     1810 CALL                             R23 1 1
     1811 MOVE                             R21 R23
     1812 LOADK                            R22 K11 ["/configure"]
     1813 CONCAT                           R19 R20 R22
     1814 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     1816 RETURN                           R18 1
     1817 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1819 JUMPIFNOTEQKN                    R18 K164 [21] ; [+94]
     1821 DUPTABLE                         R18 K166 [{["id"], ["eventType"] = "SecuritySettingsThirdPartySales", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1822 GETTABLEKS                       R19 R2 K19 ["id"]
     1824 SETTABLEKS                       R19 R18 K19 ["id"]
     1826 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1828 GETIMPORT                        R21 K35 [pcall]
     1830 NEWCLOSURE                       R22 P6
     1831 CAPTURE                          VAL R20
     1832 CAPTURE                          VAL R3
     1833 CALL                             R21 1 2
     1834 JUMPIFNOT                        R21 ; [+2]
     1835 MOVE                             R19 R22
     1836 JUMP                             ; [+1]
     1837 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1838 SETTABLEKS                       R19 R18 K23 ["date"]
     1840 MOVE                             R19 R12
     1841 LOADK                            R20 K167 ["Description.SecuritySettingsThirdPartySales"]
     1842 DUPTABLE                         R21 K157 [{"action"}]
     1843 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1845 JUMPIFNOT                        R26 ; [+5]
     1846 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1848 GETTABLEKS                       R25 R26 K43 ["Action"]
     1850 JUMPIF                           R25 ; [+1]
     1851 LOADK                            R25 K44 [""]
     1852 GETIMPORT                        R26 K47 [string.lower]
     1854 FASTCALL1                        TOSTRING R25 ; [+3]
     1855 MOVE                             R28 R25
     1856 GETIMPORT                        R27 K4 [tostring]
     1858 CALL                             R27 1 1
     1859 CALL                             R26 1 1
     1860 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1862 LOADB                            R24 1
     1863 JUMP                             ; [+1]
     1864 LOADB                            R24 0
     1865 JUMPIFNOT                        R24 ; [+4]
     1866 MOVE                             R23 R12
     1867 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1868 CALL                             R23 1 1
     1869 JUMPIF                           R23 ; [+3]
     1870 MOVE                             R23 R12
     1871 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1872 CALL                             R23 1 1
     1873 LOADK                            R24 K44 [""]
     1874 FASTCALL1                        TOSTRING R23 ; [+3]
     1875 MOVE                             R28 R23
     1876 GETIMPORT                        R27 K4 [tostring]
     1878 CALL                             R27 1 1
     1879 MOVE                             R25 R27
     1880 LOADK                            R26 K44 [""]
     1881 CONCAT                           R22 R24 R26
     1882 SETTABLEKS                       R22 R21 K156 ["action"]
     1884 CALL                             R19 2 1
     1885 SETTABLEKS                       R19 R18 K24 ["translation"]
     1887 GETTABLEKS                       R19 R2 K14 ["userId"]
     1889 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1891 MOVE                             R19 R0
     1892 GETTABLEKS                       R20 R2 K14 ["userId"]
     1894 CALL                             R19 1 1
     1895 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1897 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1899 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1901 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1903 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1905 GETTABLEKS                       R19 R2 K30 ["headerText"]
     1907 SETTABLEKS                       R19 R18 K30 ["headerText"]
     1909 GETTABLEKS                       R19 R2 K31 ["footerText"]
     1911 SETTABLEKS                       R19 R18 K31 ["footerText"]
     1913 RETURN                           R18 1
     1914 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1916 JUMPIFNOTEQKN                    R18 K168 [22] ; [+94]
     1918 DUPTABLE                         R18 K170 [{["id"], ["eventType"] = "SecuritySettingsThirdPartyTeleports", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     1919 GETTABLEKS                       R19 R2 K19 ["id"]
     1921 SETTABLEKS                       R19 R18 K19 ["id"]
     1923 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     1925 GETIMPORT                        R21 K35 [pcall]
     1927 NEWCLOSURE                       R22 P6
     1928 CAPTURE                          VAL R20
     1929 CAPTURE                          VAL R3
     1930 CALL                             R21 1 2
     1931 JUMPIFNOT                        R21 ; [+2]
     1932 MOVE                             R19 R22
     1933 JUMP                             ; [+1]
     1934 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     1935 SETTABLEKS                       R19 R18 K23 ["date"]
     1937 MOVE                             R19 R12
     1938 LOADK                            R20 K171 ["Description.SecuritySettingsThirdPartyTeleports"]
     1939 DUPTABLE                         R21 K157 [{"action"}]
     1940 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1942 JUMPIFNOT                        R26 ; [+5]
     1943 GETTABLEKS                       R26 R2 K42 ["metaData"]
     1945 GETTABLEKS                       R25 R26 K43 ["Action"]
     1947 JUMPIF                           R25 ; [+1]
     1948 LOADK                            R25 K44 [""]
     1949 GETIMPORT                        R26 K47 [string.lower]
     1951 FASTCALL1                        TOSTRING R25 ; [+3]
     1952 MOVE                             R28 R25
     1953 GETIMPORT                        R27 K4 [tostring]
     1955 CALL                             R27 1 1
     1956 CALL                             R26 1 1
     1957 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     1959 LOADB                            R24 1
     1960 JUMP                             ; [+1]
     1961 LOADB                            R24 0
     1962 JUMPIFNOT                        R24 ; [+4]
     1963 MOVE                             R23 R12
     1964 LOADK                            R24 K158 ["Description.ActionEnabled"]
     1965 CALL                             R23 1 1
     1966 JUMPIF                           R23 ; [+3]
     1967 MOVE                             R23 R12
     1968 LOADK                            R24 K159 ["Description.ActionDisabled"]
     1969 CALL                             R23 1 1
     1970 LOADK                            R24 K44 [""]
     1971 FASTCALL1                        TOSTRING R23 ; [+3]
     1972 MOVE                             R28 R23
     1973 GETIMPORT                        R27 K4 [tostring]
     1975 CALL                             R27 1 1
     1976 MOVE                             R25 R27
     1977 LOADK                            R26 K44 [""]
     1978 CONCAT                           R22 R24 R26
     1979 SETTABLEKS                       R22 R21 K156 ["action"]
     1981 CALL                             R19 2 1
     1982 SETTABLEKS                       R19 R18 K24 ["translation"]
     1984 GETTABLEKS                       R19 R2 K14 ["userId"]
     1986 SETTABLEKS                       R19 R18 K25 ["actorId"]
     1988 MOVE                             R19 R0
     1989 GETTABLEKS                       R20 R2 K14 ["userId"]
     1991 CALL                             R19 1 1
     1992 SETTABLEKS                       R19 R18 K26 ["actorName"]
     1994 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1996 SETTABLEKS                       R19 R18 K29 ["iconId"]
     1998 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2000 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2002 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2004 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2006 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2008 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2010 RETURN                           R18 1
     2011 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2013 JUMPIFNOTEQKN                    R18 K172 [23] ; [+52]
     2015 DUPTABLE                         R18 K174 [{["id"], ["eventType"] = "ExperienceShutDown", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2016 GETTABLEKS                       R19 R2 K19 ["id"]
     2018 SETTABLEKS                       R19 R18 K19 ["id"]
     2020 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2022 GETIMPORT                        R21 K35 [pcall]
     2024 NEWCLOSURE                       R22 P6
     2025 CAPTURE                          VAL R20
     2026 CAPTURE                          VAL R3
     2027 CALL                             R21 1 2
     2028 JUMPIFNOT                        R21 ; [+2]
     2029 MOVE                             R19 R22
     2030 JUMP                             ; [+1]
     2031 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2032 SETTABLEKS                       R19 R18 K23 ["date"]
     2034 MOVE                             R19 R12
     2035 LOADK                            R20 K175 ["Description.ExperienceShutDown"]
     2036 CALL                             R19 1 1
     2037 SETTABLEKS                       R19 R18 K24 ["translation"]
     2039 GETTABLEKS                       R19 R2 K14 ["userId"]
     2041 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2043 MOVE                             R19 R0
     2044 GETTABLEKS                       R20 R2 K14 ["userId"]
     2046 CALL                             R19 1 1
     2047 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2049 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2051 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2053 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2055 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2057 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2059 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2061 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2063 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2065 RETURN                           R18 1
     2066 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2068 JUMPIFNOTEQKN                    R18 K176 [24] ; [+84]
     2070 DUPTABLE                         R18 K178 [{["id"], ["eventType"] = "SocialLinksAdded", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2071 GETTABLEKS                       R19 R2 K19 ["id"]
     2073 SETTABLEKS                       R19 R18 K19 ["id"]
     2075 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2077 GETIMPORT                        R21 K35 [pcall]
     2079 NEWCLOSURE                       R22 P6
     2080 CAPTURE                          VAL R20
     2081 CAPTURE                          VAL R3
     2082 CALL                             R21 1 2
     2083 JUMPIFNOT                        R21 ; [+2]
     2084 MOVE                             R19 R22
     2085 JUMP                             ; [+1]
     2086 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2087 SETTABLEKS                       R19 R18 K23 ["date"]
     2089 MOVE                             R19 R12
     2090 LOADK                            R20 K179 ["Description.SocialLinksAdded"]
     2091 DUPTABLE                         R21 K181 [{"channel"}]
     2092 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2094 JUMPIFNOT                        R24 ; [+5]
     2095 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2097 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2099 JUMPIF                           R23 ; [+1]
     2100 LOADK                            R23 K44 [""]
     2101 LOADK                            R24 K44 [""]
     2102 FASTCALL1                        TOSTRING R23 ; [+3]
     2103 MOVE                             R28 R23
     2104 GETIMPORT                        R27 K4 [tostring]
     2106 CALL                             R27 1 1
     2107 MOVE                             R25 R27
     2108 LOADK                            R26 K44 [""]
     2109 CONCAT                           R22 R24 R26
     2110 SETTABLEKS                       R22 R21 K180 ["channel"]
     2112 CALL                             R19 2 1
     2113 SETTABLEKS                       R19 R18 K24 ["translation"]
     2115 GETTABLEKS                       R19 R2 K14 ["userId"]
     2117 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2119 MOVE                             R19 R0
     2120 GETTABLEKS                       R20 R2 K14 ["userId"]
     2122 CALL                             R19 1 1
     2123 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2125 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2127 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2129 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2131 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2133 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2135 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2137 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2139 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2141 LOADK                            R20 K44 [""]
     2142 FASTCALL1                        TOSTRING R4 ; [+3]
     2143 MOVE                             R24 R4
     2144 GETIMPORT                        R23 K4 [tostring]
     2146 CALL                             R23 1 1
     2147 MOVE                             R21 R23
     2148 LOADK                            R22 K183 ["/social-links"]
     2149 CONCAT                           R19 R20 R22
     2150 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2152 RETURN                           R18 1
     2153 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2155 JUMPIFNOTEQKN                    R18 K184 [25] ; [+84]
     2157 DUPTABLE                         R18 K186 [{["id"], ["eventType"] = "SocialLinksRemoved", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2158 GETTABLEKS                       R19 R2 K19 ["id"]
     2160 SETTABLEKS                       R19 R18 K19 ["id"]
     2162 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2164 GETIMPORT                        R21 K35 [pcall]
     2166 NEWCLOSURE                       R22 P6
     2167 CAPTURE                          VAL R20
     2168 CAPTURE                          VAL R3
     2169 CALL                             R21 1 2
     2170 JUMPIFNOT                        R21 ; [+2]
     2171 MOVE                             R19 R22
     2172 JUMP                             ; [+1]
     2173 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2174 SETTABLEKS                       R19 R18 K23 ["date"]
     2176 MOVE                             R19 R12
     2177 LOADK                            R20 K187 ["Description.SocialLinksRemoved"]
     2178 DUPTABLE                         R21 K181 [{"channel"}]
     2179 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2181 JUMPIFNOT                        R24 ; [+5]
     2182 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2184 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2186 JUMPIF                           R23 ; [+1]
     2187 LOADK                            R23 K44 [""]
     2188 LOADK                            R24 K44 [""]
     2189 FASTCALL1                        TOSTRING R23 ; [+3]
     2190 MOVE                             R28 R23
     2191 GETIMPORT                        R27 K4 [tostring]
     2193 CALL                             R27 1 1
     2194 MOVE                             R25 R27
     2195 LOADK                            R26 K44 [""]
     2196 CONCAT                           R22 R24 R26
     2197 SETTABLEKS                       R22 R21 K180 ["channel"]
     2199 CALL                             R19 2 1
     2200 SETTABLEKS                       R19 R18 K24 ["translation"]
     2202 GETTABLEKS                       R19 R2 K14 ["userId"]
     2204 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2206 MOVE                             R19 R0
     2207 GETTABLEKS                       R20 R2 K14 ["userId"]
     2209 CALL                             R19 1 1
     2210 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2212 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2214 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2216 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2218 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2220 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2222 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2224 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2226 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2228 LOADK                            R20 K44 [""]
     2229 FASTCALL1                        TOSTRING R4 ; [+3]
     2230 MOVE                             R24 R4
     2231 GETIMPORT                        R23 K4 [tostring]
     2233 CALL                             R23 1 1
     2234 MOVE                             R21 R23
     2235 LOADK                            R22 K183 ["/social-links"]
     2236 CONCAT                           R19 R20 R22
     2237 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2239 RETURN                           R18 1
     2240 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2242 JUMPIFNOTEQKN                    R18 K188 [26] ; [+84]
     2244 DUPTABLE                         R18 K190 [{["id"], ["eventType"] = "SocialLinksUpdated", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2245 GETTABLEKS                       R19 R2 K19 ["id"]
     2247 SETTABLEKS                       R19 R18 K19 ["id"]
     2249 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2251 GETIMPORT                        R21 K35 [pcall]
     2253 NEWCLOSURE                       R22 P6
     2254 CAPTURE                          VAL R20
     2255 CAPTURE                          VAL R3
     2256 CALL                             R21 1 2
     2257 JUMPIFNOT                        R21 ; [+2]
     2258 MOVE                             R19 R22
     2259 JUMP                             ; [+1]
     2260 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2261 SETTABLEKS                       R19 R18 K23 ["date"]
     2263 MOVE                             R19 R12
     2264 LOADK                            R20 K191 ["Description.SocialLinksUpdated"]
     2265 DUPTABLE                         R21 K181 [{"channel"}]
     2266 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2268 JUMPIFNOT                        R24 ; [+5]
     2269 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2271 GETTABLEKS                       R23 R24 K182 ["Channel"]
     2273 JUMPIF                           R23 ; [+1]
     2274 LOADK                            R23 K44 [""]
     2275 LOADK                            R24 K44 [""]
     2276 FASTCALL1                        TOSTRING R23 ; [+3]
     2277 MOVE                             R28 R23
     2278 GETIMPORT                        R27 K4 [tostring]
     2280 CALL                             R27 1 1
     2281 MOVE                             R25 R27
     2282 LOADK                            R26 K44 [""]
     2283 CONCAT                           R22 R24 R26
     2284 SETTABLEKS                       R22 R21 K180 ["channel"]
     2286 CALL                             R19 2 1
     2287 SETTABLEKS                       R19 R18 K24 ["translation"]
     2289 GETTABLEKS                       R19 R2 K14 ["userId"]
     2291 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2293 MOVE                             R19 R0
     2294 GETTABLEKS                       R20 R2 K14 ["userId"]
     2296 CALL                             R19 1 1
     2297 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2299 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2301 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2303 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2305 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2307 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2309 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2311 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2313 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2315 LOADK                            R20 K44 [""]
     2316 FASTCALL1                        TOSTRING R4 ; [+3]
     2317 MOVE                             R24 R4
     2318 GETIMPORT                        R23 K4 [tostring]
     2320 CALL                             R23 1 1
     2321 MOVE                             R21 R23
     2322 LOADK                            R22 K183 ["/social-links"]
     2323 CONCAT                           R19 R20 R22
     2324 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2326 RETURN                           R18 1
     2327 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2329 JUMPIFNOTEQKN                    R18 K192 [27] ; [+94]
     2331 DUPTABLE                         R18 K194 [{["id"], ["eventType"] = "SpatialVoice", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2332 GETTABLEKS                       R19 R2 K19 ["id"]
     2334 SETTABLEKS                       R19 R18 K19 ["id"]
     2336 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2338 GETIMPORT                        R21 K35 [pcall]
     2340 NEWCLOSURE                       R22 P6
     2341 CAPTURE                          VAL R20
     2342 CAPTURE                          VAL R3
     2343 CALL                             R21 1 2
     2344 JUMPIFNOT                        R21 ; [+2]
     2345 MOVE                             R19 R22
     2346 JUMP                             ; [+1]
     2347 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2348 SETTABLEKS                       R19 R18 K23 ["date"]
     2350 MOVE                             R19 R12
     2351 LOADK                            R20 K195 ["Description.SpatialVoice"]
     2352 DUPTABLE                         R21 K157 [{"action"}]
     2353 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2355 JUMPIFNOT                        R26 ; [+5]
     2356 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2358 GETTABLEKS                       R25 R26 K43 ["Action"]
     2360 JUMPIF                           R25 ; [+1]
     2361 LOADK                            R25 K44 [""]
     2362 GETIMPORT                        R26 K47 [string.lower]
     2364 FASTCALL1                        TOSTRING R25 ; [+3]
     2365 MOVE                             R28 R25
     2366 GETIMPORT                        R27 K4 [tostring]
     2368 CALL                             R27 1 1
     2369 CALL                             R26 1 1
     2370 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     2372 LOADB                            R24 1
     2373 JUMP                             ; [+1]
     2374 LOADB                            R24 0
     2375 JUMPIFNOT                        R24 ; [+4]
     2376 MOVE                             R23 R12
     2377 LOADK                            R24 K158 ["Description.ActionEnabled"]
     2378 CALL                             R23 1 1
     2379 JUMPIF                           R23 ; [+3]
     2380 MOVE                             R23 R12
     2381 LOADK                            R24 K159 ["Description.ActionDisabled"]
     2382 CALL                             R23 1 1
     2383 LOADK                            R24 K44 [""]
     2384 FASTCALL1                        TOSTRING R23 ; [+3]
     2385 MOVE                             R28 R23
     2386 GETIMPORT                        R27 K4 [tostring]
     2388 CALL                             R27 1 1
     2389 MOVE                             R25 R27
     2390 LOADK                            R26 K44 [""]
     2391 CONCAT                           R22 R24 R26
     2392 SETTABLEKS                       R22 R21 K156 ["action"]
     2394 CALL                             R19 2 1
     2395 SETTABLEKS                       R19 R18 K24 ["translation"]
     2397 GETTABLEKS                       R19 R2 K14 ["userId"]
     2399 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2401 MOVE                             R19 R0
     2402 GETTABLEKS                       R20 R2 K14 ["userId"]
     2404 CALL                             R19 1 1
     2405 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2407 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2409 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2411 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2413 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2415 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2417 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2419 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2421 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2423 RETURN                           R18 1
     2424 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2426 JUMPIFNOTEQKN                    R18 K196 [28] ; [+73]
     2428 DUPTABLE                         R18 K198 [{["id"], ["eventType"] = "WorldSettingsWorkSpaceGravity", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2429 GETTABLEKS                       R19 R2 K19 ["id"]
     2431 SETTABLEKS                       R19 R18 K19 ["id"]
     2433 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2435 GETIMPORT                        R21 K35 [pcall]
     2437 NEWCLOSURE                       R22 P6
     2438 CAPTURE                          VAL R20
     2439 CAPTURE                          VAL R3
     2440 CALL                             R21 1 2
     2441 JUMPIFNOT                        R21 ; [+2]
     2442 MOVE                             R19 R22
     2443 JUMP                             ; [+1]
     2444 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2445 SETTABLEKS                       R19 R18 K23 ["date"]
     2447 MOVE                             R19 R12
     2448 LOADK                            R20 K199 ["Description.WorldSettingsWorkSpaceGravity"]
     2449 DUPTABLE                         R21 K201 [{"gravity"}]
     2450 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2452 JUMPIFNOT                        R24 ; [+5]
     2453 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2455 GETTABLEKS                       R23 R24 K202 ["Gravity"]
     2457 JUMPIF                           R23 ; [+1]
     2458 LOADK                            R23 K44 [""]
     2459 LOADK                            R24 K44 [""]
     2460 FASTCALL1                        TOSTRING R23 ; [+3]
     2461 MOVE                             R28 R23
     2462 GETIMPORT                        R27 K4 [tostring]
     2464 CALL                             R27 1 1
     2465 MOVE                             R25 R27
     2466 LOADK                            R26 K44 [""]
     2467 CONCAT                           R22 R24 R26
     2468 SETTABLEKS                       R22 R21 K200 ["gravity"]
     2470 CALL                             R19 2 1
     2471 SETTABLEKS                       R19 R18 K24 ["translation"]
     2473 GETTABLEKS                       R19 R2 K14 ["userId"]
     2475 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2477 MOVE                             R19 R0
     2478 GETTABLEKS                       R20 R2 K14 ["userId"]
     2480 CALL                             R19 1 1
     2481 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2483 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2485 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2487 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2489 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2491 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2493 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2495 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2497 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2499 RETURN                           R18 1
     2500 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2502 JUMPIFNOTEQKN                    R18 K203 [29] ; [+73]
     2504 DUPTABLE                         R18 K205 [{["id"], ["eventType"] = "WorldSettingsJumpHeight", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2505 GETTABLEKS                       R19 R2 K19 ["id"]
     2507 SETTABLEKS                       R19 R18 K19 ["id"]
     2509 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2511 GETIMPORT                        R21 K35 [pcall]
     2513 NEWCLOSURE                       R22 P6
     2514 CAPTURE                          VAL R20
     2515 CAPTURE                          VAL R3
     2516 CALL                             R21 1 2
     2517 JUMPIFNOT                        R21 ; [+2]
     2518 MOVE                             R19 R22
     2519 JUMP                             ; [+1]
     2520 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2521 SETTABLEKS                       R19 R18 K23 ["date"]
     2523 MOVE                             R19 R12
     2524 LOADK                            R20 K206 ["Description.WorldSettingsJumpHeight"]
     2525 DUPTABLE                         R21 K208 [{"jumpHeight"}]
     2526 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2528 JUMPIFNOT                        R24 ; [+5]
     2529 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2531 GETTABLEKS                       R23 R24 K209 ["JumpHeight"]
     2533 JUMPIF                           R23 ; [+1]
     2534 LOADK                            R23 K44 [""]
     2535 LOADK                            R24 K44 [""]
     2536 FASTCALL1                        TOSTRING R23 ; [+3]
     2537 MOVE                             R28 R23
     2538 GETIMPORT                        R27 K4 [tostring]
     2540 CALL                             R27 1 1
     2541 MOVE                             R25 R27
     2542 LOADK                            R26 K44 [""]
     2543 CONCAT                           R22 R24 R26
     2544 SETTABLEKS                       R22 R21 K207 ["jumpHeight"]
     2546 CALL                             R19 2 1
     2547 SETTABLEKS                       R19 R18 K24 ["translation"]
     2549 GETTABLEKS                       R19 R2 K14 ["userId"]
     2551 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2553 MOVE                             R19 R0
     2554 GETTABLEKS                       R20 R2 K14 ["userId"]
     2556 CALL                             R19 1 1
     2557 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2559 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2561 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2563 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2565 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2567 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2569 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2571 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2573 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2575 RETURN                           R18 1
     2576 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2578 JUMPIFNOTEQKN                    R18 K210 [30] ; [+73]
     2580 DUPTABLE                         R18 K212 [{["id"], ["eventType"] = "WorldSettingsJumpPower", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2581 GETTABLEKS                       R19 R2 K19 ["id"]
     2583 SETTABLEKS                       R19 R18 K19 ["id"]
     2585 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2587 GETIMPORT                        R21 K35 [pcall]
     2589 NEWCLOSURE                       R22 P6
     2590 CAPTURE                          VAL R20
     2591 CAPTURE                          VAL R3
     2592 CALL                             R21 1 2
     2593 JUMPIFNOT                        R21 ; [+2]
     2594 MOVE                             R19 R22
     2595 JUMP                             ; [+1]
     2596 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2597 SETTABLEKS                       R19 R18 K23 ["date"]
     2599 MOVE                             R19 R12
     2600 LOADK                            R20 K213 ["Description.WorldSettingsJumpPower"]
     2601 DUPTABLE                         R21 K215 [{"jumpPower"}]
     2602 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2604 JUMPIFNOT                        R24 ; [+5]
     2605 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2607 GETTABLEKS                       R23 R24 K216 ["JumpPower"]
     2609 JUMPIF                           R23 ; [+1]
     2610 LOADK                            R23 K44 [""]
     2611 LOADK                            R24 K44 [""]
     2612 FASTCALL1                        TOSTRING R23 ; [+3]
     2613 MOVE                             R28 R23
     2614 GETIMPORT                        R27 K4 [tostring]
     2616 CALL                             R27 1 1
     2617 MOVE                             R25 R27
     2618 LOADK                            R26 K44 [""]
     2619 CONCAT                           R22 R24 R26
     2620 SETTABLEKS                       R22 R21 K214 ["jumpPower"]
     2622 CALL                             R19 2 1
     2623 SETTABLEKS                       R19 R18 K24 ["translation"]
     2625 GETTABLEKS                       R19 R2 K14 ["userId"]
     2627 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2629 MOVE                             R19 R0
     2630 GETTABLEKS                       R20 R2 K14 ["userId"]
     2632 CALL                             R19 1 1
     2633 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2635 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2637 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2639 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2641 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2643 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2645 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2647 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2649 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2651 RETURN                           R18 1
     2652 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2654 JUMPIFNOTEQKN                    R18 K217 [31] ; [+73]
     2656 DUPTABLE                         R18 K219 [{["id"], ["eventType"] = "WorldSettingsWalkSpeed", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2657 GETTABLEKS                       R19 R2 K19 ["id"]
     2659 SETTABLEKS                       R19 R18 K19 ["id"]
     2661 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2663 GETIMPORT                        R21 K35 [pcall]
     2665 NEWCLOSURE                       R22 P6
     2666 CAPTURE                          VAL R20
     2667 CAPTURE                          VAL R3
     2668 CALL                             R21 1 2
     2669 JUMPIFNOT                        R21 ; [+2]
     2670 MOVE                             R19 R22
     2671 JUMP                             ; [+1]
     2672 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2673 SETTABLEKS                       R19 R18 K23 ["date"]
     2675 MOVE                             R19 R12
     2676 LOADK                            R20 K220 ["Description.WorldSettingsWalkSpeed"]
     2677 DUPTABLE                         R21 K222 [{"walkSpeed"}]
     2678 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2680 JUMPIFNOT                        R24 ; [+5]
     2681 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2683 GETTABLEKS                       R23 R24 K223 ["WalkSpeed"]
     2685 JUMPIF                           R23 ; [+1]
     2686 LOADK                            R23 K44 [""]
     2687 LOADK                            R24 K44 [""]
     2688 FASTCALL1                        TOSTRING R23 ; [+3]
     2689 MOVE                             R28 R23
     2690 GETIMPORT                        R27 K4 [tostring]
     2692 CALL                             R27 1 1
     2693 MOVE                             R25 R27
     2694 LOADK                            R26 K44 [""]
     2695 CONCAT                           R22 R24 R26
     2696 SETTABLEKS                       R22 R21 K221 ["walkSpeed"]
     2698 CALL                             R19 2 1
     2699 SETTABLEKS                       R19 R18 K24 ["translation"]
     2701 GETTABLEKS                       R19 R2 K14 ["userId"]
     2703 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2705 MOVE                             R19 R0
     2706 GETTABLEKS                       R20 R2 K14 ["userId"]
     2708 CALL                             R19 1 1
     2709 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2711 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2713 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2715 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2717 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2719 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2721 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2723 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2725 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2727 RETURN                           R18 1
     2728 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2730 JUMPIFNOTEQKN                    R18 K224 [32] ; [+73]
     2732 DUPTABLE                         R18 K226 [{["id"], ["eventType"] = "WorldSettingsMaxSlopeAngle", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     2733 GETTABLEKS                       R19 R2 K19 ["id"]
     2735 SETTABLEKS                       R19 R18 K19 ["id"]
     2737 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2739 GETIMPORT                        R21 K35 [pcall]
     2741 NEWCLOSURE                       R22 P6
     2742 CAPTURE                          VAL R20
     2743 CAPTURE                          VAL R3
     2744 CALL                             R21 1 2
     2745 JUMPIFNOT                        R21 ; [+2]
     2746 MOVE                             R19 R22
     2747 JUMP                             ; [+1]
     2748 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2749 SETTABLEKS                       R19 R18 K23 ["date"]
     2751 MOVE                             R19 R12
     2752 LOADK                            R20 K227 ["Description.WorldSettingsMaxSlopeAngle"]
     2753 DUPTABLE                         R21 K229 [{"maxSlopeAngle"}]
     2754 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2756 JUMPIFNOT                        R24 ; [+5]
     2757 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2759 GETTABLEKS                       R23 R24 K230 ["MaxSlopeAngle"]
     2761 JUMPIF                           R23 ; [+1]
     2762 LOADK                            R23 K44 [""]
     2763 LOADK                            R24 K44 [""]
     2764 FASTCALL1                        TOSTRING R23 ; [+3]
     2765 MOVE                             R28 R23
     2766 GETIMPORT                        R27 K4 [tostring]
     2768 CALL                             R27 1 1
     2769 MOVE                             R25 R27
     2770 LOADK                            R26 K44 [""]
     2771 CONCAT                           R22 R24 R26
     2772 SETTABLEKS                       R22 R21 K228 ["maxSlopeAngle"]
     2774 CALL                             R19 2 1
     2775 SETTABLEKS                       R19 R18 K24 ["translation"]
     2777 GETTABLEKS                       R19 R2 K14 ["userId"]
     2779 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2781 MOVE                             R19 R0
     2782 GETTABLEKS                       R20 R2 K14 ["userId"]
     2784 CALL                             R19 1 1
     2785 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2787 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2789 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2791 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2793 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2795 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2797 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2799 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2801 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2803 RETURN                           R18 1
     2804 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2806 JUMPIFNOTEQKN                    R18 K231 [33] ; [+84]
     2808 DUPTABLE                         R18 K233 [{["id"], ["eventType"] = "SentUpdate", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2809 GETTABLEKS                       R19 R2 K19 ["id"]
     2811 SETTABLEKS                       R19 R18 K19 ["id"]
     2813 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2815 GETIMPORT                        R21 K35 [pcall]
     2817 NEWCLOSURE                       R22 P6
     2818 CAPTURE                          VAL R20
     2819 CAPTURE                          VAL R3
     2820 CALL                             R21 1 2
     2821 JUMPIFNOT                        R21 ; [+2]
     2822 MOVE                             R19 R22
     2823 JUMP                             ; [+1]
     2824 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2825 SETTABLEKS                       R19 R18 K23 ["date"]
     2827 MOVE                             R19 R12
     2828 LOADK                            R20 K234 ["Description.SentUpdate"]
     2829 DUPTABLE                         R21 K236 [{"update"}]
     2830 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2832 JUMPIFNOT                        R24 ; [+5]
     2833 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2835 GETTABLEKS                       R23 R24 K237 ["Update"]
     2837 JUMPIF                           R23 ; [+1]
     2838 LOADK                            R23 K44 [""]
     2839 LOADK                            R24 K44 [""]
     2840 FASTCALL1                        TOSTRING R23 ; [+3]
     2841 MOVE                             R28 R23
     2842 GETIMPORT                        R27 K4 [tostring]
     2844 CALL                             R27 1 1
     2845 MOVE                             R25 R27
     2846 LOADK                            R26 K44 [""]
     2847 CONCAT                           R22 R24 R26
     2848 SETTABLEKS                       R22 R21 K235 ["update"]
     2850 CALL                             R19 2 1
     2851 SETTABLEKS                       R19 R18 K24 ["translation"]
     2853 GETTABLEKS                       R19 R2 K14 ["userId"]
     2855 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2857 MOVE                             R19 R0
     2858 GETTABLEKS                       R20 R2 K14 ["userId"]
     2860 CALL                             R19 1 1
     2861 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2863 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2865 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2867 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2869 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2871 GETTABLEKS                       R19 R2 K30 ["headerText"]
     2873 SETTABLEKS                       R19 R18 K30 ["headerText"]
     2875 GETTABLEKS                       R19 R2 K31 ["footerText"]
     2877 SETTABLEKS                       R19 R18 K31 ["footerText"]
     2879 LOADK                            R20 K44 [""]
     2880 FASTCALL1                        TOSTRING R4 ; [+3]
     2881 MOVE                             R24 R4
     2882 GETIMPORT                        R23 K4 [tostring]
     2884 CALL                             R23 1 1
     2885 MOVE                             R21 R23
     2886 LOADK                            R22 K238 ["/updates"]
     2887 CONCAT                           R19 R20 R22
     2888 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     2890 RETURN                           R18 1
     2891 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2893 JUMPIFNOTEQKN                    R18 K239 [34] ; [+125]
     2895 DUPTABLE                         R18 K241 [{["id"], ["eventType"] = "SupportedLanguages", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     2896 GETTABLEKS                       R19 R2 K19 ["id"]
     2898 SETTABLEKS                       R19 R18 K19 ["id"]
     2900 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     2902 GETIMPORT                        R21 K35 [pcall]
     2904 NEWCLOSURE                       R22 P6
     2905 CAPTURE                          VAL R20
     2906 CAPTURE                          VAL R3
     2907 CALL                             R21 1 2
     2908 JUMPIFNOT                        R21 ; [+2]
     2909 MOVE                             R19 R22
     2910 JUMP                             ; [+1]
     2911 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     2912 SETTABLEKS                       R19 R18 K23 ["date"]
     2914 MOVE                             R19 R12
     2915 LOADK                            R20 K242 ["Description.SupportedLanguages"]
     2916 DUPTABLE                         R21 K244 [{"language", "action"}]
     2917 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2919 JUMPIFNOT                        R24 ; [+5]
     2920 GETTABLEKS                       R24 R2 K42 ["metaData"]
     2922 GETTABLEKS                       R23 R24 K245 ["Language"]
     2924 JUMPIF                           R23 ; [+1]
     2925 LOADK                            R23 K44 [""]
     2926 LOADK                            R24 K44 [""]
     2927 FASTCALL1                        TOSTRING R23 ; [+3]
     2928 MOVE                             R28 R23
     2929 GETIMPORT                        R27 K4 [tostring]
     2931 CALL                             R27 1 1
     2932 MOVE                             R25 R27
     2933 LOADK                            R26 K44 [""]
     2934 CONCAT                           R22 R24 R26
     2935 SETTABLEKS                       R22 R21 K243 ["language"]
     2937 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2939 JUMPIFNOT                        R26 ; [+5]
     2940 GETTABLEKS                       R26 R2 K42 ["metaData"]
     2942 GETTABLEKS                       R25 R26 K43 ["Action"]
     2944 JUMPIF                           R25 ; [+1]
     2945 LOADK                            R25 K44 [""]
     2946 GETIMPORT                        R26 K47 [string.lower]
     2948 FASTCALL1                        TOSTRING R25 ; [+3]
     2949 MOVE                             R28 R25
     2950 GETIMPORT                        R27 K4 [tostring]
     2952 CALL                             R27 1 1
     2953 CALL                             R26 1 1
     2954 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     2956 LOADB                            R24 1
     2957 JUMP                             ; [+1]
     2958 LOADB                            R24 0
     2959 JUMPIFNOT                        R24 ; [+4]
     2960 MOVE                             R23 R12
     2961 LOADK                            R24 K246 ["Description.ActionAdded"]
     2962 CALL                             R23 1 1
     2963 JUMPIF                           R23 ; [+3]
     2964 MOVE                             R23 R12
     2965 LOADK                            R24 K247 ["Description.ActionRemoved"]
     2966 CALL                             R23 1 1
     2967 LOADK                            R24 K44 [""]
     2968 FASTCALL1                        TOSTRING R23 ; [+3]
     2969 MOVE                             R28 R23
     2970 GETIMPORT                        R27 K4 [tostring]
     2972 CALL                             R27 1 1
     2973 MOVE                             R25 R27
     2974 LOADK                            R26 K44 [""]
     2975 CONCAT                           R22 R24 R26
     2976 SETTABLEKS                       R22 R21 K156 ["action"]
     2978 CALL                             R19 2 1
     2979 SETTABLEKS                       R19 R18 K24 ["translation"]
     2981 GETTABLEKS                       R19 R2 K14 ["userId"]
     2983 SETTABLEKS                       R19 R18 K25 ["actorId"]
     2985 MOVE                             R19 R0
     2986 GETTABLEKS                       R20 R2 K14 ["userId"]
     2988 CALL                             R19 1 1
     2989 SETTABLEKS                       R19 R18 K26 ["actorName"]
     2991 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2993 SETTABLEKS                       R19 R18 K29 ["iconId"]
     2995 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2997 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2999 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3001 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3003 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3005 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3007 LOADK                            R20 K44 [""]
     3008 FASTCALL1                        TOSTRING R4 ; [+3]
     3009 MOVE                             R24 R4
     3010 GETIMPORT                        R23 K4 [tostring]
     3012 CALL                             R23 1 1
     3013 MOVE                             R21 R23
     3014 LOADK                            R22 K248 ["/localization"]
     3015 CONCAT                           R19 R20 R22
     3016 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3018 RETURN                           R18 1
     3019 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3021 JUMPIFNOTEQKN                    R18 K249 [35] ; [+125]
     3023 DUPTABLE                         R18 K251 [{["id"], ["eventType"] = "AutoTranslationExperienceInformation", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3024 GETTABLEKS                       R19 R2 K19 ["id"]
     3026 SETTABLEKS                       R19 R18 K19 ["id"]
     3028 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3030 GETIMPORT                        R21 K35 [pcall]
     3032 NEWCLOSURE                       R22 P6
     3033 CAPTURE                          VAL R20
     3034 CAPTURE                          VAL R3
     3035 CALL                             R21 1 2
     3036 JUMPIFNOT                        R21 ; [+2]
     3037 MOVE                             R19 R22
     3038 JUMP                             ; [+1]
     3039 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3040 SETTABLEKS                       R19 R18 K23 ["date"]
     3042 MOVE                             R19 R12
     3043 LOADK                            R20 K252 ["Description.AutoTranslationExperienceInformation"]
     3044 DUPTABLE                         R21 K244 [{"language", "action"}]
     3045 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3047 JUMPIFNOT                        R24 ; [+5]
     3048 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3050 GETTABLEKS                       R23 R24 K245 ["Language"]
     3052 JUMPIF                           R23 ; [+1]
     3053 LOADK                            R23 K44 [""]
     3054 LOADK                            R24 K44 [""]
     3055 FASTCALL1                        TOSTRING R23 ; [+3]
     3056 MOVE                             R28 R23
     3057 GETIMPORT                        R27 K4 [tostring]
     3059 CALL                             R27 1 1
     3060 MOVE                             R25 R27
     3061 LOADK                            R26 K44 [""]
     3062 CONCAT                           R22 R24 R26
     3063 SETTABLEKS                       R22 R21 K243 ["language"]
     3065 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3067 JUMPIFNOT                        R26 ; [+5]
     3068 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3070 GETTABLEKS                       R25 R26 K43 ["Action"]
     3072 JUMPIF                           R25 ; [+1]
     3073 LOADK                            R25 K44 [""]
     3074 GETIMPORT                        R26 K47 [string.lower]
     3076 FASTCALL1                        TOSTRING R25 ; [+3]
     3077 MOVE                             R28 R25
     3078 GETIMPORT                        R27 K4 [tostring]
     3080 CALL                             R27 1 1
     3081 CALL                             R26 1 1
     3082 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3084 LOADB                            R24 1
     3085 JUMP                             ; [+1]
     3086 LOADB                            R24 0
     3087 JUMPIFNOT                        R24 ; [+4]
     3088 MOVE                             R23 R12
     3089 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3090 CALL                             R23 1 1
     3091 JUMPIF                           R23 ; [+3]
     3092 MOVE                             R23 R12
     3093 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3094 CALL                             R23 1 1
     3095 LOADK                            R24 K44 [""]
     3096 FASTCALL1                        TOSTRING R23 ; [+3]
     3097 MOVE                             R28 R23
     3098 GETIMPORT                        R27 K4 [tostring]
     3100 CALL                             R27 1 1
     3101 MOVE                             R25 R27
     3102 LOADK                            R26 K44 [""]
     3103 CONCAT                           R22 R24 R26
     3104 SETTABLEKS                       R22 R21 K156 ["action"]
     3106 CALL                             R19 2 1
     3107 SETTABLEKS                       R19 R18 K24 ["translation"]
     3109 GETTABLEKS                       R19 R2 K14 ["userId"]
     3111 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3113 MOVE                             R19 R0
     3114 GETTABLEKS                       R20 R2 K14 ["userId"]
     3116 CALL                             R19 1 1
     3117 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3119 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3121 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3123 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3125 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3127 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3129 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3131 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3133 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3135 LOADK                            R20 K44 [""]
     3136 FASTCALL1                        TOSTRING R4 ; [+3]
     3137 MOVE                             R24 R4
     3138 GETIMPORT                        R23 K4 [tostring]
     3140 CALL                             R23 1 1
     3141 MOVE                             R21 R23
     3142 LOADK                            R22 K248 ["/localization"]
     3143 CONCAT                           R19 R20 R22
     3144 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3146 RETURN                           R18 1
     3147 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3149 JUMPIFNOTEQKN                    R18 K253 [36] ; [+125]
     3151 DUPTABLE                         R18 K255 [{["id"], ["eventType"] = "AutoTranslationExperienceStringsAndProducts", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3152 GETTABLEKS                       R19 R2 K19 ["id"]
     3154 SETTABLEKS                       R19 R18 K19 ["id"]
     3156 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3158 GETIMPORT                        R21 K35 [pcall]
     3160 NEWCLOSURE                       R22 P6
     3161 CAPTURE                          VAL R20
     3162 CAPTURE                          VAL R3
     3163 CALL                             R21 1 2
     3164 JUMPIFNOT                        R21 ; [+2]
     3165 MOVE                             R19 R22
     3166 JUMP                             ; [+1]
     3167 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3168 SETTABLEKS                       R19 R18 K23 ["date"]
     3170 MOVE                             R19 R12
     3171 LOADK                            R20 K256 ["Description.AutoTranslationExperienceStringsAndProducts"]
     3172 DUPTABLE                         R21 K244 [{"language", "action"}]
     3173 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3175 JUMPIFNOT                        R24 ; [+5]
     3176 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3178 GETTABLEKS                       R23 R24 K245 ["Language"]
     3180 JUMPIF                           R23 ; [+1]
     3181 LOADK                            R23 K44 [""]
     3182 LOADK                            R24 K44 [""]
     3183 FASTCALL1                        TOSTRING R23 ; [+3]
     3184 MOVE                             R28 R23
     3185 GETIMPORT                        R27 K4 [tostring]
     3187 CALL                             R27 1 1
     3188 MOVE                             R25 R27
     3189 LOADK                            R26 K44 [""]
     3190 CONCAT                           R22 R24 R26
     3191 SETTABLEKS                       R22 R21 K243 ["language"]
     3193 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3195 JUMPIFNOT                        R26 ; [+5]
     3196 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3198 GETTABLEKS                       R25 R26 K43 ["Action"]
     3200 JUMPIF                           R25 ; [+1]
     3201 LOADK                            R25 K44 [""]
     3202 GETIMPORT                        R26 K47 [string.lower]
     3204 FASTCALL1                        TOSTRING R25 ; [+3]
     3205 MOVE                             R28 R25
     3206 GETIMPORT                        R27 K4 [tostring]
     3208 CALL                             R27 1 1
     3209 CALL                             R26 1 1
     3210 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3212 LOADB                            R24 1
     3213 JUMP                             ; [+1]
     3214 LOADB                            R24 0
     3215 JUMPIFNOT                        R24 ; [+4]
     3216 MOVE                             R23 R12
     3217 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3218 CALL                             R23 1 1
     3219 JUMPIF                           R23 ; [+3]
     3220 MOVE                             R23 R12
     3221 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3222 CALL                             R23 1 1
     3223 LOADK                            R24 K44 [""]
     3224 FASTCALL1                        TOSTRING R23 ; [+3]
     3225 MOVE                             R28 R23
     3226 GETIMPORT                        R27 K4 [tostring]
     3228 CALL                             R27 1 1
     3229 MOVE                             R25 R27
     3230 LOADK                            R26 K44 [""]
     3231 CONCAT                           R22 R24 R26
     3232 SETTABLEKS                       R22 R21 K156 ["action"]
     3234 CALL                             R19 2 1
     3235 SETTABLEKS                       R19 R18 K24 ["translation"]
     3237 GETTABLEKS                       R19 R2 K14 ["userId"]
     3239 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3241 MOVE                             R19 R0
     3242 GETTABLEKS                       R20 R2 K14 ["userId"]
     3244 CALL                             R19 1 1
     3245 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3247 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3249 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3251 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3253 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3255 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3257 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3259 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3261 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3263 LOADK                            R20 K44 [""]
     3264 FASTCALL1                        TOSTRING R4 ; [+3]
     3265 MOVE                             R24 R4
     3266 GETIMPORT                        R23 K4 [tostring]
     3268 CALL                             R23 1 1
     3269 MOVE                             R21 R23
     3270 LOADK                            R22 K248 ["/localization"]
     3271 CONCAT                           R19 R20 R22
     3272 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3274 RETURN                           R18 1
     3275 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3277 JUMPIFNOTEQKN                    R18 K257 [37] ; [+105]
     3279 DUPTABLE                         R18 K259 [{["id"], ["eventType"] = "LocalizationSettingsAutomaticTextCapture", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3280 GETTABLEKS                       R19 R2 K19 ["id"]
     3282 SETTABLEKS                       R19 R18 K19 ["id"]
     3284 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3286 GETIMPORT                        R21 K35 [pcall]
     3288 NEWCLOSURE                       R22 P6
     3289 CAPTURE                          VAL R20
     3290 CAPTURE                          VAL R3
     3291 CALL                             R21 1 2
     3292 JUMPIFNOT                        R21 ; [+2]
     3293 MOVE                             R19 R22
     3294 JUMP                             ; [+1]
     3295 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3296 SETTABLEKS                       R19 R18 K23 ["date"]
     3298 MOVE                             R19 R12
     3299 LOADK                            R20 K260 ["Description.LocalizationSettingsAutomaticTextCapture"]
     3300 DUPTABLE                         R21 K157 [{"action"}]
     3301 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3303 JUMPIFNOT                        R26 ; [+5]
     3304 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3306 GETTABLEKS                       R25 R26 K43 ["Action"]
     3308 JUMPIF                           R25 ; [+1]
     3309 LOADK                            R25 K44 [""]
     3310 GETIMPORT                        R26 K47 [string.lower]
     3312 FASTCALL1                        TOSTRING R25 ; [+3]
     3313 MOVE                             R28 R25
     3314 GETIMPORT                        R27 K4 [tostring]
     3316 CALL                             R27 1 1
     3317 CALL                             R26 1 1
     3318 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3320 LOADB                            R24 1
     3321 JUMP                             ; [+1]
     3322 LOADB                            R24 0
     3323 JUMPIFNOT                        R24 ; [+4]
     3324 MOVE                             R23 R12
     3325 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3326 CALL                             R23 1 1
     3327 JUMPIF                           R23 ; [+3]
     3328 MOVE                             R23 R12
     3329 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3330 CALL                             R23 1 1
     3331 LOADK                            R24 K44 [""]
     3332 FASTCALL1                        TOSTRING R23 ; [+3]
     3333 MOVE                             R28 R23
     3334 GETIMPORT                        R27 K4 [tostring]
     3336 CALL                             R27 1 1
     3337 MOVE                             R25 R27
     3338 LOADK                            R26 K44 [""]
     3339 CONCAT                           R22 R24 R26
     3340 SETTABLEKS                       R22 R21 K156 ["action"]
     3342 CALL                             R19 2 1
     3343 SETTABLEKS                       R19 R18 K24 ["translation"]
     3345 GETTABLEKS                       R19 R2 K14 ["userId"]
     3347 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3349 MOVE                             R19 R0
     3350 GETTABLEKS                       R20 R2 K14 ["userId"]
     3352 CALL                             R19 1 1
     3353 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3355 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3357 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3359 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3361 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3363 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3365 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3367 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3369 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3371 LOADK                            R20 K44 [""]
     3372 FASTCALL1                        TOSTRING R4 ; [+3]
     3373 MOVE                             R24 R4
     3374 GETIMPORT                        R23 K4 [tostring]
     3376 CALL                             R23 1 1
     3377 MOVE                             R21 R23
     3378 LOADK                            R22 K248 ["/localization"]
     3379 CONCAT                           R19 R20 R22
     3380 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3382 RETURN                           R18 1
     3383 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3385 JUMPIFNOTEQKN                    R18 K261 [38] ; [+105]
     3387 DUPTABLE                         R18 K263 [{["id"], ["eventType"] = "LocalizationSettingsUserTranslatedContent", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3388 GETTABLEKS                       R19 R2 K19 ["id"]
     3390 SETTABLEKS                       R19 R18 K19 ["id"]
     3392 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3394 GETIMPORT                        R21 K35 [pcall]
     3396 NEWCLOSURE                       R22 P6
     3397 CAPTURE                          VAL R20
     3398 CAPTURE                          VAL R3
     3399 CALL                             R21 1 2
     3400 JUMPIFNOT                        R21 ; [+2]
     3401 MOVE                             R19 R22
     3402 JUMP                             ; [+1]
     3403 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3404 SETTABLEKS                       R19 R18 K23 ["date"]
     3406 MOVE                             R19 R12
     3407 LOADK                            R20 K264 ["Description.LocalizationSettingsUserTranslatedContent"]
     3408 DUPTABLE                         R21 K157 [{"action"}]
     3409 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3411 JUMPIFNOT                        R26 ; [+5]
     3412 GETTABLEKS                       R26 R2 K42 ["metaData"]
     3414 GETTABLEKS                       R25 R26 K43 ["Action"]
     3416 JUMPIF                           R25 ; [+1]
     3417 LOADK                            R25 K44 [""]
     3418 GETIMPORT                        R26 K47 [string.lower]
     3420 FASTCALL1                        TOSTRING R25 ; [+3]
     3421 MOVE                             R28 R25
     3422 GETIMPORT                        R27 K4 [tostring]
     3424 CALL                             R27 1 1
     3425 CALL                             R26 1 1
     3426 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     3428 LOADB                            R24 1
     3429 JUMP                             ; [+1]
     3430 LOADB                            R24 0
     3431 JUMPIFNOT                        R24 ; [+4]
     3432 MOVE                             R23 R12
     3433 LOADK                            R24 K158 ["Description.ActionEnabled"]
     3434 CALL                             R23 1 1
     3435 JUMPIF                           R23 ; [+3]
     3436 MOVE                             R23 R12
     3437 LOADK                            R24 K159 ["Description.ActionDisabled"]
     3438 CALL                             R23 1 1
     3439 LOADK                            R24 K44 [""]
     3440 FASTCALL1                        TOSTRING R23 ; [+3]
     3441 MOVE                             R28 R23
     3442 GETIMPORT                        R27 K4 [tostring]
     3444 CALL                             R27 1 1
     3445 MOVE                             R25 R27
     3446 LOADK                            R26 K44 [""]
     3447 CONCAT                           R22 R24 R26
     3448 SETTABLEKS                       R22 R21 K156 ["action"]
     3450 CALL                             R19 2 1
     3451 SETTABLEKS                       R19 R18 K24 ["translation"]
     3453 GETTABLEKS                       R19 R2 K14 ["userId"]
     3455 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3457 MOVE                             R19 R0
     3458 GETTABLEKS                       R20 R2 K14 ["userId"]
     3460 CALL                             R19 1 1
     3461 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3463 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3465 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3467 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3469 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3471 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3473 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3475 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3477 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3479 LOADK                            R20 K44 [""]
     3480 FASTCALL1                        TOSTRING R4 ; [+3]
     3481 MOVE                             R24 R4
     3482 GETIMPORT                        R23 K4 [tostring]
     3484 CALL                             R23 1 1
     3485 MOVE                             R21 R23
     3486 LOADK                            R22 K248 ["/localization"]
     3487 CONCAT                           R19 R20 R22
     3488 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3490 RETURN                           R18 1
     3491 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3493 JUMPIFNOTEQKN                    R18 K265 [39] ; [+47]
     3495 DUPTABLE                         R18 K267 [{["id"], ["eventType"] = "ClearUnmodifiedAutoCaptureEntries", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     3496 GETTABLEKS                       R19 R2 K19 ["id"]
     3498 SETTABLEKS                       R19 R18 K19 ["id"]
     3500 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3502 GETIMPORT                        R21 K35 [pcall]
     3504 NEWCLOSURE                       R22 P6
     3505 CAPTURE                          VAL R20
     3506 CAPTURE                          VAL R3
     3507 CALL                             R21 1 2
     3508 JUMPIFNOT                        R21 ; [+2]
     3509 MOVE                             R19 R22
     3510 JUMP                             ; [+1]
     3511 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3512 SETTABLEKS                       R19 R18 K23 ["date"]
     3514 GETTABLEKS                       R19 R2 K14 ["userId"]
     3516 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3518 MOVE                             R19 R0
     3519 GETTABLEKS                       R20 R2 K14 ["userId"]
     3521 CALL                             R19 1 1
     3522 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3524 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3526 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3528 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3530 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3532 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3534 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3536 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3538 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3540 RETURN                           R18 1
     3541 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3543 JUMPIFNOTEQKN                    R18 K268 [40] ; [+47]
     3545 DUPTABLE                         R18 K270 [{["id"], ["eventType"] = "AnalyticsReport", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     3546 GETTABLEKS                       R19 R2 K19 ["id"]
     3548 SETTABLEKS                       R19 R18 K19 ["id"]
     3550 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3552 GETIMPORT                        R21 K35 [pcall]
     3554 NEWCLOSURE                       R22 P6
     3555 CAPTURE                          VAL R20
     3556 CAPTURE                          VAL R3
     3557 CALL                             R21 1 2
     3558 JUMPIFNOT                        R21 ; [+2]
     3559 MOVE                             R19 R22
     3560 JUMP                             ; [+1]
     3561 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3562 SETTABLEKS                       R19 R18 K23 ["date"]
     3564 GETTABLEKS                       R19 R2 K14 ["userId"]
     3566 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3568 MOVE                             R19 R0
     3569 GETTABLEKS                       R20 R2 K14 ["userId"]
     3571 CALL                             R19 1 1
     3572 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3574 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3576 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3578 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3580 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3582 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3584 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3586 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3588 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3590 RETURN                           R18 1
     3591 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3593 JUMPIFNOTEQKN                    R18 K271 [41] ; [+123]
     3595 DUPTABLE                         R18 K274 [{["id"], ["eventType"] = "TranslationIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     3596 GETTABLEKS                       R19 R2 K19 ["id"]
     3598 SETTABLEKS                       R19 R18 K19 ["id"]
     3600 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3602 GETIMPORT                        R21 K35 [pcall]
     3604 NEWCLOSURE                       R22 P6
     3605 CAPTURE                          VAL R20
     3606 CAPTURE                          VAL R3
     3607 CALL                             R21 1 2
     3608 JUMPIFNOT                        R21 ; [+2]
     3609 MOVE                             R19 R22
     3610 JUMP                             ; [+1]
     3611 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3612 SETTABLEKS                       R19 R18 K23 ["date"]
     3614 MOVE                             R19 R12
     3615 LOADK                            R20 K275 ["Description.TranslationIconAdded"]
     3616 DUPTABLE                         R21 K277 [{"language", "iconName"}]
     3617 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3619 JUMPIFNOT                        R24 ; [+5]
     3620 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3622 GETTABLEKS                       R23 R24 K245 ["Language"]
     3624 JUMPIF                           R23 ; [+1]
     3625 LOADK                            R23 K44 [""]
     3626 LOADK                            R24 K44 [""]
     3627 FASTCALL1                        TOSTRING R23 ; [+3]
     3628 MOVE                             R28 R23
     3629 GETIMPORT                        R27 K4 [tostring]
     3631 CALL                             R27 1 1
     3632 MOVE                             R25 R27
     3633 LOADK                            R26 K44 [""]
     3634 CONCAT                           R22 R24 R26
     3635 SETTABLEKS                       R22 R21 K243 ["language"]
     3637 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3639 JUMPIFNOT                        R24 ; [+5]
     3640 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3642 GETTABLEKS                       R23 R24 K278 ["IconName"]
     3644 JUMPIF                           R23 ; [+1]
     3645 LOADK                            R23 K44 [""]
     3646 LOADK                            R24 K44 [""]
     3647 FASTCALL1                        TOSTRING R23 ; [+3]
     3648 MOVE                             R28 R23
     3649 GETIMPORT                        R27 K4 [tostring]
     3651 CALL                             R27 1 1
     3652 MOVE                             R25 R27
     3653 LOADK                            R26 K44 [""]
     3654 CONCAT                           R22 R24 R26
     3655 SETTABLEKS                       R22 R21 K276 ["iconName"]
     3657 CALL                             R19 2 1
     3658 SETTABLEKS                       R19 R18 K24 ["translation"]
     3660 GETTABLEKS                       R19 R2 K14 ["userId"]
     3662 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3664 MOVE                             R19 R0
     3665 GETTABLEKS                       R20 R2 K14 ["userId"]
     3667 CALL                             R19 1 1
     3668 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3670 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3672 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3674 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3676 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3678 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3680 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3682 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3684 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3686 LOADK                            R20 K44 [""]
     3687 FASTCALL1                        TOSTRING R4 ; [+3]
     3688 MOVE                             R24 R4
     3689 GETIMPORT                        R23 K4 [tostring]
     3691 CALL                             R23 1 1
     3692 MOVE                             R21 R23
     3693 LOADK                            R22 K279 ["/localization/translation"]
     3694 CONCAT                           R19 R20 R22
     3695 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3697 LOADK                            R20 K44 [""]
     3698 GETUPVAL                         R26 1
     3699 FASTCALL1                        TOSTRING R26 ; [+2]
     3700 GETIMPORT                        R25 K4 [tostring]
     3702 CALL                             R25 1 1
     3703 MOVE                             R21 R25
     3704 LOADK                            R22 K280 ["catalog/"]
     3705 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     3707 FASTCALL1                        TOSTRING R26 ; [+2]
     3708 GETIMPORT                        R25 K4 [tostring]
     3710 CALL                             R25 1 1
     3711 MOVE                             R23 R25
     3712 LOADK                            R24 K44 [""]
     3713 CONCAT                           R19 R20 R24
     3714 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     3716 RETURN                           R18 1
     3717 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3719 JUMPIFNOTEQKN                    R18 K281 [42] ; [+123]
     3721 DUPTABLE                         R18 K283 [{["id"], ["eventType"] = "TranslationIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     3722 GETTABLEKS                       R19 R2 K19 ["id"]
     3724 SETTABLEKS                       R19 R18 K19 ["id"]
     3726 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3728 GETIMPORT                        R21 K35 [pcall]
     3730 NEWCLOSURE                       R22 P6
     3731 CAPTURE                          VAL R20
     3732 CAPTURE                          VAL R3
     3733 CALL                             R21 1 2
     3734 JUMPIFNOT                        R21 ; [+2]
     3735 MOVE                             R19 R22
     3736 JUMP                             ; [+1]
     3737 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3738 SETTABLEKS                       R19 R18 K23 ["date"]
     3740 MOVE                             R19 R12
     3741 LOADK                            R20 K284 ["Description.TranslationIconDeleted"]
     3742 DUPTABLE                         R21 K277 [{"language", "iconName"}]
     3743 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3745 JUMPIFNOT                        R24 ; [+5]
     3746 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3748 GETTABLEKS                       R23 R24 K245 ["Language"]
     3750 JUMPIF                           R23 ; [+1]
     3751 LOADK                            R23 K44 [""]
     3752 LOADK                            R24 K44 [""]
     3753 FASTCALL1                        TOSTRING R23 ; [+3]
     3754 MOVE                             R28 R23
     3755 GETIMPORT                        R27 K4 [tostring]
     3757 CALL                             R27 1 1
     3758 MOVE                             R25 R27
     3759 LOADK                            R26 K44 [""]
     3760 CONCAT                           R22 R24 R26
     3761 SETTABLEKS                       R22 R21 K243 ["language"]
     3763 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3765 JUMPIFNOT                        R24 ; [+5]
     3766 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3768 GETTABLEKS                       R23 R24 K278 ["IconName"]
     3770 JUMPIF                           R23 ; [+1]
     3771 LOADK                            R23 K44 [""]
     3772 LOADK                            R24 K44 [""]
     3773 FASTCALL1                        TOSTRING R23 ; [+3]
     3774 MOVE                             R28 R23
     3775 GETIMPORT                        R27 K4 [tostring]
     3777 CALL                             R27 1 1
     3778 MOVE                             R25 R27
     3779 LOADK                            R26 K44 [""]
     3780 CONCAT                           R22 R24 R26
     3781 SETTABLEKS                       R22 R21 K276 ["iconName"]
     3783 CALL                             R19 2 1
     3784 SETTABLEKS                       R19 R18 K24 ["translation"]
     3786 GETTABLEKS                       R19 R2 K14 ["userId"]
     3788 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3790 MOVE                             R19 R0
     3791 GETTABLEKS                       R20 R2 K14 ["userId"]
     3793 CALL                             R19 1 1
     3794 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3796 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3798 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3800 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3802 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3804 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3806 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3808 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3810 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3812 LOADK                            R20 K44 [""]
     3813 FASTCALL1                        TOSTRING R4 ; [+3]
     3814 MOVE                             R24 R4
     3815 GETIMPORT                        R23 K4 [tostring]
     3817 CALL                             R23 1 1
     3818 MOVE                             R21 R23
     3819 LOADK                            R22 K279 ["/localization/translation"]
     3820 CONCAT                           R19 R20 R22
     3821 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3823 LOADK                            R20 K44 [""]
     3824 GETUPVAL                         R26 1
     3825 FASTCALL1                        TOSTRING R26 ; [+2]
     3826 GETIMPORT                        R25 K4 [tostring]
     3828 CALL                             R25 1 1
     3829 MOVE                             R21 R25
     3830 LOADK                            R22 K280 ["catalog/"]
     3831 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     3833 FASTCALL1                        TOSTRING R26 ; [+2]
     3834 GETIMPORT                        R25 K4 [tostring]
     3836 CALL                             R25 1 1
     3837 MOVE                             R23 R25
     3838 LOADK                            R24 K44 [""]
     3839 CONCAT                           R19 R20 R24
     3840 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     3842 RETURN                           R18 1
     3843 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3845 JUMPIFNOTEQKN                    R18 K285 [43] ; [+84]
     3847 DUPTABLE                         R18 K287 [{["id"], ["eventType"] = "TranslationExperienceName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3848 GETTABLEKS                       R19 R2 K19 ["id"]
     3850 SETTABLEKS                       R19 R18 K19 ["id"]
     3852 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3854 GETIMPORT                        R21 K35 [pcall]
     3856 NEWCLOSURE                       R22 P6
     3857 CAPTURE                          VAL R20
     3858 CAPTURE                          VAL R3
     3859 CALL                             R21 1 2
     3860 JUMPIFNOT                        R21 ; [+2]
     3861 MOVE                             R19 R22
     3862 JUMP                             ; [+1]
     3863 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3864 SETTABLEKS                       R19 R18 K23 ["date"]
     3866 MOVE                             R19 R12
     3867 LOADK                            R20 K288 ["Description.TranslationExperienceName"]
     3868 DUPTABLE                         R21 K289 [{"language"}]
     3869 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3871 JUMPIFNOT                        R24 ; [+5]
     3872 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3874 GETTABLEKS                       R23 R24 K245 ["Language"]
     3876 JUMPIF                           R23 ; [+1]
     3877 LOADK                            R23 K44 [""]
     3878 LOADK                            R24 K44 [""]
     3879 FASTCALL1                        TOSTRING R23 ; [+3]
     3880 MOVE                             R28 R23
     3881 GETIMPORT                        R27 K4 [tostring]
     3883 CALL                             R27 1 1
     3884 MOVE                             R25 R27
     3885 LOADK                            R26 K44 [""]
     3886 CONCAT                           R22 R24 R26
     3887 SETTABLEKS                       R22 R21 K243 ["language"]
     3889 CALL                             R19 2 1
     3890 SETTABLEKS                       R19 R18 K24 ["translation"]
     3892 GETTABLEKS                       R19 R2 K14 ["userId"]
     3894 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3896 MOVE                             R19 R0
     3897 GETTABLEKS                       R20 R2 K14 ["userId"]
     3899 CALL                             R19 1 1
     3900 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3902 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3904 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3906 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3908 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3910 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3912 SETTABLEKS                       R19 R18 K30 ["headerText"]
     3914 GETTABLEKS                       R19 R2 K31 ["footerText"]
     3916 SETTABLEKS                       R19 R18 K31 ["footerText"]
     3918 LOADK                            R20 K44 [""]
     3919 FASTCALL1                        TOSTRING R4 ; [+3]
     3920 MOVE                             R24 R4
     3921 GETIMPORT                        R23 K4 [tostring]
     3923 CALL                             R23 1 1
     3924 MOVE                             R21 R23
     3925 LOADK                            R22 K279 ["/localization/translation"]
     3926 CONCAT                           R19 R20 R22
     3927 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     3929 RETURN                           R18 1
     3930 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3932 JUMPIFNOTEQKN                    R18 K290 [44] ; [+84]
     3934 DUPTABLE                         R18 K292 [{["id"], ["eventType"] = "TranslationExperienceDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     3935 GETTABLEKS                       R19 R2 K19 ["id"]
     3937 SETTABLEKS                       R19 R18 K19 ["id"]
     3939 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     3941 GETIMPORT                        R21 K35 [pcall]
     3943 NEWCLOSURE                       R22 P6
     3944 CAPTURE                          VAL R20
     3945 CAPTURE                          VAL R3
     3946 CALL                             R21 1 2
     3947 JUMPIFNOT                        R21 ; [+2]
     3948 MOVE                             R19 R22
     3949 JUMP                             ; [+1]
     3950 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     3951 SETTABLEKS                       R19 R18 K23 ["date"]
     3953 MOVE                             R19 R12
     3954 LOADK                            R20 K293 ["Description.TranslationExperienceDescription"]
     3955 DUPTABLE                         R21 K289 [{"language"}]
     3956 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3958 JUMPIFNOT                        R24 ; [+5]
     3959 GETTABLEKS                       R24 R2 K42 ["metaData"]
     3961 GETTABLEKS                       R23 R24 K245 ["Language"]
     3963 JUMPIF                           R23 ; [+1]
     3964 LOADK                            R23 K44 [""]
     3965 LOADK                            R24 K44 [""]
     3966 FASTCALL1                        TOSTRING R23 ; [+3]
     3967 MOVE                             R28 R23
     3968 GETIMPORT                        R27 K4 [tostring]
     3970 CALL                             R27 1 1
     3971 MOVE                             R25 R27
     3972 LOADK                            R26 K44 [""]
     3973 CONCAT                           R22 R24 R26
     3974 SETTABLEKS                       R22 R21 K243 ["language"]
     3976 CALL                             R19 2 1
     3977 SETTABLEKS                       R19 R18 K24 ["translation"]
     3979 GETTABLEKS                       R19 R2 K14 ["userId"]
     3981 SETTABLEKS                       R19 R18 K25 ["actorId"]
     3983 MOVE                             R19 R0
     3984 GETTABLEKS                       R20 R2 K14 ["userId"]
     3986 CALL                             R19 1 1
     3987 SETTABLEKS                       R19 R18 K26 ["actorName"]
     3989 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3991 SETTABLEKS                       R19 R18 K29 ["iconId"]
     3993 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3995 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3997 GETTABLEKS                       R19 R2 K30 ["headerText"]
     3999 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4001 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4003 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4005 LOADK                            R20 K44 [""]
     4006 FASTCALL1                        TOSTRING R4 ; [+3]
     4007 MOVE                             R24 R4
     4008 GETIMPORT                        R23 K4 [tostring]
     4010 CALL                             R23 1 1
     4011 MOVE                             R21 R23
     4012 LOADK                            R22 K279 ["/localization/translation"]
     4013 CONCAT                           R19 R20 R22
     4014 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4016 RETURN                           R18 1
     4017 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4019 JUMPIFNOTEQKN                    R18 K294 [45] ; [+104]
     4021 DUPTABLE                         R18 K296 [{["id"], ["eventType"] = "TranslationThumbnailAltText", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4022 GETTABLEKS                       R19 R2 K19 ["id"]
     4024 SETTABLEKS                       R19 R18 K19 ["id"]
     4026 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4028 GETIMPORT                        R21 K35 [pcall]
     4030 NEWCLOSURE                       R22 P6
     4031 CAPTURE                          VAL R20
     4032 CAPTURE                          VAL R3
     4033 CALL                             R21 1 2
     4034 JUMPIFNOT                        R21 ; [+2]
     4035 MOVE                             R19 R22
     4036 JUMP                             ; [+1]
     4037 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4038 SETTABLEKS                       R19 R18 K23 ["date"]
     4040 MOVE                             R19 R12
     4041 LOADK                            R20 K297 ["Description.TranslationThumbnailAltText"]
     4042 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4043 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4045 JUMPIFNOT                        R24 ; [+5]
     4046 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4048 GETTABLEKS                       R23 R24 K245 ["Language"]
     4050 JUMPIF                           R23 ; [+1]
     4051 LOADK                            R23 K44 [""]
     4052 LOADK                            R24 K44 [""]
     4053 FASTCALL1                        TOSTRING R23 ; [+3]
     4054 MOVE                             R28 R23
     4055 GETIMPORT                        R27 K4 [tostring]
     4057 CALL                             R27 1 1
     4058 MOVE                             R25 R27
     4059 LOADK                            R26 K44 [""]
     4060 CONCAT                           R22 R24 R26
     4061 SETTABLEKS                       R22 R21 K243 ["language"]
     4063 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4065 JUMPIFNOT                        R24 ; [+5]
     4066 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4068 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4070 JUMPIF                           R23 ; [+1]
     4071 LOADK                            R23 K44 [""]
     4072 LOADK                            R24 K44 [""]
     4073 FASTCALL1                        TOSTRING R23 ; [+3]
     4074 MOVE                             R28 R23
     4075 GETIMPORT                        R27 K4 [tostring]
     4077 CALL                             R27 1 1
     4078 MOVE                             R25 R27
     4079 LOADK                            R26 K44 [""]
     4080 CONCAT                           R22 R24 R26
     4081 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4083 CALL                             R19 2 1
     4084 SETTABLEKS                       R19 R18 K24 ["translation"]
     4086 GETTABLEKS                       R19 R2 K14 ["userId"]
     4088 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4090 MOVE                             R19 R0
     4091 GETTABLEKS                       R20 R2 K14 ["userId"]
     4093 CALL                             R19 1 1
     4094 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4096 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4098 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4100 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4102 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4104 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4106 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4108 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4110 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4112 LOADK                            R20 K44 [""]
     4113 FASTCALL1                        TOSTRING R4 ; [+3]
     4114 MOVE                             R24 R4
     4115 GETIMPORT                        R23 K4 [tostring]
     4117 CALL                             R23 1 1
     4118 MOVE                             R21 R23
     4119 LOADK                            R22 K279 ["/localization/translation"]
     4120 CONCAT                           R19 R20 R22
     4121 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4123 RETURN                           R18 1
     4124 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4126 JUMPIFNOTEQKN                    R18 K301 [46] ; [+104]
     4128 DUPTABLE                         R18 K303 [{["id"], ["eventType"] = "TranslationThumbnailAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4129 GETTABLEKS                       R19 R2 K19 ["id"]
     4131 SETTABLEKS                       R19 R18 K19 ["id"]
     4133 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4135 GETIMPORT                        R21 K35 [pcall]
     4137 NEWCLOSURE                       R22 P6
     4138 CAPTURE                          VAL R20
     4139 CAPTURE                          VAL R3
     4140 CALL                             R21 1 2
     4141 JUMPIFNOT                        R21 ; [+2]
     4142 MOVE                             R19 R22
     4143 JUMP                             ; [+1]
     4144 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4145 SETTABLEKS                       R19 R18 K23 ["date"]
     4147 MOVE                             R19 R12
     4148 LOADK                            R20 K304 ["Description.TranslationThumbnailAdded"]
     4149 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4150 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4152 JUMPIFNOT                        R24 ; [+5]
     4153 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4155 GETTABLEKS                       R23 R24 K245 ["Language"]
     4157 JUMPIF                           R23 ; [+1]
     4158 LOADK                            R23 K44 [""]
     4159 LOADK                            R24 K44 [""]
     4160 FASTCALL1                        TOSTRING R23 ; [+3]
     4161 MOVE                             R28 R23
     4162 GETIMPORT                        R27 K4 [tostring]
     4164 CALL                             R27 1 1
     4165 MOVE                             R25 R27
     4166 LOADK                            R26 K44 [""]
     4167 CONCAT                           R22 R24 R26
     4168 SETTABLEKS                       R22 R21 K243 ["language"]
     4170 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4172 JUMPIFNOT                        R24 ; [+5]
     4173 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4175 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4177 JUMPIF                           R23 ; [+1]
     4178 LOADK                            R23 K44 [""]
     4179 LOADK                            R24 K44 [""]
     4180 FASTCALL1                        TOSTRING R23 ; [+3]
     4181 MOVE                             R28 R23
     4182 GETIMPORT                        R27 K4 [tostring]
     4184 CALL                             R27 1 1
     4185 MOVE                             R25 R27
     4186 LOADK                            R26 K44 [""]
     4187 CONCAT                           R22 R24 R26
     4188 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4190 CALL                             R19 2 1
     4191 SETTABLEKS                       R19 R18 K24 ["translation"]
     4193 GETTABLEKS                       R19 R2 K14 ["userId"]
     4195 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4197 MOVE                             R19 R0
     4198 GETTABLEKS                       R20 R2 K14 ["userId"]
     4200 CALL                             R19 1 1
     4201 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4203 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4205 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4207 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4209 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4211 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4213 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4215 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4217 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4219 LOADK                            R20 K44 [""]
     4220 FASTCALL1                        TOSTRING R4 ; [+3]
     4221 MOVE                             R24 R4
     4222 GETIMPORT                        R23 K4 [tostring]
     4224 CALL                             R23 1 1
     4225 MOVE                             R21 R23
     4226 LOADK                            R22 K279 ["/localization/translation"]
     4227 CONCAT                           R19 R20 R22
     4228 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4230 RETURN                           R18 1
     4231 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4233 JUMPIFNOTEQKN                    R18 K305 [47] ; [+104]
     4235 DUPTABLE                         R18 K307 [{["id"], ["eventType"] = "TranslationThumbnailDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4236 GETTABLEKS                       R19 R2 K19 ["id"]
     4238 SETTABLEKS                       R19 R18 K19 ["id"]
     4240 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4242 GETIMPORT                        R21 K35 [pcall]
     4244 NEWCLOSURE                       R22 P6
     4245 CAPTURE                          VAL R20
     4246 CAPTURE                          VAL R3
     4247 CALL                             R21 1 2
     4248 JUMPIFNOT                        R21 ; [+2]
     4249 MOVE                             R19 R22
     4250 JUMP                             ; [+1]
     4251 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4252 SETTABLEKS                       R19 R18 K23 ["date"]
     4254 MOVE                             R19 R12
     4255 LOADK                            R20 K308 ["Description.TranslationThumbnailDeleted"]
     4256 DUPTABLE                         R21 K299 [{"language", "thumbnailName"}]
     4257 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4259 JUMPIFNOT                        R24 ; [+5]
     4260 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4262 GETTABLEKS                       R23 R24 K245 ["Language"]
     4264 JUMPIF                           R23 ; [+1]
     4265 LOADK                            R23 K44 [""]
     4266 LOADK                            R24 K44 [""]
     4267 FASTCALL1                        TOSTRING R23 ; [+3]
     4268 MOVE                             R28 R23
     4269 GETIMPORT                        R27 K4 [tostring]
     4271 CALL                             R27 1 1
     4272 MOVE                             R25 R27
     4273 LOADK                            R26 K44 [""]
     4274 CONCAT                           R22 R24 R26
     4275 SETTABLEKS                       R22 R21 K243 ["language"]
     4277 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4279 JUMPIFNOT                        R24 ; [+5]
     4280 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4282 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
     4284 JUMPIF                           R23 ; [+1]
     4285 LOADK                            R23 K44 [""]
     4286 LOADK                            R24 K44 [""]
     4287 FASTCALL1                        TOSTRING R23 ; [+3]
     4288 MOVE                             R28 R23
     4289 GETIMPORT                        R27 K4 [tostring]
     4291 CALL                             R27 1 1
     4292 MOVE                             R25 R27
     4293 LOADK                            R26 K44 [""]
     4294 CONCAT                           R22 R24 R26
     4295 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
     4297 CALL                             R19 2 1
     4298 SETTABLEKS                       R19 R18 K24 ["translation"]
     4300 GETTABLEKS                       R19 R2 K14 ["userId"]
     4302 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4304 MOVE                             R19 R0
     4305 GETTABLEKS                       R20 R2 K14 ["userId"]
     4307 CALL                             R19 1 1
     4308 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4310 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4312 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4314 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4316 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4318 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4320 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4322 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4324 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4326 LOADK                            R20 K44 [""]
     4327 FASTCALL1                        TOSTRING R4 ; [+3]
     4328 MOVE                             R24 R4
     4329 GETIMPORT                        R23 K4 [tostring]
     4331 CALL                             R23 1 1
     4332 MOVE                             R21 R23
     4333 LOADK                            R22 K279 ["/localization/translation"]
     4334 CONCAT                           R19 R20 R22
     4335 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4337 RETURN                           R18 1
     4338 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4340 JUMPIFNOTEQKN                    R18 K309 [48] ; [+47]
     4342 DUPTABLE                         R18 K311 [{["id"], ["eventType"] = "TranslationThumbnailOrder", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     4343 GETTABLEKS                       R19 R2 K19 ["id"]
     4345 SETTABLEKS                       R19 R18 K19 ["id"]
     4347 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4349 GETIMPORT                        R21 K35 [pcall]
     4351 NEWCLOSURE                       R22 P6
     4352 CAPTURE                          VAL R20
     4353 CAPTURE                          VAL R3
     4354 CALL                             R21 1 2
     4355 JUMPIFNOT                        R21 ; [+2]
     4356 MOVE                             R19 R22
     4357 JUMP                             ; [+1]
     4358 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4359 SETTABLEKS                       R19 R18 K23 ["date"]
     4361 GETTABLEKS                       R19 R2 K14 ["userId"]
     4363 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4365 MOVE                             R19 R0
     4366 GETTABLEKS                       R20 R2 K14 ["userId"]
     4368 CALL                             R19 1 1
     4369 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4371 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4373 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4375 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4377 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4379 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4381 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4383 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4385 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4387 RETURN                           R18 1
     4388 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4390 JUMPIFNOTEQKN                    R18 K312 [49] ; [+104]
     4392 DUPTABLE                         R18 K314 [{["id"], ["eventType"] = "TranslationStringAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4393 GETTABLEKS                       R19 R2 K19 ["id"]
     4395 SETTABLEKS                       R19 R18 K19 ["id"]
     4397 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4399 GETIMPORT                        R21 K35 [pcall]
     4401 NEWCLOSURE                       R22 P6
     4402 CAPTURE                          VAL R20
     4403 CAPTURE                          VAL R3
     4404 CALL                             R21 1 2
     4405 JUMPIFNOT                        R21 ; [+2]
     4406 MOVE                             R19 R22
     4407 JUMP                             ; [+1]
     4408 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4409 SETTABLEKS                       R19 R18 K23 ["date"]
     4411 MOVE                             R19 R12
     4412 LOADK                            R20 K315 ["Description.TranslationStringAdded"]
     4413 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4414 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4416 JUMPIFNOT                        R24 ; [+5]
     4417 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4419 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4421 JUMPIF                           R23 ; [+1]
     4422 LOADK                            R23 K44 [""]
     4423 LOADK                            R24 K44 [""]
     4424 FASTCALL1                        TOSTRING R23 ; [+3]
     4425 MOVE                             R28 R23
     4426 GETIMPORT                        R27 K4 [tostring]
     4428 CALL                             R27 1 1
     4429 MOVE                             R25 R27
     4430 LOADK                            R26 K44 [""]
     4431 CONCAT                           R22 R24 R26
     4432 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4434 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4436 JUMPIFNOT                        R24 ; [+5]
     4437 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4439 GETTABLEKS                       R23 R24 K245 ["Language"]
     4441 JUMPIF                           R23 ; [+1]
     4442 LOADK                            R23 K44 [""]
     4443 LOADK                            R24 K44 [""]
     4444 FASTCALL1                        TOSTRING R23 ; [+3]
     4445 MOVE                             R28 R23
     4446 GETIMPORT                        R27 K4 [tostring]
     4448 CALL                             R27 1 1
     4449 MOVE                             R25 R27
     4450 LOADK                            R26 K44 [""]
     4451 CONCAT                           R22 R24 R26
     4452 SETTABLEKS                       R22 R21 K243 ["language"]
     4454 CALL                             R19 2 1
     4455 SETTABLEKS                       R19 R18 K24 ["translation"]
     4457 GETTABLEKS                       R19 R2 K14 ["userId"]
     4459 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4461 MOVE                             R19 R0
     4462 GETTABLEKS                       R20 R2 K14 ["userId"]
     4464 CALL                             R19 1 1
     4465 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4467 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4469 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4471 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4473 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4475 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4477 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4479 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4481 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4483 LOADK                            R20 K44 [""]
     4484 FASTCALL1                        TOSTRING R4 ; [+3]
     4485 MOVE                             R24 R4
     4486 GETIMPORT                        R23 K4 [tostring]
     4488 CALL                             R23 1 1
     4489 MOVE                             R21 R23
     4490 LOADK                            R22 K279 ["/localization/translation"]
     4491 CONCAT                           R19 R20 R22
     4492 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4494 RETURN                           R18 1
     4495 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4497 JUMPIFNOTEQKN                    R18 K319 [50] ; [+104]
     4499 DUPTABLE                         R18 K321 [{["id"], ["eventType"] = "TranslationStringDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4500 GETTABLEKS                       R19 R2 K19 ["id"]
     4502 SETTABLEKS                       R19 R18 K19 ["id"]
     4504 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4506 GETIMPORT                        R21 K35 [pcall]
     4508 NEWCLOSURE                       R22 P6
     4509 CAPTURE                          VAL R20
     4510 CAPTURE                          VAL R3
     4511 CALL                             R21 1 2
     4512 JUMPIFNOT                        R21 ; [+2]
     4513 MOVE                             R19 R22
     4514 JUMP                             ; [+1]
     4515 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4516 SETTABLEKS                       R19 R18 K23 ["date"]
     4518 MOVE                             R19 R12
     4519 LOADK                            R20 K322 ["Description.TranslationStringDeleted"]
     4520 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4521 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4523 JUMPIFNOT                        R24 ; [+5]
     4524 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4526 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4528 JUMPIF                           R23 ; [+1]
     4529 LOADK                            R23 K44 [""]
     4530 LOADK                            R24 K44 [""]
     4531 FASTCALL1                        TOSTRING R23 ; [+3]
     4532 MOVE                             R28 R23
     4533 GETIMPORT                        R27 K4 [tostring]
     4535 CALL                             R27 1 1
     4536 MOVE                             R25 R27
     4537 LOADK                            R26 K44 [""]
     4538 CONCAT                           R22 R24 R26
     4539 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4541 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4543 JUMPIFNOT                        R24 ; [+5]
     4544 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4546 GETTABLEKS                       R23 R24 K245 ["Language"]
     4548 JUMPIF                           R23 ; [+1]
     4549 LOADK                            R23 K44 [""]
     4550 LOADK                            R24 K44 [""]
     4551 FASTCALL1                        TOSTRING R23 ; [+3]
     4552 MOVE                             R28 R23
     4553 GETIMPORT                        R27 K4 [tostring]
     4555 CALL                             R27 1 1
     4556 MOVE                             R25 R27
     4557 LOADK                            R26 K44 [""]
     4558 CONCAT                           R22 R24 R26
     4559 SETTABLEKS                       R22 R21 K243 ["language"]
     4561 CALL                             R19 2 1
     4562 SETTABLEKS                       R19 R18 K24 ["translation"]
     4564 GETTABLEKS                       R19 R2 K14 ["userId"]
     4566 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4568 MOVE                             R19 R0
     4569 GETTABLEKS                       R20 R2 K14 ["userId"]
     4571 CALL                             R19 1 1
     4572 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4574 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4576 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4578 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4580 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4582 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4584 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4586 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4588 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4590 LOADK                            R20 K44 [""]
     4591 FASTCALL1                        TOSTRING R4 ; [+3]
     4592 MOVE                             R24 R4
     4593 GETIMPORT                        R23 K4 [tostring]
     4595 CALL                             R23 1 1
     4596 MOVE                             R21 R23
     4597 LOADK                            R22 K279 ["/localization/translation"]
     4598 CONCAT                           R19 R20 R22
     4599 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4601 RETURN                           R18 1
     4602 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4604 JUMPIFNOTEQKN                    R18 K323 [51] ; [+104]
     4606 DUPTABLE                         R18 K325 [{["id"], ["eventType"] = "TranslationStringUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     4607 GETTABLEKS                       R19 R2 K19 ["id"]
     4609 SETTABLEKS                       R19 R18 K19 ["id"]
     4611 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4613 GETIMPORT                        R21 K35 [pcall]
     4615 NEWCLOSURE                       R22 P6
     4616 CAPTURE                          VAL R20
     4617 CAPTURE                          VAL R3
     4618 CALL                             R21 1 2
     4619 JUMPIFNOT                        R21 ; [+2]
     4620 MOVE                             R19 R22
     4621 JUMP                             ; [+1]
     4622 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4623 SETTABLEKS                       R19 R18 K23 ["date"]
     4625 MOVE                             R19 R12
     4626 LOADK                            R20 K326 ["Description.TranslationStringUpdated"]
     4627 DUPTABLE                         R21 K317 [{"stringKey", "language"}]
     4628 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4630 JUMPIFNOT                        R24 ; [+5]
     4631 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4633 GETTABLEKS                       R23 R24 K318 ["StringKey"]
     4635 JUMPIF                           R23 ; [+1]
     4636 LOADK                            R23 K44 [""]
     4637 LOADK                            R24 K44 [""]
     4638 FASTCALL1                        TOSTRING R23 ; [+3]
     4639 MOVE                             R28 R23
     4640 GETIMPORT                        R27 K4 [tostring]
     4642 CALL                             R27 1 1
     4643 MOVE                             R25 R27
     4644 LOADK                            R26 K44 [""]
     4645 CONCAT                           R22 R24 R26
     4646 SETTABLEKS                       R22 R21 K316 ["stringKey"]
     4648 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4650 JUMPIFNOT                        R24 ; [+5]
     4651 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4653 GETTABLEKS                       R23 R24 K245 ["Language"]
     4655 JUMPIF                           R23 ; [+1]
     4656 LOADK                            R23 K44 [""]
     4657 LOADK                            R24 K44 [""]
     4658 FASTCALL1                        TOSTRING R23 ; [+3]
     4659 MOVE                             R28 R23
     4660 GETIMPORT                        R27 K4 [tostring]
     4662 CALL                             R27 1 1
     4663 MOVE                             R25 R27
     4664 LOADK                            R26 K44 [""]
     4665 CONCAT                           R22 R24 R26
     4666 SETTABLEKS                       R22 R21 K243 ["language"]
     4668 CALL                             R19 2 1
     4669 SETTABLEKS                       R19 R18 K24 ["translation"]
     4671 GETTABLEKS                       R19 R2 K14 ["userId"]
     4673 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4675 MOVE                             R19 R0
     4676 GETTABLEKS                       R20 R2 K14 ["userId"]
     4678 CALL                             R19 1 1
     4679 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4681 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4683 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4685 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4687 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4689 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4691 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4693 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4695 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4697 LOADK                            R20 K44 [""]
     4698 FASTCALL1                        TOSTRING R4 ; [+3]
     4699 MOVE                             R24 R4
     4700 GETIMPORT                        R23 K4 [tostring]
     4702 CALL                             R23 1 1
     4703 MOVE                             R21 R23
     4704 LOADK                            R22 K279 ["/localization/translation"]
     4705 CONCAT                           R19 R20 R22
     4706 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4708 RETURN                           R18 1
     4709 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4711 JUMPIFNOTEQKN                    R18 K327 [52] ; [+124]
     4713 DUPTABLE                         R18 K330 [{["id"], ["eventType"] = "TranslationBadgeIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4714 GETTABLEKS                       R19 R2 K19 ["id"]
     4716 SETTABLEKS                       R19 R18 K19 ["id"]
     4718 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4720 GETIMPORT                        R21 K35 [pcall]
     4722 NEWCLOSURE                       R22 P6
     4723 CAPTURE                          VAL R20
     4724 CAPTURE                          VAL R3
     4725 CALL                             R21 1 2
     4726 JUMPIFNOT                        R21 ; [+2]
     4727 MOVE                             R19 R22
     4728 JUMP                             ; [+1]
     4729 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4730 SETTABLEKS                       R19 R18 K23 ["date"]
     4732 MOVE                             R19 R12
     4733 LOADK                            R20 K331 ["Description.TranslationBadgeIconDeleted"]
     4734 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4735 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4737 JUMPIFNOT                        R24 ; [+5]
     4738 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4740 GETTABLEKS                       R23 R24 K245 ["Language"]
     4742 JUMPIF                           R23 ; [+1]
     4743 LOADK                            R23 K44 [""]
     4744 LOADK                            R24 K44 [""]
     4745 FASTCALL1                        TOSTRING R23 ; [+3]
     4746 MOVE                             R28 R23
     4747 GETIMPORT                        R27 K4 [tostring]
     4749 CALL                             R27 1 1
     4750 MOVE                             R25 R27
     4751 LOADK                            R26 K44 [""]
     4752 CONCAT                           R22 R24 R26
     4753 SETTABLEKS                       R22 R21 K243 ["language"]
     4755 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4757 JUMPIFNOT                        R24 ; [+5]
     4758 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4760 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     4762 JUMPIF                           R23 ; [+1]
     4763 LOADK                            R23 K44 [""]
     4764 LOADK                            R24 K44 [""]
     4765 FASTCALL1                        TOSTRING R23 ; [+3]
     4766 MOVE                             R28 R23
     4767 GETIMPORT                        R27 K4 [tostring]
     4769 CALL                             R27 1 1
     4770 MOVE                             R25 R27
     4771 LOADK                            R26 K44 [""]
     4772 CONCAT                           R22 R24 R26
     4773 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     4775 CALL                             R19 2 1
     4776 SETTABLEKS                       R19 R18 K24 ["translation"]
     4778 GETTABLEKS                       R19 R2 K14 ["userId"]
     4780 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4782 MOVE                             R19 R0
     4783 GETTABLEKS                       R20 R2 K14 ["userId"]
     4785 CALL                             R19 1 1
     4786 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4788 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     4790 ORK                              R19 R20 K18 [0]
     4791 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4793 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4795 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4797 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4799 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4801 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4803 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4805 LOADK                            R20 K44 [""]
     4806 FASTCALL1                        TOSTRING R4 ; [+3]
     4807 MOVE                             R24 R4
     4808 GETIMPORT                        R23 K4 [tostring]
     4810 CALL                             R23 1 1
     4811 MOVE                             R21 R23
     4812 LOADK                            R22 K279 ["/localization/translation"]
     4813 CONCAT                           R19 R20 R22
     4814 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4816 LOADK                            R20 K44 [""]
     4817 GETUPVAL                         R26 1
     4818 FASTCALL1                        TOSTRING R26 ; [+2]
     4819 GETIMPORT                        R25 K4 [tostring]
     4821 CALL                             R25 1 1
     4822 MOVE                             R21 R25
     4823 LOADK                            R22 K335 ["badges/"]
     4824 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4826 FASTCALL1                        TOSTRING R26 ; [+2]
     4827 GETIMPORT                        R25 K4 [tostring]
     4829 CALL                             R25 1 1
     4830 MOVE                             R23 R25
     4831 LOADK                            R24 K44 [""]
     4832 CONCAT                           R19 R20 R24
     4833 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     4835 RETURN                           R18 1
     4836 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4838 JUMPIFNOTEQKN                    R18 K336 [53] ; [+124]
     4840 DUPTABLE                         R18 K338 [{["id"], ["eventType"] = "TranslationBadgeDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4841 GETTABLEKS                       R19 R2 K19 ["id"]
     4843 SETTABLEKS                       R19 R18 K19 ["id"]
     4845 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4847 GETIMPORT                        R21 K35 [pcall]
     4849 NEWCLOSURE                       R22 P6
     4850 CAPTURE                          VAL R20
     4851 CAPTURE                          VAL R3
     4852 CALL                             R21 1 2
     4853 JUMPIFNOT                        R21 ; [+2]
     4854 MOVE                             R19 R22
     4855 JUMP                             ; [+1]
     4856 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4857 SETTABLEKS                       R19 R18 K23 ["date"]
     4859 MOVE                             R19 R12
     4860 LOADK                            R20 K339 ["Description.TranslationBadgeDescription"]
     4861 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4862 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4864 JUMPIFNOT                        R24 ; [+5]
     4865 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4867 GETTABLEKS                       R23 R24 K245 ["Language"]
     4869 JUMPIF                           R23 ; [+1]
     4870 LOADK                            R23 K44 [""]
     4871 LOADK                            R24 K44 [""]
     4872 FASTCALL1                        TOSTRING R23 ; [+3]
     4873 MOVE                             R28 R23
     4874 GETIMPORT                        R27 K4 [tostring]
     4876 CALL                             R27 1 1
     4877 MOVE                             R25 R27
     4878 LOADK                            R26 K44 [""]
     4879 CONCAT                           R22 R24 R26
     4880 SETTABLEKS                       R22 R21 K243 ["language"]
     4882 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4884 JUMPIFNOT                        R24 ; [+5]
     4885 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4887 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     4889 JUMPIF                           R23 ; [+1]
     4890 LOADK                            R23 K44 [""]
     4891 LOADK                            R24 K44 [""]
     4892 FASTCALL1                        TOSTRING R23 ; [+3]
     4893 MOVE                             R28 R23
     4894 GETIMPORT                        R27 K4 [tostring]
     4896 CALL                             R27 1 1
     4897 MOVE                             R25 R27
     4898 LOADK                            R26 K44 [""]
     4899 CONCAT                           R22 R24 R26
     4900 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     4902 CALL                             R19 2 1
     4903 SETTABLEKS                       R19 R18 K24 ["translation"]
     4905 GETTABLEKS                       R19 R2 K14 ["userId"]
     4907 SETTABLEKS                       R19 R18 K25 ["actorId"]
     4909 MOVE                             R19 R0
     4910 GETTABLEKS                       R20 R2 K14 ["userId"]
     4912 CALL                             R19 1 1
     4913 SETTABLEKS                       R19 R18 K26 ["actorName"]
     4915 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     4917 ORK                              R19 R20 K18 [0]
     4918 SETTABLEKS                       R19 R18 K29 ["iconId"]
     4920 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4922 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4924 GETTABLEKS                       R19 R2 K30 ["headerText"]
     4926 SETTABLEKS                       R19 R18 K30 ["headerText"]
     4928 GETTABLEKS                       R19 R2 K31 ["footerText"]
     4930 SETTABLEKS                       R19 R18 K31 ["footerText"]
     4932 LOADK                            R20 K44 [""]
     4933 FASTCALL1                        TOSTRING R4 ; [+3]
     4934 MOVE                             R24 R4
     4935 GETIMPORT                        R23 K4 [tostring]
     4937 CALL                             R23 1 1
     4938 MOVE                             R21 R23
     4939 LOADK                            R22 K279 ["/localization/translation"]
     4940 CONCAT                           R19 R20 R22
     4941 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     4943 LOADK                            R20 K44 [""]
     4944 GETUPVAL                         R26 1
     4945 FASTCALL1                        TOSTRING R26 ; [+2]
     4946 GETIMPORT                        R25 K4 [tostring]
     4948 CALL                             R25 1 1
     4949 MOVE                             R21 R25
     4950 LOADK                            R22 K335 ["badges/"]
     4951 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4953 FASTCALL1                        TOSTRING R26 ; [+2]
     4954 GETIMPORT                        R25 K4 [tostring]
     4956 CALL                             R25 1 1
     4957 MOVE                             R23 R25
     4958 LOADK                            R24 K44 [""]
     4959 CONCAT                           R19 R20 R24
     4960 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     4962 RETURN                           R18 1
     4963 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4965 JUMPIFNOTEQKN                    R18 K340 [54] ; [+124]
     4967 DUPTABLE                         R18 K342 [{["id"], ["eventType"] = "TranslationBadgeIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     4968 GETTABLEKS                       R19 R2 K19 ["id"]
     4970 SETTABLEKS                       R19 R18 K19 ["id"]
     4972 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     4974 GETIMPORT                        R21 K35 [pcall]
     4976 NEWCLOSURE                       R22 P6
     4977 CAPTURE                          VAL R20
     4978 CAPTURE                          VAL R3
     4979 CALL                             R21 1 2
     4980 JUMPIFNOT                        R21 ; [+2]
     4981 MOVE                             R19 R22
     4982 JUMP                             ; [+1]
     4983 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     4984 SETTABLEKS                       R19 R18 K23 ["date"]
     4986 MOVE                             R19 R12
     4987 LOADK                            R20 K343 ["Description.TranslationBadgeIconAdded"]
     4988 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     4989 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4991 JUMPIFNOT                        R24 ; [+5]
     4992 GETTABLEKS                       R24 R2 K42 ["metaData"]
     4994 GETTABLEKS                       R23 R24 K245 ["Language"]
     4996 JUMPIF                           R23 ; [+1]
     4997 LOADK                            R23 K44 [""]
     4998 LOADK                            R24 K44 [""]
     4999 FASTCALL1                        TOSTRING R23 ; [+3]
     5000 MOVE                             R28 R23
     5001 GETIMPORT                        R27 K4 [tostring]
     5003 CALL                             R27 1 1
     5004 MOVE                             R25 R27
     5005 LOADK                            R26 K44 [""]
     5006 CONCAT                           R22 R24 R26
     5007 SETTABLEKS                       R22 R21 K243 ["language"]
     5009 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5011 JUMPIFNOT                        R24 ; [+5]
     5012 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5014 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     5016 JUMPIF                           R23 ; [+1]
     5017 LOADK                            R23 K44 [""]
     5018 LOADK                            R24 K44 [""]
     5019 FASTCALL1                        TOSTRING R23 ; [+3]
     5020 MOVE                             R28 R23
     5021 GETIMPORT                        R27 K4 [tostring]
     5023 CALL                             R27 1 1
     5024 MOVE                             R25 R27
     5025 LOADK                            R26 K44 [""]
     5026 CONCAT                           R22 R24 R26
     5027 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     5029 CALL                             R19 2 1
     5030 SETTABLEKS                       R19 R18 K24 ["translation"]
     5032 GETTABLEKS                       R19 R2 K14 ["userId"]
     5034 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5036 MOVE                             R19 R0
     5037 GETTABLEKS                       R20 R2 K14 ["userId"]
     5039 CALL                             R19 1 1
     5040 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5042 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5044 ORK                              R19 R20 K18 [0]
     5045 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5047 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5049 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5051 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5053 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5055 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5057 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5059 LOADK                            R20 K44 [""]
     5060 FASTCALL1                        TOSTRING R4 ; [+3]
     5061 MOVE                             R24 R4
     5062 GETIMPORT                        R23 K4 [tostring]
     5064 CALL                             R23 1 1
     5065 MOVE                             R21 R23
     5066 LOADK                            R22 K279 ["/localization/translation"]
     5067 CONCAT                           R19 R20 R22
     5068 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5070 LOADK                            R20 K44 [""]
     5071 GETUPVAL                         R26 1
     5072 FASTCALL1                        TOSTRING R26 ; [+2]
     5073 GETIMPORT                        R25 K4 [tostring]
     5075 CALL                             R25 1 1
     5076 MOVE                             R21 R25
     5077 LOADK                            R22 K335 ["badges/"]
     5078 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5080 FASTCALL1                        TOSTRING R26 ; [+2]
     5081 GETIMPORT                        R25 K4 [tostring]
     5083 CALL                             R25 1 1
     5084 MOVE                             R23 R25
     5085 LOADK                            R24 K44 [""]
     5086 CONCAT                           R19 R20 R24
     5087 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5089 RETURN                           R18 1
     5090 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5092 JUMPIFNOTEQKN                    R18 K344 [55] ; [+124]
     5094 DUPTABLE                         R18 K346 [{["id"], ["eventType"] = "TranslationBadgeName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5095 GETTABLEKS                       R19 R2 K19 ["id"]
     5097 SETTABLEKS                       R19 R18 K19 ["id"]
     5099 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5101 GETIMPORT                        R21 K35 [pcall]
     5103 NEWCLOSURE                       R22 P6
     5104 CAPTURE                          VAL R20
     5105 CAPTURE                          VAL R3
     5106 CALL                             R21 1 2
     5107 JUMPIFNOT                        R21 ; [+2]
     5108 MOVE                             R19 R22
     5109 JUMP                             ; [+1]
     5110 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5111 SETTABLEKS                       R19 R18 K23 ["date"]
     5113 MOVE                             R19 R12
     5114 LOADK                            R20 K347 ["Description.TranslationBadgeName"]
     5115 DUPTABLE                         R21 K333 [{"language", "badgeName"}]
     5116 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5118 JUMPIFNOT                        R24 ; [+5]
     5119 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5121 GETTABLEKS                       R23 R24 K245 ["Language"]
     5123 JUMPIF                           R23 ; [+1]
     5124 LOADK                            R23 K44 [""]
     5125 LOADK                            R24 K44 [""]
     5126 FASTCALL1                        TOSTRING R23 ; [+3]
     5127 MOVE                             R28 R23
     5128 GETIMPORT                        R27 K4 [tostring]
     5130 CALL                             R27 1 1
     5131 MOVE                             R25 R27
     5132 LOADK                            R26 K44 [""]
     5133 CONCAT                           R22 R24 R26
     5134 SETTABLEKS                       R22 R21 K243 ["language"]
     5136 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5138 JUMPIFNOT                        R24 ; [+5]
     5139 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5141 GETTABLEKS                       R23 R24 K334 ["BadgeName"]
     5143 JUMPIF                           R23 ; [+1]
     5144 LOADK                            R23 K44 [""]
     5145 LOADK                            R24 K44 [""]
     5146 FASTCALL1                        TOSTRING R23 ; [+3]
     5147 MOVE                             R28 R23
     5148 GETIMPORT                        R27 K4 [tostring]
     5150 CALL                             R27 1 1
     5151 MOVE                             R25 R27
     5152 LOADK                            R26 K44 [""]
     5153 CONCAT                           R22 R24 R26
     5154 SETTABLEKS                       R22 R21 K332 ["badgeName"]
     5156 CALL                             R19 2 1
     5157 SETTABLEKS                       R19 R18 K24 ["translation"]
     5159 GETTABLEKS                       R19 R2 K14 ["userId"]
     5161 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5163 MOVE                             R19 R0
     5164 GETTABLEKS                       R20 R2 K14 ["userId"]
     5166 CALL                             R19 1 1
     5167 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5169 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5171 ORK                              R19 R20 K18 [0]
     5172 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5174 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5176 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5178 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5180 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5182 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5184 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5186 LOADK                            R20 K44 [""]
     5187 FASTCALL1                        TOSTRING R4 ; [+3]
     5188 MOVE                             R24 R4
     5189 GETIMPORT                        R23 K4 [tostring]
     5191 CALL                             R23 1 1
     5192 MOVE                             R21 R23
     5193 LOADK                            R22 K279 ["/localization/translation"]
     5194 CONCAT                           R19 R20 R22
     5195 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5197 LOADK                            R20 K44 [""]
     5198 GETUPVAL                         R26 1
     5199 FASTCALL1                        TOSTRING R26 ; [+2]
     5200 GETIMPORT                        R25 K4 [tostring]
     5202 CALL                             R25 1 1
     5203 MOVE                             R21 R25
     5204 LOADK                            R22 K335 ["badges/"]
     5205 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5207 FASTCALL1                        TOSTRING R26 ; [+2]
     5208 GETIMPORT                        R25 K4 [tostring]
     5210 CALL                             R25 1 1
     5211 MOVE                             R23 R25
     5212 LOADK                            R24 K44 [""]
     5213 CONCAT                           R19 R20 R24
     5214 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5216 RETURN                           R18 1
     5217 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5219 JUMPIFNOTEQKN                    R18 K348 [56] ; [+124]
     5221 DUPTABLE                         R18 K351 [{["id"], ["eventType"] = "TranslationDeveloperProductIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5222 GETTABLEKS                       R19 R2 K19 ["id"]
     5224 SETTABLEKS                       R19 R18 K19 ["id"]
     5226 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5228 GETIMPORT                        R21 K35 [pcall]
     5230 NEWCLOSURE                       R22 P6
     5231 CAPTURE                          VAL R20
     5232 CAPTURE                          VAL R3
     5233 CALL                             R21 1 2
     5234 JUMPIFNOT                        R21 ; [+2]
     5235 MOVE                             R19 R22
     5236 JUMP                             ; [+1]
     5237 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5238 SETTABLEKS                       R19 R18 K23 ["date"]
     5240 MOVE                             R19 R12
     5241 LOADK                            R20 K352 ["Description.TranslationDeveloperProductIconDeleted"]
     5242 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5243 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5245 JUMPIFNOT                        R24 ; [+5]
     5246 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5248 GETTABLEKS                       R23 R24 K245 ["Language"]
     5250 JUMPIF                           R23 ; [+1]
     5251 LOADK                            R23 K44 [""]
     5252 LOADK                            R24 K44 [""]
     5253 FASTCALL1                        TOSTRING R23 ; [+3]
     5254 MOVE                             R28 R23
     5255 GETIMPORT                        R27 K4 [tostring]
     5257 CALL                             R27 1 1
     5258 MOVE                             R25 R27
     5259 LOADK                            R26 K44 [""]
     5260 CONCAT                           R22 R24 R26
     5261 SETTABLEKS                       R22 R21 K243 ["language"]
     5263 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5265 JUMPIFNOT                        R24 ; [+5]
     5266 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5268 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5270 JUMPIF                           R23 ; [+1]
     5271 LOADK                            R23 K44 [""]
     5272 LOADK                            R24 K44 [""]
     5273 FASTCALL1                        TOSTRING R23 ; [+3]
     5274 MOVE                             R28 R23
     5275 GETIMPORT                        R27 K4 [tostring]
     5277 CALL                             R27 1 1
     5278 MOVE                             R25 R27
     5279 LOADK                            R26 K44 [""]
     5280 CONCAT                           R22 R24 R26
     5281 SETTABLEKS                       R22 R21 K353 ["productName"]
     5283 CALL                             R19 2 1
     5284 SETTABLEKS                       R19 R18 K24 ["translation"]
     5286 GETTABLEKS                       R19 R2 K14 ["userId"]
     5288 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5290 MOVE                             R19 R0
     5291 GETTABLEKS                       R20 R2 K14 ["userId"]
     5293 CALL                             R19 1 1
     5294 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5296 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5298 ORK                              R19 R20 K18 [0]
     5299 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5301 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5303 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5305 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5307 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5309 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5311 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5313 LOADK                            R20 K44 [""]
     5314 FASTCALL1                        TOSTRING R4 ; [+3]
     5315 MOVE                             R24 R4
     5316 GETIMPORT                        R23 K4 [tostring]
     5318 CALL                             R23 1 1
     5319 MOVE                             R21 R23
     5320 LOADK                            R22 K279 ["/localization/translation"]
     5321 CONCAT                           R19 R20 R22
     5322 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5324 LOADK                            R20 K44 [""]
     5325 GETUPVAL                         R26 1
     5326 FASTCALL1                        TOSTRING R26 ; [+2]
     5327 GETIMPORT                        R25 K4 [tostring]
     5329 CALL                             R25 1 1
     5330 MOVE                             R21 R25
     5331 LOADK                            R22 K356 ["developer-products/"]
     5332 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5334 FASTCALL1                        TOSTRING R26 ; [+2]
     5335 GETIMPORT                        R25 K4 [tostring]
     5337 CALL                             R25 1 1
     5338 MOVE                             R23 R25
     5339 LOADK                            R24 K44 [""]
     5340 CONCAT                           R19 R20 R24
     5341 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5343 RETURN                           R18 1
     5344 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5346 JUMPIFNOTEQKN                    R18 K357 [57] ; [+124]
     5348 DUPTABLE                         R18 K359 [{["id"], ["eventType"] = "TranslationDeveloperProductDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5349 GETTABLEKS                       R19 R2 K19 ["id"]
     5351 SETTABLEKS                       R19 R18 K19 ["id"]
     5353 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5355 GETIMPORT                        R21 K35 [pcall]
     5357 NEWCLOSURE                       R22 P6
     5358 CAPTURE                          VAL R20
     5359 CAPTURE                          VAL R3
     5360 CALL                             R21 1 2
     5361 JUMPIFNOT                        R21 ; [+2]
     5362 MOVE                             R19 R22
     5363 JUMP                             ; [+1]
     5364 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5365 SETTABLEKS                       R19 R18 K23 ["date"]
     5367 MOVE                             R19 R12
     5368 LOADK                            R20 K360 ["Description.TranslationDeveloperProductDescription"]
     5369 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5370 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5372 JUMPIFNOT                        R24 ; [+5]
     5373 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5375 GETTABLEKS                       R23 R24 K245 ["Language"]
     5377 JUMPIF                           R23 ; [+1]
     5378 LOADK                            R23 K44 [""]
     5379 LOADK                            R24 K44 [""]
     5380 FASTCALL1                        TOSTRING R23 ; [+3]
     5381 MOVE                             R28 R23
     5382 GETIMPORT                        R27 K4 [tostring]
     5384 CALL                             R27 1 1
     5385 MOVE                             R25 R27
     5386 LOADK                            R26 K44 [""]
     5387 CONCAT                           R22 R24 R26
     5388 SETTABLEKS                       R22 R21 K243 ["language"]
     5390 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5392 JUMPIFNOT                        R24 ; [+5]
     5393 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5395 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5397 JUMPIF                           R23 ; [+1]
     5398 LOADK                            R23 K44 [""]
     5399 LOADK                            R24 K44 [""]
     5400 FASTCALL1                        TOSTRING R23 ; [+3]
     5401 MOVE                             R28 R23
     5402 GETIMPORT                        R27 K4 [tostring]
     5404 CALL                             R27 1 1
     5405 MOVE                             R25 R27
     5406 LOADK                            R26 K44 [""]
     5407 CONCAT                           R22 R24 R26
     5408 SETTABLEKS                       R22 R21 K353 ["productName"]
     5410 CALL                             R19 2 1
     5411 SETTABLEKS                       R19 R18 K24 ["translation"]
     5413 GETTABLEKS                       R19 R2 K14 ["userId"]
     5415 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5417 MOVE                             R19 R0
     5418 GETTABLEKS                       R20 R2 K14 ["userId"]
     5420 CALL                             R19 1 1
     5421 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5423 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5425 ORK                              R19 R20 K18 [0]
     5426 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5428 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5430 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5432 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5434 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5436 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5438 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5440 LOADK                            R20 K44 [""]
     5441 FASTCALL1                        TOSTRING R4 ; [+3]
     5442 MOVE                             R24 R4
     5443 GETIMPORT                        R23 K4 [tostring]
     5445 CALL                             R23 1 1
     5446 MOVE                             R21 R23
     5447 LOADK                            R22 K279 ["/localization/translation"]
     5448 CONCAT                           R19 R20 R22
     5449 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5451 LOADK                            R20 K44 [""]
     5452 GETUPVAL                         R26 1
     5453 FASTCALL1                        TOSTRING R26 ; [+2]
     5454 GETIMPORT                        R25 K4 [tostring]
     5456 CALL                             R25 1 1
     5457 MOVE                             R21 R25
     5458 LOADK                            R22 K356 ["developer-products/"]
     5459 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5461 FASTCALL1                        TOSTRING R26 ; [+2]
     5462 GETIMPORT                        R25 K4 [tostring]
     5464 CALL                             R25 1 1
     5465 MOVE                             R23 R25
     5466 LOADK                            R24 K44 [""]
     5467 CONCAT                           R19 R20 R24
     5468 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5470 RETURN                           R18 1
     5471 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5473 JUMPIFNOTEQKN                    R18 K361 [58] ; [+124]
     5475 DUPTABLE                         R18 K363 [{["id"], ["eventType"] = "TranslationDeveloperProductIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5476 GETTABLEKS                       R19 R2 K19 ["id"]
     5478 SETTABLEKS                       R19 R18 K19 ["id"]
     5480 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5482 GETIMPORT                        R21 K35 [pcall]
     5484 NEWCLOSURE                       R22 P6
     5485 CAPTURE                          VAL R20
     5486 CAPTURE                          VAL R3
     5487 CALL                             R21 1 2
     5488 JUMPIFNOT                        R21 ; [+2]
     5489 MOVE                             R19 R22
     5490 JUMP                             ; [+1]
     5491 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5492 SETTABLEKS                       R19 R18 K23 ["date"]
     5494 MOVE                             R19 R12
     5495 LOADK                            R20 K364 ["Description.TranslationDeveloperProductIconAdded"]
     5496 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5497 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5499 JUMPIFNOT                        R24 ; [+5]
     5500 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5502 GETTABLEKS                       R23 R24 K245 ["Language"]
     5504 JUMPIF                           R23 ; [+1]
     5505 LOADK                            R23 K44 [""]
     5506 LOADK                            R24 K44 [""]
     5507 FASTCALL1                        TOSTRING R23 ; [+3]
     5508 MOVE                             R28 R23
     5509 GETIMPORT                        R27 K4 [tostring]
     5511 CALL                             R27 1 1
     5512 MOVE                             R25 R27
     5513 LOADK                            R26 K44 [""]
     5514 CONCAT                           R22 R24 R26
     5515 SETTABLEKS                       R22 R21 K243 ["language"]
     5517 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5519 JUMPIFNOT                        R24 ; [+5]
     5520 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5522 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5524 JUMPIF                           R23 ; [+1]
     5525 LOADK                            R23 K44 [""]
     5526 LOADK                            R24 K44 [""]
     5527 FASTCALL1                        TOSTRING R23 ; [+3]
     5528 MOVE                             R28 R23
     5529 GETIMPORT                        R27 K4 [tostring]
     5531 CALL                             R27 1 1
     5532 MOVE                             R25 R27
     5533 LOADK                            R26 K44 [""]
     5534 CONCAT                           R22 R24 R26
     5535 SETTABLEKS                       R22 R21 K353 ["productName"]
     5537 CALL                             R19 2 1
     5538 SETTABLEKS                       R19 R18 K24 ["translation"]
     5540 GETTABLEKS                       R19 R2 K14 ["userId"]
     5542 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5544 MOVE                             R19 R0
     5545 GETTABLEKS                       R20 R2 K14 ["userId"]
     5547 CALL                             R19 1 1
     5548 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5550 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5552 ORK                              R19 R20 K18 [0]
     5553 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5555 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5557 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5559 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5561 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5563 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5565 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5567 LOADK                            R20 K44 [""]
     5568 FASTCALL1                        TOSTRING R4 ; [+3]
     5569 MOVE                             R24 R4
     5570 GETIMPORT                        R23 K4 [tostring]
     5572 CALL                             R23 1 1
     5573 MOVE                             R21 R23
     5574 LOADK                            R22 K279 ["/localization/translation"]
     5575 CONCAT                           R19 R20 R22
     5576 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5578 LOADK                            R20 K44 [""]
     5579 GETUPVAL                         R26 1
     5580 FASTCALL1                        TOSTRING R26 ; [+2]
     5581 GETIMPORT                        R25 K4 [tostring]
     5583 CALL                             R25 1 1
     5584 MOVE                             R21 R25
     5585 LOADK                            R22 K356 ["developer-products/"]
     5586 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5588 FASTCALL1                        TOSTRING R26 ; [+2]
     5589 GETIMPORT                        R25 K4 [tostring]
     5591 CALL                             R25 1 1
     5592 MOVE                             R23 R25
     5593 LOADK                            R24 K44 [""]
     5594 CONCAT                           R19 R20 R24
     5595 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5597 RETURN                           R18 1
     5598 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5600 JUMPIFNOTEQKN                    R18 K365 [59] ; [+124]
     5602 DUPTABLE                         R18 K367 [{["id"], ["eventType"] = "TranslationDeveloperProductName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5603 GETTABLEKS                       R19 R2 K19 ["id"]
     5605 SETTABLEKS                       R19 R18 K19 ["id"]
     5607 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5609 GETIMPORT                        R21 K35 [pcall]
     5611 NEWCLOSURE                       R22 P6
     5612 CAPTURE                          VAL R20
     5613 CAPTURE                          VAL R3
     5614 CALL                             R21 1 2
     5615 JUMPIFNOT                        R21 ; [+2]
     5616 MOVE                             R19 R22
     5617 JUMP                             ; [+1]
     5618 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5619 SETTABLEKS                       R19 R18 K23 ["date"]
     5621 MOVE                             R19 R12
     5622 LOADK                            R20 K368 ["Description.TranslationDeveloperProductName"]
     5623 DUPTABLE                         R21 K354 [{"language", "productName"}]
     5624 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5626 JUMPIFNOT                        R24 ; [+5]
     5627 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5629 GETTABLEKS                       R23 R24 K245 ["Language"]
     5631 JUMPIF                           R23 ; [+1]
     5632 LOADK                            R23 K44 [""]
     5633 LOADK                            R24 K44 [""]
     5634 FASTCALL1                        TOSTRING R23 ; [+3]
     5635 MOVE                             R28 R23
     5636 GETIMPORT                        R27 K4 [tostring]
     5638 CALL                             R27 1 1
     5639 MOVE                             R25 R27
     5640 LOADK                            R26 K44 [""]
     5641 CONCAT                           R22 R24 R26
     5642 SETTABLEKS                       R22 R21 K243 ["language"]
     5644 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5646 JUMPIFNOT                        R24 ; [+5]
     5647 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5649 GETTABLEKS                       R23 R24 K355 ["ProductName"]
     5651 JUMPIF                           R23 ; [+1]
     5652 LOADK                            R23 K44 [""]
     5653 LOADK                            R24 K44 [""]
     5654 FASTCALL1                        TOSTRING R23 ; [+3]
     5655 MOVE                             R28 R23
     5656 GETIMPORT                        R27 K4 [tostring]
     5658 CALL                             R27 1 1
     5659 MOVE                             R25 R27
     5660 LOADK                            R26 K44 [""]
     5661 CONCAT                           R22 R24 R26
     5662 SETTABLEKS                       R22 R21 K353 ["productName"]
     5664 CALL                             R19 2 1
     5665 SETTABLEKS                       R19 R18 K24 ["translation"]
     5667 GETTABLEKS                       R19 R2 K14 ["userId"]
     5669 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5671 MOVE                             R19 R0
     5672 GETTABLEKS                       R20 R2 K14 ["userId"]
     5674 CALL                             R19 1 1
     5675 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5677 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5679 ORK                              R19 R20 K18 [0]
     5680 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5682 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5684 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5686 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5688 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5690 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5692 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5694 LOADK                            R20 K44 [""]
     5695 FASTCALL1                        TOSTRING R4 ; [+3]
     5696 MOVE                             R24 R4
     5697 GETIMPORT                        R23 K4 [tostring]
     5699 CALL                             R23 1 1
     5700 MOVE                             R21 R23
     5701 LOADK                            R22 K279 ["/localization/translation"]
     5702 CONCAT                           R19 R20 R22
     5703 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5705 LOADK                            R20 K44 [""]
     5706 GETUPVAL                         R26 1
     5707 FASTCALL1                        TOSTRING R26 ; [+2]
     5708 GETIMPORT                        R25 K4 [tostring]
     5710 CALL                             R25 1 1
     5711 MOVE                             R21 R25
     5712 LOADK                            R22 K356 ["developer-products/"]
     5713 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5715 FASTCALL1                        TOSTRING R26 ; [+2]
     5716 GETIMPORT                        R25 K4 [tostring]
     5718 CALL                             R25 1 1
     5719 MOVE                             R23 R25
     5720 LOADK                            R24 K44 [""]
     5721 CONCAT                           R19 R20 R24
     5722 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5724 RETURN                           R18 1
     5725 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5727 JUMPIFNOTEQKN                    R18 K369 [60] ; [+124]
     5729 DUPTABLE                         R18 K372 [{["id"], ["eventType"] = "TranslationGamePassIconDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5730 GETTABLEKS                       R19 R2 K19 ["id"]
     5732 SETTABLEKS                       R19 R18 K19 ["id"]
     5734 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5736 GETIMPORT                        R21 K35 [pcall]
     5738 NEWCLOSURE                       R22 P6
     5739 CAPTURE                          VAL R20
     5740 CAPTURE                          VAL R3
     5741 CALL                             R21 1 2
     5742 JUMPIFNOT                        R21 ; [+2]
     5743 MOVE                             R19 R22
     5744 JUMP                             ; [+1]
     5745 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5746 SETTABLEKS                       R19 R18 K23 ["date"]
     5748 MOVE                             R19 R12
     5749 LOADK                            R20 K373 ["Description.TranslationGamePassIconDeleted"]
     5750 DUPTABLE                         R21 K375 [{"language", "passName"}]
     5751 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5753 JUMPIFNOT                        R24 ; [+5]
     5754 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5756 GETTABLEKS                       R23 R24 K245 ["Language"]
     5758 JUMPIF                           R23 ; [+1]
     5759 LOADK                            R23 K44 [""]
     5760 LOADK                            R24 K44 [""]
     5761 FASTCALL1                        TOSTRING R23 ; [+3]
     5762 MOVE                             R28 R23
     5763 GETIMPORT                        R27 K4 [tostring]
     5765 CALL                             R27 1 1
     5766 MOVE                             R25 R27
     5767 LOADK                            R26 K44 [""]
     5768 CONCAT                           R22 R24 R26
     5769 SETTABLEKS                       R22 R21 K243 ["language"]
     5771 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5773 JUMPIFNOT                        R24 ; [+5]
     5774 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5776 GETTABLEKS                       R23 R24 K376 ["PassName"]
     5778 JUMPIF                           R23 ; [+1]
     5779 LOADK                            R23 K44 [""]
     5780 LOADK                            R24 K44 [""]
     5781 FASTCALL1                        TOSTRING R23 ; [+3]
     5782 MOVE                             R28 R23
     5783 GETIMPORT                        R27 K4 [tostring]
     5785 CALL                             R27 1 1
     5786 MOVE                             R25 R27
     5787 LOADK                            R26 K44 [""]
     5788 CONCAT                           R22 R24 R26
     5789 SETTABLEKS                       R22 R21 K374 ["passName"]
     5791 CALL                             R19 2 1
     5792 SETTABLEKS                       R19 R18 K24 ["translation"]
     5794 GETTABLEKS                       R19 R2 K14 ["userId"]
     5796 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5798 MOVE                             R19 R0
     5799 GETTABLEKS                       R20 R2 K14 ["userId"]
     5801 CALL                             R19 1 1
     5802 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5804 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5806 ORK                              R19 R20 K18 [0]
     5807 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5809 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5811 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5813 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5815 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5817 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5819 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5821 LOADK                            R20 K44 [""]
     5822 FASTCALL1                        TOSTRING R4 ; [+3]
     5823 MOVE                             R24 R4
     5824 GETIMPORT                        R23 K4 [tostring]
     5826 CALL                             R23 1 1
     5827 MOVE                             R21 R23
     5828 LOADK                            R22 K279 ["/localization/translation"]
     5829 CONCAT                           R19 R20 R22
     5830 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5832 LOADK                            R20 K44 [""]
     5833 GETUPVAL                         R26 1
     5834 FASTCALL1                        TOSTRING R26 ; [+2]
     5835 GETIMPORT                        R25 K4 [tostring]
     5837 CALL                             R25 1 1
     5838 MOVE                             R21 R25
     5839 LOADK                            R22 K377 ["game-pass/"]
     5840 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5842 FASTCALL1                        TOSTRING R26 ; [+2]
     5843 GETIMPORT                        R25 K4 [tostring]
     5845 CALL                             R25 1 1
     5846 MOVE                             R23 R25
     5847 LOADK                            R24 K44 [""]
     5848 CONCAT                           R19 R20 R24
     5849 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5851 RETURN                           R18 1
     5852 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5854 JUMPIFNOTEQKN                    R18 K378 [61] ; [+124]
     5856 DUPTABLE                         R18 K380 [{["id"], ["eventType"] = "TranslationGamePassDescription", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5857 GETTABLEKS                       R19 R2 K19 ["id"]
     5859 SETTABLEKS                       R19 R18 K19 ["id"]
     5861 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5863 GETIMPORT                        R21 K35 [pcall]
     5865 NEWCLOSURE                       R22 P6
     5866 CAPTURE                          VAL R20
     5867 CAPTURE                          VAL R3
     5868 CALL                             R21 1 2
     5869 JUMPIFNOT                        R21 ; [+2]
     5870 MOVE                             R19 R22
     5871 JUMP                             ; [+1]
     5872 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     5873 SETTABLEKS                       R19 R18 K23 ["date"]
     5875 MOVE                             R19 R12
     5876 LOADK                            R20 K381 ["Description.TranslationGamePassDescription"]
     5877 DUPTABLE                         R21 K375 [{"language", "passName"}]
     5878 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5880 JUMPIFNOT                        R24 ; [+5]
     5881 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5883 GETTABLEKS                       R23 R24 K245 ["Language"]
     5885 JUMPIF                           R23 ; [+1]
     5886 LOADK                            R23 K44 [""]
     5887 LOADK                            R24 K44 [""]
     5888 FASTCALL1                        TOSTRING R23 ; [+3]
     5889 MOVE                             R28 R23
     5890 GETIMPORT                        R27 K4 [tostring]
     5892 CALL                             R27 1 1
     5893 MOVE                             R25 R27
     5894 LOADK                            R26 K44 [""]
     5895 CONCAT                           R22 R24 R26
     5896 SETTABLEKS                       R22 R21 K243 ["language"]
     5898 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5900 JUMPIFNOT                        R24 ; [+5]
     5901 GETTABLEKS                       R24 R2 K42 ["metaData"]
     5903 GETTABLEKS                       R23 R24 K376 ["PassName"]
     5905 JUMPIF                           R23 ; [+1]
     5906 LOADK                            R23 K44 [""]
     5907 LOADK                            R24 K44 [""]
     5908 FASTCALL1                        TOSTRING R23 ; [+3]
     5909 MOVE                             R28 R23
     5910 GETIMPORT                        R27 K4 [tostring]
     5912 CALL                             R27 1 1
     5913 MOVE                             R25 R27
     5914 LOADK                            R26 K44 [""]
     5915 CONCAT                           R22 R24 R26
     5916 SETTABLEKS                       R22 R21 K374 ["passName"]
     5918 CALL                             R19 2 1
     5919 SETTABLEKS                       R19 R18 K24 ["translation"]
     5921 GETTABLEKS                       R19 R2 K14 ["userId"]
     5923 SETTABLEKS                       R19 R18 K25 ["actorId"]
     5925 MOVE                             R19 R0
     5926 GETTABLEKS                       R20 R2 K14 ["userId"]
     5928 CALL                             R19 1 1
     5929 SETTABLEKS                       R19 R18 K26 ["actorName"]
     5931 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5933 ORK                              R19 R20 K18 [0]
     5934 SETTABLEKS                       R19 R18 K29 ["iconId"]
     5936 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5938 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5940 GETTABLEKS                       R19 R2 K30 ["headerText"]
     5942 SETTABLEKS                       R19 R18 K30 ["headerText"]
     5944 GETTABLEKS                       R19 R2 K31 ["footerText"]
     5946 SETTABLEKS                       R19 R18 K31 ["footerText"]
     5948 LOADK                            R20 K44 [""]
     5949 FASTCALL1                        TOSTRING R4 ; [+3]
     5950 MOVE                             R24 R4
     5951 GETIMPORT                        R23 K4 [tostring]
     5953 CALL                             R23 1 1
     5954 MOVE                             R21 R23
     5955 LOADK                            R22 K279 ["/localization/translation"]
     5956 CONCAT                           R19 R20 R22
     5957 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     5959 LOADK                            R20 K44 [""]
     5960 GETUPVAL                         R26 1
     5961 FASTCALL1                        TOSTRING R26 ; [+2]
     5962 GETIMPORT                        R25 K4 [tostring]
     5964 CALL                             R25 1 1
     5965 MOVE                             R21 R25
     5966 LOADK                            R22 K377 ["game-pass/"]
     5967 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5969 FASTCALL1                        TOSTRING R26 ; [+2]
     5970 GETIMPORT                        R25 K4 [tostring]
     5972 CALL                             R25 1 1
     5973 MOVE                             R23 R25
     5974 LOADK                            R24 K44 [""]
     5975 CONCAT                           R19 R20 R24
     5976 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     5978 RETURN                           R18 1
     5979 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5981 JUMPIFNOTEQKN                    R18 K382 [62] ; [+124]
     5983 DUPTABLE                         R18 K384 [{["id"], ["eventType"] = "TranslationGamePassIconAdded", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     5984 GETTABLEKS                       R19 R2 K19 ["id"]
     5986 SETTABLEKS                       R19 R18 K19 ["id"]
     5988 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     5990 GETIMPORT                        R21 K35 [pcall]
     5992 NEWCLOSURE                       R22 P6
     5993 CAPTURE                          VAL R20
     5994 CAPTURE                          VAL R3
     5995 CALL                             R21 1 2
     5996 JUMPIFNOT                        R21 ; [+2]
     5997 MOVE                             R19 R22
     5998 JUMP                             ; [+1]
     5999 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6000 SETTABLEKS                       R19 R18 K23 ["date"]
     6002 MOVE                             R19 R12
     6003 LOADK                            R20 K385 ["Description.TranslationGamePassIconAdded"]
     6004 DUPTABLE                         R21 K375 [{"language", "passName"}]
     6005 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6007 JUMPIFNOT                        R24 ; [+5]
     6008 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6010 GETTABLEKS                       R23 R24 K245 ["Language"]
     6012 JUMPIF                           R23 ; [+1]
     6013 LOADK                            R23 K44 [""]
     6014 LOADK                            R24 K44 [""]
     6015 FASTCALL1                        TOSTRING R23 ; [+3]
     6016 MOVE                             R28 R23
     6017 GETIMPORT                        R27 K4 [tostring]
     6019 CALL                             R27 1 1
     6020 MOVE                             R25 R27
     6021 LOADK                            R26 K44 [""]
     6022 CONCAT                           R22 R24 R26
     6023 SETTABLEKS                       R22 R21 K243 ["language"]
     6025 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6027 JUMPIFNOT                        R24 ; [+5]
     6028 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6030 GETTABLEKS                       R23 R24 K376 ["PassName"]
     6032 JUMPIF                           R23 ; [+1]
     6033 LOADK                            R23 K44 [""]
     6034 LOADK                            R24 K44 [""]
     6035 FASTCALL1                        TOSTRING R23 ; [+3]
     6036 MOVE                             R28 R23
     6037 GETIMPORT                        R27 K4 [tostring]
     6039 CALL                             R27 1 1
     6040 MOVE                             R25 R27
     6041 LOADK                            R26 K44 [""]
     6042 CONCAT                           R22 R24 R26
     6043 SETTABLEKS                       R22 R21 K374 ["passName"]
     6045 CALL                             R19 2 1
     6046 SETTABLEKS                       R19 R18 K24 ["translation"]
     6048 GETTABLEKS                       R19 R2 K14 ["userId"]
     6050 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6052 MOVE                             R19 R0
     6053 GETTABLEKS                       R20 R2 K14 ["userId"]
     6055 CALL                             R19 1 1
     6056 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6058 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6060 ORK                              R19 R20 K18 [0]
     6061 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6063 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6065 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6067 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6069 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6071 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6073 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6075 LOADK                            R20 K44 [""]
     6076 FASTCALL1                        TOSTRING R4 ; [+3]
     6077 MOVE                             R24 R4
     6078 GETIMPORT                        R23 K4 [tostring]
     6080 CALL                             R23 1 1
     6081 MOVE                             R21 R23
     6082 LOADK                            R22 K279 ["/localization/translation"]
     6083 CONCAT                           R19 R20 R22
     6084 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6086 LOADK                            R20 K44 [""]
     6087 GETUPVAL                         R26 1
     6088 FASTCALL1                        TOSTRING R26 ; [+2]
     6089 GETIMPORT                        R25 K4 [tostring]
     6091 CALL                             R25 1 1
     6092 MOVE                             R21 R25
     6093 LOADK                            R22 K377 ["game-pass/"]
     6094 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6096 FASTCALL1                        TOSTRING R26 ; [+2]
     6097 GETIMPORT                        R25 K4 [tostring]
     6099 CALL                             R25 1 1
     6100 MOVE                             R23 R25
     6101 LOADK                            R24 K44 [""]
     6102 CONCAT                           R19 R20 R24
     6103 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     6105 RETURN                           R18 1
     6106 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6108 JUMPIFNOTEQKN                    R18 K386 [63] ; [+124]
     6110 DUPTABLE                         R18 K388 [{["id"], ["eventType"] = "TranslationGamePassName", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6111 GETTABLEKS                       R19 R2 K19 ["id"]
     6113 SETTABLEKS                       R19 R18 K19 ["id"]
     6115 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6117 GETIMPORT                        R21 K35 [pcall]
     6119 NEWCLOSURE                       R22 P6
     6120 CAPTURE                          VAL R20
     6121 CAPTURE                          VAL R3
     6122 CALL                             R21 1 2
     6123 JUMPIFNOT                        R21 ; [+2]
     6124 MOVE                             R19 R22
     6125 JUMP                             ; [+1]
     6126 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6127 SETTABLEKS                       R19 R18 K23 ["date"]
     6129 MOVE                             R19 R12
     6130 LOADK                            R20 K389 ["Description.TranslationGamePassName"]
     6131 DUPTABLE                         R21 K375 [{"language", "passName"}]
     6132 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6134 JUMPIFNOT                        R24 ; [+5]
     6135 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6137 GETTABLEKS                       R23 R24 K245 ["Language"]
     6139 JUMPIF                           R23 ; [+1]
     6140 LOADK                            R23 K44 [""]
     6141 LOADK                            R24 K44 [""]
     6142 FASTCALL1                        TOSTRING R23 ; [+3]
     6143 MOVE                             R28 R23
     6144 GETIMPORT                        R27 K4 [tostring]
     6146 CALL                             R27 1 1
     6147 MOVE                             R25 R27
     6148 LOADK                            R26 K44 [""]
     6149 CONCAT                           R22 R24 R26
     6150 SETTABLEKS                       R22 R21 K243 ["language"]
     6152 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6154 JUMPIFNOT                        R24 ; [+5]
     6155 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6157 GETTABLEKS                       R23 R24 K376 ["PassName"]
     6159 JUMPIF                           R23 ; [+1]
     6160 LOADK                            R23 K44 [""]
     6161 LOADK                            R24 K44 [""]
     6162 FASTCALL1                        TOSTRING R23 ; [+3]
     6163 MOVE                             R28 R23
     6164 GETIMPORT                        R27 K4 [tostring]
     6166 CALL                             R27 1 1
     6167 MOVE                             R25 R27
     6168 LOADK                            R26 K44 [""]
     6169 CONCAT                           R22 R24 R26
     6170 SETTABLEKS                       R22 R21 K374 ["passName"]
     6172 CALL                             R19 2 1
     6173 SETTABLEKS                       R19 R18 K24 ["translation"]
     6175 GETTABLEKS                       R19 R2 K14 ["userId"]
     6177 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6179 MOVE                             R19 R0
     6180 GETTABLEKS                       R20 R2 K14 ["userId"]
     6182 CALL                             R19 1 1
     6183 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6185 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6187 ORK                              R19 R20 K18 [0]
     6188 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6190 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6192 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6194 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6196 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6198 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6200 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6202 LOADK                            R20 K44 [""]
     6203 FASTCALL1                        TOSTRING R4 ; [+3]
     6204 MOVE                             R24 R4
     6205 GETIMPORT                        R23 K4 [tostring]
     6207 CALL                             R23 1 1
     6208 MOVE                             R21 R23
     6209 LOADK                            R22 K279 ["/localization/translation"]
     6210 CONCAT                           R19 R20 R22
     6211 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6213 LOADK                            R20 K44 [""]
     6214 GETUPVAL                         R26 1
     6215 FASTCALL1                        TOSTRING R26 ; [+2]
     6216 GETIMPORT                        R25 K4 [tostring]
     6218 CALL                             R25 1 1
     6219 MOVE                             R21 R25
     6220 LOADK                            R22 K377 ["game-pass/"]
     6221 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6223 FASTCALL1                        TOSTRING R26 ; [+2]
     6224 GETIMPORT                        R25 K4 [tostring]
     6226 CALL                             R25 1 1
     6227 MOVE                             R23 R25
     6228 LOADK                            R24 K44 [""]
     6229 CONCAT                           R19 R20 R24
     6230 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     6232 RETURN                           R18 1
     6233 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6235 JUMPIFNOTEQKN                    R18 K390 [64] ; [+87]
     6237 DUPTABLE                         R18 K393 [{["id"], ["eventType"] = "UserTranslator", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6238 GETTABLEKS                       R19 R2 K19 ["id"]
     6240 SETTABLEKS                       R19 R18 K19 ["id"]
     6242 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6244 GETIMPORT                        R21 K35 [pcall]
     6246 NEWCLOSURE                       R22 P6
     6247 CAPTURE                          VAL R20
     6248 CAPTURE                          VAL R3
     6249 CALL                             R21 1 2
     6250 JUMPIFNOT                        R21 ; [+2]
     6251 MOVE                             R19 R22
     6252 JUMP                             ; [+1]
     6253 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6254 SETTABLEKS                       R19 R18 K23 ["date"]
     6256 MOVE                             R19 R12
     6257 LOADK                            R20 K394 ["Description.UserTranslator"]
     6258 DUPTABLE                         R21 K396 [{"userName"}]
     6259 MOVE                             R23 R0
     6260 GETTABLEKS                       R25 R2 K8 ["resourceId"]
     6262 JUMPIFNOT                        R25 ; [+3]
     6263 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6265 JUMPIF                           R24 ; [+1]
     6266 LOADN                            R24 -1
     6267 CALL                             R23 1 1
     6268 LOADK                            R24 K44 [""]
     6269 FASTCALL1                        TOSTRING R23 ; [+3]
     6270 MOVE                             R28 R23
     6271 GETIMPORT                        R27 K4 [tostring]
     6273 CALL                             R27 1 1
     6274 MOVE                             R25 R27
     6275 LOADK                            R26 K44 [""]
     6276 CONCAT                           R22 R24 R26
     6277 SETTABLEKS                       R22 R21 K395 ["userName"]
     6279 CALL                             R19 2 1
     6280 SETTABLEKS                       R19 R18 K24 ["translation"]
     6282 GETTABLEKS                       R19 R2 K14 ["userId"]
     6284 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6286 MOVE                             R19 R0
     6287 GETTABLEKS                       R20 R2 K14 ["userId"]
     6289 CALL                             R19 1 1
     6290 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6292 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6294 ORK                              R19 R20 K18 [0]
     6295 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6297 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6299 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6301 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6303 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6305 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6307 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6309 LOADK                            R20 K44 [""]
     6310 FASTCALL1                        TOSTRING R4 ; [+3]
     6311 MOVE                             R24 R4
     6312 GETIMPORT                        R23 K4 [tostring]
     6314 CALL                             R23 1 1
     6315 MOVE                             R21 R23
     6316 LOADK                            R22 K248 ["/localization"]
     6317 CONCAT                           R19 R20 R22
     6318 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6320 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     6322 RETURN                           R18 1
     6323 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6325 JUMPIFNOTEQKN                    R18 K397 [65] ; [+87]
     6327 DUPTABLE                         R18 K400 [{["id"], ["eventType"] = "GroupTranslator", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     6328 GETTABLEKS                       R19 R2 K19 ["id"]
     6330 SETTABLEKS                       R19 R18 K19 ["id"]
     6332 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6334 GETIMPORT                        R21 K35 [pcall]
     6336 NEWCLOSURE                       R22 P6
     6337 CAPTURE                          VAL R20
     6338 CAPTURE                          VAL R3
     6339 CALL                             R21 1 2
     6340 JUMPIFNOT                        R21 ; [+2]
     6341 MOVE                             R19 R22
     6342 JUMP                             ; [+1]
     6343 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6344 SETTABLEKS                       R19 R18 K23 ["date"]
     6346 MOVE                             R19 R12
     6347 LOADK                            R20 K401 ["Description.GroupTranslator"]
     6348 DUPTABLE                         R21 K403 [{"groupName"}]
     6349 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6351 JUMPIFNOT                        R24 ; [+5]
     6352 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6354 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     6356 JUMPIF                           R23 ; [+1]
     6357 LOADK                            R23 K44 [""]
     6358 LOADK                            R24 K44 [""]
     6359 FASTCALL1                        TOSTRING R23 ; [+3]
     6360 MOVE                             R28 R23
     6361 GETIMPORT                        R27 K4 [tostring]
     6363 CALL                             R27 1 1
     6364 MOVE                             R25 R27
     6365 LOADK                            R26 K44 [""]
     6366 CONCAT                           R22 R24 R26
     6367 SETTABLEKS                       R22 R21 K402 ["groupName"]
     6369 CALL                             R19 2 1
     6370 SETTABLEKS                       R19 R18 K24 ["translation"]
     6372 GETTABLEKS                       R19 R2 K14 ["userId"]
     6374 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6376 MOVE                             R19 R0
     6377 GETTABLEKS                       R20 R2 K14 ["userId"]
     6379 CALL                             R19 1 1
     6380 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6382 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6384 ORK                              R19 R20 K18 [0]
     6385 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6387 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6389 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6391 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6393 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6395 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6397 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6399 LOADK                            R20 K44 [""]
     6400 FASTCALL1                        TOSTRING R4 ; [+3]
     6401 MOVE                             R24 R4
     6402 GETIMPORT                        R23 K4 [tostring]
     6404 CALL                             R23 1 1
     6405 MOVE                             R21 R23
     6406 LOADK                            R22 K248 ["/localization"]
     6407 CONCAT                           R19 R20 R22
     6408 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6410 SETTABLEKS                       R11 R18 K273 ["viewOnRobloxLink"]
     6412 RETURN                           R18 1
     6413 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6415 JUMPIFNOTEQKN                    R18 K405 [66] ; [+94]
     6417 DUPTABLE                         R18 K408 [{["id"], ["eventType"] = "ExperienceAdvertisement", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
     6418 GETTABLEKS                       R19 R2 K19 ["id"]
     6420 SETTABLEKS                       R19 R18 K19 ["id"]
     6422 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6424 GETIMPORT                        R21 K35 [pcall]
     6426 NEWCLOSURE                       R22 P6
     6427 CAPTURE                          VAL R20
     6428 CAPTURE                          VAL R3
     6429 CALL                             R21 1 2
     6430 JUMPIFNOT                        R21 ; [+2]
     6431 MOVE                             R19 R22
     6432 JUMP                             ; [+1]
     6433 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6434 SETTABLEKS                       R19 R18 K23 ["date"]
     6436 MOVE                             R19 R12
     6437 LOADK                            R20 K409 ["Description.ExperienceAdvertisement"]
     6438 DUPTABLE                         R21 K157 [{"action"}]
     6439 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6441 JUMPIFNOT                        R26 ; [+5]
     6442 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6444 GETTABLEKS                       R25 R26 K43 ["Action"]
     6446 JUMPIF                           R25 ; [+1]
     6447 LOADK                            R25 K44 [""]
     6448 GETIMPORT                        R26 K47 [string.lower]
     6450 FASTCALL1                        TOSTRING R25 ; [+3]
     6451 MOVE                             R28 R25
     6452 GETIMPORT                        R27 K4 [tostring]
     6454 CALL                             R27 1 1
     6455 CALL                             R26 1 1
     6456 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6458 LOADB                            R24 1
     6459 JUMP                             ; [+1]
     6460 LOADB                            R24 0
     6461 JUMPIFNOT                        R24 ; [+4]
     6462 MOVE                             R23 R12
     6463 LOADK                            R24 K410 ["Description.ActionCreated"]
     6464 CALL                             R23 1 1
     6465 JUMPIF                           R23 ; [+3]
     6466 MOVE                             R23 R12
     6467 LOADK                            R24 K247 ["Description.ActionRemoved"]
     6468 CALL                             R23 1 1
     6469 LOADK                            R24 K44 [""]
     6470 FASTCALL1                        TOSTRING R23 ; [+3]
     6471 MOVE                             R28 R23
     6472 GETIMPORT                        R27 K4 [tostring]
     6474 CALL                             R27 1 1
     6475 MOVE                             R25 R27
     6476 LOADK                            R26 K44 [""]
     6477 CONCAT                           R22 R24 R26
     6478 SETTABLEKS                       R22 R21 K156 ["action"]
     6480 CALL                             R19 2 1
     6481 SETTABLEKS                       R19 R18 K24 ["translation"]
     6483 GETTABLEKS                       R19 R2 K14 ["userId"]
     6485 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6487 MOVE                             R19 R0
     6488 GETTABLEKS                       R20 R2 K14 ["userId"]
     6490 CALL                             R19 1 1
     6491 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6493 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6495 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6497 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6499 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6501 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6503 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6505 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6507 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6509 RETURN                           R18 1
     6510 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6512 JUMPIFNOTEQKN                    R18 K411 [67] ; [+105]
     6514 DUPTABLE                         R18 K413 [{["id"], ["eventType"] = "MonetizationSettingsAccessType", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6515 GETTABLEKS                       R19 R2 K19 ["id"]
     6517 SETTABLEKS                       R19 R18 K19 ["id"]
     6519 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6521 GETIMPORT                        R21 K35 [pcall]
     6523 NEWCLOSURE                       R22 P6
     6524 CAPTURE                          VAL R20
     6525 CAPTURE                          VAL R3
     6526 CALL                             R21 1 2
     6527 JUMPIFNOT                        R21 ; [+2]
     6528 MOVE                             R19 R22
     6529 JUMP                             ; [+1]
     6530 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6531 SETTABLEKS                       R19 R18 K23 ["date"]
     6533 MOVE                             R19 R12
     6534 LOADK                            R20 K414 ["Description.MonetizationSettingsAccessType"]
     6535 DUPTABLE                         R21 K157 [{"action"}]
     6536 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6538 JUMPIFNOT                        R26 ; [+5]
     6539 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6541 GETTABLEKS                       R25 R26 K43 ["Action"]
     6543 JUMPIF                           R25 ; [+1]
     6544 LOADK                            R25 K44 [""]
     6545 GETIMPORT                        R26 K47 [string.lower]
     6547 FASTCALL1                        TOSTRING R25 ; [+3]
     6548 MOVE                             R28 R25
     6549 GETIMPORT                        R27 K4 [tostring]
     6551 CALL                             R27 1 1
     6552 CALL                             R26 1 1
     6553 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6555 LOADB                            R24 1
     6556 JUMP                             ; [+1]
     6557 LOADB                            R24 0
     6558 JUMPIFNOT                        R24 ; [+4]
     6559 MOVE                             R23 R12
     6560 LOADK                            R24 K63 ["Description.ActionFriends"]
     6561 CALL                             R23 1 1
     6562 JUMPIF                           R23 ; [+3]
     6563 MOVE                             R23 R12
     6564 LOADK                            R24 K60 ["Description.ActionPublic"]
     6565 CALL                             R23 1 1
     6566 LOADK                            R24 K44 [""]
     6567 FASTCALL1                        TOSTRING R23 ; [+3]
     6568 MOVE                             R28 R23
     6569 GETIMPORT                        R27 K4 [tostring]
     6571 CALL                             R27 1 1
     6572 MOVE                             R25 R27
     6573 LOADK                            R26 K44 [""]
     6574 CONCAT                           R22 R24 R26
     6575 SETTABLEKS                       R22 R21 K156 ["action"]
     6577 CALL                             R19 2 1
     6578 SETTABLEKS                       R19 R18 K24 ["translation"]
     6580 GETTABLEKS                       R19 R2 K14 ["userId"]
     6582 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6584 MOVE                             R19 R0
     6585 GETTABLEKS                       R20 R2 K14 ["userId"]
     6587 CALL                             R19 1 1
     6588 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6590 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6592 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6594 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6596 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6598 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6600 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6602 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6604 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6606 LOADK                            R20 K44 [""]
     6607 FASTCALL1                        TOSTRING R4 ; [+3]
     6608 MOVE                             R24 R4
     6609 GETIMPORT                        R23 K4 [tostring]
     6611 CALL                             R23 1 1
     6612 MOVE                             R21 R23
     6613 LOADK                            R22 K415 ["/access"]
     6614 CONCAT                           R19 R20 R22
     6615 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6617 RETURN                           R18 1
     6618 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6620 JUMPIFNOTEQKN                    R18 K416 [68] ; [+105]
     6622 DUPTABLE                         R18 K418 [{["id"], ["eventType"] = "MonetizationSettingsRequiresRobux", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6623 GETTABLEKS                       R19 R2 K19 ["id"]
     6625 SETTABLEKS                       R19 R18 K19 ["id"]
     6627 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6629 GETIMPORT                        R21 K35 [pcall]
     6631 NEWCLOSURE                       R22 P6
     6632 CAPTURE                          VAL R20
     6633 CAPTURE                          VAL R3
     6634 CALL                             R21 1 2
     6635 JUMPIFNOT                        R21 ; [+2]
     6636 MOVE                             R19 R22
     6637 JUMP                             ; [+1]
     6638 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6639 SETTABLEKS                       R19 R18 K23 ["date"]
     6641 MOVE                             R19 R12
     6642 LOADK                            R20 K419 ["Description.MonetizationSettingsRequiresRobux"]
     6643 DUPTABLE                         R21 K157 [{"action"}]
     6644 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6646 JUMPIFNOT                        R26 ; [+5]
     6647 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6649 GETTABLEKS                       R25 R26 K43 ["Action"]
     6651 JUMPIF                           R25 ; [+1]
     6652 LOADK                            R25 K44 [""]
     6653 GETIMPORT                        R26 K47 [string.lower]
     6655 FASTCALL1                        TOSTRING R25 ; [+3]
     6656 MOVE                             R28 R25
     6657 GETIMPORT                        R27 K4 [tostring]
     6659 CALL                             R27 1 1
     6660 CALL                             R26 1 1
     6661 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6663 LOADB                            R24 1
     6664 JUMP                             ; [+1]
     6665 LOADB                            R24 0
     6666 JUMPIFNOT                        R24 ; [+4]
     6667 MOVE                             R23 R12
     6668 LOADK                            R24 K158 ["Description.ActionEnabled"]
     6669 CALL                             R23 1 1
     6670 JUMPIF                           R23 ; [+3]
     6671 MOVE                             R23 R12
     6672 LOADK                            R24 K159 ["Description.ActionDisabled"]
     6673 CALL                             R23 1 1
     6674 LOADK                            R24 K44 [""]
     6675 FASTCALL1                        TOSTRING R23 ; [+3]
     6676 MOVE                             R28 R23
     6677 GETIMPORT                        R27 K4 [tostring]
     6679 CALL                             R27 1 1
     6680 MOVE                             R25 R27
     6681 LOADK                            R26 K44 [""]
     6682 CONCAT                           R22 R24 R26
     6683 SETTABLEKS                       R22 R21 K156 ["action"]
     6685 CALL                             R19 2 1
     6686 SETTABLEKS                       R19 R18 K24 ["translation"]
     6688 GETTABLEKS                       R19 R2 K14 ["userId"]
     6690 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6692 MOVE                             R19 R0
     6693 GETTABLEKS                       R20 R2 K14 ["userId"]
     6695 CALL                             R19 1 1
     6696 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6698 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6700 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6702 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6704 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6706 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6708 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6710 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6712 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6714 LOADK                            R20 K44 [""]
     6715 FASTCALL1                        TOSTRING R4 ; [+3]
     6716 MOVE                             R24 R4
     6717 GETIMPORT                        R23 K4 [tostring]
     6719 CALL                             R23 1 1
     6720 MOVE                             R21 R23
     6721 LOADK                            R22 K415 ["/access"]
     6722 CONCAT                           R19 R20 R22
     6723 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6725 RETURN                           R18 1
     6726 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6728 JUMPIFNOTEQKN                    R18 K420 [69] ; [+84]
     6730 DUPTABLE                         R18 K422 [{["id"], ["eventType"] = "MonetizationSettingsRobuxPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6731 GETTABLEKS                       R19 R2 K19 ["id"]
     6733 SETTABLEKS                       R19 R18 K19 ["id"]
     6735 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6737 GETIMPORT                        R21 K35 [pcall]
     6739 NEWCLOSURE                       R22 P6
     6740 CAPTURE                          VAL R20
     6741 CAPTURE                          VAL R3
     6742 CALL                             R21 1 2
     6743 JUMPIFNOT                        R21 ; [+2]
     6744 MOVE                             R19 R22
     6745 JUMP                             ; [+1]
     6746 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6747 SETTABLEKS                       R19 R18 K23 ["date"]
     6749 MOVE                             R19 R12
     6750 LOADK                            R20 K423 ["Description.MonetizationSettingsRobuxPrice"]
     6751 DUPTABLE                         R21 K425 [{"price"}]
     6752 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6754 JUMPIFNOT                        R24 ; [+5]
     6755 GETTABLEKS                       R24 R2 K42 ["metaData"]
     6757 GETTABLEKS                       R23 R24 K426 ["Price"]
     6759 JUMPIF                           R23 ; [+1]
     6760 LOADK                            R23 K44 [""]
     6761 LOADK                            R24 K44 [""]
     6762 FASTCALL1                        TOSTRING R23 ; [+3]
     6763 MOVE                             R28 R23
     6764 GETIMPORT                        R27 K4 [tostring]
     6766 CALL                             R27 1 1
     6767 MOVE                             R25 R27
     6768 LOADK                            R26 K44 [""]
     6769 CONCAT                           R22 R24 R26
     6770 SETTABLEKS                       R22 R21 K424 ["price"]
     6772 CALL                             R19 2 1
     6773 SETTABLEKS                       R19 R18 K24 ["translation"]
     6775 GETTABLEKS                       R19 R2 K14 ["userId"]
     6777 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6779 MOVE                             R19 R0
     6780 GETTABLEKS                       R20 R2 K14 ["userId"]
     6782 CALL                             R19 1 1
     6783 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6785 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6787 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6789 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6791 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6793 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6795 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6797 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6799 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6801 LOADK                            R20 K44 [""]
     6802 FASTCALL1                        TOSTRING R4 ; [+3]
     6803 MOVE                             R24 R4
     6804 GETIMPORT                        R23 K4 [tostring]
     6806 CALL                             R23 1 1
     6807 MOVE                             R21 R23
     6808 LOADK                            R22 K415 ["/access"]
     6809 CONCAT                           R19 R20 R22
     6810 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6812 RETURN                           R18 1
     6813 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6815 JUMPIFNOTEQKN                    R18 K427 [70] ; [+74]
     6817 DUPTABLE                         R18 K429 [{["id"], ["eventType"] = "MonetizationSettingsPlayableDevices", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6818 GETTABLEKS                       R19 R2 K19 ["id"]
     6820 SETTABLEKS                       R19 R18 K19 ["id"]
     6822 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6824 GETIMPORT                        R21 K35 [pcall]
     6826 NEWCLOSURE                       R22 P6
     6827 CAPTURE                          VAL R20
     6828 CAPTURE                          VAL R3
     6829 CALL                             R21 1 2
     6830 JUMPIFNOT                        R21 ; [+2]
     6831 MOVE                             R19 R22
     6832 JUMP                             ; [+1]
     6833 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6834 SETTABLEKS                       R19 R18 K23 ["date"]
     6836 GETTABLEKS                       R20 R2 K42 ["metaData"]
     6838 LOADK                            R21 K44 [""]
     6839 GETIMPORT                        R22 K35 [pcall]
     6841 NEWCLOSURE                       R23 P7
     6842 CAPTURE                          VAL R20
     6843 CAPTURE                          UPVAL U3
     6844 CAPTURE                          UPVAL U4
     6845 CAPTURE                          VAL R12
     6846 CAPTURE                          REF R21
     6847 CALL                             R22 1 2
     6848 MOVE                             R19 R21
     6849 CLOSEUPVALS                      R21
     6850 SETTABLEKS                       R19 R18 K24 ["translation"]
     6852 GETTABLEKS                       R19 R2 K14 ["userId"]
     6854 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6856 MOVE                             R19 R0
     6857 GETTABLEKS                       R20 R2 K14 ["userId"]
     6859 CALL                             R19 1 1
     6860 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6862 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6864 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6866 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6868 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6870 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6872 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6874 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6876 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6878 LOADK                            R20 K44 [""]
     6879 FASTCALL1                        TOSTRING R4 ; [+3]
     6880 MOVE                             R24 R4
     6881 GETIMPORT                        R23 K4 [tostring]
     6883 CALL                             R23 1 1
     6884 MOVE                             R21 R23
     6885 LOADK                            R22 K415 ["/access"]
     6886 CONCAT                           R19 R20 R22
     6887 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6889 RETURN                           R18 1
     6890 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6892 JUMPIFNOTEQKN                    R18 K430 [71] ; [+105]
     6894 DUPTABLE                         R18 K432 [{["id"], ["eventType"] = "MonetizationSettingsAllowPrivateServers", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     6895 GETTABLEKS                       R19 R2 K19 ["id"]
     6897 SETTABLEKS                       R19 R18 K19 ["id"]
     6899 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     6901 GETIMPORT                        R21 K35 [pcall]
     6903 NEWCLOSURE                       R22 P6
     6904 CAPTURE                          VAL R20
     6905 CAPTURE                          VAL R3
     6906 CALL                             R21 1 2
     6907 JUMPIFNOT                        R21 ; [+2]
     6908 MOVE                             R19 R22
     6909 JUMP                             ; [+1]
     6910 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     6911 SETTABLEKS                       R19 R18 K23 ["date"]
     6913 MOVE                             R19 R12
     6914 LOADK                            R20 K433 ["Description.MonetizationSettingsAllowPrivateServers"]
     6915 DUPTABLE                         R21 K157 [{"action"}]
     6916 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6918 JUMPIFNOT                        R26 ; [+5]
     6919 GETTABLEKS                       R26 R2 K42 ["metaData"]
     6921 GETTABLEKS                       R25 R26 K43 ["Action"]
     6923 JUMPIF                           R25 ; [+1]
     6924 LOADK                            R25 K44 [""]
     6925 GETIMPORT                        R26 K47 [string.lower]
     6927 FASTCALL1                        TOSTRING R25 ; [+3]
     6928 MOVE                             R28 R25
     6929 GETIMPORT                        R27 K4 [tostring]
     6931 CALL                             R27 1 1
     6932 CALL                             R26 1 1
     6933 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     6935 LOADB                            R24 1
     6936 JUMP                             ; [+1]
     6937 LOADB                            R24 0
     6938 JUMPIFNOT                        R24 ; [+4]
     6939 MOVE                             R23 R12
     6940 LOADK                            R24 K158 ["Description.ActionEnabled"]
     6941 CALL                             R23 1 1
     6942 JUMPIF                           R23 ; [+3]
     6943 MOVE                             R23 R12
     6944 LOADK                            R24 K159 ["Description.ActionDisabled"]
     6945 CALL                             R23 1 1
     6946 LOADK                            R24 K44 [""]
     6947 FASTCALL1                        TOSTRING R23 ; [+3]
     6948 MOVE                             R28 R23
     6949 GETIMPORT                        R27 K4 [tostring]
     6951 CALL                             R27 1 1
     6952 MOVE                             R25 R27
     6953 LOADK                            R26 K44 [""]
     6954 CONCAT                           R22 R24 R26
     6955 SETTABLEKS                       R22 R21 K156 ["action"]
     6957 CALL                             R19 2 1
     6958 SETTABLEKS                       R19 R18 K24 ["translation"]
     6960 GETTABLEKS                       R19 R2 K14 ["userId"]
     6962 SETTABLEKS                       R19 R18 K25 ["actorId"]
     6964 MOVE                             R19 R0
     6965 GETTABLEKS                       R20 R2 K14 ["userId"]
     6967 CALL                             R19 1 1
     6968 SETTABLEKS                       R19 R18 K26 ["actorName"]
     6970 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6972 SETTABLEKS                       R19 R18 K29 ["iconId"]
     6974 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6976 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6978 GETTABLEKS                       R19 R2 K30 ["headerText"]
     6980 SETTABLEKS                       R19 R18 K30 ["headerText"]
     6982 GETTABLEKS                       R19 R2 K31 ["footerText"]
     6984 SETTABLEKS                       R19 R18 K31 ["footerText"]
     6986 LOADK                            R20 K44 [""]
     6987 FASTCALL1                        TOSTRING R4 ; [+3]
     6988 MOVE                             R24 R4
     6989 GETIMPORT                        R23 K4 [tostring]
     6991 CALL                             R23 1 1
     6992 MOVE                             R21 R23
     6993 LOADK                            R22 K415 ["/access"]
     6994 CONCAT                           R19 R20 R22
     6995 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     6997 RETURN                           R18 1
     6998 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7000 JUMPIFNOTEQKN                    R18 K434 [72] ; [+84]
     7002 DUPTABLE                         R18 K436 [{["id"], ["eventType"] = "MonetizationSettingsPrivateServerPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
     7003 GETTABLEKS                       R19 R2 K19 ["id"]
     7005 SETTABLEKS                       R19 R18 K19 ["id"]
     7007 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7009 GETIMPORT                        R21 K35 [pcall]
     7011 NEWCLOSURE                       R22 P6
     7012 CAPTURE                          VAL R20
     7013 CAPTURE                          VAL R3
     7014 CALL                             R21 1 2
     7015 JUMPIFNOT                        R21 ; [+2]
     7016 MOVE                             R19 R22
     7017 JUMP                             ; [+1]
     7018 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7019 SETTABLEKS                       R19 R18 K23 ["date"]
     7021 MOVE                             R19 R12
     7022 LOADK                            R20 K437 ["Description.MonetizationSettingsPrivateServerPrice"]
     7023 DUPTABLE                         R21 K425 [{"price"}]
     7024 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7026 JUMPIFNOT                        R24 ; [+5]
     7027 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7029 GETTABLEKS                       R23 R24 K426 ["Price"]
     7031 JUMPIF                           R23 ; [+1]
     7032 LOADK                            R23 K44 [""]
     7033 LOADK                            R24 K44 [""]
     7034 FASTCALL1                        TOSTRING R23 ; [+3]
     7035 MOVE                             R28 R23
     7036 GETIMPORT                        R27 K4 [tostring]
     7038 CALL                             R27 1 1
     7039 MOVE                             R25 R27
     7040 LOADK                            R26 K44 [""]
     7041 CONCAT                           R22 R24 R26
     7042 SETTABLEKS                       R22 R21 K424 ["price"]
     7044 CALL                             R19 2 1
     7045 SETTABLEKS                       R19 R18 K24 ["translation"]
     7047 GETTABLEKS                       R19 R2 K14 ["userId"]
     7049 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7051 MOVE                             R19 R0
     7052 GETTABLEKS                       R20 R2 K14 ["userId"]
     7054 CALL                             R19 1 1
     7055 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7057 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7059 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7061 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7063 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7065 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7067 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7069 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7071 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7073 LOADK                            R20 K44 [""]
     7074 FASTCALL1                        TOSTRING R4 ; [+3]
     7075 MOVE                             R24 R4
     7076 GETIMPORT                        R23 K4 [tostring]
     7078 CALL                             R23 1 1
     7079 MOVE                             R21 R23
     7080 LOADK                            R22 K415 ["/access"]
     7081 CONCAT                           R19 R20 R22
     7082 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7084 RETURN                           R18 1
     7085 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7087 JUMPIFNOTEQKN                    R18 K438 [73] ; [+133]
     7089 DUPTABLE                         R18 K440 [{["id"], ["eventType"] = "ExperienceSponsor", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     7090 GETTABLEKS                       R19 R2 K19 ["id"]
     7092 SETTABLEKS                       R19 R18 K19 ["id"]
     7094 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7096 GETIMPORT                        R21 K35 [pcall]
     7098 NEWCLOSURE                       R22 P6
     7099 CAPTURE                          VAL R20
     7100 CAPTURE                          VAL R3
     7101 CALL                             R21 1 2
     7102 JUMPIFNOT                        R21 ; [+2]
     7103 MOVE                             R19 R22
     7104 JUMP                             ; [+1]
     7105 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7106 SETTABLEKS                       R19 R18 K23 ["date"]
     7108 MOVE                             R19 R12
     7109 LOADK                            R20 K441 ["Description.ExperienceSponsor"]
     7110 DUPTABLE                         R21 K443 [{"adName", "action"}]
     7111 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7113 JUMPIFNOT                        R24 ; [+5]
     7114 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7116 GETTABLEKS                       R23 R24 K444 ["AdName"]
     7118 JUMPIF                           R23 ; [+1]
     7119 LOADK                            R23 K44 [""]
     7120 LOADK                            R24 K44 [""]
     7121 FASTCALL1                        TOSTRING R23 ; [+3]
     7122 MOVE                             R28 R23
     7123 GETIMPORT                        R27 K4 [tostring]
     7125 CALL                             R27 1 1
     7126 MOVE                             R25 R27
     7127 LOADK                            R26 K44 [""]
     7128 CONCAT                           R22 R24 R26
     7129 SETTABLEKS                       R22 R21 K442 ["adName"]
     7131 GETTABLEKS                       R26 R2 K42 ["metaData"]
     7133 JUMPIFNOT                        R26 ; [+5]
     7134 GETTABLEKS                       R26 R2 K42 ["metaData"]
     7136 GETTABLEKS                       R25 R26 K43 ["Action"]
     7138 JUMPIF                           R25 ; [+1]
     7139 LOADK                            R25 K44 [""]
     7140 GETIMPORT                        R26 K47 [string.lower]
     7142 FASTCALL1                        TOSTRING R25 ; [+3]
     7143 MOVE                             R28 R25
     7144 GETIMPORT                        R27 K4 [tostring]
     7146 CALL                             R27 1 1
     7147 CALL                             R26 1 1
     7148 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     7150 LOADB                            R24 1
     7151 JUMP                             ; [+1]
     7152 LOADB                            R24 0
     7153 JUMPIFNOT                        R24 ; [+4]
     7154 MOVE                             R23 R12
     7155 LOADK                            R24 K445 ["Description.ActionLaunched"]
     7156 CALL                             R23 1 1
     7157 JUMPIF                           R23 ; [+3]
     7158 MOVE                             R23 R12
     7159 LOADK                            R24 K446 ["Description.ActionDiscontinued"]
     7160 CALL                             R23 1 1
     7161 LOADK                            R24 K44 [""]
     7162 FASTCALL1                        TOSTRING R23 ; [+3]
     7163 MOVE                             R28 R23
     7164 GETIMPORT                        R27 K4 [tostring]
     7166 CALL                             R27 1 1
     7167 MOVE                             R25 R27
     7168 LOADK                            R26 K44 [""]
     7169 CONCAT                           R22 R24 R26
     7170 SETTABLEKS                       R22 R21 K156 ["action"]
     7172 CALL                             R19 2 1
     7173 SETTABLEKS                       R19 R18 K24 ["translation"]
     7175 GETTABLEKS                       R19 R2 K14 ["userId"]
     7177 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7179 MOVE                             R19 R0
     7180 GETTABLEKS                       R20 R2 K14 ["userId"]
     7182 CALL                             R19 1 1
     7183 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7185 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7187 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7189 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7191 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7193 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7195 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7197 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7199 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7201 LOADK                            R20 K44 [""]
     7202 GETUPVAL                         R26 1
     7203 FASTCALL1                        TOSTRING R26 ; [+2]
     7204 GETIMPORT                        R25 K4 [tostring]
     7206 CALL                             R25 1 1
     7207 MOVE                             R21 R25
     7208 LOADK                            R22 K447 ["sponsorships/list?universeId="]
     7209 GETTABLEKS                       R26 R2 K2 ["universeId"]
     7211 FASTCALL1                        TOSTRING R26 ; [+2]
     7212 GETIMPORT                        R25 K4 [tostring]
     7214 CALL                             R25 1 1
     7215 MOVE                             R23 R25
     7216 LOADK                            R24 K44 [""]
     7217 CONCAT                           R19 R20 R24
     7218 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7220 RETURN                           R18 1
     7221 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7223 JUMPIFNOTEQKN                    R18 K448 [74] ; [+132]
     7225 DUPTABLE                         R18 K449 [{["id"], ["eventType"] = "BadgeName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7226 GETTABLEKS                       R19 R2 K19 ["id"]
     7228 SETTABLEKS                       R19 R18 K19 ["id"]
     7230 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7232 GETIMPORT                        R21 K35 [pcall]
     7234 NEWCLOSURE                       R22 P6
     7235 CAPTURE                          VAL R20
     7236 CAPTURE                          VAL R3
     7237 CALL                             R21 1 2
     7238 JUMPIFNOT                        R21 ; [+2]
     7239 MOVE                             R19 R22
     7240 JUMP                             ; [+1]
     7241 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7242 SETTABLEKS                       R19 R18 K23 ["date"]
     7244 MOVE                             R19 R12
     7245 LOADK                            R20 K450 ["Description.BadgeName"]
     7246 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     7247 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7249 JUMPIFNOT                        R24 ; [+5]
     7250 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7252 GETTABLEKS                       R23 R24 K139 ["NewName"]
     7254 JUMPIF                           R23 ; [+1]
     7255 LOADK                            R23 K44 [""]
     7256 LOADK                            R24 K44 [""]
     7257 FASTCALL1                        TOSTRING R23 ; [+3]
     7258 MOVE                             R28 R23
     7259 GETIMPORT                        R27 K4 [tostring]
     7261 CALL                             R27 1 1
     7262 MOVE                             R25 R27
     7263 LOADK                            R26 K44 [""]
     7264 CONCAT                           R22 R24 R26
     7265 SETTABLEKS                       R22 R21 K136 ["newName"]
     7267 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7269 JUMPIFNOT                        R24 ; [+5]
     7270 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7272 GETTABLEKS                       R23 R24 K140 ["OldName"]
     7274 JUMPIF                           R23 ; [+1]
     7275 LOADK                            R23 K44 [""]
     7276 LOADK                            R24 K44 [""]
     7277 FASTCALL1                        TOSTRING R23 ; [+3]
     7278 MOVE                             R28 R23
     7279 GETIMPORT                        R27 K4 [tostring]
     7281 CALL                             R27 1 1
     7282 MOVE                             R25 R27
     7283 LOADK                            R26 K44 [""]
     7284 CONCAT                           R22 R24 R26
     7285 SETTABLEKS                       R22 R21 K137 ["oldName"]
     7287 CALL                             R19 2 1
     7288 SETTABLEKS                       R19 R18 K24 ["translation"]
     7290 GETTABLEKS                       R19 R2 K14 ["userId"]
     7292 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7294 MOVE                             R19 R0
     7295 GETTABLEKS                       R20 R2 K14 ["userId"]
     7297 CALL                             R19 1 1
     7298 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7300 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7302 ORK                              R19 R20 K18 [0]
     7303 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7305 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7307 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7309 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7311 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7313 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7315 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7317 LOADK                            R20 K44 [""]
     7318 FASTCALL1                        TOSTRING R4 ; [+3]
     7319 MOVE                             R26 R4
     7320 GETIMPORT                        R25 K4 [tostring]
     7322 CALL                             R25 1 1
     7323 MOVE                             R21 R25
     7324 LOADK                            R22 K7 ["/badges/"]
     7325 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7327 FASTCALL1                        TOSTRING R26 ; [+2]
     7328 GETIMPORT                        R25 K4 [tostring]
     7330 CALL                             R25 1 1
     7331 MOVE                             R23 R25
     7332 LOADK                            R24 K11 ["/configure"]
     7333 CONCAT                           R19 R20 R24
     7334 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7336 LOADK                            R20 K44 [""]
     7337 GETUPVAL                         R26 1
     7338 FASTCALL1                        TOSTRING R26 ; [+2]
     7339 GETIMPORT                        R25 K4 [tostring]
     7341 CALL                             R25 1 1
     7342 MOVE                             R21 R25
     7343 LOADK                            R22 K335 ["badges/"]
     7344 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7346 FASTCALL1                        TOSTRING R26 ; [+2]
     7347 GETIMPORT                        R25 K4 [tostring]
     7349 CALL                             R25 1 1
     7350 MOVE                             R23 R25
     7351 LOADK                            R24 K44 [""]
     7352 CONCAT                           R19 R20 R24
     7353 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7355 RETURN                           R18 1
     7356 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7358 JUMPIFNOTEQKN                    R18 K451 [75] ; [+91]
     7360 DUPTABLE                         R18 K453 [{["id"], ["eventType"] = "BadgeDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7361 GETTABLEKS                       R19 R2 K19 ["id"]
     7363 SETTABLEKS                       R19 R18 K19 ["id"]
     7365 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7367 GETIMPORT                        R21 K35 [pcall]
     7369 NEWCLOSURE                       R22 P6
     7370 CAPTURE                          VAL R20
     7371 CAPTURE                          VAL R3
     7372 CALL                             R21 1 2
     7373 JUMPIFNOT                        R21 ; [+2]
     7374 MOVE                             R19 R22
     7375 JUMP                             ; [+1]
     7376 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7377 SETTABLEKS                       R19 R18 K23 ["date"]
     7379 MOVE                             R19 R12
     7380 LOADK                            R20 K454 ["Description.BadgeDescription"]
     7381 CALL                             R19 1 1
     7382 SETTABLEKS                       R19 R18 K24 ["translation"]
     7384 GETTABLEKS                       R19 R2 K14 ["userId"]
     7386 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7388 MOVE                             R19 R0
     7389 GETTABLEKS                       R20 R2 K14 ["userId"]
     7391 CALL                             R19 1 1
     7392 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7394 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7396 ORK                              R19 R20 K18 [0]
     7397 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7399 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7401 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7403 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7405 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7407 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7409 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7411 LOADK                            R20 K44 [""]
     7412 FASTCALL1                        TOSTRING R4 ; [+3]
     7413 MOVE                             R26 R4
     7414 GETIMPORT                        R25 K4 [tostring]
     7416 CALL                             R25 1 1
     7417 MOVE                             R21 R25
     7418 LOADK                            R22 K7 ["/badges/"]
     7419 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7421 FASTCALL1                        TOSTRING R26 ; [+2]
     7422 GETIMPORT                        R25 K4 [tostring]
     7424 CALL                             R25 1 1
     7425 MOVE                             R23 R25
     7426 LOADK                            R24 K11 ["/configure"]
     7427 CONCAT                           R19 R20 R24
     7428 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7430 LOADK                            R20 K44 [""]
     7431 GETUPVAL                         R26 1
     7432 FASTCALL1                        TOSTRING R26 ; [+2]
     7433 GETIMPORT                        R25 K4 [tostring]
     7435 CALL                             R25 1 1
     7436 MOVE                             R21 R25
     7437 LOADK                            R22 K335 ["badges/"]
     7438 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7440 FASTCALL1                        TOSTRING R26 ; [+2]
     7441 GETIMPORT                        R25 K4 [tostring]
     7443 CALL                             R25 1 1
     7444 MOVE                             R23 R25
     7445 LOADK                            R24 K44 [""]
     7446 CONCAT                           R19 R20 R24
     7447 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7449 RETURN                           R18 1
     7450 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7452 JUMPIFNOTEQKN                    R18 K455 [76] ; [+91]
     7454 DUPTABLE                         R18 K457 [{["id"], ["eventType"] = "BadgeIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7455 GETTABLEKS                       R19 R2 K19 ["id"]
     7457 SETTABLEKS                       R19 R18 K19 ["id"]
     7459 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7461 GETIMPORT                        R21 K35 [pcall]
     7463 NEWCLOSURE                       R22 P6
     7464 CAPTURE                          VAL R20
     7465 CAPTURE                          VAL R3
     7466 CALL                             R21 1 2
     7467 JUMPIFNOT                        R21 ; [+2]
     7468 MOVE                             R19 R22
     7469 JUMP                             ; [+1]
     7470 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7471 SETTABLEKS                       R19 R18 K23 ["date"]
     7473 MOVE                             R19 R12
     7474 LOADK                            R20 K458 ["Description.BadgeIcon"]
     7475 CALL                             R19 1 1
     7476 SETTABLEKS                       R19 R18 K24 ["translation"]
     7478 GETTABLEKS                       R19 R2 K14 ["userId"]
     7480 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7482 MOVE                             R19 R0
     7483 GETTABLEKS                       R20 R2 K14 ["userId"]
     7485 CALL                             R19 1 1
     7486 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7488 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7490 ORK                              R19 R20 K18 [0]
     7491 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7493 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7495 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7497 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7499 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7501 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7503 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7505 LOADK                            R20 K44 [""]
     7506 FASTCALL1                        TOSTRING R4 ; [+3]
     7507 MOVE                             R26 R4
     7508 GETIMPORT                        R25 K4 [tostring]
     7510 CALL                             R25 1 1
     7511 MOVE                             R21 R25
     7512 LOADK                            R22 K7 ["/badges/"]
     7513 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7515 FASTCALL1                        TOSTRING R26 ; [+2]
     7516 GETIMPORT                        R25 K4 [tostring]
     7518 CALL                             R25 1 1
     7519 MOVE                             R23 R25
     7520 LOADK                            R24 K11 ["/configure"]
     7521 CONCAT                           R19 R20 R24
     7522 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7524 LOADK                            R20 K44 [""]
     7525 GETUPVAL                         R26 1
     7526 FASTCALL1                        TOSTRING R26 ; [+2]
     7527 GETIMPORT                        R25 K4 [tostring]
     7529 CALL                             R25 1 1
     7530 MOVE                             R21 R25
     7531 LOADK                            R22 K335 ["badges/"]
     7532 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7534 FASTCALL1                        TOSTRING R26 ; [+2]
     7535 GETIMPORT                        R25 K4 [tostring]
     7537 CALL                             R25 1 1
     7538 MOVE                             R23 R25
     7539 LOADK                            R24 K44 [""]
     7540 CONCAT                           R19 R20 R24
     7541 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7543 RETURN                           R18 1
     7544 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7546 JUMPIFNOTEQKN                    R18 K459 [77] ; [+91]
     7548 DUPTABLE                         R18 K461 [{["id"], ["eventType"] = "BadgeCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Badge", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7549 GETTABLEKS                       R19 R2 K19 ["id"]
     7551 SETTABLEKS                       R19 R18 K19 ["id"]
     7553 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7555 GETIMPORT                        R21 K35 [pcall]
     7557 NEWCLOSURE                       R22 P6
     7558 CAPTURE                          VAL R20
     7559 CAPTURE                          VAL R3
     7560 CALL                             R21 1 2
     7561 JUMPIFNOT                        R21 ; [+2]
     7562 MOVE                             R19 R22
     7563 JUMP                             ; [+1]
     7564 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7565 SETTABLEKS                       R19 R18 K23 ["date"]
     7567 MOVE                             R19 R12
     7568 LOADK                            R20 K462 ["Description.BadgeCreate"]
     7569 CALL                             R19 1 1
     7570 SETTABLEKS                       R19 R18 K24 ["translation"]
     7572 GETTABLEKS                       R19 R2 K14 ["userId"]
     7574 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7576 MOVE                             R19 R0
     7577 GETTABLEKS                       R20 R2 K14 ["userId"]
     7579 CALL                             R19 1 1
     7580 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7582 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7584 ORK                              R19 R20 K18 [0]
     7585 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7587 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7589 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7591 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7593 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7595 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7597 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7599 LOADK                            R20 K44 [""]
     7600 FASTCALL1                        TOSTRING R4 ; [+3]
     7601 MOVE                             R26 R4
     7602 GETIMPORT                        R25 K4 [tostring]
     7604 CALL                             R25 1 1
     7605 MOVE                             R21 R25
     7606 LOADK                            R22 K7 ["/badges/"]
     7607 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7609 FASTCALL1                        TOSTRING R26 ; [+2]
     7610 GETIMPORT                        R25 K4 [tostring]
     7612 CALL                             R25 1 1
     7613 MOVE                             R23 R25
     7614 LOADK                            R24 K9 ["/overview"]
     7615 CONCAT                           R19 R20 R24
     7616 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7618 LOADK                            R20 K44 [""]
     7619 GETUPVAL                         R26 1
     7620 FASTCALL1                        TOSTRING R26 ; [+2]
     7621 GETIMPORT                        R25 K4 [tostring]
     7623 CALL                             R25 1 1
     7624 MOVE                             R21 R25
     7625 LOADK                            R22 K335 ["badges/"]
     7626 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7628 FASTCALL1                        TOSTRING R26 ; [+2]
     7629 GETIMPORT                        R25 K4 [tostring]
     7631 CALL                             R25 1 1
     7632 MOVE                             R23 R25
     7633 LOADK                            R24 K44 [""]
     7634 CONCAT                           R19 R20 R24
     7635 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7637 RETURN                           R18 1
     7638 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7640 JUMPIFNOTEQKN                    R18 K463 [78] ; [+132]
     7642 DUPTABLE                         R18 K465 [{["id"], ["eventType"] = "DeveloperProductName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7643 GETTABLEKS                       R19 R2 K19 ["id"]
     7645 SETTABLEKS                       R19 R18 K19 ["id"]
     7647 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7649 GETIMPORT                        R21 K35 [pcall]
     7651 NEWCLOSURE                       R22 P6
     7652 CAPTURE                          VAL R20
     7653 CAPTURE                          VAL R3
     7654 CALL                             R21 1 2
     7655 JUMPIFNOT                        R21 ; [+2]
     7656 MOVE                             R19 R22
     7657 JUMP                             ; [+1]
     7658 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7659 SETTABLEKS                       R19 R18 K23 ["date"]
     7661 MOVE                             R19 R12
     7662 LOADK                            R20 K466 ["Description.DeveloperProductName"]
     7663 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     7664 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7666 JUMPIFNOT                        R24 ; [+5]
     7667 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7669 GETTABLEKS                       R23 R24 K139 ["NewName"]
     7671 JUMPIF                           R23 ; [+1]
     7672 LOADK                            R23 K44 [""]
     7673 LOADK                            R24 K44 [""]
     7674 FASTCALL1                        TOSTRING R23 ; [+3]
     7675 MOVE                             R28 R23
     7676 GETIMPORT                        R27 K4 [tostring]
     7678 CALL                             R27 1 1
     7679 MOVE                             R25 R27
     7680 LOADK                            R26 K44 [""]
     7681 CONCAT                           R22 R24 R26
     7682 SETTABLEKS                       R22 R21 K136 ["newName"]
     7684 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7686 JUMPIFNOT                        R24 ; [+5]
     7687 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7689 GETTABLEKS                       R23 R24 K140 ["OldName"]
     7691 JUMPIF                           R23 ; [+1]
     7692 LOADK                            R23 K44 [""]
     7693 LOADK                            R24 K44 [""]
     7694 FASTCALL1                        TOSTRING R23 ; [+3]
     7695 MOVE                             R28 R23
     7696 GETIMPORT                        R27 K4 [tostring]
     7698 CALL                             R27 1 1
     7699 MOVE                             R25 R27
     7700 LOADK                            R26 K44 [""]
     7701 CONCAT                           R22 R24 R26
     7702 SETTABLEKS                       R22 R21 K137 ["oldName"]
     7704 CALL                             R19 2 1
     7705 SETTABLEKS                       R19 R18 K24 ["translation"]
     7707 GETTABLEKS                       R19 R2 K14 ["userId"]
     7709 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7711 MOVE                             R19 R0
     7712 GETTABLEKS                       R20 R2 K14 ["userId"]
     7714 CALL                             R19 1 1
     7715 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7717 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7719 ORK                              R19 R20 K18 [0]
     7720 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7722 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7724 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7726 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7728 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7730 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7732 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7734 LOADK                            R20 K44 [""]
     7735 FASTCALL1                        TOSTRING R4 ; [+3]
     7736 MOVE                             R26 R4
     7737 GETIMPORT                        R25 K4 [tostring]
     7739 CALL                             R25 1 1
     7740 MOVE                             R21 R25
     7741 LOADK                            R22 K10 ["/developer-products/"]
     7742 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7744 FASTCALL1                        TOSTRING R26 ; [+2]
     7745 GETIMPORT                        R25 K4 [tostring]
     7747 CALL                             R25 1 1
     7748 MOVE                             R23 R25
     7749 LOADK                            R24 K11 ["/configure"]
     7750 CONCAT                           R19 R20 R24
     7751 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7753 LOADK                            R20 K44 [""]
     7754 GETUPVAL                         R26 1
     7755 FASTCALL1                        TOSTRING R26 ; [+2]
     7756 GETIMPORT                        R25 K4 [tostring]
     7758 CALL                             R25 1 1
     7759 MOVE                             R21 R25
     7760 LOADK                            R22 K356 ["developer-products/"]
     7761 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7763 FASTCALL1                        TOSTRING R26 ; [+2]
     7764 GETIMPORT                        R25 K4 [tostring]
     7766 CALL                             R25 1 1
     7767 MOVE                             R23 R25
     7768 LOADK                            R24 K44 [""]
     7769 CONCAT                           R19 R20 R24
     7770 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7772 RETURN                           R18 1
     7773 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7775 JUMPIFNOTEQKN                    R18 K467 [79] ; [+91]
     7777 DUPTABLE                         R18 K469 [{["id"], ["eventType"] = "DeveloperProductDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7778 GETTABLEKS                       R19 R2 K19 ["id"]
     7780 SETTABLEKS                       R19 R18 K19 ["id"]
     7782 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7784 GETIMPORT                        R21 K35 [pcall]
     7786 NEWCLOSURE                       R22 P6
     7787 CAPTURE                          VAL R20
     7788 CAPTURE                          VAL R3
     7789 CALL                             R21 1 2
     7790 JUMPIFNOT                        R21 ; [+2]
     7791 MOVE                             R19 R22
     7792 JUMP                             ; [+1]
     7793 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7794 SETTABLEKS                       R19 R18 K23 ["date"]
     7796 MOVE                             R19 R12
     7797 LOADK                            R20 K470 ["Description.DeveloperProductDescription"]
     7798 CALL                             R19 1 1
     7799 SETTABLEKS                       R19 R18 K24 ["translation"]
     7801 GETTABLEKS                       R19 R2 K14 ["userId"]
     7803 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7805 MOVE                             R19 R0
     7806 GETTABLEKS                       R20 R2 K14 ["userId"]
     7808 CALL                             R19 1 1
     7809 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7811 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7813 ORK                              R19 R20 K18 [0]
     7814 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7816 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7818 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7820 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7822 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7824 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7826 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7828 LOADK                            R20 K44 [""]
     7829 FASTCALL1                        TOSTRING R4 ; [+3]
     7830 MOVE                             R26 R4
     7831 GETIMPORT                        R25 K4 [tostring]
     7833 CALL                             R25 1 1
     7834 MOVE                             R21 R25
     7835 LOADK                            R22 K10 ["/developer-products/"]
     7836 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7838 FASTCALL1                        TOSTRING R26 ; [+2]
     7839 GETIMPORT                        R25 K4 [tostring]
     7841 CALL                             R25 1 1
     7842 MOVE                             R23 R25
     7843 LOADK                            R24 K11 ["/configure"]
     7844 CONCAT                           R19 R20 R24
     7845 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7847 LOADK                            R20 K44 [""]
     7848 GETUPVAL                         R26 1
     7849 FASTCALL1                        TOSTRING R26 ; [+2]
     7850 GETIMPORT                        R25 K4 [tostring]
     7852 CALL                             R25 1 1
     7853 MOVE                             R21 R25
     7854 LOADK                            R22 K356 ["developer-products/"]
     7855 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7857 FASTCALL1                        TOSTRING R26 ; [+2]
     7858 GETIMPORT                        R25 K4 [tostring]
     7860 CALL                             R25 1 1
     7861 MOVE                             R23 R25
     7862 LOADK                            R24 K44 [""]
     7863 CONCAT                           R19 R20 R24
     7864 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7866 RETURN                           R18 1
     7867 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7869 JUMPIFNOTEQKN                    R18 K471 [80] ; [+91]
     7871 DUPTABLE                         R18 K473 [{["id"], ["eventType"] = "DeveloperProductIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7872 GETTABLEKS                       R19 R2 K19 ["id"]
     7874 SETTABLEKS                       R19 R18 K19 ["id"]
     7876 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7878 GETIMPORT                        R21 K35 [pcall]
     7880 NEWCLOSURE                       R22 P6
     7881 CAPTURE                          VAL R20
     7882 CAPTURE                          VAL R3
     7883 CALL                             R21 1 2
     7884 JUMPIFNOT                        R21 ; [+2]
     7885 MOVE                             R19 R22
     7886 JUMP                             ; [+1]
     7887 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7888 SETTABLEKS                       R19 R18 K23 ["date"]
     7890 MOVE                             R19 R12
     7891 LOADK                            R20 K474 ["Description.DeveloperProductIcon"]
     7892 CALL                             R19 1 1
     7893 SETTABLEKS                       R19 R18 K24 ["translation"]
     7895 GETTABLEKS                       R19 R2 K14 ["userId"]
     7897 SETTABLEKS                       R19 R18 K25 ["actorId"]
     7899 MOVE                             R19 R0
     7900 GETTABLEKS                       R20 R2 K14 ["userId"]
     7902 CALL                             R19 1 1
     7903 SETTABLEKS                       R19 R18 K26 ["actorName"]
     7905 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7907 ORK                              R19 R20 K18 [0]
     7908 SETTABLEKS                       R19 R18 K29 ["iconId"]
     7910 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7912 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7914 GETTABLEKS                       R19 R2 K30 ["headerText"]
     7916 SETTABLEKS                       R19 R18 K30 ["headerText"]
     7918 GETTABLEKS                       R19 R2 K31 ["footerText"]
     7920 SETTABLEKS                       R19 R18 K31 ["footerText"]
     7922 LOADK                            R20 K44 [""]
     7923 FASTCALL1                        TOSTRING R4 ; [+3]
     7924 MOVE                             R26 R4
     7925 GETIMPORT                        R25 K4 [tostring]
     7927 CALL                             R25 1 1
     7928 MOVE                             R21 R25
     7929 LOADK                            R22 K10 ["/developer-products/"]
     7930 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7932 FASTCALL1                        TOSTRING R26 ; [+2]
     7933 GETIMPORT                        R25 K4 [tostring]
     7935 CALL                             R25 1 1
     7936 MOVE                             R23 R25
     7937 LOADK                            R24 K11 ["/configure"]
     7938 CONCAT                           R19 R20 R24
     7939 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     7941 LOADK                            R20 K44 [""]
     7942 GETUPVAL                         R26 1
     7943 FASTCALL1                        TOSTRING R26 ; [+2]
     7944 GETIMPORT                        R25 K4 [tostring]
     7946 CALL                             R25 1 1
     7947 MOVE                             R21 R25
     7948 LOADK                            R22 K356 ["developer-products/"]
     7949 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     7951 FASTCALL1                        TOSTRING R26 ; [+2]
     7952 GETIMPORT                        R25 K4 [tostring]
     7954 CALL                             R25 1 1
     7955 MOVE                             R23 R25
     7956 LOADK                            R24 K44 [""]
     7957 CONCAT                           R19 R20 R24
     7958 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     7960 RETURN                           R18 1
     7961 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7963 JUMPIFNOTEQKN                    R18 K475 [81] ; [+112]
     7965 DUPTABLE                         R18 K477 [{["id"], ["eventType"] = "DeveloperProductPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     7966 GETTABLEKS                       R19 R2 K19 ["id"]
     7968 SETTABLEKS                       R19 R18 K19 ["id"]
     7970 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     7972 GETIMPORT                        R21 K35 [pcall]
     7974 NEWCLOSURE                       R22 P6
     7975 CAPTURE                          VAL R20
     7976 CAPTURE                          VAL R3
     7977 CALL                             R21 1 2
     7978 JUMPIFNOT                        R21 ; [+2]
     7979 MOVE                             R19 R22
     7980 JUMP                             ; [+1]
     7981 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     7982 SETTABLEKS                       R19 R18 K23 ["date"]
     7984 MOVE                             R19 R12
     7985 LOADK                            R20 K478 ["Description.DeveloperProductPrice"]
     7986 DUPTABLE                         R21 K425 [{"price"}]
     7987 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7989 JUMPIFNOT                        R24 ; [+5]
     7990 GETTABLEKS                       R24 R2 K42 ["metaData"]
     7992 GETTABLEKS                       R23 R24 K426 ["Price"]
     7994 JUMPIF                           R23 ; [+1]
     7995 LOADK                            R23 K44 [""]
     7996 LOADK                            R24 K44 [""]
     7997 FASTCALL1                        TOSTRING R23 ; [+3]
     7998 MOVE                             R28 R23
     7999 GETIMPORT                        R27 K4 [tostring]
     8001 CALL                             R27 1 1
     8002 MOVE                             R25 R27
     8003 LOADK                            R26 K44 [""]
     8004 CONCAT                           R22 R24 R26
     8005 SETTABLEKS                       R22 R21 K424 ["price"]
     8007 CALL                             R19 2 1
     8008 SETTABLEKS                       R19 R18 K24 ["translation"]
     8010 GETTABLEKS                       R19 R2 K14 ["userId"]
     8012 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8014 MOVE                             R19 R0
     8015 GETTABLEKS                       R20 R2 K14 ["userId"]
     8017 CALL                             R19 1 1
     8018 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8020 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8022 ORK                              R19 R20 K18 [0]
     8023 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8025 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8027 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8029 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8031 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8033 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8035 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8037 LOADK                            R20 K44 [""]
     8038 FASTCALL1                        TOSTRING R4 ; [+3]
     8039 MOVE                             R26 R4
     8040 GETIMPORT                        R25 K4 [tostring]
     8042 CALL                             R25 1 1
     8043 MOVE                             R21 R25
     8044 LOADK                            R22 K10 ["/developer-products/"]
     8045 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8047 FASTCALL1                        TOSTRING R26 ; [+2]
     8048 GETIMPORT                        R25 K4 [tostring]
     8050 CALL                             R25 1 1
     8051 MOVE                             R23 R25
     8052 LOADK                            R24 K11 ["/configure"]
     8053 CONCAT                           R19 R20 R24
     8054 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8056 LOADK                            R20 K44 [""]
     8057 GETUPVAL                         R26 1
     8058 FASTCALL1                        TOSTRING R26 ; [+2]
     8059 GETIMPORT                        R25 K4 [tostring]
     8061 CALL                             R25 1 1
     8062 MOVE                             R21 R25
     8063 LOADK                            R22 K356 ["developer-products/"]
     8064 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8066 FASTCALL1                        TOSTRING R26 ; [+2]
     8067 GETIMPORT                        R25 K4 [tostring]
     8069 CALL                             R25 1 1
     8070 MOVE                             R23 R25
     8071 LOADK                            R24 K44 [""]
     8072 CONCAT                           R19 R20 R24
     8073 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8075 RETURN                           R18 1
     8076 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8078 JUMPIFNOTEQKN                    R18 K479 [82] ; [+91]
     8080 DUPTABLE                         R18 K481 [{["id"], ["eventType"] = "DeveloperProductCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "DeveloperProduct", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8081 GETTABLEKS                       R19 R2 K19 ["id"]
     8083 SETTABLEKS                       R19 R18 K19 ["id"]
     8085 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8087 GETIMPORT                        R21 K35 [pcall]
     8089 NEWCLOSURE                       R22 P6
     8090 CAPTURE                          VAL R20
     8091 CAPTURE                          VAL R3
     8092 CALL                             R21 1 2
     8093 JUMPIFNOT                        R21 ; [+2]
     8094 MOVE                             R19 R22
     8095 JUMP                             ; [+1]
     8096 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8097 SETTABLEKS                       R19 R18 K23 ["date"]
     8099 MOVE                             R19 R12
     8100 LOADK                            R20 K482 ["Description.DeveloperProductCreate"]
     8101 CALL                             R19 1 1
     8102 SETTABLEKS                       R19 R18 K24 ["translation"]
     8104 GETTABLEKS                       R19 R2 K14 ["userId"]
     8106 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8108 MOVE                             R19 R0
     8109 GETTABLEKS                       R20 R2 K14 ["userId"]
     8111 CALL                             R19 1 1
     8112 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8114 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8116 ORK                              R19 R20 K18 [0]
     8117 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8119 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8121 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8123 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8125 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8127 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8129 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8131 LOADK                            R20 K44 [""]
     8132 FASTCALL1                        TOSTRING R4 ; [+3]
     8133 MOVE                             R26 R4
     8134 GETIMPORT                        R25 K4 [tostring]
     8136 CALL                             R25 1 1
     8137 MOVE                             R21 R25
     8138 LOADK                            R22 K10 ["/developer-products/"]
     8139 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8141 FASTCALL1                        TOSTRING R26 ; [+2]
     8142 GETIMPORT                        R25 K4 [tostring]
     8144 CALL                             R25 1 1
     8145 MOVE                             R23 R25
     8146 LOADK                            R24 K11 ["/configure"]
     8147 CONCAT                           R19 R20 R24
     8148 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8150 LOADK                            R20 K44 [""]
     8151 GETUPVAL                         R26 1
     8152 FASTCALL1                        TOSTRING R26 ; [+2]
     8153 GETIMPORT                        R25 K4 [tostring]
     8155 CALL                             R25 1 1
     8156 MOVE                             R21 R25
     8157 LOADK                            R22 K356 ["developer-products/"]
     8158 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8160 FASTCALL1                        TOSTRING R26 ; [+2]
     8161 GETIMPORT                        R25 K4 [tostring]
     8163 CALL                             R25 1 1
     8164 MOVE                             R23 R25
     8165 LOADK                            R24 K44 [""]
     8166 CONCAT                           R19 R20 R24
     8167 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8169 RETURN                           R18 1
     8170 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8172 JUMPIFNOTEQKN                    R18 K483 [83] ; [+132]
     8174 DUPTABLE                         R18 K485 [{["id"], ["eventType"] = "GamePassName", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8175 GETTABLEKS                       R19 R2 K19 ["id"]
     8177 SETTABLEKS                       R19 R18 K19 ["id"]
     8179 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8181 GETIMPORT                        R21 K35 [pcall]
     8183 NEWCLOSURE                       R22 P6
     8184 CAPTURE                          VAL R20
     8185 CAPTURE                          VAL R3
     8186 CALL                             R21 1 2
     8187 JUMPIFNOT                        R21 ; [+2]
     8188 MOVE                             R19 R22
     8189 JUMP                             ; [+1]
     8190 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8191 SETTABLEKS                       R19 R18 K23 ["date"]
     8193 MOVE                             R19 R12
     8194 LOADK                            R20 K486 ["Description.GamePassName"]
     8195 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
     8196 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8198 JUMPIFNOT                        R24 ; [+5]
     8199 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8201 GETTABLEKS                       R23 R24 K139 ["NewName"]
     8203 JUMPIF                           R23 ; [+1]
     8204 LOADK                            R23 K44 [""]
     8205 LOADK                            R24 K44 [""]
     8206 FASTCALL1                        TOSTRING R23 ; [+3]
     8207 MOVE                             R28 R23
     8208 GETIMPORT                        R27 K4 [tostring]
     8210 CALL                             R27 1 1
     8211 MOVE                             R25 R27
     8212 LOADK                            R26 K44 [""]
     8213 CONCAT                           R22 R24 R26
     8214 SETTABLEKS                       R22 R21 K136 ["newName"]
     8216 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8218 JUMPIFNOT                        R24 ; [+5]
     8219 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8221 GETTABLEKS                       R23 R24 K140 ["OldName"]
     8223 JUMPIF                           R23 ; [+1]
     8224 LOADK                            R23 K44 [""]
     8225 LOADK                            R24 K44 [""]
     8226 FASTCALL1                        TOSTRING R23 ; [+3]
     8227 MOVE                             R28 R23
     8228 GETIMPORT                        R27 K4 [tostring]
     8230 CALL                             R27 1 1
     8231 MOVE                             R25 R27
     8232 LOADK                            R26 K44 [""]
     8233 CONCAT                           R22 R24 R26
     8234 SETTABLEKS                       R22 R21 K137 ["oldName"]
     8236 CALL                             R19 2 1
     8237 SETTABLEKS                       R19 R18 K24 ["translation"]
     8239 GETTABLEKS                       R19 R2 K14 ["userId"]
     8241 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8243 MOVE                             R19 R0
     8244 GETTABLEKS                       R20 R2 K14 ["userId"]
     8246 CALL                             R19 1 1
     8247 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8249 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8251 ORK                              R19 R20 K18 [0]
     8252 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8254 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8256 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8258 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8260 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8262 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8264 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8266 LOADK                            R20 K44 [""]
     8267 FASTCALL1                        TOSTRING R4 ; [+3]
     8268 MOVE                             R26 R4
     8269 GETIMPORT                        R25 K4 [tostring]
     8271 CALL                             R25 1 1
     8272 MOVE                             R21 R25
     8273 LOADK                            R22 K12 ["/passes/"]
     8274 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8276 FASTCALL1                        TOSTRING R26 ; [+2]
     8277 GETIMPORT                        R25 K4 [tostring]
     8279 CALL                             R25 1 1
     8280 MOVE                             R23 R25
     8281 LOADK                            R24 K11 ["/configure"]
     8282 CONCAT                           R19 R20 R24
     8283 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8285 LOADK                            R20 K44 [""]
     8286 GETUPVAL                         R26 1
     8287 FASTCALL1                        TOSTRING R26 ; [+2]
     8288 GETIMPORT                        R25 K4 [tostring]
     8290 CALL                             R25 1 1
     8291 MOVE                             R21 R25
     8292 LOADK                            R22 K377 ["game-pass/"]
     8293 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8295 FASTCALL1                        TOSTRING R26 ; [+2]
     8296 GETIMPORT                        R25 K4 [tostring]
     8298 CALL                             R25 1 1
     8299 MOVE                             R23 R25
     8300 LOADK                            R24 K44 [""]
     8301 CONCAT                           R19 R20 R24
     8302 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8304 RETURN                           R18 1
     8305 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8307 JUMPIFNOTEQKN                    R18 K487 [84] ; [+91]
     8309 DUPTABLE                         R18 K489 [{["id"], ["eventType"] = "GamePassDescription", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8310 GETTABLEKS                       R19 R2 K19 ["id"]
     8312 SETTABLEKS                       R19 R18 K19 ["id"]
     8314 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8316 GETIMPORT                        R21 K35 [pcall]
     8318 NEWCLOSURE                       R22 P6
     8319 CAPTURE                          VAL R20
     8320 CAPTURE                          VAL R3
     8321 CALL                             R21 1 2
     8322 JUMPIFNOT                        R21 ; [+2]
     8323 MOVE                             R19 R22
     8324 JUMP                             ; [+1]
     8325 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8326 SETTABLEKS                       R19 R18 K23 ["date"]
     8328 MOVE                             R19 R12
     8329 LOADK                            R20 K490 ["Description.GamePassDescription"]
     8330 CALL                             R19 1 1
     8331 SETTABLEKS                       R19 R18 K24 ["translation"]
     8333 GETTABLEKS                       R19 R2 K14 ["userId"]
     8335 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8337 MOVE                             R19 R0
     8338 GETTABLEKS                       R20 R2 K14 ["userId"]
     8340 CALL                             R19 1 1
     8341 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8343 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8345 ORK                              R19 R20 K18 [0]
     8346 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8348 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8350 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8352 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8354 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8356 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8358 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8360 LOADK                            R20 K44 [""]
     8361 FASTCALL1                        TOSTRING R4 ; [+3]
     8362 MOVE                             R26 R4
     8363 GETIMPORT                        R25 K4 [tostring]
     8365 CALL                             R25 1 1
     8366 MOVE                             R21 R25
     8367 LOADK                            R22 K12 ["/passes/"]
     8368 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8370 FASTCALL1                        TOSTRING R26 ; [+2]
     8371 GETIMPORT                        R25 K4 [tostring]
     8373 CALL                             R25 1 1
     8374 MOVE                             R23 R25
     8375 LOADK                            R24 K11 ["/configure"]
     8376 CONCAT                           R19 R20 R24
     8377 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8379 LOADK                            R20 K44 [""]
     8380 GETUPVAL                         R26 1
     8381 FASTCALL1                        TOSTRING R26 ; [+2]
     8382 GETIMPORT                        R25 K4 [tostring]
     8384 CALL                             R25 1 1
     8385 MOVE                             R21 R25
     8386 LOADK                            R22 K377 ["game-pass/"]
     8387 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8389 FASTCALL1                        TOSTRING R26 ; [+2]
     8390 GETIMPORT                        R25 K4 [tostring]
     8392 CALL                             R25 1 1
     8393 MOVE                             R23 R25
     8394 LOADK                            R24 K44 [""]
     8395 CONCAT                           R19 R20 R24
     8396 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8398 RETURN                           R18 1
     8399 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8401 JUMPIFNOTEQKN                    R18 K491 [85] ; [+91]
     8403 DUPTABLE                         R18 K493 [{["id"], ["eventType"] = "GamePassIcon", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8404 GETTABLEKS                       R19 R2 K19 ["id"]
     8406 SETTABLEKS                       R19 R18 K19 ["id"]
     8408 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8410 GETIMPORT                        R21 K35 [pcall]
     8412 NEWCLOSURE                       R22 P6
     8413 CAPTURE                          VAL R20
     8414 CAPTURE                          VAL R3
     8415 CALL                             R21 1 2
     8416 JUMPIFNOT                        R21 ; [+2]
     8417 MOVE                             R19 R22
     8418 JUMP                             ; [+1]
     8419 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8420 SETTABLEKS                       R19 R18 K23 ["date"]
     8422 MOVE                             R19 R12
     8423 LOADK                            R20 K494 ["Description.GamePassIcon"]
     8424 CALL                             R19 1 1
     8425 SETTABLEKS                       R19 R18 K24 ["translation"]
     8427 GETTABLEKS                       R19 R2 K14 ["userId"]
     8429 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8431 MOVE                             R19 R0
     8432 GETTABLEKS                       R20 R2 K14 ["userId"]
     8434 CALL                             R19 1 1
     8435 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8437 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8439 ORK                              R19 R20 K18 [0]
     8440 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8442 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8444 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8446 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8448 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8450 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8452 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8454 LOADK                            R20 K44 [""]
     8455 FASTCALL1                        TOSTRING R4 ; [+3]
     8456 MOVE                             R26 R4
     8457 GETIMPORT                        R25 K4 [tostring]
     8459 CALL                             R25 1 1
     8460 MOVE                             R21 R25
     8461 LOADK                            R22 K12 ["/passes/"]
     8462 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8464 FASTCALL1                        TOSTRING R26 ; [+2]
     8465 GETIMPORT                        R25 K4 [tostring]
     8467 CALL                             R25 1 1
     8468 MOVE                             R23 R25
     8469 LOADK                            R24 K11 ["/configure"]
     8470 CONCAT                           R19 R20 R24
     8471 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8473 LOADK                            R20 K44 [""]
     8474 GETUPVAL                         R26 1
     8475 FASTCALL1                        TOSTRING R26 ; [+2]
     8476 GETIMPORT                        R25 K4 [tostring]
     8478 CALL                             R25 1 1
     8479 MOVE                             R21 R25
     8480 LOADK                            R22 K377 ["game-pass/"]
     8481 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8483 FASTCALL1                        TOSTRING R26 ; [+2]
     8484 GETIMPORT                        R25 K4 [tostring]
     8486 CALL                             R25 1 1
     8487 MOVE                             R23 R25
     8488 LOADK                            R24 K44 [""]
     8489 CONCAT                           R19 R20 R24
     8490 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8492 RETURN                           R18 1
     8493 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8495 JUMPIFNOTEQKN                    R18 K495 [86] ; [+112]
     8497 DUPTABLE                         R18 K497 [{["id"], ["eventType"] = "GamePassPrice", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8498 GETTABLEKS                       R19 R2 K19 ["id"]
     8500 SETTABLEKS                       R19 R18 K19 ["id"]
     8502 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8504 GETIMPORT                        R21 K35 [pcall]
     8506 NEWCLOSURE                       R22 P6
     8507 CAPTURE                          VAL R20
     8508 CAPTURE                          VAL R3
     8509 CALL                             R21 1 2
     8510 JUMPIFNOT                        R21 ; [+2]
     8511 MOVE                             R19 R22
     8512 JUMP                             ; [+1]
     8513 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8514 SETTABLEKS                       R19 R18 K23 ["date"]
     8516 MOVE                             R19 R12
     8517 LOADK                            R20 K498 ["Description.GamePassPrice"]
     8518 DUPTABLE                         R21 K425 [{"price"}]
     8519 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8521 JUMPIFNOT                        R24 ; [+5]
     8522 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8524 GETTABLEKS                       R23 R24 K426 ["Price"]
     8526 JUMPIF                           R23 ; [+1]
     8527 LOADK                            R23 K44 [""]
     8528 LOADK                            R24 K44 [""]
     8529 FASTCALL1                        TOSTRING R23 ; [+3]
     8530 MOVE                             R28 R23
     8531 GETIMPORT                        R27 K4 [tostring]
     8533 CALL                             R27 1 1
     8534 MOVE                             R25 R27
     8535 LOADK                            R26 K44 [""]
     8536 CONCAT                           R22 R24 R26
     8537 SETTABLEKS                       R22 R21 K424 ["price"]
     8539 CALL                             R19 2 1
     8540 SETTABLEKS                       R19 R18 K24 ["translation"]
     8542 GETTABLEKS                       R19 R2 K14 ["userId"]
     8544 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8546 MOVE                             R19 R0
     8547 GETTABLEKS                       R20 R2 K14 ["userId"]
     8549 CALL                             R19 1 1
     8550 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8552 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8554 ORK                              R19 R20 K18 [0]
     8555 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8557 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8559 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8561 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8563 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8565 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8567 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8569 LOADK                            R20 K44 [""]
     8570 FASTCALL1                        TOSTRING R4 ; [+3]
     8571 MOVE                             R26 R4
     8572 GETIMPORT                        R25 K4 [tostring]
     8574 CALL                             R25 1 1
     8575 MOVE                             R21 R25
     8576 LOADK                            R22 K12 ["/passes/"]
     8577 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8579 FASTCALL1                        TOSTRING R26 ; [+2]
     8580 GETIMPORT                        R25 K4 [tostring]
     8582 CALL                             R25 1 1
     8583 MOVE                             R23 R25
     8584 LOADK                            R24 K499 ["/sales"]
     8585 CONCAT                           R19 R20 R24
     8586 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8588 LOADK                            R20 K44 [""]
     8589 GETUPVAL                         R26 1
     8590 FASTCALL1                        TOSTRING R26 ; [+2]
     8591 GETIMPORT                        R25 K4 [tostring]
     8593 CALL                             R25 1 1
     8594 MOVE                             R21 R25
     8595 LOADK                            R22 K377 ["game-pass/"]
     8596 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8598 FASTCALL1                        TOSTRING R26 ; [+2]
     8599 GETIMPORT                        R25 K4 [tostring]
     8601 CALL                             R25 1 1
     8602 MOVE                             R23 R25
     8603 LOADK                            R24 K44 [""]
     8604 CONCAT                           R19 R20 R24
     8605 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8607 RETURN                           R18 1
     8608 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8610 JUMPIFNOTEQKN                    R18 K500 [87] ; [+91]
     8612 DUPTABLE                         R18 K502 [{["id"], ["eventType"] = "GamePassCreate", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "GamePass", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     8613 GETTABLEKS                       R19 R2 K19 ["id"]
     8615 SETTABLEKS                       R19 R18 K19 ["id"]
     8617 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8619 GETIMPORT                        R21 K35 [pcall]
     8621 NEWCLOSURE                       R22 P6
     8622 CAPTURE                          VAL R20
     8623 CAPTURE                          VAL R3
     8624 CALL                             R21 1 2
     8625 JUMPIFNOT                        R21 ; [+2]
     8626 MOVE                             R19 R22
     8627 JUMP                             ; [+1]
     8628 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8629 SETTABLEKS                       R19 R18 K23 ["date"]
     8631 MOVE                             R19 R12
     8632 LOADK                            R20 K503 ["Description.GamePassCreate"]
     8633 CALL                             R19 1 1
     8634 SETTABLEKS                       R19 R18 K24 ["translation"]
     8636 GETTABLEKS                       R19 R2 K14 ["userId"]
     8638 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8640 MOVE                             R19 R0
     8641 GETTABLEKS                       R20 R2 K14 ["userId"]
     8643 CALL                             R19 1 1
     8644 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8646 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8648 ORK                              R19 R20 K18 [0]
     8649 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8651 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8653 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8655 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8657 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8659 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8661 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8663 LOADK                            R20 K44 [""]
     8664 FASTCALL1                        TOSTRING R4 ; [+3]
     8665 MOVE                             R26 R4
     8666 GETIMPORT                        R25 K4 [tostring]
     8668 CALL                             R25 1 1
     8669 MOVE                             R21 R25
     8670 LOADK                            R22 K12 ["/passes/"]
     8671 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8673 FASTCALL1                        TOSTRING R26 ; [+2]
     8674 GETIMPORT                        R25 K4 [tostring]
     8676 CALL                             R25 1 1
     8677 MOVE                             R23 R25
     8678 LOADK                            R24 K11 ["/configure"]
     8679 CONCAT                           R19 R20 R24
     8680 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     8682 LOADK                            R20 K44 [""]
     8683 GETUPVAL                         R26 1
     8684 FASTCALL1                        TOSTRING R26 ; [+2]
     8685 GETIMPORT                        R25 K4 [tostring]
     8687 CALL                             R25 1 1
     8688 MOVE                             R21 R25
     8689 LOADK                            R22 K377 ["game-pass/"]
     8690 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8692 FASTCALL1                        TOSTRING R26 ; [+2]
     8693 GETIMPORT                        R25 K4 [tostring]
     8695 CALL                             R25 1 1
     8696 MOVE                             R23 R25
     8697 LOADK                            R24 K44 [""]
     8698 CONCAT                           R19 R20 R24
     8699 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8701 RETURN                           R18 1
     8702 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8704 JUMPIFNOTEQKN                    R18 K504 [88] ; [+100]
     8706 DUPTABLE                         R18 K507 [{["id"], ["eventType"] = "PermissionsUserAdded", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8707 GETTABLEKS                       R19 R2 K19 ["id"]
     8709 SETTABLEKS                       R19 R18 K19 ["id"]
     8711 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8713 GETIMPORT                        R21 K35 [pcall]
     8715 NEWCLOSURE                       R22 P6
     8716 CAPTURE                          VAL R20
     8717 CAPTURE                          VAL R3
     8718 CALL                             R21 1 2
     8719 JUMPIFNOT                        R21 ; [+2]
     8720 MOVE                             R19 R22
     8721 JUMP                             ; [+1]
     8722 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8723 SETTABLEKS                       R19 R18 K23 ["date"]
     8725 MOVE                             R19 R12
     8726 LOADK                            R20 K508 ["Description.PermissionsUserAdded"]
     8727 DUPTABLE                         R21 K510 [{"userName", "role"}]
     8728 MOVE                             R23 R0
     8729 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8731 CALL                             R23 1 1
     8732 LOADK                            R24 K44 [""]
     8733 FASTCALL1                        TOSTRING R23 ; [+3]
     8734 MOVE                             R28 R23
     8735 GETIMPORT                        R27 K4 [tostring]
     8737 CALL                             R27 1 1
     8738 MOVE                             R25 R27
     8739 LOADK                            R26 K44 [""]
     8740 CONCAT                           R22 R24 R26
     8741 SETTABLEKS                       R22 R21 K395 ["userName"]
     8743 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8745 JUMPIFNOT                        R25 ; [+5]
     8746 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8748 GETTABLEKS                       R24 R25 K43 ["Action"]
     8750 JUMPIF                           R24 ; [+1]
     8751 LOADK                            R24 K44 [""]
     8752 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8754 MOVE                             R23 R12
     8755 LOADK                            R24 K512 ["Action.Edit"]
     8756 CALL                             R23 1 1
     8757 JUMPIF                           R23 ; [+3]
     8758 MOVE                             R23 R12
     8759 LOADK                            R24 K513 ["Action.Play"]
     8760 CALL                             R23 1 1
     8761 LOADK                            R24 K44 [""]
     8762 FASTCALL1                        TOSTRING R23 ; [+3]
     8763 MOVE                             R28 R23
     8764 GETIMPORT                        R27 K4 [tostring]
     8766 CALL                             R27 1 1
     8767 MOVE                             R25 R27
     8768 LOADK                            R26 K44 [""]
     8769 CONCAT                           R22 R24 R26
     8770 SETTABLEKS                       R22 R21 K509 ["role"]
     8772 CALL                             R19 2 1
     8773 SETTABLEKS                       R19 R18 K24 ["translation"]
     8775 GETTABLEKS                       R19 R2 K14 ["userId"]
     8777 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8779 MOVE                             R19 R0
     8780 GETTABLEKS                       R20 R2 K14 ["userId"]
     8782 CALL                             R19 1 1
     8783 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8785 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8787 ORK                              R19 R20 K18 [0]
     8788 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8790 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8792 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8794 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8796 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8798 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8800 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8802 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     8804 RETURN                           R18 1
     8805 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8807 JUMPIFNOTEQKN                    R18 K514 [89] ; [+142]
     8809 DUPTABLE                         R18 K516 [{["id"], ["eventType"] = "PermissionsGroupAdded", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8810 GETTABLEKS                       R19 R2 K19 ["id"]
     8812 SETTABLEKS                       R19 R18 K19 ["id"]
     8814 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8816 GETIMPORT                        R21 K35 [pcall]
     8818 NEWCLOSURE                       R22 P6
     8819 CAPTURE                          VAL R20
     8820 CAPTURE                          VAL R3
     8821 CALL                             R21 1 2
     8822 JUMPIFNOT                        R21 ; [+2]
     8823 MOVE                             R19 R22
     8824 JUMP                             ; [+1]
     8825 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8826 SETTABLEKS                       R19 R18 K23 ["date"]
     8828 MOVE                             R19 R12
     8829 LOADK                            R20 K517 ["Description.PermissionsGroupAdded"]
     8830 DUPTABLE                         R21 K519 [{"groupRole", "groupName", "role"}]
     8831 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8833 JUMPIFNOT                        R24 ; [+5]
     8834 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8836 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     8838 JUMPIF                           R23 ; [+1]
     8839 LOADK                            R23 K44 [""]
     8840 LOADK                            R24 K44 [""]
     8841 FASTCALL1                        TOSTRING R23 ; [+3]
     8842 MOVE                             R28 R23
     8843 GETIMPORT                        R27 K4 [tostring]
     8845 CALL                             R27 1 1
     8846 MOVE                             R25 R27
     8847 LOADK                            R26 K44 [""]
     8848 CONCAT                           R22 R24 R26
     8849 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     8851 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8853 JUMPIFNOT                        R24 ; [+5]
     8854 GETTABLEKS                       R24 R2 K42 ["metaData"]
     8856 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     8858 JUMPIF                           R23 ; [+1]
     8859 LOADK                            R23 K44 [""]
     8860 LOADK                            R24 K44 [""]
     8861 FASTCALL1                        TOSTRING R23 ; [+3]
     8862 MOVE                             R28 R23
     8863 GETIMPORT                        R27 K4 [tostring]
     8865 CALL                             R27 1 1
     8866 MOVE                             R25 R27
     8867 LOADK                            R26 K44 [""]
     8868 CONCAT                           R22 R24 R26
     8869 SETTABLEKS                       R22 R21 K402 ["groupName"]
     8871 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8873 JUMPIFNOT                        R25 ; [+5]
     8874 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8876 GETTABLEKS                       R24 R25 K43 ["Action"]
     8878 JUMPIF                           R24 ; [+1]
     8879 LOADK                            R24 K44 [""]
     8880 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     8882 MOVE                             R23 R12
     8883 LOADK                            R24 K512 ["Action.Edit"]
     8884 CALL                             R23 1 1
     8885 JUMPIF                           R23 ; [+3]
     8886 MOVE                             R23 R12
     8887 LOADK                            R24 K513 ["Action.Play"]
     8888 CALL                             R23 1 1
     8889 LOADK                            R24 K44 [""]
     8890 FASTCALL1                        TOSTRING R23 ; [+3]
     8891 MOVE                             R28 R23
     8892 GETIMPORT                        R27 K4 [tostring]
     8894 CALL                             R27 1 1
     8895 MOVE                             R25 R27
     8896 LOADK                            R26 K44 [""]
     8897 CONCAT                           R22 R24 R26
     8898 SETTABLEKS                       R22 R21 K509 ["role"]
     8900 CALL                             R19 2 1
     8901 SETTABLEKS                       R19 R18 K24 ["translation"]
     8903 GETTABLEKS                       R19 R2 K14 ["userId"]
     8905 SETTABLEKS                       R19 R18 K25 ["actorId"]
     8907 MOVE                             R19 R0
     8908 GETTABLEKS                       R20 R2 K14 ["userId"]
     8910 CALL                             R19 1 1
     8911 SETTABLEKS                       R19 R18 K26 ["actorName"]
     8913 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8915 ORK                              R19 R20 K18 [0]
     8916 SETTABLEKS                       R19 R18 K29 ["iconId"]
     8918 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8920 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8922 GETTABLEKS                       R19 R2 K30 ["headerText"]
     8924 SETTABLEKS                       R19 R18 K30 ["headerText"]
     8926 GETTABLEKS                       R19 R2 K31 ["footerText"]
     8928 SETTABLEKS                       R19 R18 K31 ["footerText"]
     8930 LOADK                            R20 K44 [""]
     8931 GETUPVAL                         R26 1
     8932 FASTCALL1                        TOSTRING R26 ; [+2]
     8933 GETIMPORT                        R25 K4 [tostring]
     8935 CALL                             R25 1 1
     8936 MOVE                             R21 R25
     8937 LOADK                            R22 K16 ["groups/"]
     8938 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8940 FASTCALL1                        TOSTRING R26 ; [+2]
     8941 GETIMPORT                        R25 K4 [tostring]
     8943 CALL                             R25 1 1
     8944 MOVE                             R23 R25
     8945 LOADK                            R24 K44 [""]
     8946 CONCAT                           R19 R20 R24
     8947 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     8949 RETURN                           R18 1
     8950 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8952 JUMPIFNOTEQKN                    R18 K521 [90] ; [+129]
     8954 DUPTABLE                         R18 K523 [{["id"], ["eventType"] = "PermissionsUserChanged", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     8955 GETTABLEKS                       R19 R2 K19 ["id"]
     8957 SETTABLEKS                       R19 R18 K19 ["id"]
     8959 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     8961 GETIMPORT                        R21 K35 [pcall]
     8963 NEWCLOSURE                       R22 P6
     8964 CAPTURE                          VAL R20
     8965 CAPTURE                          VAL R3
     8966 CALL                             R21 1 2
     8967 JUMPIFNOT                        R21 ; [+2]
     8968 MOVE                             R19 R22
     8969 JUMP                             ; [+1]
     8970 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     8971 SETTABLEKS                       R19 R18 K23 ["date"]
     8973 MOVE                             R19 R12
     8974 LOADK                            R20 K524 ["Description.PermissionsUserChanged"]
     8975 DUPTABLE                         R21 K527 [{"userName", "oldRole", "newRole"}]
     8976 MOVE                             R23 R0
     8977 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     8979 CALL                             R23 1 1
     8980 LOADK                            R24 K44 [""]
     8981 FASTCALL1                        TOSTRING R23 ; [+3]
     8982 MOVE                             R28 R23
     8983 GETIMPORT                        R27 K4 [tostring]
     8985 CALL                             R27 1 1
     8986 MOVE                             R25 R27
     8987 LOADK                            R26 K44 [""]
     8988 CONCAT                           R22 R24 R26
     8989 SETTABLEKS                       R22 R21 K395 ["userName"]
     8991 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8993 JUMPIFNOT                        R25 ; [+5]
     8994 GETTABLEKS                       R25 R2 K42 ["metaData"]
     8996 GETTABLEKS                       R24 R25 K43 ["Action"]
     8998 JUMPIF                           R24 ; [+1]
     8999 LOADK                            R24 K44 [""]
     9000 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9002 MOVE                             R23 R12
     9003 LOADK                            R24 K513 ["Action.Play"]
     9004 CALL                             R23 1 1
     9005 JUMPIF                           R23 ; [+3]
     9006 MOVE                             R23 R12
     9007 LOADK                            R24 K512 ["Action.Edit"]
     9008 CALL                             R23 1 1
     9009 LOADK                            R24 K44 [""]
     9010 FASTCALL1                        TOSTRING R23 ; [+3]
     9011 MOVE                             R28 R23
     9012 GETIMPORT                        R27 K4 [tostring]
     9014 CALL                             R27 1 1
     9015 MOVE                             R25 R27
     9016 LOADK                            R26 K44 [""]
     9017 CONCAT                           R22 R24 R26
     9018 SETTABLEKS                       R22 R21 K525 ["oldRole"]
     9020 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9022 JUMPIFNOT                        R25 ; [+5]
     9023 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9025 GETTABLEKS                       R24 R25 K43 ["Action"]
     9027 JUMPIF                           R24 ; [+1]
     9028 LOADK                            R24 K44 [""]
     9029 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9031 MOVE                             R23 R12
     9032 LOADK                            R24 K512 ["Action.Edit"]
     9033 CALL                             R23 1 1
     9034 JUMPIF                           R23 ; [+3]
     9035 MOVE                             R23 R12
     9036 LOADK                            R24 K513 ["Action.Play"]
     9037 CALL                             R23 1 1
     9038 LOADK                            R24 K44 [""]
     9039 FASTCALL1                        TOSTRING R23 ; [+3]
     9040 MOVE                             R28 R23
     9041 GETIMPORT                        R27 K4 [tostring]
     9043 CALL                             R27 1 1
     9044 MOVE                             R25 R27
     9045 LOADK                            R26 K44 [""]
     9046 CONCAT                           R22 R24 R26
     9047 SETTABLEKS                       R22 R21 K526 ["newRole"]
     9049 CALL                             R19 2 1
     9050 SETTABLEKS                       R19 R18 K24 ["translation"]
     9052 GETTABLEKS                       R19 R2 K14 ["userId"]
     9054 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9056 MOVE                             R19 R0
     9057 GETTABLEKS                       R20 R2 K14 ["userId"]
     9059 CALL                             R19 1 1
     9060 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9062 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9064 ORK                              R19 R20 K18 [0]
     9065 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9067 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9069 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9071 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9073 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9075 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9077 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9079 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     9081 RETURN                           R18 1
     9082 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9084 JUMPIFNOTEQKN                    R18 K528 [91] ; [+100]
     9086 DUPTABLE                         R18 K530 [{["id"], ["eventType"] = "PermissionsUserRemoved", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9087 GETTABLEKS                       R19 R2 K19 ["id"]
     9089 SETTABLEKS                       R19 R18 K19 ["id"]
     9091 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9093 GETIMPORT                        R21 K35 [pcall]
     9095 NEWCLOSURE                       R22 P6
     9096 CAPTURE                          VAL R20
     9097 CAPTURE                          VAL R3
     9098 CALL                             R21 1 2
     9099 JUMPIFNOT                        R21 ; [+2]
     9100 MOVE                             R19 R22
     9101 JUMP                             ; [+1]
     9102 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9103 SETTABLEKS                       R19 R18 K23 ["date"]
     9105 MOVE                             R19 R12
     9106 LOADK                            R20 K531 ["Description.PermissionsUserRemoved"]
     9107 DUPTABLE                         R21 K510 [{"userName", "role"}]
     9108 MOVE                             R23 R0
     9109 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9111 CALL                             R23 1 1
     9112 LOADK                            R24 K44 [""]
     9113 FASTCALL1                        TOSTRING R23 ; [+3]
     9114 MOVE                             R28 R23
     9115 GETIMPORT                        R27 K4 [tostring]
     9117 CALL                             R27 1 1
     9118 MOVE                             R25 R27
     9119 LOADK                            R26 K44 [""]
     9120 CONCAT                           R22 R24 R26
     9121 SETTABLEKS                       R22 R21 K395 ["userName"]
     9123 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9125 JUMPIFNOT                        R25 ; [+5]
     9126 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9128 GETTABLEKS                       R24 R25 K43 ["Action"]
     9130 JUMPIF                           R24 ; [+1]
     9131 LOADK                            R24 K44 [""]
     9132 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9134 MOVE                             R23 R12
     9135 LOADK                            R24 K532 ["Description.RoleEditor"]
     9136 CALL                             R23 1 1
     9137 JUMPIF                           R23 ; [+3]
     9138 MOVE                             R23 R12
     9139 LOADK                            R24 K533 ["Description.RolePlayer"]
     9140 CALL                             R23 1 1
     9141 LOADK                            R24 K44 [""]
     9142 FASTCALL1                        TOSTRING R23 ; [+3]
     9143 MOVE                             R28 R23
     9144 GETIMPORT                        R27 K4 [tostring]
     9146 CALL                             R27 1 1
     9147 MOVE                             R25 R27
     9148 LOADK                            R26 K44 [""]
     9149 CONCAT                           R22 R24 R26
     9150 SETTABLEKS                       R22 R21 K509 ["role"]
     9152 CALL                             R19 2 1
     9153 SETTABLEKS                       R19 R18 K24 ["translation"]
     9155 GETTABLEKS                       R19 R2 K14 ["userId"]
     9157 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9159 MOVE                             R19 R0
     9160 GETTABLEKS                       R20 R2 K14 ["userId"]
     9162 CALL                             R19 1 1
     9163 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9165 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9167 ORK                              R19 R20 K18 [0]
     9168 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9170 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9172 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9174 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9176 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9178 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9180 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9182 SETTABLEKS                       R10 R18 K273 ["viewOnRobloxLink"]
     9184 RETURN                           R18 1
     9185 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9187 JUMPIFNOTEQKN                    R18 K534 [92] ; [+171]
     9189 DUPTABLE                         R18 K536 [{["id"], ["eventType"] = "PermissionsGroupChanged", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9190 GETTABLEKS                       R19 R2 K19 ["id"]
     9192 SETTABLEKS                       R19 R18 K19 ["id"]
     9194 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9196 GETIMPORT                        R21 K35 [pcall]
     9198 NEWCLOSURE                       R22 P6
     9199 CAPTURE                          VAL R20
     9200 CAPTURE                          VAL R3
     9201 CALL                             R21 1 2
     9202 JUMPIFNOT                        R21 ; [+2]
     9203 MOVE                             R19 R22
     9204 JUMP                             ; [+1]
     9205 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9206 SETTABLEKS                       R19 R18 K23 ["date"]
     9208 MOVE                             R19 R12
     9209 LOADK                            R20 K537 ["Description.PermissionsGroupChanged"]
     9210 DUPTABLE                         R21 K538 [{"groupRole", "groupName", "oldRole", "newRole"}]
     9211 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9213 JUMPIFNOT                        R24 ; [+5]
     9214 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9216 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     9218 JUMPIF                           R23 ; [+1]
     9219 LOADK                            R23 K44 [""]
     9220 LOADK                            R24 K44 [""]
     9221 FASTCALL1                        TOSTRING R23 ; [+3]
     9222 MOVE                             R28 R23
     9223 GETIMPORT                        R27 K4 [tostring]
     9225 CALL                             R27 1 1
     9226 MOVE                             R25 R27
     9227 LOADK                            R26 K44 [""]
     9228 CONCAT                           R22 R24 R26
     9229 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     9231 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9233 JUMPIFNOT                        R24 ; [+5]
     9234 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9236 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     9238 JUMPIF                           R23 ; [+1]
     9239 LOADK                            R23 K44 [""]
     9240 LOADK                            R24 K44 [""]
     9241 FASTCALL1                        TOSTRING R23 ; [+3]
     9242 MOVE                             R28 R23
     9243 GETIMPORT                        R27 K4 [tostring]
     9245 CALL                             R27 1 1
     9246 MOVE                             R25 R27
     9247 LOADK                            R26 K44 [""]
     9248 CONCAT                           R22 R24 R26
     9249 SETTABLEKS                       R22 R21 K402 ["groupName"]
     9251 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9253 JUMPIFNOT                        R25 ; [+5]
     9254 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9256 GETTABLEKS                       R24 R25 K43 ["Action"]
     9258 JUMPIF                           R24 ; [+1]
     9259 LOADK                            R24 K44 [""]
     9260 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9262 MOVE                             R23 R12
     9263 LOADK                            R24 K513 ["Action.Play"]
     9264 CALL                             R23 1 1
     9265 JUMPIF                           R23 ; [+3]
     9266 MOVE                             R23 R12
     9267 LOADK                            R24 K512 ["Action.Edit"]
     9268 CALL                             R23 1 1
     9269 LOADK                            R24 K44 [""]
     9270 FASTCALL1                        TOSTRING R23 ; [+3]
     9271 MOVE                             R28 R23
     9272 GETIMPORT                        R27 K4 [tostring]
     9274 CALL                             R27 1 1
     9275 MOVE                             R25 R27
     9276 LOADK                            R26 K44 [""]
     9277 CONCAT                           R22 R24 R26
     9278 SETTABLEKS                       R22 R21 K525 ["oldRole"]
     9280 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9282 JUMPIFNOT                        R25 ; [+5]
     9283 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9285 GETTABLEKS                       R24 R25 K43 ["Action"]
     9287 JUMPIF                           R24 ; [+1]
     9288 LOADK                            R24 K44 [""]
     9289 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9291 MOVE                             R23 R12
     9292 LOADK                            R24 K512 ["Action.Edit"]
     9293 CALL                             R23 1 1
     9294 JUMPIF                           R23 ; [+3]
     9295 MOVE                             R23 R12
     9296 LOADK                            R24 K513 ["Action.Play"]
     9297 CALL                             R23 1 1
     9298 LOADK                            R24 K44 [""]
     9299 FASTCALL1                        TOSTRING R23 ; [+3]
     9300 MOVE                             R28 R23
     9301 GETIMPORT                        R27 K4 [tostring]
     9303 CALL                             R27 1 1
     9304 MOVE                             R25 R27
     9305 LOADK                            R26 K44 [""]
     9306 CONCAT                           R22 R24 R26
     9307 SETTABLEKS                       R22 R21 K526 ["newRole"]
     9309 CALL                             R19 2 1
     9310 SETTABLEKS                       R19 R18 K24 ["translation"]
     9312 GETTABLEKS                       R19 R2 K14 ["userId"]
     9314 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9316 MOVE                             R19 R0
     9317 GETTABLEKS                       R20 R2 K14 ["userId"]
     9319 CALL                             R19 1 1
     9320 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9322 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9324 ORK                              R19 R20 K18 [0]
     9325 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9327 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9329 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9331 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9333 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9335 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9337 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9339 LOADK                            R20 K44 [""]
     9340 GETUPVAL                         R26 1
     9341 FASTCALL1                        TOSTRING R26 ; [+2]
     9342 GETIMPORT                        R25 K4 [tostring]
     9344 CALL                             R25 1 1
     9345 MOVE                             R21 R25
     9346 LOADK                            R22 K16 ["groups/"]
     9347 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9349 FASTCALL1                        TOSTRING R26 ; [+2]
     9350 GETIMPORT                        R25 K4 [tostring]
     9352 CALL                             R25 1 1
     9353 MOVE                             R23 R25
     9354 LOADK                            R24 K44 [""]
     9355 CONCAT                           R19 R20 R24
     9356 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9358 RETURN                           R18 1
     9359 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9361 JUMPIFNOTEQKN                    R18 K539 [93] ; [+142]
     9363 DUPTABLE                         R18 K541 [{["id"], ["eventType"] = "PermissionsGroupRemoved", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9364 GETTABLEKS                       R19 R2 K19 ["id"]
     9366 SETTABLEKS                       R19 R18 K19 ["id"]
     9368 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9370 GETIMPORT                        R21 K35 [pcall]
     9372 NEWCLOSURE                       R22 P6
     9373 CAPTURE                          VAL R20
     9374 CAPTURE                          VAL R3
     9375 CALL                             R21 1 2
     9376 JUMPIFNOT                        R21 ; [+2]
     9377 MOVE                             R19 R22
     9378 JUMP                             ; [+1]
     9379 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9380 SETTABLEKS                       R19 R18 K23 ["date"]
     9382 MOVE                             R19 R12
     9383 LOADK                            R20 K542 ["Description.PermissionsGroupRemoved"]
     9384 DUPTABLE                         R21 K519 [{"groupRole", "groupName", "role"}]
     9385 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9387 JUMPIFNOT                        R24 ; [+5]
     9388 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9390 GETTABLEKS                       R23 R24 K520 ["RolesetName"]
     9392 JUMPIF                           R23 ; [+1]
     9393 LOADK                            R23 K44 [""]
     9394 LOADK                            R24 K44 [""]
     9395 FASTCALL1                        TOSTRING R23 ; [+3]
     9396 MOVE                             R28 R23
     9397 GETIMPORT                        R27 K4 [tostring]
     9399 CALL                             R27 1 1
     9400 MOVE                             R25 R27
     9401 LOADK                            R26 K44 [""]
     9402 CONCAT                           R22 R24 R26
     9403 SETTABLEKS                       R22 R21 K518 ["groupRole"]
     9405 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9407 JUMPIFNOT                        R24 ; [+5]
     9408 GETTABLEKS                       R24 R2 K42 ["metaData"]
     9410 GETTABLEKS                       R23 R24 K404 ["GroupName"]
     9412 JUMPIF                           R23 ; [+1]
     9413 LOADK                            R23 K44 [""]
     9414 LOADK                            R24 K44 [""]
     9415 FASTCALL1                        TOSTRING R23 ; [+3]
     9416 MOVE                             R28 R23
     9417 GETIMPORT                        R27 K4 [tostring]
     9419 CALL                             R27 1 1
     9420 MOVE                             R25 R27
     9421 LOADK                            R26 K44 [""]
     9422 CONCAT                           R22 R24 R26
     9423 SETTABLEKS                       R22 R21 K402 ["groupName"]
     9425 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9427 JUMPIFNOT                        R25 ; [+5]
     9428 GETTABLEKS                       R25 R2 K42 ["metaData"]
     9430 GETTABLEKS                       R24 R25 K43 ["Action"]
     9432 JUMPIF                           R24 ; [+1]
     9433 LOADK                            R24 K44 [""]
     9434 JUMPIFNOTEQKS                    R24 K511 ["Edit"] ; [+5]
     9436 MOVE                             R23 R12
     9437 LOADK                            R24 K532 ["Description.RoleEditor"]
     9438 CALL                             R23 1 1
     9439 JUMPIF                           R23 ; [+3]
     9440 MOVE                             R23 R12
     9441 LOADK                            R24 K533 ["Description.RolePlayer"]
     9442 CALL                             R23 1 1
     9443 LOADK                            R24 K44 [""]
     9444 FASTCALL1                        TOSTRING R23 ; [+3]
     9445 MOVE                             R28 R23
     9446 GETIMPORT                        R27 K4 [tostring]
     9448 CALL                             R27 1 1
     9449 MOVE                             R25 R27
     9450 LOADK                            R26 K44 [""]
     9451 CONCAT                           R22 R24 R26
     9452 SETTABLEKS                       R22 R21 K509 ["role"]
     9454 CALL                             R19 2 1
     9455 SETTABLEKS                       R19 R18 K24 ["translation"]
     9457 GETTABLEKS                       R19 R2 K14 ["userId"]
     9459 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9461 MOVE                             R19 R0
     9462 GETTABLEKS                       R20 R2 K14 ["userId"]
     9464 CALL                             R19 1 1
     9465 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9467 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9469 ORK                              R19 R20 K18 [0]
     9470 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9472 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9474 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9476 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9478 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9480 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9482 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9484 LOADK                            R20 K44 [""]
     9485 GETUPVAL                         R26 1
     9486 FASTCALL1                        TOSTRING R26 ; [+2]
     9487 GETIMPORT                        R25 K4 [tostring]
     9489 CALL                             R25 1 1
     9490 MOVE                             R21 R25
     9491 LOADK                            R22 K16 ["groups/"]
     9492 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9494 FASTCALL1                        TOSTRING R26 ; [+2]
     9495 GETIMPORT                        R25 K4 [tostring]
     9497 CALL                             R25 1 1
     9498 MOVE                             R23 R25
     9499 LOADK                            R24 K44 [""]
     9500 CONCAT                           R19 R20 R24
     9501 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9503 RETURN                           R18 1
     9504 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9506 JUMPIFNOTEQKN                    R18 K543 [94] ; [+112]
     9508 DUPTABLE                         R18 K545 [{["id"], ["eventType"] = "TeamCreate", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
     9509 GETTABLEKS                       R19 R2 K19 ["id"]
     9511 SETTABLEKS                       R19 R18 K19 ["id"]
     9513 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9515 GETIMPORT                        R21 K35 [pcall]
     9517 NEWCLOSURE                       R22 P6
     9518 CAPTURE                          VAL R20
     9519 CAPTURE                          VAL R3
     9520 CALL                             R21 1 2
     9521 JUMPIFNOT                        R21 ; [+2]
     9522 MOVE                             R19 R22
     9523 JUMP                             ; [+1]
     9524 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9525 SETTABLEKS                       R19 R18 K23 ["date"]
     9527 MOVE                             R19 R12
     9528 LOADK                            R20 K546 ["Description.TeamCreate"]
     9529 DUPTABLE                         R21 K547 [{"userName", "action"}]
     9530 MOVE                             R23 R0
     9531 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9533 CALL                             R23 1 1
     9534 LOADK                            R24 K44 [""]
     9535 FASTCALL1                        TOSTRING R23 ; [+3]
     9536 MOVE                             R28 R23
     9537 GETIMPORT                        R27 K4 [tostring]
     9539 CALL                             R27 1 1
     9540 MOVE                             R25 R27
     9541 LOADK                            R26 K44 [""]
     9542 CONCAT                           R22 R24 R26
     9543 SETTABLEKS                       R22 R21 K395 ["userName"]
     9545 GETTABLEKS                       R26 R2 K42 ["metaData"]
     9547 JUMPIFNOT                        R26 ; [+5]
     9548 GETTABLEKS                       R26 R2 K42 ["metaData"]
     9550 GETTABLEKS                       R25 R26 K43 ["Action"]
     9552 JUMPIF                           R25 ; [+1]
     9553 LOADK                            R25 K44 [""]
     9554 GETIMPORT                        R26 K47 [string.lower]
     9556 FASTCALL1                        TOSTRING R25 ; [+3]
     9557 MOVE                             R28 R25
     9558 GETIMPORT                        R27 K4 [tostring]
     9560 CALL                             R27 1 1
     9561 CALL                             R26 1 1
     9562 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
     9564 LOADB                            R24 1
     9565 JUMP                             ; [+1]
     9566 LOADB                            R24 0
     9567 JUMPIFNOT                        R24 ; [+4]
     9568 MOVE                             R23 R12
     9569 LOADK                            R24 K548 ["Description.ActionJoined"]
     9570 CALL                             R23 1 1
     9571 JUMPIF                           R23 ; [+3]
     9572 MOVE                             R23 R12
     9573 LOADK                            R24 K549 ["Description.ActionLeft"]
     9574 CALL                             R23 1 1
     9575 LOADK                            R24 K44 [""]
     9576 FASTCALL1                        TOSTRING R23 ; [+3]
     9577 MOVE                             R28 R23
     9578 GETIMPORT                        R27 K4 [tostring]
     9580 CALL                             R27 1 1
     9581 MOVE                             R25 R27
     9582 LOADK                            R26 K44 [""]
     9583 CONCAT                           R22 R24 R26
     9584 SETTABLEKS                       R22 R21 K156 ["action"]
     9586 CALL                             R19 2 1
     9587 SETTABLEKS                       R19 R18 K24 ["translation"]
     9589 GETTABLEKS                       R19 R2 K14 ["userId"]
     9591 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9593 MOVE                             R19 R0
     9594 GETTABLEKS                       R20 R2 K14 ["userId"]
     9596 CALL                             R19 1 1
     9597 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9599 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9601 ORK                              R19 R20 K18 [0]
     9602 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9604 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9606 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9608 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9610 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9612 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9614 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9616 SETTABLEKS                       R9 R18 K273 ["viewOnRobloxLink"]
     9618 RETURN                           R18 1
     9619 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9621 JUMPIFNOTEQKN                    R18 K550 [95] ; [+91]
     9623 DUPTABLE                         R18 K553 [{["id"], ["eventType"] = "PlaceIconAutoGenerated", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9624 GETTABLEKS                       R19 R2 K19 ["id"]
     9626 SETTABLEKS                       R19 R18 K19 ["id"]
     9628 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9630 GETIMPORT                        R21 K35 [pcall]
     9632 NEWCLOSURE                       R22 P6
     9633 CAPTURE                          VAL R20
     9634 CAPTURE                          VAL R3
     9635 CALL                             R21 1 2
     9636 JUMPIFNOT                        R21 ; [+2]
     9637 MOVE                             R19 R22
     9638 JUMP                             ; [+1]
     9639 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9640 SETTABLEKS                       R19 R18 K23 ["date"]
     9642 MOVE                             R19 R12
     9643 LOADK                            R20 K554 ["Description.PlaceIconAutoGenerated"]
     9644 CALL                             R19 1 1
     9645 SETTABLEKS                       R19 R18 K24 ["translation"]
     9647 GETTABLEKS                       R19 R2 K14 ["userId"]
     9649 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9651 MOVE                             R19 R0
     9652 GETTABLEKS                       R20 R2 K14 ["userId"]
     9654 CALL                             R19 1 1
     9655 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9657 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9659 ORK                              R19 R20 K18 [0]
     9660 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9662 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9664 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9666 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9668 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9670 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9672 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9674 LOADK                            R20 K44 [""]
     9675 FASTCALL1                        TOSTRING R4 ; [+3]
     9676 MOVE                             R26 R4
     9677 GETIMPORT                        R25 K4 [tostring]
     9679 CALL                             R25 1 1
     9680 MOVE                             R21 R25
     9681 LOADK                            R22 K5 ["/places/"]
     9682 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9684 FASTCALL1                        TOSTRING R26 ; [+2]
     9685 GETIMPORT                        R25 K4 [tostring]
     9687 CALL                             R25 1 1
     9688 MOVE                             R23 R25
     9689 LOADK                            R24 K555 ["/icon"]
     9690 CONCAT                           R19 R20 R24
     9691 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9693 LOADK                            R20 K44 [""]
     9694 GETUPVAL                         R26 1
     9695 FASTCALL1                        TOSTRING R26 ; [+2]
     9696 GETIMPORT                        R25 K4 [tostring]
     9698 CALL                             R25 1 1
     9699 MOVE                             R21 R25
     9700 LOADK                            R22 K556 ["games/"]
     9701 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9703 FASTCALL1                        TOSTRING R26 ; [+2]
     9704 GETIMPORT                        R25 K4 [tostring]
     9706 CALL                             R25 1 1
     9707 MOVE                             R23 R25
     9708 LOADK                            R24 K44 [""]
     9709 CONCAT                           R19 R20 R24
     9710 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9712 RETURN                           R18 1
     9713 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9715 JUMPIFNOTEQKN                    R18 K557 [96] ; [+91]
     9717 DUPTABLE                         R18 K559 [{["id"], ["eventType"] = "PlaceIconChanged", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9718 GETTABLEKS                       R19 R2 K19 ["id"]
     9720 SETTABLEKS                       R19 R18 K19 ["id"]
     9722 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9724 GETIMPORT                        R21 K35 [pcall]
     9726 NEWCLOSURE                       R22 P6
     9727 CAPTURE                          VAL R20
     9728 CAPTURE                          VAL R3
     9729 CALL                             R21 1 2
     9730 JUMPIFNOT                        R21 ; [+2]
     9731 MOVE                             R19 R22
     9732 JUMP                             ; [+1]
     9733 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9734 SETTABLEKS                       R19 R18 K23 ["date"]
     9736 MOVE                             R19 R12
     9737 LOADK                            R20 K560 ["Description.PlaceIconChanged"]
     9738 CALL                             R19 1 1
     9739 SETTABLEKS                       R19 R18 K24 ["translation"]
     9741 GETTABLEKS                       R19 R2 K14 ["userId"]
     9743 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9745 MOVE                             R19 R0
     9746 GETTABLEKS                       R20 R2 K14 ["userId"]
     9748 CALL                             R19 1 1
     9749 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9751 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9753 ORK                              R19 R20 K18 [0]
     9754 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9756 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9758 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9760 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9762 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9764 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9766 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9768 LOADK                            R20 K44 [""]
     9769 FASTCALL1                        TOSTRING R4 ; [+3]
     9770 MOVE                             R26 R4
     9771 GETIMPORT                        R25 K4 [tostring]
     9773 CALL                             R25 1 1
     9774 MOVE                             R21 R25
     9775 LOADK                            R22 K5 ["/places/"]
     9776 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9778 FASTCALL1                        TOSTRING R26 ; [+2]
     9779 GETIMPORT                        R25 K4 [tostring]
     9781 CALL                             R25 1 1
     9782 MOVE                             R23 R25
     9783 LOADK                            R24 K555 ["/icon"]
     9784 CONCAT                           R19 R20 R24
     9785 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9787 LOADK                            R20 K44 [""]
     9788 GETUPVAL                         R26 1
     9789 FASTCALL1                        TOSTRING R26 ; [+2]
     9790 GETIMPORT                        R25 K4 [tostring]
     9792 CALL                             R25 1 1
     9793 MOVE                             R21 R25
     9794 LOADK                            R22 K556 ["games/"]
     9795 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9797 FASTCALL1                        TOSTRING R26 ; [+2]
     9798 GETIMPORT                        R25 K4 [tostring]
     9800 CALL                             R25 1 1
     9801 MOVE                             R23 R25
     9802 LOADK                            R24 K44 [""]
     9803 CONCAT                           R19 R20 R24
     9804 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9806 RETURN                           R18 1
     9807 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9809 JUMPIFNOTEQKN                    R18 K561 [97] ; [+91]
     9811 DUPTABLE                         R18 K563 [{["id"], ["eventType"] = "PlaceIconRemoved", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9812 GETTABLEKS                       R19 R2 K19 ["id"]
     9814 SETTABLEKS                       R19 R18 K19 ["id"]
     9816 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9818 GETIMPORT                        R21 K35 [pcall]
     9820 NEWCLOSURE                       R22 P6
     9821 CAPTURE                          VAL R20
     9822 CAPTURE                          VAL R3
     9823 CALL                             R21 1 2
     9824 JUMPIFNOT                        R21 ; [+2]
     9825 MOVE                             R19 R22
     9826 JUMP                             ; [+1]
     9827 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9828 SETTABLEKS                       R19 R18 K23 ["date"]
     9830 MOVE                             R19 R12
     9831 LOADK                            R20 K564 ["Description.PlaceIconRemoved"]
     9832 CALL                             R19 1 1
     9833 SETTABLEKS                       R19 R18 K24 ["translation"]
     9835 GETTABLEKS                       R19 R2 K14 ["userId"]
     9837 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9839 MOVE                             R19 R0
     9840 GETTABLEKS                       R20 R2 K14 ["userId"]
     9842 CALL                             R19 1 1
     9843 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9845 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9847 ORK                              R19 R20 K18 [0]
     9848 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9850 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9852 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9854 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9856 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9858 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9860 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9862 LOADK                            R20 K44 [""]
     9863 FASTCALL1                        TOSTRING R4 ; [+3]
     9864 MOVE                             R26 R4
     9865 GETIMPORT                        R25 K4 [tostring]
     9867 CALL                             R25 1 1
     9868 MOVE                             R21 R25
     9869 LOADK                            R22 K5 ["/places/"]
     9870 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9872 FASTCALL1                        TOSTRING R26 ; [+2]
     9873 GETIMPORT                        R25 K4 [tostring]
     9875 CALL                             R25 1 1
     9876 MOVE                             R23 R25
     9877 LOADK                            R24 K555 ["/icon"]
     9878 CONCAT                           R19 R20 R24
     9879 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9881 LOADK                            R20 K44 [""]
     9882 GETUPVAL                         R26 1
     9883 FASTCALL1                        TOSTRING R26 ; [+2]
     9884 GETIMPORT                        R25 K4 [tostring]
     9886 CALL                             R25 1 1
     9887 MOVE                             R21 R25
     9888 LOADK                            R22 K556 ["games/"]
     9889 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9891 FASTCALL1                        TOSTRING R26 ; [+2]
     9892 GETIMPORT                        R25 K4 [tostring]
     9894 CALL                             R25 1 1
     9895 MOVE                             R23 R25
     9896 LOADK                            R24 K44 [""]
     9897 CONCAT                           R19 R20 R24
     9898 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9900 RETURN                           R18 1
     9901 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9903 JUMPIFNOTEQKN                    R18 K565 [98] ; [+91]
     9905 DUPTABLE                         R18 K567 [{["id"], ["eventType"] = "PlaceGearGenresOnlyAllowFromExperiencesGenre", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
     9906 GETTABLEKS                       R19 R2 K19 ["id"]
     9908 SETTABLEKS                       R19 R18 K19 ["id"]
     9910 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
     9912 GETIMPORT                        R21 K35 [pcall]
     9914 NEWCLOSURE                       R22 P6
     9915 CAPTURE                          VAL R20
     9916 CAPTURE                          VAL R3
     9917 CALL                             R21 1 2
     9918 JUMPIFNOT                        R21 ; [+2]
     9919 MOVE                             R19 R22
     9920 JUMP                             ; [+1]
     9921 LOADK                            R19 K36 ["🤷🏻‍♀️"]
     9922 SETTABLEKS                       R19 R18 K23 ["date"]
     9924 MOVE                             R19 R12
     9925 LOADK                            R20 K568 ["Description.PlaceGearGenresOnlyAllowFromExperiencesGenre"]
     9926 CALL                             R19 1 1
     9927 SETTABLEKS                       R19 R18 K24 ["translation"]
     9929 GETTABLEKS                       R19 R2 K14 ["userId"]
     9931 SETTABLEKS                       R19 R18 K25 ["actorId"]
     9933 MOVE                             R19 R0
     9934 GETTABLEKS                       R20 R2 K14 ["userId"]
     9936 CALL                             R19 1 1
     9937 SETTABLEKS                       R19 R18 K26 ["actorName"]
     9939 GETTABLEKS                       R20 R2 K6 ["placeId"]
     9941 ORK                              R19 R20 K18 [0]
     9942 SETTABLEKS                       R19 R18 K29 ["iconId"]
     9944 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9946 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9948 GETTABLEKS                       R19 R2 K30 ["headerText"]
     9950 SETTABLEKS                       R19 R18 K30 ["headerText"]
     9952 GETTABLEKS                       R19 R2 K31 ["footerText"]
     9954 SETTABLEKS                       R19 R18 K31 ["footerText"]
     9956 LOADK                            R20 K44 [""]
     9957 FASTCALL1                        TOSTRING R4 ; [+3]
     9958 MOVE                             R26 R4
     9959 GETIMPORT                        R25 K4 [tostring]
     9961 CALL                             R25 1 1
     9962 MOVE                             R21 R25
     9963 LOADK                            R22 K5 ["/places/"]
     9964 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9966 FASTCALL1                        TOSTRING R26 ; [+2]
     9967 GETIMPORT                        R25 K4 [tostring]
     9969 CALL                             R25 1 1
     9970 MOVE                             R23 R25
     9971 LOADK                            R24 K569 ["/permissions"]
     9972 CONCAT                           R19 R20 R24
     9973 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
     9975 LOADK                            R20 K44 [""]
     9976 GETUPVAL                         R26 1
     9977 FASTCALL1                        TOSTRING R26 ; [+2]
     9978 GETIMPORT                        R25 K4 [tostring]
     9980 CALL                             R25 1 1
     9981 MOVE                             R21 R25
     9982 LOADK                            R22 K556 ["games/"]
     9983 GETTABLEKS                       R26 R2 K6 ["placeId"]
     9985 FASTCALL1                        TOSTRING R26 ; [+2]
     9986 GETIMPORT                        R25 K4 [tostring]
     9988 CALL                             R25 1 1
     9989 MOVE                             R23 R25
     9990 LOADK                            R24 K44 [""]
     9991 CONCAT                           R19 R20 R24
     9992 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
     9994 RETURN                           R18 1
     9995 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9997 JUMPIFNOTEQKN                    R18 K570 [99] ; [+91]
     9999 DUPTABLE                         R18 K572 [{["id"], ["eventType"] = "PlaceGearGenresAllowAllGearGenres", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10000 GETTABLEKS                       R19 R2 K19 ["id"]
    10002 SETTABLEKS                       R19 R18 K19 ["id"]
    10004 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10006 GETIMPORT                        R21 K35 [pcall]
    10008 NEWCLOSURE                       R22 P6
    10009 CAPTURE                          VAL R20
    10010 CAPTURE                          VAL R3
    10011 CALL                             R21 1 2
    10012 JUMPIFNOT                        R21 ; [+2]
    10013 MOVE                             R19 R22
    10014 JUMP                             ; [+1]
    10015 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10016 SETTABLEKS                       R19 R18 K23 ["date"]
    10018 MOVE                             R19 R12
    10019 LOADK                            R20 K573 ["Description.PlaceGearGenresAllowAllGearGenres"]
    10020 CALL                             R19 1 1
    10021 SETTABLEKS                       R19 R18 K24 ["translation"]
    10023 GETTABLEKS                       R19 R2 K14 ["userId"]
    10025 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10027 MOVE                             R19 R0
    10028 GETTABLEKS                       R20 R2 K14 ["userId"]
    10030 CALL                             R19 1 1
    10031 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10033 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10035 ORK                              R19 R20 K18 [0]
    10036 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10038 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10040 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10042 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10044 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10046 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10048 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10050 LOADK                            R20 K44 [""]
    10051 FASTCALL1                        TOSTRING R4 ; [+3]
    10052 MOVE                             R26 R4
    10053 GETIMPORT                        R25 K4 [tostring]
    10055 CALL                             R25 1 1
    10056 MOVE                             R21 R25
    10057 LOADK                            R22 K5 ["/places/"]
    10058 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10060 FASTCALL1                        TOSTRING R26 ; [+2]
    10061 GETIMPORT                        R25 K4 [tostring]
    10063 CALL                             R25 1 1
    10064 MOVE                             R23 R25
    10065 LOADK                            R24 K569 ["/permissions"]
    10066 CONCAT                           R19 R20 R24
    10067 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10069 LOADK                            R20 K44 [""]
    10070 GETUPVAL                         R26 1
    10071 FASTCALL1                        TOSTRING R26 ; [+2]
    10072 GETIMPORT                        R25 K4 [tostring]
    10074 CALL                             R25 1 1
    10075 MOVE                             R21 R25
    10076 LOADK                            R22 K556 ["games/"]
    10077 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10079 FASTCALL1                        TOSTRING R26 ; [+2]
    10080 GETIMPORT                        R25 K4 [tostring]
    10082 CALL                             R25 1 1
    10083 MOVE                             R23 R25
    10084 LOADK                            R24 K44 [""]
    10085 CONCAT                           R19 R20 R24
    10086 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10088 RETURN                           R18 1
    10089 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10091 JUMPIFNOTEQKN                    R18 K574 [100] ; [+115]
    10093 DUPTABLE                         R18 K576 [{["id"], ["eventType"] = "PlaceGearTypes", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10094 GETTABLEKS                       R19 R2 K19 ["id"]
    10096 SETTABLEKS                       R19 R18 K19 ["id"]
    10098 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10100 GETIMPORT                        R21 K35 [pcall]
    10102 NEWCLOSURE                       R22 P6
    10103 CAPTURE                          VAL R20
    10104 CAPTURE                          VAL R3
    10105 CALL                             R21 1 2
    10106 JUMPIFNOT                        R21 ; [+2]
    10107 MOVE                             R19 R22
    10108 JUMP                             ; [+1]
    10109 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10110 SETTABLEKS                       R19 R18 K23 ["date"]
    10112 MOVE                             R19 R12
    10113 LOADK                            R20 K577 ["Description.PlaceGearTypes"]
    10114 DUPTABLE                         R21 K579 [{"gearTypes"}]
    10115 GETGLOBAL                        R23 K580 ["joinStrings"]
    10117 GETTABLEKS                       R25 R2 K42 ["metaData"]
    10119 JUMPIFNOT                        R25 ; [+5]
    10120 GETTABLEKS                       R25 R2 K42 ["metaData"]
    10122 GETTABLEKS                       R24 R25 K581 ["GearTypes"]
    10124 JUMPIF                           R24 ; [+1]
    10125 LOADK                            R24 K44 [""]
    10126 CALL                             R23 1 1
    10127 LOADK                            R24 K44 [""]
    10128 FASTCALL1                        TOSTRING R23 ; [+3]
    10129 MOVE                             R28 R23
    10130 GETIMPORT                        R27 K4 [tostring]
    10132 CALL                             R27 1 1
    10133 MOVE                             R25 R27
    10134 LOADK                            R26 K44 [""]
    10135 CONCAT                           R22 R24 R26
    10136 SETTABLEKS                       R22 R21 K578 ["gearTypes"]
    10138 CALL                             R19 2 1
    10139 SETTABLEKS                       R19 R18 K24 ["translation"]
    10141 GETTABLEKS                       R19 R2 K14 ["userId"]
    10143 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10145 MOVE                             R19 R0
    10146 GETTABLEKS                       R20 R2 K14 ["userId"]
    10148 CALL                             R19 1 1
    10149 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10151 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10153 ORK                              R19 R20 K18 [0]
    10154 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10156 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10158 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10160 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10162 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10164 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10166 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10168 LOADK                            R20 K44 [""]
    10169 FASTCALL1                        TOSTRING R4 ; [+3]
    10170 MOVE                             R26 R4
    10171 GETIMPORT                        R25 K4 [tostring]
    10173 CALL                             R25 1 1
    10174 MOVE                             R21 R25
    10175 LOADK                            R22 K5 ["/places/"]
    10176 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10178 FASTCALL1                        TOSTRING R26 ; [+2]
    10179 GETIMPORT                        R25 K4 [tostring]
    10181 CALL                             R25 1 1
    10182 MOVE                             R23 R25
    10183 LOADK                            R24 K569 ["/permissions"]
    10184 CONCAT                           R19 R20 R24
    10185 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10187 LOADK                            R20 K44 [""]
    10188 GETUPVAL                         R26 1
    10189 FASTCALL1                        TOSTRING R26 ; [+2]
    10190 GETIMPORT                        R25 K4 [tostring]
    10192 CALL                             R25 1 1
    10193 MOVE                             R21 R25
    10194 LOADK                            R22 K556 ["games/"]
    10195 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10197 FASTCALL1                        TOSTRING R26 ; [+2]
    10198 GETIMPORT                        R25 K4 [tostring]
    10200 CALL                             R25 1 1
    10201 MOVE                             R23 R25
    10202 LOADK                            R24 K44 [""]
    10203 CONCAT                           R19 R20 R24
    10204 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10206 RETURN                           R18 1
    10207 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10209 JUMPIFNOTEQKN                    R18 K582 [101] ; [+153]
    10211 DUPTABLE                         R18 K584 [{["id"], ["eventType"] = "PlaceDownloadPermission", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10212 GETTABLEKS                       R19 R2 K19 ["id"]
    10214 SETTABLEKS                       R19 R18 K19 ["id"]
    10216 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10218 GETIMPORT                        R21 K35 [pcall]
    10220 NEWCLOSURE                       R22 P6
    10221 CAPTURE                          VAL R20
    10222 CAPTURE                          VAL R3
    10223 CALL                             R21 1 2
    10224 JUMPIFNOT                        R21 ; [+2]
    10225 MOVE                             R19 R22
    10226 JUMP                             ; [+1]
    10227 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10228 SETTABLEKS                       R19 R18 K23 ["date"]
    10230 MOVE                             R19 R12
    10231 LOADK                            R20 K585 ["Description.PlaceDownloadPermission"]
    10232 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    10233 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10235 JUMPIFNOT                        R26 ; [+5]
    10236 GETTABLEKS                       R26 R2 K42 ["metaData"]
    10238 GETTABLEKS                       R25 R26 K43 ["Action"]
    10240 JUMPIF                           R25 ; [+1]
    10241 LOADK                            R25 K44 [""]
    10242 GETIMPORT                        R26 K47 [string.lower]
    10244 FASTCALL1                        TOSTRING R25 ; [+3]
    10245 MOVE                             R28 R25
    10246 GETIMPORT                        R27 K4 [tostring]
    10248 CALL                             R27 1 1
    10249 CALL                             R26 1 1
    10250 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    10252 LOADB                            R24 1
    10253 JUMP                             ; [+1]
    10254 LOADB                            R24 0
    10255 JUMPIFNOT                        R24 ; [+4]
    10256 MOVE                             R23 R12
    10257 LOADK                            R24 K158 ["Description.ActionEnabled"]
    10258 CALL                             R23 1 1
    10259 JUMPIF                           R23 ; [+3]
    10260 MOVE                             R23 R12
    10261 LOADK                            R24 K159 ["Description.ActionDisabled"]
    10262 CALL                             R23 1 1
    10263 LOADK                            R24 K44 [""]
    10264 FASTCALL1                        TOSTRING R23 ; [+3]
    10265 MOVE                             R28 R23
    10266 GETIMPORT                        R27 K4 [tostring]
    10268 CALL                             R27 1 1
    10269 MOVE                             R25 R27
    10270 LOADK                            R26 K44 [""]
    10271 CONCAT                           R22 R24 R26
    10272 SETTABLEKS                       R22 R21 K156 ["action"]
    10274 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10276 JUMPIFNOT                        R24 ; [+5]
    10277 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10279 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    10281 JUMPIF                           R23 ; [+1]
    10282 LOADK                            R23 K44 [""]
    10283 LOADK                            R24 K44 [""]
    10284 FASTCALL1                        TOSTRING R23 ; [+3]
    10285 MOVE                             R28 R23
    10286 GETIMPORT                        R27 K4 [tostring]
    10288 CALL                             R27 1 1
    10289 MOVE                             R25 R27
    10290 LOADK                            R26 K44 [""]
    10291 CONCAT                           R22 R24 R26
    10292 SETTABLEKS                       R22 R21 K586 ["placeName"]
    10294 CALL                             R19 2 1
    10295 SETTABLEKS                       R19 R18 K24 ["translation"]
    10297 GETTABLEKS                       R19 R2 K14 ["userId"]
    10299 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10301 MOVE                             R19 R0
    10302 GETTABLEKS                       R20 R2 K14 ["userId"]
    10304 CALL                             R19 1 1
    10305 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10307 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10309 ORK                              R19 R20 K18 [0]
    10310 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10312 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10314 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10316 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10318 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10320 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10322 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10324 LOADK                            R20 K44 [""]
    10325 FASTCALL1                        TOSTRING R4 ; [+3]
    10326 MOVE                             R26 R4
    10327 GETIMPORT                        R25 K4 [tostring]
    10329 CALL                             R25 1 1
    10330 MOVE                             R21 R25
    10331 LOADK                            R22 K5 ["/places/"]
    10332 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10334 FASTCALL1                        TOSTRING R26 ; [+2]
    10335 GETIMPORT                        R25 K4 [tostring]
    10337 CALL                             R25 1 1
    10338 MOVE                             R23 R25
    10339 LOADK                            R24 K569 ["/permissions"]
    10340 CONCAT                           R19 R20 R24
    10341 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10343 LOADK                            R20 K44 [""]
    10344 GETUPVAL                         R26 1
    10345 FASTCALL1                        TOSTRING R26 ; [+2]
    10346 GETIMPORT                        R25 K4 [tostring]
    10348 CALL                             R25 1 1
    10349 MOVE                             R21 R25
    10350 LOADK                            R22 K556 ["games/"]
    10351 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10353 FASTCALL1                        TOSTRING R26 ; [+2]
    10354 GETIMPORT                        R25 K4 [tostring]
    10356 CALL                             R25 1 1
    10357 MOVE                             R23 R25
    10358 LOADK                            R24 K44 [""]
    10359 CONCAT                           R19 R20 R24
    10360 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10362 RETURN                           R18 1
    10363 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10365 JUMPIFNOTEQKN                    R18 K589 [102] ; [+112]
    10367 DUPTABLE                         R18 K591 [{["id"], ["eventType"] = "PlaceGenre", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10368 GETTABLEKS                       R19 R2 K19 ["id"]
    10370 SETTABLEKS                       R19 R18 K19 ["id"]
    10372 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10374 GETIMPORT                        R21 K35 [pcall]
    10376 NEWCLOSURE                       R22 P6
    10377 CAPTURE                          VAL R20
    10378 CAPTURE                          VAL R3
    10379 CALL                             R21 1 2
    10380 JUMPIFNOT                        R21 ; [+2]
    10381 MOVE                             R19 R22
    10382 JUMP                             ; [+1]
    10383 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10384 SETTABLEKS                       R19 R18 K23 ["date"]
    10386 MOVE                             R19 R12
    10387 LOADK                            R20 K592 ["Description.PlaceGenre"]
    10388 DUPTABLE                         R21 K150 [{"genre"}]
    10389 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10391 JUMPIFNOT                        R24 ; [+5]
    10392 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10394 GETTABLEKS                       R23 R24 K151 ["Genre"]
    10396 JUMPIF                           R23 ; [+1]
    10397 LOADK                            R23 K44 [""]
    10398 LOADK                            R24 K44 [""]
    10399 FASTCALL1                        TOSTRING R23 ; [+3]
    10400 MOVE                             R28 R23
    10401 GETIMPORT                        R27 K4 [tostring]
    10403 CALL                             R27 1 1
    10404 MOVE                             R25 R27
    10405 LOADK                            R26 K44 [""]
    10406 CONCAT                           R22 R24 R26
    10407 SETTABLEKS                       R22 R21 K149 ["genre"]
    10409 CALL                             R19 2 1
    10410 SETTABLEKS                       R19 R18 K24 ["translation"]
    10412 GETTABLEKS                       R19 R2 K14 ["userId"]
    10414 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10416 MOVE                             R19 R0
    10417 GETTABLEKS                       R20 R2 K14 ["userId"]
    10419 CALL                             R19 1 1
    10420 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10422 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10424 ORK                              R19 R20 K18 [0]
    10425 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10427 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10429 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10431 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10433 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10435 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10437 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10439 LOADK                            R20 K44 [""]
    10440 FASTCALL1                        TOSTRING R4 ; [+3]
    10441 MOVE                             R26 R4
    10442 GETIMPORT                        R25 K4 [tostring]
    10444 CALL                             R25 1 1
    10445 MOVE                             R21 R25
    10446 LOADK                            R22 K5 ["/places/"]
    10447 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10449 FASTCALL1                        TOSTRING R26 ; [+2]
    10450 GETIMPORT                        R25 K4 [tostring]
    10452 CALL                             R25 1 1
    10453 MOVE                             R23 R25
    10454 LOADK                            R24 K11 ["/configure"]
    10455 CONCAT                           R19 R20 R24
    10456 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10458 LOADK                            R20 K44 [""]
    10459 GETUPVAL                         R26 1
    10460 FASTCALL1                        TOSTRING R26 ; [+2]
    10461 GETIMPORT                        R25 K4 [tostring]
    10463 CALL                             R25 1 1
    10464 MOVE                             R21 R25
    10465 LOADK                            R22 K556 ["games/"]
    10466 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10468 FASTCALL1                        TOSTRING R26 ; [+2]
    10469 GETIMPORT                        R25 K4 [tostring]
    10471 CALL                             R25 1 1
    10472 MOVE                             R23 R25
    10473 LOADK                            R24 K44 [""]
    10474 CONCAT                           R19 R20 R24
    10475 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10477 RETURN                           R18 1
    10478 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10480 JUMPIFNOTEQKN                    R18 K593 [103] ; [+132]
    10482 DUPTABLE                         R18 K594 [{["id"], ["eventType"] = "PlaceName", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10483 GETTABLEKS                       R19 R2 K19 ["id"]
    10485 SETTABLEKS                       R19 R18 K19 ["id"]
    10487 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10489 GETIMPORT                        R21 K35 [pcall]
    10491 NEWCLOSURE                       R22 P6
    10492 CAPTURE                          VAL R20
    10493 CAPTURE                          VAL R3
    10494 CALL                             R21 1 2
    10495 JUMPIFNOT                        R21 ; [+2]
    10496 MOVE                             R19 R22
    10497 JUMP                             ; [+1]
    10498 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10499 SETTABLEKS                       R19 R18 K23 ["date"]
    10501 MOVE                             R19 R12
    10502 LOADK                            R20 K595 ["Description.PlaceName"]
    10503 DUPTABLE                         R21 K138 [{"newName", "oldName"}]
    10504 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10506 JUMPIFNOT                        R24 ; [+5]
    10507 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10509 GETTABLEKS                       R23 R24 K139 ["NewName"]
    10511 JUMPIF                           R23 ; [+1]
    10512 LOADK                            R23 K44 [""]
    10513 LOADK                            R24 K44 [""]
    10514 FASTCALL1                        TOSTRING R23 ; [+3]
    10515 MOVE                             R28 R23
    10516 GETIMPORT                        R27 K4 [tostring]
    10518 CALL                             R27 1 1
    10519 MOVE                             R25 R27
    10520 LOADK                            R26 K44 [""]
    10521 CONCAT                           R22 R24 R26
    10522 SETTABLEKS                       R22 R21 K136 ["newName"]
    10524 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10526 JUMPIFNOT                        R24 ; [+5]
    10527 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10529 GETTABLEKS                       R23 R24 K140 ["OldName"]
    10531 JUMPIF                           R23 ; [+1]
    10532 LOADK                            R23 K44 [""]
    10533 LOADK                            R24 K44 [""]
    10534 FASTCALL1                        TOSTRING R23 ; [+3]
    10535 MOVE                             R28 R23
    10536 GETIMPORT                        R27 K4 [tostring]
    10538 CALL                             R27 1 1
    10539 MOVE                             R25 R27
    10540 LOADK                            R26 K44 [""]
    10541 CONCAT                           R22 R24 R26
    10542 SETTABLEKS                       R22 R21 K137 ["oldName"]
    10544 CALL                             R19 2 1
    10545 SETTABLEKS                       R19 R18 K24 ["translation"]
    10547 GETTABLEKS                       R19 R2 K14 ["userId"]
    10549 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10551 MOVE                             R19 R0
    10552 GETTABLEKS                       R20 R2 K14 ["userId"]
    10554 CALL                             R19 1 1
    10555 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10557 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10559 ORK                              R19 R20 K18 [0]
    10560 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10562 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10564 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10566 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10568 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10570 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10572 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10574 LOADK                            R20 K44 [""]
    10575 FASTCALL1                        TOSTRING R4 ; [+3]
    10576 MOVE                             R26 R4
    10577 GETIMPORT                        R25 K4 [tostring]
    10579 CALL                             R25 1 1
    10580 MOVE                             R21 R25
    10581 LOADK                            R22 K5 ["/places/"]
    10582 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10584 FASTCALL1                        TOSTRING R26 ; [+2]
    10585 GETIMPORT                        R25 K4 [tostring]
    10587 CALL                             R25 1 1
    10588 MOVE                             R23 R25
    10589 LOADK                            R24 K11 ["/configure"]
    10590 CONCAT                           R19 R20 R24
    10591 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10593 LOADK                            R20 K44 [""]
    10594 GETUPVAL                         R26 1
    10595 FASTCALL1                        TOSTRING R26 ; [+2]
    10596 GETIMPORT                        R25 K4 [tostring]
    10598 CALL                             R25 1 1
    10599 MOVE                             R21 R25
    10600 LOADK                            R22 K556 ["games/"]
    10601 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10603 FASTCALL1                        TOSTRING R26 ; [+2]
    10604 GETIMPORT                        R25 K4 [tostring]
    10606 CALL                             R25 1 1
    10607 MOVE                             R23 R25
    10608 LOADK                            R24 K44 [""]
    10609 CONCAT                           R19 R20 R24
    10610 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10612 RETURN                           R18 1
    10613 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10615 JUMPIFNOTEQKN                    R18 K596 [104] ; [+112]
    10617 DUPTABLE                         R18 K598 [{["id"], ["eventType"] = "PlaceDescription", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10618 GETTABLEKS                       R19 R2 K19 ["id"]
    10620 SETTABLEKS                       R19 R18 K19 ["id"]
    10622 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10624 GETIMPORT                        R21 K35 [pcall]
    10626 NEWCLOSURE                       R22 P6
    10627 CAPTURE                          VAL R20
    10628 CAPTURE                          VAL R3
    10629 CALL                             R21 1 2
    10630 JUMPIFNOT                        R21 ; [+2]
    10631 MOVE                             R19 R22
    10632 JUMP                             ; [+1]
    10633 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10634 SETTABLEKS                       R19 R18 K23 ["date"]
    10636 MOVE                             R19 R12
    10637 LOADK                            R20 K599 ["Description.PlaceDescription"]
    10638 DUPTABLE                         R21 K600 [{"placeName"}]
    10639 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10641 JUMPIFNOT                        R24 ; [+5]
    10642 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10644 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    10646 JUMPIF                           R23 ; [+1]
    10647 LOADK                            R23 K44 [""]
    10648 LOADK                            R24 K44 [""]
    10649 FASTCALL1                        TOSTRING R23 ; [+3]
    10650 MOVE                             R28 R23
    10651 GETIMPORT                        R27 K4 [tostring]
    10653 CALL                             R27 1 1
    10654 MOVE                             R25 R27
    10655 LOADK                            R26 K44 [""]
    10656 CONCAT                           R22 R24 R26
    10657 SETTABLEKS                       R22 R21 K586 ["placeName"]
    10659 CALL                             R19 2 1
    10660 SETTABLEKS                       R19 R18 K24 ["translation"]
    10662 GETTABLEKS                       R19 R2 K14 ["userId"]
    10664 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10666 MOVE                             R19 R0
    10667 GETTABLEKS                       R20 R2 K14 ["userId"]
    10669 CALL                             R19 1 1
    10670 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10672 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10674 ORK                              R19 R20 K18 [0]
    10675 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10677 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10679 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10681 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10683 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10685 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10687 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10689 LOADK                            R20 K44 [""]
    10690 FASTCALL1                        TOSTRING R4 ; [+3]
    10691 MOVE                             R26 R4
    10692 GETIMPORT                        R25 K4 [tostring]
    10694 CALL                             R25 1 1
    10695 MOVE                             R21 R25
    10696 LOADK                            R22 K5 ["/places/"]
    10697 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10699 FASTCALL1                        TOSTRING R26 ; [+2]
    10700 GETIMPORT                        R25 K4 [tostring]
    10702 CALL                             R25 1 1
    10703 MOVE                             R23 R25
    10704 LOADK                            R24 K11 ["/configure"]
    10705 CONCAT                           R19 R20 R24
    10706 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10708 LOADK                            R20 K44 [""]
    10709 GETUPVAL                         R26 1
    10710 FASTCALL1                        TOSTRING R26 ; [+2]
    10711 GETIMPORT                        R25 K4 [tostring]
    10713 CALL                             R25 1 1
    10714 MOVE                             R21 R25
    10715 LOADK                            R22 K556 ["games/"]
    10716 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10718 FASTCALL1                        TOSTRING R26 ; [+2]
    10719 GETIMPORT                        R25 K4 [tostring]
    10721 CALL                             R25 1 1
    10722 MOVE                             R23 R25
    10723 LOADK                            R24 K44 [""]
    10724 CONCAT                           R19 R20 R24
    10725 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10727 RETURN                           R18 1
    10728 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10730 JUMPIFNOTEQKN                    R18 K601 [105] ; [+112]
    10732 DUPTABLE                         R18 K603 [{["id"], ["eventType"] = "PlaceMaxVisitorCount", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10733 GETTABLEKS                       R19 R2 K19 ["id"]
    10735 SETTABLEKS                       R19 R18 K19 ["id"]
    10737 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10739 GETIMPORT                        R21 K35 [pcall]
    10741 NEWCLOSURE                       R22 P6
    10742 CAPTURE                          VAL R20
    10743 CAPTURE                          VAL R3
    10744 CALL                             R21 1 2
    10745 JUMPIFNOT                        R21 ; [+2]
    10746 MOVE                             R19 R22
    10747 JUMP                             ; [+1]
    10748 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10749 SETTABLEKS                       R19 R18 K23 ["date"]
    10751 MOVE                             R19 R12
    10752 LOADK                            R20 K604 ["Description.PlaceMaxVisitorCount"]
    10753 DUPTABLE                         R21 K606 [{"count"}]
    10754 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10756 JUMPIFNOT                        R24 ; [+5]
    10757 GETTABLEKS                       R24 R2 K42 ["metaData"]
    10759 GETTABLEKS                       R23 R24 K607 ["Count"]
    10761 JUMPIF                           R23 ; [+1]
    10762 LOADK                            R23 K44 [""]
    10763 LOADK                            R24 K44 [""]
    10764 FASTCALL1                        TOSTRING R23 ; [+3]
    10765 MOVE                             R28 R23
    10766 GETIMPORT                        R27 K4 [tostring]
    10768 CALL                             R27 1 1
    10769 MOVE                             R25 R27
    10770 LOADK                            R26 K44 [""]
    10771 CONCAT                           R22 R24 R26
    10772 SETTABLEKS                       R22 R21 K605 ["count"]
    10774 CALL                             R19 2 1
    10775 SETTABLEKS                       R19 R18 K24 ["translation"]
    10777 GETTABLEKS                       R19 R2 K14 ["userId"]
    10779 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10781 MOVE                             R19 R0
    10782 GETTABLEKS                       R20 R2 K14 ["userId"]
    10784 CALL                             R19 1 1
    10785 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10787 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10789 ORK                              R19 R20 K18 [0]
    10790 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10792 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10794 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10796 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10798 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10800 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10802 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10804 LOADK                            R20 K44 [""]
    10805 FASTCALL1                        TOSTRING R4 ; [+3]
    10806 MOVE                             R26 R4
    10807 GETIMPORT                        R25 K4 [tostring]
    10809 CALL                             R25 1 1
    10810 MOVE                             R21 R25
    10811 LOADK                            R22 K5 ["/places/"]
    10812 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10814 FASTCALL1                        TOSTRING R26 ; [+2]
    10815 GETIMPORT                        R25 K4 [tostring]
    10817 CALL                             R25 1 1
    10818 MOVE                             R23 R25
    10819 LOADK                            R24 K415 ["/access"]
    10820 CONCAT                           R19 R20 R24
    10821 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10823 LOADK                            R20 K44 [""]
    10824 GETUPVAL                         R26 1
    10825 FASTCALL1                        TOSTRING R26 ; [+2]
    10826 GETIMPORT                        R25 K4 [tostring]
    10828 CALL                             R25 1 1
    10829 MOVE                             R21 R25
    10830 LOADK                            R22 K556 ["games/"]
    10831 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10833 FASTCALL1                        TOSTRING R26 ; [+2]
    10834 GETIMPORT                        R25 K4 [tostring]
    10836 CALL                             R25 1 1
    10837 MOVE                             R23 R25
    10838 LOADK                            R24 K44 [""]
    10839 CONCAT                           R19 R20 R24
    10840 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10842 RETURN                           R18 1
    10843 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10845 JUMPIFNOTEQKN                    R18 K608 [106] ; [+91]
    10847 DUPTABLE                         R18 K610 [{["id"], ["eventType"] = "PlaceSocialSlotsRobloxOptimized", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10848 GETTABLEKS                       R19 R2 K19 ["id"]
    10850 SETTABLEKS                       R19 R18 K19 ["id"]
    10852 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10854 GETIMPORT                        R21 K35 [pcall]
    10856 NEWCLOSURE                       R22 P6
    10857 CAPTURE                          VAL R20
    10858 CAPTURE                          VAL R3
    10859 CALL                             R21 1 2
    10860 JUMPIFNOT                        R21 ; [+2]
    10861 MOVE                             R19 R22
    10862 JUMP                             ; [+1]
    10863 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10864 SETTABLEKS                       R19 R18 K23 ["date"]
    10866 MOVE                             R19 R12
    10867 LOADK                            R20 K611 ["Description.PlaceSocialSlotsRobloxOptimized"]
    10868 CALL                             R19 1 1
    10869 SETTABLEKS                       R19 R18 K24 ["translation"]
    10871 GETTABLEKS                       R19 R2 K14 ["userId"]
    10873 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10875 MOVE                             R19 R0
    10876 GETTABLEKS                       R20 R2 K14 ["userId"]
    10878 CALL                             R19 1 1
    10879 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10881 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10883 ORK                              R19 R20 K18 [0]
    10884 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10886 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10888 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10890 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10892 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10894 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10896 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10898 LOADK                            R20 K44 [""]
    10899 FASTCALL1                        TOSTRING R4 ; [+3]
    10900 MOVE                             R26 R4
    10901 GETIMPORT                        R25 K4 [tostring]
    10903 CALL                             R25 1 1
    10904 MOVE                             R21 R25
    10905 LOADK                            R22 K5 ["/places/"]
    10906 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10908 FASTCALL1                        TOSTRING R26 ; [+2]
    10909 GETIMPORT                        R25 K4 [tostring]
    10911 CALL                             R25 1 1
    10912 MOVE                             R23 R25
    10913 LOADK                            R24 K415 ["/access"]
    10914 CONCAT                           R19 R20 R24
    10915 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    10917 LOADK                            R20 K44 [""]
    10918 GETUPVAL                         R26 1
    10919 FASTCALL1                        TOSTRING R26 ; [+2]
    10920 GETIMPORT                        R25 K4 [tostring]
    10922 CALL                             R25 1 1
    10923 MOVE                             R21 R25
    10924 LOADK                            R22 K556 ["games/"]
    10925 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10927 FASTCALL1                        TOSTRING R26 ; [+2]
    10928 GETIMPORT                        R25 K4 [tostring]
    10930 CALL                             R25 1 1
    10931 MOVE                             R23 R25
    10932 LOADK                            R24 K44 [""]
    10933 CONCAT                           R19 R20 R24
    10934 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    10936 RETURN                           R18 1
    10937 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10939 JUMPIFNOTEQKN                    R18 K612 [107] ; [+91]
    10941 DUPTABLE                         R18 K614 [{["id"], ["eventType"] = "PlaceSocialSlotsDisabled", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    10942 GETTABLEKS                       R19 R2 K19 ["id"]
    10944 SETTABLEKS                       R19 R18 K19 ["id"]
    10946 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    10948 GETIMPORT                        R21 K35 [pcall]
    10950 NEWCLOSURE                       R22 P6
    10951 CAPTURE                          VAL R20
    10952 CAPTURE                          VAL R3
    10953 CALL                             R21 1 2
    10954 JUMPIFNOT                        R21 ; [+2]
    10955 MOVE                             R19 R22
    10956 JUMP                             ; [+1]
    10957 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    10958 SETTABLEKS                       R19 R18 K23 ["date"]
    10960 MOVE                             R19 R12
    10961 LOADK                            R20 K615 ["Description.PlaceSocialSlotsDisabled"]
    10962 CALL                             R19 1 1
    10963 SETTABLEKS                       R19 R18 K24 ["translation"]
    10965 GETTABLEKS                       R19 R2 K14 ["userId"]
    10967 SETTABLEKS                       R19 R18 K25 ["actorId"]
    10969 MOVE                             R19 R0
    10970 GETTABLEKS                       R20 R2 K14 ["userId"]
    10972 CALL                             R19 1 1
    10973 SETTABLEKS                       R19 R18 K26 ["actorName"]
    10975 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10977 ORK                              R19 R20 K18 [0]
    10978 SETTABLEKS                       R19 R18 K29 ["iconId"]
    10980 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10982 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10984 GETTABLEKS                       R19 R2 K30 ["headerText"]
    10986 SETTABLEKS                       R19 R18 K30 ["headerText"]
    10988 GETTABLEKS                       R19 R2 K31 ["footerText"]
    10990 SETTABLEKS                       R19 R18 K31 ["footerText"]
    10992 LOADK                            R20 K44 [""]
    10993 FASTCALL1                        TOSTRING R4 ; [+3]
    10994 MOVE                             R26 R4
    10995 GETIMPORT                        R25 K4 [tostring]
    10997 CALL                             R25 1 1
    10998 MOVE                             R21 R25
    10999 LOADK                            R22 K5 ["/places/"]
    11000 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11002 FASTCALL1                        TOSTRING R26 ; [+2]
    11003 GETIMPORT                        R25 K4 [tostring]
    11005 CALL                             R25 1 1
    11006 MOVE                             R23 R25
    11007 LOADK                            R24 K415 ["/access"]
    11008 CONCAT                           R19 R20 R24
    11009 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11011 LOADK                            R20 K44 [""]
    11012 GETUPVAL                         R26 1
    11013 FASTCALL1                        TOSTRING R26 ; [+2]
    11014 GETIMPORT                        R25 K4 [tostring]
    11016 CALL                             R25 1 1
    11017 MOVE                             R21 R25
    11018 LOADK                            R22 K556 ["games/"]
    11019 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11021 FASTCALL1                        TOSTRING R26 ; [+2]
    11022 GETIMPORT                        R25 K4 [tostring]
    11024 CALL                             R25 1 1
    11025 MOVE                             R23 R25
    11026 LOADK                            R24 K44 [""]
    11027 CONCAT                           R19 R20 R24
    11028 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11030 RETURN                           R18 1
    11031 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11033 JUMPIFNOTEQKN                    R18 K616 [108] ; [+112]
    11035 DUPTABLE                         R18 K618 [{["id"], ["eventType"] = "PlaceSocialSlotsCustomize", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11036 GETTABLEKS                       R19 R2 K19 ["id"]
    11038 SETTABLEKS                       R19 R18 K19 ["id"]
    11040 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11042 GETIMPORT                        R21 K35 [pcall]
    11044 NEWCLOSURE                       R22 P6
    11045 CAPTURE                          VAL R20
    11046 CAPTURE                          VAL R3
    11047 CALL                             R21 1 2
    11048 JUMPIFNOT                        R21 ; [+2]
    11049 MOVE                             R19 R22
    11050 JUMP                             ; [+1]
    11051 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11052 SETTABLEKS                       R19 R18 K23 ["date"]
    11054 MOVE                             R19 R12
    11055 LOADK                            R20 K619 ["Description.PlaceSocialSlotsCustomize"]
    11056 DUPTABLE                         R21 K606 [{"count"}]
    11057 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11059 JUMPIFNOT                        R24 ; [+5]
    11060 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11062 GETTABLEKS                       R23 R24 K607 ["Count"]
    11064 JUMPIF                           R23 ; [+1]
    11065 LOADK                            R23 K44 [""]
    11066 LOADK                            R24 K44 [""]
    11067 FASTCALL1                        TOSTRING R23 ; [+3]
    11068 MOVE                             R28 R23
    11069 GETIMPORT                        R27 K4 [tostring]
    11071 CALL                             R27 1 1
    11072 MOVE                             R25 R27
    11073 LOADK                            R26 K44 [""]
    11074 CONCAT                           R22 R24 R26
    11075 SETTABLEKS                       R22 R21 K605 ["count"]
    11077 CALL                             R19 2 1
    11078 SETTABLEKS                       R19 R18 K24 ["translation"]
    11080 GETTABLEKS                       R19 R2 K14 ["userId"]
    11082 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11084 MOVE                             R19 R0
    11085 GETTABLEKS                       R20 R2 K14 ["userId"]
    11087 CALL                             R19 1 1
    11088 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11090 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11092 ORK                              R19 R20 K18 [0]
    11093 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11095 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11097 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11099 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11101 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11103 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11105 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11107 LOADK                            R20 K44 [""]
    11108 FASTCALL1                        TOSTRING R4 ; [+3]
    11109 MOVE                             R26 R4
    11110 GETIMPORT                        R25 K4 [tostring]
    11112 CALL                             R25 1 1
    11113 MOVE                             R21 R25
    11114 LOADK                            R22 K5 ["/places/"]
    11115 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11117 FASTCALL1                        TOSTRING R26 ; [+2]
    11118 GETIMPORT                        R25 K4 [tostring]
    11120 CALL                             R25 1 1
    11121 MOVE                             R23 R25
    11122 LOADK                            R24 K415 ["/access"]
    11123 CONCAT                           R19 R20 R24
    11124 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11126 LOADK                            R20 K44 [""]
    11127 GETUPVAL                         R26 1
    11128 FASTCALL1                        TOSTRING R26 ; [+2]
    11129 GETIMPORT                        R25 K4 [tostring]
    11131 CALL                             R25 1 1
    11132 MOVE                             R21 R25
    11133 LOADK                            R22 K556 ["games/"]
    11134 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11136 FASTCALL1                        TOSTRING R26 ; [+2]
    11137 GETIMPORT                        R25 K4 [tostring]
    11139 CALL                             R25 1 1
    11140 MOVE                             R23 R25
    11141 LOADK                            R24 K44 [""]
    11142 CONCAT                           R19 R20 R24
    11143 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11145 RETURN                           R18 1
    11146 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11148 JUMPIFNOTEQKN                    R18 K620 [109] ; [+153]
    11150 DUPTABLE                         R18 K622 [{["id"], ["eventType"] = "PlacePermissionsCreatePlaceAPI", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11151 GETTABLEKS                       R19 R2 K19 ["id"]
    11153 SETTABLEKS                       R19 R18 K19 ["id"]
    11155 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11157 GETIMPORT                        R21 K35 [pcall]
    11159 NEWCLOSURE                       R22 P6
    11160 CAPTURE                          VAL R20
    11161 CAPTURE                          VAL R3
    11162 CALL                             R21 1 2
    11163 JUMPIFNOT                        R21 ; [+2]
    11164 MOVE                             R19 R22
    11165 JUMP                             ; [+1]
    11166 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11167 SETTABLEKS                       R19 R18 K23 ["date"]
    11169 MOVE                             R19 R12
    11170 LOADK                            R20 K623 ["Description.PlacePermissionsCreatePlaceAPI"]
    11171 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    11172 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11174 JUMPIFNOT                        R26 ; [+5]
    11175 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11177 GETTABLEKS                       R25 R26 K43 ["Action"]
    11179 JUMPIF                           R25 ; [+1]
    11180 LOADK                            R25 K44 [""]
    11181 GETIMPORT                        R26 K47 [string.lower]
    11183 FASTCALL1                        TOSTRING R25 ; [+3]
    11184 MOVE                             R28 R25
    11185 GETIMPORT                        R27 K4 [tostring]
    11187 CALL                             R27 1 1
    11188 CALL                             R26 1 1
    11189 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    11191 LOADB                            R24 1
    11192 JUMP                             ; [+1]
    11193 LOADB                            R24 0
    11194 JUMPIFNOT                        R24 ; [+4]
    11195 MOVE                             R23 R12
    11196 LOADK                            R24 K158 ["Description.ActionEnabled"]
    11197 CALL                             R23 1 1
    11198 JUMPIF                           R23 ; [+3]
    11199 MOVE                             R23 R12
    11200 LOADK                            R24 K159 ["Description.ActionDisabled"]
    11201 CALL                             R23 1 1
    11202 LOADK                            R24 K44 [""]
    11203 FASTCALL1                        TOSTRING R23 ; [+3]
    11204 MOVE                             R28 R23
    11205 GETIMPORT                        R27 K4 [tostring]
    11207 CALL                             R27 1 1
    11208 MOVE                             R25 R27
    11209 LOADK                            R26 K44 [""]
    11210 CONCAT                           R22 R24 R26
    11211 SETTABLEKS                       R22 R21 K156 ["action"]
    11213 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11215 JUMPIFNOT                        R24 ; [+5]
    11216 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11218 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11220 JUMPIF                           R23 ; [+1]
    11221 LOADK                            R23 K44 [""]
    11222 LOADK                            R24 K44 [""]
    11223 FASTCALL1                        TOSTRING R23 ; [+3]
    11224 MOVE                             R28 R23
    11225 GETIMPORT                        R27 K4 [tostring]
    11227 CALL                             R27 1 1
    11228 MOVE                             R25 R27
    11229 LOADK                            R26 K44 [""]
    11230 CONCAT                           R22 R24 R26
    11231 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11233 CALL                             R19 2 1
    11234 SETTABLEKS                       R19 R18 K24 ["translation"]
    11236 GETTABLEKS                       R19 R2 K14 ["userId"]
    11238 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11240 MOVE                             R19 R0
    11241 GETTABLEKS                       R20 R2 K14 ["userId"]
    11243 CALL                             R19 1 1
    11244 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11246 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11248 ORK                              R19 R20 K18 [0]
    11249 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11251 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11253 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11255 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11257 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11259 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11261 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11263 LOADK                            R20 K44 [""]
    11264 FASTCALL1                        TOSTRING R4 ; [+3]
    11265 MOVE                             R26 R4
    11266 GETIMPORT                        R25 K4 [tostring]
    11268 CALL                             R25 1 1
    11269 MOVE                             R21 R25
    11270 LOADK                            R22 K5 ["/places/"]
    11271 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11273 FASTCALL1                        TOSTRING R26 ; [+2]
    11274 GETIMPORT                        R25 K4 [tostring]
    11276 CALL                             R25 1 1
    11277 MOVE                             R23 R25
    11278 LOADK                            R24 K569 ["/permissions"]
    11279 CONCAT                           R19 R20 R24
    11280 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11282 LOADK                            R20 K44 [""]
    11283 GETUPVAL                         R26 1
    11284 FASTCALL1                        TOSTRING R26 ; [+2]
    11285 GETIMPORT                        R25 K4 [tostring]
    11287 CALL                             R25 1 1
    11288 MOVE                             R21 R25
    11289 LOADK                            R22 K556 ["games/"]
    11290 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11292 FASTCALL1                        TOSTRING R26 ; [+2]
    11293 GETIMPORT                        R25 K4 [tostring]
    11295 CALL                             R25 1 1
    11296 MOVE                             R23 R25
    11297 LOADK                            R24 K44 [""]
    11298 CONCAT                           R19 R20 R24
    11299 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11301 RETURN                           R18 1
    11302 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11304 JUMPIFNOTEQKN                    R18 K624 [110] ; [+153]
    11306 DUPTABLE                         R18 K626 [{["id"], ["eventType"] = "PlacePermissionsSavePlaceAPI", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11307 GETTABLEKS                       R19 R2 K19 ["id"]
    11309 SETTABLEKS                       R19 R18 K19 ["id"]
    11311 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11313 GETIMPORT                        R21 K35 [pcall]
    11315 NEWCLOSURE                       R22 P6
    11316 CAPTURE                          VAL R20
    11317 CAPTURE                          VAL R3
    11318 CALL                             R21 1 2
    11319 JUMPIFNOT                        R21 ; [+2]
    11320 MOVE                             R19 R22
    11321 JUMP                             ; [+1]
    11322 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11323 SETTABLEKS                       R19 R18 K23 ["date"]
    11325 MOVE                             R19 R12
    11326 LOADK                            R20 K627 ["Description.PlacePermissionsSavePlaceAPI"]
    11327 DUPTABLE                         R21 K587 [{"action", "placeName"}]
    11328 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11330 JUMPIFNOT                        R26 ; [+5]
    11331 GETTABLEKS                       R26 R2 K42 ["metaData"]
    11333 GETTABLEKS                       R25 R26 K43 ["Action"]
    11335 JUMPIF                           R25 ; [+1]
    11336 LOADK                            R25 K44 [""]
    11337 GETIMPORT                        R26 K47 [string.lower]
    11339 FASTCALL1                        TOSTRING R25 ; [+3]
    11340 MOVE                             R28 R25
    11341 GETIMPORT                        R27 K4 [tostring]
    11343 CALL                             R27 1 1
    11344 CALL                             R26 1 1
    11345 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    11347 LOADB                            R24 1
    11348 JUMP                             ; [+1]
    11349 LOADB                            R24 0
    11350 JUMPIFNOT                        R24 ; [+4]
    11351 MOVE                             R23 R12
    11352 LOADK                            R24 K158 ["Description.ActionEnabled"]
    11353 CALL                             R23 1 1
    11354 JUMPIF                           R23 ; [+3]
    11355 MOVE                             R23 R12
    11356 LOADK                            R24 K159 ["Description.ActionDisabled"]
    11357 CALL                             R23 1 1
    11358 LOADK                            R24 K44 [""]
    11359 FASTCALL1                        TOSTRING R23 ; [+3]
    11360 MOVE                             R28 R23
    11361 GETIMPORT                        R27 K4 [tostring]
    11363 CALL                             R27 1 1
    11364 MOVE                             R25 R27
    11365 LOADK                            R26 K44 [""]
    11366 CONCAT                           R22 R24 R26
    11367 SETTABLEKS                       R22 R21 K156 ["action"]
    11369 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11371 JUMPIFNOT                        R24 ; [+5]
    11372 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11374 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11376 JUMPIF                           R23 ; [+1]
    11377 LOADK                            R23 K44 [""]
    11378 LOADK                            R24 K44 [""]
    11379 FASTCALL1                        TOSTRING R23 ; [+3]
    11380 MOVE                             R28 R23
    11381 GETIMPORT                        R27 K4 [tostring]
    11383 CALL                             R27 1 1
    11384 MOVE                             R25 R27
    11385 LOADK                            R26 K44 [""]
    11386 CONCAT                           R22 R24 R26
    11387 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11389 CALL                             R19 2 1
    11390 SETTABLEKS                       R19 R18 K24 ["translation"]
    11392 GETTABLEKS                       R19 R2 K14 ["userId"]
    11394 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11396 MOVE                             R19 R0
    11397 GETTABLEKS                       R20 R2 K14 ["userId"]
    11399 CALL                             R19 1 1
    11400 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11402 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11404 ORK                              R19 R20 K18 [0]
    11405 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11407 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11409 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11411 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11413 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11415 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11417 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11419 LOADK                            R20 K44 [""]
    11420 FASTCALL1                        TOSTRING R4 ; [+3]
    11421 MOVE                             R26 R4
    11422 GETIMPORT                        R25 K4 [tostring]
    11424 CALL                             R25 1 1
    11425 MOVE                             R21 R25
    11426 LOADK                            R22 K5 ["/places/"]
    11427 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11429 FASTCALL1                        TOSTRING R26 ; [+2]
    11430 GETIMPORT                        R25 K4 [tostring]
    11432 CALL                             R25 1 1
    11433 MOVE                             R23 R25
    11434 LOADK                            R24 K569 ["/permissions"]
    11435 CONCAT                           R19 R20 R24
    11436 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11438 LOADK                            R20 K44 [""]
    11439 GETUPVAL                         R26 1
    11440 FASTCALL1                        TOSTRING R26 ; [+2]
    11441 GETIMPORT                        R25 K4 [tostring]
    11443 CALL                             R25 1 1
    11444 MOVE                             R21 R25
    11445 LOADK                            R22 K556 ["games/"]
    11446 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11448 FASTCALL1                        TOSTRING R26 ; [+2]
    11449 GETIMPORT                        R25 K4 [tostring]
    11451 CALL                             R25 1 1
    11452 MOVE                             R23 R25
    11453 LOADK                            R24 K44 [""]
    11454 CONCAT                           R19 R20 R24
    11455 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11457 RETURN                           R18 1
    11458 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11460 JUMPIFNOTEQKN                    R18 K628 [111] ; [+152]
    11462 DUPTABLE                         R18 K630 [{["id"], ["eventType"] = "PlaceRevert", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11463 GETTABLEKS                       R19 R2 K19 ["id"]
    11465 SETTABLEKS                       R19 R18 K19 ["id"]
    11467 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11469 GETIMPORT                        R21 K35 [pcall]
    11471 NEWCLOSURE                       R22 P6
    11472 CAPTURE                          VAL R20
    11473 CAPTURE                          VAL R3
    11474 CALL                             R21 1 2
    11475 JUMPIFNOT                        R21 ; [+2]
    11476 MOVE                             R19 R22
    11477 JUMP                             ; [+1]
    11478 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11479 SETTABLEKS                       R19 R18 K23 ["date"]
    11481 MOVE                             R19 R12
    11482 LOADK                            R20 K631 ["Description.PlaceRevert"]
    11483 DUPTABLE                         R21 K634 [{"placeName", "oldVersion", "newVersion"}]
    11484 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11486 JUMPIFNOT                        R24 ; [+5]
    11487 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11489 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    11491 JUMPIF                           R23 ; [+1]
    11492 LOADK                            R23 K44 [""]
    11493 LOADK                            R24 K44 [""]
    11494 FASTCALL1                        TOSTRING R23 ; [+3]
    11495 MOVE                             R28 R23
    11496 GETIMPORT                        R27 K4 [tostring]
    11498 CALL                             R27 1 1
    11499 MOVE                             R25 R27
    11500 LOADK                            R26 K44 [""]
    11501 CONCAT                           R22 R24 R26
    11502 SETTABLEKS                       R22 R21 K586 ["placeName"]
    11504 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11506 JUMPIFNOT                        R24 ; [+5]
    11507 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11509 GETTABLEKS                       R23 R24 K635 ["OldVersion"]
    11511 JUMPIF                           R23 ; [+1]
    11512 LOADK                            R23 K44 [""]
    11513 LOADK                            R24 K44 [""]
    11514 FASTCALL1                        TOSTRING R23 ; [+3]
    11515 MOVE                             R28 R23
    11516 GETIMPORT                        R27 K4 [tostring]
    11518 CALL                             R27 1 1
    11519 MOVE                             R25 R27
    11520 LOADK                            R26 K44 [""]
    11521 CONCAT                           R22 R24 R26
    11522 SETTABLEKS                       R22 R21 K632 ["oldVersion"]
    11524 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11526 JUMPIFNOT                        R24 ; [+5]
    11527 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11529 GETTABLEKS                       R23 R24 K636 ["NewVersion"]
    11531 JUMPIF                           R23 ; [+1]
    11532 LOADK                            R23 K44 [""]
    11533 LOADK                            R24 K44 [""]
    11534 FASTCALL1                        TOSTRING R23 ; [+3]
    11535 MOVE                             R28 R23
    11536 GETIMPORT                        R27 K4 [tostring]
    11538 CALL                             R27 1 1
    11539 MOVE                             R25 R27
    11540 LOADK                            R26 K44 [""]
    11541 CONCAT                           R22 R24 R26
    11542 SETTABLEKS                       R22 R21 K633 ["newVersion"]
    11544 CALL                             R19 2 1
    11545 SETTABLEKS                       R19 R18 K24 ["translation"]
    11547 GETTABLEKS                       R19 R2 K14 ["userId"]
    11549 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11551 MOVE                             R19 R0
    11552 GETTABLEKS                       R20 R2 K14 ["userId"]
    11554 CALL                             R19 1 1
    11555 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11557 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11559 ORK                              R19 R20 K18 [0]
    11560 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11562 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11564 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11566 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11568 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11570 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11572 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11574 LOADK                            R20 K44 [""]
    11575 FASTCALL1                        TOSTRING R4 ; [+3]
    11576 MOVE                             R26 R4
    11577 GETIMPORT                        R25 K4 [tostring]
    11579 CALL                             R25 1 1
    11580 MOVE                             R21 R25
    11581 LOADK                            R22 K5 ["/places/"]
    11582 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11584 FASTCALL1                        TOSTRING R26 ; [+2]
    11585 GETIMPORT                        R25 K4 [tostring]
    11587 CALL                             R25 1 1
    11588 MOVE                             R23 R25
    11589 LOADK                            R24 K637 ["/version-history"]
    11590 CONCAT                           R19 R20 R24
    11591 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11593 LOADK                            R20 K44 [""]
    11594 GETUPVAL                         R26 1
    11595 FASTCALL1                        TOSTRING R26 ; [+2]
    11596 GETIMPORT                        R25 K4 [tostring]
    11598 CALL                             R25 1 1
    11599 MOVE                             R21 R25
    11600 LOADK                            R22 K556 ["games/"]
    11601 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11603 FASTCALL1                        TOSTRING R26 ; [+2]
    11604 GETIMPORT                        R25 K4 [tostring]
    11606 CALL                             R25 1 1
    11607 MOVE                             R23 R25
    11608 LOADK                            R24 K44 [""]
    11609 CONCAT                           R19 R20 R24
    11610 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11612 RETURN                           R18 1
    11613 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11615 JUMPIFNOTEQKN                    R18 K638 [112] ; [+72]
    11617 DUPTABLE                         R18 K640 [{["id"], ["eventType"] = "PlaceShutDown", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    11618 GETTABLEKS                       R19 R2 K19 ["id"]
    11620 SETTABLEKS                       R19 R18 K19 ["id"]
    11622 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11624 GETIMPORT                        R21 K35 [pcall]
    11626 NEWCLOSURE                       R22 P6
    11627 CAPTURE                          VAL R20
    11628 CAPTURE                          VAL R3
    11629 CALL                             R21 1 2
    11630 JUMPIFNOT                        R21 ; [+2]
    11631 MOVE                             R19 R22
    11632 JUMP                             ; [+1]
    11633 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11634 SETTABLEKS                       R19 R18 K23 ["date"]
    11636 MOVE                             R19 R12
    11637 LOADK                            R20 K641 ["Description.PlaceShutDown"]
    11638 CALL                             R19 1 1
    11639 SETTABLEKS                       R19 R18 K24 ["translation"]
    11641 GETTABLEKS                       R19 R2 K14 ["userId"]
    11643 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11645 MOVE                             R19 R0
    11646 GETTABLEKS                       R20 R2 K14 ["userId"]
    11648 CALL                             R19 1 1
    11649 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11651 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11653 ORK                              R19 R20 K18 [0]
    11654 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11656 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11658 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11660 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11662 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11664 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11666 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11668 LOADK                            R20 K44 [""]
    11669 GETUPVAL                         R26 1
    11670 FASTCALL1                        TOSTRING R26 ; [+2]
    11671 GETIMPORT                        R25 K4 [tostring]
    11673 CALL                             R25 1 1
    11674 MOVE                             R21 R25
    11675 LOADK                            R22 K556 ["games/"]
    11676 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11678 FASTCALL1                        TOSTRING R26 ; [+2]
    11679 GETIMPORT                        R25 K4 [tostring]
    11681 CALL                             R25 1 1
    11682 MOVE                             R23 R25
    11683 LOADK                            R24 K44 [""]
    11684 CONCAT                           R19 R20 R24
    11685 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11687 RETURN                           R18 1
    11688 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11690 JUMPIFNOTEQKN                    R18 K642 [113] ; [+72]
    11692 DUPTABLE                         R18 K644 [{["id"], ["eventType"] = "PlaceRestart", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    11693 GETTABLEKS                       R19 R2 K19 ["id"]
    11695 SETTABLEKS                       R19 R18 K19 ["id"]
    11697 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11699 GETIMPORT                        R21 K35 [pcall]
    11701 NEWCLOSURE                       R22 P6
    11702 CAPTURE                          VAL R20
    11703 CAPTURE                          VAL R3
    11704 CALL                             R21 1 2
    11705 JUMPIFNOT                        R21 ; [+2]
    11706 MOVE                             R19 R22
    11707 JUMP                             ; [+1]
    11708 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11709 SETTABLEKS                       R19 R18 K23 ["date"]
    11711 MOVE                             R19 R12
    11712 LOADK                            R20 K645 ["Description.PlaceRestart"]
    11713 CALL                             R19 1 1
    11714 SETTABLEKS                       R19 R18 K24 ["translation"]
    11716 GETTABLEKS                       R19 R2 K14 ["userId"]
    11718 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11720 MOVE                             R19 R0
    11721 GETTABLEKS                       R20 R2 K14 ["userId"]
    11723 CALL                             R19 1 1
    11724 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11726 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11728 ORK                              R19 R20 K18 [0]
    11729 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11731 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11733 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11735 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11737 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11739 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11741 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11743 LOADK                            R20 K44 [""]
    11744 GETUPVAL                         R26 1
    11745 FASTCALL1                        TOSTRING R26 ; [+2]
    11746 GETIMPORT                        R25 K4 [tostring]
    11748 CALL                             R25 1 1
    11749 MOVE                             R21 R25
    11750 LOADK                            R22 K556 ["games/"]
    11751 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11753 FASTCALL1                        TOSTRING R26 ; [+2]
    11754 GETIMPORT                        R25 K4 [tostring]
    11756 CALL                             R25 1 1
    11757 MOVE                             R23 R25
    11758 LOADK                            R24 K44 [""]
    11759 CONCAT                           R19 R20 R24
    11760 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11762 RETURN                           R18 1
    11763 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11765 JUMPIFNOTEQKN                    R18 K646 [114] ; [+112]
    11767 DUPTABLE                         R18 K648 [{["id"], ["eventType"] = "PlaceThumbnailAltText", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11768 GETTABLEKS                       R19 R2 K19 ["id"]
    11770 SETTABLEKS                       R19 R18 K19 ["id"]
    11772 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11774 GETIMPORT                        R21 K35 [pcall]
    11776 NEWCLOSURE                       R22 P6
    11777 CAPTURE                          VAL R20
    11778 CAPTURE                          VAL R3
    11779 CALL                             R21 1 2
    11780 JUMPIFNOT                        R21 ; [+2]
    11781 MOVE                             R19 R22
    11782 JUMP                             ; [+1]
    11783 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11784 SETTABLEKS                       R19 R18 K23 ["date"]
    11786 MOVE                             R19 R12
    11787 LOADK                            R20 K649 ["Description.PlaceThumbnailAltText"]
    11788 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    11789 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11791 JUMPIFNOT                        R24 ; [+5]
    11792 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11794 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    11796 JUMPIF                           R23 ; [+1]
    11797 LOADK                            R23 K44 [""]
    11798 LOADK                            R24 K44 [""]
    11799 FASTCALL1                        TOSTRING R23 ; [+3]
    11800 MOVE                             R28 R23
    11801 GETIMPORT                        R27 K4 [tostring]
    11803 CALL                             R27 1 1
    11804 MOVE                             R25 R27
    11805 LOADK                            R26 K44 [""]
    11806 CONCAT                           R22 R24 R26
    11807 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    11809 CALL                             R19 2 1
    11810 SETTABLEKS                       R19 R18 K24 ["translation"]
    11812 GETTABLEKS                       R19 R2 K14 ["userId"]
    11814 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11816 MOVE                             R19 R0
    11817 GETTABLEKS                       R20 R2 K14 ["userId"]
    11819 CALL                             R19 1 1
    11820 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11822 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11824 ORK                              R19 R20 K18 [0]
    11825 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11827 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11829 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11831 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11833 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11835 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11837 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11839 LOADK                            R20 K44 [""]
    11840 FASTCALL1                        TOSTRING R4 ; [+3]
    11841 MOVE                             R26 R4
    11842 GETIMPORT                        R25 K4 [tostring]
    11844 CALL                             R25 1 1
    11845 MOVE                             R21 R25
    11846 LOADK                            R22 K5 ["/places/"]
    11847 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11849 FASTCALL1                        TOSTRING R26 ; [+2]
    11850 GETIMPORT                        R25 K4 [tostring]
    11852 CALL                             R25 1 1
    11853 MOVE                             R23 R25
    11854 LOADK                            R24 K651 ["/thumbnails"]
    11855 CONCAT                           R19 R20 R24
    11856 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11858 LOADK                            R20 K44 [""]
    11859 GETUPVAL                         R26 1
    11860 FASTCALL1                        TOSTRING R26 ; [+2]
    11861 GETIMPORT                        R25 K4 [tostring]
    11863 CALL                             R25 1 1
    11864 MOVE                             R21 R25
    11865 LOADK                            R22 K556 ["games/"]
    11866 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11868 FASTCALL1                        TOSTRING R26 ; [+2]
    11869 GETIMPORT                        R25 K4 [tostring]
    11871 CALL                             R25 1 1
    11872 MOVE                             R23 R25
    11873 LOADK                            R24 K44 [""]
    11874 CONCAT                           R19 R20 R24
    11875 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11877 RETURN                           R18 1
    11878 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11880 JUMPIFNOTEQKN                    R18 K652 [115] ; [+112]
    11882 DUPTABLE                         R18 K654 [{["id"], ["eventType"] = "PlaceThumbnailAdded", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    11883 GETTABLEKS                       R19 R2 K19 ["id"]
    11885 SETTABLEKS                       R19 R18 K19 ["id"]
    11887 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    11889 GETIMPORT                        R21 K35 [pcall]
    11891 NEWCLOSURE                       R22 P6
    11892 CAPTURE                          VAL R20
    11893 CAPTURE                          VAL R3
    11894 CALL                             R21 1 2
    11895 JUMPIFNOT                        R21 ; [+2]
    11896 MOVE                             R19 R22
    11897 JUMP                             ; [+1]
    11898 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    11899 SETTABLEKS                       R19 R18 K23 ["date"]
    11901 MOVE                             R19 R12
    11902 LOADK                            R20 K655 ["Description.PlaceThumbnailAdded"]
    11903 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    11904 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11906 JUMPIFNOT                        R24 ; [+5]
    11907 GETTABLEKS                       R24 R2 K42 ["metaData"]
    11909 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    11911 JUMPIF                           R23 ; [+1]
    11912 LOADK                            R23 K44 [""]
    11913 LOADK                            R24 K44 [""]
    11914 FASTCALL1                        TOSTRING R23 ; [+3]
    11915 MOVE                             R28 R23
    11916 GETIMPORT                        R27 K4 [tostring]
    11918 CALL                             R27 1 1
    11919 MOVE                             R25 R27
    11920 LOADK                            R26 K44 [""]
    11921 CONCAT                           R22 R24 R26
    11922 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    11924 CALL                             R19 2 1
    11925 SETTABLEKS                       R19 R18 K24 ["translation"]
    11927 GETTABLEKS                       R19 R2 K14 ["userId"]
    11929 SETTABLEKS                       R19 R18 K25 ["actorId"]
    11931 MOVE                             R19 R0
    11932 GETTABLEKS                       R20 R2 K14 ["userId"]
    11934 CALL                             R19 1 1
    11935 SETTABLEKS                       R19 R18 K26 ["actorName"]
    11937 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11939 ORK                              R19 R20 K18 [0]
    11940 SETTABLEKS                       R19 R18 K29 ["iconId"]
    11942 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11944 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11946 GETTABLEKS                       R19 R2 K30 ["headerText"]
    11948 SETTABLEKS                       R19 R18 K30 ["headerText"]
    11950 GETTABLEKS                       R19 R2 K31 ["footerText"]
    11952 SETTABLEKS                       R19 R18 K31 ["footerText"]
    11954 LOADK                            R20 K44 [""]
    11955 FASTCALL1                        TOSTRING R4 ; [+3]
    11956 MOVE                             R26 R4
    11957 GETIMPORT                        R25 K4 [tostring]
    11959 CALL                             R25 1 1
    11960 MOVE                             R21 R25
    11961 LOADK                            R22 K5 ["/places/"]
    11962 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11964 FASTCALL1                        TOSTRING R26 ; [+2]
    11965 GETIMPORT                        R25 K4 [tostring]
    11967 CALL                             R25 1 1
    11968 MOVE                             R23 R25
    11969 LOADK                            R24 K651 ["/thumbnails"]
    11970 CONCAT                           R19 R20 R24
    11971 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    11973 LOADK                            R20 K44 [""]
    11974 GETUPVAL                         R26 1
    11975 FASTCALL1                        TOSTRING R26 ; [+2]
    11976 GETIMPORT                        R25 K4 [tostring]
    11978 CALL                             R25 1 1
    11979 MOVE                             R21 R25
    11980 LOADK                            R22 K556 ["games/"]
    11981 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11983 FASTCALL1                        TOSTRING R26 ; [+2]
    11984 GETIMPORT                        R25 K4 [tostring]
    11986 CALL                             R25 1 1
    11987 MOVE                             R23 R25
    11988 LOADK                            R24 K44 [""]
    11989 CONCAT                           R19 R20 R24
    11990 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    11992 RETURN                           R18 1
    11993 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11995 JUMPIFNOTEQKN                    R18 K656 [116] ; [+47]
    11997 DUPTABLE                         R18 K658 [{["id"], ["eventType"] = "PlaceThumbnailOrder", ["eventCategory"] = "Unknown", ["date"], ["translation"] = "", ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    11998 GETTABLEKS                       R19 R2 K19 ["id"]
    12000 SETTABLEKS                       R19 R18 K19 ["id"]
    12002 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12004 GETIMPORT                        R21 K35 [pcall]
    12006 NEWCLOSURE                       R22 P6
    12007 CAPTURE                          VAL R20
    12008 CAPTURE                          VAL R3
    12009 CALL                             R21 1 2
    12010 JUMPIFNOT                        R21 ; [+2]
    12011 MOVE                             R19 R22
    12012 JUMP                             ; [+1]
    12013 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12014 SETTABLEKS                       R19 R18 K23 ["date"]
    12016 GETTABLEKS                       R19 R2 K14 ["userId"]
    12018 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12020 MOVE                             R19 R0
    12021 GETTABLEKS                       R20 R2 K14 ["userId"]
    12023 CALL                             R19 1 1
    12024 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12026 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12028 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12030 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12032 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12034 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12036 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12038 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12040 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12042 RETURN                           R18 1
    12043 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12045 JUMPIFNOTEQKN                    R18 K659 [117] ; [+112]
    12047 DUPTABLE                         R18 K661 [{["id"], ["eventType"] = "PlaceThumbnailDeleted", ["eventCategory"] = "Place", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    12048 GETTABLEKS                       R19 R2 K19 ["id"]
    12050 SETTABLEKS                       R19 R18 K19 ["id"]
    12052 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12054 GETIMPORT                        R21 K35 [pcall]
    12056 NEWCLOSURE                       R22 P6
    12057 CAPTURE                          VAL R20
    12058 CAPTURE                          VAL R3
    12059 CALL                             R21 1 2
    12060 JUMPIFNOT                        R21 ; [+2]
    12061 MOVE                             R19 R22
    12062 JUMP                             ; [+1]
    12063 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12064 SETTABLEKS                       R19 R18 K23 ["date"]
    12066 MOVE                             R19 R12
    12067 LOADK                            R20 K662 ["Description.PlaceThumbnailDeleted"]
    12068 DUPTABLE                         R21 K650 [{"thumbnailName"}]
    12069 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12071 JUMPIFNOT                        R24 ; [+5]
    12072 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12074 GETTABLEKS                       R23 R24 K300 ["ThumbnailName"]
    12076 JUMPIF                           R23 ; [+1]
    12077 LOADK                            R23 K44 [""]
    12078 LOADK                            R24 K44 [""]
    12079 FASTCALL1                        TOSTRING R23 ; [+3]
    12080 MOVE                             R28 R23
    12081 GETIMPORT                        R27 K4 [tostring]
    12083 CALL                             R27 1 1
    12084 MOVE                             R25 R27
    12085 LOADK                            R26 K44 [""]
    12086 CONCAT                           R22 R24 R26
    12087 SETTABLEKS                       R22 R21 K298 ["thumbnailName"]
    12089 CALL                             R19 2 1
    12090 SETTABLEKS                       R19 R18 K24 ["translation"]
    12092 GETTABLEKS                       R19 R2 K14 ["userId"]
    12094 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12096 MOVE                             R19 R0
    12097 GETTABLEKS                       R20 R2 K14 ["userId"]
    12099 CALL                             R19 1 1
    12100 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12102 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12104 ORK                              R19 R20 K18 [0]
    12105 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12107 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12109 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12111 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12113 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12115 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12117 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12119 LOADK                            R20 K44 [""]
    12120 FASTCALL1                        TOSTRING R4 ; [+3]
    12121 MOVE                             R26 R4
    12122 GETIMPORT                        R25 K4 [tostring]
    12124 CALL                             R25 1 1
    12125 MOVE                             R21 R25
    12126 LOADK                            R22 K5 ["/places/"]
    12127 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12129 FASTCALL1                        TOSTRING R26 ; [+2]
    12130 GETIMPORT                        R25 K4 [tostring]
    12132 CALL                             R25 1 1
    12133 MOVE                             R23 R25
    12134 LOADK                            R24 K651 ["/thumbnails"]
    12135 CONCAT                           R19 R20 R24
    12136 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12138 LOADK                            R20 K44 [""]
    12139 GETUPVAL                         R26 1
    12140 FASTCALL1                        TOSTRING R26 ; [+2]
    12141 GETIMPORT                        R25 K4 [tostring]
    12143 CALL                             R25 1 1
    12144 MOVE                             R21 R25
    12145 LOADK                            R22 K556 ["games/"]
    12146 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12148 FASTCALL1                        TOSTRING R26 ; [+2]
    12149 GETIMPORT                        R25 K4 [tostring]
    12151 CALL                             R25 1 1
    12152 MOVE                             R23 R25
    12153 LOADK                            R24 K44 [""]
    12154 CONCAT                           R19 R20 R24
    12155 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12157 RETURN                           R18 1
    12158 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12160 JUMPIFNOTEQKN                    R18 K663 [118] ; [+104]
    12162 DUPTABLE                         R18 K666 [{["id"], ["eventType"] = "PlaceAdded", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    12163 GETTABLEKS                       R19 R2 K19 ["id"]
    12165 SETTABLEKS                       R19 R18 K19 ["id"]
    12167 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12169 GETIMPORT                        R21 K35 [pcall]
    12171 NEWCLOSURE                       R22 P6
    12172 CAPTURE                          VAL R20
    12173 CAPTURE                          VAL R3
    12174 CALL                             R21 1 2
    12175 JUMPIFNOT                        R21 ; [+2]
    12176 MOVE                             R19 R22
    12177 JUMP                             ; [+1]
    12178 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12179 SETTABLEKS                       R19 R18 K23 ["date"]
    12181 MOVE                             R19 R12
    12182 LOADK                            R20 K667 ["Description.PlaceAdded"]
    12183 DUPTABLE                         R21 K600 [{"placeName"}]
    12184 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12186 JUMPIFNOT                        R24 ; [+5]
    12187 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12189 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    12191 JUMPIF                           R23 ; [+1]
    12192 LOADK                            R23 K44 [""]
    12193 LOADK                            R24 K44 [""]
    12194 FASTCALL1                        TOSTRING R23 ; [+3]
    12195 MOVE                             R28 R23
    12196 GETIMPORT                        R27 K4 [tostring]
    12198 CALL                             R27 1 1
    12199 MOVE                             R25 R27
    12200 LOADK                            R26 K44 [""]
    12201 CONCAT                           R22 R24 R26
    12202 SETTABLEKS                       R22 R21 K586 ["placeName"]
    12204 CALL                             R19 2 1
    12205 SETTABLEKS                       R19 R18 K24 ["translation"]
    12207 GETTABLEKS                       R19 R2 K14 ["userId"]
    12209 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12211 MOVE                             R19 R0
    12212 GETTABLEKS                       R20 R2 K14 ["userId"]
    12214 CALL                             R19 1 1
    12215 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12217 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12219 ORK                              R19 R20 K18 [0]
    12220 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12222 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12224 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12226 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12228 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12230 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12232 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12234 LOADK                            R20 K44 [""]
    12235 FASTCALL1                        TOSTRING R4 ; [+3]
    12236 MOVE                             R24 R4
    12237 GETIMPORT                        R23 K4 [tostring]
    12239 CALL                             R23 1 1
    12240 MOVE                             R21 R23
    12241 LOADK                            R22 K668 ["/places/manage"]
    12242 CONCAT                           R19 R20 R22
    12243 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12245 LOADK                            R20 K44 [""]
    12246 GETUPVAL                         R26 1
    12247 FASTCALL1                        TOSTRING R26 ; [+2]
    12248 GETIMPORT                        R25 K4 [tostring]
    12250 CALL                             R25 1 1
    12251 MOVE                             R21 R25
    12252 LOADK                            R22 K556 ["games/"]
    12253 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12255 FASTCALL1                        TOSTRING R26 ; [+2]
    12256 GETIMPORT                        R25 K4 [tostring]
    12258 CALL                             R25 1 1
    12259 MOVE                             R23 R25
    12260 LOADK                            R24 K44 [""]
    12261 CONCAT                           R19 R20 R24
    12262 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12264 RETURN                           R18 1
    12265 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12267 JUMPIFNOTEQKN                    R18 K669 [119] ; [+104]
    12269 DUPTABLE                         R18 K671 [{["id"], ["eventType"] = "PlaceRemoved", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewOnRobloxLink"]}]
    12270 GETTABLEKS                       R19 R2 K19 ["id"]
    12272 SETTABLEKS                       R19 R18 K19 ["id"]
    12274 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12276 GETIMPORT                        R21 K35 [pcall]
    12278 NEWCLOSURE                       R22 P6
    12279 CAPTURE                          VAL R20
    12280 CAPTURE                          VAL R3
    12281 CALL                             R21 1 2
    12282 JUMPIFNOT                        R21 ; [+2]
    12283 MOVE                             R19 R22
    12284 JUMP                             ; [+1]
    12285 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12286 SETTABLEKS                       R19 R18 K23 ["date"]
    12288 MOVE                             R19 R12
    12289 LOADK                            R20 K672 ["Description.PlaceRemoved"]
    12290 DUPTABLE                         R21 K600 [{"placeName"}]
    12291 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12293 JUMPIFNOT                        R24 ; [+5]
    12294 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12296 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    12298 JUMPIF                           R23 ; [+1]
    12299 LOADK                            R23 K44 [""]
    12300 LOADK                            R24 K44 [""]
    12301 FASTCALL1                        TOSTRING R23 ; [+3]
    12302 MOVE                             R28 R23
    12303 GETIMPORT                        R27 K4 [tostring]
    12305 CALL                             R27 1 1
    12306 MOVE                             R25 R27
    12307 LOADK                            R26 K44 [""]
    12308 CONCAT                           R22 R24 R26
    12309 SETTABLEKS                       R22 R21 K586 ["placeName"]
    12311 CALL                             R19 2 1
    12312 SETTABLEKS                       R19 R18 K24 ["translation"]
    12314 GETTABLEKS                       R19 R2 K14 ["userId"]
    12316 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12318 MOVE                             R19 R0
    12319 GETTABLEKS                       R20 R2 K14 ["userId"]
    12321 CALL                             R19 1 1
    12322 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12324 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12326 ORK                              R19 R20 K18 [0]
    12327 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12329 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12331 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12333 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12335 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12337 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12339 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12341 LOADK                            R20 K44 [""]
    12342 FASTCALL1                        TOSTRING R4 ; [+3]
    12343 MOVE                             R24 R4
    12344 GETIMPORT                        R23 K4 [tostring]
    12346 CALL                             R23 1 1
    12347 MOVE                             R21 R23
    12348 LOADK                            R22 K668 ["/places/manage"]
    12349 CONCAT                           R19 R20 R22
    12350 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12352 LOADK                            R20 K44 [""]
    12353 GETUPVAL                         R26 1
    12354 FASTCALL1                        TOSTRING R26 ; [+2]
    12355 GETIMPORT                        R25 K4 [tostring]
    12357 CALL                             R25 1 1
    12358 MOVE                             R21 R25
    12359 LOADK                            R22 K556 ["games/"]
    12360 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12362 FASTCALL1                        TOSTRING R26 ; [+2]
    12363 GETIMPORT                        R25 K4 [tostring]
    12365 CALL                             R25 1 1
    12366 MOVE                             R23 R25
    12367 LOADK                            R24 K44 [""]
    12368 CONCAT                           R19 R20 R24
    12369 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12371 RETURN                           R18 1
    12372 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12374 JUMPIFNOTEQKN                    R18 K673 [120] ; [+108]
    12376 DUPTABLE                         R18 K675 [{["id"], ["eventType"] = "PlacePublished", ["eventCategory"] = "Publish", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Place", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewOnRobloxLink"]}]
    12377 GETTABLEKS                       R19 R2 K19 ["id"]
    12379 SETTABLEKS                       R19 R18 K19 ["id"]
    12381 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12383 GETIMPORT                        R21 K35 [pcall]
    12385 NEWCLOSURE                       R22 P6
    12386 CAPTURE                          VAL R20
    12387 CAPTURE                          VAL R3
    12388 CALL                             R21 1 2
    12389 JUMPIFNOT                        R21 ; [+2]
    12390 MOVE                             R19 R22
    12391 JUMP                             ; [+1]
    12392 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12393 SETTABLEKS                       R19 R18 K23 ["date"]
    12395 MOVE                             R19 R12
    12396 LOADK                            R20 K676 ["Description.PlacePublished"]
    12397 DUPTABLE                         R21 K677 [{"placeName", "newVersion"}]
    12398 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12400 JUMPIFNOT                        R24 ; [+5]
    12401 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12403 GETTABLEKS                       R23 R24 K588 ["PlaceName"]
    12405 JUMPIF                           R23 ; [+1]
    12406 LOADK                            R23 K44 [""]
    12407 LOADK                            R24 K44 [""]
    12408 FASTCALL1                        TOSTRING R23 ; [+3]
    12409 MOVE                             R28 R23
    12410 GETIMPORT                        R27 K4 [tostring]
    12412 CALL                             R27 1 1
    12413 MOVE                             R25 R27
    12414 LOADK                            R26 K44 [""]
    12415 CONCAT                           R22 R24 R26
    12416 SETTABLEKS                       R22 R21 K586 ["placeName"]
    12418 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12420 JUMPIFNOT                        R24 ; [+5]
    12421 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12423 GETTABLEKS                       R23 R24 K636 ["NewVersion"]
    12425 JUMPIF                           R23 ; [+1]
    12426 LOADK                            R23 K44 [""]
    12427 FASTCALL1                        TOSTRING R23 ; [+2]
    12428 GETIMPORT                        R22 K4 [tostring]
    12430 CALL                             R22 1 1
    12431 SETTABLEKS                       R22 R21 K633 ["newVersion"]
    12433 CALL                             R19 2 1
    12434 SETTABLEKS                       R19 R18 K24 ["translation"]
    12436 GETTABLEKS                       R19 R2 K14 ["userId"]
    12438 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12440 MOVE                             R19 R0
    12441 GETTABLEKS                       R20 R2 K14 ["userId"]
    12443 CALL                             R19 1 1
    12444 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12446 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12448 ORK                              R19 R20 K18 [0]
    12449 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12451 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12453 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12455 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12457 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12459 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12461 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12463 LOADK                            R20 K44 [""]
    12464 GETUPVAL                         R26 1
    12465 FASTCALL1                        TOSTRING R26 ; [+2]
    12466 GETIMPORT                        R25 K4 [tostring]
    12468 CALL                             R25 1 1
    12469 MOVE                             R21 R25
    12470 LOADK                            R22 K556 ["games/"]
    12471 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12473 FASTCALL1                        TOSTRING R26 ; [+2]
    12474 GETIMPORT                        R25 K4 [tostring]
    12476 CALL                             R25 1 1
    12477 MOVE                             R23 R25
    12478 LOADK                            R24 K44 [""]
    12479 CONCAT                           R19 R20 R24
    12480 SETTABLEKS                       R19 R18 K273 ["viewOnRobloxLink"]
    12482 RETURN                           R18 1
    12483 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12485 JUMPIFNOTEQKN                    R18 K678 [121] ; [+63]
    12487 DUPTABLE                         R18 K680 [{["id"], ["eventType"] = "CompletedQuestionnaire", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12488 GETTABLEKS                       R19 R2 K19 ["id"]
    12490 SETTABLEKS                       R19 R18 K19 ["id"]
    12492 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12494 GETIMPORT                        R21 K35 [pcall]
    12496 NEWCLOSURE                       R22 P6
    12497 CAPTURE                          VAL R20
    12498 CAPTURE                          VAL R3
    12499 CALL                             R21 1 2
    12500 JUMPIFNOT                        R21 ; [+2]
    12501 MOVE                             R19 R22
    12502 JUMP                             ; [+1]
    12503 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12504 SETTABLEKS                       R19 R18 K23 ["date"]
    12506 MOVE                             R19 R12
    12507 LOADK                            R20 K681 ["Description.CompletedQuestionnaireMaturity"]
    12508 CALL                             R19 1 1
    12509 SETTABLEKS                       R19 R18 K24 ["translation"]
    12511 GETTABLEKS                       R19 R2 K14 ["userId"]
    12513 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12515 MOVE                             R19 R0
    12516 GETTABLEKS                       R20 R2 K14 ["userId"]
    12518 CALL                             R19 1 1
    12519 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12521 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12523 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12525 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12527 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12529 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12531 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12533 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12535 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12537 LOADK                            R20 K44 [""]
    12538 FASTCALL1                        TOSTRING R4 ; [+3]
    12539 MOVE                             R24 R4
    12540 GETIMPORT                        R23 K4 [tostring]
    12542 CALL                             R23 1 1
    12543 MOVE                             R21 R23
    12544 LOADK                            R22 K682 ["/experience-questionnaire"]
    12545 CONCAT                           R19 R20 R22
    12546 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12548 RETURN                           R18 1
    12549 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12551 JUMPIFNOTEQKN                    R18 K683 [122] ; [+105]
    12553 DUPTABLE                         R18 K685 [{["id"], ["eventType"] = "MonetizationSettingsPrivateServerRequiresRobux", ["eventCategory"] = "Monetization", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12554 GETTABLEKS                       R19 R2 K19 ["id"]
    12556 SETTABLEKS                       R19 R18 K19 ["id"]
    12558 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12560 GETIMPORT                        R21 K35 [pcall]
    12562 NEWCLOSURE                       R22 P6
    12563 CAPTURE                          VAL R20
    12564 CAPTURE                          VAL R3
    12565 CALL                             R21 1 2
    12566 JUMPIFNOT                        R21 ; [+2]
    12567 MOVE                             R19 R22
    12568 JUMP                             ; [+1]
    12569 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12570 SETTABLEKS                       R19 R18 K23 ["date"]
    12572 MOVE                             R19 R12
    12573 LOADK                            R20 K686 ["Description.MonetizationSettingsPrivateServerRequiresRobux"]
    12574 DUPTABLE                         R21 K157 [{"action"}]
    12575 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12577 JUMPIFNOT                        R26 ; [+5]
    12578 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12580 GETTABLEKS                       R25 R26 K43 ["Action"]
    12582 JUMPIF                           R25 ; [+1]
    12583 LOADK                            R25 K44 [""]
    12584 GETIMPORT                        R26 K47 [string.lower]
    12586 FASTCALL1                        TOSTRING R25 ; [+3]
    12587 MOVE                             R28 R25
    12588 GETIMPORT                        R27 K4 [tostring]
    12590 CALL                             R27 1 1
    12591 CALL                             R26 1 1
    12592 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    12594 LOADB                            R24 1
    12595 JUMP                             ; [+1]
    12596 LOADB                            R24 0
    12597 JUMPIFNOT                        R24 ; [+4]
    12598 MOVE                             R23 R12
    12599 LOADK                            R24 K158 ["Description.ActionEnabled"]
    12600 CALL                             R23 1 1
    12601 JUMPIF                           R23 ; [+3]
    12602 MOVE                             R23 R12
    12603 LOADK                            R24 K159 ["Description.ActionDisabled"]
    12604 CALL                             R23 1 1
    12605 LOADK                            R24 K44 [""]
    12606 FASTCALL1                        TOSTRING R23 ; [+3]
    12607 MOVE                             R28 R23
    12608 GETIMPORT                        R27 K4 [tostring]
    12610 CALL                             R27 1 1
    12611 MOVE                             R25 R27
    12612 LOADK                            R26 K44 [""]
    12613 CONCAT                           R22 R24 R26
    12614 SETTABLEKS                       R22 R21 K156 ["action"]
    12616 CALL                             R19 2 1
    12617 SETTABLEKS                       R19 R18 K24 ["translation"]
    12619 GETTABLEKS                       R19 R2 K14 ["userId"]
    12621 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12623 MOVE                             R19 R0
    12624 GETTABLEKS                       R20 R2 K14 ["userId"]
    12626 CALL                             R19 1 1
    12627 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12629 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12631 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12633 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12635 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12637 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12639 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12641 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12643 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12645 LOADK                            R20 K44 [""]
    12646 FASTCALL1                        TOSTRING R4 ; [+3]
    12647 MOVE                             R24 R4
    12648 GETIMPORT                        R23 K4 [tostring]
    12650 CALL                             R23 1 1
    12651 MOVE                             R21 R23
    12652 LOADK                            R22 K415 ["/access"]
    12653 CONCAT                           R19 R20 R22
    12654 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12656 RETURN                           R18 1
    12657 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12659 JUMPIFNOTEQKN                    R18 K687 [123] ; [+105]
    12661 DUPTABLE                         R18 K689 [{["id"], ["eventType"] = "SecuritySettingsEditableMeshAndTextureAPIAccess", ["eventCategory"] = "Experience", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"]}]
    12662 GETTABLEKS                       R19 R2 K19 ["id"]
    12664 SETTABLEKS                       R19 R18 K19 ["id"]
    12666 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12668 GETIMPORT                        R21 K35 [pcall]
    12670 NEWCLOSURE                       R22 P6
    12671 CAPTURE                          VAL R20
    12672 CAPTURE                          VAL R3
    12673 CALL                             R21 1 2
    12674 JUMPIFNOT                        R21 ; [+2]
    12675 MOVE                             R19 R22
    12676 JUMP                             ; [+1]
    12677 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12678 SETTABLEKS                       R19 R18 K23 ["date"]
    12680 MOVE                             R19 R12
    12681 LOADK                            R20 K690 ["Description.SecuritySettingsEditableMeshAndTextureAPIAccess"]
    12682 DUPTABLE                         R21 K157 [{"action"}]
    12683 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12685 JUMPIFNOT                        R26 ; [+5]
    12686 GETTABLEKS                       R26 R2 K42 ["metaData"]
    12688 GETTABLEKS                       R25 R26 K43 ["Action"]
    12690 JUMPIF                           R25 ; [+1]
    12691 LOADK                            R25 K44 [""]
    12692 GETIMPORT                        R26 K47 [string.lower]
    12694 FASTCALL1                        TOSTRING R25 ; [+3]
    12695 MOVE                             R28 R25
    12696 GETIMPORT                        R27 K4 [tostring]
    12698 CALL                             R27 1 1
    12699 CALL                             R26 1 1
    12700 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    12702 LOADB                            R24 1
    12703 JUMP                             ; [+1]
    12704 LOADB                            R24 0
    12705 JUMPIFNOT                        R24 ; [+4]
    12706 MOVE                             R23 R12
    12707 LOADK                            R24 K158 ["Description.ActionEnabled"]
    12708 CALL                             R23 1 1
    12709 JUMPIF                           R23 ; [+3]
    12710 MOVE                             R23 R12
    12711 LOADK                            R24 K159 ["Description.ActionDisabled"]
    12712 CALL                             R23 1 1
    12713 LOADK                            R24 K44 [""]
    12714 FASTCALL1                        TOSTRING R23 ; [+3]
    12715 MOVE                             R28 R23
    12716 GETIMPORT                        R27 K4 [tostring]
    12718 CALL                             R27 1 1
    12719 MOVE                             R25 R27
    12720 LOADK                            R26 K44 [""]
    12721 CONCAT                           R22 R24 R26
    12722 SETTABLEKS                       R22 R21 K156 ["action"]
    12724 CALL                             R19 2 1
    12725 SETTABLEKS                       R19 R18 K24 ["translation"]
    12727 GETTABLEKS                       R19 R2 K14 ["userId"]
    12729 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12731 MOVE                             R19 R0
    12732 GETTABLEKS                       R20 R2 K14 ["userId"]
    12734 CALL                             R19 1 1
    12735 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12737 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12739 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12741 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12743 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12745 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12747 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12749 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12751 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12753 LOADK                            R20 K44 [""]
    12754 FASTCALL1                        TOSTRING R4 ; [+3]
    12755 MOVE                             R24 R4
    12756 GETIMPORT                        R23 K4 [tostring]
    12758 CALL                             R23 1 1
    12759 MOVE                             R21 R23
    12760 LOADK                            R22 K11 ["/configure"]
    12761 CONCAT                           R19 R20 R22
    12762 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12764 RETURN                           R18 1
    12765 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12767 JUMPIFNOTEQKN                    R18 K691 [124] ; [+153]
    12769 DUPTABLE                         R18 K695 [{["id"], ["eventType"] = "PackagePublish", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"]}]
    12770 GETTABLEKS                       R19 R2 K19 ["id"]
    12772 SETTABLEKS                       R19 R18 K19 ["id"]
    12774 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12776 GETIMPORT                        R21 K35 [pcall]
    12778 NEWCLOSURE                       R22 P6
    12779 CAPTURE                          VAL R20
    12780 CAPTURE                          VAL R3
    12781 CALL                             R21 1 2
    12782 JUMPIFNOT                        R21 ; [+2]
    12783 MOVE                             R19 R22
    12784 JUMP                             ; [+1]
    12785 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12786 SETTABLEKS                       R19 R18 K23 ["date"]
    12788 MOVE                             R19 R12
    12789 LOADK                            R20 K696 ["Description.PackagePublish"]
    12790 DUPTABLE                         R21 K701 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    12791 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12793 JUMPIFNOT                        R25 ; [+5]
    12794 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12796 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    12798 JUMPIF                           R24 ; [+1]
    12799 LOADK                            R24 K44 [""]
    12800 LOADK                            R25 K44 [""]
    12801 FASTCALL1                        TOSTRING R24 ; [+3]
    12802 MOVE                             R29 R24
    12803 GETIMPORT                        R28 K4 [tostring]
    12805 CALL                             R28 1 1
    12806 MOVE                             R26 R28
    12807 LOADK                            R27 K44 [""]
    12808 CONCAT                           R23 R25 R27
    12809 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    12811 GETGLOBAL                        R25 K703 ["getLink"]
    12813 LOADK                            R26 K704 ["packageexplorer"]
    12814 MOVE                             R27 R24
    12815 CALL                             R25 2 1
    12816 JUMPIFNOTEQKNIL                  R25 ; [+3]
    12818 MOVE                             R22 R23
    12819 JUMP                             ; [+7]
    12820 LOADK                            R26 K705 ["["]
    12821 MOVE                             R27 R23
    12822 LOADK                            R28 K706 ["]"]
    12823 LOADK                            R29 K707 ["("]
    12824 MOVE                             R30 R25
    12825 LOADK                            R31 K708 [")"]
    12826 CONCAT                           R22 R26 R31
    12827 SETTABLEKS                       R22 R21 K697 ["packageName"]
    12829 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12831 JUMPIFNOT                        R24 ; [+5]
    12832 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12834 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    12836 JUMPIF                           R23 ; [+1]
    12837 LOADK                            R23 K44 [""]
    12838 MOVE                             R26 R23
    12839 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12841 CALL                             R24 2 1
    12842 MOVE                             R22 R24
    12843 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    12845 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12847 JUMPIFNOT                        R24 ; [+5]
    12848 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12850 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    12852 JUMPIF                           R23 ; [+1]
    12853 LOADK                            R23 K44 [""]
    12854 MOVE                             R26 R23
    12855 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12857 CALL                             R24 2 1
    12858 MOVE                             R22 R24
    12859 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    12861 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12863 JUMPIFNOT                        R24 ; [+5]
    12864 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12866 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    12868 JUMPIF                           R23 ; [+1]
    12869 LOADK                            R23 K44 [""]
    12870 MOVE                             R26 R23
    12871 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12873 CALL                             R24 2 1
    12874 MOVE                             R22 R24
    12875 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    12877 CALL                             R19 2 1
    12878 SETTABLEKS                       R19 R18 K24 ["translation"]
    12880 GETTABLEKS                       R19 R2 K14 ["userId"]
    12882 SETTABLEKS                       R19 R18 K25 ["actorId"]
    12884 MOVE                             R19 R0
    12885 GETTABLEKS                       R20 R2 K14 ["userId"]
    12887 CALL                             R19 1 1
    12888 SETTABLEKS                       R19 R18 K26 ["actorName"]
    12890 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    12892 ORK                              R19 R20 K18 [0]
    12893 SETTABLEKS                       R19 R18 K29 ["iconId"]
    12895 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12897 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12899 GETTABLEKS                       R19 R2 K30 ["headerText"]
    12901 SETTABLEKS                       R19 R18 K30 ["headerText"]
    12903 GETTABLEKS                       R19 R2 K31 ["footerText"]
    12905 SETTABLEKS                       R19 R18 K31 ["footerText"]
    12907 GETGLOBAL                        R19 K703 ["getLink"]
    12909 LOADK                            R20 K713 ["packageversion"]
    12910 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    12912 CALL                             R19 2 1
    12913 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    12915 MOVE                             R19 R12
    12916 LOADK                            R20 K714 ["Bubble.ViewPackageVersionHistory"]
    12917 CALL                             R19 1 1
    12918 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    12920 RETURN                           R18 1
    12921 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12923 JUMPIFNOTEQKN                    R18 K715 [125] ; [+163]
    12925 DUPTABLE                         R18 K719 [{["id"], ["eventType"] = "PackageManualUpdate", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    12926 GETTABLEKS                       R19 R2 K19 ["id"]
    12928 SETTABLEKS                       R19 R18 K19 ["id"]
    12930 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    12932 GETIMPORT                        R21 K35 [pcall]
    12934 NEWCLOSURE                       R22 P6
    12935 CAPTURE                          VAL R20
    12936 CAPTURE                          VAL R3
    12937 CALL                             R21 1 2
    12938 JUMPIFNOT                        R21 ; [+2]
    12939 MOVE                             R19 R22
    12940 JUMP                             ; [+1]
    12941 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    12942 SETTABLEKS                       R19 R18 K23 ["date"]
    12944 MOVE                             R19 R12
    12945 LOADK                            R20 K720 ["Description.PackageManualUpdate"]
    12946 DUPTABLE                         R21 K701 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    12947 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12949 JUMPIFNOT                        R25 ; [+5]
    12950 GETTABLEKS                       R25 R2 K42 ["metaData"]
    12952 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    12954 JUMPIF                           R24 ; [+1]
    12955 LOADK                            R24 K44 [""]
    12956 LOADK                            R25 K44 [""]
    12957 FASTCALL1                        TOSTRING R24 ; [+3]
    12958 MOVE                             R29 R24
    12959 GETIMPORT                        R28 K4 [tostring]
    12961 CALL                             R28 1 1
    12962 MOVE                             R26 R28
    12963 LOADK                            R27 K44 [""]
    12964 CONCAT                           R23 R25 R27
    12965 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    12967 GETGLOBAL                        R25 K703 ["getLink"]
    12969 LOADK                            R26 K704 ["packageexplorer"]
    12970 MOVE                             R27 R24
    12971 CALL                             R25 2 1
    12972 JUMPIFNOTEQKNIL                  R25 ; [+3]
    12974 MOVE                             R22 R23
    12975 JUMP                             ; [+7]
    12976 LOADK                            R26 K705 ["["]
    12977 MOVE                             R27 R23
    12978 LOADK                            R28 K706 ["]"]
    12979 LOADK                            R29 K707 ["("]
    12980 MOVE                             R30 R25
    12981 LOADK                            R31 K708 [")"]
    12982 CONCAT                           R22 R26 R31
    12983 SETTABLEKS                       R22 R21 K697 ["packageName"]
    12985 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12987 JUMPIFNOT                        R24 ; [+5]
    12988 GETTABLEKS                       R24 R2 K42 ["metaData"]
    12990 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    12992 JUMPIF                           R23 ; [+1]
    12993 LOADK                            R23 K44 [""]
    12994 MOVE                             R26 R23
    12995 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    12997 CALL                             R24 2 1
    12998 MOVE                             R22 R24
    12999 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    13001 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13003 JUMPIFNOT                        R24 ; [+5]
    13004 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13006 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    13008 JUMPIF                           R23 ; [+1]
    13009 LOADK                            R23 K44 [""]
    13010 MOVE                             R26 R23
    13011 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13013 CALL                             R24 2 1
    13014 MOVE                             R22 R24
    13015 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    13017 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13019 JUMPIFNOT                        R24 ; [+5]
    13020 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13022 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    13024 JUMPIF                           R23 ; [+1]
    13025 LOADK                            R23 K44 [""]
    13026 MOVE                             R26 R23
    13027 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13029 CALL                             R24 2 1
    13030 MOVE                             R22 R24
    13031 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    13033 CALL                             R19 2 1
    13034 SETTABLEKS                       R19 R18 K24 ["translation"]
    13036 GETTABLEKS                       R19 R2 K14 ["userId"]
    13038 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13040 MOVE                             R19 R0
    13041 GETTABLEKS                       R20 R2 K14 ["userId"]
    13043 CALL                             R19 1 1
    13044 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13046 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13048 ORK                              R19 R20 K18 [0]
    13049 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13051 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13053 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13055 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13057 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13059 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13061 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13063 GETGLOBAL                        R19 K703 ["getLink"]
    13065 LOADK                            R20 K704 ["packageexplorer"]
    13066 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    13068 CALL                             R19 2 1
    13069 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    13071 MOVE                             R19 R12
    13072 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    13073 CALL                             R19 1 1
    13074 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    13076 MOVE                             R19 R12
    13077 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    13078 CALL                             R19 1 1
    13079 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    13081 MOVE                             R19 R12
    13082 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    13083 CALL                             R19 1 1
    13084 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    13086 RETURN                           R18 1
    13087 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13089 JUMPIFNOTEQKN                    R18 K724 [126] ; [+179]
    13091 DUPTABLE                         R18 K726 [{["id"], ["eventType"] = "PackageAutoUpdate", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    13092 GETTABLEKS                       R19 R2 K19 ["id"]
    13094 SETTABLEKS                       R19 R18 K19 ["id"]
    13096 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13098 GETIMPORT                        R21 K35 [pcall]
    13100 NEWCLOSURE                       R22 P6
    13101 CAPTURE                          VAL R20
    13102 CAPTURE                          VAL R3
    13103 CALL                             R21 1 2
    13104 JUMPIFNOT                        R21 ; [+2]
    13105 MOVE                             R19 R22
    13106 JUMP                             ; [+1]
    13107 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13108 SETTABLEKS                       R19 R18 K23 ["date"]
    13110 MOVE                             R19 R12
    13111 LOADK                            R20 K727 ["Description.PackageAutoUpdate"]
    13112 DUPTABLE                         R21 K729 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "failedPackages"}]
    13113 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13115 JUMPIFNOT                        R25 ; [+5]
    13116 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13118 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    13120 JUMPIF                           R24 ; [+1]
    13121 LOADK                            R24 K44 [""]
    13122 LOADK                            R25 K44 [""]
    13123 FASTCALL1                        TOSTRING R24 ; [+3]
    13124 MOVE                             R29 R24
    13125 GETIMPORT                        R28 K4 [tostring]
    13127 CALL                             R28 1 1
    13128 MOVE                             R26 R28
    13129 LOADK                            R27 K44 [""]
    13130 CONCAT                           R23 R25 R27
    13131 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13133 GETGLOBAL                        R25 K703 ["getLink"]
    13135 LOADK                            R26 K704 ["packageexplorer"]
    13136 MOVE                             R27 R24
    13137 CALL                             R25 2 1
    13138 JUMPIFNOTEQKNIL                  R25 ; [+3]
    13140 MOVE                             R22 R23
    13141 JUMP                             ; [+7]
    13142 LOADK                            R26 K705 ["["]
    13143 MOVE                             R27 R23
    13144 LOADK                            R28 K706 ["]"]
    13145 LOADK                            R29 K707 ["("]
    13146 MOVE                             R30 R25
    13147 LOADK                            R31 K708 [")"]
    13148 CONCAT                           R22 R26 R31
    13149 SETTABLEKS                       R22 R21 K697 ["packageName"]
    13151 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13153 JUMPIFNOT                        R24 ; [+5]
    13154 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13156 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    13158 JUMPIF                           R23 ; [+1]
    13159 LOADK                            R23 K44 [""]
    13160 MOVE                             R26 R23
    13161 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13163 CALL                             R24 2 1
    13164 MOVE                             R22 R24
    13165 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    13167 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13169 JUMPIFNOT                        R24 ; [+5]
    13170 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13172 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    13174 JUMPIF                           R23 ; [+1]
    13175 LOADK                            R23 K44 [""]
    13176 MOVE                             R26 R23
    13177 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13179 CALL                             R24 2 1
    13180 MOVE                             R22 R24
    13181 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    13183 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13185 JUMPIFNOT                        R24 ; [+5]
    13186 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13188 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    13190 JUMPIF                           R23 ; [+1]
    13191 LOADK                            R23 K44 [""]
    13192 MOVE                             R26 R23
    13193 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13195 CALL                             R24 2 1
    13196 MOVE                             R22 R24
    13197 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    13199 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13201 JUMPIFNOT                        R24 ; [+5]
    13202 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13204 GETTABLEKS                       R23 R24 K730 ["FailedPackages"]
    13206 JUMPIF                           R23 ; [+1]
    13207 LOADK                            R23 K44 [""]
    13208 MOVE                             R26 R23
    13209 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13211 CALL                             R24 2 1
    13212 MOVE                             R22 R24
    13213 SETTABLEKS                       R22 R21 K728 ["failedPackages"]
    13215 CALL                             R19 2 1
    13216 SETTABLEKS                       R19 R18 K24 ["translation"]
    13218 GETTABLEKS                       R19 R2 K14 ["userId"]
    13220 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13222 MOVE                             R19 R0
    13223 GETTABLEKS                       R20 R2 K14 ["userId"]
    13225 CALL                             R19 1 1
    13226 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13228 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13230 ORK                              R19 R20 K18 [0]
    13231 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13233 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13235 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13237 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13239 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13241 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13243 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13245 GETGLOBAL                        R19 K703 ["getLink"]
    13247 LOADK                            R20 K704 ["packageexplorer"]
    13248 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    13250 CALL                             R19 2 1
    13251 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    13253 MOVE                             R19 R12
    13254 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    13255 CALL                             R19 1 1
    13256 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    13258 MOVE                             R19 R12
    13259 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    13260 CALL                             R19 1 1
    13261 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    13263 MOVE                             R19 R12
    13264 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    13265 CALL                             R19 1 1
    13266 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    13268 RETURN                           R18 1
    13269 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13271 JUMPIFNOTEQKN                    R18 K731 [127] ; [+204]
    13273 DUPTABLE                         R18 K733 [{["id"], ["eventType"] = "PackageAutoUpdateToggle", ["eventCategory"] = "Package", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Package", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["viewBasicSettingsLink"], ["viewBasicSettingsLinkText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    13274 GETTABLEKS                       R19 R2 K19 ["id"]
    13276 SETTABLEKS                       R19 R18 K19 ["id"]
    13278 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13280 GETIMPORT                        R21 K35 [pcall]
    13282 NEWCLOSURE                       R22 P6
    13283 CAPTURE                          VAL R20
    13284 CAPTURE                          VAL R3
    13285 CALL                             R21 1 2
    13286 JUMPIFNOT                        R21 ; [+2]
    13287 MOVE                             R19 R22
    13288 JUMP                             ; [+1]
    13289 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13290 SETTABLEKS                       R19 R18 K23 ["date"]
    13292 MOVE                             R19 R12
    13293 LOADK                            R20 K734 ["Description.PackageAutoUpdateToggle"]
    13294 DUPTABLE                         R21 K735 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "action"}]
    13295 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13297 JUMPIFNOT                        R25 ; [+5]
    13298 GETTABLEKS                       R25 R2 K42 ["metaData"]
    13300 GETTABLEKS                       R24 R25 K702 ["PackageName"]
    13302 JUMPIF                           R24 ; [+1]
    13303 LOADK                            R24 K44 [""]
    13304 LOADK                            R25 K44 [""]
    13305 FASTCALL1                        TOSTRING R24 ; [+3]
    13306 MOVE                             R29 R24
    13307 GETIMPORT                        R28 K4 [tostring]
    13309 CALL                             R28 1 1
    13310 MOVE                             R26 R28
    13311 LOADK                            R27 K44 [""]
    13312 CONCAT                           R23 R25 R27
    13313 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13315 GETGLOBAL                        R25 K703 ["getLink"]
    13317 LOADK                            R26 K704 ["packageexplorer"]
    13318 MOVE                             R27 R24
    13319 CALL                             R25 2 1
    13320 JUMPIFNOTEQKNIL                  R25 ; [+3]
    13322 MOVE                             R22 R23
    13323 JUMP                             ; [+7]
    13324 LOADK                            R26 K705 ["["]
    13325 MOVE                             R27 R23
    13326 LOADK                            R28 K706 ["]"]
    13327 LOADK                            R29 K707 ["("]
    13328 MOVE                             R30 R25
    13329 LOADK                            R31 K708 [")"]
    13330 CONCAT                           R22 R26 R31
    13331 SETTABLEKS                       R22 R21 K697 ["packageName"]
    13333 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13335 JUMPIFNOT                        R24 ; [+5]
    13336 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13338 GETTABLEKS                       R23 R24 K709 ["VersionNumber"]
    13340 JUMPIF                           R23 ; [+1]
    13341 LOADK                            R23 K44 [""]
    13342 MOVE                             R26 R23
    13343 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13345 CALL                             R24 2 1
    13346 MOVE                             R22 R24
    13347 SETTABLEKS                       R22 R21 K698 ["versionNumber"]
    13349 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13351 JUMPIFNOT                        R24 ; [+5]
    13352 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13354 GETTABLEKS                       R23 R24 K711 ["NumberOfPackages"]
    13356 JUMPIF                           R23 ; [+1]
    13357 LOADK                            R23 K44 [""]
    13358 MOVE                             R26 R23
    13359 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13361 CALL                             R24 2 1
    13362 MOVE                             R22 R24
    13363 SETTABLEKS                       R22 R21 K699 ["numberOfPackages"]
    13365 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13367 JUMPIFNOT                        R24 ; [+5]
    13368 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13370 GETTABLEKS                       R23 R24 K712 ["TotalPackages"]
    13372 JUMPIF                           R23 ; [+1]
    13373 LOADK                            R23 K44 [""]
    13374 MOVE                             R26 R23
    13375 NAMECALL                         R24 R1 K710 ["localizeNumber"]
    13377 CALL                             R24 2 1
    13378 MOVE                             R22 R24
    13379 SETTABLEKS                       R22 R21 K700 ["totalPackages"]
    13381 GETTABLEKS                       R26 R2 K42 ["metaData"]
    13383 JUMPIFNOT                        R26 ; [+5]
    13384 GETTABLEKS                       R26 R2 K42 ["metaData"]
    13386 GETTABLEKS                       R25 R26 K736 ["AutoUpdate"]
    13388 JUMPIF                           R25 ; [+1]
    13389 LOADK                            R25 K44 [""]
    13390 GETIMPORT                        R26 K47 [string.lower]
    13392 FASTCALL1                        TOSTRING R25 ; [+3]
    13393 MOVE                             R28 R25
    13394 GETIMPORT                        R27 K4 [tostring]
    13396 CALL                             R27 1 1
    13397 CALL                             R26 1 1
    13398 JUMPIFNOTEQKS                    R26 K48 ["true"] ; [+3]
    13400 LOADB                            R24 1
    13401 JUMP                             ; [+1]
    13402 LOADB                            R24 0
    13403 JUMPIFNOT                        R24 ; [+4]
    13404 MOVE                             R23 R12
    13405 LOADK                            R24 K158 ["Description.ActionEnabled"]
    13406 CALL                             R23 1 1
    13407 JUMPIF                           R23 ; [+3]
    13408 MOVE                             R23 R12
    13409 LOADK                            R24 K159 ["Description.ActionDisabled"]
    13410 CALL                             R23 1 1
    13411 LOADK                            R24 K44 [""]
    13412 FASTCALL1                        TOSTRING R23 ; [+3]
    13413 MOVE                             R28 R23
    13414 GETIMPORT                        R27 K4 [tostring]
    13416 CALL                             R27 1 1
    13417 MOVE                             R25 R27
    13418 LOADK                            R26 K44 [""]
    13419 CONCAT                           R22 R24 R26
    13420 SETTABLEKS                       R22 R21 K156 ["action"]
    13422 CALL                             R19 2 1
    13423 SETTABLEKS                       R19 R18 K24 ["translation"]
    13425 GETTABLEKS                       R19 R2 K14 ["userId"]
    13427 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13429 MOVE                             R19 R0
    13430 GETTABLEKS                       R20 R2 K14 ["userId"]
    13432 CALL                             R19 1 1
    13433 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13435 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13437 ORK                              R19 R20 K18 [0]
    13438 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13440 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13442 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13444 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13446 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13448 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13450 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13452 GETGLOBAL                        R19 K703 ["getLink"]
    13454 LOADK                            R20 K704 ["packageexplorer"]
    13455 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    13457 CALL                             R19 2 1
    13458 SETTABLEKS                       R19 R18 K53 ["viewBasicSettingsLink"]
    13460 MOVE                             R19 R12
    13461 LOADK                            R20 K721 ["Bubble.ViewInExplorer"]
    13462 CALL                             R19 1 1
    13463 SETTABLEKS                       R19 R18 K694 ["viewBasicSettingsLinkText"]
    13465 MOVE                             R19 R12
    13466 LOADK                            R20 K722 ["LinkError.MissingPackageHeader"]
    13467 CALL                             R19 1 1
    13468 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    13470 MOVE                             R19 R12
    13471 LOADK                            R20 K723 ["LinkError.MissingPackageBody"]
    13472 CALL                             R19 1 1
    13473 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    13475 RETURN                           R18 1
    13476 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13478 JUMPIFNOTEQKN                    R18 K737 [128] ; [+74]
    13480 DUPTABLE                         R18 K739 [{["id"], ["eventType"] = "RoleCreated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13481 GETTABLEKS                       R19 R2 K19 ["id"]
    13483 SETTABLEKS                       R19 R18 K19 ["id"]
    13485 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13487 GETIMPORT                        R21 K35 [pcall]
    13489 NEWCLOSURE                       R22 P6
    13490 CAPTURE                          VAL R20
    13491 CAPTURE                          VAL R3
    13492 CALL                             R21 1 2
    13493 JUMPIFNOT                        R21 ; [+2]
    13494 MOVE                             R19 R22
    13495 JUMP                             ; [+1]
    13496 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13497 SETTABLEKS                       R19 R18 K23 ["date"]
    13499 MOVE                             R19 R12
    13500 LOADK                            R20 K740 ["Description.RoleCreated"]
    13501 DUPTABLE                         R21 K742 [{"roleName"}]
    13502 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13504 JUMPIFNOT                        R24 ; [+5]
    13505 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13507 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13509 JUMPIF                           R23 ; [+1]
    13510 LOADK                            R23 K44 [""]
    13511 LOADK                            R24 K44 [""]
    13512 FASTCALL1                        TOSTRING R23 ; [+3]
    13513 MOVE                             R28 R23
    13514 GETIMPORT                        R27 K4 [tostring]
    13516 CALL                             R27 1 1
    13517 MOVE                             R25 R27
    13518 LOADK                            R26 K44 [""]
    13519 CONCAT                           R22 R24 R26
    13520 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13522 CALL                             R19 2 1
    13523 SETTABLEKS                       R19 R18 K24 ["translation"]
    13525 GETTABLEKS                       R19 R2 K14 ["userId"]
    13527 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13529 MOVE                             R19 R0
    13530 GETTABLEKS                       R20 R2 K14 ["userId"]
    13532 CALL                             R19 1 1
    13533 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13535 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13537 ORK                              R19 R20 K18 [0]
    13538 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13540 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13542 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13544 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13546 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13548 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13550 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13552 RETURN                           R18 1
    13553 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13555 JUMPIFNOTEQKN                    R18 K744 [129] ; [+74]
    13557 DUPTABLE                         R18 K746 [{["id"], ["eventType"] = "RoleDeleted", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13558 GETTABLEKS                       R19 R2 K19 ["id"]
    13560 SETTABLEKS                       R19 R18 K19 ["id"]
    13562 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13564 GETIMPORT                        R21 K35 [pcall]
    13566 NEWCLOSURE                       R22 P6
    13567 CAPTURE                          VAL R20
    13568 CAPTURE                          VAL R3
    13569 CALL                             R21 1 2
    13570 JUMPIFNOT                        R21 ; [+2]
    13571 MOVE                             R19 R22
    13572 JUMP                             ; [+1]
    13573 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13574 SETTABLEKS                       R19 R18 K23 ["date"]
    13576 MOVE                             R19 R12
    13577 LOADK                            R20 K747 ["Description.RoleDeleted"]
    13578 DUPTABLE                         R21 K742 [{"roleName"}]
    13579 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13581 JUMPIFNOT                        R24 ; [+5]
    13582 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13584 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13586 JUMPIF                           R23 ; [+1]
    13587 LOADK                            R23 K44 [""]
    13588 LOADK                            R24 K44 [""]
    13589 FASTCALL1                        TOSTRING R23 ; [+3]
    13590 MOVE                             R28 R23
    13591 GETIMPORT                        R27 K4 [tostring]
    13593 CALL                             R27 1 1
    13594 MOVE                             R25 R27
    13595 LOADK                            R26 K44 [""]
    13596 CONCAT                           R22 R24 R26
    13597 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13599 CALL                             R19 2 1
    13600 SETTABLEKS                       R19 R18 K24 ["translation"]
    13602 GETTABLEKS                       R19 R2 K14 ["userId"]
    13604 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13606 MOVE                             R19 R0
    13607 GETTABLEKS                       R20 R2 K14 ["userId"]
    13609 CALL                             R19 1 1
    13610 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13612 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13614 ORK                              R19 R20 K18 [0]
    13615 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13617 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13619 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13621 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13623 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13625 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13627 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13629 RETURN                           R18 1
    13630 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13632 JUMPIFNOTEQKN                    R18 K748 [130] ; [+74]
    13634 DUPTABLE                         R18 K750 [{["id"], ["eventType"] = "RolePermissionsUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13635 GETTABLEKS                       R19 R2 K19 ["id"]
    13637 SETTABLEKS                       R19 R18 K19 ["id"]
    13639 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13641 GETIMPORT                        R21 K35 [pcall]
    13643 NEWCLOSURE                       R22 P6
    13644 CAPTURE                          VAL R20
    13645 CAPTURE                          VAL R3
    13646 CALL                             R21 1 2
    13647 JUMPIFNOT                        R21 ; [+2]
    13648 MOVE                             R19 R22
    13649 JUMP                             ; [+1]
    13650 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13651 SETTABLEKS                       R19 R18 K23 ["date"]
    13653 MOVE                             R19 R12
    13654 LOADK                            R20 K751 ["Description.RolePermissionsUpdated"]
    13655 DUPTABLE                         R21 K742 [{"roleName"}]
    13656 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13658 JUMPIFNOT                        R24 ; [+5]
    13659 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13661 GETTABLEKS                       R23 R24 K743 ["RoleName"]
    13663 JUMPIF                           R23 ; [+1]
    13664 LOADK                            R23 K44 [""]
    13665 LOADK                            R24 K44 [""]
    13666 FASTCALL1                        TOSTRING R23 ; [+3]
    13667 MOVE                             R28 R23
    13668 GETIMPORT                        R27 K4 [tostring]
    13670 CALL                             R27 1 1
    13671 MOVE                             R25 R27
    13672 LOADK                            R26 K44 [""]
    13673 CONCAT                           R22 R24 R26
    13674 SETTABLEKS                       R22 R21 K741 ["roleName"]
    13676 CALL                             R19 2 1
    13677 SETTABLEKS                       R19 R18 K24 ["translation"]
    13679 GETTABLEKS                       R19 R2 K14 ["userId"]
    13681 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13683 MOVE                             R19 R0
    13684 GETTABLEKS                       R20 R2 K14 ["userId"]
    13686 CALL                             R19 1 1
    13687 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13689 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13691 ORK                              R19 R20 K18 [0]
    13692 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13694 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13696 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13698 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13700 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13702 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13704 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13706 RETURN                           R18 1
    13707 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13709 JUMPIFNOTEQKN                    R18 K752 [131] ; [+94]
    13711 DUPTABLE                         R18 K754 [{["id"], ["eventType"] = "RoleNameUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13712 GETTABLEKS                       R19 R2 K19 ["id"]
    13714 SETTABLEKS                       R19 R18 K19 ["id"]
    13716 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13718 GETIMPORT                        R21 K35 [pcall]
    13720 NEWCLOSURE                       R22 P6
    13721 CAPTURE                          VAL R20
    13722 CAPTURE                          VAL R3
    13723 CALL                             R21 1 2
    13724 JUMPIFNOT                        R21 ; [+2]
    13725 MOVE                             R19 R22
    13726 JUMP                             ; [+1]
    13727 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13728 SETTABLEKS                       R19 R18 K23 ["date"]
    13730 MOVE                             R19 R12
    13731 LOADK                            R20 K755 ["Description.RoleNameUpdated"]
    13732 DUPTABLE                         R21 K758 [{"oldRoleName", "newRoleName"}]
    13733 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13735 JUMPIFNOT                        R24 ; [+5]
    13736 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13738 GETTABLEKS                       R23 R24 K759 ["OldRoleName"]
    13740 JUMPIF                           R23 ; [+1]
    13741 LOADK                            R23 K44 [""]
    13742 LOADK                            R24 K44 [""]
    13743 FASTCALL1                        TOSTRING R23 ; [+3]
    13744 MOVE                             R28 R23
    13745 GETIMPORT                        R27 K4 [tostring]
    13747 CALL                             R27 1 1
    13748 MOVE                             R25 R27
    13749 LOADK                            R26 K44 [""]
    13750 CONCAT                           R22 R24 R26
    13751 SETTABLEKS                       R22 R21 K756 ["oldRoleName"]
    13753 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13755 JUMPIFNOT                        R24 ; [+5]
    13756 GETTABLEKS                       R24 R2 K42 ["metaData"]
    13758 GETTABLEKS                       R23 R24 K760 ["NewRoleName"]
    13760 JUMPIF                           R23 ; [+1]
    13761 LOADK                            R23 K44 [""]
    13762 LOADK                            R24 K44 [""]
    13763 FASTCALL1                        TOSTRING R23 ; [+3]
    13764 MOVE                             R28 R23
    13765 GETIMPORT                        R27 K4 [tostring]
    13767 CALL                             R27 1 1
    13768 MOVE                             R25 R27
    13769 LOADK                            R26 K44 [""]
    13770 CONCAT                           R22 R24 R26
    13771 SETTABLEKS                       R22 R21 K757 ["newRoleName"]
    13773 CALL                             R19 2 1
    13774 SETTABLEKS                       R19 R18 K24 ["translation"]
    13776 GETTABLEKS                       R19 R2 K14 ["userId"]
    13778 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13780 MOVE                             R19 R0
    13781 GETTABLEKS                       R20 R2 K14 ["userId"]
    13783 CALL                             R19 1 1
    13784 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13786 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13788 ORK                              R19 R20 K18 [0]
    13789 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13791 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13793 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13795 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13797 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13799 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13801 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13803 RETURN                           R18 1
    13804 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13806 JUMPIFNOTEQKN                    R18 K761 [132] ; [+69]
    13808 DUPTABLE                         R18 K763 [{["id"], ["eventType"] = "MemberRemoved", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13809 GETTABLEKS                       R19 R2 K19 ["id"]
    13811 SETTABLEKS                       R19 R18 K19 ["id"]
    13813 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13815 GETIMPORT                        R21 K35 [pcall]
    13817 NEWCLOSURE                       R22 P6
    13818 CAPTURE                          VAL R20
    13819 CAPTURE                          VAL R3
    13820 CALL                             R21 1 2
    13821 JUMPIFNOT                        R21 ; [+2]
    13822 MOVE                             R19 R22
    13823 JUMP                             ; [+1]
    13824 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13825 SETTABLEKS                       R19 R18 K23 ["date"]
    13827 MOVE                             R19 R12
    13828 LOADK                            R20 K764 ["Description.MemberRemoved"]
    13829 DUPTABLE                         R21 K396 [{"userName"}]
    13830 MOVE                             R23 R0
    13831 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13833 CALL                             R23 1 1
    13834 LOADK                            R24 K44 [""]
    13835 FASTCALL1                        TOSTRING R23 ; [+3]
    13836 MOVE                             R28 R23
    13837 GETIMPORT                        R27 K4 [tostring]
    13839 CALL                             R27 1 1
    13840 MOVE                             R25 R27
    13841 LOADK                            R26 K44 [""]
    13842 CONCAT                           R22 R24 R26
    13843 SETTABLEKS                       R22 R21 K395 ["userName"]
    13845 CALL                             R19 2 1
    13846 SETTABLEKS                       R19 R18 K24 ["translation"]
    13848 GETTABLEKS                       R19 R2 K14 ["userId"]
    13850 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13852 MOVE                             R19 R0
    13853 GETTABLEKS                       R20 R2 K14 ["userId"]
    13855 CALL                             R19 1 1
    13856 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13858 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13860 ORK                              R19 R20 K18 [0]
    13861 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13863 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13865 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13867 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13869 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13871 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13873 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13875 RETURN                           R18 1
    13876 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13878 JUMPIFNOTEQKN                    R18 K765 [133] ; [+69]
    13880 DUPTABLE                         R18 K767 [{["id"], ["eventType"] = "MemberInvited", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13881 GETTABLEKS                       R19 R2 K19 ["id"]
    13883 SETTABLEKS                       R19 R18 K19 ["id"]
    13885 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13887 GETIMPORT                        R21 K35 [pcall]
    13889 NEWCLOSURE                       R22 P6
    13890 CAPTURE                          VAL R20
    13891 CAPTURE                          VAL R3
    13892 CALL                             R21 1 2
    13893 JUMPIFNOT                        R21 ; [+2]
    13894 MOVE                             R19 R22
    13895 JUMP                             ; [+1]
    13896 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13897 SETTABLEKS                       R19 R18 K23 ["date"]
    13899 MOVE                             R19 R12
    13900 LOADK                            R20 K768 ["Description.MemberInvited"]
    13901 DUPTABLE                         R21 K396 [{"userName"}]
    13902 MOVE                             R23 R0
    13903 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13905 CALL                             R23 1 1
    13906 LOADK                            R24 K44 [""]
    13907 FASTCALL1                        TOSTRING R23 ; [+3]
    13908 MOVE                             R28 R23
    13909 GETIMPORT                        R27 K4 [tostring]
    13911 CALL                             R27 1 1
    13912 MOVE                             R25 R27
    13913 LOADK                            R26 K44 [""]
    13914 CONCAT                           R22 R24 R26
    13915 SETTABLEKS                       R22 R21 K395 ["userName"]
    13917 CALL                             R19 2 1
    13918 SETTABLEKS                       R19 R18 K24 ["translation"]
    13920 GETTABLEKS                       R19 R2 K14 ["userId"]
    13922 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13924 MOVE                             R19 R0
    13925 GETTABLEKS                       R20 R2 K14 ["userId"]
    13927 CALL                             R19 1 1
    13928 SETTABLEKS                       R19 R18 K26 ["actorName"]
    13930 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    13932 ORK                              R19 R20 K18 [0]
    13933 SETTABLEKS                       R19 R18 K29 ["iconId"]
    13935 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13937 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13939 GETTABLEKS                       R19 R2 K30 ["headerText"]
    13941 SETTABLEKS                       R19 R18 K30 ["headerText"]
    13943 GETTABLEKS                       R19 R2 K31 ["footerText"]
    13945 SETTABLEKS                       R19 R18 K31 ["footerText"]
    13947 RETURN                           R18 1
    13948 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13950 JUMPIFNOTEQKN                    R18 K769 [134] ; [+69]
    13952 DUPTABLE                         R18 K771 [{["id"], ["eventType"] = "InviteRevoked", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    13953 GETTABLEKS                       R19 R2 K19 ["id"]
    13955 SETTABLEKS                       R19 R18 K19 ["id"]
    13957 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    13959 GETIMPORT                        R21 K35 [pcall]
    13961 NEWCLOSURE                       R22 P6
    13962 CAPTURE                          VAL R20
    13963 CAPTURE                          VAL R3
    13964 CALL                             R21 1 2
    13965 JUMPIFNOT                        R21 ; [+2]
    13966 MOVE                             R19 R22
    13967 JUMP                             ; [+1]
    13968 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    13969 SETTABLEKS                       R19 R18 K23 ["date"]
    13971 MOVE                             R19 R12
    13972 LOADK                            R20 K772 ["Description.InviteRevoked"]
    13973 DUPTABLE                         R21 K396 [{"userName"}]
    13974 MOVE                             R23 R0
    13975 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13977 CALL                             R23 1 1
    13978 LOADK                            R24 K44 [""]
    13979 FASTCALL1                        TOSTRING R23 ; [+3]
    13980 MOVE                             R28 R23
    13981 GETIMPORT                        R27 K4 [tostring]
    13983 CALL                             R27 1 1
    13984 MOVE                             R25 R27
    13985 LOADK                            R26 K44 [""]
    13986 CONCAT                           R22 R24 R26
    13987 SETTABLEKS                       R22 R21 K395 ["userName"]
    13989 CALL                             R19 2 1
    13990 SETTABLEKS                       R19 R18 K24 ["translation"]
    13992 GETTABLEKS                       R19 R2 K14 ["userId"]
    13994 SETTABLEKS                       R19 R18 K25 ["actorId"]
    13996 MOVE                             R19 R0
    13997 GETTABLEKS                       R20 R2 K14 ["userId"]
    13999 CALL                             R19 1 1
    14000 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14002 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14004 ORK                              R19 R20 K18 [0]
    14005 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14007 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14009 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14011 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14013 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14015 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14017 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14019 RETURN                           R18 1
    14020 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14022 JUMPIFNOTEQKN                    R18 K773 [135] ; [+69]
    14024 DUPTABLE                         R18 K775 [{["id"], ["eventType"] = "MemberJoined", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14025 GETTABLEKS                       R19 R2 K19 ["id"]
    14027 SETTABLEKS                       R19 R18 K19 ["id"]
    14029 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14031 GETIMPORT                        R21 K35 [pcall]
    14033 NEWCLOSURE                       R22 P6
    14034 CAPTURE                          VAL R20
    14035 CAPTURE                          VAL R3
    14036 CALL                             R21 1 2
    14037 JUMPIFNOT                        R21 ; [+2]
    14038 MOVE                             R19 R22
    14039 JUMP                             ; [+1]
    14040 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14041 SETTABLEKS                       R19 R18 K23 ["date"]
    14043 MOVE                             R19 R12
    14044 LOADK                            R20 K776 ["Description.MemberJoined"]
    14045 DUPTABLE                         R21 K396 [{"userName"}]
    14046 MOVE                             R23 R0
    14047 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14049 CALL                             R23 1 1
    14050 LOADK                            R24 K44 [""]
    14051 FASTCALL1                        TOSTRING R23 ; [+3]
    14052 MOVE                             R28 R23
    14053 GETIMPORT                        R27 K4 [tostring]
    14055 CALL                             R27 1 1
    14056 MOVE                             R25 R27
    14057 LOADK                            R26 K44 [""]
    14058 CONCAT                           R22 R24 R26
    14059 SETTABLEKS                       R22 R21 K395 ["userName"]
    14061 CALL                             R19 2 1
    14062 SETTABLEKS                       R19 R18 K24 ["translation"]
    14064 GETTABLEKS                       R19 R2 K14 ["userId"]
    14066 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14068 MOVE                             R19 R0
    14069 GETTABLEKS                       R20 R2 K14 ["userId"]
    14071 CALL                             R19 1 1
    14072 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14074 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14076 ORK                              R19 R20 K18 [0]
    14077 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14079 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14081 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14083 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14085 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14087 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14089 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14091 RETURN                           R18 1
    14092 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14094 JUMPIFNOTEQKN                    R18 K777 [136] ; [+89]
    14096 DUPTABLE                         R18 K779 [{["id"], ["eventType"] = "RoleAssigned", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14097 GETTABLEKS                       R19 R2 K19 ["id"]
    14099 SETTABLEKS                       R19 R18 K19 ["id"]
    14101 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14103 GETIMPORT                        R21 K35 [pcall]
    14105 NEWCLOSURE                       R22 P6
    14106 CAPTURE                          VAL R20
    14107 CAPTURE                          VAL R3
    14108 CALL                             R21 1 2
    14109 JUMPIFNOT                        R21 ; [+2]
    14110 MOVE                             R19 R22
    14111 JUMP                             ; [+1]
    14112 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14113 SETTABLEKS                       R19 R18 K23 ["date"]
    14115 MOVE                             R19 R12
    14116 LOADK                            R20 K780 ["Description.RoleAssigned"]
    14117 DUPTABLE                         R21 K781 [{"userName", "roleName"}]
    14118 MOVE                             R23 R0
    14119 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14121 CALL                             R23 1 1
    14122 LOADK                            R24 K44 [""]
    14123 FASTCALL1                        TOSTRING R23 ; [+3]
    14124 MOVE                             R28 R23
    14125 GETIMPORT                        R27 K4 [tostring]
    14127 CALL                             R27 1 1
    14128 MOVE                             R25 R27
    14129 LOADK                            R26 K44 [""]
    14130 CONCAT                           R22 R24 R26
    14131 SETTABLEKS                       R22 R21 K395 ["userName"]
    14133 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14135 JUMPIFNOT                        R24 ; [+5]
    14136 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14138 GETTABLEKS                       R23 R24 K741 ["roleName"]
    14140 JUMPIF                           R23 ; [+1]
    14141 LOADK                            R23 K44 [""]
    14142 LOADK                            R24 K44 [""]
    14143 FASTCALL1                        TOSTRING R23 ; [+3]
    14144 MOVE                             R28 R23
    14145 GETIMPORT                        R27 K4 [tostring]
    14147 CALL                             R27 1 1
    14148 MOVE                             R25 R27
    14149 LOADK                            R26 K44 [""]
    14150 CONCAT                           R22 R24 R26
    14151 SETTABLEKS                       R22 R21 K741 ["roleName"]
    14153 CALL                             R19 2 1
    14154 SETTABLEKS                       R19 R18 K24 ["translation"]
    14156 GETTABLEKS                       R19 R2 K14 ["userId"]
    14158 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14160 MOVE                             R19 R0
    14161 GETTABLEKS                       R20 R2 K14 ["userId"]
    14163 CALL                             R19 1 1
    14164 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14166 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14168 ORK                              R19 R20 K18 [0]
    14169 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14171 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14173 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14175 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14177 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14179 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14181 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14183 RETURN                           R18 1
    14184 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14186 JUMPIFNOTEQKN                    R18 K782 [137] ; [+89]
    14188 DUPTABLE                         R18 K784 [{["id"], ["eventType"] = "RoleUnassigned", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "User", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14189 GETTABLEKS                       R19 R2 K19 ["id"]
    14191 SETTABLEKS                       R19 R18 K19 ["id"]
    14193 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14195 GETIMPORT                        R21 K35 [pcall]
    14197 NEWCLOSURE                       R22 P6
    14198 CAPTURE                          VAL R20
    14199 CAPTURE                          VAL R3
    14200 CALL                             R21 1 2
    14201 JUMPIFNOT                        R21 ; [+2]
    14202 MOVE                             R19 R22
    14203 JUMP                             ; [+1]
    14204 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14205 SETTABLEKS                       R19 R18 K23 ["date"]
    14207 MOVE                             R19 R12
    14208 LOADK                            R20 K785 ["Description.RoleUnassigned"]
    14209 DUPTABLE                         R21 K781 [{"userName", "roleName"}]
    14210 MOVE                             R23 R0
    14211 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14213 CALL                             R23 1 1
    14214 LOADK                            R24 K44 [""]
    14215 FASTCALL1                        TOSTRING R23 ; [+3]
    14216 MOVE                             R28 R23
    14217 GETIMPORT                        R27 K4 [tostring]
    14219 CALL                             R27 1 1
    14220 MOVE                             R25 R27
    14221 LOADK                            R26 K44 [""]
    14222 CONCAT                           R22 R24 R26
    14223 SETTABLEKS                       R22 R21 K395 ["userName"]
    14225 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14227 JUMPIFNOT                        R24 ; [+5]
    14228 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14230 GETTABLEKS                       R23 R24 K741 ["roleName"]
    14232 JUMPIF                           R23 ; [+1]
    14233 LOADK                            R23 K44 [""]
    14234 LOADK                            R24 K44 [""]
    14235 FASTCALL1                        TOSTRING R23 ; [+3]
    14236 MOVE                             R28 R23
    14237 GETIMPORT                        R27 K4 [tostring]
    14239 CALL                             R27 1 1
    14240 MOVE                             R25 R27
    14241 LOADK                            R26 K44 [""]
    14242 CONCAT                           R22 R24 R26
    14243 SETTABLEKS                       R22 R21 K741 ["roleName"]
    14245 CALL                             R19 2 1
    14246 SETTABLEKS                       R19 R18 K24 ["translation"]
    14248 GETTABLEKS                       R19 R2 K14 ["userId"]
    14250 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14252 MOVE                             R19 R0
    14253 GETTABLEKS                       R20 R2 K14 ["userId"]
    14255 CALL                             R19 1 1
    14256 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14258 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14260 ORK                              R19 R20 K18 [0]
    14261 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14263 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14265 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14267 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14269 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14271 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14273 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14275 RETURN                           R18 1
    14276 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14278 JUMPIFNOTEQKN                    R18 K786 [138] ; [+74]
    14280 DUPTABLE                         R18 K788 [{["id"], ["eventType"] = "GroupIconUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14281 GETTABLEKS                       R19 R2 K19 ["id"]
    14283 SETTABLEKS                       R19 R18 K19 ["id"]
    14285 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14287 GETIMPORT                        R21 K35 [pcall]
    14289 NEWCLOSURE                       R22 P6
    14290 CAPTURE                          VAL R20
    14291 CAPTURE                          VAL R3
    14292 CALL                             R21 1 2
    14293 JUMPIFNOT                        R21 ; [+2]
    14294 MOVE                             R19 R22
    14295 JUMP                             ; [+1]
    14296 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14297 SETTABLEKS                       R19 R18 K23 ["date"]
    14299 MOVE                             R19 R12
    14300 LOADK                            R20 K789 ["Description.GroupSettingsUpdate"]
    14301 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14302 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14304 JUMPIFNOT                        R24 ; [+5]
    14305 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14307 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14309 JUMPIF                           R23 ; [+1]
    14310 LOADK                            R23 K44 [""]
    14311 LOADK                            R24 K44 [""]
    14312 FASTCALL1                        TOSTRING R23 ; [+3]
    14313 MOVE                             R28 R23
    14314 GETIMPORT                        R27 K4 [tostring]
    14316 CALL                             R27 1 1
    14317 MOVE                             R25 R27
    14318 LOADK                            R26 K44 [""]
    14319 CONCAT                           R22 R24 R26
    14320 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14322 CALL                             R19 2 1
    14323 SETTABLEKS                       R19 R18 K24 ["translation"]
    14325 GETTABLEKS                       R19 R2 K14 ["userId"]
    14327 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14329 MOVE                             R19 R0
    14330 GETTABLEKS                       R20 R2 K14 ["userId"]
    14332 CALL                             R19 1 1
    14333 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14335 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14337 ORK                              R19 R20 K18 [0]
    14338 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14340 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14342 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14344 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14346 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14348 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14350 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14352 RETURN                           R18 1
    14353 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14355 JUMPIFNOTEQKN                    R18 K792 [139] ; [+94]
    14357 DUPTABLE                         R18 K794 [{["id"], ["eventType"] = "GroupNameUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14358 GETTABLEKS                       R19 R2 K19 ["id"]
    14360 SETTABLEKS                       R19 R18 K19 ["id"]
    14362 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14364 GETIMPORT                        R21 K35 [pcall]
    14366 NEWCLOSURE                       R22 P6
    14367 CAPTURE                          VAL R20
    14368 CAPTURE                          VAL R3
    14369 CALL                             R21 1 2
    14370 JUMPIFNOT                        R21 ; [+2]
    14371 MOVE                             R19 R22
    14372 JUMP                             ; [+1]
    14373 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14374 SETTABLEKS                       R19 R18 K23 ["date"]
    14376 MOVE                             R19 R12
    14377 LOADK                            R20 K795 ["Description.GroupNameUpdate"]
    14378 DUPTABLE                         R21 K797 [{"groupSettings", "newGroupName"}]
    14379 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14381 JUMPIFNOT                        R24 ; [+5]
    14382 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14384 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14386 JUMPIF                           R23 ; [+1]
    14387 LOADK                            R23 K44 [""]
    14388 LOADK                            R24 K44 [""]
    14389 FASTCALL1                        TOSTRING R23 ; [+3]
    14390 MOVE                             R28 R23
    14391 GETIMPORT                        R27 K4 [tostring]
    14393 CALL                             R27 1 1
    14394 MOVE                             R25 R27
    14395 LOADK                            R26 K44 [""]
    14396 CONCAT                           R22 R24 R26
    14397 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14399 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14401 JUMPIFNOT                        R24 ; [+5]
    14402 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14404 GETTABLEKS                       R23 R24 K796 ["newGroupName"]
    14406 JUMPIF                           R23 ; [+1]
    14407 LOADK                            R23 K44 [""]
    14408 LOADK                            R24 K44 [""]
    14409 FASTCALL1                        TOSTRING R23 ; [+3]
    14410 MOVE                             R28 R23
    14411 GETIMPORT                        R27 K4 [tostring]
    14413 CALL                             R27 1 1
    14414 MOVE                             R25 R27
    14415 LOADK                            R26 K44 [""]
    14416 CONCAT                           R22 R24 R26
    14417 SETTABLEKS                       R22 R21 K796 ["newGroupName"]
    14419 CALL                             R19 2 1
    14420 SETTABLEKS                       R19 R18 K24 ["translation"]
    14422 GETTABLEKS                       R19 R2 K14 ["userId"]
    14424 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14426 MOVE                             R19 R0
    14427 GETTABLEKS                       R20 R2 K14 ["userId"]
    14429 CALL                             R19 1 1
    14430 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14432 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14434 ORK                              R19 R20 K18 [0]
    14435 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14437 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14439 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14441 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14443 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14445 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14447 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14449 RETURN                           R18 1
    14450 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14452 JUMPIFNOTEQKN                    R18 K798 [140] ; [+74]
    14454 DUPTABLE                         R18 K800 [{["id"], ["eventType"] = "GroupDescriptionUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14455 GETTABLEKS                       R19 R2 K19 ["id"]
    14457 SETTABLEKS                       R19 R18 K19 ["id"]
    14459 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14461 GETIMPORT                        R21 K35 [pcall]
    14463 NEWCLOSURE                       R22 P6
    14464 CAPTURE                          VAL R20
    14465 CAPTURE                          VAL R3
    14466 CALL                             R21 1 2
    14467 JUMPIFNOT                        R21 ; [+2]
    14468 MOVE                             R19 R22
    14469 JUMP                             ; [+1]
    14470 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14471 SETTABLEKS                       R19 R18 K23 ["date"]
    14473 MOVE                             R19 R12
    14474 LOADK                            R20 K801 ["Description.GroupDescriptionUpdated"]
    14475 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14476 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14478 JUMPIFNOT                        R24 ; [+5]
    14479 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14481 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14483 JUMPIF                           R23 ; [+1]
    14484 LOADK                            R23 K44 [""]
    14485 LOADK                            R24 K44 [""]
    14486 FASTCALL1                        TOSTRING R23 ; [+3]
    14487 MOVE                             R28 R23
    14488 GETIMPORT                        R27 K4 [tostring]
    14490 CALL                             R27 1 1
    14491 MOVE                             R25 R27
    14492 LOADK                            R26 K44 [""]
    14493 CONCAT                           R22 R24 R26
    14494 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14496 CALL                             R19 2 1
    14497 SETTABLEKS                       R19 R18 K24 ["translation"]
    14499 GETTABLEKS                       R19 R2 K14 ["userId"]
    14501 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14503 MOVE                             R19 R0
    14504 GETTABLEKS                       R20 R2 K14 ["userId"]
    14506 CALL                             R19 1 1
    14507 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14509 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14511 ORK                              R19 R20 K18 [0]
    14512 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14514 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14516 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14518 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14520 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14522 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14524 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14526 RETURN                           R18 1
    14527 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14529 JUMPIFNOTEQKN                    R18 K802 [141] ; [+74]
    14531 DUPTABLE                         R18 K804 [{["id"], ["eventType"] = "GroupSocialLinksUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14532 GETTABLEKS                       R19 R2 K19 ["id"]
    14534 SETTABLEKS                       R19 R18 K19 ["id"]
    14536 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14538 GETIMPORT                        R21 K35 [pcall]
    14540 NEWCLOSURE                       R22 P6
    14541 CAPTURE                          VAL R20
    14542 CAPTURE                          VAL R3
    14543 CALL                             R21 1 2
    14544 JUMPIFNOT                        R21 ; [+2]
    14545 MOVE                             R19 R22
    14546 JUMP                             ; [+1]
    14547 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14548 SETTABLEKS                       R19 R18 K23 ["date"]
    14550 MOVE                             R19 R12
    14551 LOADK                            R20 K805 ["Description.GroupSettingsPluralUpdate"]
    14552 DUPTABLE                         R21 K791 [{"groupSettings"}]
    14553 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14555 JUMPIFNOT                        R24 ; [+5]
    14556 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14558 GETTABLEKS                       R23 R24 K790 ["groupSettings"]
    14560 JUMPIF                           R23 ; [+1]
    14561 LOADK                            R23 K44 [""]
    14562 LOADK                            R24 K44 [""]
    14563 FASTCALL1                        TOSTRING R23 ; [+3]
    14564 MOVE                             R28 R23
    14565 GETIMPORT                        R27 K4 [tostring]
    14567 CALL                             R27 1 1
    14568 MOVE                             R25 R27
    14569 LOADK                            R26 K44 [""]
    14570 CONCAT                           R22 R24 R26
    14571 SETTABLEKS                       R22 R21 K790 ["groupSettings"]
    14573 CALL                             R19 2 1
    14574 SETTABLEKS                       R19 R18 K24 ["translation"]
    14576 GETTABLEKS                       R19 R2 K14 ["userId"]
    14578 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14580 MOVE                             R19 R0
    14581 GETTABLEKS                       R20 R2 K14 ["userId"]
    14583 CALL                             R19 1 1
    14584 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14586 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14588 ORK                              R19 R20 K18 [0]
    14589 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14591 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14593 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14595 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14597 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14599 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14601 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14603 RETURN                           R18 1
    14604 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14606 JUMPIFNOTEQKN                    R18 K806 [142] ; [+74]
    14608 DUPTABLE                         R18 K808 [{["id"], ["eventType"] = "GroupOwnerUpdated", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14609 GETTABLEKS                       R19 R2 K19 ["id"]
    14611 SETTABLEKS                       R19 R18 K19 ["id"]
    14613 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14615 GETIMPORT                        R21 K35 [pcall]
    14617 NEWCLOSURE                       R22 P6
    14618 CAPTURE                          VAL R20
    14619 CAPTURE                          VAL R3
    14620 CALL                             R21 1 2
    14621 JUMPIFNOT                        R21 ; [+2]
    14622 MOVE                             R19 R22
    14623 JUMP                             ; [+1]
    14624 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14625 SETTABLEKS                       R19 R18 K23 ["date"]
    14627 MOVE                             R19 R12
    14628 LOADK                            R20 K809 ["Description.GroupOwnerUpdated"]
    14629 DUPTABLE                         R21 K396 [{"userName"}]
    14630 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14632 JUMPIFNOT                        R24 ; [+5]
    14633 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14635 GETTABLEKS                       R23 R24 K395 ["userName"]
    14637 JUMPIF                           R23 ; [+1]
    14638 LOADK                            R23 K44 [""]
    14639 LOADK                            R24 K44 [""]
    14640 FASTCALL1                        TOSTRING R23 ; [+3]
    14641 MOVE                             R28 R23
    14642 GETIMPORT                        R27 K4 [tostring]
    14644 CALL                             R27 1 1
    14645 MOVE                             R25 R27
    14646 LOADK                            R26 K44 [""]
    14647 CONCAT                           R22 R24 R26
    14648 SETTABLEKS                       R22 R21 K395 ["userName"]
    14650 CALL                             R19 2 1
    14651 SETTABLEKS                       R19 R18 K24 ["translation"]
    14653 GETTABLEKS                       R19 R2 K14 ["userId"]
    14655 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14657 MOVE                             R19 R0
    14658 GETTABLEKS                       R20 R2 K14 ["userId"]
    14660 CALL                             R19 1 1
    14661 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14663 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14665 ORK                              R19 R20 K18 [0]
    14666 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14668 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14670 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14672 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14674 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14676 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14678 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14680 RETURN                           R18 1
    14681 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14683 JUMPIFNOTEQKN                    R18 K810 [143] ; [+74]
    14685 DUPTABLE                         R18 K812 [{["id"], ["eventType"] = "OneTimePayoutSent", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14686 GETTABLEKS                       R19 R2 K19 ["id"]
    14688 SETTABLEKS                       R19 R18 K19 ["id"]
    14690 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14692 GETIMPORT                        R21 K35 [pcall]
    14694 NEWCLOSURE                       R22 P6
    14695 CAPTURE                          VAL R20
    14696 CAPTURE                          VAL R3
    14697 CALL                             R21 1 2
    14698 JUMPIFNOT                        R21 ; [+2]
    14699 MOVE                             R19 R22
    14700 JUMP                             ; [+1]
    14701 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14702 SETTABLEKS                       R19 R18 K23 ["date"]
    14704 MOVE                             R19 R12
    14705 LOADK                            R20 K813 ["Description.OneTimePayoutSent"]
    14706 DUPTABLE                         R21 K396 [{"userName"}]
    14707 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14709 JUMPIFNOT                        R24 ; [+5]
    14710 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14712 GETTABLEKS                       R23 R24 K395 ["userName"]
    14714 JUMPIF                           R23 ; [+1]
    14715 LOADK                            R23 K44 [""]
    14716 LOADK                            R24 K44 [""]
    14717 FASTCALL1                        TOSTRING R23 ; [+3]
    14718 MOVE                             R28 R23
    14719 GETIMPORT                        R27 K4 [tostring]
    14721 CALL                             R27 1 1
    14722 MOVE                             R25 R27
    14723 LOADK                            R26 K44 [""]
    14724 CONCAT                           R22 R24 R26
    14725 SETTABLEKS                       R22 R21 K395 ["userName"]
    14727 CALL                             R19 2 1
    14728 SETTABLEKS                       R19 R18 K24 ["translation"]
    14730 GETTABLEKS                       R19 R2 K14 ["userId"]
    14732 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14734 MOVE                             R19 R0
    14735 GETTABLEKS                       R20 R2 K14 ["userId"]
    14737 CALL                             R19 1 1
    14738 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14740 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14742 ORK                              R19 R20 K18 [0]
    14743 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14745 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14747 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14749 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14751 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14753 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14755 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14757 RETURN                           R18 1
    14758 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14760 JUMPIFNOTEQKN                    R18 K814 [144] ; [+74]
    14762 DUPTABLE                         R18 K816 [{["id"], ["eventType"] = "PayoutsConfigured", ["eventCategory"] = "Unknown", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Group", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14763 GETTABLEKS                       R19 R2 K19 ["id"]
    14765 SETTABLEKS                       R19 R18 K19 ["id"]
    14767 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14769 GETIMPORT                        R21 K35 [pcall]
    14771 NEWCLOSURE                       R22 P6
    14772 CAPTURE                          VAL R20
    14773 CAPTURE                          VAL R3
    14774 CALL                             R21 1 2
    14775 JUMPIFNOT                        R21 ; [+2]
    14776 MOVE                             R19 R22
    14777 JUMP                             ; [+1]
    14778 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14779 SETTABLEKS                       R19 R18 K23 ["date"]
    14781 MOVE                             R19 R12
    14782 LOADK                            R20 K817 ["Description.PayoutsConfigured"]
    14783 DUPTABLE                         R21 K403 [{"groupName"}]
    14784 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14786 JUMPIFNOT                        R24 ; [+5]
    14787 GETTABLEKS                       R24 R2 K42 ["metaData"]
    14789 GETTABLEKS                       R23 R24 K402 ["groupName"]
    14791 JUMPIF                           R23 ; [+1]
    14792 LOADK                            R23 K44 [""]
    14793 LOADK                            R24 K44 [""]
    14794 FASTCALL1                        TOSTRING R23 ; [+3]
    14795 MOVE                             R28 R23
    14796 GETIMPORT                        R27 K4 [tostring]
    14798 CALL                             R27 1 1
    14799 MOVE                             R25 R27
    14800 LOADK                            R26 K44 [""]
    14801 CONCAT                           R22 R24 R26
    14802 SETTABLEKS                       R22 R21 K402 ["groupName"]
    14804 CALL                             R19 2 1
    14805 SETTABLEKS                       R19 R18 K24 ["translation"]
    14807 GETTABLEKS                       R19 R2 K14 ["userId"]
    14809 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14811 MOVE                             R19 R0
    14812 GETTABLEKS                       R20 R2 K14 ["userId"]
    14814 CALL                             R19 1 1
    14815 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14817 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14819 ORK                              R19 R20 K18 [0]
    14820 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14822 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14824 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14826 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14828 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14830 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14832 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14834 RETURN                           R18 1
    14835 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14837 JUMPIFNOTEQKN                    R18 K818 [145] ; [+63]
    14839 DUPTABLE                         R18 K823 [{["id"], ["eventType"] = "DraftCommit", ["eventCategory"] = "Scripts", ["date"], ["translation"] = "", ["translationFunc"], ["actorId"], ["actorName"], ["iconType"] = "Script", ["iconId"], ["universeId"], ["headerText"], ["footerText"], ["linkErrorHeader"], ["linkErrorBody"]}]
    14840 GETTABLEKS                       R19 R2 K19 ["id"]
    14842 SETTABLEKS                       R19 R18 K19 ["id"]
    14844 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14846 GETIMPORT                        R21 K35 [pcall]
    14848 NEWCLOSURE                       R22 P6
    14849 CAPTURE                          VAL R20
    14850 CAPTURE                          VAL R3
    14851 CALL                             R21 1 2
    14852 JUMPIFNOT                        R21 ; [+2]
    14853 MOVE                             R19 R22
    14854 JUMP                             ; [+1]
    14855 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14856 SETTABLEKS                       R19 R18 K23 ["date"]
    14858 NEWCLOSURE                       R19 P8
    14859 CAPTURE                          VAL R16
    14860 CAPTURE                          VAL R2
    14861 SETTABLEKS                       R19 R18 K821 ["translationFunc"]
    14863 GETTABLEKS                       R19 R2 K14 ["userId"]
    14865 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14867 MOVE                             R19 R0
    14868 GETTABLEKS                       R20 R2 K14 ["userId"]
    14870 CALL                             R19 1 1
    14871 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14873 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14875 ORK                              R19 R20 K18 [0]
    14876 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14878 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14880 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14882 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14884 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14886 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14888 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14890 MOVE                             R19 R12
    14891 LOADK                            R20 K824 ["LinkError.MissingScriptHeader"]
    14892 CALL                             R19 1 1
    14893 SETTABLEKS                       R19 R18 K717 ["linkErrorHeader"]
    14895 MOVE                             R19 R12
    14896 LOADK                            R20 K825 ["LinkError.MissingScriptBody"]
    14897 CALL                             R19 1 1
    14898 SETTABLEKS                       R19 R18 K718 ["linkErrorBody"]
    14900 RETURN                           R18 1
    14901 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14903 JUMPIFNOTEQKN                    R18 K826 [146] ; [+55]
    14905 DUPTABLE                         R18 K828 [{["id"], ["eventType"] = "ExperiencePermissionsUpdated", ["eventCategory"] = "Permissions", ["date"], ["translation"], ["actorId"], ["actorName"], ["iconType"] = "Universe", ["iconId"], ["universeId"], ["headerText"], ["footerText"]}]
    14906 GETTABLEKS                       R19 R2 K19 ["id"]
    14908 SETTABLEKS                       R19 R18 K19 ["id"]
    14910 GETTABLEKS                       R20 R2 K33 ["createdUnixTimeMs"]
    14912 GETIMPORT                        R21 K35 [pcall]
    14914 NEWCLOSURE                       R22 P6
    14915 CAPTURE                          VAL R20
    14916 CAPTURE                          VAL R3
    14917 CALL                             R21 1 2
    14918 JUMPIFNOT                        R21 ; [+2]
    14919 MOVE                             R19 R22
    14920 JUMP                             ; [+1]
    14921 LOADK                            R19 K36 ["🤷🏻‍♀️"]
    14922 SETTABLEKS                       R19 R18 K23 ["date"]
    14924 MOVE                             R19 R17
    14925 GETTABLEKS                       R20 R2 K42 ["metaData"]
    14927 LOADK                            R21 K829 ["Description.ExperiencePermissionsUpdated"]
    14928 LOADK                            R22 K830 ["Description.ExperiencePermissionsRevoked"]
    14929 CALL                             R19 3 1
    14930 SETTABLEKS                       R19 R18 K24 ["translation"]
    14932 GETTABLEKS                       R19 R2 K14 ["userId"]
    14934 SETTABLEKS                       R19 R18 K25 ["actorId"]
    14936 MOVE                             R19 R0
    14937 GETTABLEKS                       R20 R2 K14 ["userId"]
    14939 CALL                             R19 1 1
    14940 SETTABLEKS                       R19 R18 K26 ["actorName"]
    14942 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14944 SETTABLEKS                       R19 R18 K29 ["iconId"]
    14946 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14948 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14950 GETTABLEKS                       R19 R2 K30 ["headerText"]
    14952 SETTABLEKS                       R19 R18 K30 ["headerText"]
    14954 GETTABLEKS                       R19 R2 K31 ["footerText"]
    14956 SETTABLEKS                       R19 R18 K31 ["footerText"]
    14958 RETURN                           R18 1
    14959 DUPTABLE                         R18 K833 [{["id"], ["universeId"] = 0, ["eventType"] = "Unknown", ["date"] = "", ["translation"] = "unknown event", ["actorId"] = 0, ["actorName"] = "unknown", ["iconId"] = 0, ["iconType"] = "Unknown", ["eventCategory"] = ""}]
    14960 GETIMPORT                        R20 K836 [math.random]
    14962 CALL                             R20 0 -1
    14963 FASTCALL                         TOSTRING ; [+2]
    14964 GETIMPORT                        R19 K4 [tostring]
    14966 CALL                             R19 -1 1
    14967 SETTABLEKS                       R19 R18 K19 ["id"]
    14969 RETURN                           R18 1

PROTO_23:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R1 K1 ["Unknown"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKN                    R0 K2 [1] ; [+3]
        6 LOADK                            R1 K3 ["Experience"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKN                    R0 K4 [2] ; [+3]
       10 LOADK                            R1 K3 ["Experience"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKN                    R0 K5 [3] ; [+3]
       14 LOADK                            R1 K3 ["Experience"]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKN                    R0 K6 [4] ; [+3]
       18 LOADK                            R1 K3 ["Experience"]
       19 RETURN                           R1 1
       20 JUMPIFNOTEQKN                    R0 K7 [5] ; [+3]
       22 LOADK                            R1 K3 ["Experience"]
       23 RETURN                           R1 1
       24 JUMPIFNOTEQKN                    R0 K8 [6] ; [+3]
       26 LOADK                            R1 K3 ["Experience"]
       27 RETURN                           R1 1
       28 JUMPIFNOTEQKN                    R0 K9 [7] ; [+3]
       30 LOADK                            R1 K3 ["Experience"]
       31 RETURN                           R1 1
       32 JUMPIFNOTEQKN                    R0 K10 [8] ; [+3]
       34 LOADK                            R1 K3 ["Experience"]
       35 RETURN                           R1 1
       36 JUMPIFNOTEQKN                    R0 K11 [9] ; [+3]
       38 LOADK                            R1 K3 ["Experience"]
       39 RETURN                           R1 1
       40 JUMPIFNOTEQKN                    R0 K12 [10] ; [+3]
       42 LOADK                            R1 K3 ["Experience"]
       43 RETURN                           R1 1
       44 JUMPIFNOTEQKN                    R0 K13 [11] ; [+3]
       46 LOADK                            R1 K3 ["Experience"]
       47 RETURN                           R1 1
       48 JUMPIFNOTEQKN                    R0 K14 [12] ; [+3]
       50 LOADK                            R1 K3 ["Experience"]
       51 RETURN                           R1 1
       52 JUMPIFNOTEQKN                    R0 K15 [13] ; [+3]
       54 LOADK                            R1 K3 ["Experience"]
       55 RETURN                           R1 1
       56 JUMPIFNOTEQKN                    R0 K16 [14] ; [+3]
       58 LOADK                            R1 K3 ["Experience"]
       59 RETURN                           R1 1
       60 JUMPIFNOTEQKN                    R0 K17 [15] ; [+3]
       62 LOADK                            R1 K3 ["Experience"]
       63 RETURN                           R1 1
       64 JUMPIFNOTEQKN                    R0 K18 [16] ; [+3]
       66 LOADK                            R1 K3 ["Experience"]
       67 RETURN                           R1 1
       68 JUMPIFNOTEQKN                    R0 K19 [17] ; [+3]
       70 LOADK                            R1 K3 ["Experience"]
       71 RETURN                           R1 1
       72 JUMPIFNOTEQKN                    R0 K20 [18] ; [+3]
       74 LOADK                            R1 K3 ["Experience"]
       75 RETURN                           R1 1
       76 JUMPIFNOTEQKN                    R0 K21 [19] ; [+3]
       78 LOADK                            R1 K3 ["Experience"]
       79 RETURN                           R1 1
       80 JUMPIFNOTEQKN                    R0 K22 [20] ; [+3]
       82 LOADK                            R1 K3 ["Experience"]
       83 RETURN                           R1 1
       84 JUMPIFNOTEQKN                    R0 K23 [21] ; [+3]
       86 LOADK                            R1 K3 ["Experience"]
       87 RETURN                           R1 1
       88 JUMPIFNOTEQKN                    R0 K24 [22] ; [+3]
       90 LOADK                            R1 K3 ["Experience"]
       91 RETURN                           R1 1
       92 JUMPIFNOTEQKN                    R0 K25 [23] ; [+3]
       94 LOADK                            R1 K3 ["Experience"]
       95 RETURN                           R1 1
       96 JUMPIFNOTEQKN                    R0 K26 [24] ; [+3]
       98 LOADK                            R1 K3 ["Experience"]
       99 RETURN                           R1 1
      100 JUMPIFNOTEQKN                    R0 K27 [25] ; [+3]
      102 LOADK                            R1 K3 ["Experience"]
      103 RETURN                           R1 1
      104 JUMPIFNOTEQKN                    R0 K28 [26] ; [+3]
      106 LOADK                            R1 K3 ["Experience"]
      107 RETURN                           R1 1
      108 JUMPIFNOTEQKN                    R0 K29 [27] ; [+3]
      110 LOADK                            R1 K3 ["Experience"]
      111 RETURN                           R1 1
      112 JUMPIFNOTEQKN                    R0 K30 [28] ; [+3]
      114 LOADK                            R1 K3 ["Experience"]
      115 RETURN                           R1 1
      116 JUMPIFNOTEQKN                    R0 K31 [29] ; [+3]
      118 LOADK                            R1 K3 ["Experience"]
      119 RETURN                           R1 1
      120 JUMPIFNOTEQKN                    R0 K32 [30] ; [+3]
      122 LOADK                            R1 K3 ["Experience"]
      123 RETURN                           R1 1
      124 JUMPIFNOTEQKN                    R0 K33 [31] ; [+3]
      126 LOADK                            R1 K3 ["Experience"]
      127 RETURN                           R1 1
      128 JUMPIFNOTEQKN                    R0 K34 [32] ; [+3]
      130 LOADK                            R1 K3 ["Experience"]
      131 RETURN                           R1 1
      132 JUMPIFNOTEQKN                    R0 K35 [33] ; [+3]
      134 LOADK                            R1 K3 ["Experience"]
      135 RETURN                           R1 1
      136 JUMPIFNOTEQKN                    R0 K36 [34] ; [+3]
      138 LOADK                            R1 K1 ["Unknown"]
      139 RETURN                           R1 1
      140 JUMPIFNOTEQKN                    R0 K37 [35] ; [+3]
      142 LOADK                            R1 K1 ["Unknown"]
      143 RETURN                           R1 1
      144 JUMPIFNOTEQKN                    R0 K38 [36] ; [+3]
      146 LOADK                            R1 K1 ["Unknown"]
      147 RETURN                           R1 1
      148 JUMPIFNOTEQKN                    R0 K39 [37] ; [+3]
      150 LOADK                            R1 K1 ["Unknown"]
      151 RETURN                           R1 1
      152 JUMPIFNOTEQKN                    R0 K40 [38] ; [+3]
      154 LOADK                            R1 K1 ["Unknown"]
      155 RETURN                           R1 1
      156 JUMPIFNOTEQKN                    R0 K41 [39] ; [+3]
      158 LOADK                            R1 K1 ["Unknown"]
      159 RETURN                           R1 1
      160 JUMPIFNOTEQKN                    R0 K42 [40] ; [+3]
      162 LOADK                            R1 K1 ["Unknown"]
      163 RETURN                           R1 1
      164 JUMPIFNOTEQKN                    R0 K43 [41] ; [+3]
      166 LOADK                            R1 K1 ["Unknown"]
      167 RETURN                           R1 1
      168 JUMPIFNOTEQKN                    R0 K44 [42] ; [+3]
      170 LOADK                            R1 K1 ["Unknown"]
      171 RETURN                           R1 1
      172 JUMPIFNOTEQKN                    R0 K45 [43] ; [+3]
      174 LOADK                            R1 K1 ["Unknown"]
      175 RETURN                           R1 1
      176 JUMPIFNOTEQKN                    R0 K46 [44] ; [+3]
      178 LOADK                            R1 K1 ["Unknown"]
      179 RETURN                           R1 1
      180 JUMPIFNOTEQKN                    R0 K47 [45] ; [+3]
      182 LOADK                            R1 K1 ["Unknown"]
      183 RETURN                           R1 1
      184 JUMPIFNOTEQKN                    R0 K48 [46] ; [+3]
      186 LOADK                            R1 K1 ["Unknown"]
      187 RETURN                           R1 1
      188 JUMPIFNOTEQKN                    R0 K49 [47] ; [+3]
      190 LOADK                            R1 K1 ["Unknown"]
      191 RETURN                           R1 1
      192 JUMPIFNOTEQKN                    R0 K50 [48] ; [+3]
      194 LOADK                            R1 K1 ["Unknown"]
      195 RETURN                           R1 1
      196 JUMPIFNOTEQKN                    R0 K51 [49] ; [+3]
      198 LOADK                            R1 K1 ["Unknown"]
      199 RETURN                           R1 1
      200 JUMPIFNOTEQKN                    R0 K52 [50] ; [+3]
      202 LOADK                            R1 K1 ["Unknown"]
      203 RETURN                           R1 1
      204 JUMPIFNOTEQKN                    R0 K53 [51] ; [+3]
      206 LOADK                            R1 K1 ["Unknown"]
      207 RETURN                           R1 1
      208 JUMPIFNOTEQKN                    R0 K54 [52] ; [+3]
      210 LOADK                            R1 K1 ["Unknown"]
      211 RETURN                           R1 1
      212 JUMPIFNOTEQKN                    R0 K55 [53] ; [+3]
      214 LOADK                            R1 K1 ["Unknown"]
      215 RETURN                           R1 1
      216 JUMPIFNOTEQKN                    R0 K56 [54] ; [+3]
      218 LOADK                            R1 K1 ["Unknown"]
      219 RETURN                           R1 1
      220 JUMPIFNOTEQKN                    R0 K57 [55] ; [+3]
      222 LOADK                            R1 K1 ["Unknown"]
      223 RETURN                           R1 1
      224 JUMPIFNOTEQKN                    R0 K58 [56] ; [+3]
      226 LOADK                            R1 K1 ["Unknown"]
      227 RETURN                           R1 1
      228 JUMPIFNOTEQKN                    R0 K59 [57] ; [+3]
      230 LOADK                            R1 K1 ["Unknown"]
      231 RETURN                           R1 1
      232 JUMPIFNOTEQKN                    R0 K60 [58] ; [+3]
      234 LOADK                            R1 K1 ["Unknown"]
      235 RETURN                           R1 1
      236 JUMPIFNOTEQKN                    R0 K61 [59] ; [+3]
      238 LOADK                            R1 K1 ["Unknown"]
      239 RETURN                           R1 1
      240 JUMPIFNOTEQKN                    R0 K62 [60] ; [+3]
      242 LOADK                            R1 K1 ["Unknown"]
      243 RETURN                           R1 1
      244 JUMPIFNOTEQKN                    R0 K63 [61] ; [+3]
      246 LOADK                            R1 K1 ["Unknown"]
      247 RETURN                           R1 1
      248 JUMPIFNOTEQKN                    R0 K64 [62] ; [+3]
      250 LOADK                            R1 K1 ["Unknown"]
      251 RETURN                           R1 1
      252 JUMPIFNOTEQKN                    R0 K65 [63] ; [+3]
      254 LOADK                            R1 K1 ["Unknown"]
      255 RETURN                           R1 1
      256 JUMPIFNOTEQKN                    R0 K66 [64] ; [+3]
      258 LOADK                            R1 K1 ["Unknown"]
      259 RETURN                           R1 1
      260 JUMPIFNOTEQKN                    R0 K67 [65] ; [+3]
      262 LOADK                            R1 K1 ["Unknown"]
      263 RETURN                           R1 1
      264 JUMPIFNOTEQKN                    R0 K68 [66] ; [+3]
      266 LOADK                            R1 K69 ["Monetization"]
      267 RETURN                           R1 1
      268 JUMPIFNOTEQKN                    R0 K70 [67] ; [+3]
      270 LOADK                            R1 K69 ["Monetization"]
      271 RETURN                           R1 1
      272 JUMPIFNOTEQKN                    R0 K71 [68] ; [+3]
      274 LOADK                            R1 K69 ["Monetization"]
      275 RETURN                           R1 1
      276 JUMPIFNOTEQKN                    R0 K72 [69] ; [+3]
      278 LOADK                            R1 K69 ["Monetization"]
      279 RETURN                           R1 1
      280 JUMPIFNOTEQKN                    R0 K73 [70] ; [+3]
      282 LOADK                            R1 K69 ["Monetization"]
      283 RETURN                           R1 1
      284 JUMPIFNOTEQKN                    R0 K74 [71] ; [+3]
      286 LOADK                            R1 K69 ["Monetization"]
      287 RETURN                           R1 1
      288 JUMPIFNOTEQKN                    R0 K75 [72] ; [+3]
      290 LOADK                            R1 K69 ["Monetization"]
      291 RETURN                           R1 1
      292 JUMPIFNOTEQKN                    R0 K76 [73] ; [+3]
      294 LOADK                            R1 K69 ["Monetization"]
      295 RETURN                           R1 1
      296 JUMPIFNOTEQKN                    R0 K77 [74] ; [+3]
      298 LOADK                            R1 K69 ["Monetization"]
      299 RETURN                           R1 1
      300 JUMPIFNOTEQKN                    R0 K78 [75] ; [+3]
      302 LOADK                            R1 K69 ["Monetization"]
      303 RETURN                           R1 1
      304 JUMPIFNOTEQKN                    R0 K79 [76] ; [+3]
      306 LOADK                            R1 K69 ["Monetization"]
      307 RETURN                           R1 1
      308 JUMPIFNOTEQKN                    R0 K80 [77] ; [+3]
      310 LOADK                            R1 K69 ["Monetization"]
      311 RETURN                           R1 1
      312 JUMPIFNOTEQKN                    R0 K81 [78] ; [+3]
      314 LOADK                            R1 K69 ["Monetization"]
      315 RETURN                           R1 1
      316 JUMPIFNOTEQKN                    R0 K82 [79] ; [+3]
      318 LOADK                            R1 K69 ["Monetization"]
      319 RETURN                           R1 1
      320 JUMPIFNOTEQKN                    R0 K83 [80] ; [+3]
      322 LOADK                            R1 K69 ["Monetization"]
      323 RETURN                           R1 1
      324 JUMPIFNOTEQKN                    R0 K84 [81] ; [+3]
      326 LOADK                            R1 K69 ["Monetization"]
      327 RETURN                           R1 1
      328 JUMPIFNOTEQKN                    R0 K85 [82] ; [+3]
      330 LOADK                            R1 K69 ["Monetization"]
      331 RETURN                           R1 1
      332 JUMPIFNOTEQKN                    R0 K86 [83] ; [+3]
      334 LOADK                            R1 K69 ["Monetization"]
      335 RETURN                           R1 1
      336 JUMPIFNOTEQKN                    R0 K87 [84] ; [+3]
      338 LOADK                            R1 K69 ["Monetization"]
      339 RETURN                           R1 1
      340 JUMPIFNOTEQKN                    R0 K88 [85] ; [+3]
      342 LOADK                            R1 K69 ["Monetization"]
      343 RETURN                           R1 1
      344 JUMPIFNOTEQKN                    R0 K89 [86] ; [+3]
      346 LOADK                            R1 K69 ["Monetization"]
      347 RETURN                           R1 1
      348 JUMPIFNOTEQKN                    R0 K90 [87] ; [+3]
      350 LOADK                            R1 K69 ["Monetization"]
      351 RETURN                           R1 1
      352 JUMPIFNOTEQKN                    R0 K91 [88] ; [+3]
      354 LOADK                            R1 K92 ["Permissions"]
      355 RETURN                           R1 1
      356 JUMPIFNOTEQKN                    R0 K93 [89] ; [+3]
      358 LOADK                            R1 K92 ["Permissions"]
      359 RETURN                           R1 1
      360 JUMPIFNOTEQKN                    R0 K94 [90] ; [+3]
      362 LOADK                            R1 K92 ["Permissions"]
      363 RETURN                           R1 1
      364 JUMPIFNOTEQKN                    R0 K95 [91] ; [+3]
      366 LOADK                            R1 K92 ["Permissions"]
      367 RETURN                           R1 1
      368 JUMPIFNOTEQKN                    R0 K96 [92] ; [+3]
      370 LOADK                            R1 K92 ["Permissions"]
      371 RETURN                           R1 1
      372 JUMPIFNOTEQKN                    R0 K97 [93] ; [+3]
      374 LOADK                            R1 K92 ["Permissions"]
      375 RETURN                           R1 1
      376 JUMPIFNOTEQKN                    R0 K98 [94] ; [+3]
      378 LOADK                            R1 K92 ["Permissions"]
      379 RETURN                           R1 1
      380 JUMPIFNOTEQKN                    R0 K99 [95] ; [+3]
      382 LOADK                            R1 K100 ["Place"]
      383 RETURN                           R1 1
      384 JUMPIFNOTEQKN                    R0 K101 [96] ; [+3]
      386 LOADK                            R1 K100 ["Place"]
      387 RETURN                           R1 1
      388 JUMPIFNOTEQKN                    R0 K102 [97] ; [+3]
      390 LOADK                            R1 K100 ["Place"]
      391 RETURN                           R1 1
      392 JUMPIFNOTEQKN                    R0 K103 [98] ; [+3]
      394 LOADK                            R1 K100 ["Place"]
      395 RETURN                           R1 1
      396 JUMPIFNOTEQKN                    R0 K104 [99] ; [+3]
      398 LOADK                            R1 K100 ["Place"]
      399 RETURN                           R1 1
      400 JUMPIFNOTEQKN                    R0 K105 [100] ; [+3]
      402 LOADK                            R1 K100 ["Place"]
      403 RETURN                           R1 1
      404 JUMPIFNOTEQKN                    R0 K106 [101] ; [+3]
      406 LOADK                            R1 K100 ["Place"]
      407 RETURN                           R1 1
      408 JUMPIFNOTEQKN                    R0 K107 [102] ; [+3]
      410 LOADK                            R1 K100 ["Place"]
      411 RETURN                           R1 1
      412 JUMPIFNOTEQKN                    R0 K108 [103] ; [+3]
      414 LOADK                            R1 K100 ["Place"]
      415 RETURN                           R1 1
      416 JUMPIFNOTEQKN                    R0 K109 [104] ; [+3]
      418 LOADK                            R1 K100 ["Place"]
      419 RETURN                           R1 1
      420 JUMPIFNOTEQKN                    R0 K110 [105] ; [+3]
      422 LOADK                            R1 K100 ["Place"]
      423 RETURN                           R1 1
      424 JUMPIFNOTEQKN                    R0 K111 [106] ; [+3]
      426 LOADK                            R1 K100 ["Place"]
      427 RETURN                           R1 1
      428 JUMPIFNOTEQKN                    R0 K112 [107] ; [+3]
      430 LOADK                            R1 K100 ["Place"]
      431 RETURN                           R1 1
      432 JUMPIFNOTEQKN                    R0 K113 [108] ; [+3]
      434 LOADK                            R1 K100 ["Place"]
      435 RETURN                           R1 1
      436 JUMPIFNOTEQKN                    R0 K114 [109] ; [+3]
      438 LOADK                            R1 K100 ["Place"]
      439 RETURN                           R1 1
      440 JUMPIFNOTEQKN                    R0 K115 [110] ; [+3]
      442 LOADK                            R1 K100 ["Place"]
      443 RETURN                           R1 1
      444 JUMPIFNOTEQKN                    R0 K116 [111] ; [+3]
      446 LOADK                            R1 K100 ["Place"]
      447 RETURN                           R1 1
      448 JUMPIFNOTEQKN                    R0 K117 [112] ; [+3]
      450 LOADK                            R1 K100 ["Place"]
      451 RETURN                           R1 1
      452 JUMPIFNOTEQKN                    R0 K118 [113] ; [+3]
      454 LOADK                            R1 K100 ["Place"]
      455 RETURN                           R1 1
      456 JUMPIFNOTEQKN                    R0 K119 [114] ; [+3]
      458 LOADK                            R1 K100 ["Place"]
      459 RETURN                           R1 1
      460 JUMPIFNOTEQKN                    R0 K120 [115] ; [+3]
      462 LOADK                            R1 K100 ["Place"]
      463 RETURN                           R1 1
      464 JUMPIFNOTEQKN                    R0 K121 [116] ; [+3]
      466 LOADK                            R1 K1 ["Unknown"]
      467 RETURN                           R1 1
      468 JUMPIFNOTEQKN                    R0 K122 [117] ; [+3]
      470 LOADK                            R1 K100 ["Place"]
      471 RETURN                           R1 1
      472 JUMPIFNOTEQKN                    R0 K123 [118] ; [+3]
      474 LOADK                            R1 K124 ["Publish"]
      475 RETURN                           R1 1
      476 JUMPIFNOTEQKN                    R0 K125 [119] ; [+3]
      478 LOADK                            R1 K124 ["Publish"]
      479 RETURN                           R1 1
      480 JUMPIFNOTEQKN                    R0 K126 [120] ; [+3]
      482 LOADK                            R1 K124 ["Publish"]
      483 RETURN                           R1 1
      484 JUMPIFNOTEQKN                    R0 K127 [121] ; [+3]
      486 LOADK                            R1 K3 ["Experience"]
      487 RETURN                           R1 1
      488 JUMPIFNOTEQKN                    R0 K128 [122] ; [+3]
      490 LOADK                            R1 K69 ["Monetization"]
      491 RETURN                           R1 1
      492 JUMPIFNOTEQKN                    R0 K129 [123] ; [+3]
      494 LOADK                            R1 K3 ["Experience"]
      495 RETURN                           R1 1
      496 JUMPIFNOTEQKN                    R0 K130 [124] ; [+3]
      498 LOADK                            R1 K131 ["Package"]
      499 RETURN                           R1 1
      500 JUMPIFNOTEQKN                    R0 K132 [125] ; [+3]
      502 LOADK                            R1 K131 ["Package"]
      503 RETURN                           R1 1
      504 JUMPIFNOTEQKN                    R0 K133 [126] ; [+3]
      506 LOADK                            R1 K131 ["Package"]
      507 RETURN                           R1 1
      508 JUMPIFNOTEQKN                    R0 K134 [127] ; [+3]
      510 LOADK                            R1 K131 ["Package"]
      511 RETURN                           R1 1
      512 JUMPIFNOTEQKN                    R0 K135 [128] ; [+3]
      514 LOADK                            R1 K1 ["Unknown"]
      515 RETURN                           R1 1
      516 JUMPIFNOTEQKN                    R0 K136 [129] ; [+3]
      518 LOADK                            R1 K1 ["Unknown"]
      519 RETURN                           R1 1
      520 JUMPIFNOTEQKN                    R0 K137 [130] ; [+3]
      522 LOADK                            R1 K1 ["Unknown"]
      523 RETURN                           R1 1
      524 JUMPIFNOTEQKN                    R0 K138 [131] ; [+3]
      526 LOADK                            R1 K1 ["Unknown"]
      527 RETURN                           R1 1
      528 JUMPIFNOTEQKN                    R0 K139 [132] ; [+3]
      530 LOADK                            R1 K1 ["Unknown"]
      531 RETURN                           R1 1
      532 JUMPIFNOTEQKN                    R0 K140 [133] ; [+3]
      534 LOADK                            R1 K1 ["Unknown"]
      535 RETURN                           R1 1
      536 JUMPIFNOTEQKN                    R0 K141 [134] ; [+3]
      538 LOADK                            R1 K1 ["Unknown"]
      539 RETURN                           R1 1
      540 JUMPIFNOTEQKN                    R0 K142 [135] ; [+3]
      542 LOADK                            R1 K1 ["Unknown"]
      543 RETURN                           R1 1
      544 JUMPIFNOTEQKN                    R0 K143 [136] ; [+3]
      546 LOADK                            R1 K1 ["Unknown"]
      547 RETURN                           R1 1
      548 JUMPIFNOTEQKN                    R0 K144 [137] ; [+3]
      550 LOADK                            R1 K1 ["Unknown"]
      551 RETURN                           R1 1
      552 JUMPIFNOTEQKN                    R0 K145 [138] ; [+3]
      554 LOADK                            R1 K1 ["Unknown"]
      555 RETURN                           R1 1
      556 JUMPIFNOTEQKN                    R0 K146 [139] ; [+3]
      558 LOADK                            R1 K1 ["Unknown"]
      559 RETURN                           R1 1
      560 JUMPIFNOTEQKN                    R0 K147 [140] ; [+3]
      562 LOADK                            R1 K1 ["Unknown"]
      563 RETURN                           R1 1
      564 JUMPIFNOTEQKN                    R0 K148 [141] ; [+3]
      566 LOADK                            R1 K1 ["Unknown"]
      567 RETURN                           R1 1
      568 JUMPIFNOTEQKN                    R0 K149 [142] ; [+3]
      570 LOADK                            R1 K1 ["Unknown"]
      571 RETURN                           R1 1
      572 JUMPIFNOTEQKN                    R0 K150 [143] ; [+3]
      574 LOADK                            R1 K1 ["Unknown"]
      575 RETURN                           R1 1
      576 JUMPIFNOTEQKN                    R0 K151 [144] ; [+3]
      578 LOADK                            R1 K1 ["Unknown"]
      579 RETURN                           R1 1
      580 JUMPIFNOTEQKN                    R0 K152 [145] ; [+3]
      582 LOADK                            R1 K153 ["Scripts"]
      583 RETURN                           R1 1
      584 JUMPIFNOTEQKN                    R0 K154 [146] ; [+3]
      586 LOADK                            R1 K92 ["Permissions"]
      587 RETURN                           R1 1
      588 LOADK                            R1 K1 ["Unknown"]
      589 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedTypes"]
       17 CALL                             R1 1 1
       18 LOADK                            R2 K8 ["https://www.roblox.com/"]
       19 LOADK                            R3 K9 ["https://create.roblox.com/"]
       20 GETIMPORT                        R4 K11 [pcall]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R2
       24 CAPTURE                          REF R3
       25 CALL                             R4 1 0
       26 DUPCLOSURE                       R4 K12 [PROTO_1]
       27 DUPCLOSURE                       R5 K13 [PROTO_2]
       28 DUPCLOSURE                       R6 K14 [PROTO_3]
       29 DUPCLOSURE                       R7 K15 [PROTO_4]
       30 DUPCLOSURE                       R8 K16 [PROTO_5]
       31 SETGLOBAL                        R8 K17 ["joinStrings"]
       33 DUPCLOSURE                       R8 K18 [PROTO_6]
       34 SETGLOBAL                        R8 K19 ["getLink"]
       36 DUPCLOSURE                       R8 K20 [PROTO_7]
       37 DUPCLOSURE                       R9 K21 [PROTO_9]
       38 DUPCLOSURE                       R10 K22 [PROTO_10]
       39 DUPCLOSURE                       R11 K23 [PROTO_11]
       40 DUPCLOSURE                       R12 K24 [PROTO_13]
       41 NEWTABLE                         R13 0 5
       43 LOADK                            R14 K25 ["Computer"]
       44 LOADK                            R15 K26 ["Phone"]
       45 LOADK                            R16 K27 ["Tablet"]
       46 LOADK                            R17 K28 ["Console"]
       47 LOADK                            R18 K29 ["VR"]
       48 SETLIST                          R13 R14 5 [1]
       50 NEWTABLE                         R14 8 0
       52 LOADK                            R15 K30 ["DeviceType.Desktop"]
       53 SETTABLEKS                       R15 R14 K25 ["Computer"]
       55 LOADK                            R15 K31 ["DeviceType.Mobile"]
       56 SETTABLEKS                       R15 R14 K26 ["Phone"]
       58 LOADK                            R15 K32 ["DeviceType.Tablet"]
       59 SETTABLEKS                       R15 R14 K27 ["Tablet"]
       61 LOADK                            R15 K33 ["DeviceType.Console"]
       62 SETTABLEKS                       R15 R14 K28 ["Console"]
       64 LOADK                            R15 K34 ["DeviceType.VR"]
       65 SETTABLEKS                       R15 R14 K29 ["VR"]
       67 NEWCLOSURE                       R15 P12
       68 CAPTURE                          REF R3
       69 CAPTURE                          REF R2
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R14
       73 DUPCLOSURE                       R16 K35 [PROTO_23]
       74 DUPTABLE                         R17 K38 [{"translateEvent", "eventTypeToCategory"}]
       75 SETTABLEKS                       R15 R17 K36 ["translateEvent"]
       77 SETTABLEKS                       R16 R17 K37 ["eventTypeToCategory"]
       79 CLOSEUPVALS                      R2
       80 RETURN                           R17 1
