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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["metaData"]
        3 GETTABLEKS                       R3 R4 K0 ["Playability"]
        5 JUMPIFNOTEQKS                    R3 K2 ["Public"] ; [+5]
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K3 ["Description.ActionPublic"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+14]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K1 ["metaData"]
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
       55 GETTABLE                         R15 R5 R9
       56 GETTABLEKS                       R14 R15 K14 ["Name"]
       58 FASTCALL1                        TOSTRING R14 ; [+2]
       59 GETIMPORT                        R13 K16 [tostring]
       61 CALL                             R13 1 1
       62 LOADK                            R14 K17 ["TextButton"]
       63 LOADK                            R15 K0 [""]
       64 GETGLOBAL                        R16 K18 ["getLink"]
       66 LOADK                            R17 K19 ["explorer"]
       67 GETTABLE                         R20 R5 R9
       68 GETTABLEKS                       R19 R20 K20 ["UniqueId"]
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
       97 GETTABLE                         R15 R5 R9
       98 GETTABLEKS                       R14 R15 K14 ["Name"]
      100 FASTCALL1                        TOSTRING R14 ; [+2]
      101 GETIMPORT                        R13 K16 [tostring]
      103 CALL                             R13 1 1
      104 LOADK                            R14 K17 ["TextButton"]
      105 LOADK                            R15 K0 [""]
      106 GETGLOBAL                        R16 K18 ["getLink"]
      108 LOADK                            R17 K19 ["explorer"]
      109 GETTABLE                         R20 R5 R9
      110 GETTABLEKS                       R19 R20 K20 ["UniqueId"]
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
      138 GETTABLE                         R16 R5 R10
      139 GETTABLEKS                       R15 R16 K14 ["Name"]
      141 FASTCALL1                        TOSTRING R15 ; [+2]
      142 GETIMPORT                        R14 K16 [tostring]
      144 CALL                             R14 1 1
      145 LOADK                            R15 K17 ["TextButton"]
      146 LOADK                            R16 K0 [""]
      147 GETGLOBAL                        R17 K18 ["getLink"]
      149 LOADK                            R18 K19 ["explorer"]
      150 GETTABLE                         R21 R5 R10
      151 GETTABLEKS                       R20 R21 K20 ["UniqueId"]
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
      193 GETTABLE                         R15 R5 R9
      194 GETTABLEKS                       R14 R15 K14 ["Name"]
      196 FASTCALL1                        TOSTRING R14 ; [+2]
      197 GETIMPORT                        R13 K16 [tostring]
      199 CALL                             R13 1 1
      200 LOADK                            R14 K17 ["TextButton"]
      201 LOADK                            R15 K0 [""]
      202 GETGLOBAL                        R16 K18 ["getLink"]
      204 LOADK                            R17 K19 ["explorer"]
      205 GETTABLE                         R20 R5 R9
      206 GETTABLEKS                       R19 R20 K20 ["UniqueId"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["metaData"]
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
      135 JUMPIFNOTEQKN                    R18 K18 [0] ; [+63]
      137 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      138 GETTABLEKS                       R19 R2 K19 ["id"]
      140 SETTABLEKS                       R19 R18 K19 ["id"]
      142 LOADK                            R19 K30 ["Init"]
      143 SETTABLEKS                       R19 R18 K17 ["eventType"]
      145 LOADK                            R19 K31 ["Unknown"]
      146 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      148 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      150 GETIMPORT                        R21 K34 [pcall]
      152 NEWCLOSURE                       R22 P6
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R3
      155 CALL                             R21 1 2
      156 JUMPIFNOT                        R21 ; [+2]
      157 MOVE                             R19 R22
      158 JUMP                             ; [+2]
      159 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      160 JUMP                             ; [0]
      161 SETTABLEKS                       R19 R18 K21 ["date"]
      163 MOVE                             R19 R12
      164 LOADK                            R20 K36 ["Description.Init"]
      165 CALL                             R19 1 1
      166 SETTABLEKS                       R19 R18 K22 ["translation"]
      168 GETTABLEKS                       R19 R2 K14 ["userId"]
      170 SETTABLEKS                       R19 R18 K23 ["actorId"]
      172 MOVE                             R19 R0
      173 GETTABLEKS                       R20 R2 K14 ["userId"]
      175 CALL                             R19 1 1
      176 SETTABLEKS                       R19 R18 K24 ["actorName"]
      178 LOADK                            R19 K37 ["Universe"]
      179 SETTABLEKS                       R19 R18 K25 ["iconType"]
      181 GETTABLEKS                       R19 R2 K2 ["universeId"]
      183 JUMP                             ; [0]
      184 SETTABLEKS                       R19 R18 K26 ["iconId"]
      186 GETTABLEKS                       R19 R2 K2 ["universeId"]
      188 SETTABLEKS                       R19 R18 K2 ["universeId"]
      190 GETTABLEKS                       R19 R2 K27 ["headerText"]
      192 SETTABLEKS                       R19 R18 K27 ["headerText"]
      194 GETTABLEKS                       R19 R2 K28 ["footerText"]
      196 SETTABLEKS                       R19 R18 K28 ["footerText"]
      198 RETURN                           R18 1
      199 GETTABLEKS                       R18 R2 K17 ["eventType"]
      201 JUMPIFNOTEQKN                    R18 K38 [1] ; [+90]
      203 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      204 GETTABLEKS                       R19 R2 K19 ["id"]
      206 SETTABLEKS                       R19 R18 K19 ["id"]
      208 LOADK                            R19 K39 ["ArchivedExperience"]
      209 SETTABLEKS                       R19 R18 K17 ["eventType"]
      211 LOADK                            R19 K40 ["Experience"]
      212 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      214 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      216 GETIMPORT                        R21 K34 [pcall]
      218 NEWCLOSURE                       R22 P6
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R3
      221 CALL                             R21 1 2
      222 JUMPIFNOT                        R21 ; [+2]
      223 MOVE                             R19 R22
      224 JUMP                             ; [+2]
      225 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      226 JUMP                             ; [0]
      227 SETTABLEKS                       R19 R18 K21 ["date"]
      229 GETTABLEKS                       R22 R2 K41 ["metaData"]
      231 JUMPIFNOT                        R22 ; [+5]
      232 GETTABLEKS                       R22 R2 K41 ["metaData"]
      234 GETTABLEKS                       R21 R22 K42 ["Action"]
      236 JUMPIF                           R21 ; [+1]
      237 LOADK                            R21 K43 [""]
      238 GETIMPORT                        R22 K46 [string.lower]
      240 FASTCALL1                        TOSTRING R21 ; [+3]
      241 MOVE                             R24 R21
      242 GETIMPORT                        R23 K4 [tostring]
      244 CALL                             R23 1 1
      245 CALL                             R22 1 1
      246 JUMPIFNOTEQKS                    R22 K47 ["true"] ; [+3]
      248 LOADB                            R20 1
      249 JUMP                             ; [+1]
      250 LOADB                            R20 0
      251 JUMPIFNOT                        R20 ; [+4]
      252 MOVE                             R19 R12
      253 LOADK                            R20 K48 ["Description.ArchivedExperience"]
      254 CALL                             R19 1 1
      255 JUMPIF                           R19 ; [+3]
      256 MOVE                             R19 R12
      257 LOADK                            R20 K49 ["Description.RestoredExperience"]
      258 CALL                             R19 1 1
      259 SETTABLEKS                       R19 R18 K22 ["translation"]
      261 GETTABLEKS                       R19 R2 K14 ["userId"]
      263 SETTABLEKS                       R19 R18 K23 ["actorId"]
      265 MOVE                             R19 R0
      266 GETTABLEKS                       R20 R2 K14 ["userId"]
      268 CALL                             R19 1 1
      269 SETTABLEKS                       R19 R18 K24 ["actorName"]
      271 LOADK                            R19 K37 ["Universe"]
      272 SETTABLEKS                       R19 R18 K25 ["iconType"]
      274 GETTABLEKS                       R19 R2 K2 ["universeId"]
      276 JUMP                             ; [0]
      277 SETTABLEKS                       R19 R18 K26 ["iconId"]
      279 GETTABLEKS                       R19 R2 K2 ["universeId"]
      281 SETTABLEKS                       R19 R18 K2 ["universeId"]
      283 GETTABLEKS                       R19 R2 K27 ["headerText"]
      285 SETTABLEKS                       R19 R18 K27 ["headerText"]
      287 GETTABLEKS                       R19 R2 K28 ["footerText"]
      289 SETTABLEKS                       R19 R18 K28 ["footerText"]
      291 RETURN                           R18 1
      292 GETTABLEKS                       R18 R2 K17 ["eventType"]
      294 JUMPIFNOTEQKN                    R18 K50 [2] ; [+111]
      296 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      297 GETTABLEKS                       R19 R2 K19 ["id"]
      299 SETTABLEKS                       R19 R18 K19 ["id"]
      301 LOADK                            R19 K53 ["PlayabilityChanged"]
      302 SETTABLEKS                       R19 R18 K17 ["eventType"]
      304 LOADK                            R19 K40 ["Experience"]
      305 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      307 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      309 GETIMPORT                        R21 K34 [pcall]
      311 NEWCLOSURE                       R22 P6
      312 CAPTURE                          VAL R20
      313 CAPTURE                          VAL R3
      314 CALL                             R21 1 2
      315 JUMPIFNOT                        R21 ; [+2]
      316 MOVE                             R19 R22
      317 JUMP                             ; [+2]
      318 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      319 JUMP                             ; [0]
      320 SETTABLEKS                       R19 R18 K21 ["date"]
      322 MOVE                             R19 R12
      323 LOADK                            R20 K54 ["Description.PlayabilityChanged"]
      324 DUPTABLE                         R21 K56 [{"playability"}]
      325 GETTABLEKS                       R23 R2 K41 ["metaData"]
      327 GETTABLEKS                       R26 R2 K41 ["metaData"]
      329 GETTABLEKS                       R25 R26 K57 ["Playability"]
      331 JUMPIFNOTEQKS                    R25 K58 ["Public"] ; [+5]
      333 MOVE                             R24 R12
      334 LOADK                            R25 K59 ["Description.ActionPublic"]
      335 CALL                             R24 1 1
      336 JUMPIF                           R24 ; [+13]
      337 GETTABLEKS                       R26 R2 K41 ["metaData"]
      339 GETTABLEKS                       R25 R26 K57 ["Playability"]
      341 JUMPIFNOTEQKS                    R25 K60 ["Private"] ; [+5]
      343 MOVE                             R24 R12
      344 LOADK                            R25 K61 ["Description.ActionPrivate"]
      345 CALL                             R24 1 1
      346 JUMPIF                           R24 ; [+3]
      347 MOVE                             R24 R12
      348 LOADK                            R25 K62 ["Description.ActionFriends"]
      349 CALL                             R24 1 1
      350 LOADK                            R25 K43 [""]
      351 FASTCALL1                        TOSTRING R24 ; [+3]
      352 MOVE                             R29 R24
      353 GETIMPORT                        R28 K4 [tostring]
      355 CALL                             R28 1 1
      356 MOVE                             R26 R28
      357 LOADK                            R27 K43 [""]
      358 CONCAT                           R22 R25 R27
      359 SETTABLEKS                       R22 R21 K55 ["playability"]
      361 CALL                             R19 2 1
      362 SETTABLEKS                       R19 R18 K22 ["translation"]
      364 GETTABLEKS                       R19 R2 K14 ["userId"]
      366 SETTABLEKS                       R19 R18 K23 ["actorId"]
      368 MOVE                             R19 R0
      369 GETTABLEKS                       R20 R2 K14 ["userId"]
      371 CALL                             R19 1 1
      372 SETTABLEKS                       R19 R18 K24 ["actorName"]
      374 LOADK                            R19 K37 ["Universe"]
      375 SETTABLEKS                       R19 R18 K25 ["iconType"]
      377 GETTABLEKS                       R19 R2 K2 ["universeId"]
      379 JUMP                             ; [0]
      380 SETTABLEKS                       R19 R18 K26 ["iconId"]
      382 GETTABLEKS                       R19 R2 K2 ["universeId"]
      384 SETTABLEKS                       R19 R18 K2 ["universeId"]
      386 GETTABLEKS                       R19 R2 K27 ["headerText"]
      388 SETTABLEKS                       R19 R18 K27 ["headerText"]
      390 GETTABLEKS                       R19 R2 K28 ["footerText"]
      392 SETTABLEKS                       R19 R18 K28 ["footerText"]
      394 LOADK                            R20 K43 [""]
      395 FASTCALL1                        TOSTRING R4 ; [+3]
      396 MOVE                             R24 R4
      397 GETIMPORT                        R23 K4 [tostring]
      399 CALL                             R23 1 1
      400 MOVE                             R21 R23
      401 LOADK                            R22 K11 ["/configure"]
      402 CONCAT                           R19 R20 R22
      403 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      405 RETURN                           R18 1
      406 GETTABLEKS                       R18 R2 K17 ["eventType"]
      408 JUMPIFNOTEQKN                    R18 K63 [3] ; [+95]
      410 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      411 GETTABLEKS                       R19 R2 K19 ["id"]
      413 SETTABLEKS                       R19 R18 K19 ["id"]
      415 LOADK                            R19 K64 ["NotificationStringCreated"]
      416 SETTABLEKS                       R19 R18 K17 ["eventType"]
      418 LOADK                            R19 K40 ["Experience"]
      419 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      421 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      423 GETIMPORT                        R21 K34 [pcall]
      425 NEWCLOSURE                       R22 P6
      426 CAPTURE                          VAL R20
      427 CAPTURE                          VAL R3
      428 CALL                             R21 1 2
      429 JUMPIFNOT                        R21 ; [+2]
      430 MOVE                             R19 R22
      431 JUMP                             ; [+2]
      432 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      433 JUMP                             ; [0]
      434 SETTABLEKS                       R19 R18 K21 ["date"]
      436 MOVE                             R19 R12
      437 LOADK                            R20 K65 ["Description.NotificationStringCreated"]
      438 DUPTABLE                         R21 K67 [{"stringName"}]
      439 GETTABLEKS                       R24 R2 K41 ["metaData"]
      441 JUMPIFNOT                        R24 ; [+5]
      442 GETTABLEKS                       R24 R2 K41 ["metaData"]
      444 GETTABLEKS                       R23 R24 K68 ["StringName"]
      446 JUMPIF                           R23 ; [+1]
      447 LOADK                            R23 K43 [""]
      448 LOADK                            R24 K43 [""]
      449 FASTCALL1                        TOSTRING R23 ; [+3]
      450 MOVE                             R28 R23
      451 GETIMPORT                        R27 K4 [tostring]
      453 CALL                             R27 1 1
      454 MOVE                             R25 R27
      455 LOADK                            R26 K43 [""]
      456 CONCAT                           R22 R24 R26
      457 SETTABLEKS                       R22 R21 K66 ["stringName"]
      459 CALL                             R19 2 1
      460 SETTABLEKS                       R19 R18 K22 ["translation"]
      462 GETTABLEKS                       R19 R2 K14 ["userId"]
      464 SETTABLEKS                       R19 R18 K23 ["actorId"]
      466 MOVE                             R19 R0
      467 GETTABLEKS                       R20 R2 K14 ["userId"]
      469 CALL                             R19 1 1
      470 SETTABLEKS                       R19 R18 K24 ["actorName"]
      472 LOADK                            R19 K37 ["Universe"]
      473 SETTABLEKS                       R19 R18 K25 ["iconType"]
      475 GETTABLEKS                       R19 R2 K2 ["universeId"]
      477 JUMP                             ; [0]
      478 SETTABLEKS                       R19 R18 K26 ["iconId"]
      480 GETTABLEKS                       R19 R2 K2 ["universeId"]
      482 SETTABLEKS                       R19 R18 K2 ["universeId"]
      484 GETTABLEKS                       R19 R2 K27 ["headerText"]
      486 SETTABLEKS                       R19 R18 K27 ["headerText"]
      488 GETTABLEKS                       R19 R2 K28 ["footerText"]
      490 SETTABLEKS                       R19 R18 K28 ["footerText"]
      492 LOADK                            R20 K43 [""]
      493 FASTCALL1                        TOSTRING R4 ; [+3]
      494 MOVE                             R24 R4
      495 GETIMPORT                        R23 K4 [tostring]
      497 CALL                             R23 1 1
      498 MOVE                             R21 R23
      499 LOADK                            R22 K69 ["/notifications"]
      500 CONCAT                           R19 R20 R22
      501 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      503 RETURN                           R18 1
      504 GETTABLEKS                       R18 R2 K17 ["eventType"]
      506 JUMPIFNOTEQKN                    R18 K70 [4] ; [+95]
      508 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      509 GETTABLEKS                       R19 R2 K19 ["id"]
      511 SETTABLEKS                       R19 R18 K19 ["id"]
      513 LOADK                            R19 K71 ["NotificationStringDeleted"]
      514 SETTABLEKS                       R19 R18 K17 ["eventType"]
      516 LOADK                            R19 K40 ["Experience"]
      517 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      519 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      521 GETIMPORT                        R21 K34 [pcall]
      523 NEWCLOSURE                       R22 P6
      524 CAPTURE                          VAL R20
      525 CAPTURE                          VAL R3
      526 CALL                             R21 1 2
      527 JUMPIFNOT                        R21 ; [+2]
      528 MOVE                             R19 R22
      529 JUMP                             ; [+2]
      530 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      531 JUMP                             ; [0]
      532 SETTABLEKS                       R19 R18 K21 ["date"]
      534 MOVE                             R19 R12
      535 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
      536 DUPTABLE                         R21 K67 [{"stringName"}]
      537 GETTABLEKS                       R24 R2 K41 ["metaData"]
      539 JUMPIFNOT                        R24 ; [+5]
      540 GETTABLEKS                       R24 R2 K41 ["metaData"]
      542 GETTABLEKS                       R23 R24 K68 ["StringName"]
      544 JUMPIF                           R23 ; [+1]
      545 LOADK                            R23 K43 [""]
      546 LOADK                            R24 K43 [""]
      547 FASTCALL1                        TOSTRING R23 ; [+3]
      548 MOVE                             R28 R23
      549 GETIMPORT                        R27 K4 [tostring]
      551 CALL                             R27 1 1
      552 MOVE                             R25 R27
      553 LOADK                            R26 K43 [""]
      554 CONCAT                           R22 R24 R26
      555 SETTABLEKS                       R22 R21 K66 ["stringName"]
      557 CALL                             R19 2 1
      558 SETTABLEKS                       R19 R18 K22 ["translation"]
      560 GETTABLEKS                       R19 R2 K14 ["userId"]
      562 SETTABLEKS                       R19 R18 K23 ["actorId"]
      564 MOVE                             R19 R0
      565 GETTABLEKS                       R20 R2 K14 ["userId"]
      567 CALL                             R19 1 1
      568 SETTABLEKS                       R19 R18 K24 ["actorName"]
      570 LOADK                            R19 K37 ["Universe"]
      571 SETTABLEKS                       R19 R18 K25 ["iconType"]
      573 GETTABLEKS                       R19 R2 K2 ["universeId"]
      575 JUMP                             ; [0]
      576 SETTABLEKS                       R19 R18 K26 ["iconId"]
      578 GETTABLEKS                       R19 R2 K2 ["universeId"]
      580 SETTABLEKS                       R19 R18 K2 ["universeId"]
      582 GETTABLEKS                       R19 R2 K27 ["headerText"]
      584 SETTABLEKS                       R19 R18 K27 ["headerText"]
      586 GETTABLEKS                       R19 R2 K28 ["footerText"]
      588 SETTABLEKS                       R19 R18 K28 ["footerText"]
      590 LOADK                            R20 K43 [""]
      591 FASTCALL1                        TOSTRING R4 ; [+3]
      592 MOVE                             R24 R4
      593 GETIMPORT                        R23 K4 [tostring]
      595 CALL                             R23 1 1
      596 MOVE                             R21 R23
      597 LOADK                            R22 K69 ["/notifications"]
      598 CONCAT                           R19 R20 R22
      599 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      601 RETURN                           R18 1
      602 GETTABLEKS                       R18 R2 K17 ["eventType"]
      604 JUMPIFNOTEQKN                    R18 K73 [5] ; [+95]
      606 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      607 GETTABLEKS                       R19 R2 K19 ["id"]
      609 SETTABLEKS                       R19 R18 K19 ["id"]
      611 LOADK                            R19 K74 ["NotificationStringUpdated"]
      612 SETTABLEKS                       R19 R18 K17 ["eventType"]
      614 LOADK                            R19 K40 ["Experience"]
      615 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      617 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      619 GETIMPORT                        R21 K34 [pcall]
      621 NEWCLOSURE                       R22 P6
      622 CAPTURE                          VAL R20
      623 CAPTURE                          VAL R3
      624 CALL                             R21 1 2
      625 JUMPIFNOT                        R21 ; [+2]
      626 MOVE                             R19 R22
      627 JUMP                             ; [+2]
      628 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      629 JUMP                             ; [0]
      630 SETTABLEKS                       R19 R18 K21 ["date"]
      632 MOVE                             R19 R12
      633 LOADK                            R20 K75 ["Description.NotificationStringUpdated"]
      634 DUPTABLE                         R21 K67 [{"stringName"}]
      635 GETTABLEKS                       R24 R2 K41 ["metaData"]
      637 JUMPIFNOT                        R24 ; [+5]
      638 GETTABLEKS                       R24 R2 K41 ["metaData"]
      640 GETTABLEKS                       R23 R24 K68 ["StringName"]
      642 JUMPIF                           R23 ; [+1]
      643 LOADK                            R23 K43 [""]
      644 LOADK                            R24 K43 [""]
      645 FASTCALL1                        TOSTRING R23 ; [+3]
      646 MOVE                             R28 R23
      647 GETIMPORT                        R27 K4 [tostring]
      649 CALL                             R27 1 1
      650 MOVE                             R25 R27
      651 LOADK                            R26 K43 [""]
      652 CONCAT                           R22 R24 R26
      653 SETTABLEKS                       R22 R21 K66 ["stringName"]
      655 CALL                             R19 2 1
      656 SETTABLEKS                       R19 R18 K22 ["translation"]
      658 GETTABLEKS                       R19 R2 K14 ["userId"]
      660 SETTABLEKS                       R19 R18 K23 ["actorId"]
      662 MOVE                             R19 R0
      663 GETTABLEKS                       R20 R2 K14 ["userId"]
      665 CALL                             R19 1 1
      666 SETTABLEKS                       R19 R18 K24 ["actorName"]
      668 LOADK                            R19 K37 ["Universe"]
      669 SETTABLEKS                       R19 R18 K25 ["iconType"]
      671 GETTABLEKS                       R19 R2 K2 ["universeId"]
      673 JUMP                             ; [0]
      674 SETTABLEKS                       R19 R18 K26 ["iconId"]
      676 GETTABLEKS                       R19 R2 K2 ["universeId"]
      678 SETTABLEKS                       R19 R18 K2 ["universeId"]
      680 GETTABLEKS                       R19 R2 K27 ["headerText"]
      682 SETTABLEKS                       R19 R18 K27 ["headerText"]
      684 GETTABLEKS                       R19 R2 K28 ["footerText"]
      686 SETTABLEKS                       R19 R18 K28 ["footerText"]
      688 LOADK                            R20 K43 [""]
      689 FASTCALL1                        TOSTRING R4 ; [+3]
      690 MOVE                             R24 R4
      691 GETIMPORT                        R23 K4 [tostring]
      693 CALL                             R23 1 1
      694 MOVE                             R21 R23
      695 LOADK                            R22 K69 ["/notifications"]
      696 CONCAT                           R19 R20 R22
      697 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      699 RETURN                           R18 1
      700 GETTABLEKS                       R18 R2 K17 ["eventType"]
      702 JUMPIFNOTEQKN                    R18 K76 [6] ; [+84]
      704 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      705 GETTABLEKS                       R19 R2 K19 ["id"]
      707 SETTABLEKS                       R19 R18 K19 ["id"]
      709 LOADK                            R19 K77 ["AvatarSettingsAvatarType"]
      710 SETTABLEKS                       R19 R18 K17 ["eventType"]
      712 LOADK                            R19 K40 ["Experience"]
      713 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      715 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      717 GETIMPORT                        R21 K34 [pcall]
      719 NEWCLOSURE                       R22 P6
      720 CAPTURE                          VAL R20
      721 CAPTURE                          VAL R3
      722 CALL                             R21 1 2
      723 JUMPIFNOT                        R21 ; [+2]
      724 MOVE                             R19 R22
      725 JUMP                             ; [+2]
      726 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      727 JUMP                             ; [0]
      728 SETTABLEKS                       R19 R18 K21 ["date"]
      730 MOVE                             R19 R12
      731 LOADK                            R20 K78 ["Description.AvatarSettingsAvatarType"]
      732 DUPTABLE                         R21 K80 [{"avatarType"}]
      733 GETTABLEKS                       R24 R2 K41 ["metaData"]
      735 JUMPIFNOT                        R24 ; [+5]
      736 GETTABLEKS                       R24 R2 K41 ["metaData"]
      738 GETTABLEKS                       R23 R24 K81 ["AvatarType"]
      740 JUMPIF                           R23 ; [+1]
      741 LOADK                            R23 K43 [""]
      742 LOADK                            R24 K43 [""]
      743 FASTCALL1                        TOSTRING R23 ; [+3]
      744 MOVE                             R28 R23
      745 GETIMPORT                        R27 K4 [tostring]
      747 CALL                             R27 1 1
      748 MOVE                             R25 R27
      749 LOADK                            R26 K43 [""]
      750 CONCAT                           R22 R24 R26
      751 SETTABLEKS                       R22 R21 K79 ["avatarType"]
      753 CALL                             R19 2 1
      754 SETTABLEKS                       R19 R18 K22 ["translation"]
      756 GETTABLEKS                       R19 R2 K14 ["userId"]
      758 SETTABLEKS                       R19 R18 K23 ["actorId"]
      760 MOVE                             R19 R0
      761 GETTABLEKS                       R20 R2 K14 ["userId"]
      763 CALL                             R19 1 1
      764 SETTABLEKS                       R19 R18 K24 ["actorName"]
      766 LOADK                            R19 K37 ["Universe"]
      767 SETTABLEKS                       R19 R18 K25 ["iconType"]
      769 GETTABLEKS                       R19 R2 K2 ["universeId"]
      771 JUMP                             ; [0]
      772 SETTABLEKS                       R19 R18 K26 ["iconId"]
      774 GETTABLEKS                       R19 R2 K2 ["universeId"]
      776 SETTABLEKS                       R19 R18 K2 ["universeId"]
      778 GETTABLEKS                       R19 R2 K27 ["headerText"]
      780 SETTABLEKS                       R19 R18 K27 ["headerText"]
      782 GETTABLEKS                       R19 R2 K28 ["footerText"]
      784 SETTABLEKS                       R19 R18 K28 ["footerText"]
      786 RETURN                           R18 1
      787 GETTABLEKS                       R18 R2 K17 ["eventType"]
      789 JUMPIFNOTEQKN                    R18 K82 [7] ; [+84]
      791 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      792 GETTABLEKS                       R19 R2 K19 ["id"]
      794 SETTABLEKS                       R19 R18 K19 ["id"]
      796 LOADK                            R19 K83 ["AvatarSettingsAnimation"]
      797 SETTABLEKS                       R19 R18 K17 ["eventType"]
      799 LOADK                            R19 K40 ["Experience"]
      800 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      802 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      804 GETIMPORT                        R21 K34 [pcall]
      806 NEWCLOSURE                       R22 P6
      807 CAPTURE                          VAL R20
      808 CAPTURE                          VAL R3
      809 CALL                             R21 1 2
      810 JUMPIFNOT                        R21 ; [+2]
      811 MOVE                             R19 R22
      812 JUMP                             ; [+2]
      813 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      814 JUMP                             ; [0]
      815 SETTABLEKS                       R19 R18 K21 ["date"]
      817 MOVE                             R19 R12
      818 LOADK                            R20 K84 ["Description.AvatarSettingsAnimation"]
      819 DUPTABLE                         R21 K86 [{"animation"}]
      820 GETTABLEKS                       R24 R2 K41 ["metaData"]
      822 JUMPIFNOT                        R24 ; [+5]
      823 GETTABLEKS                       R24 R2 K41 ["metaData"]
      825 GETTABLEKS                       R23 R24 K87 ["Animation"]
      827 JUMPIF                           R23 ; [+1]
      828 LOADK                            R23 K43 [""]
      829 LOADK                            R24 K43 [""]
      830 FASTCALL1                        TOSTRING R23 ; [+3]
      831 MOVE                             R28 R23
      832 GETIMPORT                        R27 K4 [tostring]
      834 CALL                             R27 1 1
      835 MOVE                             R25 R27
      836 LOADK                            R26 K43 [""]
      837 CONCAT                           R22 R24 R26
      838 SETTABLEKS                       R22 R21 K85 ["animation"]
      840 CALL                             R19 2 1
      841 SETTABLEKS                       R19 R18 K22 ["translation"]
      843 GETTABLEKS                       R19 R2 K14 ["userId"]
      845 SETTABLEKS                       R19 R18 K23 ["actorId"]
      847 MOVE                             R19 R0
      848 GETTABLEKS                       R20 R2 K14 ["userId"]
      850 CALL                             R19 1 1
      851 SETTABLEKS                       R19 R18 K24 ["actorName"]
      853 LOADK                            R19 K37 ["Universe"]
      854 SETTABLEKS                       R19 R18 K25 ["iconType"]
      856 GETTABLEKS                       R19 R2 K2 ["universeId"]
      858 JUMP                             ; [0]
      859 SETTABLEKS                       R19 R18 K26 ["iconId"]
      861 GETTABLEKS                       R19 R2 K2 ["universeId"]
      863 SETTABLEKS                       R19 R18 K2 ["universeId"]
      865 GETTABLEKS                       R19 R2 K27 ["headerText"]
      867 SETTABLEKS                       R19 R18 K27 ["headerText"]
      869 GETTABLEKS                       R19 R2 K28 ["footerText"]
      871 SETTABLEKS                       R19 R18 K28 ["footerText"]
      873 RETURN                           R18 1
      874 GETTABLEKS                       R18 R2 K17 ["eventType"]
      876 JUMPIFNOTEQKN                    R18 K88 [8] ; [+84]
      878 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      879 GETTABLEKS                       R19 R2 K19 ["id"]
      881 SETTABLEKS                       R19 R18 K19 ["id"]
      883 LOADK                            R19 K89 ["AvatarSettingsCollision"]
      884 SETTABLEKS                       R19 R18 K17 ["eventType"]
      886 LOADK                            R19 K40 ["Experience"]
      887 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      889 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      891 GETIMPORT                        R21 K34 [pcall]
      893 NEWCLOSURE                       R22 P6
      894 CAPTURE                          VAL R20
      895 CAPTURE                          VAL R3
      896 CALL                             R21 1 2
      897 JUMPIFNOT                        R21 ; [+2]
      898 MOVE                             R19 R22
      899 JUMP                             ; [+2]
      900 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      901 JUMP                             ; [0]
      902 SETTABLEKS                       R19 R18 K21 ["date"]
      904 MOVE                             R19 R12
      905 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
      906 DUPTABLE                         R21 K92 [{"collision"}]
      907 GETTABLEKS                       R24 R2 K41 ["metaData"]
      909 JUMPIFNOT                        R24 ; [+5]
      910 GETTABLEKS                       R24 R2 K41 ["metaData"]
      912 GETTABLEKS                       R23 R24 K93 ["Collision"]
      914 JUMPIF                           R23 ; [+1]
      915 LOADK                            R23 K43 [""]
      916 LOADK                            R24 K43 [""]
      917 FASTCALL1                        TOSTRING R23 ; [+3]
      918 MOVE                             R28 R23
      919 GETIMPORT                        R27 K4 [tostring]
      921 CALL                             R27 1 1
      922 MOVE                             R25 R27
      923 LOADK                            R26 K43 [""]
      924 CONCAT                           R22 R24 R26
      925 SETTABLEKS                       R22 R21 K91 ["collision"]
      927 CALL                             R19 2 1
      928 SETTABLEKS                       R19 R18 K22 ["translation"]
      930 GETTABLEKS                       R19 R2 K14 ["userId"]
      932 SETTABLEKS                       R19 R18 K23 ["actorId"]
      934 MOVE                             R19 R0
      935 GETTABLEKS                       R20 R2 K14 ["userId"]
      937 CALL                             R19 1 1
      938 SETTABLEKS                       R19 R18 K24 ["actorName"]
      940 LOADK                            R19 K37 ["Universe"]
      941 SETTABLEKS                       R19 R18 K25 ["iconType"]
      943 GETTABLEKS                       R19 R2 K2 ["universeId"]
      945 JUMP                             ; [0]
      946 SETTABLEKS                       R19 R18 K26 ["iconId"]
      948 GETTABLEKS                       R19 R2 K2 ["universeId"]
      950 SETTABLEKS                       R19 R18 K2 ["universeId"]
      952 GETTABLEKS                       R19 R2 K27 ["headerText"]
      954 SETTABLEKS                       R19 R18 K27 ["headerText"]
      956 GETTABLEKS                       R19 R2 K28 ["footerText"]
      958 SETTABLEKS                       R19 R18 K28 ["footerText"]
      960 RETURN                           R18 1
      961 GETTABLEKS                       R18 R2 K17 ["eventType"]
      963 JUMPIFNOTEQKN                    R18 K94 [9] ; [+84]
      965 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      966 GETTABLEKS                       R19 R2 K19 ["id"]
      968 SETTABLEKS                       R19 R18 K19 ["id"]
      970 LOADK                            R19 K95 ["AvatarSettingsScaleHeight"]
      971 SETTABLEKS                       R19 R18 K17 ["eventType"]
      973 LOADK                            R19 K40 ["Experience"]
      974 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      976 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      978 GETIMPORT                        R21 K34 [pcall]
      980 NEWCLOSURE                       R22 P6
      981 CAPTURE                          VAL R20
      982 CAPTURE                          VAL R3
      983 CALL                             R21 1 2
      984 JUMPIFNOT                        R21 ; [+2]
      985 MOVE                             R19 R22
      986 JUMP                             ; [+2]
      987 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      988 JUMP                             ; [0]
      989 SETTABLEKS                       R19 R18 K21 ["date"]
      991 MOVE                             R19 R12
      992 LOADK                            R20 K96 ["Description.AvatarSettingsScaleHeight"]
      993 DUPTABLE                         R21 K98 [{"scale"}]
      994 GETTABLEKS                       R24 R2 K41 ["metaData"]
      996 JUMPIFNOT                        R24 ; [+5]
      997 GETTABLEKS                       R24 R2 K41 ["metaData"]
      999 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1001 JUMPIF                           R23 ; [+1]
     1002 LOADK                            R23 K43 [""]
     1003 LOADK                            R24 K43 [""]
     1004 FASTCALL1                        TOSTRING R23 ; [+3]
     1005 MOVE                             R28 R23
     1006 GETIMPORT                        R27 K4 [tostring]
     1008 CALL                             R27 1 1
     1009 MOVE                             R25 R27
     1010 LOADK                            R26 K43 [""]
     1011 CONCAT                           R22 R24 R26
     1012 SETTABLEKS                       R22 R21 K97 ["scale"]
     1014 CALL                             R19 2 1
     1015 SETTABLEKS                       R19 R18 K22 ["translation"]
     1017 GETTABLEKS                       R19 R2 K14 ["userId"]
     1019 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1021 MOVE                             R19 R0
     1022 GETTABLEKS                       R20 R2 K14 ["userId"]
     1024 CALL                             R19 1 1
     1025 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1027 LOADK                            R19 K37 ["Universe"]
     1028 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1030 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1032 JUMP                             ; [0]
     1033 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1035 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1037 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1039 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1041 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1043 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1045 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1047 RETURN                           R18 1
     1048 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1050 JUMPIFNOTEQKN                    R18 K100 [10] ; [+84]
     1052 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1053 GETTABLEKS                       R19 R2 K19 ["id"]
     1055 SETTABLEKS                       R19 R18 K19 ["id"]
     1057 LOADK                            R19 K101 ["AvatarSettingsScaleWidth"]
     1058 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1060 LOADK                            R19 K40 ["Experience"]
     1061 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1063 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1065 GETIMPORT                        R21 K34 [pcall]
     1067 NEWCLOSURE                       R22 P6
     1068 CAPTURE                          VAL R20
     1069 CAPTURE                          VAL R3
     1070 CALL                             R21 1 2
     1071 JUMPIFNOT                        R21 ; [+2]
     1072 MOVE                             R19 R22
     1073 JUMP                             ; [+2]
     1074 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1075 JUMP                             ; [0]
     1076 SETTABLEKS                       R19 R18 K21 ["date"]
     1078 MOVE                             R19 R12
     1079 LOADK                            R20 K102 ["Description.AvatarSettingsScaleWidth"]
     1080 DUPTABLE                         R21 K98 [{"scale"}]
     1081 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1083 JUMPIFNOT                        R24 ; [+5]
     1084 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1086 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1088 JUMPIF                           R23 ; [+1]
     1089 LOADK                            R23 K43 [""]
     1090 LOADK                            R24 K43 [""]
     1091 FASTCALL1                        TOSTRING R23 ; [+3]
     1092 MOVE                             R28 R23
     1093 GETIMPORT                        R27 K4 [tostring]
     1095 CALL                             R27 1 1
     1096 MOVE                             R25 R27
     1097 LOADK                            R26 K43 [""]
     1098 CONCAT                           R22 R24 R26
     1099 SETTABLEKS                       R22 R21 K97 ["scale"]
     1101 CALL                             R19 2 1
     1102 SETTABLEKS                       R19 R18 K22 ["translation"]
     1104 GETTABLEKS                       R19 R2 K14 ["userId"]
     1106 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1108 MOVE                             R19 R0
     1109 GETTABLEKS                       R20 R2 K14 ["userId"]
     1111 CALL                             R19 1 1
     1112 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1114 LOADK                            R19 K37 ["Universe"]
     1115 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1117 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1119 JUMP                             ; [0]
     1120 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1122 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1124 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1126 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1128 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1130 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1132 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1134 RETURN                           R18 1
     1135 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1137 JUMPIFNOTEQKN                    R18 K103 [11] ; [+84]
     1139 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1140 GETTABLEKS                       R19 R2 K19 ["id"]
     1142 SETTABLEKS                       R19 R18 K19 ["id"]
     1144 LOADK                            R19 K104 ["AvatarSettingsScaleHead"]
     1145 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1147 LOADK                            R19 K40 ["Experience"]
     1148 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1150 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1152 GETIMPORT                        R21 K34 [pcall]
     1154 NEWCLOSURE                       R22 P6
     1155 CAPTURE                          VAL R20
     1156 CAPTURE                          VAL R3
     1157 CALL                             R21 1 2
     1158 JUMPIFNOT                        R21 ; [+2]
     1159 MOVE                             R19 R22
     1160 JUMP                             ; [+2]
     1161 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1162 JUMP                             ; [0]
     1163 SETTABLEKS                       R19 R18 K21 ["date"]
     1165 MOVE                             R19 R12
     1166 LOADK                            R20 K105 ["Description.AvatarSettingsScaleHead"]
     1167 DUPTABLE                         R21 K98 [{"scale"}]
     1168 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1170 JUMPIFNOT                        R24 ; [+5]
     1171 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1173 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1175 JUMPIF                           R23 ; [+1]
     1176 LOADK                            R23 K43 [""]
     1177 LOADK                            R24 K43 [""]
     1178 FASTCALL1                        TOSTRING R23 ; [+3]
     1179 MOVE                             R28 R23
     1180 GETIMPORT                        R27 K4 [tostring]
     1182 CALL                             R27 1 1
     1183 MOVE                             R25 R27
     1184 LOADK                            R26 K43 [""]
     1185 CONCAT                           R22 R24 R26
     1186 SETTABLEKS                       R22 R21 K97 ["scale"]
     1188 CALL                             R19 2 1
     1189 SETTABLEKS                       R19 R18 K22 ["translation"]
     1191 GETTABLEKS                       R19 R2 K14 ["userId"]
     1193 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1195 MOVE                             R19 R0
     1196 GETTABLEKS                       R20 R2 K14 ["userId"]
     1198 CALL                             R19 1 1
     1199 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1201 LOADK                            R19 K37 ["Universe"]
     1202 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1204 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1206 JUMP                             ; [0]
     1207 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1209 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1211 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1213 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1215 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1217 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1219 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1221 RETURN                           R18 1
     1222 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1224 JUMPIFNOTEQKN                    R18 K106 [12] ; [+84]
     1226 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1227 GETTABLEKS                       R19 R2 K19 ["id"]
     1229 SETTABLEKS                       R19 R18 K19 ["id"]
     1231 LOADK                            R19 K107 ["AvatarSettingsScaleBodyType"]
     1232 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1234 LOADK                            R19 K40 ["Experience"]
     1235 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1237 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1239 GETIMPORT                        R21 K34 [pcall]
     1241 NEWCLOSURE                       R22 P6
     1242 CAPTURE                          VAL R20
     1243 CAPTURE                          VAL R3
     1244 CALL                             R21 1 2
     1245 JUMPIFNOT                        R21 ; [+2]
     1246 MOVE                             R19 R22
     1247 JUMP                             ; [+2]
     1248 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1249 JUMP                             ; [0]
     1250 SETTABLEKS                       R19 R18 K21 ["date"]
     1252 MOVE                             R19 R12
     1253 LOADK                            R20 K108 ["Description.AvatarSettingsScaleBodyType"]
     1254 DUPTABLE                         R21 K98 [{"scale"}]
     1255 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1257 JUMPIFNOT                        R24 ; [+5]
     1258 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1260 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1262 JUMPIF                           R23 ; [+1]
     1263 LOADK                            R23 K43 [""]
     1264 LOADK                            R24 K43 [""]
     1265 FASTCALL1                        TOSTRING R23 ; [+3]
     1266 MOVE                             R28 R23
     1267 GETIMPORT                        R27 K4 [tostring]
     1269 CALL                             R27 1 1
     1270 MOVE                             R25 R27
     1271 LOADK                            R26 K43 [""]
     1272 CONCAT                           R22 R24 R26
     1273 SETTABLEKS                       R22 R21 K97 ["scale"]
     1275 CALL                             R19 2 1
     1276 SETTABLEKS                       R19 R18 K22 ["translation"]
     1278 GETTABLEKS                       R19 R2 K14 ["userId"]
     1280 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1282 MOVE                             R19 R0
     1283 GETTABLEKS                       R20 R2 K14 ["userId"]
     1285 CALL                             R19 1 1
     1286 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1288 LOADK                            R19 K37 ["Universe"]
     1289 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1291 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1293 JUMP                             ; [0]
     1294 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1296 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1298 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1300 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1302 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1304 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1306 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1308 RETURN                           R18 1
     1309 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1311 JUMPIFNOTEQKN                    R18 K109 [13] ; [+84]
     1313 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1314 GETTABLEKS                       R19 R2 K19 ["id"]
     1316 SETTABLEKS                       R19 R18 K19 ["id"]
     1318 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
     1319 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1321 LOADK                            R19 K40 ["Experience"]
     1322 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1324 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1326 GETIMPORT                        R21 K34 [pcall]
     1328 NEWCLOSURE                       R22 P6
     1329 CAPTURE                          VAL R20
     1330 CAPTURE                          VAL R3
     1331 CALL                             R21 1 2
     1332 JUMPIFNOT                        R21 ; [+2]
     1333 MOVE                             R19 R22
     1334 JUMP                             ; [+2]
     1335 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1336 JUMP                             ; [0]
     1337 SETTABLEKS                       R19 R18 K21 ["date"]
     1339 MOVE                             R19 R12
     1340 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
     1341 DUPTABLE                         R21 K98 [{"scale"}]
     1342 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1344 JUMPIFNOT                        R24 ; [+5]
     1345 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1347 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1349 JUMPIF                           R23 ; [+1]
     1350 LOADK                            R23 K43 [""]
     1351 LOADK                            R24 K43 [""]
     1352 FASTCALL1                        TOSTRING R23 ; [+3]
     1353 MOVE                             R28 R23
     1354 GETIMPORT                        R27 K4 [tostring]
     1356 CALL                             R27 1 1
     1357 MOVE                             R25 R27
     1358 LOADK                            R26 K43 [""]
     1359 CONCAT                           R22 R24 R26
     1360 SETTABLEKS                       R22 R21 K97 ["scale"]
     1362 CALL                             R19 2 1
     1363 SETTABLEKS                       R19 R18 K22 ["translation"]
     1365 GETTABLEKS                       R19 R2 K14 ["userId"]
     1367 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1369 MOVE                             R19 R0
     1370 GETTABLEKS                       R20 R2 K14 ["userId"]
     1372 CALL                             R19 1 1
     1373 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1375 LOADK                            R19 K37 ["Universe"]
     1376 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1378 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1380 JUMP                             ; [0]
     1381 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1383 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1385 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1387 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1389 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1391 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1393 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1395 RETURN                           R18 1
     1396 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1398 JUMPIFNOTEQKN                    R18 K112 [14] ; [+63]
     1400 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1401 GETTABLEKS                       R19 R2 K19 ["id"]
     1403 SETTABLEKS                       R19 R18 K19 ["id"]
     1405 LOADK                            R19 K113 ["AvatarSettingsBodyParts"]
     1406 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1408 LOADK                            R19 K40 ["Experience"]
     1409 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1411 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1413 GETIMPORT                        R21 K34 [pcall]
     1415 NEWCLOSURE                       R22 P6
     1416 CAPTURE                          VAL R20
     1417 CAPTURE                          VAL R3
     1418 CALL                             R21 1 2
     1419 JUMPIFNOT                        R21 ; [+2]
     1420 MOVE                             R19 R22
     1421 JUMP                             ; [+2]
     1422 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1423 JUMP                             ; [0]
     1424 SETTABLEKS                       R19 R18 K21 ["date"]
     1426 MOVE                             R19 R12
     1427 LOADK                            R20 K114 ["Description.AvatarSettingsBodyParts"]
     1428 CALL                             R19 1 1
     1429 SETTABLEKS                       R19 R18 K22 ["translation"]
     1431 GETTABLEKS                       R19 R2 K14 ["userId"]
     1433 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1435 MOVE                             R19 R0
     1436 GETTABLEKS                       R20 R2 K14 ["userId"]
     1438 CALL                             R19 1 1
     1439 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1441 LOADK                            R19 K37 ["Universe"]
     1442 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1444 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1446 JUMP                             ; [0]
     1447 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1449 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1451 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1453 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1455 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1457 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1459 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1461 RETURN                           R18 1
     1462 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1464 JUMPIFNOTEQKN                    R18 K115 [15] ; [+63]
     1466 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1467 GETTABLEKS                       R19 R2 K19 ["id"]
     1469 SETTABLEKS                       R19 R18 K19 ["id"]
     1471 LOADK                            R19 K116 ["AvatarSettingsClothing"]
     1472 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1474 LOADK                            R19 K40 ["Experience"]
     1475 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1477 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1479 GETIMPORT                        R21 K34 [pcall]
     1481 NEWCLOSURE                       R22 P6
     1482 CAPTURE                          VAL R20
     1483 CAPTURE                          VAL R3
     1484 CALL                             R21 1 2
     1485 JUMPIFNOT                        R21 ; [+2]
     1486 MOVE                             R19 R22
     1487 JUMP                             ; [+2]
     1488 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1489 JUMP                             ; [0]
     1490 SETTABLEKS                       R19 R18 K21 ["date"]
     1492 MOVE                             R19 R12
     1493 LOADK                            R20 K117 ["Description.AvatarSettingsClothing"]
     1494 CALL                             R19 1 1
     1495 SETTABLEKS                       R19 R18 K22 ["translation"]
     1497 GETTABLEKS                       R19 R2 K14 ["userId"]
     1499 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1501 MOVE                             R19 R0
     1502 GETTABLEKS                       R20 R2 K14 ["userId"]
     1504 CALL                             R19 1 1
     1505 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1507 LOADK                            R19 K37 ["Universe"]
     1508 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1510 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1512 JUMP                             ; [0]
     1513 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1515 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1517 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1519 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1521 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1523 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1525 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1527 RETURN                           R18 1
     1528 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1530 JUMPIFNOTEQKN                    R18 K118 [16] ; [+115]
     1532 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1533 GETTABLEKS                       R19 R2 K19 ["id"]
     1535 SETTABLEKS                       R19 R18 K19 ["id"]
     1537 LOADK                            R19 K119 ["ExperienceName"]
     1538 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1540 LOADK                            R19 K40 ["Experience"]
     1541 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1543 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1545 GETIMPORT                        R21 K34 [pcall]
     1547 NEWCLOSURE                       R22 P6
     1548 CAPTURE                          VAL R20
     1549 CAPTURE                          VAL R3
     1550 CALL                             R21 1 2
     1551 JUMPIFNOT                        R21 ; [+2]
     1552 MOVE                             R19 R22
     1553 JUMP                             ; [+2]
     1554 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1555 JUMP                             ; [0]
     1556 SETTABLEKS                       R19 R18 K21 ["date"]
     1558 MOVE                             R19 R12
     1559 LOADK                            R20 K120 ["Description.ExperienceName"]
     1560 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     1561 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1563 JUMPIFNOT                        R24 ; [+5]
     1564 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1566 GETTABLEKS                       R23 R24 K124 ["NewName"]
     1568 JUMPIF                           R23 ; [+1]
     1569 LOADK                            R23 K43 [""]
     1570 LOADK                            R24 K43 [""]
     1571 FASTCALL1                        TOSTRING R23 ; [+3]
     1572 MOVE                             R28 R23
     1573 GETIMPORT                        R27 K4 [tostring]
     1575 CALL                             R27 1 1
     1576 MOVE                             R25 R27
     1577 LOADK                            R26 K43 [""]
     1578 CONCAT                           R22 R24 R26
     1579 SETTABLEKS                       R22 R21 K121 ["newName"]
     1581 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1583 JUMPIFNOT                        R24 ; [+5]
     1584 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1586 GETTABLEKS                       R23 R24 K125 ["OldName"]
     1588 JUMPIF                           R23 ; [+1]
     1589 LOADK                            R23 K43 [""]
     1590 LOADK                            R24 K43 [""]
     1591 FASTCALL1                        TOSTRING R23 ; [+3]
     1592 MOVE                             R28 R23
     1593 GETIMPORT                        R27 K4 [tostring]
     1595 CALL                             R27 1 1
     1596 MOVE                             R25 R27
     1597 LOADK                            R26 K43 [""]
     1598 CONCAT                           R22 R24 R26
     1599 SETTABLEKS                       R22 R21 K122 ["oldName"]
     1601 CALL                             R19 2 1
     1602 SETTABLEKS                       R19 R18 K22 ["translation"]
     1604 GETTABLEKS                       R19 R2 K14 ["userId"]
     1606 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1608 MOVE                             R19 R0
     1609 GETTABLEKS                       R20 R2 K14 ["userId"]
     1611 CALL                             R19 1 1
     1612 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1614 LOADK                            R19 K37 ["Universe"]
     1615 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1617 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1619 JUMP                             ; [0]
     1620 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1622 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1624 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1626 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1628 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1630 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1632 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1634 LOADK                            R20 K43 [""]
     1635 FASTCALL1                        TOSTRING R4 ; [+3]
     1636 MOVE                             R24 R4
     1637 GETIMPORT                        R23 K4 [tostring]
     1639 CALL                             R23 1 1
     1640 MOVE                             R21 R23
     1641 LOADK                            R22 K11 ["/configure"]
     1642 CONCAT                           R19 R20 R22
     1643 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1645 RETURN                           R18 1
     1646 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1648 JUMPIFNOTEQKN                    R18 K126 [17] ; [+74]
     1650 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1651 GETTABLEKS                       R19 R2 K19 ["id"]
     1653 SETTABLEKS                       R19 R18 K19 ["id"]
     1655 LOADK                            R19 K127 ["ExperienceDescription"]
     1656 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1658 LOADK                            R19 K40 ["Experience"]
     1659 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1661 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1663 GETIMPORT                        R21 K34 [pcall]
     1665 NEWCLOSURE                       R22 P6
     1666 CAPTURE                          VAL R20
     1667 CAPTURE                          VAL R3
     1668 CALL                             R21 1 2
     1669 JUMPIFNOT                        R21 ; [+2]
     1670 MOVE                             R19 R22
     1671 JUMP                             ; [+2]
     1672 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1673 JUMP                             ; [0]
     1674 SETTABLEKS                       R19 R18 K21 ["date"]
     1676 MOVE                             R19 R12
     1677 LOADK                            R20 K128 ["Description.ExperienceDescription"]
     1678 CALL                             R19 1 1
     1679 SETTABLEKS                       R19 R18 K22 ["translation"]
     1681 GETTABLEKS                       R19 R2 K14 ["userId"]
     1683 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1685 MOVE                             R19 R0
     1686 GETTABLEKS                       R20 R2 K14 ["userId"]
     1688 CALL                             R19 1 1
     1689 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1691 LOADK                            R19 K37 ["Universe"]
     1692 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1694 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1696 JUMP                             ; [0]
     1697 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1699 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1701 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1703 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1705 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1707 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1709 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1711 LOADK                            R20 K43 [""]
     1712 FASTCALL1                        TOSTRING R4 ; [+3]
     1713 MOVE                             R24 R4
     1714 GETIMPORT                        R23 K4 [tostring]
     1716 CALL                             R23 1 1
     1717 MOVE                             R21 R23
     1718 LOADK                            R22 K11 ["/configure"]
     1719 CONCAT                           R19 R20 R22
     1720 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1722 RETURN                           R18 1
     1723 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1725 JUMPIFNOTEQKN                    R18 K129 [18] ; [+95]
     1727 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1728 GETTABLEKS                       R19 R2 K19 ["id"]
     1730 SETTABLEKS                       R19 R18 K19 ["id"]
     1732 LOADK                            R19 K130 ["ExperienceGenre"]
     1733 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1735 LOADK                            R19 K40 ["Experience"]
     1736 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1738 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1740 GETIMPORT                        R21 K34 [pcall]
     1742 NEWCLOSURE                       R22 P6
     1743 CAPTURE                          VAL R20
     1744 CAPTURE                          VAL R3
     1745 CALL                             R21 1 2
     1746 JUMPIFNOT                        R21 ; [+2]
     1747 MOVE                             R19 R22
     1748 JUMP                             ; [+2]
     1749 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1750 JUMP                             ; [0]
     1751 SETTABLEKS                       R19 R18 K21 ["date"]
     1753 MOVE                             R19 R12
     1754 LOADK                            R20 K131 ["Description.ExperienceGenre"]
     1755 DUPTABLE                         R21 K133 [{"genre"}]
     1756 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1758 JUMPIFNOT                        R24 ; [+5]
     1759 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1761 GETTABLEKS                       R23 R24 K134 ["Genre"]
     1763 JUMPIF                           R23 ; [+1]
     1764 LOADK                            R23 K43 [""]
     1765 LOADK                            R24 K43 [""]
     1766 FASTCALL1                        TOSTRING R23 ; [+3]
     1767 MOVE                             R28 R23
     1768 GETIMPORT                        R27 K4 [tostring]
     1770 CALL                             R27 1 1
     1771 MOVE                             R25 R27
     1772 LOADK                            R26 K43 [""]
     1773 CONCAT                           R22 R24 R26
     1774 SETTABLEKS                       R22 R21 K132 ["genre"]
     1776 CALL                             R19 2 1
     1777 SETTABLEKS                       R19 R18 K22 ["translation"]
     1779 GETTABLEKS                       R19 R2 K14 ["userId"]
     1781 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1783 MOVE                             R19 R0
     1784 GETTABLEKS                       R20 R2 K14 ["userId"]
     1786 CALL                             R19 1 1
     1787 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1789 LOADK                            R19 K37 ["Universe"]
     1790 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1792 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1794 JUMP                             ; [0]
     1795 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1797 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1799 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1801 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1803 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1805 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1807 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1809 LOADK                            R20 K43 [""]
     1810 FASTCALL1                        TOSTRING R4 ; [+3]
     1811 MOVE                             R24 R4
     1812 GETIMPORT                        R23 K4 [tostring]
     1814 CALL                             R23 1 1
     1815 MOVE                             R21 R23
     1816 LOADK                            R22 K11 ["/configure"]
     1817 CONCAT                           R19 R20 R22
     1818 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1820 RETURN                           R18 1
     1821 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1823 JUMPIFNOTEQKN                    R18 K135 [19] ; [+105]
     1825 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1826 GETTABLEKS                       R19 R2 K19 ["id"]
     1828 SETTABLEKS                       R19 R18 K19 ["id"]
     1830 LOADK                            R19 K136 ["SecuritySettingsHTTPRequests"]
     1831 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1833 LOADK                            R19 K40 ["Experience"]
     1834 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1836 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1838 GETIMPORT                        R21 K34 [pcall]
     1840 NEWCLOSURE                       R22 P6
     1841 CAPTURE                          VAL R20
     1842 CAPTURE                          VAL R3
     1843 CALL                             R21 1 2
     1844 JUMPIFNOT                        R21 ; [+2]
     1845 MOVE                             R19 R22
     1846 JUMP                             ; [+2]
     1847 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1848 JUMP                             ; [0]
     1849 SETTABLEKS                       R19 R18 K21 ["date"]
     1851 MOVE                             R19 R12
     1852 LOADK                            R20 K137 ["Description.SecuritySettingsHTTPRequests"]
     1853 DUPTABLE                         R21 K139 [{"action"}]
     1854 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1856 JUMPIFNOT                        R26 ; [+5]
     1857 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1859 GETTABLEKS                       R25 R26 K42 ["Action"]
     1861 JUMPIF                           R25 ; [+1]
     1862 LOADK                            R25 K43 [""]
     1863 GETIMPORT                        R26 K46 [string.lower]
     1865 FASTCALL1                        TOSTRING R25 ; [+3]
     1866 MOVE                             R28 R25
     1867 GETIMPORT                        R27 K4 [tostring]
     1869 CALL                             R27 1 1
     1870 CALL                             R26 1 1
     1871 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     1873 LOADB                            R24 1
     1874 JUMP                             ; [+1]
     1875 LOADB                            R24 0
     1876 JUMPIFNOT                        R24 ; [+4]
     1877 MOVE                             R23 R12
     1878 LOADK                            R24 K140 ["Description.ActionEnabled"]
     1879 CALL                             R23 1 1
     1880 JUMPIF                           R23 ; [+3]
     1881 MOVE                             R23 R12
     1882 LOADK                            R24 K141 ["Description.ActionDisabled"]
     1883 CALL                             R23 1 1
     1884 LOADK                            R24 K43 [""]
     1885 FASTCALL1                        TOSTRING R23 ; [+3]
     1886 MOVE                             R28 R23
     1887 GETIMPORT                        R27 K4 [tostring]
     1889 CALL                             R27 1 1
     1890 MOVE                             R25 R27
     1891 LOADK                            R26 K43 [""]
     1892 CONCAT                           R22 R24 R26
     1893 SETTABLEKS                       R22 R21 K138 ["action"]
     1895 CALL                             R19 2 1
     1896 SETTABLEKS                       R19 R18 K22 ["translation"]
     1898 GETTABLEKS                       R19 R2 K14 ["userId"]
     1900 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1902 MOVE                             R19 R0
     1903 GETTABLEKS                       R20 R2 K14 ["userId"]
     1905 CALL                             R19 1 1
     1906 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1908 LOADK                            R19 K37 ["Universe"]
     1909 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1911 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1913 JUMP                             ; [0]
     1914 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1916 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1918 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1920 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1922 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1924 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1926 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1928 RETURN                           R18 1
     1929 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1931 JUMPIFNOTEQKN                    R18 K142 [20] ; [+116]
     1933 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1934 GETTABLEKS                       R19 R2 K19 ["id"]
     1936 SETTABLEKS                       R19 R18 K19 ["id"]
     1938 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
     1939 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1941 LOADK                            R19 K40 ["Experience"]
     1942 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1944 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1946 GETIMPORT                        R21 K34 [pcall]
     1948 NEWCLOSURE                       R22 P6
     1949 CAPTURE                          VAL R20
     1950 CAPTURE                          VAL R3
     1951 CALL                             R21 1 2
     1952 JUMPIFNOT                        R21 ; [+2]
     1953 MOVE                             R19 R22
     1954 JUMP                             ; [+2]
     1955 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1956 JUMP                             ; [0]
     1957 SETTABLEKS                       R19 R18 K21 ["date"]
     1959 MOVE                             R19 R12
     1960 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
     1961 DUPTABLE                         R21 K139 [{"action"}]
     1962 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1964 JUMPIFNOT                        R26 ; [+5]
     1965 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1967 GETTABLEKS                       R25 R26 K42 ["Action"]
     1969 JUMPIF                           R25 ; [+1]
     1970 LOADK                            R25 K43 [""]
     1971 GETIMPORT                        R26 K46 [string.lower]
     1973 FASTCALL1                        TOSTRING R25 ; [+3]
     1974 MOVE                             R28 R25
     1975 GETIMPORT                        R27 K4 [tostring]
     1977 CALL                             R27 1 1
     1978 CALL                             R26 1 1
     1979 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     1981 LOADB                            R24 1
     1982 JUMP                             ; [+1]
     1983 LOADB                            R24 0
     1984 JUMPIFNOT                        R24 ; [+4]
     1985 MOVE                             R23 R12
     1986 LOADK                            R24 K140 ["Description.ActionEnabled"]
     1987 CALL                             R23 1 1
     1988 JUMPIF                           R23 ; [+3]
     1989 MOVE                             R23 R12
     1990 LOADK                            R24 K141 ["Description.ActionDisabled"]
     1991 CALL                             R23 1 1
     1992 LOADK                            R24 K43 [""]
     1993 FASTCALL1                        TOSTRING R23 ; [+3]
     1994 MOVE                             R28 R23
     1995 GETIMPORT                        R27 K4 [tostring]
     1997 CALL                             R27 1 1
     1998 MOVE                             R25 R27
     1999 LOADK                            R26 K43 [""]
     2000 CONCAT                           R22 R24 R26
     2001 SETTABLEKS                       R22 R21 K138 ["action"]
     2003 CALL                             R19 2 1
     2004 SETTABLEKS                       R19 R18 K22 ["translation"]
     2006 GETTABLEKS                       R19 R2 K14 ["userId"]
     2008 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2010 MOVE                             R19 R0
     2011 GETTABLEKS                       R20 R2 K14 ["userId"]
     2013 CALL                             R19 1 1
     2014 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2016 LOADK                            R19 K37 ["Universe"]
     2017 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2019 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2021 JUMP                             ; [0]
     2022 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2024 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2026 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2028 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2030 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2032 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2034 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2036 LOADK                            R20 K43 [""]
     2037 FASTCALL1                        TOSTRING R4 ; [+3]
     2038 MOVE                             R24 R4
     2039 GETIMPORT                        R23 K4 [tostring]
     2041 CALL                             R23 1 1
     2042 MOVE                             R21 R23
     2043 LOADK                            R22 K11 ["/configure"]
     2044 CONCAT                           R19 R20 R22
     2045 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2047 RETURN                           R18 1
     2048 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2050 JUMPIFNOTEQKN                    R18 K145 [21] ; [+105]
     2052 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2053 GETTABLEKS                       R19 R2 K19 ["id"]
     2055 SETTABLEKS                       R19 R18 K19 ["id"]
     2057 LOADK                            R19 K146 ["SecuritySettingsThirdPartySales"]
     2058 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2060 LOADK                            R19 K40 ["Experience"]
     2061 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2063 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2065 GETIMPORT                        R21 K34 [pcall]
     2067 NEWCLOSURE                       R22 P6
     2068 CAPTURE                          VAL R20
     2069 CAPTURE                          VAL R3
     2070 CALL                             R21 1 2
     2071 JUMPIFNOT                        R21 ; [+2]
     2072 MOVE                             R19 R22
     2073 JUMP                             ; [+2]
     2074 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2075 JUMP                             ; [0]
     2076 SETTABLEKS                       R19 R18 K21 ["date"]
     2078 MOVE                             R19 R12
     2079 LOADK                            R20 K147 ["Description.SecuritySettingsThirdPartySales"]
     2080 DUPTABLE                         R21 K139 [{"action"}]
     2081 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2083 JUMPIFNOT                        R26 ; [+5]
     2084 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2086 GETTABLEKS                       R25 R26 K42 ["Action"]
     2088 JUMPIF                           R25 ; [+1]
     2089 LOADK                            R25 K43 [""]
     2090 GETIMPORT                        R26 K46 [string.lower]
     2092 FASTCALL1                        TOSTRING R25 ; [+3]
     2093 MOVE                             R28 R25
     2094 GETIMPORT                        R27 K4 [tostring]
     2096 CALL                             R27 1 1
     2097 CALL                             R26 1 1
     2098 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2100 LOADB                            R24 1
     2101 JUMP                             ; [+1]
     2102 LOADB                            R24 0
     2103 JUMPIFNOT                        R24 ; [+4]
     2104 MOVE                             R23 R12
     2105 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2106 CALL                             R23 1 1
     2107 JUMPIF                           R23 ; [+3]
     2108 MOVE                             R23 R12
     2109 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2110 CALL                             R23 1 1
     2111 LOADK                            R24 K43 [""]
     2112 FASTCALL1                        TOSTRING R23 ; [+3]
     2113 MOVE                             R28 R23
     2114 GETIMPORT                        R27 K4 [tostring]
     2116 CALL                             R27 1 1
     2117 MOVE                             R25 R27
     2118 LOADK                            R26 K43 [""]
     2119 CONCAT                           R22 R24 R26
     2120 SETTABLEKS                       R22 R21 K138 ["action"]
     2122 CALL                             R19 2 1
     2123 SETTABLEKS                       R19 R18 K22 ["translation"]
     2125 GETTABLEKS                       R19 R2 K14 ["userId"]
     2127 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2129 MOVE                             R19 R0
     2130 GETTABLEKS                       R20 R2 K14 ["userId"]
     2132 CALL                             R19 1 1
     2133 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2135 LOADK                            R19 K37 ["Universe"]
     2136 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2138 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2140 JUMP                             ; [0]
     2141 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2143 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2145 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2147 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2149 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2151 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2153 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2155 RETURN                           R18 1
     2156 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2158 JUMPIFNOTEQKN                    R18 K148 [22] ; [+105]
     2160 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2161 GETTABLEKS                       R19 R2 K19 ["id"]
     2163 SETTABLEKS                       R19 R18 K19 ["id"]
     2165 LOADK                            R19 K149 ["SecuritySettingsThirdPartyTeleports"]
     2166 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2168 LOADK                            R19 K40 ["Experience"]
     2169 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2171 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2173 GETIMPORT                        R21 K34 [pcall]
     2175 NEWCLOSURE                       R22 P6
     2176 CAPTURE                          VAL R20
     2177 CAPTURE                          VAL R3
     2178 CALL                             R21 1 2
     2179 JUMPIFNOT                        R21 ; [+2]
     2180 MOVE                             R19 R22
     2181 JUMP                             ; [+2]
     2182 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2183 JUMP                             ; [0]
     2184 SETTABLEKS                       R19 R18 K21 ["date"]
     2186 MOVE                             R19 R12
     2187 LOADK                            R20 K150 ["Description.SecuritySettingsThirdPartyTeleports"]
     2188 DUPTABLE                         R21 K139 [{"action"}]
     2189 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2191 JUMPIFNOT                        R26 ; [+5]
     2192 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2194 GETTABLEKS                       R25 R26 K42 ["Action"]
     2196 JUMPIF                           R25 ; [+1]
     2197 LOADK                            R25 K43 [""]
     2198 GETIMPORT                        R26 K46 [string.lower]
     2200 FASTCALL1                        TOSTRING R25 ; [+3]
     2201 MOVE                             R28 R25
     2202 GETIMPORT                        R27 K4 [tostring]
     2204 CALL                             R27 1 1
     2205 CALL                             R26 1 1
     2206 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2208 LOADB                            R24 1
     2209 JUMP                             ; [+1]
     2210 LOADB                            R24 0
     2211 JUMPIFNOT                        R24 ; [+4]
     2212 MOVE                             R23 R12
     2213 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2214 CALL                             R23 1 1
     2215 JUMPIF                           R23 ; [+3]
     2216 MOVE                             R23 R12
     2217 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2218 CALL                             R23 1 1
     2219 LOADK                            R24 K43 [""]
     2220 FASTCALL1                        TOSTRING R23 ; [+3]
     2221 MOVE                             R28 R23
     2222 GETIMPORT                        R27 K4 [tostring]
     2224 CALL                             R27 1 1
     2225 MOVE                             R25 R27
     2226 LOADK                            R26 K43 [""]
     2227 CONCAT                           R22 R24 R26
     2228 SETTABLEKS                       R22 R21 K138 ["action"]
     2230 CALL                             R19 2 1
     2231 SETTABLEKS                       R19 R18 K22 ["translation"]
     2233 GETTABLEKS                       R19 R2 K14 ["userId"]
     2235 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2237 MOVE                             R19 R0
     2238 GETTABLEKS                       R20 R2 K14 ["userId"]
     2240 CALL                             R19 1 1
     2241 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2243 LOADK                            R19 K37 ["Universe"]
     2244 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2246 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2248 JUMP                             ; [0]
     2249 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2251 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2253 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2255 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2257 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2259 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2261 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2263 RETURN                           R18 1
     2264 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2266 JUMPIFNOTEQKN                    R18 K151 [23] ; [+63]
     2268 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2269 GETTABLEKS                       R19 R2 K19 ["id"]
     2271 SETTABLEKS                       R19 R18 K19 ["id"]
     2273 LOADK                            R19 K152 ["ExperienceShutDown"]
     2274 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2276 LOADK                            R19 K40 ["Experience"]
     2277 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2279 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2281 GETIMPORT                        R21 K34 [pcall]
     2283 NEWCLOSURE                       R22 P6
     2284 CAPTURE                          VAL R20
     2285 CAPTURE                          VAL R3
     2286 CALL                             R21 1 2
     2287 JUMPIFNOT                        R21 ; [+2]
     2288 MOVE                             R19 R22
     2289 JUMP                             ; [+2]
     2290 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2291 JUMP                             ; [0]
     2292 SETTABLEKS                       R19 R18 K21 ["date"]
     2294 MOVE                             R19 R12
     2295 LOADK                            R20 K153 ["Description.ExperienceShutDown"]
     2296 CALL                             R19 1 1
     2297 SETTABLEKS                       R19 R18 K22 ["translation"]
     2299 GETTABLEKS                       R19 R2 K14 ["userId"]
     2301 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2303 MOVE                             R19 R0
     2304 GETTABLEKS                       R20 R2 K14 ["userId"]
     2306 CALL                             R19 1 1
     2307 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2309 LOADK                            R19 K37 ["Universe"]
     2310 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2312 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2314 JUMP                             ; [0]
     2315 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2317 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2319 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2321 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2323 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2325 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2327 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2329 RETURN                           R18 1
     2330 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2332 JUMPIFNOTEQKN                    R18 K154 [24] ; [+95]
     2334 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2335 GETTABLEKS                       R19 R2 K19 ["id"]
     2337 SETTABLEKS                       R19 R18 K19 ["id"]
     2339 LOADK                            R19 K155 ["SocialLinksAdded"]
     2340 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2342 LOADK                            R19 K40 ["Experience"]
     2343 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2345 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2347 GETIMPORT                        R21 K34 [pcall]
     2349 NEWCLOSURE                       R22 P6
     2350 CAPTURE                          VAL R20
     2351 CAPTURE                          VAL R3
     2352 CALL                             R21 1 2
     2353 JUMPIFNOT                        R21 ; [+2]
     2354 MOVE                             R19 R22
     2355 JUMP                             ; [+2]
     2356 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2357 JUMP                             ; [0]
     2358 SETTABLEKS                       R19 R18 K21 ["date"]
     2360 MOVE                             R19 R12
     2361 LOADK                            R20 K156 ["Description.SocialLinksAdded"]
     2362 DUPTABLE                         R21 K158 [{"channel"}]
     2363 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2365 JUMPIFNOT                        R24 ; [+5]
     2366 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2368 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2370 JUMPIF                           R23 ; [+1]
     2371 LOADK                            R23 K43 [""]
     2372 LOADK                            R24 K43 [""]
     2373 FASTCALL1                        TOSTRING R23 ; [+3]
     2374 MOVE                             R28 R23
     2375 GETIMPORT                        R27 K4 [tostring]
     2377 CALL                             R27 1 1
     2378 MOVE                             R25 R27
     2379 LOADK                            R26 K43 [""]
     2380 CONCAT                           R22 R24 R26
     2381 SETTABLEKS                       R22 R21 K157 ["channel"]
     2383 CALL                             R19 2 1
     2384 SETTABLEKS                       R19 R18 K22 ["translation"]
     2386 GETTABLEKS                       R19 R2 K14 ["userId"]
     2388 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2390 MOVE                             R19 R0
     2391 GETTABLEKS                       R20 R2 K14 ["userId"]
     2393 CALL                             R19 1 1
     2394 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2396 LOADK                            R19 K37 ["Universe"]
     2397 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2399 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2401 JUMP                             ; [0]
     2402 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2404 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2406 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2408 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2410 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2412 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2414 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2416 LOADK                            R20 K43 [""]
     2417 FASTCALL1                        TOSTRING R4 ; [+3]
     2418 MOVE                             R24 R4
     2419 GETIMPORT                        R23 K4 [tostring]
     2421 CALL                             R23 1 1
     2422 MOVE                             R21 R23
     2423 LOADK                            R22 K160 ["/social-links"]
     2424 CONCAT                           R19 R20 R22
     2425 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2427 RETURN                           R18 1
     2428 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2430 JUMPIFNOTEQKN                    R18 K161 [25] ; [+95]
     2432 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2433 GETTABLEKS                       R19 R2 K19 ["id"]
     2435 SETTABLEKS                       R19 R18 K19 ["id"]
     2437 LOADK                            R19 K162 ["SocialLinksRemoved"]
     2438 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2440 LOADK                            R19 K40 ["Experience"]
     2441 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2443 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2445 GETIMPORT                        R21 K34 [pcall]
     2447 NEWCLOSURE                       R22 P6
     2448 CAPTURE                          VAL R20
     2449 CAPTURE                          VAL R3
     2450 CALL                             R21 1 2
     2451 JUMPIFNOT                        R21 ; [+2]
     2452 MOVE                             R19 R22
     2453 JUMP                             ; [+2]
     2454 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2455 JUMP                             ; [0]
     2456 SETTABLEKS                       R19 R18 K21 ["date"]
     2458 MOVE                             R19 R12
     2459 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
     2460 DUPTABLE                         R21 K158 [{"channel"}]
     2461 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2463 JUMPIFNOT                        R24 ; [+5]
     2464 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2466 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2468 JUMPIF                           R23 ; [+1]
     2469 LOADK                            R23 K43 [""]
     2470 LOADK                            R24 K43 [""]
     2471 FASTCALL1                        TOSTRING R23 ; [+3]
     2472 MOVE                             R28 R23
     2473 GETIMPORT                        R27 K4 [tostring]
     2475 CALL                             R27 1 1
     2476 MOVE                             R25 R27
     2477 LOADK                            R26 K43 [""]
     2478 CONCAT                           R22 R24 R26
     2479 SETTABLEKS                       R22 R21 K157 ["channel"]
     2481 CALL                             R19 2 1
     2482 SETTABLEKS                       R19 R18 K22 ["translation"]
     2484 GETTABLEKS                       R19 R2 K14 ["userId"]
     2486 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2488 MOVE                             R19 R0
     2489 GETTABLEKS                       R20 R2 K14 ["userId"]
     2491 CALL                             R19 1 1
     2492 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2494 LOADK                            R19 K37 ["Universe"]
     2495 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2497 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2499 JUMP                             ; [0]
     2500 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2502 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2504 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2506 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2508 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2510 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2512 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2514 LOADK                            R20 K43 [""]
     2515 FASTCALL1                        TOSTRING R4 ; [+3]
     2516 MOVE                             R24 R4
     2517 GETIMPORT                        R23 K4 [tostring]
     2519 CALL                             R23 1 1
     2520 MOVE                             R21 R23
     2521 LOADK                            R22 K160 ["/social-links"]
     2522 CONCAT                           R19 R20 R22
     2523 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2525 RETURN                           R18 1
     2526 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2528 JUMPIFNOTEQKN                    R18 K164 [26] ; [+95]
     2530 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2531 GETTABLEKS                       R19 R2 K19 ["id"]
     2533 SETTABLEKS                       R19 R18 K19 ["id"]
     2535 LOADK                            R19 K165 ["SocialLinksUpdated"]
     2536 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2538 LOADK                            R19 K40 ["Experience"]
     2539 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2541 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2543 GETIMPORT                        R21 K34 [pcall]
     2545 NEWCLOSURE                       R22 P6
     2546 CAPTURE                          VAL R20
     2547 CAPTURE                          VAL R3
     2548 CALL                             R21 1 2
     2549 JUMPIFNOT                        R21 ; [+2]
     2550 MOVE                             R19 R22
     2551 JUMP                             ; [+2]
     2552 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2553 JUMP                             ; [0]
     2554 SETTABLEKS                       R19 R18 K21 ["date"]
     2556 MOVE                             R19 R12
     2557 LOADK                            R20 K166 ["Description.SocialLinksUpdated"]
     2558 DUPTABLE                         R21 K158 [{"channel"}]
     2559 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2561 JUMPIFNOT                        R24 ; [+5]
     2562 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2564 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2566 JUMPIF                           R23 ; [+1]
     2567 LOADK                            R23 K43 [""]
     2568 LOADK                            R24 K43 [""]
     2569 FASTCALL1                        TOSTRING R23 ; [+3]
     2570 MOVE                             R28 R23
     2571 GETIMPORT                        R27 K4 [tostring]
     2573 CALL                             R27 1 1
     2574 MOVE                             R25 R27
     2575 LOADK                            R26 K43 [""]
     2576 CONCAT                           R22 R24 R26
     2577 SETTABLEKS                       R22 R21 K157 ["channel"]
     2579 CALL                             R19 2 1
     2580 SETTABLEKS                       R19 R18 K22 ["translation"]
     2582 GETTABLEKS                       R19 R2 K14 ["userId"]
     2584 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2586 MOVE                             R19 R0
     2587 GETTABLEKS                       R20 R2 K14 ["userId"]
     2589 CALL                             R19 1 1
     2590 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2592 LOADK                            R19 K37 ["Universe"]
     2593 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2595 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2597 JUMP                             ; [0]
     2598 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2600 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2602 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2604 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2606 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2608 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2610 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2612 LOADK                            R20 K43 [""]
     2613 FASTCALL1                        TOSTRING R4 ; [+3]
     2614 MOVE                             R24 R4
     2615 GETIMPORT                        R23 K4 [tostring]
     2617 CALL                             R23 1 1
     2618 MOVE                             R21 R23
     2619 LOADK                            R22 K160 ["/social-links"]
     2620 CONCAT                           R19 R20 R22
     2621 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2623 RETURN                           R18 1
     2624 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2626 JUMPIFNOTEQKN                    R18 K167 [27] ; [+105]
     2628 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2629 GETTABLEKS                       R19 R2 K19 ["id"]
     2631 SETTABLEKS                       R19 R18 K19 ["id"]
     2633 LOADK                            R19 K168 ["SpatialVoice"]
     2634 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2636 LOADK                            R19 K40 ["Experience"]
     2637 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2639 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2641 GETIMPORT                        R21 K34 [pcall]
     2643 NEWCLOSURE                       R22 P6
     2644 CAPTURE                          VAL R20
     2645 CAPTURE                          VAL R3
     2646 CALL                             R21 1 2
     2647 JUMPIFNOT                        R21 ; [+2]
     2648 MOVE                             R19 R22
     2649 JUMP                             ; [+2]
     2650 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2651 JUMP                             ; [0]
     2652 SETTABLEKS                       R19 R18 K21 ["date"]
     2654 MOVE                             R19 R12
     2655 LOADK                            R20 K169 ["Description.SpatialVoice"]
     2656 DUPTABLE                         R21 K139 [{"action"}]
     2657 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2659 JUMPIFNOT                        R26 ; [+5]
     2660 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2662 GETTABLEKS                       R25 R26 K42 ["Action"]
     2664 JUMPIF                           R25 ; [+1]
     2665 LOADK                            R25 K43 [""]
     2666 GETIMPORT                        R26 K46 [string.lower]
     2668 FASTCALL1                        TOSTRING R25 ; [+3]
     2669 MOVE                             R28 R25
     2670 GETIMPORT                        R27 K4 [tostring]
     2672 CALL                             R27 1 1
     2673 CALL                             R26 1 1
     2674 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2676 LOADB                            R24 1
     2677 JUMP                             ; [+1]
     2678 LOADB                            R24 0
     2679 JUMPIFNOT                        R24 ; [+4]
     2680 MOVE                             R23 R12
     2681 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2682 CALL                             R23 1 1
     2683 JUMPIF                           R23 ; [+3]
     2684 MOVE                             R23 R12
     2685 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2686 CALL                             R23 1 1
     2687 LOADK                            R24 K43 [""]
     2688 FASTCALL1                        TOSTRING R23 ; [+3]
     2689 MOVE                             R28 R23
     2690 GETIMPORT                        R27 K4 [tostring]
     2692 CALL                             R27 1 1
     2693 MOVE                             R25 R27
     2694 LOADK                            R26 K43 [""]
     2695 CONCAT                           R22 R24 R26
     2696 SETTABLEKS                       R22 R21 K138 ["action"]
     2698 CALL                             R19 2 1
     2699 SETTABLEKS                       R19 R18 K22 ["translation"]
     2701 GETTABLEKS                       R19 R2 K14 ["userId"]
     2703 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2705 MOVE                             R19 R0
     2706 GETTABLEKS                       R20 R2 K14 ["userId"]
     2708 CALL                             R19 1 1
     2709 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2711 LOADK                            R19 K37 ["Universe"]
     2712 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2714 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2716 JUMP                             ; [0]
     2717 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2719 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2721 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2723 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2725 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2727 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2729 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2731 RETURN                           R18 1
     2732 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2734 JUMPIFNOTEQKN                    R18 K170 [28] ; [+84]
     2736 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2737 GETTABLEKS                       R19 R2 K19 ["id"]
     2739 SETTABLEKS                       R19 R18 K19 ["id"]
     2741 LOADK                            R19 K171 ["WorldSettingsWorkSpaceGravity"]
     2742 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2744 LOADK                            R19 K40 ["Experience"]
     2745 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2747 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2749 GETIMPORT                        R21 K34 [pcall]
     2751 NEWCLOSURE                       R22 P6
     2752 CAPTURE                          VAL R20
     2753 CAPTURE                          VAL R3
     2754 CALL                             R21 1 2
     2755 JUMPIFNOT                        R21 ; [+2]
     2756 MOVE                             R19 R22
     2757 JUMP                             ; [+2]
     2758 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2759 JUMP                             ; [0]
     2760 SETTABLEKS                       R19 R18 K21 ["date"]
     2762 MOVE                             R19 R12
     2763 LOADK                            R20 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     2764 DUPTABLE                         R21 K174 [{"gravity"}]
     2765 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2767 JUMPIFNOT                        R24 ; [+5]
     2768 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2770 GETTABLEKS                       R23 R24 K175 ["Gravity"]
     2772 JUMPIF                           R23 ; [+1]
     2773 LOADK                            R23 K43 [""]
     2774 LOADK                            R24 K43 [""]
     2775 FASTCALL1                        TOSTRING R23 ; [+3]
     2776 MOVE                             R28 R23
     2777 GETIMPORT                        R27 K4 [tostring]
     2779 CALL                             R27 1 1
     2780 MOVE                             R25 R27
     2781 LOADK                            R26 K43 [""]
     2782 CONCAT                           R22 R24 R26
     2783 SETTABLEKS                       R22 R21 K173 ["gravity"]
     2785 CALL                             R19 2 1
     2786 SETTABLEKS                       R19 R18 K22 ["translation"]
     2788 GETTABLEKS                       R19 R2 K14 ["userId"]
     2790 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2792 MOVE                             R19 R0
     2793 GETTABLEKS                       R20 R2 K14 ["userId"]
     2795 CALL                             R19 1 1
     2796 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2798 LOADK                            R19 K37 ["Universe"]
     2799 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2801 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2803 JUMP                             ; [0]
     2804 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2806 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2808 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2810 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2812 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2814 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2816 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2818 RETURN                           R18 1
     2819 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2821 JUMPIFNOTEQKN                    R18 K176 [29] ; [+84]
     2823 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2824 GETTABLEKS                       R19 R2 K19 ["id"]
     2826 SETTABLEKS                       R19 R18 K19 ["id"]
     2828 LOADK                            R19 K177 ["WorldSettingsJumpHeight"]
     2829 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2831 LOADK                            R19 K40 ["Experience"]
     2832 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2834 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2836 GETIMPORT                        R21 K34 [pcall]
     2838 NEWCLOSURE                       R22 P6
     2839 CAPTURE                          VAL R20
     2840 CAPTURE                          VAL R3
     2841 CALL                             R21 1 2
     2842 JUMPIFNOT                        R21 ; [+2]
     2843 MOVE                             R19 R22
     2844 JUMP                             ; [+2]
     2845 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2846 JUMP                             ; [0]
     2847 SETTABLEKS                       R19 R18 K21 ["date"]
     2849 MOVE                             R19 R12
     2850 LOADK                            R20 K178 ["Description.WorldSettingsJumpHeight"]
     2851 DUPTABLE                         R21 K180 [{"jumpHeight"}]
     2852 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2854 JUMPIFNOT                        R24 ; [+5]
     2855 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2857 GETTABLEKS                       R23 R24 K181 ["JumpHeight"]
     2859 JUMPIF                           R23 ; [+1]
     2860 LOADK                            R23 K43 [""]
     2861 LOADK                            R24 K43 [""]
     2862 FASTCALL1                        TOSTRING R23 ; [+3]
     2863 MOVE                             R28 R23
     2864 GETIMPORT                        R27 K4 [tostring]
     2866 CALL                             R27 1 1
     2867 MOVE                             R25 R27
     2868 LOADK                            R26 K43 [""]
     2869 CONCAT                           R22 R24 R26
     2870 SETTABLEKS                       R22 R21 K179 ["jumpHeight"]
     2872 CALL                             R19 2 1
     2873 SETTABLEKS                       R19 R18 K22 ["translation"]
     2875 GETTABLEKS                       R19 R2 K14 ["userId"]
     2877 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2879 MOVE                             R19 R0
     2880 GETTABLEKS                       R20 R2 K14 ["userId"]
     2882 CALL                             R19 1 1
     2883 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2885 LOADK                            R19 K37 ["Universe"]
     2886 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2888 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2890 JUMP                             ; [0]
     2891 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2893 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2895 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2897 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2899 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2901 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2903 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2905 RETURN                           R18 1
     2906 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2908 JUMPIFNOTEQKN                    R18 K182 [30] ; [+84]
     2910 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2911 GETTABLEKS                       R19 R2 K19 ["id"]
     2913 SETTABLEKS                       R19 R18 K19 ["id"]
     2915 LOADK                            R19 K183 ["WorldSettingsJumpPower"]
     2916 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2918 LOADK                            R19 K40 ["Experience"]
     2919 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2921 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2923 GETIMPORT                        R21 K34 [pcall]
     2925 NEWCLOSURE                       R22 P6
     2926 CAPTURE                          VAL R20
     2927 CAPTURE                          VAL R3
     2928 CALL                             R21 1 2
     2929 JUMPIFNOT                        R21 ; [+2]
     2930 MOVE                             R19 R22
     2931 JUMP                             ; [+2]
     2932 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2933 JUMP                             ; [0]
     2934 SETTABLEKS                       R19 R18 K21 ["date"]
     2936 MOVE                             R19 R12
     2937 LOADK                            R20 K184 ["Description.WorldSettingsJumpPower"]
     2938 DUPTABLE                         R21 K186 [{"jumpPower"}]
     2939 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2941 JUMPIFNOT                        R24 ; [+5]
     2942 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2944 GETTABLEKS                       R23 R24 K187 ["JumpPower"]
     2946 JUMPIF                           R23 ; [+1]
     2947 LOADK                            R23 K43 [""]
     2948 LOADK                            R24 K43 [""]
     2949 FASTCALL1                        TOSTRING R23 ; [+3]
     2950 MOVE                             R28 R23
     2951 GETIMPORT                        R27 K4 [tostring]
     2953 CALL                             R27 1 1
     2954 MOVE                             R25 R27
     2955 LOADK                            R26 K43 [""]
     2956 CONCAT                           R22 R24 R26
     2957 SETTABLEKS                       R22 R21 K185 ["jumpPower"]
     2959 CALL                             R19 2 1
     2960 SETTABLEKS                       R19 R18 K22 ["translation"]
     2962 GETTABLEKS                       R19 R2 K14 ["userId"]
     2964 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2966 MOVE                             R19 R0
     2967 GETTABLEKS                       R20 R2 K14 ["userId"]
     2969 CALL                             R19 1 1
     2970 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2972 LOADK                            R19 K37 ["Universe"]
     2973 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2975 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2977 JUMP                             ; [0]
     2978 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2980 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2982 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2984 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2986 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2988 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2990 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2992 RETURN                           R18 1
     2993 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2995 JUMPIFNOTEQKN                    R18 K188 [31] ; [+84]
     2997 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2998 GETTABLEKS                       R19 R2 K19 ["id"]
     3000 SETTABLEKS                       R19 R18 K19 ["id"]
     3002 LOADK                            R19 K189 ["WorldSettingsWalkSpeed"]
     3003 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3005 LOADK                            R19 K40 ["Experience"]
     3006 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3008 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3010 GETIMPORT                        R21 K34 [pcall]
     3012 NEWCLOSURE                       R22 P6
     3013 CAPTURE                          VAL R20
     3014 CAPTURE                          VAL R3
     3015 CALL                             R21 1 2
     3016 JUMPIFNOT                        R21 ; [+2]
     3017 MOVE                             R19 R22
     3018 JUMP                             ; [+2]
     3019 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3020 JUMP                             ; [0]
     3021 SETTABLEKS                       R19 R18 K21 ["date"]
     3023 MOVE                             R19 R12
     3024 LOADK                            R20 K190 ["Description.WorldSettingsWalkSpeed"]
     3025 DUPTABLE                         R21 K192 [{"walkSpeed"}]
     3026 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3028 JUMPIFNOT                        R24 ; [+5]
     3029 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3031 GETTABLEKS                       R23 R24 K193 ["WalkSpeed"]
     3033 JUMPIF                           R23 ; [+1]
     3034 LOADK                            R23 K43 [""]
     3035 LOADK                            R24 K43 [""]
     3036 FASTCALL1                        TOSTRING R23 ; [+3]
     3037 MOVE                             R28 R23
     3038 GETIMPORT                        R27 K4 [tostring]
     3040 CALL                             R27 1 1
     3041 MOVE                             R25 R27
     3042 LOADK                            R26 K43 [""]
     3043 CONCAT                           R22 R24 R26
     3044 SETTABLEKS                       R22 R21 K191 ["walkSpeed"]
     3046 CALL                             R19 2 1
     3047 SETTABLEKS                       R19 R18 K22 ["translation"]
     3049 GETTABLEKS                       R19 R2 K14 ["userId"]
     3051 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3053 MOVE                             R19 R0
     3054 GETTABLEKS                       R20 R2 K14 ["userId"]
     3056 CALL                             R19 1 1
     3057 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3059 LOADK                            R19 K37 ["Universe"]
     3060 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3062 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3064 JUMP                             ; [0]
     3065 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3067 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3069 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3071 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3073 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3075 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3077 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3079 RETURN                           R18 1
     3080 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3082 JUMPIFNOTEQKN                    R18 K194 [32] ; [+84]
     3084 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3085 GETTABLEKS                       R19 R2 K19 ["id"]
     3087 SETTABLEKS                       R19 R18 K19 ["id"]
     3089 LOADK                            R19 K195 ["WorldSettingsMaxSlopeAngle"]
     3090 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3092 LOADK                            R19 K40 ["Experience"]
     3093 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3095 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3097 GETIMPORT                        R21 K34 [pcall]
     3099 NEWCLOSURE                       R22 P6
     3100 CAPTURE                          VAL R20
     3101 CAPTURE                          VAL R3
     3102 CALL                             R21 1 2
     3103 JUMPIFNOT                        R21 ; [+2]
     3104 MOVE                             R19 R22
     3105 JUMP                             ; [+2]
     3106 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3107 JUMP                             ; [0]
     3108 SETTABLEKS                       R19 R18 K21 ["date"]
     3110 MOVE                             R19 R12
     3111 LOADK                            R20 K196 ["Description.WorldSettingsMaxSlopeAngle"]
     3112 DUPTABLE                         R21 K198 [{"maxSlopeAngle"}]
     3113 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3115 JUMPIFNOT                        R24 ; [+5]
     3116 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3118 GETTABLEKS                       R23 R24 K199 ["MaxSlopeAngle"]
     3120 JUMPIF                           R23 ; [+1]
     3121 LOADK                            R23 K43 [""]
     3122 LOADK                            R24 K43 [""]
     3123 FASTCALL1                        TOSTRING R23 ; [+3]
     3124 MOVE                             R28 R23
     3125 GETIMPORT                        R27 K4 [tostring]
     3127 CALL                             R27 1 1
     3128 MOVE                             R25 R27
     3129 LOADK                            R26 K43 [""]
     3130 CONCAT                           R22 R24 R26
     3131 SETTABLEKS                       R22 R21 K197 ["maxSlopeAngle"]
     3133 CALL                             R19 2 1
     3134 SETTABLEKS                       R19 R18 K22 ["translation"]
     3136 GETTABLEKS                       R19 R2 K14 ["userId"]
     3138 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3140 MOVE                             R19 R0
     3141 GETTABLEKS                       R20 R2 K14 ["userId"]
     3143 CALL                             R19 1 1
     3144 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3146 LOADK                            R19 K37 ["Universe"]
     3147 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3149 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3151 JUMP                             ; [0]
     3152 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3154 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3156 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3158 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3160 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3162 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3164 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3166 RETURN                           R18 1
     3167 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3169 JUMPIFNOTEQKN                    R18 K200 [33] ; [+95]
     3171 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3172 GETTABLEKS                       R19 R2 K19 ["id"]
     3174 SETTABLEKS                       R19 R18 K19 ["id"]
     3176 LOADK                            R19 K201 ["SentUpdate"]
     3177 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3179 LOADK                            R19 K40 ["Experience"]
     3180 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3182 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3184 GETIMPORT                        R21 K34 [pcall]
     3186 NEWCLOSURE                       R22 P6
     3187 CAPTURE                          VAL R20
     3188 CAPTURE                          VAL R3
     3189 CALL                             R21 1 2
     3190 JUMPIFNOT                        R21 ; [+2]
     3191 MOVE                             R19 R22
     3192 JUMP                             ; [+2]
     3193 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3194 JUMP                             ; [0]
     3195 SETTABLEKS                       R19 R18 K21 ["date"]
     3197 MOVE                             R19 R12
     3198 LOADK                            R20 K202 ["Description.SentUpdate"]
     3199 DUPTABLE                         R21 K204 [{"update"}]
     3200 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3202 JUMPIFNOT                        R24 ; [+5]
     3203 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3205 GETTABLEKS                       R23 R24 K205 ["Update"]
     3207 JUMPIF                           R23 ; [+1]
     3208 LOADK                            R23 K43 [""]
     3209 LOADK                            R24 K43 [""]
     3210 FASTCALL1                        TOSTRING R23 ; [+3]
     3211 MOVE                             R28 R23
     3212 GETIMPORT                        R27 K4 [tostring]
     3214 CALL                             R27 1 1
     3215 MOVE                             R25 R27
     3216 LOADK                            R26 K43 [""]
     3217 CONCAT                           R22 R24 R26
     3218 SETTABLEKS                       R22 R21 K203 ["update"]
     3220 CALL                             R19 2 1
     3221 SETTABLEKS                       R19 R18 K22 ["translation"]
     3223 GETTABLEKS                       R19 R2 K14 ["userId"]
     3225 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3227 MOVE                             R19 R0
     3228 GETTABLEKS                       R20 R2 K14 ["userId"]
     3230 CALL                             R19 1 1
     3231 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3233 LOADK                            R19 K37 ["Universe"]
     3234 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3236 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3238 JUMP                             ; [0]
     3239 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3241 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3243 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3245 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3247 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3249 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3251 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3253 LOADK                            R20 K43 [""]
     3254 FASTCALL1                        TOSTRING R4 ; [+3]
     3255 MOVE                             R24 R4
     3256 GETIMPORT                        R23 K4 [tostring]
     3258 CALL                             R23 1 1
     3259 MOVE                             R21 R23
     3260 LOADK                            R22 K206 ["/updates"]
     3261 CONCAT                           R19 R20 R22
     3262 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3264 RETURN                           R18 1
     3265 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3267 JUMPIFNOTEQKN                    R18 K207 [34] ; [+136]
     3269 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3270 GETTABLEKS                       R19 R2 K19 ["id"]
     3272 SETTABLEKS                       R19 R18 K19 ["id"]
     3274 LOADK                            R19 K208 ["SupportedLanguages"]
     3275 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3277 LOADK                            R19 K31 ["Unknown"]
     3278 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3280 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3282 GETIMPORT                        R21 K34 [pcall]
     3284 NEWCLOSURE                       R22 P6
     3285 CAPTURE                          VAL R20
     3286 CAPTURE                          VAL R3
     3287 CALL                             R21 1 2
     3288 JUMPIFNOT                        R21 ; [+2]
     3289 MOVE                             R19 R22
     3290 JUMP                             ; [+2]
     3291 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3292 JUMP                             ; [0]
     3293 SETTABLEKS                       R19 R18 K21 ["date"]
     3295 MOVE                             R19 R12
     3296 LOADK                            R20 K209 ["Description.SupportedLanguages"]
     3297 DUPTABLE                         R21 K211 [{"language", "action"}]
     3298 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3300 JUMPIFNOT                        R24 ; [+5]
     3301 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3303 GETTABLEKS                       R23 R24 K212 ["Language"]
     3305 JUMPIF                           R23 ; [+1]
     3306 LOADK                            R23 K43 [""]
     3307 LOADK                            R24 K43 [""]
     3308 FASTCALL1                        TOSTRING R23 ; [+3]
     3309 MOVE                             R28 R23
     3310 GETIMPORT                        R27 K4 [tostring]
     3312 CALL                             R27 1 1
     3313 MOVE                             R25 R27
     3314 LOADK                            R26 K43 [""]
     3315 CONCAT                           R22 R24 R26
     3316 SETTABLEKS                       R22 R21 K210 ["language"]
     3318 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3320 JUMPIFNOT                        R26 ; [+5]
     3321 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3323 GETTABLEKS                       R25 R26 K42 ["Action"]
     3325 JUMPIF                           R25 ; [+1]
     3326 LOADK                            R25 K43 [""]
     3327 GETIMPORT                        R26 K46 [string.lower]
     3329 FASTCALL1                        TOSTRING R25 ; [+3]
     3330 MOVE                             R28 R25
     3331 GETIMPORT                        R27 K4 [tostring]
     3333 CALL                             R27 1 1
     3334 CALL                             R26 1 1
     3335 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3337 LOADB                            R24 1
     3338 JUMP                             ; [+1]
     3339 LOADB                            R24 0
     3340 JUMPIFNOT                        R24 ; [+4]
     3341 MOVE                             R23 R12
     3342 LOADK                            R24 K213 ["Description.ActionAdded"]
     3343 CALL                             R23 1 1
     3344 JUMPIF                           R23 ; [+3]
     3345 MOVE                             R23 R12
     3346 LOADK                            R24 K214 ["Description.ActionRemoved"]
     3347 CALL                             R23 1 1
     3348 LOADK                            R24 K43 [""]
     3349 FASTCALL1                        TOSTRING R23 ; [+3]
     3350 MOVE                             R28 R23
     3351 GETIMPORT                        R27 K4 [tostring]
     3353 CALL                             R27 1 1
     3354 MOVE                             R25 R27
     3355 LOADK                            R26 K43 [""]
     3356 CONCAT                           R22 R24 R26
     3357 SETTABLEKS                       R22 R21 K138 ["action"]
     3359 CALL                             R19 2 1
     3360 SETTABLEKS                       R19 R18 K22 ["translation"]
     3362 GETTABLEKS                       R19 R2 K14 ["userId"]
     3364 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3366 MOVE                             R19 R0
     3367 GETTABLEKS                       R20 R2 K14 ["userId"]
     3369 CALL                             R19 1 1
     3370 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3372 LOADK                            R19 K37 ["Universe"]
     3373 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3375 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3377 JUMP                             ; [0]
     3378 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3380 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3382 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3384 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3386 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3388 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3390 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3392 LOADK                            R20 K43 [""]
     3393 FASTCALL1                        TOSTRING R4 ; [+3]
     3394 MOVE                             R24 R4
     3395 GETIMPORT                        R23 K4 [tostring]
     3397 CALL                             R23 1 1
     3398 MOVE                             R21 R23
     3399 LOADK                            R22 K215 ["/localization"]
     3400 CONCAT                           R19 R20 R22
     3401 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3403 RETURN                           R18 1
     3404 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3406 JUMPIFNOTEQKN                    R18 K216 [35] ; [+136]
     3408 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3409 GETTABLEKS                       R19 R2 K19 ["id"]
     3411 SETTABLEKS                       R19 R18 K19 ["id"]
     3413 LOADK                            R19 K217 ["AutoTranslationExperienceInformation"]
     3414 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3416 LOADK                            R19 K31 ["Unknown"]
     3417 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3419 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3421 GETIMPORT                        R21 K34 [pcall]
     3423 NEWCLOSURE                       R22 P6
     3424 CAPTURE                          VAL R20
     3425 CAPTURE                          VAL R3
     3426 CALL                             R21 1 2
     3427 JUMPIFNOT                        R21 ; [+2]
     3428 MOVE                             R19 R22
     3429 JUMP                             ; [+2]
     3430 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3431 JUMP                             ; [0]
     3432 SETTABLEKS                       R19 R18 K21 ["date"]
     3434 MOVE                             R19 R12
     3435 LOADK                            R20 K218 ["Description.AutoTranslationExperienceInformation"]
     3436 DUPTABLE                         R21 K211 [{"language", "action"}]
     3437 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3439 JUMPIFNOT                        R24 ; [+5]
     3440 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3442 GETTABLEKS                       R23 R24 K212 ["Language"]
     3444 JUMPIF                           R23 ; [+1]
     3445 LOADK                            R23 K43 [""]
     3446 LOADK                            R24 K43 [""]
     3447 FASTCALL1                        TOSTRING R23 ; [+3]
     3448 MOVE                             R28 R23
     3449 GETIMPORT                        R27 K4 [tostring]
     3451 CALL                             R27 1 1
     3452 MOVE                             R25 R27
     3453 LOADK                            R26 K43 [""]
     3454 CONCAT                           R22 R24 R26
     3455 SETTABLEKS                       R22 R21 K210 ["language"]
     3457 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3459 JUMPIFNOT                        R26 ; [+5]
     3460 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3462 GETTABLEKS                       R25 R26 K42 ["Action"]
     3464 JUMPIF                           R25 ; [+1]
     3465 LOADK                            R25 K43 [""]
     3466 GETIMPORT                        R26 K46 [string.lower]
     3468 FASTCALL1                        TOSTRING R25 ; [+3]
     3469 MOVE                             R28 R25
     3470 GETIMPORT                        R27 K4 [tostring]
     3472 CALL                             R27 1 1
     3473 CALL                             R26 1 1
     3474 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3476 LOADB                            R24 1
     3477 JUMP                             ; [+1]
     3478 LOADB                            R24 0
     3479 JUMPIFNOT                        R24 ; [+4]
     3480 MOVE                             R23 R12
     3481 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3482 CALL                             R23 1 1
     3483 JUMPIF                           R23 ; [+3]
     3484 MOVE                             R23 R12
     3485 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3486 CALL                             R23 1 1
     3487 LOADK                            R24 K43 [""]
     3488 FASTCALL1                        TOSTRING R23 ; [+3]
     3489 MOVE                             R28 R23
     3490 GETIMPORT                        R27 K4 [tostring]
     3492 CALL                             R27 1 1
     3493 MOVE                             R25 R27
     3494 LOADK                            R26 K43 [""]
     3495 CONCAT                           R22 R24 R26
     3496 SETTABLEKS                       R22 R21 K138 ["action"]
     3498 CALL                             R19 2 1
     3499 SETTABLEKS                       R19 R18 K22 ["translation"]
     3501 GETTABLEKS                       R19 R2 K14 ["userId"]
     3503 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3505 MOVE                             R19 R0
     3506 GETTABLEKS                       R20 R2 K14 ["userId"]
     3508 CALL                             R19 1 1
     3509 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3511 LOADK                            R19 K37 ["Universe"]
     3512 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3514 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3516 JUMP                             ; [0]
     3517 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3519 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3521 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3523 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3525 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3527 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3529 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3531 LOADK                            R20 K43 [""]
     3532 FASTCALL1                        TOSTRING R4 ; [+3]
     3533 MOVE                             R24 R4
     3534 GETIMPORT                        R23 K4 [tostring]
     3536 CALL                             R23 1 1
     3537 MOVE                             R21 R23
     3538 LOADK                            R22 K215 ["/localization"]
     3539 CONCAT                           R19 R20 R22
     3540 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3542 RETURN                           R18 1
     3543 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3545 JUMPIFNOTEQKN                    R18 K219 [36] ; [+136]
     3547 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3548 GETTABLEKS                       R19 R2 K19 ["id"]
     3550 SETTABLEKS                       R19 R18 K19 ["id"]
     3552 LOADK                            R19 K220 ["AutoTranslationExperienceStringsAndProducts"]
     3553 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3555 LOADK                            R19 K31 ["Unknown"]
     3556 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3558 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3560 GETIMPORT                        R21 K34 [pcall]
     3562 NEWCLOSURE                       R22 P6
     3563 CAPTURE                          VAL R20
     3564 CAPTURE                          VAL R3
     3565 CALL                             R21 1 2
     3566 JUMPIFNOT                        R21 ; [+2]
     3567 MOVE                             R19 R22
     3568 JUMP                             ; [+2]
     3569 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3570 JUMP                             ; [0]
     3571 SETTABLEKS                       R19 R18 K21 ["date"]
     3573 MOVE                             R19 R12
     3574 LOADK                            R20 K221 ["Description.AutoTranslationExperienceStringsAndProducts"]
     3575 DUPTABLE                         R21 K211 [{"language", "action"}]
     3576 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3578 JUMPIFNOT                        R24 ; [+5]
     3579 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3581 GETTABLEKS                       R23 R24 K212 ["Language"]
     3583 JUMPIF                           R23 ; [+1]
     3584 LOADK                            R23 K43 [""]
     3585 LOADK                            R24 K43 [""]
     3586 FASTCALL1                        TOSTRING R23 ; [+3]
     3587 MOVE                             R28 R23
     3588 GETIMPORT                        R27 K4 [tostring]
     3590 CALL                             R27 1 1
     3591 MOVE                             R25 R27
     3592 LOADK                            R26 K43 [""]
     3593 CONCAT                           R22 R24 R26
     3594 SETTABLEKS                       R22 R21 K210 ["language"]
     3596 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3598 JUMPIFNOT                        R26 ; [+5]
     3599 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3601 GETTABLEKS                       R25 R26 K42 ["Action"]
     3603 JUMPIF                           R25 ; [+1]
     3604 LOADK                            R25 K43 [""]
     3605 GETIMPORT                        R26 K46 [string.lower]
     3607 FASTCALL1                        TOSTRING R25 ; [+3]
     3608 MOVE                             R28 R25
     3609 GETIMPORT                        R27 K4 [tostring]
     3611 CALL                             R27 1 1
     3612 CALL                             R26 1 1
     3613 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3615 LOADB                            R24 1
     3616 JUMP                             ; [+1]
     3617 LOADB                            R24 0
     3618 JUMPIFNOT                        R24 ; [+4]
     3619 MOVE                             R23 R12
     3620 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3621 CALL                             R23 1 1
     3622 JUMPIF                           R23 ; [+3]
     3623 MOVE                             R23 R12
     3624 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3625 CALL                             R23 1 1
     3626 LOADK                            R24 K43 [""]
     3627 FASTCALL1                        TOSTRING R23 ; [+3]
     3628 MOVE                             R28 R23
     3629 GETIMPORT                        R27 K4 [tostring]
     3631 CALL                             R27 1 1
     3632 MOVE                             R25 R27
     3633 LOADK                            R26 K43 [""]
     3634 CONCAT                           R22 R24 R26
     3635 SETTABLEKS                       R22 R21 K138 ["action"]
     3637 CALL                             R19 2 1
     3638 SETTABLEKS                       R19 R18 K22 ["translation"]
     3640 GETTABLEKS                       R19 R2 K14 ["userId"]
     3642 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3644 MOVE                             R19 R0
     3645 GETTABLEKS                       R20 R2 K14 ["userId"]
     3647 CALL                             R19 1 1
     3648 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3650 LOADK                            R19 K37 ["Universe"]
     3651 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3653 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3655 JUMP                             ; [0]
     3656 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3658 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3660 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3662 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3664 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3666 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3668 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3670 LOADK                            R20 K43 [""]
     3671 FASTCALL1                        TOSTRING R4 ; [+3]
     3672 MOVE                             R24 R4
     3673 GETIMPORT                        R23 K4 [tostring]
     3675 CALL                             R23 1 1
     3676 MOVE                             R21 R23
     3677 LOADK                            R22 K215 ["/localization"]
     3678 CONCAT                           R19 R20 R22
     3679 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3681 RETURN                           R18 1
     3682 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3684 JUMPIFNOTEQKN                    R18 K222 [37] ; [+116]
     3686 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3687 GETTABLEKS                       R19 R2 K19 ["id"]
     3689 SETTABLEKS                       R19 R18 K19 ["id"]
     3691 LOADK                            R19 K223 ["LocalizationSettingsAutomaticTextCapture"]
     3692 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3694 LOADK                            R19 K31 ["Unknown"]
     3695 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3697 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3699 GETIMPORT                        R21 K34 [pcall]
     3701 NEWCLOSURE                       R22 P6
     3702 CAPTURE                          VAL R20
     3703 CAPTURE                          VAL R3
     3704 CALL                             R21 1 2
     3705 JUMPIFNOT                        R21 ; [+2]
     3706 MOVE                             R19 R22
     3707 JUMP                             ; [+2]
     3708 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3709 JUMP                             ; [0]
     3710 SETTABLEKS                       R19 R18 K21 ["date"]
     3712 MOVE                             R19 R12
     3713 LOADK                            R20 K224 ["Description.LocalizationSettingsAutomaticTextCapture"]
     3714 DUPTABLE                         R21 K139 [{"action"}]
     3715 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3717 JUMPIFNOT                        R26 ; [+5]
     3718 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3720 GETTABLEKS                       R25 R26 K42 ["Action"]
     3722 JUMPIF                           R25 ; [+1]
     3723 LOADK                            R25 K43 [""]
     3724 GETIMPORT                        R26 K46 [string.lower]
     3726 FASTCALL1                        TOSTRING R25 ; [+3]
     3727 MOVE                             R28 R25
     3728 GETIMPORT                        R27 K4 [tostring]
     3730 CALL                             R27 1 1
     3731 CALL                             R26 1 1
     3732 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3734 LOADB                            R24 1
     3735 JUMP                             ; [+1]
     3736 LOADB                            R24 0
     3737 JUMPIFNOT                        R24 ; [+4]
     3738 MOVE                             R23 R12
     3739 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3740 CALL                             R23 1 1
     3741 JUMPIF                           R23 ; [+3]
     3742 MOVE                             R23 R12
     3743 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3744 CALL                             R23 1 1
     3745 LOADK                            R24 K43 [""]
     3746 FASTCALL1                        TOSTRING R23 ; [+3]
     3747 MOVE                             R28 R23
     3748 GETIMPORT                        R27 K4 [tostring]
     3750 CALL                             R27 1 1
     3751 MOVE                             R25 R27
     3752 LOADK                            R26 K43 [""]
     3753 CONCAT                           R22 R24 R26
     3754 SETTABLEKS                       R22 R21 K138 ["action"]
     3756 CALL                             R19 2 1
     3757 SETTABLEKS                       R19 R18 K22 ["translation"]
     3759 GETTABLEKS                       R19 R2 K14 ["userId"]
     3761 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3763 MOVE                             R19 R0
     3764 GETTABLEKS                       R20 R2 K14 ["userId"]
     3766 CALL                             R19 1 1
     3767 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3769 LOADK                            R19 K37 ["Universe"]
     3770 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3772 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3774 JUMP                             ; [0]
     3775 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3777 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3779 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3781 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3783 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3785 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3787 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3789 LOADK                            R20 K43 [""]
     3790 FASTCALL1                        TOSTRING R4 ; [+3]
     3791 MOVE                             R24 R4
     3792 GETIMPORT                        R23 K4 [tostring]
     3794 CALL                             R23 1 1
     3795 MOVE                             R21 R23
     3796 LOADK                            R22 K215 ["/localization"]
     3797 CONCAT                           R19 R20 R22
     3798 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3800 RETURN                           R18 1
     3801 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3803 JUMPIFNOTEQKN                    R18 K225 [38] ; [+116]
     3805 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3806 GETTABLEKS                       R19 R2 K19 ["id"]
     3808 SETTABLEKS                       R19 R18 K19 ["id"]
     3810 LOADK                            R19 K226 ["LocalizationSettingsUserTranslatedContent"]
     3811 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3813 LOADK                            R19 K31 ["Unknown"]
     3814 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3816 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3818 GETIMPORT                        R21 K34 [pcall]
     3820 NEWCLOSURE                       R22 P6
     3821 CAPTURE                          VAL R20
     3822 CAPTURE                          VAL R3
     3823 CALL                             R21 1 2
     3824 JUMPIFNOT                        R21 ; [+2]
     3825 MOVE                             R19 R22
     3826 JUMP                             ; [+2]
     3827 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3828 JUMP                             ; [0]
     3829 SETTABLEKS                       R19 R18 K21 ["date"]
     3831 MOVE                             R19 R12
     3832 LOADK                            R20 K227 ["Description.LocalizationSettingsUserTranslatedContent"]
     3833 DUPTABLE                         R21 K139 [{"action"}]
     3834 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3836 JUMPIFNOT                        R26 ; [+5]
     3837 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3839 GETTABLEKS                       R25 R26 K42 ["Action"]
     3841 JUMPIF                           R25 ; [+1]
     3842 LOADK                            R25 K43 [""]
     3843 GETIMPORT                        R26 K46 [string.lower]
     3845 FASTCALL1                        TOSTRING R25 ; [+3]
     3846 MOVE                             R28 R25
     3847 GETIMPORT                        R27 K4 [tostring]
     3849 CALL                             R27 1 1
     3850 CALL                             R26 1 1
     3851 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3853 LOADB                            R24 1
     3854 JUMP                             ; [+1]
     3855 LOADB                            R24 0
     3856 JUMPIFNOT                        R24 ; [+4]
     3857 MOVE                             R23 R12
     3858 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3859 CALL                             R23 1 1
     3860 JUMPIF                           R23 ; [+3]
     3861 MOVE                             R23 R12
     3862 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3863 CALL                             R23 1 1
     3864 LOADK                            R24 K43 [""]
     3865 FASTCALL1                        TOSTRING R23 ; [+3]
     3866 MOVE                             R28 R23
     3867 GETIMPORT                        R27 K4 [tostring]
     3869 CALL                             R27 1 1
     3870 MOVE                             R25 R27
     3871 LOADK                            R26 K43 [""]
     3872 CONCAT                           R22 R24 R26
     3873 SETTABLEKS                       R22 R21 K138 ["action"]
     3875 CALL                             R19 2 1
     3876 SETTABLEKS                       R19 R18 K22 ["translation"]
     3878 GETTABLEKS                       R19 R2 K14 ["userId"]
     3880 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3882 MOVE                             R19 R0
     3883 GETTABLEKS                       R20 R2 K14 ["userId"]
     3885 CALL                             R19 1 1
     3886 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3888 LOADK                            R19 K37 ["Universe"]
     3889 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3891 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3893 JUMP                             ; [0]
     3894 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3896 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3898 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3900 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3902 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3904 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3906 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3908 LOADK                            R20 K43 [""]
     3909 FASTCALL1                        TOSTRING R4 ; [+3]
     3910 MOVE                             R24 R4
     3911 GETIMPORT                        R23 K4 [tostring]
     3913 CALL                             R23 1 1
     3914 MOVE                             R21 R23
     3915 LOADK                            R22 K215 ["/localization"]
     3916 CONCAT                           R19 R20 R22
     3917 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3919 RETURN                           R18 1
     3920 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3922 JUMPIFNOTEQKN                    R18 K228 [39] ; [+61]
     3924 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3925 GETTABLEKS                       R19 R2 K19 ["id"]
     3927 SETTABLEKS                       R19 R18 K19 ["id"]
     3929 LOADK                            R19 K229 ["ClearUnmodifiedAutoCaptureEntries"]
     3930 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3932 LOADK                            R19 K31 ["Unknown"]
     3933 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3935 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3937 GETIMPORT                        R21 K34 [pcall]
     3939 NEWCLOSURE                       R22 P6
     3940 CAPTURE                          VAL R20
     3941 CAPTURE                          VAL R3
     3942 CALL                             R21 1 2
     3943 JUMPIFNOT                        R21 ; [+2]
     3944 MOVE                             R19 R22
     3945 JUMP                             ; [+2]
     3946 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3947 JUMP                             ; [0]
     3948 SETTABLEKS                       R19 R18 K21 ["date"]
     3950 LOADK                            R19 K43 [""]
     3951 SETTABLEKS                       R19 R18 K22 ["translation"]
     3953 GETTABLEKS                       R19 R2 K14 ["userId"]
     3955 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3957 MOVE                             R19 R0
     3958 GETTABLEKS                       R20 R2 K14 ["userId"]
     3960 CALL                             R19 1 1
     3961 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3963 LOADK                            R19 K37 ["Universe"]
     3964 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3966 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3968 JUMP                             ; [0]
     3969 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3971 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3973 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3975 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3977 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3979 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3981 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3983 RETURN                           R18 1
     3984 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3986 JUMPIFNOTEQKN                    R18 K230 [40] ; [+61]
     3988 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3989 GETTABLEKS                       R19 R2 K19 ["id"]
     3991 SETTABLEKS                       R19 R18 K19 ["id"]
     3993 LOADK                            R19 K231 ["AnalyticsReport"]
     3994 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3996 LOADK                            R19 K31 ["Unknown"]
     3997 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3999 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4001 GETIMPORT                        R21 K34 [pcall]
     4003 NEWCLOSURE                       R22 P6
     4004 CAPTURE                          VAL R20
     4005 CAPTURE                          VAL R3
     4006 CALL                             R21 1 2
     4007 JUMPIFNOT                        R21 ; [+2]
     4008 MOVE                             R19 R22
     4009 JUMP                             ; [+2]
     4010 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4011 JUMP                             ; [0]
     4012 SETTABLEKS                       R19 R18 K21 ["date"]
     4014 LOADK                            R19 K43 [""]
     4015 SETTABLEKS                       R19 R18 K22 ["translation"]
     4017 GETTABLEKS                       R19 R2 K14 ["userId"]
     4019 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4021 MOVE                             R19 R0
     4022 GETTABLEKS                       R20 R2 K14 ["userId"]
     4024 CALL                             R19 1 1
     4025 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4027 LOADK                            R19 K37 ["Universe"]
     4028 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4030 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4032 JUMP                             ; [0]
     4033 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4035 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4037 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4039 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4041 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4043 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4045 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4047 RETURN                           R18 1
     4048 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4050 JUMPIFNOTEQKN                    R18 K232 [41] ; [+134]
     4052 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     4053 GETTABLEKS                       R19 R2 K19 ["id"]
     4055 SETTABLEKS                       R19 R18 K19 ["id"]
     4057 LOADK                            R19 K235 ["TranslationIconAdded"]
     4058 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4060 LOADK                            R19 K31 ["Unknown"]
     4061 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4063 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4065 GETIMPORT                        R21 K34 [pcall]
     4067 NEWCLOSURE                       R22 P6
     4068 CAPTURE                          VAL R20
     4069 CAPTURE                          VAL R3
     4070 CALL                             R21 1 2
     4071 JUMPIFNOT                        R21 ; [+2]
     4072 MOVE                             R19 R22
     4073 JUMP                             ; [+2]
     4074 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4075 JUMP                             ; [0]
     4076 SETTABLEKS                       R19 R18 K21 ["date"]
     4078 MOVE                             R19 R12
     4079 LOADK                            R20 K236 ["Description.TranslationIconAdded"]
     4080 DUPTABLE                         R21 K238 [{"language", "iconName"}]
     4081 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4083 JUMPIFNOT                        R24 ; [+5]
     4084 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4086 GETTABLEKS                       R23 R24 K212 ["Language"]
     4088 JUMPIF                           R23 ; [+1]
     4089 LOADK                            R23 K43 [""]
     4090 LOADK                            R24 K43 [""]
     4091 FASTCALL1                        TOSTRING R23 ; [+3]
     4092 MOVE                             R28 R23
     4093 GETIMPORT                        R27 K4 [tostring]
     4095 CALL                             R27 1 1
     4096 MOVE                             R25 R27
     4097 LOADK                            R26 K43 [""]
     4098 CONCAT                           R22 R24 R26
     4099 SETTABLEKS                       R22 R21 K210 ["language"]
     4101 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4103 JUMPIFNOT                        R24 ; [+5]
     4104 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4106 GETTABLEKS                       R23 R24 K239 ["IconName"]
     4108 JUMPIF                           R23 ; [+1]
     4109 LOADK                            R23 K43 [""]
     4110 LOADK                            R24 K43 [""]
     4111 FASTCALL1                        TOSTRING R23 ; [+3]
     4112 MOVE                             R28 R23
     4113 GETIMPORT                        R27 K4 [tostring]
     4115 CALL                             R27 1 1
     4116 MOVE                             R25 R27
     4117 LOADK                            R26 K43 [""]
     4118 CONCAT                           R22 R24 R26
     4119 SETTABLEKS                       R22 R21 K237 ["iconName"]
     4121 CALL                             R19 2 1
     4122 SETTABLEKS                       R19 R18 K22 ["translation"]
     4124 GETTABLEKS                       R19 R2 K14 ["userId"]
     4126 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4128 MOVE                             R19 R0
     4129 GETTABLEKS                       R20 R2 K14 ["userId"]
     4131 CALL                             R19 1 1
     4132 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4134 LOADK                            R19 K37 ["Universe"]
     4135 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4137 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4139 JUMP                             ; [0]
     4140 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4142 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4144 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4146 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4148 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4150 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4152 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4154 LOADK                            R20 K43 [""]
     4155 FASTCALL1                        TOSTRING R4 ; [+3]
     4156 MOVE                             R24 R4
     4157 GETIMPORT                        R23 K4 [tostring]
     4159 CALL                             R23 1 1
     4160 MOVE                             R21 R23
     4161 LOADK                            R22 K240 ["/localization/translation"]
     4162 CONCAT                           R19 R20 R22
     4163 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4165 LOADK                            R20 K43 [""]
     4166 GETUPVAL                         R26 1
     4167 FASTCALL1                        TOSTRING R26 ; [+2]
     4168 GETIMPORT                        R25 K4 [tostring]
     4170 CALL                             R25 1 1
     4171 MOVE                             R21 R25
     4172 LOADK                            R22 K241 ["catalog/"]
     4173 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4175 FASTCALL1                        TOSTRING R26 ; [+2]
     4176 GETIMPORT                        R25 K4 [tostring]
     4178 CALL                             R25 1 1
     4179 MOVE                             R23 R25
     4180 LOADK                            R24 K43 [""]
     4181 CONCAT                           R19 R20 R24
     4182 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     4184 RETURN                           R18 1
     4185 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4187 JUMPIFNOTEQKN                    R18 K242 [42] ; [+134]
     4189 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     4190 GETTABLEKS                       R19 R2 K19 ["id"]
     4192 SETTABLEKS                       R19 R18 K19 ["id"]
     4194 LOADK                            R19 K243 ["TranslationIconDeleted"]
     4195 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4197 LOADK                            R19 K31 ["Unknown"]
     4198 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4200 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4202 GETIMPORT                        R21 K34 [pcall]
     4204 NEWCLOSURE                       R22 P6
     4205 CAPTURE                          VAL R20
     4206 CAPTURE                          VAL R3
     4207 CALL                             R21 1 2
     4208 JUMPIFNOT                        R21 ; [+2]
     4209 MOVE                             R19 R22
     4210 JUMP                             ; [+2]
     4211 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4212 JUMP                             ; [0]
     4213 SETTABLEKS                       R19 R18 K21 ["date"]
     4215 MOVE                             R19 R12
     4216 LOADK                            R20 K244 ["Description.TranslationIconDeleted"]
     4217 DUPTABLE                         R21 K238 [{"language", "iconName"}]
     4218 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4220 JUMPIFNOT                        R24 ; [+5]
     4221 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4223 GETTABLEKS                       R23 R24 K212 ["Language"]
     4225 JUMPIF                           R23 ; [+1]
     4226 LOADK                            R23 K43 [""]
     4227 LOADK                            R24 K43 [""]
     4228 FASTCALL1                        TOSTRING R23 ; [+3]
     4229 MOVE                             R28 R23
     4230 GETIMPORT                        R27 K4 [tostring]
     4232 CALL                             R27 1 1
     4233 MOVE                             R25 R27
     4234 LOADK                            R26 K43 [""]
     4235 CONCAT                           R22 R24 R26
     4236 SETTABLEKS                       R22 R21 K210 ["language"]
     4238 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4240 JUMPIFNOT                        R24 ; [+5]
     4241 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4243 GETTABLEKS                       R23 R24 K239 ["IconName"]
     4245 JUMPIF                           R23 ; [+1]
     4246 LOADK                            R23 K43 [""]
     4247 LOADK                            R24 K43 [""]
     4248 FASTCALL1                        TOSTRING R23 ; [+3]
     4249 MOVE                             R28 R23
     4250 GETIMPORT                        R27 K4 [tostring]
     4252 CALL                             R27 1 1
     4253 MOVE                             R25 R27
     4254 LOADK                            R26 K43 [""]
     4255 CONCAT                           R22 R24 R26
     4256 SETTABLEKS                       R22 R21 K237 ["iconName"]
     4258 CALL                             R19 2 1
     4259 SETTABLEKS                       R19 R18 K22 ["translation"]
     4261 GETTABLEKS                       R19 R2 K14 ["userId"]
     4263 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4265 MOVE                             R19 R0
     4266 GETTABLEKS                       R20 R2 K14 ["userId"]
     4268 CALL                             R19 1 1
     4269 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4271 LOADK                            R19 K37 ["Universe"]
     4272 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4274 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4276 JUMP                             ; [0]
     4277 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4279 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4281 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4283 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4285 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4287 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4289 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4291 LOADK                            R20 K43 [""]
     4292 FASTCALL1                        TOSTRING R4 ; [+3]
     4293 MOVE                             R24 R4
     4294 GETIMPORT                        R23 K4 [tostring]
     4296 CALL                             R23 1 1
     4297 MOVE                             R21 R23
     4298 LOADK                            R22 K240 ["/localization/translation"]
     4299 CONCAT                           R19 R20 R22
     4300 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4302 LOADK                            R20 K43 [""]
     4303 GETUPVAL                         R26 1
     4304 FASTCALL1                        TOSTRING R26 ; [+2]
     4305 GETIMPORT                        R25 K4 [tostring]
     4307 CALL                             R25 1 1
     4308 MOVE                             R21 R25
     4309 LOADK                            R22 K241 ["catalog/"]
     4310 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4312 FASTCALL1                        TOSTRING R26 ; [+2]
     4313 GETIMPORT                        R25 K4 [tostring]
     4315 CALL                             R25 1 1
     4316 MOVE                             R23 R25
     4317 LOADK                            R24 K43 [""]
     4318 CONCAT                           R19 R20 R24
     4319 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     4321 RETURN                           R18 1
     4322 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4324 JUMPIFNOTEQKN                    R18 K245 [43] ; [+95]
     4326 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4327 GETTABLEKS                       R19 R2 K19 ["id"]
     4329 SETTABLEKS                       R19 R18 K19 ["id"]
     4331 LOADK                            R19 K246 ["TranslationExperienceName"]
     4332 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4334 LOADK                            R19 K31 ["Unknown"]
     4335 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4337 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4339 GETIMPORT                        R21 K34 [pcall]
     4341 NEWCLOSURE                       R22 P6
     4342 CAPTURE                          VAL R20
     4343 CAPTURE                          VAL R3
     4344 CALL                             R21 1 2
     4345 JUMPIFNOT                        R21 ; [+2]
     4346 MOVE                             R19 R22
     4347 JUMP                             ; [+2]
     4348 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4349 JUMP                             ; [0]
     4350 SETTABLEKS                       R19 R18 K21 ["date"]
     4352 MOVE                             R19 R12
     4353 LOADK                            R20 K247 ["Description.TranslationExperienceName"]
     4354 DUPTABLE                         R21 K248 [{"language"}]
     4355 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4357 JUMPIFNOT                        R24 ; [+5]
     4358 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4360 GETTABLEKS                       R23 R24 K212 ["Language"]
     4362 JUMPIF                           R23 ; [+1]
     4363 LOADK                            R23 K43 [""]
     4364 LOADK                            R24 K43 [""]
     4365 FASTCALL1                        TOSTRING R23 ; [+3]
     4366 MOVE                             R28 R23
     4367 GETIMPORT                        R27 K4 [tostring]
     4369 CALL                             R27 1 1
     4370 MOVE                             R25 R27
     4371 LOADK                            R26 K43 [""]
     4372 CONCAT                           R22 R24 R26
     4373 SETTABLEKS                       R22 R21 K210 ["language"]
     4375 CALL                             R19 2 1
     4376 SETTABLEKS                       R19 R18 K22 ["translation"]
     4378 GETTABLEKS                       R19 R2 K14 ["userId"]
     4380 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4382 MOVE                             R19 R0
     4383 GETTABLEKS                       R20 R2 K14 ["userId"]
     4385 CALL                             R19 1 1
     4386 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4388 LOADK                            R19 K37 ["Universe"]
     4389 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4391 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4393 JUMP                             ; [0]
     4394 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4396 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4398 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4400 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4402 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4404 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4406 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4408 LOADK                            R20 K43 [""]
     4409 FASTCALL1                        TOSTRING R4 ; [+3]
     4410 MOVE                             R24 R4
     4411 GETIMPORT                        R23 K4 [tostring]
     4413 CALL                             R23 1 1
     4414 MOVE                             R21 R23
     4415 LOADK                            R22 K240 ["/localization/translation"]
     4416 CONCAT                           R19 R20 R22
     4417 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4419 RETURN                           R18 1
     4420 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4422 JUMPIFNOTEQKN                    R18 K249 [44] ; [+95]
     4424 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4425 GETTABLEKS                       R19 R2 K19 ["id"]
     4427 SETTABLEKS                       R19 R18 K19 ["id"]
     4429 LOADK                            R19 K250 ["TranslationExperienceDescription"]
     4430 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4432 LOADK                            R19 K31 ["Unknown"]
     4433 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4435 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4437 GETIMPORT                        R21 K34 [pcall]
     4439 NEWCLOSURE                       R22 P6
     4440 CAPTURE                          VAL R20
     4441 CAPTURE                          VAL R3
     4442 CALL                             R21 1 2
     4443 JUMPIFNOT                        R21 ; [+2]
     4444 MOVE                             R19 R22
     4445 JUMP                             ; [+2]
     4446 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4447 JUMP                             ; [0]
     4448 SETTABLEKS                       R19 R18 K21 ["date"]
     4450 MOVE                             R19 R12
     4451 LOADK                            R20 K251 ["Description.TranslationExperienceDescription"]
     4452 DUPTABLE                         R21 K248 [{"language"}]
     4453 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4455 JUMPIFNOT                        R24 ; [+5]
     4456 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4458 GETTABLEKS                       R23 R24 K212 ["Language"]
     4460 JUMPIF                           R23 ; [+1]
     4461 LOADK                            R23 K43 [""]
     4462 LOADK                            R24 K43 [""]
     4463 FASTCALL1                        TOSTRING R23 ; [+3]
     4464 MOVE                             R28 R23
     4465 GETIMPORT                        R27 K4 [tostring]
     4467 CALL                             R27 1 1
     4468 MOVE                             R25 R27
     4469 LOADK                            R26 K43 [""]
     4470 CONCAT                           R22 R24 R26
     4471 SETTABLEKS                       R22 R21 K210 ["language"]
     4473 CALL                             R19 2 1
     4474 SETTABLEKS                       R19 R18 K22 ["translation"]
     4476 GETTABLEKS                       R19 R2 K14 ["userId"]
     4478 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4480 MOVE                             R19 R0
     4481 GETTABLEKS                       R20 R2 K14 ["userId"]
     4483 CALL                             R19 1 1
     4484 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4486 LOADK                            R19 K37 ["Universe"]
     4487 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4489 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4491 JUMP                             ; [0]
     4492 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4494 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4496 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4498 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4500 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4502 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4504 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4506 LOADK                            R20 K43 [""]
     4507 FASTCALL1                        TOSTRING R4 ; [+3]
     4508 MOVE                             R24 R4
     4509 GETIMPORT                        R23 K4 [tostring]
     4511 CALL                             R23 1 1
     4512 MOVE                             R21 R23
     4513 LOADK                            R22 K240 ["/localization/translation"]
     4514 CONCAT                           R19 R20 R22
     4515 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4517 RETURN                           R18 1
     4518 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4520 JUMPIFNOTEQKN                    R18 K252 [45] ; [+115]
     4522 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4523 GETTABLEKS                       R19 R2 K19 ["id"]
     4525 SETTABLEKS                       R19 R18 K19 ["id"]
     4527 LOADK                            R19 K253 ["TranslationThumbnailAltText"]
     4528 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4530 LOADK                            R19 K31 ["Unknown"]
     4531 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4533 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4535 GETIMPORT                        R21 K34 [pcall]
     4537 NEWCLOSURE                       R22 P6
     4538 CAPTURE                          VAL R20
     4539 CAPTURE                          VAL R3
     4540 CALL                             R21 1 2
     4541 JUMPIFNOT                        R21 ; [+2]
     4542 MOVE                             R19 R22
     4543 JUMP                             ; [+2]
     4544 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4545 JUMP                             ; [0]
     4546 SETTABLEKS                       R19 R18 K21 ["date"]
     4548 MOVE                             R19 R12
     4549 LOADK                            R20 K254 ["Description.TranslationThumbnailAltText"]
     4550 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4551 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4553 JUMPIFNOT                        R24 ; [+5]
     4554 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4556 GETTABLEKS                       R23 R24 K212 ["Language"]
     4558 JUMPIF                           R23 ; [+1]
     4559 LOADK                            R23 K43 [""]
     4560 LOADK                            R24 K43 [""]
     4561 FASTCALL1                        TOSTRING R23 ; [+3]
     4562 MOVE                             R28 R23
     4563 GETIMPORT                        R27 K4 [tostring]
     4565 CALL                             R27 1 1
     4566 MOVE                             R25 R27
     4567 LOADK                            R26 K43 [""]
     4568 CONCAT                           R22 R24 R26
     4569 SETTABLEKS                       R22 R21 K210 ["language"]
     4571 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4573 JUMPIFNOT                        R24 ; [+5]
     4574 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4576 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4578 JUMPIF                           R23 ; [+1]
     4579 LOADK                            R23 K43 [""]
     4580 LOADK                            R24 K43 [""]
     4581 FASTCALL1                        TOSTRING R23 ; [+3]
     4582 MOVE                             R28 R23
     4583 GETIMPORT                        R27 K4 [tostring]
     4585 CALL                             R27 1 1
     4586 MOVE                             R25 R27
     4587 LOADK                            R26 K43 [""]
     4588 CONCAT                           R22 R24 R26
     4589 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4591 CALL                             R19 2 1
     4592 SETTABLEKS                       R19 R18 K22 ["translation"]
     4594 GETTABLEKS                       R19 R2 K14 ["userId"]
     4596 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4598 MOVE                             R19 R0
     4599 GETTABLEKS                       R20 R2 K14 ["userId"]
     4601 CALL                             R19 1 1
     4602 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4604 LOADK                            R19 K37 ["Universe"]
     4605 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4607 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4609 JUMP                             ; [0]
     4610 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4612 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4614 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4616 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4618 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4620 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4622 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4624 LOADK                            R20 K43 [""]
     4625 FASTCALL1                        TOSTRING R4 ; [+3]
     4626 MOVE                             R24 R4
     4627 GETIMPORT                        R23 K4 [tostring]
     4629 CALL                             R23 1 1
     4630 MOVE                             R21 R23
     4631 LOADK                            R22 K240 ["/localization/translation"]
     4632 CONCAT                           R19 R20 R22
     4633 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4635 RETURN                           R18 1
     4636 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4638 JUMPIFNOTEQKN                    R18 K258 [46] ; [+115]
     4640 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4641 GETTABLEKS                       R19 R2 K19 ["id"]
     4643 SETTABLEKS                       R19 R18 K19 ["id"]
     4645 LOADK                            R19 K3 ["tostring"]
     4646 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4648 LOADK                            R19 K31 ["Unknown"]
     4649 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4651 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4653 GETIMPORT                        R21 K34 [pcall]
     4655 NEWCLOSURE                       R22 P6
     4656 CAPTURE                          VAL R20
     4657 CAPTURE                          VAL R3
     4658 CALL                             R21 1 2
     4659 JUMPIFNOT                        R21 ; [+2]
     4660 MOVE                             R19 R22
     4661 JUMP                             ; [+2]
     4662 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4663 JUMP                             ; [0]
     4664 SETTABLEKS                       R19 R18 K21 ["date"]
     4666 MOVE                             R19 R12
     4667 LOADK                            R20 K4 [tostring]
     4668 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4669 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4671 JUMPIFNOT                        R24 ; [+5]
     4672 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4674 GETTABLEKS                       R23 R24 K212 ["Language"]
     4676 JUMPIF                           R23 ; [+1]
     4677 LOADK                            R23 K43 [""]
     4678 LOADK                            R24 K43 [""]
     4679 FASTCALL1                        TOSTRING R23 ; [+3]
     4680 MOVE                             R28 R23
     4681 GETIMPORT                        R27 K4 [tostring]
     4683 CALL                             R27 1 1
     4684 MOVE                             R25 R27
     4685 LOADK                            R26 K43 [""]
     4686 CONCAT                           R22 R24 R26
     4687 SETTABLEKS                       R22 R21 K210 ["language"]
     4689 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4691 JUMPIFNOT                        R24 ; [+5]
     4692 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4694 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4696 JUMPIF                           R23 ; [+1]
     4697 LOADK                            R23 K43 [""]
     4698 LOADK                            R24 K43 [""]
     4699 FASTCALL1                        TOSTRING R23 ; [+3]
     4700 MOVE                             R28 R23
     4701 GETIMPORT                        R27 K4 [tostring]
     4703 CALL                             R27 1 1
     4704 MOVE                             R25 R27
     4705 LOADK                            R26 K43 [""]
     4706 CONCAT                           R22 R24 R26
     4707 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4709 CALL                             R19 2 1
     4710 SETTABLEKS                       R19 R18 K22 ["translation"]
     4712 GETTABLEKS                       R19 R2 K14 ["userId"]
     4714 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4716 MOVE                             R19 R0
     4717 GETTABLEKS                       R20 R2 K14 ["userId"]
     4719 CALL                             R19 1 1
     4720 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4722 LOADK                            R19 K37 ["Universe"]
     4723 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4725 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4727 JUMP                             ; [0]
     4728 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4730 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4732 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4734 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4736 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4738 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4740 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4742 LOADK                            R20 K43 [""]
     4743 FASTCALL1                        TOSTRING R4 ; [+3]
     4744 MOVE                             R24 R4
     4745 GETIMPORT                        R23 K4 [tostring]
     4747 CALL                             R23 1 1
     4748 MOVE                             R21 R23
     4749 LOADK                            R22 K240 ["/localization/translation"]
     4750 CONCAT                           R19 R20 R22
     4751 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4753 RETURN                           R18 1
     4754 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4756 JUMPIFNOTEQKN                    R18 K261 [47] ; [+115]
     4758 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4759 GETTABLEKS                       R19 R2 K19 ["id"]
     4761 SETTABLEKS                       R19 R18 K19 ["id"]
     4763 LOADK                            R19 K6 ["placeId"]
     4764 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4766 LOADK                            R19 K31 ["Unknown"]
     4767 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4769 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4771 GETIMPORT                        R21 K34 [pcall]
     4773 NEWCLOSURE                       R22 P6
     4774 CAPTURE                          VAL R20
     4775 CAPTURE                          VAL R3
     4776 CALL                             R21 1 2
     4777 JUMPIFNOT                        R21 ; [+2]
     4778 MOVE                             R19 R22
     4779 JUMP                             ; [+2]
     4780 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4781 JUMP                             ; [0]
     4782 SETTABLEKS                       R19 R18 K21 ["date"]
     4784 MOVE                             R19 R12
     4785 LOADK                            R20 K7 ["/badges/"]
     4786 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4787 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4789 JUMPIFNOT                        R24 ; [+5]
     4790 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4792 GETTABLEKS                       R23 R24 K212 ["Language"]
     4794 JUMPIF                           R23 ; [+1]
     4795 LOADK                            R23 K43 [""]
     4796 LOADK                            R24 K43 [""]
     4797 FASTCALL1                        TOSTRING R23 ; [+3]
     4798 MOVE                             R28 R23
     4799 GETIMPORT                        R27 K4 [tostring]
     4801 CALL                             R27 1 1
     4802 MOVE                             R25 R27
     4803 LOADK                            R26 K43 [""]
     4804 CONCAT                           R22 R24 R26
     4805 SETTABLEKS                       R22 R21 K210 ["language"]
     4807 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4809 JUMPIFNOT                        R24 ; [+5]
     4810 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4812 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4814 JUMPIF                           R23 ; [+1]
     4815 LOADK                            R23 K43 [""]
     4816 LOADK                            R24 K43 [""]
     4817 FASTCALL1                        TOSTRING R23 ; [+3]
     4818 MOVE                             R28 R23
     4819 GETIMPORT                        R27 K4 [tostring]
     4821 CALL                             R27 1 1
     4822 MOVE                             R25 R27
     4823 LOADK                            R26 K43 [""]
     4824 CONCAT                           R22 R24 R26
     4825 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4827 CALL                             R19 2 1
     4828 SETTABLEKS                       R19 R18 K22 ["translation"]
     4830 GETTABLEKS                       R19 R2 K14 ["userId"]
     4832 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4834 MOVE                             R19 R0
     4835 GETTABLEKS                       R20 R2 K14 ["userId"]
     4837 CALL                             R19 1 1
     4838 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4840 LOADK                            R19 K37 ["Universe"]
     4841 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4843 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4845 JUMP                             ; [0]
     4846 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4848 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4850 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4852 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4854 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4856 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4858 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4860 LOADK                            R20 K43 [""]
     4861 FASTCALL1                        TOSTRING R4 ; [+3]
     4862 MOVE                             R24 R4
     4863 GETIMPORT                        R23 K4 [tostring]
     4865 CALL                             R23 1 1
     4866 MOVE                             R21 R23
     4867 LOADK                            R22 K240 ["/localization/translation"]
     4868 CONCAT                           R19 R20 R22
     4869 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4871 RETURN                           R18 1
     4872 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4874 JUMPIFNOTEQKN                    R18 K264 [48] ; [+61]
     4876 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     4877 GETTABLEKS                       R19 R2 K19 ["id"]
     4879 SETTABLEKS                       R19 R18 K19 ["id"]
     4881 LOADK                            R19 K9 ["/overview"]
     4882 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4884 LOADK                            R19 K31 ["Unknown"]
     4885 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4887 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4889 GETIMPORT                        R21 K34 [pcall]
     4891 NEWCLOSURE                       R22 P6
     4892 CAPTURE                          VAL R20
     4893 CAPTURE                          VAL R3
     4894 CALL                             R21 1 2
     4895 JUMPIFNOT                        R21 ; [+2]
     4896 MOVE                             R19 R22
     4897 JUMP                             ; [+2]
     4898 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4899 JUMP                             ; [0]
     4900 SETTABLEKS                       R19 R18 K21 ["date"]
     4902 LOADK                            R19 K43 [""]
     4903 SETTABLEKS                       R19 R18 K22 ["translation"]
     4905 GETTABLEKS                       R19 R2 K14 ["userId"]
     4907 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4909 MOVE                             R19 R0
     4910 GETTABLEKS                       R20 R2 K14 ["userId"]
     4912 CALL                             R19 1 1
     4913 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4915 LOADK                            R19 K37 ["Universe"]
     4916 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4918 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4920 JUMP                             ; [0]
     4921 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4923 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4925 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4927 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4929 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4931 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4933 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4935 RETURN                           R18 1
     4936 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4938 JUMPIFNOTEQKN                    R18 K266 [49] ; [+115]
     4940 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4941 GETTABLEKS                       R19 R2 K19 ["id"]
     4943 SETTABLEKS                       R19 R18 K19 ["id"]
     4945 LOADK                            R19 K11 ["/configure"]
     4946 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4948 LOADK                            R19 K31 ["Unknown"]
     4949 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4951 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4953 GETIMPORT                        R21 K34 [pcall]
     4955 NEWCLOSURE                       R22 P6
     4956 CAPTURE                          VAL R20
     4957 CAPTURE                          VAL R3
     4958 CALL                             R21 1 2
     4959 JUMPIFNOT                        R21 ; [+2]
     4960 MOVE                             R19 R22
     4961 JUMP                             ; [+2]
     4962 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4963 JUMP                             ; [0]
     4964 SETTABLEKS                       R19 R18 K21 ["date"]
     4966 MOVE                             R19 R12
     4967 LOADK                            R20 K12 ["/passes/"]
     4968 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     4969 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4971 JUMPIFNOT                        R24 ; [+5]
     4972 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4974 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     4976 JUMPIF                           R23 ; [+1]
     4977 LOADK                            R23 K43 [""]
     4978 LOADK                            R24 K43 [""]
     4979 FASTCALL1                        TOSTRING R23 ; [+3]
     4980 MOVE                             R28 R23
     4981 GETIMPORT                        R27 K4 [tostring]
     4983 CALL                             R27 1 1
     4984 MOVE                             R25 R27
     4985 LOADK                            R26 K43 [""]
     4986 CONCAT                           R22 R24 R26
     4987 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     4989 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4991 JUMPIFNOT                        R24 ; [+5]
     4992 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4994 GETTABLEKS                       R23 R24 K212 ["Language"]
     4996 JUMPIF                           R23 ; [+1]
     4997 LOADK                            R23 K43 [""]
     4998 LOADK                            R24 K43 [""]
     4999 FASTCALL1                        TOSTRING R23 ; [+3]
     5000 MOVE                             R28 R23
     5001 GETIMPORT                        R27 K4 [tostring]
     5003 CALL                             R27 1 1
     5004 MOVE                             R25 R27
     5005 LOADK                            R26 K43 [""]
     5006 CONCAT                           R22 R24 R26
     5007 SETTABLEKS                       R22 R21 K210 ["language"]
     5009 CALL                             R19 2 1
     5010 SETTABLEKS                       R19 R18 K22 ["translation"]
     5012 GETTABLEKS                       R19 R2 K14 ["userId"]
     5014 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5016 MOVE                             R19 R0
     5017 GETTABLEKS                       R20 R2 K14 ["userId"]
     5019 CALL                             R19 1 1
     5020 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5022 LOADK                            R19 K37 ["Universe"]
     5023 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5025 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5027 JUMP                             ; [0]
     5028 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5030 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5032 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5034 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5036 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5038 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5040 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5042 LOADK                            R20 K43 [""]
     5043 FASTCALL1                        TOSTRING R4 ; [+3]
     5044 MOVE                             R24 R4
     5045 GETIMPORT                        R23 K4 [tostring]
     5047 CALL                             R23 1 1
     5048 MOVE                             R21 R23
     5049 LOADK                            R22 K240 ["/localization/translation"]
     5050 CONCAT                           R19 R20 R22
     5051 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5053 RETURN                           R18 1
     5054 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5056 JUMPIFNOTEQKN                    R18 K272 [50] ; [+115]
     5058 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     5059 GETTABLEKS                       R19 R2 K19 ["id"]
     5061 SETTABLEKS                       R19 R18 K19 ["id"]
     5063 LOADK                            R19 K17 ["eventType"]
     5064 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5066 LOADK                            R19 K31 ["Unknown"]
     5067 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5069 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5071 GETIMPORT                        R21 K34 [pcall]
     5073 NEWCLOSURE                       R22 P6
     5074 CAPTURE                          VAL R20
     5075 CAPTURE                          VAL R3
     5076 CALL                             R21 1 2
     5077 JUMPIFNOT                        R21 ; [+2]
     5078 MOVE                             R19 R22
     5079 JUMP                             ; [+2]
     5080 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5081 JUMP                             ; [0]
     5082 SETTABLEKS                       R19 R18 K21 ["date"]
     5084 MOVE                             R19 R12
     5085 LOADK                            R20 K18 [0]
     5086 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     5087 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5089 JUMPIFNOT                        R24 ; [+5]
     5090 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5092 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     5094 JUMPIF                           R23 ; [+1]
     5095 LOADK                            R23 K43 [""]
     5096 LOADK                            R24 K43 [""]
     5097 FASTCALL1                        TOSTRING R23 ; [+3]
     5098 MOVE                             R28 R23
     5099 GETIMPORT                        R27 K4 [tostring]
     5101 CALL                             R27 1 1
     5102 MOVE                             R25 R27
     5103 LOADK                            R26 K43 [""]
     5104 CONCAT                           R22 R24 R26
     5105 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     5107 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5109 JUMPIFNOT                        R24 ; [+5]
     5110 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5112 GETTABLEKS                       R23 R24 K212 ["Language"]
     5114 JUMPIF                           R23 ; [+1]
     5115 LOADK                            R23 K43 [""]
     5116 LOADK                            R24 K43 [""]
     5117 FASTCALL1                        TOSTRING R23 ; [+3]
     5118 MOVE                             R28 R23
     5119 GETIMPORT                        R27 K4 [tostring]
     5121 CALL                             R27 1 1
     5122 MOVE                             R25 R27
     5123 LOADK                            R26 K43 [""]
     5124 CONCAT                           R22 R24 R26
     5125 SETTABLEKS                       R22 R21 K210 ["language"]
     5127 CALL                             R19 2 1
     5128 SETTABLEKS                       R19 R18 K22 ["translation"]
     5130 GETTABLEKS                       R19 R2 K14 ["userId"]
     5132 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5134 MOVE                             R19 R0
     5135 GETTABLEKS                       R20 R2 K14 ["userId"]
     5137 CALL                             R19 1 1
     5138 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5140 LOADK                            R19 K37 ["Universe"]
     5141 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5143 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5145 JUMP                             ; [0]
     5146 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5148 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5150 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5152 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5154 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5156 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5158 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5160 LOADK                            R20 K43 [""]
     5161 FASTCALL1                        TOSTRING R4 ; [+3]
     5162 MOVE                             R24 R4
     5163 GETIMPORT                        R23 K4 [tostring]
     5165 CALL                             R23 1 1
     5166 MOVE                             R21 R23
     5167 LOADK                            R22 K240 ["/localization/translation"]
     5168 CONCAT                           R19 R20 R22
     5169 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5171 RETURN                           R18 1
     5172 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5174 JUMPIFNOTEQKN                    R18 K275 [51] ; [+115]
     5176 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     5177 GETTABLEKS                       R19 R2 K19 ["id"]
     5179 SETTABLEKS                       R19 R18 K19 ["id"]
     5181 LOADK                            R19 K20 ["eventCategory"]
     5182 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5184 LOADK                            R19 K31 ["Unknown"]
     5185 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5187 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5189 GETIMPORT                        R21 K34 [pcall]
     5191 NEWCLOSURE                       R22 P6
     5192 CAPTURE                          VAL R20
     5193 CAPTURE                          VAL R3
     5194 CALL                             R21 1 2
     5195 JUMPIFNOT                        R21 ; [+2]
     5196 MOVE                             R19 R22
     5197 JUMP                             ; [+2]
     5198 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5199 JUMP                             ; [0]
     5200 SETTABLEKS                       R19 R18 K21 ["date"]
     5202 MOVE                             R19 R12
     5203 LOADK                            R20 K21 ["date"]
     5204 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     5205 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5207 JUMPIFNOT                        R24 ; [+5]
     5208 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5210 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     5212 JUMPIF                           R23 ; [+1]
     5213 LOADK                            R23 K43 [""]
     5214 LOADK                            R24 K43 [""]
     5215 FASTCALL1                        TOSTRING R23 ; [+3]
     5216 MOVE                             R28 R23
     5217 GETIMPORT                        R27 K4 [tostring]
     5219 CALL                             R27 1 1
     5220 MOVE                             R25 R27
     5221 LOADK                            R26 K43 [""]
     5222 CONCAT                           R22 R24 R26
     5223 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     5225 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5227 JUMPIFNOT                        R24 ; [+5]
     5228 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5230 GETTABLEKS                       R23 R24 K212 ["Language"]
     5232 JUMPIF                           R23 ; [+1]
     5233 LOADK                            R23 K43 [""]
     5234 LOADK                            R24 K43 [""]
     5235 FASTCALL1                        TOSTRING R23 ; [+3]
     5236 MOVE                             R28 R23
     5237 GETIMPORT                        R27 K4 [tostring]
     5239 CALL                             R27 1 1
     5240 MOVE                             R25 R27
     5241 LOADK                            R26 K43 [""]
     5242 CONCAT                           R22 R24 R26
     5243 SETTABLEKS                       R22 R21 K210 ["language"]
     5245 CALL                             R19 2 1
     5246 SETTABLEKS                       R19 R18 K22 ["translation"]
     5248 GETTABLEKS                       R19 R2 K14 ["userId"]
     5250 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5252 MOVE                             R19 R0
     5253 GETTABLEKS                       R20 R2 K14 ["userId"]
     5255 CALL                             R19 1 1
     5256 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5258 LOADK                            R19 K37 ["Universe"]
     5259 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5261 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5263 JUMP                             ; [0]
     5264 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5266 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5268 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5270 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5272 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5274 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5276 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5278 LOADK                            R20 K43 [""]
     5279 FASTCALL1                        TOSTRING R4 ; [+3]
     5280 MOVE                             R24 R4
     5281 GETIMPORT                        R23 K4 [tostring]
     5283 CALL                             R23 1 1
     5284 MOVE                             R21 R23
     5285 LOADK                            R22 K240 ["/localization/translation"]
     5286 CONCAT                           R19 R20 R22
     5287 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5289 RETURN                           R18 1
     5290 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5292 JUMPIFNOTEQKN                    R18 K278 [52] ; [+135]
     5294 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5295 GETTABLEKS                       R19 R2 K19 ["id"]
     5297 SETTABLEKS                       R19 R18 K19 ["id"]
     5299 LOADK                            R19 K23 ["actorId"]
     5300 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5302 LOADK                            R19 K31 ["Unknown"]
     5303 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5305 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5307 GETIMPORT                        R21 K34 [pcall]
     5309 NEWCLOSURE                       R22 P6
     5310 CAPTURE                          VAL R20
     5311 CAPTURE                          VAL R3
     5312 CALL                             R21 1 2
     5313 JUMPIFNOT                        R21 ; [+2]
     5314 MOVE                             R19 R22
     5315 JUMP                             ; [+2]
     5316 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5317 JUMP                             ; [0]
     5318 SETTABLEKS                       R19 R18 K21 ["date"]
     5320 MOVE                             R19 R12
     5321 LOADK                            R20 K24 ["actorName"]
     5322 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5323 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5325 JUMPIFNOT                        R24 ; [+5]
     5326 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5328 GETTABLEKS                       R23 R24 K212 ["Language"]
     5330 JUMPIF                           R23 ; [+1]
     5331 LOADK                            R23 K43 [""]
     5332 LOADK                            R24 K43 [""]
     5333 FASTCALL1                        TOSTRING R23 ; [+3]
     5334 MOVE                             R28 R23
     5335 GETIMPORT                        R27 K4 [tostring]
     5337 CALL                             R27 1 1
     5338 MOVE                             R25 R27
     5339 LOADK                            R26 K43 [""]
     5340 CONCAT                           R22 R24 R26
     5341 SETTABLEKS                       R22 R21 K210 ["language"]
     5343 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5345 JUMPIFNOT                        R24 ; [+5]
     5346 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5348 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5350 JUMPIF                           R23 ; [+1]
     5351 LOADK                            R23 K43 [""]
     5352 LOADK                            R24 K43 [""]
     5353 FASTCALL1                        TOSTRING R23 ; [+3]
     5354 MOVE                             R28 R23
     5355 GETIMPORT                        R27 K4 [tostring]
     5357 CALL                             R27 1 1
     5358 MOVE                             R25 R27
     5359 LOADK                            R26 K43 [""]
     5360 CONCAT                           R22 R24 R26
     5361 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5363 CALL                             R19 2 1
     5364 SETTABLEKS                       R19 R18 K22 ["translation"]
     5366 GETTABLEKS                       R19 R2 K14 ["userId"]
     5368 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5370 MOVE                             R19 R0
     5371 GETTABLEKS                       R20 R2 K14 ["userId"]
     5373 CALL                             R19 1 1
     5374 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5376 LOADK                            R19 K28 ["footerText"]
     5377 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5379 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5381 ORK                              R19 R20 K18 [0]
     5382 JUMP                             ; [0]
     5383 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5385 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5387 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5389 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5391 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5393 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5395 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5397 LOADK                            R20 K43 [""]
     5398 FASTCALL1                        TOSTRING R4 ; [+3]
     5399 MOVE                             R24 R4
     5400 GETIMPORT                        R23 K4 [tostring]
     5402 CALL                             R23 1 1
     5403 MOVE                             R21 R23
     5404 LOADK                            R22 K240 ["/localization/translation"]
     5405 CONCAT                           R19 R20 R22
     5406 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5408 LOADK                            R20 K43 [""]
     5409 GETUPVAL                         R26 1
     5410 FASTCALL1                        TOSTRING R26 ; [+2]
     5411 GETIMPORT                        R25 K4 [tostring]
     5413 CALL                             R25 1 1
     5414 MOVE                             R21 R25
     5415 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5416 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5418 FASTCALL1                        TOSTRING R26 ; [+2]
     5419 GETIMPORT                        R25 K4 [tostring]
     5421 CALL                             R25 1 1
     5422 MOVE                             R23 R25
     5423 LOADK                            R24 K43 [""]
     5424 CONCAT                           R19 R20 R24
     5425 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5427 RETURN                           R18 1
     5428 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5430 JUMPIFNOTEQKN                    R18 K286 [53] ; [+135]
     5432 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5433 GETTABLEKS                       R19 R2 K19 ["id"]
     5435 SETTABLEKS                       R19 R18 K19 ["id"]
     5437 LOADK                            R19 K31 ["Unknown"]
     5438 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5440 LOADK                            R19 K31 ["Unknown"]
     5441 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5443 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5445 GETIMPORT                        R21 K34 [pcall]
     5447 NEWCLOSURE                       R22 P6
     5448 CAPTURE                          VAL R20
     5449 CAPTURE                          VAL R3
     5450 CALL                             R21 1 2
     5451 JUMPIFNOT                        R21 ; [+2]
     5452 MOVE                             R19 R22
     5453 JUMP                             ; [+2]
     5454 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5455 JUMP                             ; [0]
     5456 SETTABLEKS                       R19 R18 K21 ["date"]
     5458 MOVE                             R19 R12
     5459 LOADK                            R20 K32 ["createdUnixTimeMs"]
     5460 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5461 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5463 JUMPIFNOT                        R24 ; [+5]
     5464 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5466 GETTABLEKS                       R23 R24 K212 ["Language"]
     5468 JUMPIF                           R23 ; [+1]
     5469 LOADK                            R23 K43 [""]
     5470 LOADK                            R24 K43 [""]
     5471 FASTCALL1                        TOSTRING R23 ; [+3]
     5472 MOVE                             R28 R23
     5473 GETIMPORT                        R27 K4 [tostring]
     5475 CALL                             R27 1 1
     5476 MOVE                             R25 R27
     5477 LOADK                            R26 K43 [""]
     5478 CONCAT                           R22 R24 R26
     5479 SETTABLEKS                       R22 R21 K210 ["language"]
     5481 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5483 JUMPIFNOT                        R24 ; [+5]
     5484 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5486 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5488 JUMPIF                           R23 ; [+1]
     5489 LOADK                            R23 K43 [""]
     5490 LOADK                            R24 K43 [""]
     5491 FASTCALL1                        TOSTRING R23 ; [+3]
     5492 MOVE                             R28 R23
     5493 GETIMPORT                        R27 K4 [tostring]
     5495 CALL                             R27 1 1
     5496 MOVE                             R25 R27
     5497 LOADK                            R26 K43 [""]
     5498 CONCAT                           R22 R24 R26
     5499 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5501 CALL                             R19 2 1
     5502 SETTABLEKS                       R19 R18 K22 ["translation"]
     5504 GETTABLEKS                       R19 R2 K14 ["userId"]
     5506 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5508 MOVE                             R19 R0
     5509 GETTABLEKS                       R20 R2 K14 ["userId"]
     5511 CALL                             R19 1 1
     5512 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5514 LOADK                            R19 K28 ["footerText"]
     5515 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5517 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5519 ORK                              R19 R20 K18 [0]
     5520 JUMP                             ; [0]
     5521 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5523 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5525 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5527 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5529 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5531 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5533 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5535 LOADK                            R20 K43 [""]
     5536 FASTCALL1                        TOSTRING R4 ; [+3]
     5537 MOVE                             R24 R4
     5538 GETIMPORT                        R23 K4 [tostring]
     5540 CALL                             R23 1 1
     5541 MOVE                             R21 R23
     5542 LOADK                            R22 K240 ["/localization/translation"]
     5543 CONCAT                           R19 R20 R22
     5544 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5546 LOADK                            R20 K43 [""]
     5547 GETUPVAL                         R26 1
     5548 FASTCALL1                        TOSTRING R26 ; [+2]
     5549 GETIMPORT                        R25 K4 [tostring]
     5551 CALL                             R25 1 1
     5552 MOVE                             R21 R25
     5553 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5554 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5556 FASTCALL1                        TOSTRING R26 ; [+2]
     5557 GETIMPORT                        R25 K4 [tostring]
     5559 CALL                             R25 1 1
     5560 MOVE                             R23 R25
     5561 LOADK                            R24 K43 [""]
     5562 CONCAT                           R19 R20 R24
     5563 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5565 RETURN                           R18 1
     5566 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5568 JUMPIFNOTEQKN                    R18 K289 [54] ; [+135]
     5570 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5571 GETTABLEKS                       R19 R2 K19 ["id"]
     5573 SETTABLEKS                       R19 R18 K19 ["id"]
     5575 LOADK                            R19 K34 [pcall]
     5576 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5578 LOADK                            R19 K31 ["Unknown"]
     5579 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5581 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5583 GETIMPORT                        R21 K34 [pcall]
     5585 NEWCLOSURE                       R22 P6
     5586 CAPTURE                          VAL R20
     5587 CAPTURE                          VAL R3
     5588 CALL                             R21 1 2
     5589 JUMPIFNOT                        R21 ; [+2]
     5590 MOVE                             R19 R22
     5591 JUMP                             ; [+2]
     5592 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5593 JUMP                             ; [0]
     5594 SETTABLEKS                       R19 R18 K21 ["date"]
     5596 MOVE                             R19 R12
     5597 LOADK                            R20 K35 ["🤷🏻‍♀️"]
     5598 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5599 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5601 JUMPIFNOT                        R24 ; [+5]
     5602 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5604 GETTABLEKS                       R23 R24 K212 ["Language"]
     5606 JUMPIF                           R23 ; [+1]
     5607 LOADK                            R23 K43 [""]
     5608 LOADK                            R24 K43 [""]
     5609 FASTCALL1                        TOSTRING R23 ; [+3]
     5610 MOVE                             R28 R23
     5611 GETIMPORT                        R27 K4 [tostring]
     5613 CALL                             R27 1 1
     5614 MOVE                             R25 R27
     5615 LOADK                            R26 K43 [""]
     5616 CONCAT                           R22 R24 R26
     5617 SETTABLEKS                       R22 R21 K210 ["language"]
     5619 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5621 JUMPIFNOT                        R24 ; [+5]
     5622 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5624 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5626 JUMPIF                           R23 ; [+1]
     5627 LOADK                            R23 K43 [""]
     5628 LOADK                            R24 K43 [""]
     5629 FASTCALL1                        TOSTRING R23 ; [+3]
     5630 MOVE                             R28 R23
     5631 GETIMPORT                        R27 K4 [tostring]
     5633 CALL                             R27 1 1
     5634 MOVE                             R25 R27
     5635 LOADK                            R26 K43 [""]
     5636 CONCAT                           R22 R24 R26
     5637 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5639 CALL                             R19 2 1
     5640 SETTABLEKS                       R19 R18 K22 ["translation"]
     5642 GETTABLEKS                       R19 R2 K14 ["userId"]
     5644 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5646 MOVE                             R19 R0
     5647 GETTABLEKS                       R20 R2 K14 ["userId"]
     5649 CALL                             R19 1 1
     5650 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5652 LOADK                            R19 K28 ["footerText"]
     5653 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5655 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5657 ORK                              R19 R20 K18 [0]
     5658 JUMP                             ; [0]
     5659 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5661 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5663 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5665 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5667 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5669 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5671 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5673 LOADK                            R20 K43 [""]
     5674 FASTCALL1                        TOSTRING R4 ; [+3]
     5675 MOVE                             R24 R4
     5676 GETIMPORT                        R23 K4 [tostring]
     5678 CALL                             R23 1 1
     5679 MOVE                             R21 R23
     5680 LOADK                            R22 K240 ["/localization/translation"]
     5681 CONCAT                           R19 R20 R22
     5682 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5684 LOADK                            R20 K43 [""]
     5685 GETUPVAL                         R26 1
     5686 FASTCALL1                        TOSTRING R26 ; [+2]
     5687 GETIMPORT                        R25 K4 [tostring]
     5689 CALL                             R25 1 1
     5690 MOVE                             R21 R25
     5691 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5692 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5694 FASTCALL1                        TOSTRING R26 ; [+2]
     5695 GETIMPORT                        R25 K4 [tostring]
     5697 CALL                             R25 1 1
     5698 MOVE                             R23 R25
     5699 LOADK                            R24 K43 [""]
     5700 CONCAT                           R19 R20 R24
     5701 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5703 RETURN                           R18 1
     5704 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5706 JUMPIFNOTEQKN                    R18 K292 [55] ; [+135]
     5708 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5709 GETTABLEKS                       R19 R2 K19 ["id"]
     5711 SETTABLEKS                       R19 R18 K19 ["id"]
     5713 LOADK                            R19 K37 ["Universe"]
     5714 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5716 LOADK                            R19 K31 ["Unknown"]
     5717 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5719 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5721 GETIMPORT                        R21 K34 [pcall]
     5723 NEWCLOSURE                       R22 P6
     5724 CAPTURE                          VAL R20
     5725 CAPTURE                          VAL R3
     5726 CALL                             R21 1 2
     5727 JUMPIFNOT                        R21 ; [+2]
     5728 MOVE                             R19 R22
     5729 JUMP                             ; [+2]
     5730 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5731 JUMP                             ; [0]
     5732 SETTABLEKS                       R19 R18 K21 ["date"]
     5734 MOVE                             R19 R12
     5735 LOADK                            R20 K38 [1]
     5736 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5737 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5739 JUMPIFNOT                        R24 ; [+5]
     5740 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5742 GETTABLEKS                       R23 R24 K212 ["Language"]
     5744 JUMPIF                           R23 ; [+1]
     5745 LOADK                            R23 K43 [""]
     5746 LOADK                            R24 K43 [""]
     5747 FASTCALL1                        TOSTRING R23 ; [+3]
     5748 MOVE                             R28 R23
     5749 GETIMPORT                        R27 K4 [tostring]
     5751 CALL                             R27 1 1
     5752 MOVE                             R25 R27
     5753 LOADK                            R26 K43 [""]
     5754 CONCAT                           R22 R24 R26
     5755 SETTABLEKS                       R22 R21 K210 ["language"]
     5757 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5759 JUMPIFNOT                        R24 ; [+5]
     5760 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5762 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5764 JUMPIF                           R23 ; [+1]
     5765 LOADK                            R23 K43 [""]
     5766 LOADK                            R24 K43 [""]
     5767 FASTCALL1                        TOSTRING R23 ; [+3]
     5768 MOVE                             R28 R23
     5769 GETIMPORT                        R27 K4 [tostring]
     5771 CALL                             R27 1 1
     5772 MOVE                             R25 R27
     5773 LOADK                            R26 K43 [""]
     5774 CONCAT                           R22 R24 R26
     5775 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5777 CALL                             R19 2 1
     5778 SETTABLEKS                       R19 R18 K22 ["translation"]
     5780 GETTABLEKS                       R19 R2 K14 ["userId"]
     5782 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5784 MOVE                             R19 R0
     5785 GETTABLEKS                       R20 R2 K14 ["userId"]
     5787 CALL                             R19 1 1
     5788 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5790 LOADK                            R19 K28 ["footerText"]
     5791 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5793 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5795 ORK                              R19 R20 K18 [0]
     5796 JUMP                             ; [0]
     5797 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5799 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5801 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5803 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5805 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5807 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5809 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5811 LOADK                            R20 K43 [""]
     5812 FASTCALL1                        TOSTRING R4 ; [+3]
     5813 MOVE                             R24 R4
     5814 GETIMPORT                        R23 K4 [tostring]
     5816 CALL                             R23 1 1
     5817 MOVE                             R21 R23
     5818 LOADK                            R22 K240 ["/localization/translation"]
     5819 CONCAT                           R19 R20 R22
     5820 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5822 LOADK                            R20 K43 [""]
     5823 GETUPVAL                         R26 1
     5824 FASTCALL1                        TOSTRING R26 ; [+2]
     5825 GETIMPORT                        R25 K4 [tostring]
     5827 CALL                             R25 1 1
     5828 MOVE                             R21 R25
     5829 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5830 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5832 FASTCALL1                        TOSTRING R26 ; [+2]
     5833 GETIMPORT                        R25 K4 [tostring]
     5835 CALL                             R25 1 1
     5836 MOVE                             R23 R25
     5837 LOADK                            R24 K43 [""]
     5838 CONCAT                           R19 R20 R24
     5839 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5841 RETURN                           R18 1
     5842 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5844 JUMPIFNOTEQKN                    R18 K295 [56] ; [+135]
     5846 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5847 GETTABLEKS                       R19 R2 K19 ["id"]
     5849 SETTABLEKS                       R19 R18 K19 ["id"]
     5851 LOADK                            R19 K40 ["Experience"]
     5852 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5854 LOADK                            R19 K31 ["Unknown"]
     5855 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5857 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5859 GETIMPORT                        R21 K34 [pcall]
     5861 NEWCLOSURE                       R22 P6
     5862 CAPTURE                          VAL R20
     5863 CAPTURE                          VAL R3
     5864 CALL                             R21 1 2
     5865 JUMPIFNOT                        R21 ; [+2]
     5866 MOVE                             R19 R22
     5867 JUMP                             ; [+2]
     5868 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5869 JUMP                             ; [0]
     5870 SETTABLEKS                       R19 R18 K21 ["date"]
     5872 MOVE                             R19 R12
     5873 LOADK                            R20 K41 ["metaData"]
     5874 DUPTABLE                         R21 K299 [{"language", "productName"}]
     5875 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5877 JUMPIFNOT                        R24 ; [+5]
     5878 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5880 GETTABLEKS                       R23 R24 K212 ["Language"]
     5882 JUMPIF                           R23 ; [+1]
     5883 LOADK                            R23 K43 [""]
     5884 LOADK                            R24 K43 [""]
     5885 FASTCALL1                        TOSTRING R23 ; [+3]
     5886 MOVE                             R28 R23
     5887 GETIMPORT                        R27 K4 [tostring]
     5889 CALL                             R27 1 1
     5890 MOVE                             R25 R27
     5891 LOADK                            R26 K43 [""]
     5892 CONCAT                           R22 R24 R26
     5893 SETTABLEKS                       R22 R21 K210 ["language"]
     5895 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5897 JUMPIFNOT                        R24 ; [+5]
     5898 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5900 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     5902 JUMPIF                           R23 ; [+1]
     5903 LOADK                            R23 K43 [""]
     5904 LOADK                            R24 K43 [""]
     5905 FASTCALL1                        TOSTRING R23 ; [+3]
     5906 MOVE                             R28 R23
     5907 GETIMPORT                        R27 K4 [tostring]
     5909 CALL                             R27 1 1
     5910 MOVE                             R25 R27
     5911 LOADK                            R26 K43 [""]
     5912 CONCAT                           R22 R24 R26
     5913 SETTABLEKS                       R22 R21 K298 ["productName"]
     5915 CALL                             R19 2 1
     5916 SETTABLEKS                       R19 R18 K22 ["translation"]
     5918 GETTABLEKS                       R19 R2 K14 ["userId"]
     5920 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5922 MOVE                             R19 R0
     5923 GETTABLEKS                       R20 R2 K14 ["userId"]
     5925 CALL                             R19 1 1
     5926 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5928 LOADK                            R19 K45 ["lower"]
     5929 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5931 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5933 ORK                              R19 R20 K18 [0]
     5934 JUMP                             ; [0]
     5935 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5937 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5939 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5941 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5943 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5945 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5947 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5949 LOADK                            R20 K43 [""]
     5950 FASTCALL1                        TOSTRING R4 ; [+3]
     5951 MOVE                             R24 R4
     5952 GETIMPORT                        R23 K4 [tostring]
     5954 CALL                             R23 1 1
     5955 MOVE                             R21 R23
     5956 LOADK                            R22 K240 ["/localization/translation"]
     5957 CONCAT                           R19 R20 R22
     5958 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5960 LOADK                            R20 K43 [""]
     5961 GETUPVAL                         R26 1
     5962 FASTCALL1                        TOSTRING R26 ; [+2]
     5963 GETIMPORT                        R25 K4 [tostring]
     5965 CALL                             R25 1 1
     5966 MOVE                             R21 R25
     5967 LOADK                            R22 K46 [string.lower]
     5968 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5970 FASTCALL1                        TOSTRING R26 ; [+2]
     5971 GETIMPORT                        R25 K4 [tostring]
     5973 CALL                             R25 1 1
     5974 MOVE                             R23 R25
     5975 LOADK                            R24 K43 [""]
     5976 CONCAT                           R19 R20 R24
     5977 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5979 RETURN                           R18 1
     5980 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5982 JUMPIFNOTEQKN                    R18 K303 [57] ; [+135]
     5984 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5985 GETTABLEKS                       R19 R2 K19 ["id"]
     5987 SETTABLEKS                       R19 R18 K19 ["id"]
     5989 LOADK                            R19 K48 ["Description.ArchivedExperience"]
     5990 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5992 LOADK                            R19 K31 ["Unknown"]
     5993 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5995 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5997 GETIMPORT                        R21 K34 [pcall]
     5999 NEWCLOSURE                       R22 P6
     6000 CAPTURE                          VAL R20
     6001 CAPTURE                          VAL R3
     6002 CALL                             R21 1 2
     6003 JUMPIFNOT                        R21 ; [+2]
     6004 MOVE                             R19 R22
     6005 JUMP                             ; [+2]
     6006 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6007 JUMP                             ; [0]
     6008 SETTABLEKS                       R19 R18 K21 ["date"]
     6010 MOVE                             R19 R12
     6011 LOADK                            R20 K49 ["Description.RestoredExperience"]
     6012 DUPTABLE                         R21 K299 [{"language", "productName"}]
     6013 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6015 JUMPIFNOT                        R24 ; [+5]
     6016 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6018 GETTABLEKS                       R23 R24 K212 ["Language"]
     6020 JUMPIF                           R23 ; [+1]
     6021 LOADK                            R23 K43 [""]
     6022 LOADK                            R24 K43 [""]
     6023 FASTCALL1                        TOSTRING R23 ; [+3]
     6024 MOVE                             R28 R23
     6025 GETIMPORT                        R27 K4 [tostring]
     6027 CALL                             R27 1 1
     6028 MOVE                             R25 R27
     6029 LOADK                            R26 K43 [""]
     6030 CONCAT                           R22 R24 R26
     6031 SETTABLEKS                       R22 R21 K210 ["language"]
     6033 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6035 JUMPIFNOT                        R24 ; [+5]
     6036 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6038 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     6040 JUMPIF                           R23 ; [+1]
     6041 LOADK                            R23 K43 [""]
     6042 LOADK                            R24 K43 [""]
     6043 FASTCALL1                        TOSTRING R23 ; [+3]
     6044 MOVE                             R28 R23
     6045 GETIMPORT                        R27 K4 [tostring]
     6047 CALL                             R27 1 1
     6048 MOVE                             R25 R27
     6049 LOADK                            R26 K43 [""]
     6050 CONCAT                           R22 R24 R26
     6051 SETTABLEKS                       R22 R21 K298 ["productName"]
     6053 CALL                             R19 2 1
     6054 SETTABLEKS                       R19 R18 K22 ["translation"]
     6056 GETTABLEKS                       R19 R2 K14 ["userId"]
     6058 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6060 MOVE                             R19 R0
     6061 GETTABLEKS                       R20 R2 K14 ["userId"]
     6063 CALL                             R19 1 1
     6064 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6066 LOADK                            R19 K45 ["lower"]
     6067 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6069 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6071 ORK                              R19 R20 K18 [0]
     6072 JUMP                             ; [0]
     6073 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6075 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6077 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6079 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6081 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6083 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6085 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6087 LOADK                            R20 K43 [""]
     6088 FASTCALL1                        TOSTRING R4 ; [+3]
     6089 MOVE                             R24 R4
     6090 GETIMPORT                        R23 K4 [tostring]
     6092 CALL                             R23 1 1
     6093 MOVE                             R21 R23
     6094 LOADK                            R22 K240 ["/localization/translation"]
     6095 CONCAT                           R19 R20 R22
     6096 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6098 LOADK                            R20 K43 [""]
     6099 GETUPVAL                         R26 1
     6100 FASTCALL1                        TOSTRING R26 ; [+2]
     6101 GETIMPORT                        R25 K4 [tostring]
     6103 CALL                             R25 1 1
     6104 MOVE                             R21 R25
     6105 LOADK                            R22 K46 [string.lower]
     6106 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6108 FASTCALL1                        TOSTRING R26 ; [+2]
     6109 GETIMPORT                        R25 K4 [tostring]
     6111 CALL                             R25 1 1
     6112 MOVE                             R23 R25
     6113 LOADK                            R24 K43 [""]
     6114 CONCAT                           R19 R20 R24
     6115 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6117 RETURN                           R18 1
     6118 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6120 JUMPIFNOTEQKN                    R18 K306 [58] ; [+135]
     6122 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6123 GETTABLEKS                       R19 R2 K19 ["id"]
     6125 SETTABLEKS                       R19 R18 K19 ["id"]
     6127 LOADK                            R19 K51 ["viewBasicSettingsLink"]
     6128 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6130 LOADK                            R19 K31 ["Unknown"]
     6131 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6133 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6135 GETIMPORT                        R21 K34 [pcall]
     6137 NEWCLOSURE                       R22 P6
     6138 CAPTURE                          VAL R20
     6139 CAPTURE                          VAL R3
     6140 CALL                             R21 1 2
     6141 JUMPIFNOT                        R21 ; [+2]
     6142 MOVE                             R19 R22
     6143 JUMP                             ; [+2]
     6144 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6145 JUMP                             ; [0]
     6146 SETTABLEKS                       R19 R18 K21 ["date"]
     6148 MOVE                             R19 R12
     6149 LOADK                            R20 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     6150 DUPTABLE                         R21 K299 [{"language", "productName"}]
     6151 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6153 JUMPIFNOT                        R24 ; [+5]
     6154 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6156 GETTABLEKS                       R23 R24 K212 ["Language"]
     6158 JUMPIF                           R23 ; [+1]
     6159 LOADK                            R23 K43 [""]
     6160 LOADK                            R24 K43 [""]
     6161 FASTCALL1                        TOSTRING R23 ; [+3]
     6162 MOVE                             R28 R23
     6163 GETIMPORT                        R27 K4 [tostring]
     6165 CALL                             R27 1 1
     6166 MOVE                             R25 R27
     6167 LOADK                            R26 K43 [""]
     6168 CONCAT                           R22 R24 R26
     6169 SETTABLEKS                       R22 R21 K210 ["language"]
     6171 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6173 JUMPIFNOT                        R24 ; [+5]
     6174 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6176 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     6178 JUMPIF                           R23 ; [+1]
     6179 LOADK                            R23 K43 [""]
     6180 LOADK                            R24 K43 [""]
     6181 FASTCALL1                        TOSTRING R23 ; [+3]
     6182 MOVE                             R28 R23
     6183 GETIMPORT                        R27 K4 [tostring]
     6185 CALL                             R27 1 1
     6186 MOVE                             R25 R27
     6187 LOADK                            R26 K43 [""]
     6188 CONCAT                           R22 R24 R26
     6189 SETTABLEKS                       R22 R21 K298 ["productName"]
     6191 CALL                             R19 2 1
     6192 SETTABLEKS                       R19 R18 K22 ["translation"]
     6194 GETTABLEKS                       R19 R2 K14 ["userId"]
     6196 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6198 MOVE                             R19 R0
     6199 GETTABLEKS                       R20 R2 K14 ["userId"]
     6201 CALL                             R19 1 1
     6202 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6204 LOADK                            R19 K45 ["lower"]
     6205 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6207 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6209 ORK                              R19 R20 K18 [0]
     6210 JUMP                             ; [0]
     6211 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6213 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6215 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6217 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6219 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6221 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6223 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6225 LOADK                            R20 K43 [""]
     6226 FASTCALL1                        TOSTRING R4 ; [+3]
     6227 MOVE                             R24 R4
     6228 GETIMPORT                        R23 K4 [tostring]
     6230 CALL                             R23 1 1
     6231 MOVE                             R21 R23
     6232 LOADK                            R22 K240 ["/localization/translation"]
     6233 CONCAT                           R19 R20 R22
     6234 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6236 LOADK                            R20 K43 [""]
     6237 GETUPVAL                         R26 1
     6238 FASTCALL1                        TOSTRING R26 ; [+2]
     6239 GETIMPORT                        R25 K4 [tostring]
     6241 CALL                             R25 1 1
     6242 MOVE                             R21 R25
     6243 LOADK                            R22 K46 [string.lower]
     6244 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6246 FASTCALL1                        TOSTRING R26 ; [+2]
     6247 GETIMPORT                        R25 K4 [tostring]
     6249 CALL                             R25 1 1
     6250 MOVE                             R23 R25
     6251 LOADK                            R24 K43 [""]
     6252 CONCAT                           R19 R20 R24
     6253 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6255 RETURN                           R18 1
     6256 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6258 JUMPIFNOTEQKN                    R18 K309 [59] ; [+135]
     6260 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6261 GETTABLEKS                       R19 R2 K19 ["id"]
     6263 SETTABLEKS                       R19 R18 K19 ["id"]
     6265 LOADK                            R19 K54 ["Description.PlayabilityChanged"]
     6266 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6268 LOADK                            R19 K31 ["Unknown"]
     6269 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6271 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6273 GETIMPORT                        R21 K34 [pcall]
     6275 NEWCLOSURE                       R22 P6
     6276 CAPTURE                          VAL R20
     6277 CAPTURE                          VAL R3
     6278 CALL                             R21 1 2
     6279 JUMPIFNOT                        R21 ; [+2]
     6280 MOVE                             R19 R22
     6281 JUMP                             ; [+2]
     6282 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6283 JUMP                             ; [0]
     6284 SETTABLEKS                       R19 R18 K21 ["date"]
     6286 MOVE                             R19 R12
     6287 LOADK                            R20 K55 ["playability"]
     6288 DUPTABLE                         R21 K299 [{"language", "productName"}]
     6289 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6291 JUMPIFNOT                        R24 ; [+5]
     6292 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6294 GETTABLEKS                       R23 R24 K212 ["Language"]
     6296 JUMPIF                           R23 ; [+1]
     6297 LOADK                            R23 K43 [""]
     6298 LOADK                            R24 K43 [""]
     6299 FASTCALL1                        TOSTRING R23 ; [+3]
     6300 MOVE                             R28 R23
     6301 GETIMPORT                        R27 K4 [tostring]
     6303 CALL                             R27 1 1
     6304 MOVE                             R25 R27
     6305 LOADK                            R26 K43 [""]
     6306 CONCAT                           R22 R24 R26
     6307 SETTABLEKS                       R22 R21 K210 ["language"]
     6309 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6311 JUMPIFNOT                        R24 ; [+5]
     6312 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6314 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     6316 JUMPIF                           R23 ; [+1]
     6317 LOADK                            R23 K43 [""]
     6318 LOADK                            R24 K43 [""]
     6319 FASTCALL1                        TOSTRING R23 ; [+3]
     6320 MOVE                             R28 R23
     6321 GETIMPORT                        R27 K4 [tostring]
     6323 CALL                             R27 1 1
     6324 MOVE                             R25 R27
     6325 LOADK                            R26 K43 [""]
     6326 CONCAT                           R22 R24 R26
     6327 SETTABLEKS                       R22 R21 K298 ["productName"]
     6329 CALL                             R19 2 1
     6330 SETTABLEKS                       R19 R18 K22 ["translation"]
     6332 GETTABLEKS                       R19 R2 K14 ["userId"]
     6334 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6336 MOVE                             R19 R0
     6337 GETTABLEKS                       R20 R2 K14 ["userId"]
     6339 CALL                             R19 1 1
     6340 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6342 LOADK                            R19 K45 ["lower"]
     6343 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6345 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6347 ORK                              R19 R20 K18 [0]
     6348 JUMP                             ; [0]
     6349 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6351 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6353 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6355 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6357 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6359 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6361 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6363 LOADK                            R20 K43 [""]
     6364 FASTCALL1                        TOSTRING R4 ; [+3]
     6365 MOVE                             R24 R4
     6366 GETIMPORT                        R23 K4 [tostring]
     6368 CALL                             R23 1 1
     6369 MOVE                             R21 R23
     6370 LOADK                            R22 K240 ["/localization/translation"]
     6371 CONCAT                           R19 R20 R22
     6372 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6374 LOADK                            R20 K43 [""]
     6375 GETUPVAL                         R26 1
     6376 FASTCALL1                        TOSTRING R26 ; [+2]
     6377 GETIMPORT                        R25 K4 [tostring]
     6379 CALL                             R25 1 1
     6380 MOVE                             R21 R25
     6381 LOADK                            R22 K46 [string.lower]
     6382 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6384 FASTCALL1                        TOSTRING R26 ; [+2]
     6385 GETIMPORT                        R25 K4 [tostring]
     6387 CALL                             R25 1 1
     6388 MOVE                             R23 R25
     6389 LOADK                            R24 K43 [""]
     6390 CONCAT                           R19 R20 R24
     6391 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6393 RETURN                           R18 1
     6394 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6396 JUMPIFNOTEQKN                    R18 K312 [60] ; [+135]
     6398 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6399 GETTABLEKS                       R19 R2 K19 ["id"]
     6401 SETTABLEKS                       R19 R18 K19 ["id"]
     6403 LOADK                            R19 K57 ["Playability"]
     6404 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6406 LOADK                            R19 K31 ["Unknown"]
     6407 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6409 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6411 GETIMPORT                        R21 K34 [pcall]
     6413 NEWCLOSURE                       R22 P6
     6414 CAPTURE                          VAL R20
     6415 CAPTURE                          VAL R3
     6416 CALL                             R21 1 2
     6417 JUMPIFNOT                        R21 ; [+2]
     6418 MOVE                             R19 R22
     6419 JUMP                             ; [+2]
     6420 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6421 JUMP                             ; [0]
     6422 SETTABLEKS                       R19 R18 K21 ["date"]
     6424 MOVE                             R19 R12
     6425 LOADK                            R20 K58 ["Public"]
     6426 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6427 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6429 JUMPIFNOT                        R24 ; [+5]
     6430 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6432 GETTABLEKS                       R23 R24 K212 ["Language"]
     6434 JUMPIF                           R23 ; [+1]
     6435 LOADK                            R23 K43 [""]
     6436 LOADK                            R24 K43 [""]
     6437 FASTCALL1                        TOSTRING R23 ; [+3]
     6438 MOVE                             R28 R23
     6439 GETIMPORT                        R27 K4 [tostring]
     6441 CALL                             R27 1 1
     6442 MOVE                             R25 R27
     6443 LOADK                            R26 K43 [""]
     6444 CONCAT                           R22 R24 R26
     6445 SETTABLEKS                       R22 R21 K210 ["language"]
     6447 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6449 JUMPIFNOT                        R24 ; [+5]
     6450 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6452 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6454 JUMPIF                           R23 ; [+1]
     6455 LOADK                            R23 K43 [""]
     6456 LOADK                            R24 K43 [""]
     6457 FASTCALL1                        TOSTRING R23 ; [+3]
     6458 MOVE                             R28 R23
     6459 GETIMPORT                        R27 K4 [tostring]
     6461 CALL                             R27 1 1
     6462 MOVE                             R25 R27
     6463 LOADK                            R26 K43 [""]
     6464 CONCAT                           R22 R24 R26
     6465 SETTABLEKS                       R22 R21 K315 ["passName"]
     6467 CALL                             R19 2 1
     6468 SETTABLEKS                       R19 R18 K22 ["translation"]
     6470 GETTABLEKS                       R19 R2 K14 ["userId"]
     6472 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6474 MOVE                             R19 R0
     6475 GETTABLEKS                       R20 R2 K14 ["userId"]
     6477 CALL                             R19 1 1
     6478 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6480 LOADK                            R19 K62 ["Description.ActionFriends"]
     6481 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6483 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6485 ORK                              R19 R20 K18 [0]
     6486 JUMP                             ; [0]
     6487 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6489 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6491 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6493 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6495 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6497 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6499 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6501 LOADK                            R20 K43 [""]
     6502 FASTCALL1                        TOSTRING R4 ; [+3]
     6503 MOVE                             R24 R4
     6504 GETIMPORT                        R23 K4 [tostring]
     6506 CALL                             R23 1 1
     6507 MOVE                             R21 R23
     6508 LOADK                            R22 K240 ["/localization/translation"]
     6509 CONCAT                           R19 R20 R22
     6510 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6512 LOADK                            R20 K43 [""]
     6513 GETUPVAL                         R26 1
     6514 FASTCALL1                        TOSTRING R26 ; [+2]
     6515 GETIMPORT                        R25 K4 [tostring]
     6517 CALL                             R25 1 1
     6518 MOVE                             R21 R25
     6519 LOADK                            R22 K63 [3]
     6520 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6522 FASTCALL1                        TOSTRING R26 ; [+2]
     6523 GETIMPORT                        R25 K4 [tostring]
     6525 CALL                             R25 1 1
     6526 MOVE                             R23 R25
     6527 LOADK                            R24 K43 [""]
     6528 CONCAT                           R19 R20 R24
     6529 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6531 RETURN                           R18 1
     6532 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6534 JUMPIFNOTEQKN                    R18 K320 [61] ; [+135]
     6536 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6537 GETTABLEKS                       R19 R2 K19 ["id"]
     6539 SETTABLEKS                       R19 R18 K19 ["id"]
     6541 LOADK                            R19 K65 ["Description.NotificationStringCreated"]
     6542 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6544 LOADK                            R19 K31 ["Unknown"]
     6545 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6547 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6549 GETIMPORT                        R21 K34 [pcall]
     6551 NEWCLOSURE                       R22 P6
     6552 CAPTURE                          VAL R20
     6553 CAPTURE                          VAL R3
     6554 CALL                             R21 1 2
     6555 JUMPIFNOT                        R21 ; [+2]
     6556 MOVE                             R19 R22
     6557 JUMP                             ; [+2]
     6558 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6559 JUMP                             ; [0]
     6560 SETTABLEKS                       R19 R18 K21 ["date"]
     6562 MOVE                             R19 R12
     6563 LOADK                            R20 K66 ["stringName"]
     6564 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6565 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6567 JUMPIFNOT                        R24 ; [+5]
     6568 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6570 GETTABLEKS                       R23 R24 K212 ["Language"]
     6572 JUMPIF                           R23 ; [+1]
     6573 LOADK                            R23 K43 [""]
     6574 LOADK                            R24 K43 [""]
     6575 FASTCALL1                        TOSTRING R23 ; [+3]
     6576 MOVE                             R28 R23
     6577 GETIMPORT                        R27 K4 [tostring]
     6579 CALL                             R27 1 1
     6580 MOVE                             R25 R27
     6581 LOADK                            R26 K43 [""]
     6582 CONCAT                           R22 R24 R26
     6583 SETTABLEKS                       R22 R21 K210 ["language"]
     6585 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6587 JUMPIFNOT                        R24 ; [+5]
     6588 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6590 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6592 JUMPIF                           R23 ; [+1]
     6593 LOADK                            R23 K43 [""]
     6594 LOADK                            R24 K43 [""]
     6595 FASTCALL1                        TOSTRING R23 ; [+3]
     6596 MOVE                             R28 R23
     6597 GETIMPORT                        R27 K4 [tostring]
     6599 CALL                             R27 1 1
     6600 MOVE                             R25 R27
     6601 LOADK                            R26 K43 [""]
     6602 CONCAT                           R22 R24 R26
     6603 SETTABLEKS                       R22 R21 K315 ["passName"]
     6605 CALL                             R19 2 1
     6606 SETTABLEKS                       R19 R18 K22 ["translation"]
     6608 GETTABLEKS                       R19 R2 K14 ["userId"]
     6610 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6612 MOVE                             R19 R0
     6613 GETTABLEKS                       R20 R2 K14 ["userId"]
     6615 CALL                             R19 1 1
     6616 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6618 LOADK                            R19 K62 ["Description.ActionFriends"]
     6619 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6621 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6623 ORK                              R19 R20 K18 [0]
     6624 JUMP                             ; [0]
     6625 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6627 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6629 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6631 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6633 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6635 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6637 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6639 LOADK                            R20 K43 [""]
     6640 FASTCALL1                        TOSTRING R4 ; [+3]
     6641 MOVE                             R24 R4
     6642 GETIMPORT                        R23 K4 [tostring]
     6644 CALL                             R23 1 1
     6645 MOVE                             R21 R23
     6646 LOADK                            R22 K240 ["/localization/translation"]
     6647 CONCAT                           R19 R20 R22
     6648 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6650 LOADK                            R20 K43 [""]
     6651 GETUPVAL                         R26 1
     6652 FASTCALL1                        TOSTRING R26 ; [+2]
     6653 GETIMPORT                        R25 K4 [tostring]
     6655 CALL                             R25 1 1
     6656 MOVE                             R21 R25
     6657 LOADK                            R22 K63 [3]
     6658 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6660 FASTCALL1                        TOSTRING R26 ; [+2]
     6661 GETIMPORT                        R25 K4 [tostring]
     6663 CALL                             R25 1 1
     6664 MOVE                             R23 R25
     6665 LOADK                            R24 K43 [""]
     6666 CONCAT                           R19 R20 R24
     6667 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6669 RETURN                           R18 1
     6670 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6672 JUMPIFNOTEQKN                    R18 K323 [62] ; [+135]
     6674 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6675 GETTABLEKS                       R19 R2 K19 ["id"]
     6677 SETTABLEKS                       R19 R18 K19 ["id"]
     6679 LOADK                            R19 K68 ["StringName"]
     6680 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6682 LOADK                            R19 K31 ["Unknown"]
     6683 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6685 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6687 GETIMPORT                        R21 K34 [pcall]
     6689 NEWCLOSURE                       R22 P6
     6690 CAPTURE                          VAL R20
     6691 CAPTURE                          VAL R3
     6692 CALL                             R21 1 2
     6693 JUMPIFNOT                        R21 ; [+2]
     6694 MOVE                             R19 R22
     6695 JUMP                             ; [+2]
     6696 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6697 JUMP                             ; [0]
     6698 SETTABLEKS                       R19 R18 K21 ["date"]
     6700 MOVE                             R19 R12
     6701 LOADK                            R20 K69 ["/notifications"]
     6702 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6703 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6705 JUMPIFNOT                        R24 ; [+5]
     6706 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6708 GETTABLEKS                       R23 R24 K212 ["Language"]
     6710 JUMPIF                           R23 ; [+1]
     6711 LOADK                            R23 K43 [""]
     6712 LOADK                            R24 K43 [""]
     6713 FASTCALL1                        TOSTRING R23 ; [+3]
     6714 MOVE                             R28 R23
     6715 GETIMPORT                        R27 K4 [tostring]
     6717 CALL                             R27 1 1
     6718 MOVE                             R25 R27
     6719 LOADK                            R26 K43 [""]
     6720 CONCAT                           R22 R24 R26
     6721 SETTABLEKS                       R22 R21 K210 ["language"]
     6723 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6725 JUMPIFNOT                        R24 ; [+5]
     6726 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6728 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6730 JUMPIF                           R23 ; [+1]
     6731 LOADK                            R23 K43 [""]
     6732 LOADK                            R24 K43 [""]
     6733 FASTCALL1                        TOSTRING R23 ; [+3]
     6734 MOVE                             R28 R23
     6735 GETIMPORT                        R27 K4 [tostring]
     6737 CALL                             R27 1 1
     6738 MOVE                             R25 R27
     6739 LOADK                            R26 K43 [""]
     6740 CONCAT                           R22 R24 R26
     6741 SETTABLEKS                       R22 R21 K315 ["passName"]
     6743 CALL                             R19 2 1
     6744 SETTABLEKS                       R19 R18 K22 ["translation"]
     6746 GETTABLEKS                       R19 R2 K14 ["userId"]
     6748 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6750 MOVE                             R19 R0
     6751 GETTABLEKS                       R20 R2 K14 ["userId"]
     6753 CALL                             R19 1 1
     6754 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6756 LOADK                            R19 K62 ["Description.ActionFriends"]
     6757 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6759 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6761 ORK                              R19 R20 K18 [0]
     6762 JUMP                             ; [0]
     6763 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6765 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6767 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6769 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6771 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6773 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6775 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6777 LOADK                            R20 K43 [""]
     6778 FASTCALL1                        TOSTRING R4 ; [+3]
     6779 MOVE                             R24 R4
     6780 GETIMPORT                        R23 K4 [tostring]
     6782 CALL                             R23 1 1
     6783 MOVE                             R21 R23
     6784 LOADK                            R22 K240 ["/localization/translation"]
     6785 CONCAT                           R19 R20 R22
     6786 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6788 LOADK                            R20 K43 [""]
     6789 GETUPVAL                         R26 1
     6790 FASTCALL1                        TOSTRING R26 ; [+2]
     6791 GETIMPORT                        R25 K4 [tostring]
     6793 CALL                             R25 1 1
     6794 MOVE                             R21 R25
     6795 LOADK                            R22 K63 [3]
     6796 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6798 FASTCALL1                        TOSTRING R26 ; [+2]
     6799 GETIMPORT                        R25 K4 [tostring]
     6801 CALL                             R25 1 1
     6802 MOVE                             R23 R25
     6803 LOADK                            R24 K43 [""]
     6804 CONCAT                           R19 R20 R24
     6805 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6807 RETURN                           R18 1
     6808 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6810 JUMPIFNOTEQKN                    R18 K326 [63] ; [+135]
     6812 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6813 GETTABLEKS                       R19 R2 K19 ["id"]
     6815 SETTABLEKS                       R19 R18 K19 ["id"]
     6817 LOADK                            R19 K71 ["NotificationStringDeleted"]
     6818 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6820 LOADK                            R19 K31 ["Unknown"]
     6821 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6823 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6825 GETIMPORT                        R21 K34 [pcall]
     6827 NEWCLOSURE                       R22 P6
     6828 CAPTURE                          VAL R20
     6829 CAPTURE                          VAL R3
     6830 CALL                             R21 1 2
     6831 JUMPIFNOT                        R21 ; [+2]
     6832 MOVE                             R19 R22
     6833 JUMP                             ; [+2]
     6834 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6835 JUMP                             ; [0]
     6836 SETTABLEKS                       R19 R18 K21 ["date"]
     6838 MOVE                             R19 R12
     6839 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
     6840 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6841 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6843 JUMPIFNOT                        R24 ; [+5]
     6844 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6846 GETTABLEKS                       R23 R24 K212 ["Language"]
     6848 JUMPIF                           R23 ; [+1]
     6849 LOADK                            R23 K43 [""]
     6850 LOADK                            R24 K43 [""]
     6851 FASTCALL1                        TOSTRING R23 ; [+3]
     6852 MOVE                             R28 R23
     6853 GETIMPORT                        R27 K4 [tostring]
     6855 CALL                             R27 1 1
     6856 MOVE                             R25 R27
     6857 LOADK                            R26 K43 [""]
     6858 CONCAT                           R22 R24 R26
     6859 SETTABLEKS                       R22 R21 K210 ["language"]
     6861 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6863 JUMPIFNOT                        R24 ; [+5]
     6864 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6866 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6868 JUMPIF                           R23 ; [+1]
     6869 LOADK                            R23 K43 [""]
     6870 LOADK                            R24 K43 [""]
     6871 FASTCALL1                        TOSTRING R23 ; [+3]
     6872 MOVE                             R28 R23
     6873 GETIMPORT                        R27 K4 [tostring]
     6875 CALL                             R27 1 1
     6876 MOVE                             R25 R27
     6877 LOADK                            R26 K43 [""]
     6878 CONCAT                           R22 R24 R26
     6879 SETTABLEKS                       R22 R21 K315 ["passName"]
     6881 CALL                             R19 2 1
     6882 SETTABLEKS                       R19 R18 K22 ["translation"]
     6884 GETTABLEKS                       R19 R2 K14 ["userId"]
     6886 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6888 MOVE                             R19 R0
     6889 GETTABLEKS                       R20 R2 K14 ["userId"]
     6891 CALL                             R19 1 1
     6892 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6894 LOADK                            R19 K62 ["Description.ActionFriends"]
     6895 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6897 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6899 ORK                              R19 R20 K18 [0]
     6900 JUMP                             ; [0]
     6901 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6903 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6905 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6907 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6909 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6911 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6913 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6915 LOADK                            R20 K43 [""]
     6916 FASTCALL1                        TOSTRING R4 ; [+3]
     6917 MOVE                             R24 R4
     6918 GETIMPORT                        R23 K4 [tostring]
     6920 CALL                             R23 1 1
     6921 MOVE                             R21 R23
     6922 LOADK                            R22 K240 ["/localization/translation"]
     6923 CONCAT                           R19 R20 R22
     6924 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6926 LOADK                            R20 K43 [""]
     6927 GETUPVAL                         R26 1
     6928 FASTCALL1                        TOSTRING R26 ; [+2]
     6929 GETIMPORT                        R25 K4 [tostring]
     6931 CALL                             R25 1 1
     6932 MOVE                             R21 R25
     6933 LOADK                            R22 K63 [3]
     6934 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6936 FASTCALL1                        TOSTRING R26 ; [+2]
     6937 GETIMPORT                        R25 K4 [tostring]
     6939 CALL                             R25 1 1
     6940 MOVE                             R23 R25
     6941 LOADK                            R24 K43 [""]
     6942 CONCAT                           R19 R20 R24
     6943 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6945 RETURN                           R18 1
     6946 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6948 JUMPIFNOTEQKN                    R18 K329 [64] ; [+98]
     6950 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6951 GETTABLEKS                       R19 R2 K19 ["id"]
     6953 SETTABLEKS                       R19 R18 K19 ["id"]
     6955 LOADK                            R19 K74 ["NotificationStringUpdated"]
     6956 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6958 LOADK                            R19 K31 ["Unknown"]
     6959 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6961 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6963 GETIMPORT                        R21 K34 [pcall]
     6965 NEWCLOSURE                       R22 P6
     6966 CAPTURE                          VAL R20
     6967 CAPTURE                          VAL R3
     6968 CALL                             R21 1 2
     6969 JUMPIFNOT                        R21 ; [+2]
     6970 MOVE                             R19 R22
     6971 JUMP                             ; [+2]
     6972 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6973 JUMP                             ; [0]
     6974 SETTABLEKS                       R19 R18 K21 ["date"]
     6976 MOVE                             R19 R12
     6977 LOADK                            R20 K75 ["Description.NotificationStringUpdated"]
     6978 DUPTABLE                         R21 K333 [{"userName"}]
     6979 MOVE                             R23 R0
     6980 GETTABLEKS                       R25 R2 K8 ["resourceId"]
     6982 JUMPIFNOT                        R25 ; [+3]
     6983 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6985 JUMPIF                           R24 ; [+1]
     6986 LOADN                            R24 255
     6987 CALL                             R23 1 1
     6988 LOADK                            R24 K43 [""]
     6989 FASTCALL1                        TOSTRING R23 ; [+3]
     6990 MOVE                             R28 R23
     6991 GETIMPORT                        R27 K4 [tostring]
     6993 CALL                             R27 1 1
     6994 MOVE                             R25 R27
     6995 LOADK                            R26 K43 [""]
     6996 CONCAT                           R22 R24 R26
     6997 SETTABLEKS                       R22 R21 K332 ["userName"]
     6999 CALL                             R19 2 1
     7000 SETTABLEKS                       R19 R18 K22 ["translation"]
     7002 GETTABLEKS                       R19 R2 K14 ["userId"]
     7004 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7006 MOVE                             R19 R0
     7007 GETTABLEKS                       R20 R2 K14 ["userId"]
     7009 CALL                             R19 1 1
     7010 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7012 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
     7013 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7015 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7017 ORK                              R19 R20 K18 [0]
     7018 JUMP                             ; [0]
     7019 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7021 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7023 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7025 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7027 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7029 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7031 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7033 LOADK                            R20 K43 [""]
     7034 FASTCALL1                        TOSTRING R4 ; [+3]
     7035 MOVE                             R24 R4
     7036 GETIMPORT                        R23 K4 [tostring]
     7038 CALL                             R23 1 1
     7039 MOVE                             R21 R23
     7040 LOADK                            R22 K215 ["/localization"]
     7041 CONCAT                           R19 R20 R22
     7042 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7044 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
     7046 RETURN                           R18 1
     7047 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7049 JUMPIFNOTEQKN                    R18 K335 [65] ; [+98]
     7051 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     7052 GETTABLEKS                       R19 R2 K19 ["id"]
     7054 SETTABLEKS                       R19 R18 K19 ["id"]
     7056 LOADK                            R19 K80 [{"avatarType"}]
     7057 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7059 LOADK                            R19 K31 ["Unknown"]
     7060 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7062 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7064 GETIMPORT                        R21 K34 [pcall]
     7066 NEWCLOSURE                       R22 P6
     7067 CAPTURE                          VAL R20
     7068 CAPTURE                          VAL R3
     7069 CALL                             R21 1 2
     7070 JUMPIFNOT                        R21 ; [+2]
     7071 MOVE                             R19 R22
     7072 JUMP                             ; [+2]
     7073 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7074 JUMP                             ; [0]
     7075 SETTABLEKS                       R19 R18 K21 ["date"]
     7077 MOVE                             R19 R12
     7078 LOADK                            R20 K81 ["AvatarType"]
     7079 DUPTABLE                         R21 K339 [{"groupName"}]
     7080 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7082 JUMPIFNOT                        R24 ; [+5]
     7083 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7085 GETTABLEKS                       R23 R24 K340 ["GroupName"]
     7087 JUMPIF                           R23 ; [+1]
     7088 LOADK                            R23 K43 [""]
     7089 LOADK                            R24 K43 [""]
     7090 FASTCALL1                        TOSTRING R23 ; [+3]
     7091 MOVE                             R28 R23
     7092 GETIMPORT                        R27 K4 [tostring]
     7094 CALL                             R27 1 1
     7095 MOVE                             R25 R27
     7096 LOADK                            R26 K43 [""]
     7097 CONCAT                           R22 R24 R26
     7098 SETTABLEKS                       R22 R21 K338 ["groupName"]
     7100 CALL                             R19 2 1
     7101 SETTABLEKS                       R19 R18 K22 ["translation"]
     7103 GETTABLEKS                       R19 R2 K14 ["userId"]
     7105 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7107 MOVE                             R19 R0
     7108 GETTABLEKS                       R20 R2 K14 ["userId"]
     7110 CALL                             R19 1 1
     7111 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7113 LOADK                            R19 K85 ["animation"]
     7114 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7116 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7118 ORK                              R19 R20 K18 [0]
     7119 JUMP                             ; [0]
     7120 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7122 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7124 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7126 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7128 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7130 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7132 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7134 LOADK                            R20 K43 [""]
     7135 FASTCALL1                        TOSTRING R4 ; [+3]
     7136 MOVE                             R24 R4
     7137 GETIMPORT                        R23 K4 [tostring]
     7139 CALL                             R23 1 1
     7140 MOVE                             R21 R23
     7141 LOADK                            R22 K215 ["/localization"]
     7142 CONCAT                           R19 R20 R22
     7143 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7145 SETTABLEKS                       R11 R18 K233 ["viewOnRobloxLink"]
     7147 RETURN                           R18 1
     7148 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7150 JUMPIFNOTEQKN                    R18 K342 [66] ; [+105]
     7152 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     7153 GETTABLEKS                       R19 R2 K19 ["id"]
     7155 SETTABLEKS                       R19 R18 K19 ["id"]
     7157 LOADK                            R19 K87 ["Animation"]
     7158 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7160 LOADK                            R19 K88 [8]
     7161 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7163 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7165 GETIMPORT                        R21 K34 [pcall]
     7167 NEWCLOSURE                       R22 P6
     7168 CAPTURE                          VAL R20
     7169 CAPTURE                          VAL R3
     7170 CALL                             R21 1 2
     7171 JUMPIFNOT                        R21 ; [+2]
     7172 MOVE                             R19 R22
     7173 JUMP                             ; [+2]
     7174 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7175 JUMP                             ; [0]
     7176 SETTABLEKS                       R19 R18 K21 ["date"]
     7178 MOVE                             R19 R12
     7179 LOADK                            R20 K89 ["AvatarSettingsCollision"]
     7180 DUPTABLE                         R21 K139 [{"action"}]
     7181 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7183 JUMPIFNOT                        R26 ; [+5]
     7184 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7186 GETTABLEKS                       R25 R26 K42 ["Action"]
     7188 JUMPIF                           R25 ; [+1]
     7189 LOADK                            R25 K43 [""]
     7190 GETIMPORT                        R26 K46 [string.lower]
     7192 FASTCALL1                        TOSTRING R25 ; [+3]
     7193 MOVE                             R28 R25
     7194 GETIMPORT                        R27 K4 [tostring]
     7196 CALL                             R27 1 1
     7197 CALL                             R26 1 1
     7198 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7200 LOADB                            R24 1
     7201 JUMP                             ; [+1]
     7202 LOADB                            R24 0
     7203 JUMPIFNOT                        R24 ; [+4]
     7204 MOVE                             R23 R12
     7205 LOADK                            R24 K90 ["Description.AvatarSettingsCollision"]
     7206 CALL                             R23 1 1
     7207 JUMPIF                           R23 ; [+3]
     7208 MOVE                             R23 R12
     7209 LOADK                            R24 K214 ["Description.ActionRemoved"]
     7210 CALL                             R23 1 1
     7211 LOADK                            R24 K43 [""]
     7212 FASTCALL1                        TOSTRING R23 ; [+3]
     7213 MOVE                             R28 R23
     7214 GETIMPORT                        R27 K4 [tostring]
     7216 CALL                             R27 1 1
     7217 MOVE                             R25 R27
     7218 LOADK                            R26 K43 [""]
     7219 CONCAT                           R22 R24 R26
     7220 SETTABLEKS                       R22 R21 K138 ["action"]
     7222 CALL                             R19 2 1
     7223 SETTABLEKS                       R19 R18 K22 ["translation"]
     7225 GETTABLEKS                       R19 R2 K14 ["userId"]
     7227 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7229 MOVE                             R19 R0
     7230 GETTABLEKS                       R20 R2 K14 ["userId"]
     7232 CALL                             R19 1 1
     7233 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7235 LOADK                            R19 K37 ["Universe"]
     7236 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7238 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7240 JUMP                             ; [0]
     7241 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7243 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7245 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7247 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7249 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7251 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7253 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7255 RETURN                           R18 1
     7256 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7258 JUMPIFNOTEQKN                    R18 K347 [67] ; [+116]
     7260 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7261 GETTABLEKS                       R19 R2 K19 ["id"]
     7263 SETTABLEKS                       R19 R18 K19 ["id"]
     7265 LOADK                            R19 K92 [{"collision"}]
     7266 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7268 LOADK                            R19 K88 [8]
     7269 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7271 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7273 GETIMPORT                        R21 K34 [pcall]
     7275 NEWCLOSURE                       R22 P6
     7276 CAPTURE                          VAL R20
     7277 CAPTURE                          VAL R3
     7278 CALL                             R21 1 2
     7279 JUMPIFNOT                        R21 ; [+2]
     7280 MOVE                             R19 R22
     7281 JUMP                             ; [+2]
     7282 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7283 JUMP                             ; [0]
     7284 SETTABLEKS                       R19 R18 K21 ["date"]
     7286 MOVE                             R19 R12
     7287 LOADK                            R20 K93 ["Collision"]
     7288 DUPTABLE                         R21 K139 [{"action"}]
     7289 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7291 JUMPIFNOT                        R26 ; [+5]
     7292 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7294 GETTABLEKS                       R25 R26 K42 ["Action"]
     7296 JUMPIF                           R25 ; [+1]
     7297 LOADK                            R25 K43 [""]
     7298 GETIMPORT                        R26 K46 [string.lower]
     7300 FASTCALL1                        TOSTRING R25 ; [+3]
     7301 MOVE                             R28 R25
     7302 GETIMPORT                        R27 K4 [tostring]
     7304 CALL                             R27 1 1
     7305 CALL                             R26 1 1
     7306 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7308 LOADB                            R24 1
     7309 JUMP                             ; [+1]
     7310 LOADB                            R24 0
     7311 JUMPIFNOT                        R24 ; [+4]
     7312 MOVE                             R23 R12
     7313 LOADK                            R24 K62 ["Description.ActionFriends"]
     7314 CALL                             R23 1 1
     7315 JUMPIF                           R23 ; [+3]
     7316 MOVE                             R23 R12
     7317 LOADK                            R24 K59 ["Description.ActionPublic"]
     7318 CALL                             R23 1 1
     7319 LOADK                            R24 K43 [""]
     7320 FASTCALL1                        TOSTRING R23 ; [+3]
     7321 MOVE                             R28 R23
     7322 GETIMPORT                        R27 K4 [tostring]
     7324 CALL                             R27 1 1
     7325 MOVE                             R25 R27
     7326 LOADK                            R26 K43 [""]
     7327 CONCAT                           R22 R24 R26
     7328 SETTABLEKS                       R22 R21 K138 ["action"]
     7330 CALL                             R19 2 1
     7331 SETTABLEKS                       R19 R18 K22 ["translation"]
     7333 GETTABLEKS                       R19 R2 K14 ["userId"]
     7335 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7337 MOVE                             R19 R0
     7338 GETTABLEKS                       R20 R2 K14 ["userId"]
     7340 CALL                             R19 1 1
     7341 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7343 LOADK                            R19 K37 ["Universe"]
     7344 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7346 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7348 JUMP                             ; [0]
     7349 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7351 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7353 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7355 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7357 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7359 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7361 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7363 LOADK                            R20 K43 [""]
     7364 FASTCALL1                        TOSTRING R4 ; [+3]
     7365 MOVE                             R24 R4
     7366 GETIMPORT                        R23 K4 [tostring]
     7368 CALL                             R23 1 1
     7369 MOVE                             R21 R23
     7370 LOADK                            R22 K94 [9]
     7371 CONCAT                           R19 R20 R22
     7372 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7374 RETURN                           R18 1
     7375 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7377 JUMPIFNOTEQKN                    R18 K351 [68] ; [+116]
     7379 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7380 GETTABLEKS                       R19 R2 K19 ["id"]
     7382 SETTABLEKS                       R19 R18 K19 ["id"]
     7384 LOADK                            R19 K96 ["Description.AvatarSettingsScaleHeight"]
     7385 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7387 LOADK                            R19 K88 [8]
     7388 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7390 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7392 GETIMPORT                        R21 K34 [pcall]
     7394 NEWCLOSURE                       R22 P6
     7395 CAPTURE                          VAL R20
     7396 CAPTURE                          VAL R3
     7397 CALL                             R21 1 2
     7398 JUMPIFNOT                        R21 ; [+2]
     7399 MOVE                             R19 R22
     7400 JUMP                             ; [+2]
     7401 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7402 JUMP                             ; [0]
     7403 SETTABLEKS                       R19 R18 K21 ["date"]
     7405 MOVE                             R19 R12
     7406 LOADK                            R20 K97 ["scale"]
     7407 DUPTABLE                         R21 K139 [{"action"}]
     7408 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7410 JUMPIFNOT                        R26 ; [+5]
     7411 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7413 GETTABLEKS                       R25 R26 K42 ["Action"]
     7415 JUMPIF                           R25 ; [+1]
     7416 LOADK                            R25 K43 [""]
     7417 GETIMPORT                        R26 K46 [string.lower]
     7419 FASTCALL1                        TOSTRING R25 ; [+3]
     7420 MOVE                             R28 R25
     7421 GETIMPORT                        R27 K4 [tostring]
     7423 CALL                             R27 1 1
     7424 CALL                             R26 1 1
     7425 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7427 LOADB                            R24 1
     7428 JUMP                             ; [+1]
     7429 LOADB                            R24 0
     7430 JUMPIFNOT                        R24 ; [+4]
     7431 MOVE                             R23 R12
     7432 LOADK                            R24 K140 ["Description.ActionEnabled"]
     7433 CALL                             R23 1 1
     7434 JUMPIF                           R23 ; [+3]
     7435 MOVE                             R23 R12
     7436 LOADK                            R24 K141 ["Description.ActionDisabled"]
     7437 CALL                             R23 1 1
     7438 LOADK                            R24 K43 [""]
     7439 FASTCALL1                        TOSTRING R23 ; [+3]
     7440 MOVE                             R28 R23
     7441 GETIMPORT                        R27 K4 [tostring]
     7443 CALL                             R27 1 1
     7444 MOVE                             R25 R27
     7445 LOADK                            R26 K43 [""]
     7446 CONCAT                           R22 R24 R26
     7447 SETTABLEKS                       R22 R21 K138 ["action"]
     7449 CALL                             R19 2 1
     7450 SETTABLEKS                       R19 R18 K22 ["translation"]
     7452 GETTABLEKS                       R19 R2 K14 ["userId"]
     7454 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7456 MOVE                             R19 R0
     7457 GETTABLEKS                       R20 R2 K14 ["userId"]
     7459 CALL                             R19 1 1
     7460 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7462 LOADK                            R19 K37 ["Universe"]
     7463 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7465 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7467 JUMP                             ; [0]
     7468 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7470 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7472 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7474 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7476 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7478 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7480 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7482 LOADK                            R20 K43 [""]
     7483 FASTCALL1                        TOSTRING R4 ; [+3]
     7484 MOVE                             R24 R4
     7485 GETIMPORT                        R23 K4 [tostring]
     7487 CALL                             R23 1 1
     7488 MOVE                             R21 R23
     7489 LOADK                            R22 K94 [9]
     7490 CONCAT                           R19 R20 R22
     7491 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7493 RETURN                           R18 1
     7494 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7496 JUMPIFNOTEQKN                    R18 K354 [69] ; [+95]
     7498 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7499 GETTABLEKS                       R19 R2 K19 ["id"]
     7501 SETTABLEKS                       R19 R18 K19 ["id"]
     7503 LOADK                            R19 K99 ["Scale"]
     7504 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7506 LOADK                            R19 K88 [8]
     7507 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7509 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7511 GETIMPORT                        R21 K34 [pcall]
     7513 NEWCLOSURE                       R22 P6
     7514 CAPTURE                          VAL R20
     7515 CAPTURE                          VAL R3
     7516 CALL                             R21 1 2
     7517 JUMPIFNOT                        R21 ; [+2]
     7518 MOVE                             R19 R22
     7519 JUMP                             ; [+2]
     7520 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7521 JUMP                             ; [0]
     7522 SETTABLEKS                       R19 R18 K21 ["date"]
     7524 MOVE                             R19 R12
     7525 LOADK                            R20 K100 [10]
     7526 DUPTABLE                         R21 K358 [{"price"}]
     7527 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7529 JUMPIFNOT                        R24 ; [+5]
     7530 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7532 GETTABLEKS                       R23 R24 K359 ["Price"]
     7534 JUMPIF                           R23 ; [+1]
     7535 LOADK                            R23 K43 [""]
     7536 LOADK                            R24 K43 [""]
     7537 FASTCALL1                        TOSTRING R23 ; [+3]
     7538 MOVE                             R28 R23
     7539 GETIMPORT                        R27 K4 [tostring]
     7541 CALL                             R27 1 1
     7542 MOVE                             R25 R27
     7543 LOADK                            R26 K43 [""]
     7544 CONCAT                           R22 R24 R26
     7545 SETTABLEKS                       R22 R21 K357 ["price"]
     7547 CALL                             R19 2 1
     7548 SETTABLEKS                       R19 R18 K22 ["translation"]
     7550 GETTABLEKS                       R19 R2 K14 ["userId"]
     7552 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7554 MOVE                             R19 R0
     7555 GETTABLEKS                       R20 R2 K14 ["userId"]
     7557 CALL                             R19 1 1
     7558 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7560 LOADK                            R19 K37 ["Universe"]
     7561 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7563 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7565 JUMP                             ; [0]
     7566 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7568 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7570 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7572 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7574 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7576 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7578 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7580 LOADK                            R20 K43 [""]
     7581 FASTCALL1                        TOSTRING R4 ; [+3]
     7582 MOVE                             R24 R4
     7583 GETIMPORT                        R23 K4 [tostring]
     7585 CALL                             R23 1 1
     7586 MOVE                             R21 R23
     7587 LOADK                            R22 K94 [9]
     7588 CONCAT                           R19 R20 R22
     7589 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7591 RETURN                           R18 1
     7592 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7594 JUMPIFNOTEQKN                    R18 K360 [70] ; [+85]
     7596 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7597 GETTABLEKS                       R19 R2 K19 ["id"]
     7599 SETTABLEKS                       R19 R18 K19 ["id"]
     7601 LOADK                            R19 K105 ["Description.AvatarSettingsScaleHead"]
     7602 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7604 LOADK                            R19 K88 [8]
     7605 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7607 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7609 GETIMPORT                        R21 K34 [pcall]
     7611 NEWCLOSURE                       R22 P6
     7612 CAPTURE                          VAL R20
     7613 CAPTURE                          VAL R3
     7614 CALL                             R21 1 2
     7615 JUMPIFNOT                        R21 ; [+2]
     7616 MOVE                             R19 R22
     7617 JUMP                             ; [+2]
     7618 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7619 JUMP                             ; [0]
     7620 SETTABLEKS                       R19 R18 K21 ["date"]
     7622 GETTABLEKS                       R20 R2 K41 ["metaData"]
     7624 LOADK                            R21 K43 [""]
     7625 GETIMPORT                        R22 K34 [pcall]
     7627 NEWCLOSURE                       R23 P7
     7628 CAPTURE                          VAL R20
     7629 CAPTURE                          UPVAL U3
     7630 CAPTURE                          UPVAL U4
     7631 CAPTURE                          VAL R12
     7632 CAPTURE                          REF R21
     7633 CALL                             R22 1 2
     7634 MOVE                             R19 R21
     7635 CLOSEUPVALS                      R21
     7636 SETTABLEKS                       R19 R18 K22 ["translation"]
     7638 GETTABLEKS                       R19 R2 K14 ["userId"]
     7640 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7642 MOVE                             R19 R0
     7643 GETTABLEKS                       R20 R2 K14 ["userId"]
     7645 CALL                             R19 1 1
     7646 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7648 LOADK                            R19 K37 ["Universe"]
     7649 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7651 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7653 JUMP                             ; [0]
     7654 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7656 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7658 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7660 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7662 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7664 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7666 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7668 LOADK                            R20 K43 [""]
     7669 FASTCALL1                        TOSTRING R4 ; [+3]
     7670 MOVE                             R24 R4
     7671 GETIMPORT                        R23 K4 [tostring]
     7673 CALL                             R23 1 1
     7674 MOVE                             R21 R23
     7675 LOADK                            R22 K94 [9]
     7676 CONCAT                           R19 R20 R22
     7677 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7679 RETURN                           R18 1
     7680 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7682 JUMPIFNOTEQKN                    R18 K362 [71] ; [+116]
     7684 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7685 GETTABLEKS                       R19 R2 K19 ["id"]
     7687 SETTABLEKS                       R19 R18 K19 ["id"]
     7689 LOADK                            R19 K107 ["AvatarSettingsScaleBodyType"]
     7690 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7692 LOADK                            R19 K88 [8]
     7693 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7695 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7697 GETIMPORT                        R21 K34 [pcall]
     7699 NEWCLOSURE                       R22 P6
     7700 CAPTURE                          VAL R20
     7701 CAPTURE                          VAL R3
     7702 CALL                             R21 1 2
     7703 JUMPIFNOT                        R21 ; [+2]
     7704 MOVE                             R19 R22
     7705 JUMP                             ; [+2]
     7706 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7707 JUMP                             ; [0]
     7708 SETTABLEKS                       R19 R18 K21 ["date"]
     7710 MOVE                             R19 R12
     7711 LOADK                            R20 K108 ["Description.AvatarSettingsScaleBodyType"]
     7712 DUPTABLE                         R21 K139 [{"action"}]
     7713 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7715 JUMPIFNOT                        R26 ; [+5]
     7716 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7718 GETTABLEKS                       R25 R26 K42 ["Action"]
     7720 JUMPIF                           R25 ; [+1]
     7721 LOADK                            R25 K43 [""]
     7722 GETIMPORT                        R26 K46 [string.lower]
     7724 FASTCALL1                        TOSTRING R25 ; [+3]
     7725 MOVE                             R28 R25
     7726 GETIMPORT                        R27 K4 [tostring]
     7728 CALL                             R27 1 1
     7729 CALL                             R26 1 1
     7730 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7732 LOADB                            R24 1
     7733 JUMP                             ; [+1]
     7734 LOADB                            R24 0
     7735 JUMPIFNOT                        R24 ; [+4]
     7736 MOVE                             R23 R12
     7737 LOADK                            R24 K140 ["Description.ActionEnabled"]
     7738 CALL                             R23 1 1
     7739 JUMPIF                           R23 ; [+3]
     7740 MOVE                             R23 R12
     7741 LOADK                            R24 K141 ["Description.ActionDisabled"]
     7742 CALL                             R23 1 1
     7743 LOADK                            R24 K43 [""]
     7744 FASTCALL1                        TOSTRING R23 ; [+3]
     7745 MOVE                             R28 R23
     7746 GETIMPORT                        R27 K4 [tostring]
     7748 CALL                             R27 1 1
     7749 MOVE                             R25 R27
     7750 LOADK                            R26 K43 [""]
     7751 CONCAT                           R22 R24 R26
     7752 SETTABLEKS                       R22 R21 K138 ["action"]
     7754 CALL                             R19 2 1
     7755 SETTABLEKS                       R19 R18 K22 ["translation"]
     7757 GETTABLEKS                       R19 R2 K14 ["userId"]
     7759 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7761 MOVE                             R19 R0
     7762 GETTABLEKS                       R20 R2 K14 ["userId"]
     7764 CALL                             R19 1 1
     7765 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7767 LOADK                            R19 K37 ["Universe"]
     7768 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7770 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7772 JUMP                             ; [0]
     7773 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7775 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7777 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7779 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7781 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7783 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7785 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7787 LOADK                            R20 K43 [""]
     7788 FASTCALL1                        TOSTRING R4 ; [+3]
     7789 MOVE                             R24 R4
     7790 GETIMPORT                        R23 K4 [tostring]
     7792 CALL                             R23 1 1
     7793 MOVE                             R21 R23
     7794 LOADK                            R22 K94 [9]
     7795 CONCAT                           R19 R20 R22
     7796 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7798 RETURN                           R18 1
     7799 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7801 JUMPIFNOTEQKN                    R18 K365 [72] ; [+95]
     7803 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7804 GETTABLEKS                       R19 R2 K19 ["id"]
     7806 SETTABLEKS                       R19 R18 K19 ["id"]
     7808 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
     7809 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7811 LOADK                            R19 K88 [8]
     7812 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7814 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7816 GETIMPORT                        R21 K34 [pcall]
     7818 NEWCLOSURE                       R22 P6
     7819 CAPTURE                          VAL R20
     7820 CAPTURE                          VAL R3
     7821 CALL                             R21 1 2
     7822 JUMPIFNOT                        R21 ; [+2]
     7823 MOVE                             R19 R22
     7824 JUMP                             ; [+2]
     7825 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7826 JUMP                             ; [0]
     7827 SETTABLEKS                       R19 R18 K21 ["date"]
     7829 MOVE                             R19 R12
     7830 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
     7831 DUPTABLE                         R21 K358 [{"price"}]
     7832 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7834 JUMPIFNOT                        R24 ; [+5]
     7835 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7837 GETTABLEKS                       R23 R24 K359 ["Price"]
     7839 JUMPIF                           R23 ; [+1]
     7840 LOADK                            R23 K43 [""]
     7841 LOADK                            R24 K43 [""]
     7842 FASTCALL1                        TOSTRING R23 ; [+3]
     7843 MOVE                             R28 R23
     7844 GETIMPORT                        R27 K4 [tostring]
     7846 CALL                             R27 1 1
     7847 MOVE                             R25 R27
     7848 LOADK                            R26 K43 [""]
     7849 CONCAT                           R22 R24 R26
     7850 SETTABLEKS                       R22 R21 K357 ["price"]
     7852 CALL                             R19 2 1
     7853 SETTABLEKS                       R19 R18 K22 ["translation"]
     7855 GETTABLEKS                       R19 R2 K14 ["userId"]
     7857 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7859 MOVE                             R19 R0
     7860 GETTABLEKS                       R20 R2 K14 ["userId"]
     7862 CALL                             R19 1 1
     7863 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7865 LOADK                            R19 K37 ["Universe"]
     7866 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7868 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7870 JUMP                             ; [0]
     7871 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7873 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7875 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7877 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7879 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7881 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7883 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7885 LOADK                            R20 K43 [""]
     7886 FASTCALL1                        TOSTRING R4 ; [+3]
     7887 MOVE                             R24 R4
     7888 GETIMPORT                        R23 K4 [tostring]
     7890 CALL                             R23 1 1
     7891 MOVE                             R21 R23
     7892 LOADK                            R22 K94 [9]
     7893 CONCAT                           R19 R20 R22
     7894 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7896 RETURN                           R18 1
     7897 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7899 JUMPIFNOTEQKN                    R18 K368 [73] ; [+144]
     7901 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     7902 GETTABLEKS                       R19 R2 K19 ["id"]
     7904 SETTABLEKS                       R19 R18 K19 ["id"]
     7906 LOADK                            R19 K114 ["Description.AvatarSettingsBodyParts"]
     7907 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7909 LOADK                            R19 K88 [8]
     7910 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7912 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7914 GETIMPORT                        R21 K34 [pcall]
     7916 NEWCLOSURE                       R22 P6
     7917 CAPTURE                          VAL R20
     7918 CAPTURE                          VAL R3
     7919 CALL                             R21 1 2
     7920 JUMPIFNOT                        R21 ; [+2]
     7921 MOVE                             R19 R22
     7922 JUMP                             ; [+2]
     7923 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7924 JUMP                             ; [0]
     7925 SETTABLEKS                       R19 R18 K21 ["date"]
     7927 MOVE                             R19 R12
     7928 LOADK                            R20 K115 [15]
     7929 DUPTABLE                         R21 K373 [{"adName", "action"}]
     7930 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7932 JUMPIFNOT                        R24 ; [+5]
     7933 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7935 GETTABLEKS                       R23 R24 K374 ["AdName"]
     7937 JUMPIF                           R23 ; [+1]
     7938 LOADK                            R23 K43 [""]
     7939 LOADK                            R24 K43 [""]
     7940 FASTCALL1                        TOSTRING R23 ; [+3]
     7941 MOVE                             R28 R23
     7942 GETIMPORT                        R27 K4 [tostring]
     7944 CALL                             R27 1 1
     7945 MOVE                             R25 R27
     7946 LOADK                            R26 K43 [""]
     7947 CONCAT                           R22 R24 R26
     7948 SETTABLEKS                       R22 R21 K372 ["adName"]
     7950 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7952 JUMPIFNOT                        R26 ; [+5]
     7953 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7955 GETTABLEKS                       R25 R26 K42 ["Action"]
     7957 JUMPIF                           R25 ; [+1]
     7958 LOADK                            R25 K43 [""]
     7959 GETIMPORT                        R26 K46 [string.lower]
     7961 FASTCALL1                        TOSTRING R25 ; [+3]
     7962 MOVE                             R28 R25
     7963 GETIMPORT                        R27 K4 [tostring]
     7965 CALL                             R27 1 1
     7966 CALL                             R26 1 1
     7967 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7969 LOADB                            R24 1
     7970 JUMP                             ; [+1]
     7971 LOADB                            R24 0
     7972 JUMPIFNOT                        R24 ; [+4]
     7973 MOVE                             R23 R12
     7974 LOADK                            R24 K119 ["ExperienceName"]
     7975 CALL                             R23 1 1
     7976 JUMPIF                           R23 ; [+3]
     7977 MOVE                             R23 R12
     7978 LOADK                            R24 K120 ["Description.ExperienceName"]
     7979 CALL                             R23 1 1
     7980 LOADK                            R24 K43 [""]
     7981 FASTCALL1                        TOSTRING R23 ; [+3]
     7982 MOVE                             R28 R23
     7983 GETIMPORT                        R27 K4 [tostring]
     7985 CALL                             R27 1 1
     7986 MOVE                             R25 R27
     7987 LOADK                            R26 K43 [""]
     7988 CONCAT                           R22 R24 R26
     7989 SETTABLEKS                       R22 R21 K138 ["action"]
     7991 CALL                             R19 2 1
     7992 SETTABLEKS                       R19 R18 K22 ["translation"]
     7994 GETTABLEKS                       R19 R2 K14 ["userId"]
     7996 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7998 MOVE                             R19 R0
     7999 GETTABLEKS                       R20 R2 K14 ["userId"]
     8001 CALL                             R19 1 1
     8002 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8004 LOADK                            R19 K37 ["Universe"]
     8005 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8007 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8009 JUMP                             ; [0]
     8010 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8012 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8014 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8016 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8018 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8020 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8022 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8024 LOADK                            R20 K43 [""]
     8025 GETUPVAL                         R26 1
     8026 FASTCALL1                        TOSTRING R26 ; [+2]
     8027 GETIMPORT                        R25 K4 [tostring]
     8029 CALL                             R25 1 1
     8030 MOVE                             R21 R25
     8031 LOADK                            R22 K121 ["newName"]
     8032 GETTABLEKS                       R26 R2 K2 ["universeId"]
     8034 FASTCALL1                        TOSTRING R26 ; [+2]
     8035 GETIMPORT                        R25 K4 [tostring]
     8037 CALL                             R25 1 1
     8038 MOVE                             R23 R25
     8039 LOADK                            R24 K43 [""]
     8040 CONCAT                           R19 R20 R24
     8041 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8043 RETURN                           R18 1
     8044 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8046 JUMPIFNOTEQKN                    R18 K378 [74] ; [+143]
     8048 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8049 GETTABLEKS                       R19 R2 K19 ["id"]
     8051 SETTABLEKS                       R19 R18 K19 ["id"]
     8053 LOADK                            R19 K27 ["headerText"]
     8054 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8056 LOADK                            R19 K88 [8]
     8057 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8059 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8061 GETIMPORT                        R21 K34 [pcall]
     8063 NEWCLOSURE                       R22 P6
     8064 CAPTURE                          VAL R20
     8065 CAPTURE                          VAL R3
     8066 CALL                             R21 1 2
     8067 JUMPIFNOT                        R21 ; [+2]
     8068 MOVE                             R19 R22
     8069 JUMP                             ; [+2]
     8070 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8071 JUMP                             ; [0]
     8072 SETTABLEKS                       R19 R18 K21 ["date"]
     8074 MOVE                             R19 R12
     8075 LOADK                            R20 K123 [{"newName", "oldName"}]
     8076 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     8077 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8079 JUMPIFNOT                        R24 ; [+5]
     8080 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8082 GETTABLEKS                       R23 R24 K124 ["NewName"]
     8084 JUMPIF                           R23 ; [+1]
     8085 LOADK                            R23 K43 [""]
     8086 LOADK                            R24 K43 [""]
     8087 FASTCALL1                        TOSTRING R23 ; [+3]
     8088 MOVE                             R28 R23
     8089 GETIMPORT                        R27 K4 [tostring]
     8091 CALL                             R27 1 1
     8092 MOVE                             R25 R27
     8093 LOADK                            R26 K43 [""]
     8094 CONCAT                           R22 R24 R26
     8095 SETTABLEKS                       R22 R21 K121 ["newName"]
     8097 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8099 JUMPIFNOT                        R24 ; [+5]
     8100 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8102 GETTABLEKS                       R23 R24 K125 ["OldName"]
     8104 JUMPIF                           R23 ; [+1]
     8105 LOADK                            R23 K43 [""]
     8106 LOADK                            R24 K43 [""]
     8107 FASTCALL1                        TOSTRING R23 ; [+3]
     8108 MOVE                             R28 R23
     8109 GETIMPORT                        R27 K4 [tostring]
     8111 CALL                             R27 1 1
     8112 MOVE                             R25 R27
     8113 LOADK                            R26 K43 [""]
     8114 CONCAT                           R22 R24 R26
     8115 SETTABLEKS                       R22 R21 K122 ["oldName"]
     8117 CALL                             R19 2 1
     8118 SETTABLEKS                       R19 R18 K22 ["translation"]
     8120 GETTABLEKS                       R19 R2 K14 ["userId"]
     8122 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8124 MOVE                             R19 R0
     8125 GETTABLEKS                       R20 R2 K14 ["userId"]
     8127 CALL                             R19 1 1
     8128 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8130 LOADK                            R19 K28 ["footerText"]
     8131 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8133 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8135 ORK                              R19 R20 K18 [0]
     8136 JUMP                             ; [0]
     8137 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8139 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8141 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8143 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8145 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8147 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8149 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8151 LOADK                            R20 K43 [""]
     8152 FASTCALL1                        TOSTRING R4 ; [+3]
     8153 MOVE                             R26 R4
     8154 GETIMPORT                        R25 K4 [tostring]
     8156 CALL                             R25 1 1
     8157 MOVE                             R21 R25
     8158 LOADK                            R22 K7 ["/badges/"]
     8159 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8161 FASTCALL1                        TOSTRING R26 ; [+2]
     8162 GETIMPORT                        R25 K4 [tostring]
     8164 CALL                             R25 1 1
     8165 MOVE                             R23 R25
     8166 LOADK                            R24 K11 ["/configure"]
     8167 CONCAT                           R19 R20 R24
     8168 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8170 LOADK                            R20 K43 [""]
     8171 GETUPVAL                         R26 1
     8172 FASTCALL1                        TOSTRING R26 ; [+2]
     8173 GETIMPORT                        R25 K4 [tostring]
     8175 CALL                             R25 1 1
     8176 MOVE                             R21 R25
     8177 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8178 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8180 FASTCALL1                        TOSTRING R26 ; [+2]
     8181 GETIMPORT                        R25 K4 [tostring]
     8183 CALL                             R25 1 1
     8184 MOVE                             R23 R25
     8185 LOADK                            R24 K43 [""]
     8186 CONCAT                           R19 R20 R24
     8187 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8189 RETURN                           R18 1
     8190 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8192 JUMPIFNOTEQKN                    R18 K380 [75] ; [+102]
     8194 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8195 GETTABLEKS                       R19 R2 K19 ["id"]
     8197 SETTABLEKS                       R19 R18 K19 ["id"]
     8199 LOADK                            R19 K125 ["OldName"]
     8200 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8202 LOADK                            R19 K88 [8]
     8203 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8205 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8207 GETIMPORT                        R21 K34 [pcall]
     8209 NEWCLOSURE                       R22 P6
     8210 CAPTURE                          VAL R20
     8211 CAPTURE                          VAL R3
     8212 CALL                             R21 1 2
     8213 JUMPIFNOT                        R21 ; [+2]
     8214 MOVE                             R19 R22
     8215 JUMP                             ; [+2]
     8216 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8217 JUMP                             ; [0]
     8218 SETTABLEKS                       R19 R18 K21 ["date"]
     8220 MOVE                             R19 R12
     8221 LOADK                            R20 K126 [17]
     8222 CALL                             R19 1 1
     8223 SETTABLEKS                       R19 R18 K22 ["translation"]
     8225 GETTABLEKS                       R19 R2 K14 ["userId"]
     8227 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8229 MOVE                             R19 R0
     8230 GETTABLEKS                       R20 R2 K14 ["userId"]
     8232 CALL                             R19 1 1
     8233 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8235 LOADK                            R19 K28 ["footerText"]
     8236 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8238 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8240 ORK                              R19 R20 K18 [0]
     8241 JUMP                             ; [0]
     8242 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8244 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8246 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8248 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8250 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8252 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8254 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8256 LOADK                            R20 K43 [""]
     8257 FASTCALL1                        TOSTRING R4 ; [+3]
     8258 MOVE                             R26 R4
     8259 GETIMPORT                        R25 K4 [tostring]
     8261 CALL                             R25 1 1
     8262 MOVE                             R21 R25
     8263 LOADK                            R22 K7 ["/badges/"]
     8264 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8266 FASTCALL1                        TOSTRING R26 ; [+2]
     8267 GETIMPORT                        R25 K4 [tostring]
     8269 CALL                             R25 1 1
     8270 MOVE                             R23 R25
     8271 LOADK                            R24 K11 ["/configure"]
     8272 CONCAT                           R19 R20 R24
     8273 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8275 LOADK                            R20 K43 [""]
     8276 GETUPVAL                         R26 1
     8277 FASTCALL1                        TOSTRING R26 ; [+2]
     8278 GETIMPORT                        R25 K4 [tostring]
     8280 CALL                             R25 1 1
     8281 MOVE                             R21 R25
     8282 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8283 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8285 FASTCALL1                        TOSTRING R26 ; [+2]
     8286 GETIMPORT                        R25 K4 [tostring]
     8288 CALL                             R25 1 1
     8289 MOVE                             R23 R25
     8290 LOADK                            R24 K43 [""]
     8291 CONCAT                           R19 R20 R24
     8292 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8294 RETURN                           R18 1
     8295 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8297 JUMPIFNOTEQKN                    R18 K383 [76] ; [+102]
     8299 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8300 GETTABLEKS                       R19 R2 K19 ["id"]
     8302 SETTABLEKS                       R19 R18 K19 ["id"]
     8304 LOADK                            R19 K128 ["Description.ExperienceDescription"]
     8305 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8307 LOADK                            R19 K88 [8]
     8308 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8310 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8312 GETIMPORT                        R21 K34 [pcall]
     8314 NEWCLOSURE                       R22 P6
     8315 CAPTURE                          VAL R20
     8316 CAPTURE                          VAL R3
     8317 CALL                             R21 1 2
     8318 JUMPIFNOT                        R21 ; [+2]
     8319 MOVE                             R19 R22
     8320 JUMP                             ; [+2]
     8321 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8322 JUMP                             ; [0]
     8323 SETTABLEKS                       R19 R18 K21 ["date"]
     8325 MOVE                             R19 R12
     8326 LOADK                            R20 K129 [18]
     8327 CALL                             R19 1 1
     8328 SETTABLEKS                       R19 R18 K22 ["translation"]
     8330 GETTABLEKS                       R19 R2 K14 ["userId"]
     8332 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8334 MOVE                             R19 R0
     8335 GETTABLEKS                       R20 R2 K14 ["userId"]
     8337 CALL                             R19 1 1
     8338 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8340 LOADK                            R19 K28 ["footerText"]
     8341 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8343 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8345 ORK                              R19 R20 K18 [0]
     8346 JUMP                             ; [0]
     8347 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8349 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8351 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8353 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8355 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8357 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8359 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8361 LOADK                            R20 K43 [""]
     8362 FASTCALL1                        TOSTRING R4 ; [+3]
     8363 MOVE                             R26 R4
     8364 GETIMPORT                        R25 K4 [tostring]
     8366 CALL                             R25 1 1
     8367 MOVE                             R21 R25
     8368 LOADK                            R22 K7 ["/badges/"]
     8369 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8371 FASTCALL1                        TOSTRING R26 ; [+2]
     8372 GETIMPORT                        R25 K4 [tostring]
     8374 CALL                             R25 1 1
     8375 MOVE                             R23 R25
     8376 LOADK                            R24 K11 ["/configure"]
     8377 CONCAT                           R19 R20 R24
     8378 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8380 LOADK                            R20 K43 [""]
     8381 GETUPVAL                         R26 1
     8382 FASTCALL1                        TOSTRING R26 ; [+2]
     8383 GETIMPORT                        R25 K4 [tostring]
     8385 CALL                             R25 1 1
     8386 MOVE                             R21 R25
     8387 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8388 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8390 FASTCALL1                        TOSTRING R26 ; [+2]
     8391 GETIMPORT                        R25 K4 [tostring]
     8393 CALL                             R25 1 1
     8394 MOVE                             R23 R25
     8395 LOADK                            R24 K43 [""]
     8396 CONCAT                           R19 R20 R24
     8397 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8399 RETURN                           R18 1
     8400 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8402 JUMPIFNOTEQKN                    R18 K386 [77] ; [+102]
     8404 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8405 GETTABLEKS                       R19 R2 K19 ["id"]
     8407 SETTABLEKS                       R19 R18 K19 ["id"]
     8409 LOADK                            R19 K131 ["Description.ExperienceGenre"]
     8410 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8412 LOADK                            R19 K88 [8]
     8413 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8415 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8417 GETIMPORT                        R21 K34 [pcall]
     8419 NEWCLOSURE                       R22 P6
     8420 CAPTURE                          VAL R20
     8421 CAPTURE                          VAL R3
     8422 CALL                             R21 1 2
     8423 JUMPIFNOT                        R21 ; [+2]
     8424 MOVE                             R19 R22
     8425 JUMP                             ; [+2]
     8426 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8427 JUMP                             ; [0]
     8428 SETTABLEKS                       R19 R18 K21 ["date"]
     8430 MOVE                             R19 R12
     8431 LOADK                            R20 K132 ["genre"]
     8432 CALL                             R19 1 1
     8433 SETTABLEKS                       R19 R18 K22 ["translation"]
     8435 GETTABLEKS                       R19 R2 K14 ["userId"]
     8437 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8439 MOVE                             R19 R0
     8440 GETTABLEKS                       R20 R2 K14 ["userId"]
     8442 CALL                             R19 1 1
     8443 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8445 LOADK                            R19 K28 ["footerText"]
     8446 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8448 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8450 ORK                              R19 R20 K18 [0]
     8451 JUMP                             ; [0]
     8452 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8454 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8456 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8458 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8460 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8462 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8464 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8466 LOADK                            R20 K43 [""]
     8467 FASTCALL1                        TOSTRING R4 ; [+3]
     8468 MOVE                             R26 R4
     8469 GETIMPORT                        R25 K4 [tostring]
     8471 CALL                             R25 1 1
     8472 MOVE                             R21 R25
     8473 LOADK                            R22 K7 ["/badges/"]
     8474 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8476 FASTCALL1                        TOSTRING R26 ; [+2]
     8477 GETIMPORT                        R25 K4 [tostring]
     8479 CALL                             R25 1 1
     8480 MOVE                             R23 R25
     8481 LOADK                            R24 K9 ["/overview"]
     8482 CONCAT                           R19 R20 R24
     8483 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8485 LOADK                            R20 K43 [""]
     8486 GETUPVAL                         R26 1
     8487 FASTCALL1                        TOSTRING R26 ; [+2]
     8488 GETIMPORT                        R25 K4 [tostring]
     8490 CALL                             R25 1 1
     8491 MOVE                             R21 R25
     8492 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8493 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8495 FASTCALL1                        TOSTRING R26 ; [+2]
     8496 GETIMPORT                        R25 K4 [tostring]
     8498 CALL                             R25 1 1
     8499 MOVE                             R23 R25
     8500 LOADK                            R24 K43 [""]
     8501 CONCAT                           R19 R20 R24
     8502 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8504 RETURN                           R18 1
     8505 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8507 JUMPIFNOTEQKN                    R18 K389 [78] ; [+143]
     8509 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8510 GETTABLEKS                       R19 R2 K19 ["id"]
     8512 SETTABLEKS                       R19 R18 K19 ["id"]
     8514 LOADK                            R19 K134 ["Genre"]
     8515 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8517 LOADK                            R19 K88 [8]
     8518 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8520 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8522 GETIMPORT                        R21 K34 [pcall]
     8524 NEWCLOSURE                       R22 P6
     8525 CAPTURE                          VAL R20
     8526 CAPTURE                          VAL R3
     8527 CALL                             R21 1 2
     8528 JUMPIFNOT                        R21 ; [+2]
     8529 MOVE                             R19 R22
     8530 JUMP                             ; [+2]
     8531 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8532 JUMP                             ; [0]
     8533 SETTABLEKS                       R19 R18 K21 ["date"]
     8535 MOVE                             R19 R12
     8536 LOADK                            R20 K135 [19]
     8537 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     8538 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8540 JUMPIFNOT                        R24 ; [+5]
     8541 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8543 GETTABLEKS                       R23 R24 K124 ["NewName"]
     8545 JUMPIF                           R23 ; [+1]
     8546 LOADK                            R23 K43 [""]
     8547 LOADK                            R24 K43 [""]
     8548 FASTCALL1                        TOSTRING R23 ; [+3]
     8549 MOVE                             R28 R23
     8550 GETIMPORT                        R27 K4 [tostring]
     8552 CALL                             R27 1 1
     8553 MOVE                             R25 R27
     8554 LOADK                            R26 K43 [""]
     8555 CONCAT                           R22 R24 R26
     8556 SETTABLEKS                       R22 R21 K121 ["newName"]
     8558 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8560 JUMPIFNOT                        R24 ; [+5]
     8561 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8563 GETTABLEKS                       R23 R24 K125 ["OldName"]
     8565 JUMPIF                           R23 ; [+1]
     8566 LOADK                            R23 K43 [""]
     8567 LOADK                            R24 K43 [""]
     8568 FASTCALL1                        TOSTRING R23 ; [+3]
     8569 MOVE                             R28 R23
     8570 GETIMPORT                        R27 K4 [tostring]
     8572 CALL                             R27 1 1
     8573 MOVE                             R25 R27
     8574 LOADK                            R26 K43 [""]
     8575 CONCAT                           R22 R24 R26
     8576 SETTABLEKS                       R22 R21 K122 ["oldName"]
     8578 CALL                             R19 2 1
     8579 SETTABLEKS                       R19 R18 K22 ["translation"]
     8581 GETTABLEKS                       R19 R2 K14 ["userId"]
     8583 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8585 MOVE                             R19 R0
     8586 GETTABLEKS                       R20 R2 K14 ["userId"]
     8588 CALL                             R19 1 1
     8589 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8591 LOADK                            R19 K45 ["lower"]
     8592 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8594 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8596 ORK                              R19 R20 K18 [0]
     8597 JUMP                             ; [0]
     8598 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8600 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8602 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8604 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8606 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8608 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8610 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8612 LOADK                            R20 K43 [""]
     8613 FASTCALL1                        TOSTRING R4 ; [+3]
     8614 MOVE                             R26 R4
     8615 GETIMPORT                        R25 K4 [tostring]
     8617 CALL                             R25 1 1
     8618 MOVE                             R21 R25
     8619 LOADK                            R22 K10 ["/developer-products/"]
     8620 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8622 FASTCALL1                        TOSTRING R26 ; [+2]
     8623 GETIMPORT                        R25 K4 [tostring]
     8625 CALL                             R25 1 1
     8626 MOVE                             R23 R25
     8627 LOADK                            R24 K11 ["/configure"]
     8628 CONCAT                           R19 R20 R24
     8629 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8631 LOADK                            R20 K43 [""]
     8632 GETUPVAL                         R26 1
     8633 FASTCALL1                        TOSTRING R26 ; [+2]
     8634 GETIMPORT                        R25 K4 [tostring]
     8636 CALL                             R25 1 1
     8637 MOVE                             R21 R25
     8638 LOADK                            R22 K46 [string.lower]
     8639 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8641 FASTCALL1                        TOSTRING R26 ; [+2]
     8642 GETIMPORT                        R25 K4 [tostring]
     8644 CALL                             R25 1 1
     8645 MOVE                             R23 R25
     8646 LOADK                            R24 K43 [""]
     8647 CONCAT                           R19 R20 R24
     8648 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8650 RETURN                           R18 1
     8651 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8653 JUMPIFNOTEQKN                    R18 K392 [79] ; [+102]
     8655 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8656 GETTABLEKS                       R19 R2 K19 ["id"]
     8658 SETTABLEKS                       R19 R18 K19 ["id"]
     8660 LOADK                            R19 K137 ["Description.SecuritySettingsHTTPRequests"]
     8661 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8663 LOADK                            R19 K88 [8]
     8664 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8666 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8668 GETIMPORT                        R21 K34 [pcall]
     8670 NEWCLOSURE                       R22 P6
     8671 CAPTURE                          VAL R20
     8672 CAPTURE                          VAL R3
     8673 CALL                             R21 1 2
     8674 JUMPIFNOT                        R21 ; [+2]
     8675 MOVE                             R19 R22
     8676 JUMP                             ; [+2]
     8677 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8678 JUMP                             ; [0]
     8679 SETTABLEKS                       R19 R18 K21 ["date"]
     8681 MOVE                             R19 R12
     8682 LOADK                            R20 K138 ["action"]
     8683 CALL                             R19 1 1
     8684 SETTABLEKS                       R19 R18 K22 ["translation"]
     8686 GETTABLEKS                       R19 R2 K14 ["userId"]
     8688 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8690 MOVE                             R19 R0
     8691 GETTABLEKS                       R20 R2 K14 ["userId"]
     8693 CALL                             R19 1 1
     8694 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8696 LOADK                            R19 K45 ["lower"]
     8697 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8699 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8701 ORK                              R19 R20 K18 [0]
     8702 JUMP                             ; [0]
     8703 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8705 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8707 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8709 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8711 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8713 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8715 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8717 LOADK                            R20 K43 [""]
     8718 FASTCALL1                        TOSTRING R4 ; [+3]
     8719 MOVE                             R26 R4
     8720 GETIMPORT                        R25 K4 [tostring]
     8722 CALL                             R25 1 1
     8723 MOVE                             R21 R25
     8724 LOADK                            R22 K10 ["/developer-products/"]
     8725 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8727 FASTCALL1                        TOSTRING R26 ; [+2]
     8728 GETIMPORT                        R25 K4 [tostring]
     8730 CALL                             R25 1 1
     8731 MOVE                             R23 R25
     8732 LOADK                            R24 K11 ["/configure"]
     8733 CONCAT                           R19 R20 R24
     8734 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8736 LOADK                            R20 K43 [""]
     8737 GETUPVAL                         R26 1
     8738 FASTCALL1                        TOSTRING R26 ; [+2]
     8739 GETIMPORT                        R25 K4 [tostring]
     8741 CALL                             R25 1 1
     8742 MOVE                             R21 R25
     8743 LOADK                            R22 K46 [string.lower]
     8744 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8746 FASTCALL1                        TOSTRING R26 ; [+2]
     8747 GETIMPORT                        R25 K4 [tostring]
     8749 CALL                             R25 1 1
     8750 MOVE                             R23 R25
     8751 LOADK                            R24 K43 [""]
     8752 CONCAT                           R19 R20 R24
     8753 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8755 RETURN                           R18 1
     8756 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8758 JUMPIFNOTEQKN                    R18 K395 [80] ; [+102]
     8760 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8761 GETTABLEKS                       R19 R2 K19 ["id"]
     8763 SETTABLEKS                       R19 R18 K19 ["id"]
     8765 LOADK                            R19 K140 ["Description.ActionEnabled"]
     8766 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8768 LOADK                            R19 K88 [8]
     8769 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8771 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8773 GETIMPORT                        R21 K34 [pcall]
     8775 NEWCLOSURE                       R22 P6
     8776 CAPTURE                          VAL R20
     8777 CAPTURE                          VAL R3
     8778 CALL                             R21 1 2
     8779 JUMPIFNOT                        R21 ; [+2]
     8780 MOVE                             R19 R22
     8781 JUMP                             ; [+2]
     8782 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8783 JUMP                             ; [0]
     8784 SETTABLEKS                       R19 R18 K21 ["date"]
     8786 MOVE                             R19 R12
     8787 LOADK                            R20 K141 ["Description.ActionDisabled"]
     8788 CALL                             R19 1 1
     8789 SETTABLEKS                       R19 R18 K22 ["translation"]
     8791 GETTABLEKS                       R19 R2 K14 ["userId"]
     8793 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8795 MOVE                             R19 R0
     8796 GETTABLEKS                       R20 R2 K14 ["userId"]
     8798 CALL                             R19 1 1
     8799 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8801 LOADK                            R19 K45 ["lower"]
     8802 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8804 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8806 ORK                              R19 R20 K18 [0]
     8807 JUMP                             ; [0]
     8808 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8810 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8812 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8814 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8816 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8818 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8820 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8822 LOADK                            R20 K43 [""]
     8823 FASTCALL1                        TOSTRING R4 ; [+3]
     8824 MOVE                             R26 R4
     8825 GETIMPORT                        R25 K4 [tostring]
     8827 CALL                             R25 1 1
     8828 MOVE                             R21 R25
     8829 LOADK                            R22 K10 ["/developer-products/"]
     8830 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8832 FASTCALL1                        TOSTRING R26 ; [+2]
     8833 GETIMPORT                        R25 K4 [tostring]
     8835 CALL                             R25 1 1
     8836 MOVE                             R23 R25
     8837 LOADK                            R24 K11 ["/configure"]
     8838 CONCAT                           R19 R20 R24
     8839 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8841 LOADK                            R20 K43 [""]
     8842 GETUPVAL                         R26 1
     8843 FASTCALL1                        TOSTRING R26 ; [+2]
     8844 GETIMPORT                        R25 K4 [tostring]
     8846 CALL                             R25 1 1
     8847 MOVE                             R21 R25
     8848 LOADK                            R22 K46 [string.lower]
     8849 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8851 FASTCALL1                        TOSTRING R26 ; [+2]
     8852 GETIMPORT                        R25 K4 [tostring]
     8854 CALL                             R25 1 1
     8855 MOVE                             R23 R25
     8856 LOADK                            R24 K43 [""]
     8857 CONCAT                           R19 R20 R24
     8858 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8860 RETURN                           R18 1
     8861 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8863 JUMPIFNOTEQKN                    R18 K398 [81] ; [+123]
     8865 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8866 GETTABLEKS                       R19 R2 K19 ["id"]
     8868 SETTABLEKS                       R19 R18 K19 ["id"]
     8870 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
     8871 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8873 LOADK                            R19 K88 [8]
     8874 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8876 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8878 GETIMPORT                        R21 K34 [pcall]
     8880 NEWCLOSURE                       R22 P6
     8881 CAPTURE                          VAL R20
     8882 CAPTURE                          VAL R3
     8883 CALL                             R21 1 2
     8884 JUMPIFNOT                        R21 ; [+2]
     8885 MOVE                             R19 R22
     8886 JUMP                             ; [+2]
     8887 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8888 JUMP                             ; [0]
     8889 SETTABLEKS                       R19 R18 K21 ["date"]
     8891 MOVE                             R19 R12
     8892 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
     8893 DUPTABLE                         R21 K358 [{"price"}]
     8894 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8896 JUMPIFNOT                        R24 ; [+5]
     8897 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8899 GETTABLEKS                       R23 R24 K359 ["Price"]
     8901 JUMPIF                           R23 ; [+1]
     8902 LOADK                            R23 K43 [""]
     8903 LOADK                            R24 K43 [""]
     8904 FASTCALL1                        TOSTRING R23 ; [+3]
     8905 MOVE                             R28 R23
     8906 GETIMPORT                        R27 K4 [tostring]
     8908 CALL                             R27 1 1
     8909 MOVE                             R25 R27
     8910 LOADK                            R26 K43 [""]
     8911 CONCAT                           R22 R24 R26
     8912 SETTABLEKS                       R22 R21 K357 ["price"]
     8914 CALL                             R19 2 1
     8915 SETTABLEKS                       R19 R18 K22 ["translation"]
     8917 GETTABLEKS                       R19 R2 K14 ["userId"]
     8919 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8921 MOVE                             R19 R0
     8922 GETTABLEKS                       R20 R2 K14 ["userId"]
     8924 CALL                             R19 1 1
     8925 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8927 LOADK                            R19 K45 ["lower"]
     8928 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8930 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8932 ORK                              R19 R20 K18 [0]
     8933 JUMP                             ; [0]
     8934 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8936 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8938 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8940 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8942 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8944 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8946 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8948 LOADK                            R20 K43 [""]
     8949 FASTCALL1                        TOSTRING R4 ; [+3]
     8950 MOVE                             R26 R4
     8951 GETIMPORT                        R25 K4 [tostring]
     8953 CALL                             R25 1 1
     8954 MOVE                             R21 R25
     8955 LOADK                            R22 K10 ["/developer-products/"]
     8956 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8958 FASTCALL1                        TOSTRING R26 ; [+2]
     8959 GETIMPORT                        R25 K4 [tostring]
     8961 CALL                             R25 1 1
     8962 MOVE                             R23 R25
     8963 LOADK                            R24 K11 ["/configure"]
     8964 CONCAT                           R19 R20 R24
     8965 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8967 LOADK                            R20 K43 [""]
     8968 GETUPVAL                         R26 1
     8969 FASTCALL1                        TOSTRING R26 ; [+2]
     8970 GETIMPORT                        R25 K4 [tostring]
     8972 CALL                             R25 1 1
     8973 MOVE                             R21 R25
     8974 LOADK                            R22 K46 [string.lower]
     8975 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8977 FASTCALL1                        TOSTRING R26 ; [+2]
     8978 GETIMPORT                        R25 K4 [tostring]
     8980 CALL                             R25 1 1
     8981 MOVE                             R23 R25
     8982 LOADK                            R24 K43 [""]
     8983 CONCAT                           R19 R20 R24
     8984 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8986 RETURN                           R18 1
     8987 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8989 JUMPIFNOTEQKN                    R18 K401 [82] ; [+102]
     8991 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8992 GETTABLEKS                       R19 R2 K19 ["id"]
     8994 SETTABLEKS                       R19 R18 K19 ["id"]
     8996 LOADK                            R19 K146 ["SecuritySettingsThirdPartySales"]
     8997 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8999 LOADK                            R19 K88 [8]
     9000 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9002 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9004 GETIMPORT                        R21 K34 [pcall]
     9006 NEWCLOSURE                       R22 P6
     9007 CAPTURE                          VAL R20
     9008 CAPTURE                          VAL R3
     9009 CALL                             R21 1 2
     9010 JUMPIFNOT                        R21 ; [+2]
     9011 MOVE                             R19 R22
     9012 JUMP                             ; [+2]
     9013 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9014 JUMP                             ; [0]
     9015 SETTABLEKS                       R19 R18 K21 ["date"]
     9017 MOVE                             R19 R12
     9018 LOADK                            R20 K147 ["Description.SecuritySettingsThirdPartySales"]
     9019 CALL                             R19 1 1
     9020 SETTABLEKS                       R19 R18 K22 ["translation"]
     9022 GETTABLEKS                       R19 R2 K14 ["userId"]
     9024 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9026 MOVE                             R19 R0
     9027 GETTABLEKS                       R20 R2 K14 ["userId"]
     9029 CALL                             R19 1 1
     9030 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9032 LOADK                            R19 K45 ["lower"]
     9033 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9035 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9037 ORK                              R19 R20 K18 [0]
     9038 JUMP                             ; [0]
     9039 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9041 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9043 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9045 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9047 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9049 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9051 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9053 LOADK                            R20 K43 [""]
     9054 FASTCALL1                        TOSTRING R4 ; [+3]
     9055 MOVE                             R26 R4
     9056 GETIMPORT                        R25 K4 [tostring]
     9058 CALL                             R25 1 1
     9059 MOVE                             R21 R25
     9060 LOADK                            R22 K10 ["/developer-products/"]
     9061 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9063 FASTCALL1                        TOSTRING R26 ; [+2]
     9064 GETIMPORT                        R25 K4 [tostring]
     9066 CALL                             R25 1 1
     9067 MOVE                             R23 R25
     9068 LOADK                            R24 K11 ["/configure"]
     9069 CONCAT                           R19 R20 R24
     9070 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9072 LOADK                            R20 K43 [""]
     9073 GETUPVAL                         R26 1
     9074 FASTCALL1                        TOSTRING R26 ; [+2]
     9075 GETIMPORT                        R25 K4 [tostring]
     9077 CALL                             R25 1 1
     9078 MOVE                             R21 R25
     9079 LOADK                            R22 K46 [string.lower]
     9080 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9082 FASTCALL1                        TOSTRING R26 ; [+2]
     9083 GETIMPORT                        R25 K4 [tostring]
     9085 CALL                             R25 1 1
     9086 MOVE                             R23 R25
     9087 LOADK                            R24 K43 [""]
     9088 CONCAT                           R19 R20 R24
     9089 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9091 RETURN                           R18 1
     9092 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9094 JUMPIFNOTEQKN                    R18 K404 [83] ; [+143]
     9096 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9097 GETTABLEKS                       R19 R2 K19 ["id"]
     9099 SETTABLEKS                       R19 R18 K19 ["id"]
     9101 LOADK                            R19 K149 ["SecuritySettingsThirdPartyTeleports"]
     9102 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9104 LOADK                            R19 K88 [8]
     9105 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9107 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9109 GETIMPORT                        R21 K34 [pcall]
     9111 NEWCLOSURE                       R22 P6
     9112 CAPTURE                          VAL R20
     9113 CAPTURE                          VAL R3
     9114 CALL                             R21 1 2
     9115 JUMPIFNOT                        R21 ; [+2]
     9116 MOVE                             R19 R22
     9117 JUMP                             ; [+2]
     9118 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9119 JUMP                             ; [0]
     9120 SETTABLEKS                       R19 R18 K21 ["date"]
     9122 MOVE                             R19 R12
     9123 LOADK                            R20 K150 ["Description.SecuritySettingsThirdPartyTeleports"]
     9124 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     9125 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9127 JUMPIFNOT                        R24 ; [+5]
     9128 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9130 GETTABLEKS                       R23 R24 K124 ["NewName"]
     9132 JUMPIF                           R23 ; [+1]
     9133 LOADK                            R23 K43 [""]
     9134 LOADK                            R24 K43 [""]
     9135 FASTCALL1                        TOSTRING R23 ; [+3]
     9136 MOVE                             R28 R23
     9137 GETIMPORT                        R27 K4 [tostring]
     9139 CALL                             R27 1 1
     9140 MOVE                             R25 R27
     9141 LOADK                            R26 K43 [""]
     9142 CONCAT                           R22 R24 R26
     9143 SETTABLEKS                       R22 R21 K121 ["newName"]
     9145 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9147 JUMPIFNOT                        R24 ; [+5]
     9148 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9150 GETTABLEKS                       R23 R24 K125 ["OldName"]
     9152 JUMPIF                           R23 ; [+1]
     9153 LOADK                            R23 K43 [""]
     9154 LOADK                            R24 K43 [""]
     9155 FASTCALL1                        TOSTRING R23 ; [+3]
     9156 MOVE                             R28 R23
     9157 GETIMPORT                        R27 K4 [tostring]
     9159 CALL                             R27 1 1
     9160 MOVE                             R25 R27
     9161 LOADK                            R26 K43 [""]
     9162 CONCAT                           R22 R24 R26
     9163 SETTABLEKS                       R22 R21 K122 ["oldName"]
     9165 CALL                             R19 2 1
     9166 SETTABLEKS                       R19 R18 K22 ["translation"]
     9168 GETTABLEKS                       R19 R2 K14 ["userId"]
     9170 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9172 MOVE                             R19 R0
     9173 GETTABLEKS                       R20 R2 K14 ["userId"]
     9175 CALL                             R19 1 1
     9176 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9178 LOADK                            R19 K62 ["Description.ActionFriends"]
     9179 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9181 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9183 ORK                              R19 R20 K18 [0]
     9184 JUMP                             ; [0]
     9185 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9187 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9189 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9191 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9193 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9195 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9197 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9199 LOADK                            R20 K43 [""]
     9200 FASTCALL1                        TOSTRING R4 ; [+3]
     9201 MOVE                             R26 R4
     9202 GETIMPORT                        R25 K4 [tostring]
     9204 CALL                             R25 1 1
     9205 MOVE                             R21 R25
     9206 LOADK                            R22 K12 ["/passes/"]
     9207 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9209 FASTCALL1                        TOSTRING R26 ; [+2]
     9210 GETIMPORT                        R25 K4 [tostring]
     9212 CALL                             R25 1 1
     9213 MOVE                             R23 R25
     9214 LOADK                            R24 K11 ["/configure"]
     9215 CONCAT                           R19 R20 R24
     9216 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9218 LOADK                            R20 K43 [""]
     9219 GETUPVAL                         R26 1
     9220 FASTCALL1                        TOSTRING R26 ; [+2]
     9221 GETIMPORT                        R25 K4 [tostring]
     9223 CALL                             R25 1 1
     9224 MOVE                             R21 R25
     9225 LOADK                            R22 K63 [3]
     9226 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9228 FASTCALL1                        TOSTRING R26 ; [+2]
     9229 GETIMPORT                        R25 K4 [tostring]
     9231 CALL                             R25 1 1
     9232 MOVE                             R23 R25
     9233 LOADK                            R24 K43 [""]
     9234 CONCAT                           R19 R20 R24
     9235 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9237 RETURN                           R18 1
     9238 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9240 JUMPIFNOTEQKN                    R18 K407 [84] ; [+102]
     9242 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9243 GETTABLEKS                       R19 R2 K19 ["id"]
     9245 SETTABLEKS                       R19 R18 K19 ["id"]
     9247 LOADK                            R19 K152 ["ExperienceShutDown"]
     9248 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9250 LOADK                            R19 K88 [8]
     9251 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9253 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9255 GETIMPORT                        R21 K34 [pcall]
     9257 NEWCLOSURE                       R22 P6
     9258 CAPTURE                          VAL R20
     9259 CAPTURE                          VAL R3
     9260 CALL                             R21 1 2
     9261 JUMPIFNOT                        R21 ; [+2]
     9262 MOVE                             R19 R22
     9263 JUMP                             ; [+2]
     9264 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9265 JUMP                             ; [0]
     9266 SETTABLEKS                       R19 R18 K21 ["date"]
     9268 MOVE                             R19 R12
     9269 LOADK                            R20 K153 ["Description.ExperienceShutDown"]
     9270 CALL                             R19 1 1
     9271 SETTABLEKS                       R19 R18 K22 ["translation"]
     9273 GETTABLEKS                       R19 R2 K14 ["userId"]
     9275 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9277 MOVE                             R19 R0
     9278 GETTABLEKS                       R20 R2 K14 ["userId"]
     9280 CALL                             R19 1 1
     9281 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9283 LOADK                            R19 K62 ["Description.ActionFriends"]
     9284 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9286 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9288 ORK                              R19 R20 K18 [0]
     9289 JUMP                             ; [0]
     9290 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9292 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9294 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9296 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9298 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9300 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9302 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9304 LOADK                            R20 K43 [""]
     9305 FASTCALL1                        TOSTRING R4 ; [+3]
     9306 MOVE                             R26 R4
     9307 GETIMPORT                        R25 K4 [tostring]
     9309 CALL                             R25 1 1
     9310 MOVE                             R21 R25
     9311 LOADK                            R22 K12 ["/passes/"]
     9312 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9314 FASTCALL1                        TOSTRING R26 ; [+2]
     9315 GETIMPORT                        R25 K4 [tostring]
     9317 CALL                             R25 1 1
     9318 MOVE                             R23 R25
     9319 LOADK                            R24 K11 ["/configure"]
     9320 CONCAT                           R19 R20 R24
     9321 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9323 LOADK                            R20 K43 [""]
     9324 GETUPVAL                         R26 1
     9325 FASTCALL1                        TOSTRING R26 ; [+2]
     9326 GETIMPORT                        R25 K4 [tostring]
     9328 CALL                             R25 1 1
     9329 MOVE                             R21 R25
     9330 LOADK                            R22 K63 [3]
     9331 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9333 FASTCALL1                        TOSTRING R26 ; [+2]
     9334 GETIMPORT                        R25 K4 [tostring]
     9336 CALL                             R25 1 1
     9337 MOVE                             R23 R25
     9338 LOADK                            R24 K43 [""]
     9339 CONCAT                           R19 R20 R24
     9340 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9342 RETURN                           R18 1
     9343 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9345 JUMPIFNOTEQKN                    R18 K410 [85] ; [+102]
     9347 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9348 GETTABLEKS                       R19 R2 K19 ["id"]
     9350 SETTABLEKS                       R19 R18 K19 ["id"]
     9352 LOADK                            R19 K155 ["SocialLinksAdded"]
     9353 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9355 LOADK                            R19 K88 [8]
     9356 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9358 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9360 GETIMPORT                        R21 K34 [pcall]
     9362 NEWCLOSURE                       R22 P6
     9363 CAPTURE                          VAL R20
     9364 CAPTURE                          VAL R3
     9365 CALL                             R21 1 2
     9366 JUMPIFNOT                        R21 ; [+2]
     9367 MOVE                             R19 R22
     9368 JUMP                             ; [+2]
     9369 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9370 JUMP                             ; [0]
     9371 SETTABLEKS                       R19 R18 K21 ["date"]
     9373 MOVE                             R19 R12
     9374 LOADK                            R20 K156 ["Description.SocialLinksAdded"]
     9375 CALL                             R19 1 1
     9376 SETTABLEKS                       R19 R18 K22 ["translation"]
     9378 GETTABLEKS                       R19 R2 K14 ["userId"]
     9380 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9382 MOVE                             R19 R0
     9383 GETTABLEKS                       R20 R2 K14 ["userId"]
     9385 CALL                             R19 1 1
     9386 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9388 LOADK                            R19 K62 ["Description.ActionFriends"]
     9389 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9391 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9393 ORK                              R19 R20 K18 [0]
     9394 JUMP                             ; [0]
     9395 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9397 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9399 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9401 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9403 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9405 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9407 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9409 LOADK                            R20 K43 [""]
     9410 FASTCALL1                        TOSTRING R4 ; [+3]
     9411 MOVE                             R26 R4
     9412 GETIMPORT                        R25 K4 [tostring]
     9414 CALL                             R25 1 1
     9415 MOVE                             R21 R25
     9416 LOADK                            R22 K12 ["/passes/"]
     9417 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9419 FASTCALL1                        TOSTRING R26 ; [+2]
     9420 GETIMPORT                        R25 K4 [tostring]
     9422 CALL                             R25 1 1
     9423 MOVE                             R23 R25
     9424 LOADK                            R24 K11 ["/configure"]
     9425 CONCAT                           R19 R20 R24
     9426 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9428 LOADK                            R20 K43 [""]
     9429 GETUPVAL                         R26 1
     9430 FASTCALL1                        TOSTRING R26 ; [+2]
     9431 GETIMPORT                        R25 K4 [tostring]
     9433 CALL                             R25 1 1
     9434 MOVE                             R21 R25
     9435 LOADK                            R22 K63 [3]
     9436 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9438 FASTCALL1                        TOSTRING R26 ; [+2]
     9439 GETIMPORT                        R25 K4 [tostring]
     9441 CALL                             R25 1 1
     9442 MOVE                             R23 R25
     9443 LOADK                            R24 K43 [""]
     9444 CONCAT                           R19 R20 R24
     9445 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9447 RETURN                           R18 1
     9448 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9450 JUMPIFNOTEQKN                    R18 K413 [86] ; [+123]
     9452 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9453 GETTABLEKS                       R19 R2 K19 ["id"]
     9455 SETTABLEKS                       R19 R18 K19 ["id"]
     9457 LOADK                            R19 K158 [{"channel"}]
     9458 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9460 LOADK                            R19 K88 [8]
     9461 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9463 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9465 GETIMPORT                        R21 K34 [pcall]
     9467 NEWCLOSURE                       R22 P6
     9468 CAPTURE                          VAL R20
     9469 CAPTURE                          VAL R3
     9470 CALL                             R21 1 2
     9471 JUMPIFNOT                        R21 ; [+2]
     9472 MOVE                             R19 R22
     9473 JUMP                             ; [+2]
     9474 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9475 JUMP                             ; [0]
     9476 SETTABLEKS                       R19 R18 K21 ["date"]
     9478 MOVE                             R19 R12
     9479 LOADK                            R20 K159 ["Channel"]
     9480 DUPTABLE                         R21 K358 [{"price"}]
     9481 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9483 JUMPIFNOT                        R24 ; [+5]
     9484 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9486 GETTABLEKS                       R23 R24 K359 ["Price"]
     9488 JUMPIF                           R23 ; [+1]
     9489 LOADK                            R23 K43 [""]
     9490 LOADK                            R24 K43 [""]
     9491 FASTCALL1                        TOSTRING R23 ; [+3]
     9492 MOVE                             R28 R23
     9493 GETIMPORT                        R27 K4 [tostring]
     9495 CALL                             R27 1 1
     9496 MOVE                             R25 R27
     9497 LOADK                            R26 K43 [""]
     9498 CONCAT                           R22 R24 R26
     9499 SETTABLEKS                       R22 R21 K357 ["price"]
     9501 CALL                             R19 2 1
     9502 SETTABLEKS                       R19 R18 K22 ["translation"]
     9504 GETTABLEKS                       R19 R2 K14 ["userId"]
     9506 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9508 MOVE                             R19 R0
     9509 GETTABLEKS                       R20 R2 K14 ["userId"]
     9511 CALL                             R19 1 1
     9512 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9514 LOADK                            R19 K62 ["Description.ActionFriends"]
     9515 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9517 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9519 ORK                              R19 R20 K18 [0]
     9520 JUMP                             ; [0]
     9521 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9523 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9525 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9527 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9529 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9531 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9533 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9535 LOADK                            R20 K43 [""]
     9536 FASTCALL1                        TOSTRING R4 ; [+3]
     9537 MOVE                             R26 R4
     9538 GETIMPORT                        R25 K4 [tostring]
     9540 CALL                             R25 1 1
     9541 MOVE                             R21 R25
     9542 LOADK                            R22 K12 ["/passes/"]
     9543 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9545 FASTCALL1                        TOSTRING R26 ; [+2]
     9546 GETIMPORT                        R25 K4 [tostring]
     9548 CALL                             R25 1 1
     9549 MOVE                             R23 R25
     9550 LOADK                            R24 K160 ["/social-links"]
     9551 CONCAT                           R19 R20 R24
     9552 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9554 LOADK                            R20 K43 [""]
     9555 GETUPVAL                         R26 1
     9556 FASTCALL1                        TOSTRING R26 ; [+2]
     9557 GETIMPORT                        R25 K4 [tostring]
     9559 CALL                             R25 1 1
     9560 MOVE                             R21 R25
     9561 LOADK                            R22 K63 [3]
     9562 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9564 FASTCALL1                        TOSTRING R26 ; [+2]
     9565 GETIMPORT                        R25 K4 [tostring]
     9567 CALL                             R25 1 1
     9568 MOVE                             R23 R25
     9569 LOADK                            R24 K43 [""]
     9570 CONCAT                           R19 R20 R24
     9571 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9573 RETURN                           R18 1
     9574 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9576 JUMPIFNOTEQKN                    R18 K417 [87] ; [+102]
     9578 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9579 GETTABLEKS                       R19 R2 K19 ["id"]
     9581 SETTABLEKS                       R19 R18 K19 ["id"]
     9583 LOADK                            R19 K162 ["SocialLinksRemoved"]
     9584 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9586 LOADK                            R19 K88 [8]
     9587 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9589 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9591 GETIMPORT                        R21 K34 [pcall]
     9593 NEWCLOSURE                       R22 P6
     9594 CAPTURE                          VAL R20
     9595 CAPTURE                          VAL R3
     9596 CALL                             R21 1 2
     9597 JUMPIFNOT                        R21 ; [+2]
     9598 MOVE                             R19 R22
     9599 JUMP                             ; [+2]
     9600 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9601 JUMP                             ; [0]
     9602 SETTABLEKS                       R19 R18 K21 ["date"]
     9604 MOVE                             R19 R12
     9605 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
     9606 CALL                             R19 1 1
     9607 SETTABLEKS                       R19 R18 K22 ["translation"]
     9609 GETTABLEKS                       R19 R2 K14 ["userId"]
     9611 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9613 MOVE                             R19 R0
     9614 GETTABLEKS                       R20 R2 K14 ["userId"]
     9616 CALL                             R19 1 1
     9617 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9619 LOADK                            R19 K62 ["Description.ActionFriends"]
     9620 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9622 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9624 ORK                              R19 R20 K18 [0]
     9625 JUMP                             ; [0]
     9626 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9628 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9630 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9632 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9634 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9636 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9638 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9640 LOADK                            R20 K43 [""]
     9641 FASTCALL1                        TOSTRING R4 ; [+3]
     9642 MOVE                             R26 R4
     9643 GETIMPORT                        R25 K4 [tostring]
     9645 CALL                             R25 1 1
     9646 MOVE                             R21 R25
     9647 LOADK                            R22 K12 ["/passes/"]
     9648 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9650 FASTCALL1                        TOSTRING R26 ; [+2]
     9651 GETIMPORT                        R25 K4 [tostring]
     9653 CALL                             R25 1 1
     9654 MOVE                             R23 R25
     9655 LOADK                            R24 K11 ["/configure"]
     9656 CONCAT                           R19 R20 R24
     9657 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9659 LOADK                            R20 K43 [""]
     9660 GETUPVAL                         R26 1
     9661 FASTCALL1                        TOSTRING R26 ; [+2]
     9662 GETIMPORT                        R25 K4 [tostring]
     9664 CALL                             R25 1 1
     9665 MOVE                             R21 R25
     9666 LOADK                            R22 K63 [3]
     9667 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9669 FASTCALL1                        TOSTRING R26 ; [+2]
     9670 GETIMPORT                        R25 K4 [tostring]
     9672 CALL                             R25 1 1
     9673 MOVE                             R23 R25
     9674 LOADK                            R24 K43 [""]
     9675 CONCAT                           R19 R20 R24
     9676 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9678 RETURN                           R18 1
     9679 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9681 JUMPIFNOTEQKN                    R18 K420 [88] ; [+111]
     9683 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9684 GETTABLEKS                       R19 R2 K19 ["id"]
     9686 SETTABLEKS                       R19 R18 K19 ["id"]
     9688 LOADK                            R19 K165 ["SocialLinksUpdated"]
     9689 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9691 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9692 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9694 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9696 GETIMPORT                        R21 K34 [pcall]
     9698 NEWCLOSURE                       R22 P6
     9699 CAPTURE                          VAL R20
     9700 CAPTURE                          VAL R3
     9701 CALL                             R21 1 2
     9702 JUMPIFNOT                        R21 ; [+2]
     9703 MOVE                             R19 R22
     9704 JUMP                             ; [+2]
     9705 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9706 JUMP                             ; [0]
     9707 SETTABLEKS                       R19 R18 K21 ["date"]
     9709 MOVE                             R19 R12
     9710 LOADK                            R20 K167 [27]
     9711 DUPTABLE                         R21 K425 [{"userName", "role"}]
     9712 MOVE                             R23 R0
     9713 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9715 CALL                             R23 1 1
     9716 LOADK                            R24 K43 [""]
     9717 FASTCALL1                        TOSTRING R23 ; [+3]
     9718 MOVE                             R28 R23
     9719 GETIMPORT                        R27 K4 [tostring]
     9721 CALL                             R27 1 1
     9722 MOVE                             R25 R27
     9723 LOADK                            R26 K43 [""]
     9724 CONCAT                           R22 R24 R26
     9725 SETTABLEKS                       R22 R21 K332 ["userName"]
     9727 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9729 JUMPIFNOT                        R25 ; [+5]
     9730 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9732 GETTABLEKS                       R24 R25 K42 ["Action"]
     9734 JUMPIF                           R24 ; [+1]
     9735 LOADK                            R24 K43 [""]
     9736 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9738 MOVE                             R23 R12
     9739 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9740 CALL                             R23 1 1
     9741 JUMPIF                           R23 ; [+3]
     9742 MOVE                             R23 R12
     9743 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9744 CALL                             R23 1 1
     9745 LOADK                            R24 K43 [""]
     9746 FASTCALL1                        TOSTRING R23 ; [+3]
     9747 MOVE                             R28 R23
     9748 GETIMPORT                        R27 K4 [tostring]
     9750 CALL                             R27 1 1
     9751 MOVE                             R25 R27
     9752 LOADK                            R26 K43 [""]
     9753 CONCAT                           R22 R24 R26
     9754 SETTABLEKS                       R22 R21 K424 ["role"]
     9756 CALL                             R19 2 1
     9757 SETTABLEKS                       R19 R18 K22 ["translation"]
     9759 GETTABLEKS                       R19 R2 K14 ["userId"]
     9761 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9763 MOVE                             R19 R0
     9764 GETTABLEKS                       R20 R2 K14 ["userId"]
     9766 CALL                             R19 1 1
     9767 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9769 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
     9770 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9772 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9774 ORK                              R19 R20 K18 [0]
     9775 JUMP                             ; [0]
     9776 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9778 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9780 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9782 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9784 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9786 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9788 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9790 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
     9792 RETURN                           R18 1
     9793 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9795 JUMPIFNOTEQKN                    R18 K429 [89] ; [+153]
     9797 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9798 GETTABLEKS                       R19 R2 K19 ["id"]
     9800 SETTABLEKS                       R19 R18 K19 ["id"]
     9802 LOADK                            R19 K174 [{"gravity"}]
     9803 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9805 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9806 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9808 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9810 GETIMPORT                        R21 K34 [pcall]
     9812 NEWCLOSURE                       R22 P6
     9813 CAPTURE                          VAL R20
     9814 CAPTURE                          VAL R3
     9815 CALL                             R21 1 2
     9816 JUMPIFNOT                        R21 ; [+2]
     9817 MOVE                             R19 R22
     9818 JUMP                             ; [+2]
     9819 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9820 JUMP                             ; [0]
     9821 SETTABLEKS                       R19 R18 K21 ["date"]
     9823 MOVE                             R19 R12
     9824 LOADK                            R20 K175 ["Gravity"]
     9825 DUPTABLE                         R21 K433 [{"groupRole", "groupName", "role"}]
     9826 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9828 JUMPIFNOT                        R24 ; [+5]
     9829 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9831 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
     9833 JUMPIF                           R23 ; [+1]
     9834 LOADK                            R23 K43 [""]
     9835 LOADK                            R24 K43 [""]
     9836 FASTCALL1                        TOSTRING R23 ; [+3]
     9837 MOVE                             R28 R23
     9838 GETIMPORT                        R27 K4 [tostring]
     9840 CALL                             R27 1 1
     9841 MOVE                             R25 R27
     9842 LOADK                            R26 K43 [""]
     9843 CONCAT                           R22 R24 R26
     9844 SETTABLEKS                       R22 R21 K432 ["groupRole"]
     9846 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9848 JUMPIFNOT                        R24 ; [+5]
     9849 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9851 GETTABLEKS                       R23 R24 K340 ["GroupName"]
     9853 JUMPIF                           R23 ; [+1]
     9854 LOADK                            R23 K43 [""]
     9855 LOADK                            R24 K43 [""]
     9856 FASTCALL1                        TOSTRING R23 ; [+3]
     9857 MOVE                             R28 R23
     9858 GETIMPORT                        R27 K4 [tostring]
     9860 CALL                             R27 1 1
     9861 MOVE                             R25 R27
     9862 LOADK                            R26 K43 [""]
     9863 CONCAT                           R22 R24 R26
     9864 SETTABLEKS                       R22 R21 K338 ["groupName"]
     9866 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9868 JUMPIFNOT                        R25 ; [+5]
     9869 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9871 GETTABLEKS                       R24 R25 K42 ["Action"]
     9873 JUMPIF                           R24 ; [+1]
     9874 LOADK                            R24 K43 [""]
     9875 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9877 MOVE                             R23 R12
     9878 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9879 CALL                             R23 1 1
     9880 JUMPIF                           R23 ; [+3]
     9881 MOVE                             R23 R12
     9882 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9883 CALL                             R23 1 1
     9884 LOADK                            R24 K43 [""]
     9885 FASTCALL1                        TOSTRING R23 ; [+3]
     9886 MOVE                             R28 R23
     9887 GETIMPORT                        R27 K4 [tostring]
     9889 CALL                             R27 1 1
     9890 MOVE                             R25 R27
     9891 LOADK                            R26 K43 [""]
     9892 CONCAT                           R22 R24 R26
     9893 SETTABLEKS                       R22 R21 K424 ["role"]
     9895 CALL                             R19 2 1
     9896 SETTABLEKS                       R19 R18 K22 ["translation"]
     9898 GETTABLEKS                       R19 R2 K14 ["userId"]
     9900 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9902 MOVE                             R19 R0
     9903 GETTABLEKS                       R20 R2 K14 ["userId"]
     9905 CALL                             R19 1 1
     9906 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9908 LOADK                            R19 K85 ["animation"]
     9909 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9911 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9913 ORK                              R19 R20 K18 [0]
     9914 JUMP                             ; [0]
     9915 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9917 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9919 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9921 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9923 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9925 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9927 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9929 LOADK                            R20 K43 [""]
     9930 GETUPVAL                         R26 1
     9931 FASTCALL1                        TOSTRING R26 ; [+2]
     9932 GETIMPORT                        R25 K4 [tostring]
     9934 CALL                             R25 1 1
     9935 MOVE                             R21 R25
     9936 LOADK                            R22 K16 ["groups/"]
     9937 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9939 FASTCALL1                        TOSTRING R26 ; [+2]
     9940 GETIMPORT                        R25 K4 [tostring]
     9942 CALL                             R25 1 1
     9943 MOVE                             R23 R25
     9944 LOADK                            R24 K43 [""]
     9945 CONCAT                           R19 R20 R24
     9946 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9948 RETURN                           R18 1
     9949 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9951 JUMPIFNOTEQKN                    R18 K435 [90] ; [+140]
     9953 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9954 GETTABLEKS                       R19 R2 K19 ["id"]
     9956 SETTABLEKS                       R19 R18 K19 ["id"]
     9958 LOADK                            R19 K180 [{"jumpHeight"}]
     9959 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9961 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9962 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9964 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9966 GETIMPORT                        R21 K34 [pcall]
     9968 NEWCLOSURE                       R22 P6
     9969 CAPTURE                          VAL R20
     9970 CAPTURE                          VAL R3
     9971 CALL                             R21 1 2
     9972 JUMPIFNOT                        R21 ; [+2]
     9973 MOVE                             R19 R22
     9974 JUMP                             ; [+2]
     9975 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9976 JUMP                             ; [0]
     9977 SETTABLEKS                       R19 R18 K21 ["date"]
     9979 MOVE                             R19 R12
     9980 LOADK                            R20 K181 ["JumpHeight"]
     9981 DUPTABLE                         R21 K440 [{"userName", "oldRole", "newRole"}]
     9982 MOVE                             R23 R0
     9983 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9985 CALL                             R23 1 1
     9986 LOADK                            R24 K43 [""]
     9987 FASTCALL1                        TOSTRING R23 ; [+3]
     9988 MOVE                             R28 R23
     9989 GETIMPORT                        R27 K4 [tostring]
     9991 CALL                             R27 1 1
     9992 MOVE                             R25 R27
     9993 LOADK                            R26 K43 [""]
     9994 CONCAT                           R22 R24 R26
     9995 SETTABLEKS                       R22 R21 K332 ["userName"]
     9997 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9999 JUMPIFNOT                        R25 ; [+5]
    10000 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10002 GETTABLEKS                       R24 R25 K42 ["Action"]
    10004 JUMPIF                           R24 ; [+1]
    10005 LOADK                            R24 K43 [""]
    10006 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10008 MOVE                             R23 R12
    10009 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10010 CALL                             R23 1 1
    10011 JUMPIF                           R23 ; [+3]
    10012 MOVE                             R23 R12
    10013 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10014 CALL                             R23 1 1
    10015 LOADK                            R24 K43 [""]
    10016 FASTCALL1                        TOSTRING R23 ; [+3]
    10017 MOVE                             R28 R23
    10018 GETIMPORT                        R27 K4 [tostring]
    10020 CALL                             R27 1 1
    10021 MOVE                             R25 R27
    10022 LOADK                            R26 K43 [""]
    10023 CONCAT                           R22 R24 R26
    10024 SETTABLEKS                       R22 R21 K438 ["oldRole"]
    10026 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10028 JUMPIFNOT                        R25 ; [+5]
    10029 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10031 GETTABLEKS                       R24 R25 K42 ["Action"]
    10033 JUMPIF                           R24 ; [+1]
    10034 LOADK                            R24 K43 [""]
    10035 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10037 MOVE                             R23 R12
    10038 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10039 CALL                             R23 1 1
    10040 JUMPIF                           R23 ; [+3]
    10041 MOVE                             R23 R12
    10042 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10043 CALL                             R23 1 1
    10044 LOADK                            R24 K43 [""]
    10045 FASTCALL1                        TOSTRING R23 ; [+3]
    10046 MOVE                             R28 R23
    10047 GETIMPORT                        R27 K4 [tostring]
    10049 CALL                             R27 1 1
    10050 MOVE                             R25 R27
    10051 LOADK                            R26 K43 [""]
    10052 CONCAT                           R22 R24 R26
    10053 SETTABLEKS                       R22 R21 K439 ["newRole"]
    10055 CALL                             R19 2 1
    10056 SETTABLEKS                       R19 R18 K22 ["translation"]
    10058 GETTABLEKS                       R19 R2 K14 ["userId"]
    10060 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10062 MOVE                             R19 R0
    10063 GETTABLEKS                       R20 R2 K14 ["userId"]
    10065 CALL                             R19 1 1
    10066 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10068 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    10069 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10071 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10073 ORK                              R19 R20 K18 [0]
    10074 JUMP                             ; [0]
    10075 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10077 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10079 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10081 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10083 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10085 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10087 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10089 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
    10091 RETURN                           R18 1
    10092 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10094 JUMPIFNOTEQKN                    R18 K441 [91] ; [+111]
    10096 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10097 GETTABLEKS                       R19 R2 K19 ["id"]
    10099 SETTABLEKS                       R19 R18 K19 ["id"]
    10101 LOADK                            R19 K186 [{"jumpPower"}]
    10102 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10104 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10105 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10107 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10109 GETIMPORT                        R21 K34 [pcall]
    10111 NEWCLOSURE                       R22 P6
    10112 CAPTURE                          VAL R20
    10113 CAPTURE                          VAL R3
    10114 CALL                             R21 1 2
    10115 JUMPIFNOT                        R21 ; [+2]
    10116 MOVE                             R19 R22
    10117 JUMP                             ; [+2]
    10118 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10119 JUMP                             ; [0]
    10120 SETTABLEKS                       R19 R18 K21 ["date"]
    10122 MOVE                             R19 R12
    10123 LOADK                            R20 K187 ["JumpPower"]
    10124 DUPTABLE                         R21 K425 [{"userName", "role"}]
    10125 MOVE                             R23 R0
    10126 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    10128 CALL                             R23 1 1
    10129 LOADK                            R24 K43 [""]
    10130 FASTCALL1                        TOSTRING R23 ; [+3]
    10131 MOVE                             R28 R23
    10132 GETIMPORT                        R27 K4 [tostring]
    10134 CALL                             R27 1 1
    10135 MOVE                             R25 R27
    10136 LOADK                            R26 K43 [""]
    10137 CONCAT                           R22 R24 R26
    10138 SETTABLEKS                       R22 R21 K332 ["userName"]
    10140 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10142 JUMPIFNOT                        R25 ; [+5]
    10143 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10145 GETTABLEKS                       R24 R25 K42 ["Action"]
    10147 JUMPIF                           R24 ; [+1]
    10148 LOADK                            R24 K43 [""]
    10149 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10151 MOVE                             R23 R12
    10152 LOADK                            R24 K188 [31]
    10153 CALL                             R23 1 1
    10154 JUMPIF                           R23 ; [+3]
    10155 MOVE                             R23 R12
    10156 LOADK                            R24 K189 ["WorldSettingsWalkSpeed"]
    10157 CALL                             R23 1 1
    10158 LOADK                            R24 K43 [""]
    10159 FASTCALL1                        TOSTRING R23 ; [+3]
    10160 MOVE                             R28 R23
    10161 GETIMPORT                        R27 K4 [tostring]
    10163 CALL                             R27 1 1
    10164 MOVE                             R25 R27
    10165 LOADK                            R26 K43 [""]
    10166 CONCAT                           R22 R24 R26
    10167 SETTABLEKS                       R22 R21 K424 ["role"]
    10169 CALL                             R19 2 1
    10170 SETTABLEKS                       R19 R18 K22 ["translation"]
    10172 GETTABLEKS                       R19 R2 K14 ["userId"]
    10174 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10176 MOVE                             R19 R0
    10177 GETTABLEKS                       R20 R2 K14 ["userId"]
    10179 CALL                             R19 1 1
    10180 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10182 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    10183 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10185 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10187 ORK                              R19 R20 K18 [0]
    10188 JUMP                             ; [0]
    10189 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10191 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10193 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10195 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10197 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10199 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10201 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10203 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
    10205 RETURN                           R18 1
    10206 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10208 JUMPIFNOTEQKN                    R18 K446 [92] ; [+182]
    10210 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10211 GETTABLEKS                       R19 R2 K19 ["id"]
    10213 SETTABLEKS                       R19 R18 K19 ["id"]
    10215 LOADK                            R19 K191 ["walkSpeed"]
    10216 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10218 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10219 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10221 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10223 GETIMPORT                        R21 K34 [pcall]
    10225 NEWCLOSURE                       R22 P6
    10226 CAPTURE                          VAL R20
    10227 CAPTURE                          VAL R3
    10228 CALL                             R21 1 2
    10229 JUMPIFNOT                        R21 ; [+2]
    10230 MOVE                             R19 R22
    10231 JUMP                             ; [+2]
    10232 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10233 JUMP                             ; [0]
    10234 SETTABLEKS                       R19 R18 K21 ["date"]
    10236 MOVE                             R19 R12
    10237 LOADK                            R20 K192 [{"walkSpeed"}]
    10238 DUPTABLE                         R21 K449 [{"groupRole", "groupName", "oldRole", "newRole"}]
    10239 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10241 JUMPIFNOT                        R24 ; [+5]
    10242 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10244 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
    10246 JUMPIF                           R23 ; [+1]
    10247 LOADK                            R23 K43 [""]
    10248 LOADK                            R24 K43 [""]
    10249 FASTCALL1                        TOSTRING R23 ; [+3]
    10250 MOVE                             R28 R23
    10251 GETIMPORT                        R27 K4 [tostring]
    10253 CALL                             R27 1 1
    10254 MOVE                             R25 R27
    10255 LOADK                            R26 K43 [""]
    10256 CONCAT                           R22 R24 R26
    10257 SETTABLEKS                       R22 R21 K432 ["groupRole"]
    10259 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10261 JUMPIFNOT                        R24 ; [+5]
    10262 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10264 GETTABLEKS                       R23 R24 K340 ["GroupName"]
    10266 JUMPIF                           R23 ; [+1]
    10267 LOADK                            R23 K43 [""]
    10268 LOADK                            R24 K43 [""]
    10269 FASTCALL1                        TOSTRING R23 ; [+3]
    10270 MOVE                             R28 R23
    10271 GETIMPORT                        R27 K4 [tostring]
    10273 CALL                             R27 1 1
    10274 MOVE                             R25 R27
    10275 LOADK                            R26 K43 [""]
    10276 CONCAT                           R22 R24 R26
    10277 SETTABLEKS                       R22 R21 K338 ["groupName"]
    10279 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10281 JUMPIFNOT                        R25 ; [+5]
    10282 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10284 GETTABLEKS                       R24 R25 K42 ["Action"]
    10286 JUMPIF                           R24 ; [+1]
    10287 LOADK                            R24 K43 [""]
    10288 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10290 MOVE                             R23 R12
    10291 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10292 CALL                             R23 1 1
    10293 JUMPIF                           R23 ; [+3]
    10294 MOVE                             R23 R12
    10295 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10296 CALL                             R23 1 1
    10297 LOADK                            R24 K43 [""]
    10298 FASTCALL1                        TOSTRING R23 ; [+3]
    10299 MOVE                             R28 R23
    10300 GETIMPORT                        R27 K4 [tostring]
    10302 CALL                             R27 1 1
    10303 MOVE                             R25 R27
    10304 LOADK                            R26 K43 [""]
    10305 CONCAT                           R22 R24 R26
    10306 SETTABLEKS                       R22 R21 K438 ["oldRole"]
    10308 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10310 JUMPIFNOT                        R25 ; [+5]
    10311 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10313 GETTABLEKS                       R24 R25 K42 ["Action"]
    10315 JUMPIF                           R24 ; [+1]
    10316 LOADK                            R24 K43 [""]
    10317 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10319 MOVE                             R23 R12
    10320 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10321 CALL                             R23 1 1
    10322 JUMPIF                           R23 ; [+3]
    10323 MOVE                             R23 R12
    10324 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10325 CALL                             R23 1 1
    10326 LOADK                            R24 K43 [""]
    10327 FASTCALL1                        TOSTRING R23 ; [+3]
    10328 MOVE                             R28 R23
    10329 GETIMPORT                        R27 K4 [tostring]
    10331 CALL                             R27 1 1
    10332 MOVE                             R25 R27
    10333 LOADK                            R26 K43 [""]
    10334 CONCAT                           R22 R24 R26
    10335 SETTABLEKS                       R22 R21 K439 ["newRole"]
    10337 CALL                             R19 2 1
    10338 SETTABLEKS                       R19 R18 K22 ["translation"]
    10340 GETTABLEKS                       R19 R2 K14 ["userId"]
    10342 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10344 MOVE                             R19 R0
    10345 GETTABLEKS                       R20 R2 K14 ["userId"]
    10347 CALL                             R19 1 1
    10348 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10350 LOADK                            R19 K85 ["animation"]
    10351 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10353 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10355 ORK                              R19 R20 K18 [0]
    10356 JUMP                             ; [0]
    10357 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10359 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10361 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10363 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10365 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10367 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10369 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10371 LOADK                            R20 K43 [""]
    10372 GETUPVAL                         R26 1
    10373 FASTCALL1                        TOSTRING R26 ; [+2]
    10374 GETIMPORT                        R25 K4 [tostring]
    10376 CALL                             R25 1 1
    10377 MOVE                             R21 R25
    10378 LOADK                            R22 K16 ["groups/"]
    10379 GETTABLEKS                       R26 R2 K8 ["resourceId"]
    10381 FASTCALL1                        TOSTRING R26 ; [+2]
    10382 GETIMPORT                        R25 K4 [tostring]
    10384 CALL                             R25 1 1
    10385 MOVE                             R23 R25
    10386 LOADK                            R24 K43 [""]
    10387 CONCAT                           R19 R20 R24
    10388 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10390 RETURN                           R18 1
    10391 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10393 JUMPIFNOTEQKN                    R18 K450 [93] ; [+153]
    10395 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10396 GETTABLEKS                       R19 R2 K19 ["id"]
    10398 SETTABLEKS                       R19 R18 K19 ["id"]
    10400 LOADK                            R19 K195 ["WorldSettingsMaxSlopeAngle"]
    10401 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10403 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10404 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10406 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10408 GETIMPORT                        R21 K34 [pcall]
    10410 NEWCLOSURE                       R22 P6
    10411 CAPTURE                          VAL R20
    10412 CAPTURE                          VAL R3
    10413 CALL                             R21 1 2
    10414 JUMPIFNOT                        R21 ; [+2]
    10415 MOVE                             R19 R22
    10416 JUMP                             ; [+2]
    10417 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10418 JUMP                             ; [0]
    10419 SETTABLEKS                       R19 R18 K21 ["date"]
    10421 MOVE                             R19 R12
    10422 LOADK                            R20 K196 ["Description.WorldSettingsMaxSlopeAngle"]
    10423 DUPTABLE                         R21 K433 [{"groupRole", "groupName", "role"}]
    10424 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10426 JUMPIFNOT                        R24 ; [+5]
    10427 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10429 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
    10431 JUMPIF                           R23 ; [+1]
    10432 LOADK                            R23 K43 [""]
    10433 LOADK                            R24 K43 [""]
    10434 FASTCALL1                        TOSTRING R23 ; [+3]
    10435 MOVE                             R28 R23
    10436 GETIMPORT                        R27 K4 [tostring]
    10438 CALL                             R27 1 1
    10439 MOVE                             R25 R27
    10440 LOADK                            R26 K43 [""]
    10441 CONCAT                           R22 R24 R26
    10442 SETTABLEKS                       R22 R21 K432 ["groupRole"]
    10444 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10446 JUMPIFNOT                        R24 ; [+5]
    10447 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10449 GETTABLEKS                       R23 R24 K340 ["GroupName"]
    10451 JUMPIF                           R23 ; [+1]
    10452 LOADK                            R23 K43 [""]
    10453 LOADK                            R24 K43 [""]
    10454 FASTCALL1                        TOSTRING R23 ; [+3]
    10455 MOVE                             R28 R23
    10456 GETIMPORT                        R27 K4 [tostring]
    10458 CALL                             R27 1 1
    10459 MOVE                             R25 R27
    10460 LOADK                            R26 K43 [""]
    10461 CONCAT                           R22 R24 R26
    10462 SETTABLEKS                       R22 R21 K338 ["groupName"]
    10464 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10466 JUMPIFNOT                        R25 ; [+5]
    10467 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10469 GETTABLEKS                       R24 R25 K42 ["Action"]
    10471 JUMPIF                           R24 ; [+1]
    10472 LOADK                            R24 K43 [""]
    10473 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10475 MOVE                             R23 R12
    10476 LOADK                            R24 K188 [31]
    10477 CALL                             R23 1 1
    10478 JUMPIF                           R23 ; [+3]
    10479 MOVE                             R23 R12
    10480 LOADK                            R24 K189 ["WorldSettingsWalkSpeed"]
    10481 CALL                             R23 1 1
    10482 LOADK                            R24 K43 [""]
    10483 FASTCALL1                        TOSTRING R23 ; [+3]
    10484 MOVE                             R28 R23
    10485 GETIMPORT                        R27 K4 [tostring]
    10487 CALL                             R27 1 1
    10488 MOVE                             R25 R27
    10489 LOADK                            R26 K43 [""]
    10490 CONCAT                           R22 R24 R26
    10491 SETTABLEKS                       R22 R21 K424 ["role"]
    10493 CALL                             R19 2 1
    10494 SETTABLEKS                       R19 R18 K22 ["translation"]
    10496 GETTABLEKS                       R19 R2 K14 ["userId"]
    10498 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10500 MOVE                             R19 R0
    10501 GETTABLEKS                       R20 R2 K14 ["userId"]
    10503 CALL                             R19 1 1
    10504 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10506 LOADK                            R19 K85 ["animation"]
    10507 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10509 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10511 ORK                              R19 R20 K18 [0]
    10512 JUMP                             ; [0]
    10513 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10515 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10517 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10519 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10521 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10523 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10525 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10527 LOADK                            R20 K43 [""]
    10528 GETUPVAL                         R26 1
    10529 FASTCALL1                        TOSTRING R26 ; [+2]
    10530 GETIMPORT                        R25 K4 [tostring]
    10532 CALL                             R25 1 1
    10533 MOVE                             R21 R25
    10534 LOADK                            R22 K16 ["groups/"]
    10535 GETTABLEKS                       R26 R2 K8 ["resourceId"]
    10537 FASTCALL1                        TOSTRING R26 ; [+2]
    10538 GETIMPORT                        R25 K4 [tostring]
    10540 CALL                             R25 1 1
    10541 MOVE                             R23 R25
    10542 LOADK                            R24 K43 [""]
    10543 CONCAT                           R19 R20 R24
    10544 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10546 RETURN                           R18 1
    10547 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10549 JUMPIFNOTEQKN                    R18 K453 [94] ; [+123]
    10551 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10552 GETTABLEKS                       R19 R2 K19 ["id"]
    10554 SETTABLEKS                       R19 R18 K19 ["id"]
    10556 LOADK                            R19 K198 [{"maxSlopeAngle"}]
    10557 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10559 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10560 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10562 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10564 GETIMPORT                        R21 K34 [pcall]
    10566 NEWCLOSURE                       R22 P6
    10567 CAPTURE                          VAL R20
    10568 CAPTURE                          VAL R3
    10569 CALL                             R21 1 2
    10570 JUMPIFNOT                        R21 ; [+2]
    10571 MOVE                             R19 R22
    10572 JUMP                             ; [+2]
    10573 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10574 JUMP                             ; [0]
    10575 SETTABLEKS                       R19 R18 K21 ["date"]
    10577 MOVE                             R19 R12
    10578 LOADK                            R20 K199 ["MaxSlopeAngle"]
    10579 DUPTABLE                         R21 K456 [{"userName", "action"}]
    10580 MOVE                             R23 R0
    10581 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    10583 CALL                             R23 1 1
    10584 LOADK                            R24 K43 [""]
    10585 FASTCALL1                        TOSTRING R23 ; [+3]
    10586 MOVE                             R28 R23
    10587 GETIMPORT                        R27 K4 [tostring]
    10589 CALL                             R27 1 1
    10590 MOVE                             R25 R27
    10591 LOADK                            R26 K43 [""]
    10592 CONCAT                           R22 R24 R26
    10593 SETTABLEKS                       R22 R21 K332 ["userName"]
    10595 GETTABLEKS                       R26 R2 K41 ["metaData"]
    10597 JUMPIFNOT                        R26 ; [+5]
    10598 GETTABLEKS                       R26 R2 K41 ["metaData"]
    10600 GETTABLEKS                       R25 R26 K42 ["Action"]
    10602 JUMPIF                           R25 ; [+1]
    10603 LOADK                            R25 K43 [""]
    10604 GETIMPORT                        R26 K46 [string.lower]
    10606 FASTCALL1                        TOSTRING R25 ; [+3]
    10607 MOVE                             R28 R25
    10608 GETIMPORT                        R27 K4 [tostring]
    10610 CALL                             R27 1 1
    10611 CALL                             R26 1 1
    10612 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    10614 LOADB                            R24 1
    10615 JUMP                             ; [+1]
    10616 LOADB                            R24 0
    10617 JUMPIFNOT                        R24 ; [+4]
    10618 MOVE                             R23 R12
    10619 LOADK                            R24 K201 ["SentUpdate"]
    10620 CALL                             R23 1 1
    10621 JUMPIF                           R23 ; [+3]
    10622 MOVE                             R23 R12
    10623 LOADK                            R24 K202 ["Description.SentUpdate"]
    10624 CALL                             R23 1 1
    10625 LOADK                            R24 K43 [""]
    10626 FASTCALL1                        TOSTRING R23 ; [+3]
    10627 MOVE                             R28 R23
    10628 GETIMPORT                        R27 K4 [tostring]
    10630 CALL                             R27 1 1
    10631 MOVE                             R25 R27
    10632 LOADK                            R26 K43 [""]
    10633 CONCAT                           R22 R24 R26
    10634 SETTABLEKS                       R22 R21 K138 ["action"]
    10636 CALL                             R19 2 1
    10637 SETTABLEKS                       R19 R18 K22 ["translation"]
    10639 GETTABLEKS                       R19 R2 K14 ["userId"]
    10641 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10643 MOVE                             R19 R0
    10644 GETTABLEKS                       R20 R2 K14 ["userId"]
    10646 CALL                             R19 1 1
    10647 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10649 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    10650 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10652 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10654 ORK                              R19 R20 K18 [0]
    10655 JUMP                             ; [0]
    10656 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10658 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10660 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10662 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10664 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10666 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10668 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10670 SETTABLEKS                       R9 R18 K233 ["viewOnRobloxLink"]
    10672 RETURN                           R18 1
    10673 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10675 JUMPIFNOTEQKN                    R18 K459 [95] ; [+102]
    10677 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10678 GETTABLEKS                       R19 R2 K19 ["id"]
    10680 SETTABLEKS                       R19 R18 K19 ["id"]
    10682 LOADK                            R19 K204 [{"update"}]
    10683 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10685 LOADK                            R19 K205 ["Update"]
    10686 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10688 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10690 GETIMPORT                        R21 K34 [pcall]
    10692 NEWCLOSURE                       R22 P6
    10693 CAPTURE                          VAL R20
    10694 CAPTURE                          VAL R3
    10695 CALL                             R21 1 2
    10696 JUMPIFNOT                        R21 ; [+2]
    10697 MOVE                             R19 R22
    10698 JUMP                             ; [+2]
    10699 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10700 JUMP                             ; [0]
    10701 SETTABLEKS                       R19 R18 K21 ["date"]
    10703 MOVE                             R19 R12
    10704 LOADK                            R20 K206 ["/updates"]
    10705 CALL                             R19 1 1
    10706 SETTABLEKS                       R19 R18 K22 ["translation"]
    10708 GETTABLEKS                       R19 R2 K14 ["userId"]
    10710 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10712 MOVE                             R19 R0
    10713 GETTABLEKS                       R20 R2 K14 ["userId"]
    10715 CALL                             R19 1 1
    10716 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10718 LOADK                            R19 K205 ["Update"]
    10719 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10721 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10723 ORK                              R19 R20 K18 [0]
    10724 JUMP                             ; [0]
    10725 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10727 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10729 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10731 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10733 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10735 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10737 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10739 LOADK                            R20 K43 [""]
    10740 FASTCALL1                        TOSTRING R4 ; [+3]
    10741 MOVE                             R26 R4
    10742 GETIMPORT                        R25 K4 [tostring]
    10744 CALL                             R25 1 1
    10745 MOVE                             R21 R25
    10746 LOADK                            R22 K5 ["/places/"]
    10747 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10749 FASTCALL1                        TOSTRING R26 ; [+2]
    10750 GETIMPORT                        R25 K4 [tostring]
    10752 CALL                             R25 1 1
    10753 MOVE                             R23 R25
    10754 LOADK                            R24 K207 [34]
    10755 CONCAT                           R19 R20 R24
    10756 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10758 LOADK                            R20 K43 [""]
    10759 GETUPVAL                         R26 1
    10760 FASTCALL1                        TOSTRING R26 ; [+2]
    10761 GETIMPORT                        R25 K4 [tostring]
    10763 CALL                             R25 1 1
    10764 MOVE                             R21 R25
    10765 LOADK                            R22 K208 ["SupportedLanguages"]
    10766 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10768 FASTCALL1                        TOSTRING R26 ; [+2]
    10769 GETIMPORT                        R25 K4 [tostring]
    10771 CALL                             R25 1 1
    10772 MOVE                             R23 R25
    10773 LOADK                            R24 K43 [""]
    10774 CONCAT                           R19 R20 R24
    10775 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10777 RETURN                           R18 1
    10778 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10780 JUMPIFNOTEQKN                    R18 K465 [96] ; [+102]
    10782 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10783 GETTABLEKS                       R19 R2 K19 ["id"]
    10785 SETTABLEKS                       R19 R18 K19 ["id"]
    10787 LOADK                            R19 K210 ["language"]
    10788 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10790 LOADK                            R19 K205 ["Update"]
    10791 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10793 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10795 GETIMPORT                        R21 K34 [pcall]
    10797 NEWCLOSURE                       R22 P6
    10798 CAPTURE                          VAL R20
    10799 CAPTURE                          VAL R3
    10800 CALL                             R21 1 2
    10801 JUMPIFNOT                        R21 ; [+2]
    10802 MOVE                             R19 R22
    10803 JUMP                             ; [+2]
    10804 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10805 JUMP                             ; [0]
    10806 SETTABLEKS                       R19 R18 K21 ["date"]
    10808 MOVE                             R19 R12
    10809 LOADK                            R20 K211 [{"language", "action"}]
    10810 CALL                             R19 1 1
    10811 SETTABLEKS                       R19 R18 K22 ["translation"]
    10813 GETTABLEKS                       R19 R2 K14 ["userId"]
    10815 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10817 MOVE                             R19 R0
    10818 GETTABLEKS                       R20 R2 K14 ["userId"]
    10820 CALL                             R19 1 1
    10821 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10823 LOADK                            R19 K205 ["Update"]
    10824 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10826 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10828 ORK                              R19 R20 K18 [0]
    10829 JUMP                             ; [0]
    10830 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10832 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10834 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10836 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10838 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10840 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10842 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10844 LOADK                            R20 K43 [""]
    10845 FASTCALL1                        TOSTRING R4 ; [+3]
    10846 MOVE                             R26 R4
    10847 GETIMPORT                        R25 K4 [tostring]
    10849 CALL                             R25 1 1
    10850 MOVE                             R21 R25
    10851 LOADK                            R22 K5 ["/places/"]
    10852 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10854 FASTCALL1                        TOSTRING R26 ; [+2]
    10855 GETIMPORT                        R25 K4 [tostring]
    10857 CALL                             R25 1 1
    10858 MOVE                             R23 R25
    10859 LOADK                            R24 K207 [34]
    10860 CONCAT                           R19 R20 R24
    10861 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10863 LOADK                            R20 K43 [""]
    10864 GETUPVAL                         R26 1
    10865 FASTCALL1                        TOSTRING R26 ; [+2]
    10866 GETIMPORT                        R25 K4 [tostring]
    10868 CALL                             R25 1 1
    10869 MOVE                             R21 R25
    10870 LOADK                            R22 K208 ["SupportedLanguages"]
    10871 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10873 FASTCALL1                        TOSTRING R26 ; [+2]
    10874 GETIMPORT                        R25 K4 [tostring]
    10876 CALL                             R25 1 1
    10877 MOVE                             R23 R25
    10878 LOADK                            R24 K43 [""]
    10879 CONCAT                           R19 R20 R24
    10880 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10882 RETURN                           R18 1
    10883 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10885 JUMPIFNOTEQKN                    R18 K468 [97] ; [+102]
    10887 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10888 GETTABLEKS                       R19 R2 K19 ["id"]
    10890 SETTABLEKS                       R19 R18 K19 ["id"]
    10892 LOADK                            R19 K213 ["Description.ActionAdded"]
    10893 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10895 LOADK                            R19 K205 ["Update"]
    10896 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10898 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10900 GETIMPORT                        R21 K34 [pcall]
    10902 NEWCLOSURE                       R22 P6
    10903 CAPTURE                          VAL R20
    10904 CAPTURE                          VAL R3
    10905 CALL                             R21 1 2
    10906 JUMPIFNOT                        R21 ; [+2]
    10907 MOVE                             R19 R22
    10908 JUMP                             ; [+2]
    10909 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10910 JUMP                             ; [0]
    10911 SETTABLEKS                       R19 R18 K21 ["date"]
    10913 MOVE                             R19 R12
    10914 LOADK                            R20 K214 ["Description.ActionRemoved"]
    10915 CALL                             R19 1 1
    10916 SETTABLEKS                       R19 R18 K22 ["translation"]
    10918 GETTABLEKS                       R19 R2 K14 ["userId"]
    10920 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10922 MOVE                             R19 R0
    10923 GETTABLEKS                       R20 R2 K14 ["userId"]
    10925 CALL                             R19 1 1
    10926 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10928 LOADK                            R19 K205 ["Update"]
    10929 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10931 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10933 ORK                              R19 R20 K18 [0]
    10934 JUMP                             ; [0]
    10935 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10937 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10939 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10941 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10943 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10945 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10947 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10949 LOADK                            R20 K43 [""]
    10950 FASTCALL1                        TOSTRING R4 ; [+3]
    10951 MOVE                             R26 R4
    10952 GETIMPORT                        R25 K4 [tostring]
    10954 CALL                             R25 1 1
    10955 MOVE                             R21 R25
    10956 LOADK                            R22 K5 ["/places/"]
    10957 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10959 FASTCALL1                        TOSTRING R26 ; [+2]
    10960 GETIMPORT                        R25 K4 [tostring]
    10962 CALL                             R25 1 1
    10963 MOVE                             R23 R25
    10964 LOADK                            R24 K207 [34]
    10965 CONCAT                           R19 R20 R24
    10966 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10968 LOADK                            R20 K43 [""]
    10969 GETUPVAL                         R26 1
    10970 FASTCALL1                        TOSTRING R26 ; [+2]
    10971 GETIMPORT                        R25 K4 [tostring]
    10973 CALL                             R25 1 1
    10974 MOVE                             R21 R25
    10975 LOADK                            R22 K208 ["SupportedLanguages"]
    10976 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10978 FASTCALL1                        TOSTRING R26 ; [+2]
    10979 GETIMPORT                        R25 K4 [tostring]
    10981 CALL                             R25 1 1
    10982 MOVE                             R23 R25
    10983 LOADK                            R24 K43 [""]
    10984 CONCAT                           R19 R20 R24
    10985 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10987 RETURN                           R18 1
    10988 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10990 JUMPIFNOTEQKN                    R18 K471 [98] ; [+102]
    10992 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10993 GETTABLEKS                       R19 R2 K19 ["id"]
    10995 SETTABLEKS                       R19 R18 K19 ["id"]
    10997 LOADK                            R19 K216 [35]
    10998 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11000 LOADK                            R19 K205 ["Update"]
    11001 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11003 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11005 GETIMPORT                        R21 K34 [pcall]
    11007 NEWCLOSURE                       R22 P6
    11008 CAPTURE                          VAL R20
    11009 CAPTURE                          VAL R3
    11010 CALL                             R21 1 2
    11011 JUMPIFNOT                        R21 ; [+2]
    11012 MOVE                             R19 R22
    11013 JUMP                             ; [+2]
    11014 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11015 JUMP                             ; [0]
    11016 SETTABLEKS                       R19 R18 K21 ["date"]
    11018 MOVE                             R19 R12
    11019 LOADK                            R20 K217 ["AutoTranslationExperienceInformation"]
    11020 CALL                             R19 1 1
    11021 SETTABLEKS                       R19 R18 K22 ["translation"]
    11023 GETTABLEKS                       R19 R2 K14 ["userId"]
    11025 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11027 MOVE                             R19 R0
    11028 GETTABLEKS                       R20 R2 K14 ["userId"]
    11030 CALL                             R19 1 1
    11031 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11033 LOADK                            R19 K205 ["Update"]
    11034 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11036 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11038 ORK                              R19 R20 K18 [0]
    11039 JUMP                             ; [0]
    11040 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11042 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11044 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11046 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11048 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11050 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11052 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11054 LOADK                            R20 K43 [""]
    11055 FASTCALL1                        TOSTRING R4 ; [+3]
    11056 MOVE                             R26 R4
    11057 GETIMPORT                        R25 K4 [tostring]
    11059 CALL                             R25 1 1
    11060 MOVE                             R21 R25
    11061 LOADK                            R22 K5 ["/places/"]
    11062 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11064 FASTCALL1                        TOSTRING R26 ; [+2]
    11065 GETIMPORT                        R25 K4 [tostring]
    11067 CALL                             R25 1 1
    11068 MOVE                             R23 R25
    11069 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11070 CONCAT                           R19 R20 R24
    11071 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11073 LOADK                            R20 K43 [""]
    11074 GETUPVAL                         R26 1
    11075 FASTCALL1                        TOSTRING R26 ; [+2]
    11076 GETIMPORT                        R25 K4 [tostring]
    11078 CALL                             R25 1 1
    11079 MOVE                             R21 R25
    11080 LOADK                            R22 K208 ["SupportedLanguages"]
    11081 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11083 FASTCALL1                        TOSTRING R26 ; [+2]
    11084 GETIMPORT                        R25 K4 [tostring]
    11086 CALL                             R25 1 1
    11087 MOVE                             R23 R25
    11088 LOADK                            R24 K43 [""]
    11089 CONCAT                           R19 R20 R24
    11090 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11092 RETURN                           R18 1
    11093 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11095 JUMPIFNOTEQKN                    R18 K475 [99] ; [+102]
    11097 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11098 GETTABLEKS                       R19 R2 K19 ["id"]
    11100 SETTABLEKS                       R19 R18 K19 ["id"]
    11102 LOADK                            R19 K220 ["AutoTranslationExperienceStringsAndProducts"]
    11103 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11105 LOADK                            R19 K205 ["Update"]
    11106 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11108 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11110 GETIMPORT                        R21 K34 [pcall]
    11112 NEWCLOSURE                       R22 P6
    11113 CAPTURE                          VAL R20
    11114 CAPTURE                          VAL R3
    11115 CALL                             R21 1 2
    11116 JUMPIFNOT                        R21 ; [+2]
    11117 MOVE                             R19 R22
    11118 JUMP                             ; [+2]
    11119 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11120 JUMP                             ; [0]
    11121 SETTABLEKS                       R19 R18 K21 ["date"]
    11123 MOVE                             R19 R12
    11124 LOADK                            R20 K221 ["Description.AutoTranslationExperienceStringsAndProducts"]
    11125 CALL                             R19 1 1
    11126 SETTABLEKS                       R19 R18 K22 ["translation"]
    11128 GETTABLEKS                       R19 R2 K14 ["userId"]
    11130 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11132 MOVE                             R19 R0
    11133 GETTABLEKS                       R20 R2 K14 ["userId"]
    11135 CALL                             R19 1 1
    11136 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11138 LOADK                            R19 K205 ["Update"]
    11139 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11141 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11143 ORK                              R19 R20 K18 [0]
    11144 JUMP                             ; [0]
    11145 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11147 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11149 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11151 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11153 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11155 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11157 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11159 LOADK                            R20 K43 [""]
    11160 FASTCALL1                        TOSTRING R4 ; [+3]
    11161 MOVE                             R26 R4
    11162 GETIMPORT                        R25 K4 [tostring]
    11164 CALL                             R25 1 1
    11165 MOVE                             R21 R25
    11166 LOADK                            R22 K5 ["/places/"]
    11167 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11169 FASTCALL1                        TOSTRING R26 ; [+2]
    11170 GETIMPORT                        R25 K4 [tostring]
    11172 CALL                             R25 1 1
    11173 MOVE                             R23 R25
    11174 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11175 CONCAT                           R19 R20 R24
    11176 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11178 LOADK                            R20 K43 [""]
    11179 GETUPVAL                         R26 1
    11180 FASTCALL1                        TOSTRING R26 ; [+2]
    11181 GETIMPORT                        R25 K4 [tostring]
    11183 CALL                             R25 1 1
    11184 MOVE                             R21 R25
    11185 LOADK                            R22 K208 ["SupportedLanguages"]
    11186 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11188 FASTCALL1                        TOSTRING R26 ; [+2]
    11189 GETIMPORT                        R25 K4 [tostring]
    11191 CALL                             R25 1 1
    11192 MOVE                             R23 R25
    11193 LOADK                            R24 K43 [""]
    11194 CONCAT                           R19 R20 R24
    11195 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11197 RETURN                           R18 1
    11198 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11200 JUMPIFNOTEQKN                    R18 K478 [100] ; [+126]
    11202 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11203 GETTABLEKS                       R19 R2 K19 ["id"]
    11205 SETTABLEKS                       R19 R18 K19 ["id"]
    11207 LOADK                            R19 K223 ["LocalizationSettingsAutomaticTextCapture"]
    11208 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11210 LOADK                            R19 K205 ["Update"]
    11211 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11213 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11215 GETIMPORT                        R21 K34 [pcall]
    11217 NEWCLOSURE                       R22 P6
    11218 CAPTURE                          VAL R20
    11219 CAPTURE                          VAL R3
    11220 CALL                             R21 1 2
    11221 JUMPIFNOT                        R21 ; [+2]
    11222 MOVE                             R19 R22
    11223 JUMP                             ; [+2]
    11224 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11225 JUMP                             ; [0]
    11226 SETTABLEKS                       R19 R18 K21 ["date"]
    11228 MOVE                             R19 R12
    11229 LOADK                            R20 K224 ["Description.LocalizationSettingsAutomaticTextCapture"]
    11230 DUPTABLE                         R21 K482 [{"gearTypes"}]
    11231 GETGLOBAL                        R23 K483 ["joinStrings"]
    11233 GETTABLEKS                       R25 R2 K41 ["metaData"]
    11235 JUMPIFNOT                        R25 ; [+5]
    11236 GETTABLEKS                       R25 R2 K41 ["metaData"]
    11238 GETTABLEKS                       R24 R25 K484 ["GearTypes"]
    11240 JUMPIF                           R24 ; [+1]
    11241 LOADK                            R24 K43 [""]
    11242 CALL                             R23 1 1
    11243 LOADK                            R24 K43 [""]
    11244 FASTCALL1                        TOSTRING R23 ; [+3]
    11245 MOVE                             R28 R23
    11246 GETIMPORT                        R27 K4 [tostring]
    11248 CALL                             R27 1 1
    11249 MOVE                             R25 R27
    11250 LOADK                            R26 K43 [""]
    11251 CONCAT                           R22 R24 R26
    11252 SETTABLEKS                       R22 R21 K481 ["gearTypes"]
    11254 CALL                             R19 2 1
    11255 SETTABLEKS                       R19 R18 K22 ["translation"]
    11257 GETTABLEKS                       R19 R2 K14 ["userId"]
    11259 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11261 MOVE                             R19 R0
    11262 GETTABLEKS                       R20 R2 K14 ["userId"]
    11264 CALL                             R19 1 1
    11265 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11267 LOADK                            R19 K205 ["Update"]
    11268 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11270 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11272 ORK                              R19 R20 K18 [0]
    11273 JUMP                             ; [0]
    11274 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11276 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11278 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11280 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11282 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11284 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11286 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11288 LOADK                            R20 K43 [""]
    11289 FASTCALL1                        TOSTRING R4 ; [+3]
    11290 MOVE                             R26 R4
    11291 GETIMPORT                        R25 K4 [tostring]
    11293 CALL                             R25 1 1
    11294 MOVE                             R21 R25
    11295 LOADK                            R22 K5 ["/places/"]
    11296 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11298 FASTCALL1                        TOSTRING R26 ; [+2]
    11299 GETIMPORT                        R25 K4 [tostring]
    11301 CALL                             R25 1 1
    11302 MOVE                             R23 R25
    11303 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11304 CONCAT                           R19 R20 R24
    11305 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11307 LOADK                            R20 K43 [""]
    11308 GETUPVAL                         R26 1
    11309 FASTCALL1                        TOSTRING R26 ; [+2]
    11310 GETIMPORT                        R25 K4 [tostring]
    11312 CALL                             R25 1 1
    11313 MOVE                             R21 R25
    11314 LOADK                            R22 K208 ["SupportedLanguages"]
    11315 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11317 FASTCALL1                        TOSTRING R26 ; [+2]
    11318 GETIMPORT                        R25 K4 [tostring]
    11320 CALL                             R25 1 1
    11321 MOVE                             R23 R25
    11322 LOADK                            R24 K43 [""]
    11323 CONCAT                           R19 R20 R24
    11324 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11326 RETURN                           R18 1
    11327 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11329 JUMPIFNOTEQKN                    R18 K485 [101] ; [+164]
    11331 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11332 GETTABLEKS                       R19 R2 K19 ["id"]
    11334 SETTABLEKS                       R19 R18 K19 ["id"]
    11336 LOADK                            R19 K230 [40]
    11337 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11339 LOADK                            R19 K205 ["Update"]
    11340 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11342 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11344 GETIMPORT                        R21 K34 [pcall]
    11346 NEWCLOSURE                       R22 P6
    11347 CAPTURE                          VAL R20
    11348 CAPTURE                          VAL R3
    11349 CALL                             R21 1 2
    11350 JUMPIFNOT                        R21 ; [+2]
    11351 MOVE                             R19 R22
    11352 JUMP                             ; [+2]
    11353 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11354 JUMP                             ; [0]
    11355 SETTABLEKS                       R19 R18 K21 ["date"]
    11357 MOVE                             R19 R12
    11358 LOADK                            R20 K231 ["AnalyticsReport"]
    11359 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    11360 GETTABLEKS                       R26 R2 K41 ["metaData"]
    11362 JUMPIFNOT                        R26 ; [+5]
    11363 GETTABLEKS                       R26 R2 K41 ["metaData"]
    11365 GETTABLEKS                       R25 R26 K42 ["Action"]
    11367 JUMPIF                           R25 ; [+1]
    11368 LOADK                            R25 K43 [""]
    11369 GETIMPORT                        R26 K46 [string.lower]
    11371 FASTCALL1                        TOSTRING R25 ; [+3]
    11372 MOVE                             R28 R25
    11373 GETIMPORT                        R27 K4 [tostring]
    11375 CALL                             R27 1 1
    11376 CALL                             R26 1 1
    11377 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    11379 LOADB                            R24 1
    11380 JUMP                             ; [+1]
    11381 LOADB                            R24 0
    11382 JUMPIFNOT                        R24 ; [+4]
    11383 MOVE                             R23 R12
    11384 LOADK                            R24 K140 ["Description.ActionEnabled"]
    11385 CALL                             R23 1 1
    11386 JUMPIF                           R23 ; [+3]
    11387 MOVE                             R23 R12
    11388 LOADK                            R24 K141 ["Description.ActionDisabled"]
    11389 CALL                             R23 1 1
    11390 LOADK                            R24 K43 [""]
    11391 FASTCALL1                        TOSTRING R23 ; [+3]
    11392 MOVE                             R28 R23
    11393 GETIMPORT                        R27 K4 [tostring]
    11395 CALL                             R27 1 1
    11396 MOVE                             R25 R27
    11397 LOADK                            R26 K43 [""]
    11398 CONCAT                           R22 R24 R26
    11399 SETTABLEKS                       R22 R21 K138 ["action"]
    11401 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11403 JUMPIFNOT                        R24 ; [+5]
    11404 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11406 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    11408 JUMPIF                           R23 ; [+1]
    11409 LOADK                            R23 K43 [""]
    11410 LOADK                            R24 K43 [""]
    11411 FASTCALL1                        TOSTRING R23 ; [+3]
    11412 MOVE                             R28 R23
    11413 GETIMPORT                        R27 K4 [tostring]
    11415 CALL                             R27 1 1
    11416 MOVE                             R25 R27
    11417 LOADK                            R26 K43 [""]
    11418 CONCAT                           R22 R24 R26
    11419 SETTABLEKS                       R22 R21 K488 ["placeName"]
    11421 CALL                             R19 2 1
    11422 SETTABLEKS                       R19 R18 K22 ["translation"]
    11424 GETTABLEKS                       R19 R2 K14 ["userId"]
    11426 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11428 MOVE                             R19 R0
    11429 GETTABLEKS                       R20 R2 K14 ["userId"]
    11431 CALL                             R19 1 1
    11432 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11434 LOADK                            R19 K205 ["Update"]
    11435 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11437 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11439 ORK                              R19 R20 K18 [0]
    11440 JUMP                             ; [0]
    11441 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11443 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11445 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11447 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11449 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11451 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11453 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11455 LOADK                            R20 K43 [""]
    11456 FASTCALL1                        TOSTRING R4 ; [+3]
    11457 MOVE                             R26 R4
    11458 GETIMPORT                        R25 K4 [tostring]
    11460 CALL                             R25 1 1
    11461 MOVE                             R21 R25
    11462 LOADK                            R22 K5 ["/places/"]
    11463 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11465 FASTCALL1                        TOSTRING R26 ; [+2]
    11466 GETIMPORT                        R25 K4 [tostring]
    11468 CALL                             R25 1 1
    11469 MOVE                             R23 R25
    11470 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11471 CONCAT                           R19 R20 R24
    11472 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11474 LOADK                            R20 K43 [""]
    11475 GETUPVAL                         R26 1
    11476 FASTCALL1                        TOSTRING R26 ; [+2]
    11477 GETIMPORT                        R25 K4 [tostring]
    11479 CALL                             R25 1 1
    11480 MOVE                             R21 R25
    11481 LOADK                            R22 K208 ["SupportedLanguages"]
    11482 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11484 FASTCALL1                        TOSTRING R26 ; [+2]
    11485 GETIMPORT                        R25 K4 [tostring]
    11487 CALL                             R25 1 1
    11488 MOVE                             R23 R25
    11489 LOADK                            R24 K43 [""]
    11490 CONCAT                           R19 R20 R24
    11491 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11493 RETURN                           R18 1
    11494 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11496 JUMPIFNOTEQKN                    R18 K491 [102] ; [+123]
    11498 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11499 GETTABLEKS                       R19 R2 K19 ["id"]
    11501 SETTABLEKS                       R19 R18 K19 ["id"]
    11503 LOADK                            R19 K236 ["Description.TranslationIconAdded"]
    11504 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11506 LOADK                            R19 K205 ["Update"]
    11507 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11509 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11511 GETIMPORT                        R21 K34 [pcall]
    11513 NEWCLOSURE                       R22 P6
    11514 CAPTURE                          VAL R20
    11515 CAPTURE                          VAL R3
    11516 CALL                             R21 1 2
    11517 JUMPIFNOT                        R21 ; [+2]
    11518 MOVE                             R19 R22
    11519 JUMP                             ; [+2]
    11520 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11521 JUMP                             ; [0]
    11522 SETTABLEKS                       R19 R18 K21 ["date"]
    11524 MOVE                             R19 R12
    11525 LOADK                            R20 K237 ["iconName"]
    11526 DUPTABLE                         R21 K133 [{"genre"}]
    11527 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11529 JUMPIFNOT                        R24 ; [+5]
    11530 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11532 GETTABLEKS                       R23 R24 K134 ["Genre"]
    11534 JUMPIF                           R23 ; [+1]
    11535 LOADK                            R23 K43 [""]
    11536 LOADK                            R24 K43 [""]
    11537 FASTCALL1                        TOSTRING R23 ; [+3]
    11538 MOVE                             R28 R23
    11539 GETIMPORT                        R27 K4 [tostring]
    11541 CALL                             R27 1 1
    11542 MOVE                             R25 R27
    11543 LOADK                            R26 K43 [""]
    11544 CONCAT                           R22 R24 R26
    11545 SETTABLEKS                       R22 R21 K132 ["genre"]
    11547 CALL                             R19 2 1
    11548 SETTABLEKS                       R19 R18 K22 ["translation"]
    11550 GETTABLEKS                       R19 R2 K14 ["userId"]
    11552 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11554 MOVE                             R19 R0
    11555 GETTABLEKS                       R20 R2 K14 ["userId"]
    11557 CALL                             R19 1 1
    11558 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11560 LOADK                            R19 K205 ["Update"]
    11561 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11563 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11565 ORK                              R19 R20 K18 [0]
    11566 JUMP                             ; [0]
    11567 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11569 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11571 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11573 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11575 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11577 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11579 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11581 LOADK                            R20 K43 [""]
    11582 FASTCALL1                        TOSTRING R4 ; [+3]
    11583 MOVE                             R26 R4
    11584 GETIMPORT                        R25 K4 [tostring]
    11586 CALL                             R25 1 1
    11587 MOVE                             R21 R25
    11588 LOADK                            R22 K5 ["/places/"]
    11589 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11591 FASTCALL1                        TOSTRING R26 ; [+2]
    11592 GETIMPORT                        R25 K4 [tostring]
    11594 CALL                             R25 1 1
    11595 MOVE                             R23 R25
    11596 LOADK                            R24 K11 ["/configure"]
    11597 CONCAT                           R19 R20 R24
    11598 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11600 LOADK                            R20 K43 [""]
    11601 GETUPVAL                         R26 1
    11602 FASTCALL1                        TOSTRING R26 ; [+2]
    11603 GETIMPORT                        R25 K4 [tostring]
    11605 CALL                             R25 1 1
    11606 MOVE                             R21 R25
    11607 LOADK                            R22 K208 ["SupportedLanguages"]
    11608 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11610 FASTCALL1                        TOSTRING R26 ; [+2]
    11611 GETIMPORT                        R25 K4 [tostring]
    11613 CALL                             R25 1 1
    11614 MOVE                             R23 R25
    11615 LOADK                            R24 K43 [""]
    11616 CONCAT                           R19 R20 R24
    11617 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11619 RETURN                           R18 1
    11620 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11622 JUMPIFNOTEQKN                    R18 K494 [103] ; [+143]
    11624 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11625 GETTABLEKS                       R19 R2 K19 ["id"]
    11627 SETTABLEKS                       R19 R18 K19 ["id"]
    11629 LOADK                            R19 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11630 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11632 LOADK                            R19 K205 ["Update"]
    11633 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11635 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11637 GETIMPORT                        R21 K34 [pcall]
    11639 NEWCLOSURE                       R22 P6
    11640 CAPTURE                          VAL R20
    11641 CAPTURE                          VAL R3
    11642 CALL                             R21 1 2
    11643 JUMPIFNOT                        R21 ; [+2]
    11644 MOVE                             R19 R22
    11645 JUMP                             ; [+2]
    11646 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11647 JUMP                             ; [0]
    11648 SETTABLEKS                       R19 R18 K21 ["date"]
    11650 MOVE                             R19 R12
    11651 LOADK                            R20 K239 ["IconName"]
    11652 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
    11653 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11655 JUMPIFNOT                        R24 ; [+5]
    11656 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11658 GETTABLEKS                       R23 R24 K124 ["NewName"]
    11660 JUMPIF                           R23 ; [+1]
    11661 LOADK                            R23 K43 [""]
    11662 LOADK                            R24 K43 [""]
    11663 FASTCALL1                        TOSTRING R23 ; [+3]
    11664 MOVE                             R28 R23
    11665 GETIMPORT                        R27 K4 [tostring]
    11667 CALL                             R27 1 1
    11668 MOVE                             R25 R27
    11669 LOADK                            R26 K43 [""]
    11670 CONCAT                           R22 R24 R26
    11671 SETTABLEKS                       R22 R21 K121 ["newName"]
    11673 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11675 JUMPIFNOT                        R24 ; [+5]
    11676 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11678 GETTABLEKS                       R23 R24 K125 ["OldName"]
    11680 JUMPIF                           R23 ; [+1]
    11681 LOADK                            R23 K43 [""]
    11682 LOADK                            R24 K43 [""]
    11683 FASTCALL1                        TOSTRING R23 ; [+3]
    11684 MOVE                             R28 R23
    11685 GETIMPORT                        R27 K4 [tostring]
    11687 CALL                             R27 1 1
    11688 MOVE                             R25 R27
    11689 LOADK                            R26 K43 [""]
    11690 CONCAT                           R22 R24 R26
    11691 SETTABLEKS                       R22 R21 K122 ["oldName"]
    11693 CALL                             R19 2 1
    11694 SETTABLEKS                       R19 R18 K22 ["translation"]
    11696 GETTABLEKS                       R19 R2 K14 ["userId"]
    11698 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11700 MOVE                             R19 R0
    11701 GETTABLEKS                       R20 R2 K14 ["userId"]
    11703 CALL                             R19 1 1
    11704 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11706 LOADK                            R19 K205 ["Update"]
    11707 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11709 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11711 ORK                              R19 R20 K18 [0]
    11712 JUMP                             ; [0]
    11713 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11715 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11717 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11719 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11721 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11723 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11725 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11727 LOADK                            R20 K43 [""]
    11728 FASTCALL1                        TOSTRING R4 ; [+3]
    11729 MOVE                             R26 R4
    11730 GETIMPORT                        R25 K4 [tostring]
    11732 CALL                             R25 1 1
    11733 MOVE                             R21 R25
    11734 LOADK                            R22 K5 ["/places/"]
    11735 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11737 FASTCALL1                        TOSTRING R26 ; [+2]
    11738 GETIMPORT                        R25 K4 [tostring]
    11740 CALL                             R25 1 1
    11741 MOVE                             R23 R25
    11742 LOADK                            R24 K11 ["/configure"]
    11743 CONCAT                           R19 R20 R24
    11744 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11746 LOADK                            R20 K43 [""]
    11747 GETUPVAL                         R26 1
    11748 FASTCALL1                        TOSTRING R26 ; [+2]
    11749 GETIMPORT                        R25 K4 [tostring]
    11751 CALL                             R25 1 1
    11752 MOVE                             R21 R25
    11753 LOADK                            R22 K208 ["SupportedLanguages"]
    11754 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11756 FASTCALL1                        TOSTRING R26 ; [+2]
    11757 GETIMPORT                        R25 K4 [tostring]
    11759 CALL                             R25 1 1
    11760 MOVE                             R23 R25
    11761 LOADK                            R24 K43 [""]
    11762 CONCAT                           R19 R20 R24
    11763 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11765 RETURN                           R18 1
    11766 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11768 JUMPIFNOTEQKN                    R18 K496 [104] ; [+123]
    11770 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11771 GETTABLEKS                       R19 R2 K19 ["id"]
    11773 SETTABLEKS                       R19 R18 K19 ["id"]
    11775 LOADK                            R19 K241 ["catalog/"]
    11776 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11778 LOADK                            R19 K205 ["Update"]
    11779 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11781 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11783 GETIMPORT                        R21 K34 [pcall]
    11785 NEWCLOSURE                       R22 P6
    11786 CAPTURE                          VAL R20
    11787 CAPTURE                          VAL R3
    11788 CALL                             R21 1 2
    11789 JUMPIFNOT                        R21 ; [+2]
    11790 MOVE                             R19 R22
    11791 JUMP                             ; [+2]
    11792 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11793 JUMP                             ; [0]
    11794 SETTABLEKS                       R19 R18 K21 ["date"]
    11796 MOVE                             R19 R12
    11797 LOADK                            R20 K242 [42]
    11798 DUPTABLE                         R21 K499 [{"placeName"}]
    11799 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11801 JUMPIFNOT                        R24 ; [+5]
    11802 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11804 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    11806 JUMPIF                           R23 ; [+1]
    11807 LOADK                            R23 K43 [""]
    11808 LOADK                            R24 K43 [""]
    11809 FASTCALL1                        TOSTRING R23 ; [+3]
    11810 MOVE                             R28 R23
    11811 GETIMPORT                        R27 K4 [tostring]
    11813 CALL                             R27 1 1
    11814 MOVE                             R25 R27
    11815 LOADK                            R26 K43 [""]
    11816 CONCAT                           R22 R24 R26
    11817 SETTABLEKS                       R22 R21 K488 ["placeName"]
    11819 CALL                             R19 2 1
    11820 SETTABLEKS                       R19 R18 K22 ["translation"]
    11822 GETTABLEKS                       R19 R2 K14 ["userId"]
    11824 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11826 MOVE                             R19 R0
    11827 GETTABLEKS                       R20 R2 K14 ["userId"]
    11829 CALL                             R19 1 1
    11830 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11832 LOADK                            R19 K205 ["Update"]
    11833 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11835 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11837 ORK                              R19 R20 K18 [0]
    11838 JUMP                             ; [0]
    11839 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11841 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11843 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11845 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11847 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11849 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11851 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11853 LOADK                            R20 K43 [""]
    11854 FASTCALL1                        TOSTRING R4 ; [+3]
    11855 MOVE                             R26 R4
    11856 GETIMPORT                        R25 K4 [tostring]
    11858 CALL                             R25 1 1
    11859 MOVE                             R21 R25
    11860 LOADK                            R22 K5 ["/places/"]
    11861 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11863 FASTCALL1                        TOSTRING R26 ; [+2]
    11864 GETIMPORT                        R25 K4 [tostring]
    11866 CALL                             R25 1 1
    11867 MOVE                             R23 R25
    11868 LOADK                            R24 K11 ["/configure"]
    11869 CONCAT                           R19 R20 R24
    11870 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11872 LOADK                            R20 K43 [""]
    11873 GETUPVAL                         R26 1
    11874 FASTCALL1                        TOSTRING R26 ; [+2]
    11875 GETIMPORT                        R25 K4 [tostring]
    11877 CALL                             R25 1 1
    11878 MOVE                             R21 R25
    11879 LOADK                            R22 K208 ["SupportedLanguages"]
    11880 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11882 FASTCALL1                        TOSTRING R26 ; [+2]
    11883 GETIMPORT                        R25 K4 [tostring]
    11885 CALL                             R25 1 1
    11886 MOVE                             R23 R25
    11887 LOADK                            R24 K43 [""]
    11888 CONCAT                           R19 R20 R24
    11889 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11891 RETURN                           R18 1
    11892 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11894 JUMPIFNOTEQKN                    R18 K500 [105] ; [+123]
    11896 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11897 GETTABLEKS                       R19 R2 K19 ["id"]
    11899 SETTABLEKS                       R19 R18 K19 ["id"]
    11901 LOADK                            R19 K245 [43]
    11902 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11904 LOADK                            R19 K205 ["Update"]
    11905 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11907 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11909 GETIMPORT                        R21 K34 [pcall]
    11911 NEWCLOSURE                       R22 P6
    11912 CAPTURE                          VAL R20
    11913 CAPTURE                          VAL R3
    11914 CALL                             R21 1 2
    11915 JUMPIFNOT                        R21 ; [+2]
    11916 MOVE                             R19 R22
    11917 JUMP                             ; [+2]
    11918 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11919 JUMP                             ; [0]
    11920 SETTABLEKS                       R19 R18 K21 ["date"]
    11922 MOVE                             R19 R12
    11923 LOADK                            R20 K246 ["TranslationExperienceName"]
    11924 DUPTABLE                         R21 K504 [{"count"}]
    11925 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11927 JUMPIFNOT                        R24 ; [+5]
    11928 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11930 GETTABLEKS                       R23 R24 K505 ["Count"]
    11932 JUMPIF                           R23 ; [+1]
    11933 LOADK                            R23 K43 [""]
    11934 LOADK                            R24 K43 [""]
    11935 FASTCALL1                        TOSTRING R23 ; [+3]
    11936 MOVE                             R28 R23
    11937 GETIMPORT                        R27 K4 [tostring]
    11939 CALL                             R27 1 1
    11940 MOVE                             R25 R27
    11941 LOADK                            R26 K43 [""]
    11942 CONCAT                           R22 R24 R26
    11943 SETTABLEKS                       R22 R21 K503 ["count"]
    11945 CALL                             R19 2 1
    11946 SETTABLEKS                       R19 R18 K22 ["translation"]
    11948 GETTABLEKS                       R19 R2 K14 ["userId"]
    11950 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11952 MOVE                             R19 R0
    11953 GETTABLEKS                       R20 R2 K14 ["userId"]
    11955 CALL                             R19 1 1
    11956 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11958 LOADK                            R19 K205 ["Update"]
    11959 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11961 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11963 ORK                              R19 R20 K18 [0]
    11964 JUMP                             ; [0]
    11965 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11967 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11969 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11971 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11973 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11975 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11977 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11979 LOADK                            R20 K43 [""]
    11980 FASTCALL1                        TOSTRING R4 ; [+3]
    11981 MOVE                             R26 R4
    11982 GETIMPORT                        R25 K4 [tostring]
    11984 CALL                             R25 1 1
    11985 MOVE                             R21 R25
    11986 LOADK                            R22 K5 ["/places/"]
    11987 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11989 FASTCALL1                        TOSTRING R26 ; [+2]
    11990 GETIMPORT                        R25 K4 [tostring]
    11992 CALL                             R25 1 1
    11993 MOVE                             R23 R25
    11994 LOADK                            R24 K94 [9]
    11995 CONCAT                           R19 R20 R24
    11996 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11998 LOADK                            R20 K43 [""]
    11999 GETUPVAL                         R26 1
    12000 FASTCALL1                        TOSTRING R26 ; [+2]
    12001 GETIMPORT                        R25 K4 [tostring]
    12003 CALL                             R25 1 1
    12004 MOVE                             R21 R25
    12005 LOADK                            R22 K208 ["SupportedLanguages"]
    12006 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12008 FASTCALL1                        TOSTRING R26 ; [+2]
    12009 GETIMPORT                        R25 K4 [tostring]
    12011 CALL                             R25 1 1
    12012 MOVE                             R23 R25
    12013 LOADK                            R24 K43 [""]
    12014 CONCAT                           R19 R20 R24
    12015 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12017 RETURN                           R18 1
    12018 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12020 JUMPIFNOTEQKN                    R18 K506 [106] ; [+102]
    12022 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12023 GETTABLEKS                       R19 R2 K19 ["id"]
    12025 SETTABLEKS                       R19 R18 K19 ["id"]
    12027 LOADK                            R19 K251 ["Description.TranslationExperienceDescription"]
    12028 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12030 LOADK                            R19 K205 ["Update"]
    12031 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12033 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12035 GETIMPORT                        R21 K34 [pcall]
    12037 NEWCLOSURE                       R22 P6
    12038 CAPTURE                          VAL R20
    12039 CAPTURE                          VAL R3
    12040 CALL                             R21 1 2
    12041 JUMPIFNOT                        R21 ; [+2]
    12042 MOVE                             R19 R22
    12043 JUMP                             ; [+2]
    12044 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12045 JUMP                             ; [0]
    12046 SETTABLEKS                       R19 R18 K21 ["date"]
    12048 MOVE                             R19 R12
    12049 LOADK                            R20 K252 [45]
    12050 CALL                             R19 1 1
    12051 SETTABLEKS                       R19 R18 K22 ["translation"]
    12053 GETTABLEKS                       R19 R2 K14 ["userId"]
    12055 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12057 MOVE                             R19 R0
    12058 GETTABLEKS                       R20 R2 K14 ["userId"]
    12060 CALL                             R19 1 1
    12061 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12063 LOADK                            R19 K205 ["Update"]
    12064 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12066 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12068 ORK                              R19 R20 K18 [0]
    12069 JUMP                             ; [0]
    12070 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12072 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12074 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12076 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12078 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12080 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12082 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12084 LOADK                            R20 K43 [""]
    12085 FASTCALL1                        TOSTRING R4 ; [+3]
    12086 MOVE                             R26 R4
    12087 GETIMPORT                        R25 K4 [tostring]
    12089 CALL                             R25 1 1
    12090 MOVE                             R21 R25
    12091 LOADK                            R22 K5 ["/places/"]
    12092 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12094 FASTCALL1                        TOSTRING R26 ; [+2]
    12095 GETIMPORT                        R25 K4 [tostring]
    12097 CALL                             R25 1 1
    12098 MOVE                             R23 R25
    12099 LOADK                            R24 K94 [9]
    12100 CONCAT                           R19 R20 R24
    12101 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12103 LOADK                            R20 K43 [""]
    12104 GETUPVAL                         R26 1
    12105 FASTCALL1                        TOSTRING R26 ; [+2]
    12106 GETIMPORT                        R25 K4 [tostring]
    12108 CALL                             R25 1 1
    12109 MOVE                             R21 R25
    12110 LOADK                            R22 K208 ["SupportedLanguages"]
    12111 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12113 FASTCALL1                        TOSTRING R26 ; [+2]
    12114 GETIMPORT                        R25 K4 [tostring]
    12116 CALL                             R25 1 1
    12117 MOVE                             R23 R25
    12118 LOADK                            R24 K43 [""]
    12119 CONCAT                           R19 R20 R24
    12120 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12122 RETURN                           R18 1
    12123 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12125 JUMPIFNOTEQKN                    R18 K509 [107] ; [+102]
    12127 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12128 GETTABLEKS                       R19 R2 K19 ["id"]
    12130 SETTABLEKS                       R19 R18 K19 ["id"]
    12132 LOADK                            R19 K254 ["Description.TranslationThumbnailAltText"]
    12133 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12135 LOADK                            R19 K205 ["Update"]
    12136 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12138 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12140 GETIMPORT                        R21 K34 [pcall]
    12142 NEWCLOSURE                       R22 P6
    12143 CAPTURE                          VAL R20
    12144 CAPTURE                          VAL R3
    12145 CALL                             R21 1 2
    12146 JUMPIFNOT                        R21 ; [+2]
    12147 MOVE                             R19 R22
    12148 JUMP                             ; [+2]
    12149 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12150 JUMP                             ; [0]
    12151 SETTABLEKS                       R19 R18 K21 ["date"]
    12153 MOVE                             R19 R12
    12154 LOADK                            R20 K255 ["thumbnailName"]
    12155 CALL                             R19 1 1
    12156 SETTABLEKS                       R19 R18 K22 ["translation"]
    12158 GETTABLEKS                       R19 R2 K14 ["userId"]
    12160 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12162 MOVE                             R19 R0
    12163 GETTABLEKS                       R20 R2 K14 ["userId"]
    12165 CALL                             R19 1 1
    12166 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12168 LOADK                            R19 K205 ["Update"]
    12169 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12171 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12173 ORK                              R19 R20 K18 [0]
    12174 JUMP                             ; [0]
    12175 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12177 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12179 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12181 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12183 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12185 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12187 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12189 LOADK                            R20 K43 [""]
    12190 FASTCALL1                        TOSTRING R4 ; [+3]
    12191 MOVE                             R26 R4
    12192 GETIMPORT                        R25 K4 [tostring]
    12194 CALL                             R25 1 1
    12195 MOVE                             R21 R25
    12196 LOADK                            R22 K5 ["/places/"]
    12197 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12199 FASTCALL1                        TOSTRING R26 ; [+2]
    12200 GETIMPORT                        R25 K4 [tostring]
    12202 CALL                             R25 1 1
    12203 MOVE                             R23 R25
    12204 LOADK                            R24 K94 [9]
    12205 CONCAT                           R19 R20 R24
    12206 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12208 LOADK                            R20 K43 [""]
    12209 GETUPVAL                         R26 1
    12210 FASTCALL1                        TOSTRING R26 ; [+2]
    12211 GETIMPORT                        R25 K4 [tostring]
    12213 CALL                             R25 1 1
    12214 MOVE                             R21 R25
    12215 LOADK                            R22 K208 ["SupportedLanguages"]
    12216 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12218 FASTCALL1                        TOSTRING R26 ; [+2]
    12219 GETIMPORT                        R25 K4 [tostring]
    12221 CALL                             R25 1 1
    12222 MOVE                             R23 R25
    12223 LOADK                            R24 K43 [""]
    12224 CONCAT                           R19 R20 R24
    12225 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12227 RETURN                           R18 1
    12228 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12230 JUMPIFNOTEQKN                    R18 K512 [108] ; [+123]
    12232 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12233 GETTABLEKS                       R19 R2 K19 ["id"]
    12235 SETTABLEKS                       R19 R18 K19 ["id"]
    12237 LOADK                            R19 K1 ["dashboard/creations/experiences/"]
    12238 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12240 LOADK                            R19 K205 ["Update"]
    12241 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12243 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12245 GETIMPORT                        R21 K34 [pcall]
    12247 NEWCLOSURE                       R22 P6
    12248 CAPTURE                          VAL R20
    12249 CAPTURE                          VAL R3
    12250 CALL                             R21 1 2
    12251 JUMPIFNOT                        R21 ; [+2]
    12252 MOVE                             R19 R22
    12253 JUMP                             ; [+2]
    12254 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12255 JUMP                             ; [0]
    12256 SETTABLEKS                       R19 R18 K21 ["date"]
    12258 MOVE                             R19 R12
    12259 LOADK                            R20 K2 ["universeId"]
    12260 DUPTABLE                         R21 K504 [{"count"}]
    12261 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12263 JUMPIFNOT                        R24 ; [+5]
    12264 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12266 GETTABLEKS                       R23 R24 K505 ["Count"]
    12268 JUMPIF                           R23 ; [+1]
    12269 LOADK                            R23 K43 [""]
    12270 LOADK                            R24 K43 [""]
    12271 FASTCALL1                        TOSTRING R23 ; [+3]
    12272 MOVE                             R28 R23
    12273 GETIMPORT                        R27 K4 [tostring]
    12275 CALL                             R27 1 1
    12276 MOVE                             R25 R27
    12277 LOADK                            R26 K43 [""]
    12278 CONCAT                           R22 R24 R26
    12279 SETTABLEKS                       R22 R21 K503 ["count"]
    12281 CALL                             R19 2 1
    12282 SETTABLEKS                       R19 R18 K22 ["translation"]
    12284 GETTABLEKS                       R19 R2 K14 ["userId"]
    12286 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12288 MOVE                             R19 R0
    12289 GETTABLEKS                       R20 R2 K14 ["userId"]
    12291 CALL                             R19 1 1
    12292 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12294 LOADK                            R19 K205 ["Update"]
    12295 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12297 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12299 ORK                              R19 R20 K18 [0]
    12300 JUMP                             ; [0]
    12301 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12303 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12305 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12307 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12309 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12311 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12313 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12315 LOADK                            R20 K43 [""]
    12316 FASTCALL1                        TOSTRING R4 ; [+3]
    12317 MOVE                             R26 R4
    12318 GETIMPORT                        R25 K4 [tostring]
    12320 CALL                             R25 1 1
    12321 MOVE                             R21 R25
    12322 LOADK                            R22 K5 ["/places/"]
    12323 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12325 FASTCALL1                        TOSTRING R26 ; [+2]
    12326 GETIMPORT                        R25 K4 [tostring]
    12328 CALL                             R25 1 1
    12329 MOVE                             R23 R25
    12330 LOADK                            R24 K94 [9]
    12331 CONCAT                           R19 R20 R24
    12332 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12334 LOADK                            R20 K43 [""]
    12335 GETUPVAL                         R26 1
    12336 FASTCALL1                        TOSTRING R26 ; [+2]
    12337 GETIMPORT                        R25 K4 [tostring]
    12339 CALL                             R25 1 1
    12340 MOVE                             R21 R25
    12341 LOADK                            R22 K208 ["SupportedLanguages"]
    12342 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12344 FASTCALL1                        TOSTRING R26 ; [+2]
    12345 GETIMPORT                        R25 K4 [tostring]
    12347 CALL                             R25 1 1
    12348 MOVE                             R23 R25
    12349 LOADK                            R24 K43 [""]
    12350 CONCAT                           R19 R20 R24
    12351 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12353 RETURN                           R18 1
    12354 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12356 JUMPIFNOTEQKN                    R18 K515 [109] ; [+164]
    12358 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12359 GETTABLEKS                       R19 R2 K19 ["id"]
    12361 SETTABLEKS                       R19 R18 K19 ["id"]
    12363 LOADK                            R19 K4 [tostring]
    12364 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12366 LOADK                            R19 K205 ["Update"]
    12367 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12369 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12371 GETIMPORT                        R21 K34 [pcall]
    12373 NEWCLOSURE                       R22 P6
    12374 CAPTURE                          VAL R20
    12375 CAPTURE                          VAL R3
    12376 CALL                             R21 1 2
    12377 JUMPIFNOT                        R21 ; [+2]
    12378 MOVE                             R19 R22
    12379 JUMP                             ; [+2]
    12380 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12381 JUMP                             ; [0]
    12382 SETTABLEKS                       R19 R18 K21 ["date"]
    12384 MOVE                             R19 R12
    12385 LOADK                            R20 K5 ["/places/"]
    12386 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    12387 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12389 JUMPIFNOT                        R26 ; [+5]
    12390 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12392 GETTABLEKS                       R25 R26 K42 ["Action"]
    12394 JUMPIF                           R25 ; [+1]
    12395 LOADK                            R25 K43 [""]
    12396 GETIMPORT                        R26 K46 [string.lower]
    12398 FASTCALL1                        TOSTRING R25 ; [+3]
    12399 MOVE                             R28 R25
    12400 GETIMPORT                        R27 K4 [tostring]
    12402 CALL                             R27 1 1
    12403 CALL                             R26 1 1
    12404 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    12406 LOADB                            R24 1
    12407 JUMP                             ; [+1]
    12408 LOADB                            R24 0
    12409 JUMPIFNOT                        R24 ; [+4]
    12410 MOVE                             R23 R12
    12411 LOADK                            R24 K140 ["Description.ActionEnabled"]
    12412 CALL                             R23 1 1
    12413 JUMPIF                           R23 ; [+3]
    12414 MOVE                             R23 R12
    12415 LOADK                            R24 K141 ["Description.ActionDisabled"]
    12416 CALL                             R23 1 1
    12417 LOADK                            R24 K43 [""]
    12418 FASTCALL1                        TOSTRING R23 ; [+3]
    12419 MOVE                             R28 R23
    12420 GETIMPORT                        R27 K4 [tostring]
    12422 CALL                             R27 1 1
    12423 MOVE                             R25 R27
    12424 LOADK                            R26 K43 [""]
    12425 CONCAT                           R22 R24 R26
    12426 SETTABLEKS                       R22 R21 K138 ["action"]
    12428 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12430 JUMPIFNOT                        R24 ; [+5]
    12431 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12433 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12435 JUMPIF                           R23 ; [+1]
    12436 LOADK                            R23 K43 [""]
    12437 LOADK                            R24 K43 [""]
    12438 FASTCALL1                        TOSTRING R23 ; [+3]
    12439 MOVE                             R28 R23
    12440 GETIMPORT                        R27 K4 [tostring]
    12442 CALL                             R27 1 1
    12443 MOVE                             R25 R27
    12444 LOADK                            R26 K43 [""]
    12445 CONCAT                           R22 R24 R26
    12446 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12448 CALL                             R19 2 1
    12449 SETTABLEKS                       R19 R18 K22 ["translation"]
    12451 GETTABLEKS                       R19 R2 K14 ["userId"]
    12453 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12455 MOVE                             R19 R0
    12456 GETTABLEKS                       R20 R2 K14 ["userId"]
    12458 CALL                             R19 1 1
    12459 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12461 LOADK                            R19 K205 ["Update"]
    12462 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12464 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12466 ORK                              R19 R20 K18 [0]
    12467 JUMP                             ; [0]
    12468 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12470 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12472 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12474 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12476 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12478 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12480 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12482 LOADK                            R20 K43 [""]
    12483 FASTCALL1                        TOSTRING R4 ; [+3]
    12484 MOVE                             R26 R4
    12485 GETIMPORT                        R25 K4 [tostring]
    12487 CALL                             R25 1 1
    12488 MOVE                             R21 R25
    12489 LOADK                            R22 K5 ["/places/"]
    12490 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12492 FASTCALL1                        TOSTRING R26 ; [+2]
    12493 GETIMPORT                        R25 K4 [tostring]
    12495 CALL                             R25 1 1
    12496 MOVE                             R23 R25
    12497 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    12498 CONCAT                           R19 R20 R24
    12499 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12501 LOADK                            R20 K43 [""]
    12502 GETUPVAL                         R26 1
    12503 FASTCALL1                        TOSTRING R26 ; [+2]
    12504 GETIMPORT                        R25 K4 [tostring]
    12506 CALL                             R25 1 1
    12507 MOVE                             R21 R25
    12508 LOADK                            R22 K208 ["SupportedLanguages"]
    12509 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12511 FASTCALL1                        TOSTRING R26 ; [+2]
    12512 GETIMPORT                        R25 K4 [tostring]
    12514 CALL                             R25 1 1
    12515 MOVE                             R23 R25
    12516 LOADK                            R24 K43 [""]
    12517 CONCAT                           R19 R20 R24
    12518 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12520 RETURN                           R18 1
    12521 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12523 JUMPIFNOTEQKN                    R18 K518 [110] ; [+164]
    12525 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12526 GETTABLEKS                       R19 R2 K19 ["id"]
    12528 SETTABLEKS                       R19 R18 K19 ["id"]
    12530 LOADK                            R19 K7 ["/badges/"]
    12531 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12533 LOADK                            R19 K205 ["Update"]
    12534 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12536 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12538 GETIMPORT                        R21 K34 [pcall]
    12540 NEWCLOSURE                       R22 P6
    12541 CAPTURE                          VAL R20
    12542 CAPTURE                          VAL R3
    12543 CALL                             R21 1 2
    12544 JUMPIFNOT                        R21 ; [+2]
    12545 MOVE                             R19 R22
    12546 JUMP                             ; [+2]
    12547 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12548 JUMP                             ; [0]
    12549 SETTABLEKS                       R19 R18 K21 ["date"]
    12551 MOVE                             R19 R12
    12552 LOADK                            R20 K8 ["resourceId"]
    12553 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    12554 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12556 JUMPIFNOT                        R26 ; [+5]
    12557 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12559 GETTABLEKS                       R25 R26 K42 ["Action"]
    12561 JUMPIF                           R25 ; [+1]
    12562 LOADK                            R25 K43 [""]
    12563 GETIMPORT                        R26 K46 [string.lower]
    12565 FASTCALL1                        TOSTRING R25 ; [+3]
    12566 MOVE                             R28 R25
    12567 GETIMPORT                        R27 K4 [tostring]
    12569 CALL                             R27 1 1
    12570 CALL                             R26 1 1
    12571 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    12573 LOADB                            R24 1
    12574 JUMP                             ; [+1]
    12575 LOADB                            R24 0
    12576 JUMPIFNOT                        R24 ; [+4]
    12577 MOVE                             R23 R12
    12578 LOADK                            R24 K140 ["Description.ActionEnabled"]
    12579 CALL                             R23 1 1
    12580 JUMPIF                           R23 ; [+3]
    12581 MOVE                             R23 R12
    12582 LOADK                            R24 K141 ["Description.ActionDisabled"]
    12583 CALL                             R23 1 1
    12584 LOADK                            R24 K43 [""]
    12585 FASTCALL1                        TOSTRING R23 ; [+3]
    12586 MOVE                             R28 R23
    12587 GETIMPORT                        R27 K4 [tostring]
    12589 CALL                             R27 1 1
    12590 MOVE                             R25 R27
    12591 LOADK                            R26 K43 [""]
    12592 CONCAT                           R22 R24 R26
    12593 SETTABLEKS                       R22 R21 K138 ["action"]
    12595 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12597 JUMPIFNOT                        R24 ; [+5]
    12598 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12600 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12602 JUMPIF                           R23 ; [+1]
    12603 LOADK                            R23 K43 [""]
    12604 LOADK                            R24 K43 [""]
    12605 FASTCALL1                        TOSTRING R23 ; [+3]
    12606 MOVE                             R28 R23
    12607 GETIMPORT                        R27 K4 [tostring]
    12609 CALL                             R27 1 1
    12610 MOVE                             R25 R27
    12611 LOADK                            R26 K43 [""]
    12612 CONCAT                           R22 R24 R26
    12613 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12615 CALL                             R19 2 1
    12616 SETTABLEKS                       R19 R18 K22 ["translation"]
    12618 GETTABLEKS                       R19 R2 K14 ["userId"]
    12620 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12622 MOVE                             R19 R0
    12623 GETTABLEKS                       R20 R2 K14 ["userId"]
    12625 CALL                             R19 1 1
    12626 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12628 LOADK                            R19 K205 ["Update"]
    12629 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12631 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12633 ORK                              R19 R20 K18 [0]
    12634 JUMP                             ; [0]
    12635 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12637 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12639 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12641 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12643 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12645 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12647 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12649 LOADK                            R20 K43 [""]
    12650 FASTCALL1                        TOSTRING R4 ; [+3]
    12651 MOVE                             R26 R4
    12652 GETIMPORT                        R25 K4 [tostring]
    12654 CALL                             R25 1 1
    12655 MOVE                             R21 R25
    12656 LOADK                            R22 K5 ["/places/"]
    12657 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12659 FASTCALL1                        TOSTRING R26 ; [+2]
    12660 GETIMPORT                        R25 K4 [tostring]
    12662 CALL                             R25 1 1
    12663 MOVE                             R23 R25
    12664 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    12665 CONCAT                           R19 R20 R24
    12666 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12668 LOADK                            R20 K43 [""]
    12669 GETUPVAL                         R26 1
    12670 FASTCALL1                        TOSTRING R26 ; [+2]
    12671 GETIMPORT                        R25 K4 [tostring]
    12673 CALL                             R25 1 1
    12674 MOVE                             R21 R25
    12675 LOADK                            R22 K208 ["SupportedLanguages"]
    12676 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12678 FASTCALL1                        TOSTRING R26 ; [+2]
    12679 GETIMPORT                        R25 K4 [tostring]
    12681 CALL                             R25 1 1
    12682 MOVE                             R23 R25
    12683 LOADK                            R24 K43 [""]
    12684 CONCAT                           R19 R20 R24
    12685 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12687 RETURN                           R18 1
    12688 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12690 JUMPIFNOTEQKN                    R18 K521 [111] ; [+163]
    12692 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12693 GETTABLEKS                       R19 R2 K19 ["id"]
    12695 SETTABLEKS                       R19 R18 K19 ["id"]
    12697 LOADK                            R19 K10 ["/developer-products/"]
    12698 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12700 LOADK                            R19 K205 ["Update"]
    12701 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12703 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12705 GETIMPORT                        R21 K34 [pcall]
    12707 NEWCLOSURE                       R22 P6
    12708 CAPTURE                          VAL R20
    12709 CAPTURE                          VAL R3
    12710 CALL                             R21 1 2
    12711 JUMPIFNOT                        R21 ; [+2]
    12712 MOVE                             R19 R22
    12713 JUMP                             ; [+2]
    12714 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12715 JUMP                             ; [0]
    12716 SETTABLEKS                       R19 R18 K21 ["date"]
    12718 MOVE                             R19 R12
    12719 LOADK                            R20 K11 ["/configure"]
    12720 DUPTABLE                         R21 K526 [{"placeName", "oldVersion", "newVersion"}]
    12721 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12723 JUMPIFNOT                        R24 ; [+5]
    12724 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12726 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12728 JUMPIF                           R23 ; [+1]
    12729 LOADK                            R23 K43 [""]
    12730 LOADK                            R24 K43 [""]
    12731 FASTCALL1                        TOSTRING R23 ; [+3]
    12732 MOVE                             R28 R23
    12733 GETIMPORT                        R27 K4 [tostring]
    12735 CALL                             R27 1 1
    12736 MOVE                             R25 R27
    12737 LOADK                            R26 K43 [""]
    12738 CONCAT                           R22 R24 R26
    12739 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12741 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12743 JUMPIFNOT                        R24 ; [+5]
    12744 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12746 GETTABLEKS                       R23 R24 K527 ["OldVersion"]
    12748 JUMPIF                           R23 ; [+1]
    12749 LOADK                            R23 K43 [""]
    12750 LOADK                            R24 K43 [""]
    12751 FASTCALL1                        TOSTRING R23 ; [+3]
    12752 MOVE                             R28 R23
    12753 GETIMPORT                        R27 K4 [tostring]
    12755 CALL                             R27 1 1
    12756 MOVE                             R25 R27
    12757 LOADK                            R26 K43 [""]
    12758 CONCAT                           R22 R24 R26
    12759 SETTABLEKS                       R22 R21 K524 ["oldVersion"]
    12761 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12763 JUMPIFNOT                        R24 ; [+5]
    12764 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12766 GETTABLEKS                       R23 R24 K528 ["NewVersion"]
    12768 JUMPIF                           R23 ; [+1]
    12769 LOADK                            R23 K43 [""]
    12770 LOADK                            R24 K43 [""]
    12771 FASTCALL1                        TOSTRING R23 ; [+3]
    12772 MOVE                             R28 R23
    12773 GETIMPORT                        R27 K4 [tostring]
    12775 CALL                             R27 1 1
    12776 MOVE                             R25 R27
    12777 LOADK                            R26 K43 [""]
    12778 CONCAT                           R22 R24 R26
    12779 SETTABLEKS                       R22 R21 K525 ["newVersion"]
    12781 CALL                             R19 2 1
    12782 SETTABLEKS                       R19 R18 K22 ["translation"]
    12784 GETTABLEKS                       R19 R2 K14 ["userId"]
    12786 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12788 MOVE                             R19 R0
    12789 GETTABLEKS                       R20 R2 K14 ["userId"]
    12791 CALL                             R19 1 1
    12792 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12794 LOADK                            R19 K205 ["Update"]
    12795 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12797 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12799 ORK                              R19 R20 K18 [0]
    12800 JUMP                             ; [0]
    12801 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12803 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12805 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12807 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12809 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12811 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12813 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12815 LOADK                            R20 K43 [""]
    12816 FASTCALL1                        TOSTRING R4 ; [+3]
    12817 MOVE                             R26 R4
    12818 GETIMPORT                        R25 K4 [tostring]
    12820 CALL                             R25 1 1
    12821 MOVE                             R21 R25
    12822 LOADK                            R22 K5 ["/places/"]
    12823 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12825 FASTCALL1                        TOSTRING R26 ; [+2]
    12826 GETIMPORT                        R25 K4 [tostring]
    12828 CALL                             R25 1 1
    12829 MOVE                             R23 R25
    12830 LOADK                            R24 K17 ["eventType"]
    12831 CONCAT                           R19 R20 R24
    12832 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12834 LOADK                            R20 K43 [""]
    12835 GETUPVAL                         R26 1
    12836 FASTCALL1                        TOSTRING R26 ; [+2]
    12837 GETIMPORT                        R25 K4 [tostring]
    12839 CALL                             R25 1 1
    12840 MOVE                             R21 R25
    12841 LOADK                            R22 K208 ["SupportedLanguages"]
    12842 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12844 FASTCALL1                        TOSTRING R26 ; [+2]
    12845 GETIMPORT                        R25 K4 [tostring]
    12847 CALL                             R25 1 1
    12848 MOVE                             R23 R25
    12849 LOADK                            R24 K43 [""]
    12850 CONCAT                           R19 R20 R24
    12851 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12853 RETURN                           R18 1
    12854 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12856 JUMPIFNOTEQKN                    R18 K530 [112] ; [+83]
    12858 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    12859 GETTABLEKS                       R19 R2 K19 ["id"]
    12861 SETTABLEKS                       R19 R18 K19 ["id"]
    12863 LOADK                            R19 K19 ["id"]
    12864 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12866 LOADK                            R19 K205 ["Update"]
    12867 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12869 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12871 GETIMPORT                        R21 K34 [pcall]
    12873 NEWCLOSURE                       R22 P6
    12874 CAPTURE                          VAL R20
    12875 CAPTURE                          VAL R3
    12876 CALL                             R21 1 2
    12877 JUMPIFNOT                        R21 ; [+2]
    12878 MOVE                             R19 R22
    12879 JUMP                             ; [+2]
    12880 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12881 JUMP                             ; [0]
    12882 SETTABLEKS                       R19 R18 K21 ["date"]
    12884 MOVE                             R19 R12
    12885 LOADK                            R20 K20 ["eventCategory"]
    12886 CALL                             R19 1 1
    12887 SETTABLEKS                       R19 R18 K22 ["translation"]
    12889 GETTABLEKS                       R19 R2 K14 ["userId"]
    12891 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12893 MOVE                             R19 R0
    12894 GETTABLEKS                       R20 R2 K14 ["userId"]
    12896 CALL                             R19 1 1
    12897 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12899 LOADK                            R19 K205 ["Update"]
    12900 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12902 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12904 ORK                              R19 R20 K18 [0]
    12905 JUMP                             ; [0]
    12906 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12908 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12910 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12912 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12914 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12916 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12918 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12920 LOADK                            R20 K43 [""]
    12921 GETUPVAL                         R26 1
    12922 FASTCALL1                        TOSTRING R26 ; [+2]
    12923 GETIMPORT                        R25 K4 [tostring]
    12925 CALL                             R25 1 1
    12926 MOVE                             R21 R25
    12927 LOADK                            R22 K208 ["SupportedLanguages"]
    12928 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12930 FASTCALL1                        TOSTRING R26 ; [+2]
    12931 GETIMPORT                        R25 K4 [tostring]
    12933 CALL                             R25 1 1
    12934 MOVE                             R23 R25
    12935 LOADK                            R24 K43 [""]
    12936 CONCAT                           R19 R20 R24
    12937 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12939 RETURN                           R18 1
    12940 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12942 JUMPIFNOTEQKN                    R18 K533 [113] ; [+83]
    12944 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    12945 GETTABLEKS                       R19 R2 K19 ["id"]
    12947 SETTABLEKS                       R19 R18 K19 ["id"]
    12949 LOADK                            R19 K22 ["translation"]
    12950 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12952 LOADK                            R19 K205 ["Update"]
    12953 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12955 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12957 GETIMPORT                        R21 K34 [pcall]
    12959 NEWCLOSURE                       R22 P6
    12960 CAPTURE                          VAL R20
    12961 CAPTURE                          VAL R3
    12962 CALL                             R21 1 2
    12963 JUMPIFNOT                        R21 ; [+2]
    12964 MOVE                             R19 R22
    12965 JUMP                             ; [+2]
    12966 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12967 JUMP                             ; [0]
    12968 SETTABLEKS                       R19 R18 K21 ["date"]
    12970 MOVE                             R19 R12
    12971 LOADK                            R20 K23 ["actorId"]
    12972 CALL                             R19 1 1
    12973 SETTABLEKS                       R19 R18 K22 ["translation"]
    12975 GETTABLEKS                       R19 R2 K14 ["userId"]
    12977 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12979 MOVE                             R19 R0
    12980 GETTABLEKS                       R20 R2 K14 ["userId"]
    12982 CALL                             R19 1 1
    12983 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12985 LOADK                            R19 K205 ["Update"]
    12986 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12988 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12990 ORK                              R19 R20 K18 [0]
    12991 JUMP                             ; [0]
    12992 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12994 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12996 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12998 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13000 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13002 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13004 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13006 LOADK                            R20 K43 [""]
    13007 GETUPVAL                         R26 1
    13008 FASTCALL1                        TOSTRING R26 ; [+2]
    13009 GETIMPORT                        R25 K4 [tostring]
    13011 CALL                             R25 1 1
    13012 MOVE                             R21 R25
    13013 LOADK                            R22 K208 ["SupportedLanguages"]
    13014 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13016 FASTCALL1                        TOSTRING R26 ; [+2]
    13017 GETIMPORT                        R25 K4 [tostring]
    13019 CALL                             R25 1 1
    13020 MOVE                             R23 R25
    13021 LOADK                            R24 K43 [""]
    13022 CONCAT                           R19 R20 R24
    13023 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13025 RETURN                           R18 1
    13026 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13028 JUMPIFNOTEQKN                    R18 K536 [114] ; [+123]
    13030 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13031 GETTABLEKS                       R19 R2 K19 ["id"]
    13033 SETTABLEKS                       R19 R18 K19 ["id"]
    13035 LOADK                            R19 K25 ["iconType"]
    13036 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13038 LOADK                            R19 K205 ["Update"]
    13039 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13041 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13043 GETIMPORT                        R21 K34 [pcall]
    13045 NEWCLOSURE                       R22 P6
    13046 CAPTURE                          VAL R20
    13047 CAPTURE                          VAL R3
    13048 CALL                             R21 1 2
    13049 JUMPIFNOT                        R21 ; [+2]
    13050 MOVE                             R19 R22
    13051 JUMP                             ; [+2]
    13052 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13053 JUMP                             ; [0]
    13054 SETTABLEKS                       R19 R18 K21 ["date"]
    13056 MOVE                             R19 R12
    13057 LOADK                            R20 K26 ["iconId"]
    13058 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    13059 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13061 JUMPIFNOT                        R24 ; [+5]
    13062 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13064 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    13066 JUMPIF                           R23 ; [+1]
    13067 LOADK                            R23 K43 [""]
    13068 LOADK                            R24 K43 [""]
    13069 FASTCALL1                        TOSTRING R23 ; [+3]
    13070 MOVE                             R28 R23
    13071 GETIMPORT                        R27 K4 [tostring]
    13073 CALL                             R27 1 1
    13074 MOVE                             R25 R27
    13075 LOADK                            R26 K43 [""]
    13076 CONCAT                           R22 R24 R26
    13077 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    13079 CALL                             R19 2 1
    13080 SETTABLEKS                       R19 R18 K22 ["translation"]
    13082 GETTABLEKS                       R19 R2 K14 ["userId"]
    13084 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13086 MOVE                             R19 R0
    13087 GETTABLEKS                       R20 R2 K14 ["userId"]
    13089 CALL                             R19 1 1
    13090 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13092 LOADK                            R19 K205 ["Update"]
    13093 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13095 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13097 ORK                              R19 R20 K18 [0]
    13098 JUMP                             ; [0]
    13099 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13101 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13103 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13105 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13107 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13109 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13111 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13113 LOADK                            R20 K43 [""]
    13114 FASTCALL1                        TOSTRING R4 ; [+3]
    13115 MOVE                             R26 R4
    13116 GETIMPORT                        R25 K4 [tostring]
    13118 CALL                             R25 1 1
    13119 MOVE                             R21 R25
    13120 LOADK                            R22 K5 ["/places/"]
    13121 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13123 FASTCALL1                        TOSTRING R26 ; [+2]
    13124 GETIMPORT                        R25 K4 [tostring]
    13126 CALL                             R25 1 1
    13127 MOVE                             R23 R25
    13128 LOADK                            R24 K28 ["footerText"]
    13129 CONCAT                           R19 R20 R24
    13130 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13132 LOADK                            R20 K43 [""]
    13133 GETUPVAL                         R26 1
    13134 FASTCALL1                        TOSTRING R26 ; [+2]
    13135 GETIMPORT                        R25 K4 [tostring]
    13137 CALL                             R25 1 1
    13138 MOVE                             R21 R25
    13139 LOADK                            R22 K208 ["SupportedLanguages"]
    13140 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13142 FASTCALL1                        TOSTRING R26 ; [+2]
    13143 GETIMPORT                        R25 K4 [tostring]
    13145 CALL                             R25 1 1
    13146 MOVE                             R23 R25
    13147 LOADK                            R24 K43 [""]
    13148 CONCAT                           R19 R20 R24
    13149 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13151 RETURN                           R18 1
    13152 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13154 JUMPIFNOTEQKN                    R18 K541 [115] ; [+123]
    13156 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13157 GETTABLEKS                       R19 R2 K19 ["id"]
    13159 SETTABLEKS                       R19 R18 K19 ["id"]
    13161 LOADK                            R19 K30 ["Init"]
    13162 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13164 LOADK                            R19 K205 ["Update"]
    13165 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13167 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13169 GETIMPORT                        R21 K34 [pcall]
    13171 NEWCLOSURE                       R22 P6
    13172 CAPTURE                          VAL R20
    13173 CAPTURE                          VAL R3
    13174 CALL                             R21 1 2
    13175 JUMPIFNOT                        R21 ; [+2]
    13176 MOVE                             R19 R22
    13177 JUMP                             ; [+2]
    13178 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13179 JUMP                             ; [0]
    13180 SETTABLEKS                       R19 R18 K21 ["date"]
    13182 MOVE                             R19 R12
    13183 LOADK                            R20 K31 ["Unknown"]
    13184 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    13185 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13187 JUMPIFNOT                        R24 ; [+5]
    13188 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13190 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    13192 JUMPIF                           R23 ; [+1]
    13193 LOADK                            R23 K43 [""]
    13194 LOADK                            R24 K43 [""]
    13195 FASTCALL1                        TOSTRING R23 ; [+3]
    13196 MOVE                             R28 R23
    13197 GETIMPORT                        R27 K4 [tostring]
    13199 CALL                             R27 1 1
    13200 MOVE                             R25 R27
    13201 LOADK                            R26 K43 [""]
    13202 CONCAT                           R22 R24 R26
    13203 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    13205 CALL                             R19 2 1
    13206 SETTABLEKS                       R19 R18 K22 ["translation"]
    13208 GETTABLEKS                       R19 R2 K14 ["userId"]
    13210 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13212 MOVE                             R19 R0
    13213 GETTABLEKS                       R20 R2 K14 ["userId"]
    13215 CALL                             R19 1 1
    13216 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13218 LOADK                            R19 K205 ["Update"]
    13219 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13221 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13223 ORK                              R19 R20 K18 [0]
    13224 JUMP                             ; [0]
    13225 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13227 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13229 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13231 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13233 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13235 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13237 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13239 LOADK                            R20 K43 [""]
    13240 FASTCALL1                        TOSTRING R4 ; [+3]
    13241 MOVE                             R26 R4
    13242 GETIMPORT                        R25 K4 [tostring]
    13244 CALL                             R25 1 1
    13245 MOVE                             R21 R25
    13246 LOADK                            R22 K5 ["/places/"]
    13247 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13249 FASTCALL1                        TOSTRING R26 ; [+2]
    13250 GETIMPORT                        R25 K4 [tostring]
    13252 CALL                             R25 1 1
    13253 MOVE                             R23 R25
    13254 LOADK                            R24 K28 ["footerText"]
    13255 CONCAT                           R19 R20 R24
    13256 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13258 LOADK                            R20 K43 [""]
    13259 GETUPVAL                         R26 1
    13260 FASTCALL1                        TOSTRING R26 ; [+2]
    13261 GETIMPORT                        R25 K4 [tostring]
    13263 CALL                             R25 1 1
    13264 MOVE                             R21 R25
    13265 LOADK                            R22 K208 ["SupportedLanguages"]
    13266 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13268 FASTCALL1                        TOSTRING R26 ; [+2]
    13269 GETIMPORT                        R25 K4 [tostring]
    13271 CALL                             R25 1 1
    13272 MOVE                             R23 R25
    13273 LOADK                            R24 K43 [""]
    13274 CONCAT                           R19 R20 R24
    13275 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13277 RETURN                           R18 1
    13278 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13280 JUMPIFNOTEQKN                    R18 K544 [116] ; [+61]
    13282 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    13283 GETTABLEKS                       R19 R2 K19 ["id"]
    13285 SETTABLEKS                       R19 R18 K19 ["id"]
    13287 LOADK                            R19 K33 ["pcall"]
    13288 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13290 LOADK                            R19 K31 ["Unknown"]
    13291 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13293 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13295 GETIMPORT                        R21 K34 [pcall]
    13297 NEWCLOSURE                       R22 P6
    13298 CAPTURE                          VAL R20
    13299 CAPTURE                          VAL R3
    13300 CALL                             R21 1 2
    13301 JUMPIFNOT                        R21 ; [+2]
    13302 MOVE                             R19 R22
    13303 JUMP                             ; [+2]
    13304 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13305 JUMP                             ; [0]
    13306 SETTABLEKS                       R19 R18 K21 ["date"]
    13308 LOADK                            R19 K43 [""]
    13309 SETTABLEKS                       R19 R18 K22 ["translation"]
    13311 GETTABLEKS                       R19 R2 K14 ["userId"]
    13313 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13315 MOVE                             R19 R0
    13316 GETTABLEKS                       R20 R2 K14 ["userId"]
    13318 CALL                             R19 1 1
    13319 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13321 LOADK                            R19 K37 ["Universe"]
    13322 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13324 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13326 JUMP                             ; [0]
    13327 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13329 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13331 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13333 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13335 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13337 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13339 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13341 RETURN                           R18 1
    13342 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13344 JUMPIFNOTEQKN                    R18 K546 [117] ; [+123]
    13346 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13347 GETTABLEKS                       R19 R2 K19 ["id"]
    13349 SETTABLEKS                       R19 R18 K19 ["id"]
    13351 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13352 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13354 LOADK                            R19 K205 ["Update"]
    13355 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13357 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13359 GETIMPORT                        R21 K34 [pcall]
    13361 NEWCLOSURE                       R22 P6
    13362 CAPTURE                          VAL R20
    13363 CAPTURE                          VAL R3
    13364 CALL                             R21 1 2
    13365 JUMPIFNOT                        R21 ; [+2]
    13366 MOVE                             R19 R22
    13367 JUMP                             ; [+2]
    13368 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13369 JUMP                             ; [0]
    13370 SETTABLEKS                       R19 R18 K21 ["date"]
    13372 MOVE                             R19 R12
    13373 LOADK                            R20 K36 ["Description.Init"]
    13374 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    13375 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13377 JUMPIFNOT                        R24 ; [+5]
    13378 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13380 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    13382 JUMPIF                           R23 ; [+1]
    13383 LOADK                            R23 K43 [""]
    13384 LOADK                            R24 K43 [""]
    13385 FASTCALL1                        TOSTRING R23 ; [+3]
    13386 MOVE                             R28 R23
    13387 GETIMPORT                        R27 K4 [tostring]
    13389 CALL                             R27 1 1
    13390 MOVE                             R25 R27
    13391 LOADK                            R26 K43 [""]
    13392 CONCAT                           R22 R24 R26
    13393 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    13395 CALL                             R19 2 1
    13396 SETTABLEKS                       R19 R18 K22 ["translation"]
    13398 GETTABLEKS                       R19 R2 K14 ["userId"]
    13400 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13402 MOVE                             R19 R0
    13403 GETTABLEKS                       R20 R2 K14 ["userId"]
    13405 CALL                             R19 1 1
    13406 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13408 LOADK                            R19 K205 ["Update"]
    13409 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13411 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13413 ORK                              R19 R20 K18 [0]
    13414 JUMP                             ; [0]
    13415 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13417 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13419 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13421 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13423 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13425 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13427 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13429 LOADK                            R20 K43 [""]
    13430 FASTCALL1                        TOSTRING R4 ; [+3]
    13431 MOVE                             R26 R4
    13432 GETIMPORT                        R25 K4 [tostring]
    13434 CALL                             R25 1 1
    13435 MOVE                             R21 R25
    13436 LOADK                            R22 K5 ["/places/"]
    13437 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13439 FASTCALL1                        TOSTRING R26 ; [+2]
    13440 GETIMPORT                        R25 K4 [tostring]
    13442 CALL                             R25 1 1
    13443 MOVE                             R23 R25
    13444 LOADK                            R24 K28 ["footerText"]
    13445 CONCAT                           R19 R20 R24
    13446 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13448 LOADK                            R20 K43 [""]
    13449 GETUPVAL                         R26 1
    13450 FASTCALL1                        TOSTRING R26 ; [+2]
    13451 GETIMPORT                        R25 K4 [tostring]
    13453 CALL                             R25 1 1
    13454 MOVE                             R21 R25
    13455 LOADK                            R22 K208 ["SupportedLanguages"]
    13456 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13458 FASTCALL1                        TOSTRING R26 ; [+2]
    13459 GETIMPORT                        R25 K4 [tostring]
    13461 CALL                             R25 1 1
    13462 MOVE                             R23 R25
    13463 LOADK                            R24 K43 [""]
    13464 CONCAT                           R19 R20 R24
    13465 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13467 RETURN                           R18 1
    13468 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13470 JUMPIFNOTEQKN                    R18 K549 [118] ; [+115]
    13472 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13473 GETTABLEKS                       R19 R2 K19 ["id"]
    13475 SETTABLEKS                       R19 R18 K19 ["id"]
    13477 LOADK                            R19 K38 [1]
    13478 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13480 LOADK                            R19 K39 ["ArchivedExperience"]
    13481 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13483 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13485 GETIMPORT                        R21 K34 [pcall]
    13487 NEWCLOSURE                       R22 P6
    13488 CAPTURE                          VAL R20
    13489 CAPTURE                          VAL R3
    13490 CALL                             R21 1 2
    13491 JUMPIFNOT                        R21 ; [+2]
    13492 MOVE                             R19 R22
    13493 JUMP                             ; [+2]
    13494 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13495 JUMP                             ; [0]
    13496 SETTABLEKS                       R19 R18 K21 ["date"]
    13498 MOVE                             R19 R12
    13499 LOADK                            R20 K40 ["Experience"]
    13500 DUPTABLE                         R21 K499 [{"placeName"}]
    13501 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13503 JUMPIFNOT                        R24 ; [+5]
    13504 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13506 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13508 JUMPIF                           R23 ; [+1]
    13509 LOADK                            R23 K43 [""]
    13510 LOADK                            R24 K43 [""]
    13511 FASTCALL1                        TOSTRING R23 ; [+3]
    13512 MOVE                             R28 R23
    13513 GETIMPORT                        R27 K4 [tostring]
    13515 CALL                             R27 1 1
    13516 MOVE                             R25 R27
    13517 LOADK                            R26 K43 [""]
    13518 CONCAT                           R22 R24 R26
    13519 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13521 CALL                             R19 2 1
    13522 SETTABLEKS                       R19 R18 K22 ["translation"]
    13524 GETTABLEKS                       R19 R2 K14 ["userId"]
    13526 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13528 MOVE                             R19 R0
    13529 GETTABLEKS                       R20 R2 K14 ["userId"]
    13531 CALL                             R19 1 1
    13532 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13534 LOADK                            R19 K205 ["Update"]
    13535 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13537 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13539 ORK                              R19 R20 K18 [0]
    13540 JUMP                             ; [0]
    13541 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13543 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13545 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13547 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13549 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13551 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13553 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13555 LOADK                            R20 K43 [""]
    13556 FASTCALL1                        TOSTRING R4 ; [+3]
    13557 MOVE                             R24 R4
    13558 GETIMPORT                        R23 K4 [tostring]
    13560 CALL                             R23 1 1
    13561 MOVE                             R21 R23
    13562 LOADK                            R22 K41 ["metaData"]
    13563 CONCAT                           R19 R20 R22
    13564 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13566 LOADK                            R20 K43 [""]
    13567 GETUPVAL                         R26 1
    13568 FASTCALL1                        TOSTRING R26 ; [+2]
    13569 GETIMPORT                        R25 K4 [tostring]
    13571 CALL                             R25 1 1
    13572 MOVE                             R21 R25
    13573 LOADK                            R22 K208 ["SupportedLanguages"]
    13574 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13576 FASTCALL1                        TOSTRING R26 ; [+2]
    13577 GETIMPORT                        R25 K4 [tostring]
    13579 CALL                             R25 1 1
    13580 MOVE                             R23 R25
    13581 LOADK                            R24 K43 [""]
    13582 CONCAT                           R19 R20 R24
    13583 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13585 RETURN                           R18 1
    13586 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13588 JUMPIFNOTEQKN                    R18 K554 [119] ; [+115]
    13590 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13591 GETTABLEKS                       R19 R2 K19 ["id"]
    13593 SETTABLEKS                       R19 R18 K19 ["id"]
    13595 LOADK                            R19 K43 [""]
    13596 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13598 LOADK                            R19 K39 ["ArchivedExperience"]
    13599 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13601 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13603 GETIMPORT                        R21 K34 [pcall]
    13605 NEWCLOSURE                       R22 P6
    13606 CAPTURE                          VAL R20
    13607 CAPTURE                          VAL R3
    13608 CALL                             R21 1 2
    13609 JUMPIFNOT                        R21 ; [+2]
    13610 MOVE                             R19 R22
    13611 JUMP                             ; [+2]
    13612 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13613 JUMP                             ; [0]
    13614 SETTABLEKS                       R19 R18 K21 ["date"]
    13616 MOVE                             R19 R12
    13617 LOADK                            R20 K44 ["string"]
    13618 DUPTABLE                         R21 K499 [{"placeName"}]
    13619 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13621 JUMPIFNOT                        R24 ; [+5]
    13622 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13624 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13626 JUMPIF                           R23 ; [+1]
    13627 LOADK                            R23 K43 [""]
    13628 LOADK                            R24 K43 [""]
    13629 FASTCALL1                        TOSTRING R23 ; [+3]
    13630 MOVE                             R28 R23
    13631 GETIMPORT                        R27 K4 [tostring]
    13633 CALL                             R27 1 1
    13634 MOVE                             R25 R27
    13635 LOADK                            R26 K43 [""]
    13636 CONCAT                           R22 R24 R26
    13637 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13639 CALL                             R19 2 1
    13640 SETTABLEKS                       R19 R18 K22 ["translation"]
    13642 GETTABLEKS                       R19 R2 K14 ["userId"]
    13644 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13646 MOVE                             R19 R0
    13647 GETTABLEKS                       R20 R2 K14 ["userId"]
    13649 CALL                             R19 1 1
    13650 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13652 LOADK                            R19 K205 ["Update"]
    13653 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13655 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13657 ORK                              R19 R20 K18 [0]
    13658 JUMP                             ; [0]
    13659 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13661 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13663 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13665 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13667 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13669 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13671 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13673 LOADK                            R20 K43 [""]
    13674 FASTCALL1                        TOSTRING R4 ; [+3]
    13675 MOVE                             R24 R4
    13676 GETIMPORT                        R23 K4 [tostring]
    13678 CALL                             R23 1 1
    13679 MOVE                             R21 R23
    13680 LOADK                            R22 K41 ["metaData"]
    13681 CONCAT                           R19 R20 R22
    13682 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13684 LOADK                            R20 K43 [""]
    13685 GETUPVAL                         R26 1
    13686 FASTCALL1                        TOSTRING R26 ; [+2]
    13687 GETIMPORT                        R25 K4 [tostring]
    13689 CALL                             R25 1 1
    13690 MOVE                             R21 R25
    13691 LOADK                            R22 K208 ["SupportedLanguages"]
    13692 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13694 FASTCALL1                        TOSTRING R26 ; [+2]
    13695 GETIMPORT                        R25 K4 [tostring]
    13697 CALL                             R25 1 1
    13698 MOVE                             R23 R25
    13699 LOADK                            R24 K43 [""]
    13700 CONCAT                           R19 R20 R24
    13701 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13703 RETURN                           R18 1
    13704 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13706 JUMPIFNOTEQKN                    R18 K557 [120] ; [+119]
    13708 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    13709 GETTABLEKS                       R19 R2 K19 ["id"]
    13711 SETTABLEKS                       R19 R18 K19 ["id"]
    13713 LOADK                            R19 K46 [string.lower]
    13714 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13716 LOADK                            R19 K39 ["ArchivedExperience"]
    13717 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13719 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13721 GETIMPORT                        R21 K34 [pcall]
    13723 NEWCLOSURE                       R22 P6
    13724 CAPTURE                          VAL R20
    13725 CAPTURE                          VAL R3
    13726 CALL                             R21 1 2
    13727 JUMPIFNOT                        R21 ; [+2]
    13728 MOVE                             R19 R22
    13729 JUMP                             ; [+2]
    13730 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13731 JUMP                             ; [0]
    13732 SETTABLEKS                       R19 R18 K21 ["date"]
    13734 MOVE                             R19 R12
    13735 LOADK                            R20 K47 ["true"]
    13736 DUPTABLE                         R21 K560 [{"placeName", "newVersion"}]
    13737 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13739 JUMPIFNOT                        R24 ; [+5]
    13740 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13742 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13744 JUMPIF                           R23 ; [+1]
    13745 LOADK                            R23 K43 [""]
    13746 LOADK                            R24 K43 [""]
    13747 FASTCALL1                        TOSTRING R23 ; [+3]
    13748 MOVE                             R28 R23
    13749 GETIMPORT                        R27 K4 [tostring]
    13751 CALL                             R27 1 1
    13752 MOVE                             R25 R27
    13753 LOADK                            R26 K43 [""]
    13754 CONCAT                           R22 R24 R26
    13755 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13757 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13759 JUMPIFNOT                        R24 ; [+5]
    13760 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13762 GETTABLEKS                       R23 R24 K528 ["NewVersion"]
    13764 JUMPIF                           R23 ; [+1]
    13765 LOADK                            R23 K43 [""]
    13766 FASTCALL1                        TOSTRING R23 ; [+2]
    13767 GETIMPORT                        R22 K4 [tostring]
    13769 CALL                             R22 1 1
    13770 SETTABLEKS                       R22 R21 K525 ["newVersion"]
    13772 CALL                             R19 2 1
    13773 SETTABLEKS                       R19 R18 K22 ["translation"]
    13775 GETTABLEKS                       R19 R2 K14 ["userId"]
    13777 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13779 MOVE                             R19 R0
    13780 GETTABLEKS                       R20 R2 K14 ["userId"]
    13782 CALL                             R19 1 1
    13783 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13785 LOADK                            R19 K205 ["Update"]
    13786 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13788 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13790 ORK                              R19 R20 K18 [0]
    13791 JUMP                             ; [0]
    13792 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13794 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13796 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13798 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13800 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13802 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13804 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13806 LOADK                            R20 K43 [""]
    13807 GETUPVAL                         R26 1
    13808 FASTCALL1                        TOSTRING R26 ; [+2]
    13809 GETIMPORT                        R25 K4 [tostring]
    13811 CALL                             R25 1 1
    13812 MOVE                             R21 R25
    13813 LOADK                            R22 K208 ["SupportedLanguages"]
    13814 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13816 FASTCALL1                        TOSTRING R26 ; [+2]
    13817 GETIMPORT                        R25 K4 [tostring]
    13819 CALL                             R25 1 1
    13820 MOVE                             R23 R25
    13821 LOADK                            R24 K43 [""]
    13822 CONCAT                           R19 R20 R24
    13823 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13825 RETURN                           R18 1
    13826 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13828 JUMPIFNOTEQKN                    R18 K561 [121] ; [+74]
    13830 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13831 GETTABLEKS                       R19 R2 K19 ["id"]
    13833 SETTABLEKS                       R19 R18 K19 ["id"]
    13835 LOADK                            R19 K50 [2]
    13836 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13838 LOADK                            R19 K40 ["Experience"]
    13839 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13841 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13843 GETIMPORT                        R21 K34 [pcall]
    13845 NEWCLOSURE                       R22 P6
    13846 CAPTURE                          VAL R20
    13847 CAPTURE                          VAL R3
    13848 CALL                             R21 1 2
    13849 JUMPIFNOT                        R21 ; [+2]
    13850 MOVE                             R19 R22
    13851 JUMP                             ; [+2]
    13852 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13853 JUMP                             ; [0]
    13854 SETTABLEKS                       R19 R18 K21 ["date"]
    13856 MOVE                             R19 R12
    13857 LOADK                            R20 K51 ["viewBasicSettingsLink"]
    13858 CALL                             R19 1 1
    13859 SETTABLEKS                       R19 R18 K22 ["translation"]
    13861 GETTABLEKS                       R19 R2 K14 ["userId"]
    13863 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13865 MOVE                             R19 R0
    13866 GETTABLEKS                       R20 R2 K14 ["userId"]
    13868 CALL                             R19 1 1
    13869 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13871 LOADK                            R19 K37 ["Universe"]
    13872 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13874 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13876 JUMP                             ; [0]
    13877 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13879 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13881 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13883 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13885 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13887 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13889 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13891 LOADK                            R20 K43 [""]
    13892 FASTCALL1                        TOSTRING R4 ; [+3]
    13893 MOVE                             R24 R4
    13894 GETIMPORT                        R23 K4 [tostring]
    13896 CALL                             R23 1 1
    13897 MOVE                             R21 R23
    13898 LOADK                            R22 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13899 CONCAT                           R19 R20 R22
    13900 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13902 RETURN                           R18 1
    13903 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13905 JUMPIFNOTEQKN                    R18 K565 [122] ; [+116]
    13907 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13908 GETTABLEKS                       R19 R2 K19 ["id"]
    13910 SETTABLEKS                       R19 R18 K19 ["id"]
    13912 LOADK                            R19 K54 ["Description.PlayabilityChanged"]
    13913 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13915 LOADK                            R19 K88 [8]
    13916 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13918 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13920 GETIMPORT                        R21 K34 [pcall]
    13922 NEWCLOSURE                       R22 P6
    13923 CAPTURE                          VAL R20
    13924 CAPTURE                          VAL R3
    13925 CALL                             R21 1 2
    13926 JUMPIFNOT                        R21 ; [+2]
    13927 MOVE                             R19 R22
    13928 JUMP                             ; [+2]
    13929 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13930 JUMP                             ; [0]
    13931 SETTABLEKS                       R19 R18 K21 ["date"]
    13933 MOVE                             R19 R12
    13934 LOADK                            R20 K55 ["playability"]
    13935 DUPTABLE                         R21 K139 [{"action"}]
    13936 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13938 JUMPIFNOT                        R26 ; [+5]
    13939 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13941 GETTABLEKS                       R25 R26 K42 ["Action"]
    13943 JUMPIF                           R25 ; [+1]
    13944 LOADK                            R25 K43 [""]
    13945 GETIMPORT                        R26 K46 [string.lower]
    13947 FASTCALL1                        TOSTRING R25 ; [+3]
    13948 MOVE                             R28 R25
    13949 GETIMPORT                        R27 K4 [tostring]
    13951 CALL                             R27 1 1
    13952 CALL                             R26 1 1
    13953 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    13955 LOADB                            R24 1
    13956 JUMP                             ; [+1]
    13957 LOADB                            R24 0
    13958 JUMPIFNOT                        R24 ; [+4]
    13959 MOVE                             R23 R12
    13960 LOADK                            R24 K140 ["Description.ActionEnabled"]
    13961 CALL                             R23 1 1
    13962 JUMPIF                           R23 ; [+3]
    13963 MOVE                             R23 R12
    13964 LOADK                            R24 K141 ["Description.ActionDisabled"]
    13965 CALL                             R23 1 1
    13966 LOADK                            R24 K43 [""]
    13967 FASTCALL1                        TOSTRING R23 ; [+3]
    13968 MOVE                             R28 R23
    13969 GETIMPORT                        R27 K4 [tostring]
    13971 CALL                             R27 1 1
    13972 MOVE                             R25 R27
    13973 LOADK                            R26 K43 [""]
    13974 CONCAT                           R22 R24 R26
    13975 SETTABLEKS                       R22 R21 K138 ["action"]
    13977 CALL                             R19 2 1
    13978 SETTABLEKS                       R19 R18 K22 ["translation"]
    13980 GETTABLEKS                       R19 R2 K14 ["userId"]
    13982 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13984 MOVE                             R19 R0
    13985 GETTABLEKS                       R20 R2 K14 ["userId"]
    13987 CALL                             R19 1 1
    13988 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13990 LOADK                            R19 K37 ["Universe"]
    13991 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13993 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13995 JUMP                             ; [0]
    13996 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13998 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14000 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14002 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14004 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14006 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14008 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14010 LOADK                            R20 K43 [""]
    14011 FASTCALL1                        TOSTRING R4 ; [+3]
    14012 MOVE                             R24 R4
    14013 GETIMPORT                        R23 K4 [tostring]
    14015 CALL                             R23 1 1
    14016 MOVE                             R21 R23
    14017 LOADK                            R22 K94 [9]
    14018 CONCAT                           R19 R20 R22
    14019 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14021 RETURN                           R18 1
    14022 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14024 JUMPIFNOTEQKN                    R18 K568 [123] ; [+116]
    14026 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    14027 GETTABLEKS                       R19 R2 K19 ["id"]
    14029 SETTABLEKS                       R19 R18 K19 ["id"]
    14031 LOADK                            R19 K57 ["Playability"]
    14032 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14034 LOADK                            R19 K40 ["Experience"]
    14035 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14037 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14039 GETIMPORT                        R21 K34 [pcall]
    14041 NEWCLOSURE                       R22 P6
    14042 CAPTURE                          VAL R20
    14043 CAPTURE                          VAL R3
    14044 CALL                             R21 1 2
    14045 JUMPIFNOT                        R21 ; [+2]
    14046 MOVE                             R19 R22
    14047 JUMP                             ; [+2]
    14048 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14049 JUMP                             ; [0]
    14050 SETTABLEKS                       R19 R18 K21 ["date"]
    14052 MOVE                             R19 R12
    14053 LOADK                            R20 K58 ["Public"]
    14054 DUPTABLE                         R21 K139 [{"action"}]
    14055 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14057 JUMPIFNOT                        R26 ; [+5]
    14058 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14060 GETTABLEKS                       R25 R26 K42 ["Action"]
    14062 JUMPIF                           R25 ; [+1]
    14063 LOADK                            R25 K43 [""]
    14064 GETIMPORT                        R26 K46 [string.lower]
    14066 FASTCALL1                        TOSTRING R25 ; [+3]
    14067 MOVE                             R28 R25
    14068 GETIMPORT                        R27 K4 [tostring]
    14070 CALL                             R27 1 1
    14071 CALL                             R26 1 1
    14072 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    14074 LOADB                            R24 1
    14075 JUMP                             ; [+1]
    14076 LOADB                            R24 0
    14077 JUMPIFNOT                        R24 ; [+4]
    14078 MOVE                             R23 R12
    14079 LOADK                            R24 K140 ["Description.ActionEnabled"]
    14080 CALL                             R23 1 1
    14081 JUMPIF                           R23 ; [+3]
    14082 MOVE                             R23 R12
    14083 LOADK                            R24 K141 ["Description.ActionDisabled"]
    14084 CALL                             R23 1 1
    14085 LOADK                            R24 K43 [""]
    14086 FASTCALL1                        TOSTRING R23 ; [+3]
    14087 MOVE                             R28 R23
    14088 GETIMPORT                        R27 K4 [tostring]
    14090 CALL                             R27 1 1
    14091 MOVE                             R25 R27
    14092 LOADK                            R26 K43 [""]
    14093 CONCAT                           R22 R24 R26
    14094 SETTABLEKS                       R22 R21 K138 ["action"]
    14096 CALL                             R19 2 1
    14097 SETTABLEKS                       R19 R18 K22 ["translation"]
    14099 GETTABLEKS                       R19 R2 K14 ["userId"]
    14101 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14103 MOVE                             R19 R0
    14104 GETTABLEKS                       R20 R2 K14 ["userId"]
    14106 CALL                             R19 1 1
    14107 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14109 LOADK                            R19 K37 ["Universe"]
    14110 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14112 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14114 JUMP                             ; [0]
    14115 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14117 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14119 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14121 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14123 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14125 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14127 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14129 LOADK                            R20 K43 [""]
    14130 FASTCALL1                        TOSTRING R4 ; [+3]
    14131 MOVE                             R24 R4
    14132 GETIMPORT                        R23 K4 [tostring]
    14134 CALL                             R23 1 1
    14135 MOVE                             R21 R23
    14136 LOADK                            R22 K11 ["/configure"]
    14137 CONCAT                           R19 R20 R22
    14138 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14140 RETURN                           R18 1
    14141 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14143 JUMPIFNOTEQKN                    R18 K571 [124] ; [+165]
    14145 DUPTABLE                         R18 K573 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText"}]
    14146 GETTABLEKS                       R19 R2 K19 ["id"]
    14148 SETTABLEKS                       R19 R18 K19 ["id"]
    14150 LOADK                            R19 K62 ["Description.ActionFriends"]
    14151 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14153 LOADK                            R19 K63 [3]
    14154 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14156 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14158 GETIMPORT                        R21 K34 [pcall]
    14160 NEWCLOSURE                       R22 P6
    14161 CAPTURE                          VAL R20
    14162 CAPTURE                          VAL R3
    14163 CALL                             R21 1 2
    14164 JUMPIFNOT                        R21 ; [+2]
    14165 MOVE                             R19 R22
    14166 JUMP                             ; [+2]
    14167 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14168 JUMP                             ; [0]
    14169 SETTABLEKS                       R19 R18 K21 ["date"]
    14171 MOVE                             R19 R12
    14172 LOADK                            R20 K64 ["NotificationStringCreated"]
    14173 DUPTABLE                         R21 K581 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    14174 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14176 JUMPIFNOT                        R25 ; [+5]
    14177 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14179 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14181 JUMPIF                           R24 ; [+1]
    14182 LOADK                            R24 K43 [""]
    14183 LOADK                            R25 K43 [""]
    14184 FASTCALL1                        TOSTRING R24 ; [+3]
    14185 MOVE                             R29 R24
    14186 GETIMPORT                        R28 K4 [tostring]
    14188 CALL                             R28 1 1
    14189 MOVE                             R26 R28
    14190 LOADK                            R27 K43 [""]
    14191 CONCAT                           R23 R25 R27
    14192 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14194 GETGLOBAL                        R25 K583 ["getLink"]
    14196 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14197 MOVE                             R27 R24
    14198 CALL                             R25 2 1
    14199 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14201 MOVE                             R22 R23
    14202 JUMP                             ; [+8]
    14203 LOADK                            R26 K73 [5]
    14204 MOVE                             R27 R23
    14205 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14206 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14207 MOVE                             R30 R25
    14208 LOADK                            R31 K76 [6]
    14209 CONCAT                           R22 R26 R31
    14210 JUMP                             ; [0]
    14211 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14213 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14215 JUMPIFNOT                        R24 ; [+5]
    14216 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14218 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14220 JUMPIF                           R23 ; [+1]
    14221 LOADK                            R23 K43 [""]
    14222 MOVE                             R26 R23
    14223 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14225 CALL                             R24 2 1
    14226 MOVE                             R22 R24
    14227 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14229 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14231 JUMPIFNOT                        R24 ; [+5]
    14232 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14234 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14236 JUMPIF                           R23 ; [+1]
    14237 LOADK                            R23 K43 [""]
    14238 MOVE                             R26 R23
    14239 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14241 CALL                             R24 2 1
    14242 MOVE                             R22 R24
    14243 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14245 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14247 JUMPIFNOT                        R24 ; [+5]
    14248 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14250 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14252 JUMPIF                           R23 ; [+1]
    14253 LOADK                            R23 K43 [""]
    14254 MOVE                             R26 R23
    14255 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14257 CALL                             R24 2 1
    14258 MOVE                             R22 R24
    14259 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14261 CALL                             R19 2 1
    14262 SETTABLEKS                       R19 R18 K22 ["translation"]
    14264 GETTABLEKS                       R19 R2 K14 ["userId"]
    14266 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14268 MOVE                             R19 R0
    14269 GETTABLEKS                       R20 R2 K14 ["userId"]
    14271 CALL                             R19 1 1
    14272 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14274 LOADK                            R19 K63 [3]
    14275 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14277 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14279 ORK                              R19 R20 K18 [0]
    14280 JUMP                             ; [0]
    14281 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14283 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14285 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14287 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14289 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14291 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14293 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14295 GETGLOBAL                        R19 K583 ["getLink"]
    14297 LOADK                            R20 K81 ["AvatarType"]
    14298 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14300 CALL                             R19 2 1
    14301 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14303 MOVE                             R19 R12
    14304 LOADK                            R20 K82 [7]
    14305 CALL                             R19 1 1
    14306 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14308 RETURN                           R18 1
    14309 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14311 JUMPIFNOTEQKN                    R18 K595 [125] ; [+175]
    14313 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14314 GETTABLEKS                       R19 R2 K19 ["id"]
    14316 SETTABLEKS                       R19 R18 K19 ["id"]
    14318 LOADK                            R19 K87 ["Animation"]
    14319 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14321 LOADK                            R19 K63 [3]
    14322 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14324 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14326 GETIMPORT                        R21 K34 [pcall]
    14328 NEWCLOSURE                       R22 P6
    14329 CAPTURE                          VAL R20
    14330 CAPTURE                          VAL R3
    14331 CALL                             R21 1 2
    14332 JUMPIFNOT                        R21 ; [+2]
    14333 MOVE                             R19 R22
    14334 JUMP                             ; [+2]
    14335 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14336 JUMP                             ; [0]
    14337 SETTABLEKS                       R19 R18 K21 ["date"]
    14339 MOVE                             R19 R12
    14340 LOADK                            R20 K88 [8]
    14341 DUPTABLE                         R21 K581 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    14342 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14344 JUMPIFNOT                        R25 ; [+5]
    14345 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14347 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14349 JUMPIF                           R24 ; [+1]
    14350 LOADK                            R24 K43 [""]
    14351 LOADK                            R25 K43 [""]
    14352 FASTCALL1                        TOSTRING R24 ; [+3]
    14353 MOVE                             R29 R24
    14354 GETIMPORT                        R28 K4 [tostring]
    14356 CALL                             R28 1 1
    14357 MOVE                             R26 R28
    14358 LOADK                            R27 K43 [""]
    14359 CONCAT                           R23 R25 R27
    14360 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14362 GETGLOBAL                        R25 K583 ["getLink"]
    14364 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14365 MOVE                             R27 R24
    14366 CALL                             R25 2 1
    14367 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14369 MOVE                             R22 R23
    14370 JUMP                             ; [+8]
    14371 LOADK                            R26 K73 [5]
    14372 MOVE                             R27 R23
    14373 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14374 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14375 MOVE                             R30 R25
    14376 LOADK                            R31 K76 [6]
    14377 CONCAT                           R22 R26 R31
    14378 JUMP                             ; [0]
    14379 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14381 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14383 JUMPIFNOT                        R24 ; [+5]
    14384 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14386 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14388 JUMPIF                           R23 ; [+1]
    14389 LOADK                            R23 K43 [""]
    14390 MOVE                             R26 R23
    14391 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14393 CALL                             R24 2 1
    14394 MOVE                             R22 R24
    14395 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14397 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14399 JUMPIFNOT                        R24 ; [+5]
    14400 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14402 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14404 JUMPIF                           R23 ; [+1]
    14405 LOADK                            R23 K43 [""]
    14406 MOVE                             R26 R23
    14407 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14409 CALL                             R24 2 1
    14410 MOVE                             R22 R24
    14411 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14413 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14415 JUMPIFNOT                        R24 ; [+5]
    14416 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14418 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14420 JUMPIF                           R23 ; [+1]
    14421 LOADK                            R23 K43 [""]
    14422 MOVE                             R26 R23
    14423 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14425 CALL                             R24 2 1
    14426 MOVE                             R22 R24
    14427 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14429 CALL                             R19 2 1
    14430 SETTABLEKS                       R19 R18 K22 ["translation"]
    14432 GETTABLEKS                       R19 R2 K14 ["userId"]
    14434 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14436 MOVE                             R19 R0
    14437 GETTABLEKS                       R20 R2 K14 ["userId"]
    14439 CALL                             R19 1 1
    14440 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14442 LOADK                            R19 K63 [3]
    14443 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14445 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14447 ORK                              R19 R20 K18 [0]
    14448 JUMP                             ; [0]
    14449 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14451 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14453 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14455 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14457 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14459 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14461 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14463 GETGLOBAL                        R19 K583 ["getLink"]
    14465 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14466 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14468 CALL                             R19 2 1
    14469 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14471 MOVE                             R19 R12
    14472 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14473 CALL                             R19 1 1
    14474 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14476 MOVE                             R19 R12
    14477 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14478 CALL                             R19 1 1
    14479 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14481 MOVE                             R19 R12
    14482 LOADK                            R20 K91 ["collision"]
    14483 CALL                             R19 1 1
    14484 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14486 RETURN                           R18 1
    14487 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14489 JUMPIFNOTEQKN                    R18 K604 [126] ; [+191]
    14491 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14492 GETTABLEKS                       R19 R2 K19 ["id"]
    14494 SETTABLEKS                       R19 R18 K19 ["id"]
    14496 LOADK                            R19 K93 ["Collision"]
    14497 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14499 LOADK                            R19 K63 [3]
    14500 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14502 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14504 GETIMPORT                        R21 K34 [pcall]
    14506 NEWCLOSURE                       R22 P6
    14507 CAPTURE                          VAL R20
    14508 CAPTURE                          VAL R3
    14509 CALL                             R21 1 2
    14510 JUMPIFNOT                        R21 ; [+2]
    14511 MOVE                             R19 R22
    14512 JUMP                             ; [+2]
    14513 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14514 JUMP                             ; [0]
    14515 SETTABLEKS                       R19 R18 K21 ["date"]
    14517 MOVE                             R19 R12
    14518 LOADK                            R20 K94 [9]
    14519 DUPTABLE                         R21 K608 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "failedPackages"}]
    14520 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14522 JUMPIFNOT                        R25 ; [+5]
    14523 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14525 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14527 JUMPIF                           R24 ; [+1]
    14528 LOADK                            R24 K43 [""]
    14529 LOADK                            R25 K43 [""]
    14530 FASTCALL1                        TOSTRING R24 ; [+3]
    14531 MOVE                             R29 R24
    14532 GETIMPORT                        R28 K4 [tostring]
    14534 CALL                             R28 1 1
    14535 MOVE                             R26 R28
    14536 LOADK                            R27 K43 [""]
    14537 CONCAT                           R23 R25 R27
    14538 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14540 GETGLOBAL                        R25 K583 ["getLink"]
    14542 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14543 MOVE                             R27 R24
    14544 CALL                             R25 2 1
    14545 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14547 MOVE                             R22 R23
    14548 JUMP                             ; [+8]
    14549 LOADK                            R26 K73 [5]
    14550 MOVE                             R27 R23
    14551 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14552 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14553 MOVE                             R30 R25
    14554 LOADK                            R31 K76 [6]
    14555 CONCAT                           R22 R26 R31
    14556 JUMP                             ; [0]
    14557 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14559 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14561 JUMPIFNOT                        R24 ; [+5]
    14562 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14564 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14566 JUMPIF                           R23 ; [+1]
    14567 LOADK                            R23 K43 [""]
    14568 MOVE                             R26 R23
    14569 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14571 CALL                             R24 2 1
    14572 MOVE                             R22 R24
    14573 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14575 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14577 JUMPIFNOT                        R24 ; [+5]
    14578 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14580 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14582 JUMPIF                           R23 ; [+1]
    14583 LOADK                            R23 K43 [""]
    14584 MOVE                             R26 R23
    14585 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14587 CALL                             R24 2 1
    14588 MOVE                             R22 R24
    14589 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14591 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14593 JUMPIFNOT                        R24 ; [+5]
    14594 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14596 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14598 JUMPIF                           R23 ; [+1]
    14599 LOADK                            R23 K43 [""]
    14600 MOVE                             R26 R23
    14601 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14603 CALL                             R24 2 1
    14604 MOVE                             R22 R24
    14605 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14607 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14609 JUMPIFNOT                        R24 ; [+5]
    14610 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14612 GETTABLEKS                       R23 R24 K609 ["FailedPackages"]
    14614 JUMPIF                           R23 ; [+1]
    14615 LOADK                            R23 K43 [""]
    14616 MOVE                             R26 R23
    14617 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14619 CALL                             R24 2 1
    14620 MOVE                             R22 R24
    14621 SETTABLEKS                       R22 R21 K607 ["failedPackages"]
    14623 CALL                             R19 2 1
    14624 SETTABLEKS                       R19 R18 K22 ["translation"]
    14626 GETTABLEKS                       R19 R2 K14 ["userId"]
    14628 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14630 MOVE                             R19 R0
    14631 GETTABLEKS                       R20 R2 K14 ["userId"]
    14633 CALL                             R19 1 1
    14634 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14636 LOADK                            R19 K63 [3]
    14637 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14639 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14641 ORK                              R19 R20 K18 [0]
    14642 JUMP                             ; [0]
    14643 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14645 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14647 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14649 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14651 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14653 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14655 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14657 GETGLOBAL                        R19 K583 ["getLink"]
    14659 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14660 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14662 CALL                             R19 2 1
    14663 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14665 MOVE                             R19 R12
    14666 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14667 CALL                             R19 1 1
    14668 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14670 MOVE                             R19 R12
    14671 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14672 CALL                             R19 1 1
    14673 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14675 MOVE                             R19 R12
    14676 LOADK                            R20 K91 ["collision"]
    14677 CALL                             R19 1 1
    14678 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14680 RETURN                           R18 1
    14681 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14683 JUMPIFNOTEQKN                    R18 K610 [127] ; [+216]
    14685 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14686 GETTABLEKS                       R19 R2 K19 ["id"]
    14688 SETTABLEKS                       R19 R18 K19 ["id"]
    14690 LOADK                            R19 K99 ["Scale"]
    14691 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14693 LOADK                            R19 K63 [3]
    14694 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14696 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14698 GETIMPORT                        R21 K34 [pcall]
    14700 NEWCLOSURE                       R22 P6
    14701 CAPTURE                          VAL R20
    14702 CAPTURE                          VAL R3
    14703 CALL                             R21 1 2
    14704 JUMPIFNOT                        R21 ; [+2]
    14705 MOVE                             R19 R22
    14706 JUMP                             ; [+2]
    14707 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14708 JUMP                             ; [0]
    14709 SETTABLEKS                       R19 R18 K21 ["date"]
    14711 MOVE                             R19 R12
    14712 LOADK                            R20 K100 [10]
    14713 DUPTABLE                         R21 K613 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "action"}]
    14714 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14716 JUMPIFNOT                        R25 ; [+5]
    14717 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14719 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14721 JUMPIF                           R24 ; [+1]
    14722 LOADK                            R24 K43 [""]
    14723 LOADK                            R25 K43 [""]
    14724 FASTCALL1                        TOSTRING R24 ; [+3]
    14725 MOVE                             R29 R24
    14726 GETIMPORT                        R28 K4 [tostring]
    14728 CALL                             R28 1 1
    14729 MOVE                             R26 R28
    14730 LOADK                            R27 K43 [""]
    14731 CONCAT                           R23 R25 R27
    14732 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14734 GETGLOBAL                        R25 K583 ["getLink"]
    14736 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14737 MOVE                             R27 R24
    14738 CALL                             R25 2 1
    14739 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14741 MOVE                             R22 R23
    14742 JUMP                             ; [+8]
    14743 LOADK                            R26 K73 [5]
    14744 MOVE                             R27 R23
    14745 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14746 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14747 MOVE                             R30 R25
    14748 LOADK                            R31 K76 [6]
    14749 CONCAT                           R22 R26 R31
    14750 JUMP                             ; [0]
    14751 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14753 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14755 JUMPIFNOT                        R24 ; [+5]
    14756 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14758 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14760 JUMPIF                           R23 ; [+1]
    14761 LOADK                            R23 K43 [""]
    14762 MOVE                             R26 R23
    14763 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14765 CALL                             R24 2 1
    14766 MOVE                             R22 R24
    14767 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14769 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14771 JUMPIFNOT                        R24 ; [+5]
    14772 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14774 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14776 JUMPIF                           R23 ; [+1]
    14777 LOADK                            R23 K43 [""]
    14778 MOVE                             R26 R23
    14779 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14781 CALL                             R24 2 1
    14782 MOVE                             R22 R24
    14783 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14785 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14787 JUMPIFNOT                        R24 ; [+5]
    14788 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14790 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14792 JUMPIF                           R23 ; [+1]
    14793 LOADK                            R23 K43 [""]
    14794 MOVE                             R26 R23
    14795 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14797 CALL                             R24 2 1
    14798 MOVE                             R22 R24
    14799 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14801 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14803 JUMPIFNOT                        R26 ; [+5]
    14804 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14806 GETTABLEKS                       R25 R26 K614 ["AutoUpdate"]
    14808 JUMPIF                           R25 ; [+1]
    14809 LOADK                            R25 K43 [""]
    14810 GETIMPORT                        R26 K46 [string.lower]
    14812 FASTCALL1                        TOSTRING R25 ; [+3]
    14813 MOVE                             R28 R25
    14814 GETIMPORT                        R27 K4 [tostring]
    14816 CALL                             R27 1 1
    14817 CALL                             R26 1 1
    14818 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    14820 LOADB                            R24 1
    14821 JUMP                             ; [+1]
    14822 LOADB                            R24 0
    14823 JUMPIFNOT                        R24 ; [+4]
    14824 MOVE                             R23 R12
    14825 LOADK                            R24 K140 ["Description.ActionEnabled"]
    14826 CALL                             R23 1 1
    14827 JUMPIF                           R23 ; [+3]
    14828 MOVE                             R23 R12
    14829 LOADK                            R24 K141 ["Description.ActionDisabled"]
    14830 CALL                             R23 1 1
    14831 LOADK                            R24 K43 [""]
    14832 FASTCALL1                        TOSTRING R23 ; [+3]
    14833 MOVE                             R28 R23
    14834 GETIMPORT                        R27 K4 [tostring]
    14836 CALL                             R27 1 1
    14837 MOVE                             R25 R27
    14838 LOADK                            R26 K43 [""]
    14839 CONCAT                           R22 R24 R26
    14840 SETTABLEKS                       R22 R21 K138 ["action"]
    14842 CALL                             R19 2 1
    14843 SETTABLEKS                       R19 R18 K22 ["translation"]
    14845 GETTABLEKS                       R19 R2 K14 ["userId"]
    14847 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14849 MOVE                             R19 R0
    14850 GETTABLEKS                       R20 R2 K14 ["userId"]
    14852 CALL                             R19 1 1
    14853 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14855 LOADK                            R19 K63 [3]
    14856 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14858 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14860 ORK                              R19 R20 K18 [0]
    14861 JUMP                             ; [0]
    14862 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14864 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14866 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14868 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14870 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14872 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14874 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14876 GETGLOBAL                        R19 K583 ["getLink"]
    14878 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14879 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14881 CALL                             R19 2 1
    14882 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14884 MOVE                             R19 R12
    14885 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14886 CALL                             R19 1 1
    14887 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14889 MOVE                             R19 R12
    14890 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14891 CALL                             R19 1 1
    14892 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14894 MOVE                             R19 R12
    14895 LOADK                            R20 K91 ["collision"]
    14896 CALL                             R19 1 1
    14897 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14899 RETURN                           R18 1
    14900 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14902 JUMPIFNOTEQKN                    R18 K615 [128] ; [+85]
    14904 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14905 GETTABLEKS                       R19 R2 K19 ["id"]
    14907 SETTABLEKS                       R19 R18 K19 ["id"]
    14909 LOADK                            R19 K104 ["AvatarSettingsScaleHead"]
    14910 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14912 LOADK                            R19 K31 ["Unknown"]
    14913 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14915 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14917 GETIMPORT                        R21 K34 [pcall]
    14919 NEWCLOSURE                       R22 P6
    14920 CAPTURE                          VAL R20
    14921 CAPTURE                          VAL R3
    14922 CALL                             R21 1 2
    14923 JUMPIFNOT                        R21 ; [+2]
    14924 MOVE                             R19 R22
    14925 JUMP                             ; [+2]
    14926 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14927 JUMP                             ; [0]
    14928 SETTABLEKS                       R19 R18 K21 ["date"]
    14930 MOVE                             R19 R12
    14931 LOADK                            R20 K105 ["Description.AvatarSettingsScaleHead"]
    14932 DUPTABLE                         R21 K619 [{"roleName"}]
    14933 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14935 JUMPIFNOT                        R24 ; [+5]
    14936 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14938 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    14940 JUMPIF                           R23 ; [+1]
    14941 LOADK                            R23 K43 [""]
    14942 LOADK                            R24 K43 [""]
    14943 FASTCALL1                        TOSTRING R23 ; [+3]
    14944 MOVE                             R28 R23
    14945 GETIMPORT                        R27 K4 [tostring]
    14947 CALL                             R27 1 1
    14948 MOVE                             R25 R27
    14949 LOADK                            R26 K43 [""]
    14950 CONCAT                           R22 R24 R26
    14951 SETTABLEKS                       R22 R21 K618 ["roleName"]
    14953 CALL                             R19 2 1
    14954 SETTABLEKS                       R19 R18 K22 ["translation"]
    14956 GETTABLEKS                       R19 R2 K14 ["userId"]
    14958 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14960 MOVE                             R19 R0
    14961 GETTABLEKS                       R20 R2 K14 ["userId"]
    14963 CALL                             R19 1 1
    14964 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14966 LOADK                            R19 K85 ["animation"]
    14967 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14969 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14971 ORK                              R19 R20 K18 [0]
    14972 JUMP                             ; [0]
    14973 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14975 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14977 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14979 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14981 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14983 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14985 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14987 RETURN                           R18 1
    14988 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14990 JUMPIFNOTEQKN                    R18 K621 [129] ; [+85]
    14992 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14993 GETTABLEKS                       R19 R2 K19 ["id"]
    14995 SETTABLEKS                       R19 R18 K19 ["id"]
    14997 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
    14998 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15000 LOADK                            R19 K31 ["Unknown"]
    15001 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15003 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15005 GETIMPORT                        R21 K34 [pcall]
    15007 NEWCLOSURE                       R22 P6
    15008 CAPTURE                          VAL R20
    15009 CAPTURE                          VAL R3
    15010 CALL                             R21 1 2
    15011 JUMPIFNOT                        R21 ; [+2]
    15012 MOVE                             R19 R22
    15013 JUMP                             ; [+2]
    15014 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15015 JUMP                             ; [0]
    15016 SETTABLEKS                       R19 R18 K21 ["date"]
    15018 MOVE                             R19 R12
    15019 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
    15020 DUPTABLE                         R21 K619 [{"roleName"}]
    15021 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15023 JUMPIFNOT                        R24 ; [+5]
    15024 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15026 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    15028 JUMPIF                           R23 ; [+1]
    15029 LOADK                            R23 K43 [""]
    15030 LOADK                            R24 K43 [""]
    15031 FASTCALL1                        TOSTRING R23 ; [+3]
    15032 MOVE                             R28 R23
    15033 GETIMPORT                        R27 K4 [tostring]
    15035 CALL                             R27 1 1
    15036 MOVE                             R25 R27
    15037 LOADK                            R26 K43 [""]
    15038 CONCAT                           R22 R24 R26
    15039 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15041 CALL                             R19 2 1
    15042 SETTABLEKS                       R19 R18 K22 ["translation"]
    15044 GETTABLEKS                       R19 R2 K14 ["userId"]
    15046 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15048 MOVE                             R19 R0
    15049 GETTABLEKS                       R20 R2 K14 ["userId"]
    15051 CALL                             R19 1 1
    15052 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15054 LOADK                            R19 K85 ["animation"]
    15055 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15057 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15059 ORK                              R19 R20 K18 [0]
    15060 JUMP                             ; [0]
    15061 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15063 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15065 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15067 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15069 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15071 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15073 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15075 RETURN                           R18 1
    15076 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15078 JUMPIFNOTEQKN                    R18 K624 [130] ; [+85]
    15080 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15081 GETTABLEKS                       R19 R2 K19 ["id"]
    15083 SETTABLEKS                       R19 R18 K19 ["id"]
    15085 LOADK                            R19 K113 ["AvatarSettingsBodyParts"]
    15086 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15088 LOADK                            R19 K31 ["Unknown"]
    15089 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15091 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15093 GETIMPORT                        R21 K34 [pcall]
    15095 NEWCLOSURE                       R22 P6
    15096 CAPTURE                          VAL R20
    15097 CAPTURE                          VAL R3
    15098 CALL                             R21 1 2
    15099 JUMPIFNOT                        R21 ; [+2]
    15100 MOVE                             R19 R22
    15101 JUMP                             ; [+2]
    15102 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15103 JUMP                             ; [0]
    15104 SETTABLEKS                       R19 R18 K21 ["date"]
    15106 MOVE                             R19 R12
    15107 LOADK                            R20 K114 ["Description.AvatarSettingsBodyParts"]
    15108 DUPTABLE                         R21 K619 [{"roleName"}]
    15109 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15111 JUMPIFNOT                        R24 ; [+5]
    15112 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15114 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    15116 JUMPIF                           R23 ; [+1]
    15117 LOADK                            R23 K43 [""]
    15118 LOADK                            R24 K43 [""]
    15119 FASTCALL1                        TOSTRING R23 ; [+3]
    15120 MOVE                             R28 R23
    15121 GETIMPORT                        R27 K4 [tostring]
    15123 CALL                             R27 1 1
    15124 MOVE                             R25 R27
    15125 LOADK                            R26 K43 [""]
    15126 CONCAT                           R22 R24 R26
    15127 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15129 CALL                             R19 2 1
    15130 SETTABLEKS                       R19 R18 K22 ["translation"]
    15132 GETTABLEKS                       R19 R2 K14 ["userId"]
    15134 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15136 MOVE                             R19 R0
    15137 GETTABLEKS                       R20 R2 K14 ["userId"]
    15139 CALL                             R19 1 1
    15140 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15142 LOADK                            R19 K85 ["animation"]
    15143 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15145 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15147 ORK                              R19 R20 K18 [0]
    15148 JUMP                             ; [0]
    15149 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15151 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15153 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15155 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15157 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15159 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15161 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15163 RETURN                           R18 1
    15164 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15166 JUMPIFNOTEQKN                    R18 K627 [131] ; [+105]
    15168 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15169 GETTABLEKS                       R19 R2 K19 ["id"]
    15171 SETTABLEKS                       R19 R18 K19 ["id"]
    15173 LOADK                            R19 K116 ["AvatarSettingsClothing"]
    15174 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15176 LOADK                            R19 K31 ["Unknown"]
    15177 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15179 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15181 GETIMPORT                        R21 K34 [pcall]
    15183 NEWCLOSURE                       R22 P6
    15184 CAPTURE                          VAL R20
    15185 CAPTURE                          VAL R3
    15186 CALL                             R21 1 2
    15187 JUMPIFNOT                        R21 ; [+2]
    15188 MOVE                             R19 R22
    15189 JUMP                             ; [+2]
    15190 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15191 JUMP                             ; [0]
    15192 SETTABLEKS                       R19 R18 K21 ["date"]
    15194 MOVE                             R19 R12
    15195 LOADK                            R20 K117 ["Description.AvatarSettingsClothing"]
    15196 DUPTABLE                         R21 K632 [{"oldRoleName", "newRoleName"}]
    15197 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15199 JUMPIFNOT                        R24 ; [+5]
    15200 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15202 GETTABLEKS                       R23 R24 K633 ["OldRoleName"]
    15204 JUMPIF                           R23 ; [+1]
    15205 LOADK                            R23 K43 [""]
    15206 LOADK                            R24 K43 [""]
    15207 FASTCALL1                        TOSTRING R23 ; [+3]
    15208 MOVE                             R28 R23
    15209 GETIMPORT                        R27 K4 [tostring]
    15211 CALL                             R27 1 1
    15212 MOVE                             R25 R27
    15213 LOADK                            R26 K43 [""]
    15214 CONCAT                           R22 R24 R26
    15215 SETTABLEKS                       R22 R21 K630 ["oldRoleName"]
    15217 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15219 JUMPIFNOT                        R24 ; [+5]
    15220 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15222 GETTABLEKS                       R23 R24 K634 ["NewRoleName"]
    15224 JUMPIF                           R23 ; [+1]
    15225 LOADK                            R23 K43 [""]
    15226 LOADK                            R24 K43 [""]
    15227 FASTCALL1                        TOSTRING R23 ; [+3]
    15228 MOVE                             R28 R23
    15229 GETIMPORT                        R27 K4 [tostring]
    15231 CALL                             R27 1 1
    15232 MOVE                             R25 R27
    15233 LOADK                            R26 K43 [""]
    15234 CONCAT                           R22 R24 R26
    15235 SETTABLEKS                       R22 R21 K631 ["newRoleName"]
    15237 CALL                             R19 2 1
    15238 SETTABLEKS                       R19 R18 K22 ["translation"]
    15240 GETTABLEKS                       R19 R2 K14 ["userId"]
    15242 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15244 MOVE                             R19 R0
    15245 GETTABLEKS                       R20 R2 K14 ["userId"]
    15247 CALL                             R19 1 1
    15248 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15250 LOADK                            R19 K85 ["animation"]
    15251 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15253 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15255 ORK                              R19 R20 K18 [0]
    15256 JUMP                             ; [0]
    15257 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15259 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15261 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15263 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15265 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15267 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15269 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15271 RETURN                           R18 1
    15272 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15274 JUMPIFNOTEQKN                    R18 K635 [132] ; [+80]
    15276 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15277 GETTABLEKS                       R19 R2 K19 ["id"]
    15279 SETTABLEKS                       R19 R18 K19 ["id"]
    15281 LOADK                            R19 K124 ["NewName"]
    15282 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15284 LOADK                            R19 K31 ["Unknown"]
    15285 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15287 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15289 GETIMPORT                        R21 K34 [pcall]
    15291 NEWCLOSURE                       R22 P6
    15292 CAPTURE                          VAL R20
    15293 CAPTURE                          VAL R3
    15294 CALL                             R21 1 2
    15295 JUMPIFNOT                        R21 ; [+2]
    15296 MOVE                             R19 R22
    15297 JUMP                             ; [+2]
    15298 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15299 JUMP                             ; [0]
    15300 SETTABLEKS                       R19 R18 K21 ["date"]
    15302 MOVE                             R19 R12
    15303 LOADK                            R20 K125 ["OldName"]
    15304 DUPTABLE                         R21 K333 [{"userName"}]
    15305 MOVE                             R23 R0
    15306 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15308 CALL                             R23 1 1
    15309 LOADK                            R24 K43 [""]
    15310 FASTCALL1                        TOSTRING R23 ; [+3]
    15311 MOVE                             R28 R23
    15312 GETIMPORT                        R27 K4 [tostring]
    15314 CALL                             R27 1 1
    15315 MOVE                             R25 R27
    15316 LOADK                            R26 K43 [""]
    15317 CONCAT                           R22 R24 R26
    15318 SETTABLEKS                       R22 R21 K332 ["userName"]
    15320 CALL                             R19 2 1
    15321 SETTABLEKS                       R19 R18 K22 ["translation"]
    15323 GETTABLEKS                       R19 R2 K14 ["userId"]
    15325 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15327 MOVE                             R19 R0
    15328 GETTABLEKS                       R20 R2 K14 ["userId"]
    15330 CALL                             R19 1 1
    15331 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15333 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15334 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15336 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15338 ORK                              R19 R20 K18 [0]
    15339 JUMP                             ; [0]
    15340 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15342 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15344 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15346 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15348 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15350 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15352 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15354 RETURN                           R18 1
    15355 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15357 JUMPIFNOTEQKN                    R18 K638 [133] ; [+80]
    15359 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15360 GETTABLEKS                       R19 R2 K19 ["id"]
    15362 SETTABLEKS                       R19 R18 K19 ["id"]
    15364 LOADK                            R19 K127 ["ExperienceDescription"]
    15365 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15367 LOADK                            R19 K31 ["Unknown"]
    15368 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15370 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15372 GETIMPORT                        R21 K34 [pcall]
    15374 NEWCLOSURE                       R22 P6
    15375 CAPTURE                          VAL R20
    15376 CAPTURE                          VAL R3
    15377 CALL                             R21 1 2
    15378 JUMPIFNOT                        R21 ; [+2]
    15379 MOVE                             R19 R22
    15380 JUMP                             ; [+2]
    15381 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15382 JUMP                             ; [0]
    15383 SETTABLEKS                       R19 R18 K21 ["date"]
    15385 MOVE                             R19 R12
    15386 LOADK                            R20 K128 ["Description.ExperienceDescription"]
    15387 DUPTABLE                         R21 K333 [{"userName"}]
    15388 MOVE                             R23 R0
    15389 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15391 CALL                             R23 1 1
    15392 LOADK                            R24 K43 [""]
    15393 FASTCALL1                        TOSTRING R23 ; [+3]
    15394 MOVE                             R28 R23
    15395 GETIMPORT                        R27 K4 [tostring]
    15397 CALL                             R27 1 1
    15398 MOVE                             R25 R27
    15399 LOADK                            R26 K43 [""]
    15400 CONCAT                           R22 R24 R26
    15401 SETTABLEKS                       R22 R21 K332 ["userName"]
    15403 CALL                             R19 2 1
    15404 SETTABLEKS                       R19 R18 K22 ["translation"]
    15406 GETTABLEKS                       R19 R2 K14 ["userId"]
    15408 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15410 MOVE                             R19 R0
    15411 GETTABLEKS                       R20 R2 K14 ["userId"]
    15413 CALL                             R19 1 1
    15414 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15416 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15417 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15419 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15421 ORK                              R19 R20 K18 [0]
    15422 JUMP                             ; [0]
    15423 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15425 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15427 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15429 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15431 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15433 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15435 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15437 RETURN                           R18 1
    15438 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15440 JUMPIFNOTEQKN                    R18 K641 [134] ; [+80]
    15442 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15443 GETTABLEKS                       R19 R2 K19 ["id"]
    15445 SETTABLEKS                       R19 R18 K19 ["id"]
    15447 LOADK                            R19 K130 ["ExperienceGenre"]
    15448 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15450 LOADK                            R19 K31 ["Unknown"]
    15451 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15453 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15455 GETIMPORT                        R21 K34 [pcall]
    15457 NEWCLOSURE                       R22 P6
    15458 CAPTURE                          VAL R20
    15459 CAPTURE                          VAL R3
    15460 CALL                             R21 1 2
    15461 JUMPIFNOT                        R21 ; [+2]
    15462 MOVE                             R19 R22
    15463 JUMP                             ; [+2]
    15464 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15465 JUMP                             ; [0]
    15466 SETTABLEKS                       R19 R18 K21 ["date"]
    15468 MOVE                             R19 R12
    15469 LOADK                            R20 K131 ["Description.ExperienceGenre"]
    15470 DUPTABLE                         R21 K333 [{"userName"}]
    15471 MOVE                             R23 R0
    15472 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15474 CALL                             R23 1 1
    15475 LOADK                            R24 K43 [""]
    15476 FASTCALL1                        TOSTRING R23 ; [+3]
    15477 MOVE                             R28 R23
    15478 GETIMPORT                        R27 K4 [tostring]
    15480 CALL                             R27 1 1
    15481 MOVE                             R25 R27
    15482 LOADK                            R26 K43 [""]
    15483 CONCAT                           R22 R24 R26
    15484 SETTABLEKS                       R22 R21 K332 ["userName"]
    15486 CALL                             R19 2 1
    15487 SETTABLEKS                       R19 R18 K22 ["translation"]
    15489 GETTABLEKS                       R19 R2 K14 ["userId"]
    15491 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15493 MOVE                             R19 R0
    15494 GETTABLEKS                       R20 R2 K14 ["userId"]
    15496 CALL                             R19 1 1
    15497 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15499 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15500 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15502 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15504 ORK                              R19 R20 K18 [0]
    15505 JUMP                             ; [0]
    15506 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15508 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15510 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15512 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15514 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15516 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15518 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15520 RETURN                           R18 1
    15521 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15523 JUMPIFNOTEQKN                    R18 K644 [135] ; [+80]
    15525 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15526 GETTABLEKS                       R19 R2 K19 ["id"]
    15528 SETTABLEKS                       R19 R18 K19 ["id"]
    15530 LOADK                            R19 K133 [{"genre"}]
    15531 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15533 LOADK                            R19 K31 ["Unknown"]
    15534 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15536 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15538 GETIMPORT                        R21 K34 [pcall]
    15540 NEWCLOSURE                       R22 P6
    15541 CAPTURE                          VAL R20
    15542 CAPTURE                          VAL R3
    15543 CALL                             R21 1 2
    15544 JUMPIFNOT                        R21 ; [+2]
    15545 MOVE                             R19 R22
    15546 JUMP                             ; [+2]
    15547 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15548 JUMP                             ; [0]
    15549 SETTABLEKS                       R19 R18 K21 ["date"]
    15551 MOVE                             R19 R12
    15552 LOADK                            R20 K134 ["Genre"]
    15553 DUPTABLE                         R21 K333 [{"userName"}]
    15554 MOVE                             R23 R0
    15555 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15557 CALL                             R23 1 1
    15558 LOADK                            R24 K43 [""]
    15559 FASTCALL1                        TOSTRING R23 ; [+3]
    15560 MOVE                             R28 R23
    15561 GETIMPORT                        R27 K4 [tostring]
    15563 CALL                             R27 1 1
    15564 MOVE                             R25 R27
    15565 LOADK                            R26 K43 [""]
    15566 CONCAT                           R22 R24 R26
    15567 SETTABLEKS                       R22 R21 K332 ["userName"]
    15569 CALL                             R19 2 1
    15570 SETTABLEKS                       R19 R18 K22 ["translation"]
    15572 GETTABLEKS                       R19 R2 K14 ["userId"]
    15574 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15576 MOVE                             R19 R0
    15577 GETTABLEKS                       R20 R2 K14 ["userId"]
    15579 CALL                             R19 1 1
    15580 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15582 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15583 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15585 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15587 ORK                              R19 R20 K18 [0]
    15588 JUMP                             ; [0]
    15589 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15591 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15593 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15595 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15597 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15599 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15601 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15603 RETURN                           R18 1
    15604 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15606 JUMPIFNOTEQKN                    R18 K647 [136] ; [+100]
    15608 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15609 GETTABLEKS                       R19 R2 K19 ["id"]
    15611 SETTABLEKS                       R19 R18 K19 ["id"]
    15613 LOADK                            R19 K136 ["SecuritySettingsHTTPRequests"]
    15614 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15616 LOADK                            R19 K31 ["Unknown"]
    15617 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15619 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15621 GETIMPORT                        R21 K34 [pcall]
    15623 NEWCLOSURE                       R22 P6
    15624 CAPTURE                          VAL R20
    15625 CAPTURE                          VAL R3
    15626 CALL                             R21 1 2
    15627 JUMPIFNOT                        R21 ; [+2]
    15628 MOVE                             R19 R22
    15629 JUMP                             ; [+2]
    15630 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15631 JUMP                             ; [0]
    15632 SETTABLEKS                       R19 R18 K21 ["date"]
    15634 MOVE                             R19 R12
    15635 LOADK                            R20 K137 ["Description.SecuritySettingsHTTPRequests"]
    15636 DUPTABLE                         R21 K650 [{"userName", "roleName"}]
    15637 MOVE                             R23 R0
    15638 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15640 CALL                             R23 1 1
    15641 LOADK                            R24 K43 [""]
    15642 FASTCALL1                        TOSTRING R23 ; [+3]
    15643 MOVE                             R28 R23
    15644 GETIMPORT                        R27 K4 [tostring]
    15646 CALL                             R27 1 1
    15647 MOVE                             R25 R27
    15648 LOADK                            R26 K43 [""]
    15649 CONCAT                           R22 R24 R26
    15650 SETTABLEKS                       R22 R21 K332 ["userName"]
    15652 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15654 JUMPIFNOT                        R24 ; [+5]
    15655 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15657 GETTABLEKS                       R23 R24 K618 ["roleName"]
    15659 JUMPIF                           R23 ; [+1]
    15660 LOADK                            R23 K43 [""]
    15661 LOADK                            R24 K43 [""]
    15662 FASTCALL1                        TOSTRING R23 ; [+3]
    15663 MOVE                             R28 R23
    15664 GETIMPORT                        R27 K4 [tostring]
    15666 CALL                             R27 1 1
    15667 MOVE                             R25 R27
    15668 LOADK                            R26 K43 [""]
    15669 CONCAT                           R22 R24 R26
    15670 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15672 CALL                             R19 2 1
    15673 SETTABLEKS                       R19 R18 K22 ["translation"]
    15675 GETTABLEKS                       R19 R2 K14 ["userId"]
    15677 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15679 MOVE                             R19 R0
    15680 GETTABLEKS                       R20 R2 K14 ["userId"]
    15682 CALL                             R19 1 1
    15683 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15685 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15686 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15688 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15690 ORK                              R19 R20 K18 [0]
    15691 JUMP                             ; [0]
    15692 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15694 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15696 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15698 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15700 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15702 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15704 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15706 RETURN                           R18 1
    15707 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15709 JUMPIFNOTEQKN                    R18 K651 [137] ; [+100]
    15711 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15712 GETTABLEKS                       R19 R2 K19 ["id"]
    15714 SETTABLEKS                       R19 R18 K19 ["id"]
    15716 LOADK                            R19 K140 ["Description.ActionEnabled"]
    15717 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15719 LOADK                            R19 K31 ["Unknown"]
    15720 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15722 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15724 GETIMPORT                        R21 K34 [pcall]
    15726 NEWCLOSURE                       R22 P6
    15727 CAPTURE                          VAL R20
    15728 CAPTURE                          VAL R3
    15729 CALL                             R21 1 2
    15730 JUMPIFNOT                        R21 ; [+2]
    15731 MOVE                             R19 R22
    15732 JUMP                             ; [+2]
    15733 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15734 JUMP                             ; [0]
    15735 SETTABLEKS                       R19 R18 K21 ["date"]
    15737 MOVE                             R19 R12
    15738 LOADK                            R20 K141 ["Description.ActionDisabled"]
    15739 DUPTABLE                         R21 K650 [{"userName", "roleName"}]
    15740 MOVE                             R23 R0
    15741 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15743 CALL                             R23 1 1
    15744 LOADK                            R24 K43 [""]
    15745 FASTCALL1                        TOSTRING R23 ; [+3]
    15746 MOVE                             R28 R23
    15747 GETIMPORT                        R27 K4 [tostring]
    15749 CALL                             R27 1 1
    15750 MOVE                             R25 R27
    15751 LOADK                            R26 K43 [""]
    15752 CONCAT                           R22 R24 R26
    15753 SETTABLEKS                       R22 R21 K332 ["userName"]
    15755 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15757 JUMPIFNOT                        R24 ; [+5]
    15758 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15760 GETTABLEKS                       R23 R24 K618 ["roleName"]
    15762 JUMPIF                           R23 ; [+1]
    15763 LOADK                            R23 K43 [""]
    15764 LOADK                            R24 K43 [""]
    15765 FASTCALL1                        TOSTRING R23 ; [+3]
    15766 MOVE                             R28 R23
    15767 GETIMPORT                        R27 K4 [tostring]
    15769 CALL                             R27 1 1
    15770 MOVE                             R25 R27
    15771 LOADK                            R26 K43 [""]
    15772 CONCAT                           R22 R24 R26
    15773 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15775 CALL                             R19 2 1
    15776 SETTABLEKS                       R19 R18 K22 ["translation"]
    15778 GETTABLEKS                       R19 R2 K14 ["userId"]
    15780 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15782 MOVE                             R19 R0
    15783 GETTABLEKS                       R20 R2 K14 ["userId"]
    15785 CALL                             R19 1 1
    15786 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15788 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15789 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15791 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15793 ORK                              R19 R20 K18 [0]
    15794 JUMP                             ; [0]
    15795 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15797 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15799 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15801 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15803 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15805 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15807 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15809 RETURN                           R18 1
    15810 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15812 JUMPIFNOTEQKN                    R18 K654 [138] ; [+85]
    15814 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15815 GETTABLEKS                       R19 R2 K19 ["id"]
    15817 SETTABLEKS                       R19 R18 K19 ["id"]
    15819 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
    15820 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15822 LOADK                            R19 K31 ["Unknown"]
    15823 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15825 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15827 GETIMPORT                        R21 K34 [pcall]
    15829 NEWCLOSURE                       R22 P6
    15830 CAPTURE                          VAL R20
    15831 CAPTURE                          VAL R3
    15832 CALL                             R21 1 2
    15833 JUMPIFNOT                        R21 ; [+2]
    15834 MOVE                             R19 R22
    15835 JUMP                             ; [+2]
    15836 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15837 JUMP                             ; [0]
    15838 SETTABLEKS                       R19 R18 K21 ["date"]
    15840 MOVE                             R19 R12
    15841 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
    15842 DUPTABLE                         R21 K658 [{"groupSettings"}]
    15843 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15845 JUMPIFNOT                        R24 ; [+5]
    15846 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15848 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15850 JUMPIF                           R23 ; [+1]
    15851 LOADK                            R23 K43 [""]
    15852 LOADK                            R24 K43 [""]
    15853 FASTCALL1                        TOSTRING R23 ; [+3]
    15854 MOVE                             R28 R23
    15855 GETIMPORT                        R27 K4 [tostring]
    15857 CALL                             R27 1 1
    15858 MOVE                             R25 R27
    15859 LOADK                            R26 K43 [""]
    15860 CONCAT                           R22 R24 R26
    15861 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15863 CALL                             R19 2 1
    15864 SETTABLEKS                       R19 R18 K22 ["translation"]
    15866 GETTABLEKS                       R19 R2 K14 ["userId"]
    15868 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15870 MOVE                             R19 R0
    15871 GETTABLEKS                       R20 R2 K14 ["userId"]
    15873 CALL                             R19 1 1
    15874 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15876 LOADK                            R19 K85 ["animation"]
    15877 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15879 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15881 ORK                              R19 R20 K18 [0]
    15882 JUMP                             ; [0]
    15883 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15885 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15887 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15889 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15891 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15893 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15895 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15897 RETURN                           R18 1
    15898 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15900 JUMPIFNOTEQKN                    R18 K659 [139] ; [+105]
    15902 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15903 GETTABLEKS                       R19 R2 K19 ["id"]
    15905 SETTABLEKS                       R19 R18 K19 ["id"]
    15907 LOADK                            R19 K148 [22]
    15908 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15910 LOADK                            R19 K31 ["Unknown"]
    15911 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15913 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15915 GETIMPORT                        R21 K34 [pcall]
    15917 NEWCLOSURE                       R22 P6
    15918 CAPTURE                          VAL R20
    15919 CAPTURE                          VAL R3
    15920 CALL                             R21 1 2
    15921 JUMPIFNOT                        R21 ; [+2]
    15922 MOVE                             R19 R22
    15923 JUMP                             ; [+2]
    15924 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15925 JUMP                             ; [0]
    15926 SETTABLEKS                       R19 R18 K21 ["date"]
    15928 MOVE                             R19 R12
    15929 LOADK                            R20 K149 ["SecuritySettingsThirdPartyTeleports"]
    15930 DUPTABLE                         R21 K663 [{"groupSettings", "newGroupName"}]
    15931 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15933 JUMPIFNOT                        R24 ; [+5]
    15934 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15936 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15938 JUMPIF                           R23 ; [+1]
    15939 LOADK                            R23 K43 [""]
    15940 LOADK                            R24 K43 [""]
    15941 FASTCALL1                        TOSTRING R23 ; [+3]
    15942 MOVE                             R28 R23
    15943 GETIMPORT                        R27 K4 [tostring]
    15945 CALL                             R27 1 1
    15946 MOVE                             R25 R27
    15947 LOADK                            R26 K43 [""]
    15948 CONCAT                           R22 R24 R26
    15949 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15951 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15953 JUMPIFNOT                        R24 ; [+5]
    15954 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15956 GETTABLEKS                       R23 R24 K662 ["newGroupName"]
    15958 JUMPIF                           R23 ; [+1]
    15959 LOADK                            R23 K43 [""]
    15960 LOADK                            R24 K43 [""]
    15961 FASTCALL1                        TOSTRING R23 ; [+3]
    15962 MOVE                             R28 R23
    15963 GETIMPORT                        R27 K4 [tostring]
    15965 CALL                             R27 1 1
    15966 MOVE                             R25 R27
    15967 LOADK                            R26 K43 [""]
    15968 CONCAT                           R22 R24 R26
    15969 SETTABLEKS                       R22 R21 K662 ["newGroupName"]
    15971 CALL                             R19 2 1
    15972 SETTABLEKS                       R19 R18 K22 ["translation"]
    15974 GETTABLEKS                       R19 R2 K14 ["userId"]
    15976 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15978 MOVE                             R19 R0
    15979 GETTABLEKS                       R20 R2 K14 ["userId"]
    15981 CALL                             R19 1 1
    15982 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15984 LOADK                            R19 K85 ["animation"]
    15985 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15987 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15989 ORK                              R19 R20 K18 [0]
    15990 JUMP                             ; [0]
    15991 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15993 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15995 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15997 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15999 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16001 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16003 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16005 RETURN                           R18 1
    16006 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16008 JUMPIFNOTEQKN                    R18 K664 [140] ; [+85]
    16010 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16011 GETTABLEKS                       R19 R2 K19 ["id"]
    16013 SETTABLEKS                       R19 R18 K19 ["id"]
    16015 LOADK                            R19 K153 ["Description.ExperienceShutDown"]
    16016 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16018 LOADK                            R19 K31 ["Unknown"]
    16019 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16021 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16023 GETIMPORT                        R21 K34 [pcall]
    16025 NEWCLOSURE                       R22 P6
    16026 CAPTURE                          VAL R20
    16027 CAPTURE                          VAL R3
    16028 CALL                             R21 1 2
    16029 JUMPIFNOT                        R21 ; [+2]
    16030 MOVE                             R19 R22
    16031 JUMP                             ; [+2]
    16032 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16033 JUMP                             ; [0]
    16034 SETTABLEKS                       R19 R18 K21 ["date"]
    16036 MOVE                             R19 R12
    16037 LOADK                            R20 K154 [24]
    16038 DUPTABLE                         R21 K658 [{"groupSettings"}]
    16039 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16041 JUMPIFNOT                        R24 ; [+5]
    16042 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16044 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    16046 JUMPIF                           R23 ; [+1]
    16047 LOADK                            R23 K43 [""]
    16048 LOADK                            R24 K43 [""]
    16049 FASTCALL1                        TOSTRING R23 ; [+3]
    16050 MOVE                             R28 R23
    16051 GETIMPORT                        R27 K4 [tostring]
    16053 CALL                             R27 1 1
    16054 MOVE                             R25 R27
    16055 LOADK                            R26 K43 [""]
    16056 CONCAT                           R22 R24 R26
    16057 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    16059 CALL                             R19 2 1
    16060 SETTABLEKS                       R19 R18 K22 ["translation"]
    16062 GETTABLEKS                       R19 R2 K14 ["userId"]
    16064 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16066 MOVE                             R19 R0
    16067 GETTABLEKS                       R20 R2 K14 ["userId"]
    16069 CALL                             R19 1 1
    16070 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16072 LOADK                            R19 K85 ["animation"]
    16073 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16075 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16077 ORK                              R19 R20 K18 [0]
    16078 JUMP                             ; [0]
    16079 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16081 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16083 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16085 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16087 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16089 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16091 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16093 RETURN                           R18 1
    16094 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16096 JUMPIFNOTEQKN                    R18 K667 [141] ; [+85]
    16098 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16099 GETTABLEKS                       R19 R2 K19 ["id"]
    16101 SETTABLEKS                       R19 R18 K19 ["id"]
    16103 LOADK                            R19 K156 ["Description.SocialLinksAdded"]
    16104 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16106 LOADK                            R19 K31 ["Unknown"]
    16107 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16109 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16111 GETIMPORT                        R21 K34 [pcall]
    16113 NEWCLOSURE                       R22 P6
    16114 CAPTURE                          VAL R20
    16115 CAPTURE                          VAL R3
    16116 CALL                             R21 1 2
    16117 JUMPIFNOT                        R21 ; [+2]
    16118 MOVE                             R19 R22
    16119 JUMP                             ; [+2]
    16120 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16121 JUMP                             ; [0]
    16122 SETTABLEKS                       R19 R18 K21 ["date"]
    16124 MOVE                             R19 R12
    16125 LOADK                            R20 K157 ["channel"]
    16126 DUPTABLE                         R21 K658 [{"groupSettings"}]
    16127 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16129 JUMPIFNOT                        R24 ; [+5]
    16130 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16132 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    16134 JUMPIF                           R23 ; [+1]
    16135 LOADK                            R23 K43 [""]
    16136 LOADK                            R24 K43 [""]
    16137 FASTCALL1                        TOSTRING R23 ; [+3]
    16138 MOVE                             R28 R23
    16139 GETIMPORT                        R27 K4 [tostring]
    16141 CALL                             R27 1 1
    16142 MOVE                             R25 R27
    16143 LOADK                            R26 K43 [""]
    16144 CONCAT                           R22 R24 R26
    16145 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    16147 CALL                             R19 2 1
    16148 SETTABLEKS                       R19 R18 K22 ["translation"]
    16150 GETTABLEKS                       R19 R2 K14 ["userId"]
    16152 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16154 MOVE                             R19 R0
    16155 GETTABLEKS                       R20 R2 K14 ["userId"]
    16157 CALL                             R19 1 1
    16158 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16160 LOADK                            R19 K85 ["animation"]
    16161 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16163 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16165 ORK                              R19 R20 K18 [0]
    16166 JUMP                             ; [0]
    16167 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16169 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16171 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16173 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16175 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16177 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16179 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16181 RETURN                           R18 1
    16182 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16184 JUMPIFNOTEQKN                    R18 K670 [142] ; [+85]
    16186 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16187 GETTABLEKS                       R19 R2 K19 ["id"]
    16189 SETTABLEKS                       R19 R18 K19 ["id"]
    16191 LOADK                            R19 K159 ["Channel"]
    16192 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16194 LOADK                            R19 K31 ["Unknown"]
    16195 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16197 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16199 GETIMPORT                        R21 K34 [pcall]
    16201 NEWCLOSURE                       R22 P6
    16202 CAPTURE                          VAL R20
    16203 CAPTURE                          VAL R3
    16204 CALL                             R21 1 2
    16205 JUMPIFNOT                        R21 ; [+2]
    16206 MOVE                             R19 R22
    16207 JUMP                             ; [+2]
    16208 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16209 JUMP                             ; [0]
    16210 SETTABLEKS                       R19 R18 K21 ["date"]
    16212 MOVE                             R19 R12
    16213 LOADK                            R20 K160 ["/social-links"]
    16214 DUPTABLE                         R21 K333 [{"userName"}]
    16215 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16217 JUMPIFNOT                        R24 ; [+5]
    16218 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16220 GETTABLEKS                       R23 R24 K332 ["userName"]
    16222 JUMPIF                           R23 ; [+1]
    16223 LOADK                            R23 K43 [""]
    16224 LOADK                            R24 K43 [""]
    16225 FASTCALL1                        TOSTRING R23 ; [+3]
    16226 MOVE                             R28 R23
    16227 GETIMPORT                        R27 K4 [tostring]
    16229 CALL                             R27 1 1
    16230 MOVE                             R25 R27
    16231 LOADK                            R26 K43 [""]
    16232 CONCAT                           R22 R24 R26
    16233 SETTABLEKS                       R22 R21 K332 ["userName"]
    16235 CALL                             R19 2 1
    16236 SETTABLEKS                       R19 R18 K22 ["translation"]
    16238 GETTABLEKS                       R19 R2 K14 ["userId"]
    16240 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16242 MOVE                             R19 R0
    16243 GETTABLEKS                       R20 R2 K14 ["userId"]
    16245 CALL                             R19 1 1
    16246 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16248 LOADK                            R19 K85 ["animation"]
    16249 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16251 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16253 ORK                              R19 R20 K18 [0]
    16254 JUMP                             ; [0]
    16255 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16257 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16259 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16261 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16263 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16265 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16267 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16269 RETURN                           R18 1
    16270 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16272 JUMPIFNOTEQKN                    R18 K673 [143] ; [+85]
    16274 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16275 GETTABLEKS                       R19 R2 K19 ["id"]
    16277 SETTABLEKS                       R19 R18 K19 ["id"]
    16279 LOADK                            R19 K162 ["SocialLinksRemoved"]
    16280 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16282 LOADK                            R19 K31 ["Unknown"]
    16283 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16285 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16287 GETIMPORT                        R21 K34 [pcall]
    16289 NEWCLOSURE                       R22 P6
    16290 CAPTURE                          VAL R20
    16291 CAPTURE                          VAL R3
    16292 CALL                             R21 1 2
    16293 JUMPIFNOT                        R21 ; [+2]
    16294 MOVE                             R19 R22
    16295 JUMP                             ; [+2]
    16296 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16297 JUMP                             ; [0]
    16298 SETTABLEKS                       R19 R18 K21 ["date"]
    16300 MOVE                             R19 R12
    16301 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
    16302 DUPTABLE                         R21 K333 [{"userName"}]
    16303 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16305 JUMPIFNOT                        R24 ; [+5]
    16306 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16308 GETTABLEKS                       R23 R24 K332 ["userName"]
    16310 JUMPIF                           R23 ; [+1]
    16311 LOADK                            R23 K43 [""]
    16312 LOADK                            R24 K43 [""]
    16313 FASTCALL1                        TOSTRING R23 ; [+3]
    16314 MOVE                             R28 R23
    16315 GETIMPORT                        R27 K4 [tostring]
    16317 CALL                             R27 1 1
    16318 MOVE                             R25 R27
    16319 LOADK                            R26 K43 [""]
    16320 CONCAT                           R22 R24 R26
    16321 SETTABLEKS                       R22 R21 K332 ["userName"]
    16323 CALL                             R19 2 1
    16324 SETTABLEKS                       R19 R18 K22 ["translation"]
    16326 GETTABLEKS                       R19 R2 K14 ["userId"]
    16328 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16330 MOVE                             R19 R0
    16331 GETTABLEKS                       R20 R2 K14 ["userId"]
    16333 CALL                             R19 1 1
    16334 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16336 LOADK                            R19 K85 ["animation"]
    16337 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16339 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16341 ORK                              R19 R20 K18 [0]
    16342 JUMP                             ; [0]
    16343 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16345 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16347 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16349 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16351 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16353 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16355 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16357 RETURN                           R18 1
    16358 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16360 JUMPIFNOTEQKN                    R18 K676 [144] ; [+85]
    16362 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16363 GETTABLEKS                       R19 R2 K19 ["id"]
    16365 SETTABLEKS                       R19 R18 K19 ["id"]
    16367 LOADK                            R19 K165 ["SocialLinksUpdated"]
    16368 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16370 LOADK                            R19 K31 ["Unknown"]
    16371 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16373 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16375 GETIMPORT                        R21 K34 [pcall]
    16377 NEWCLOSURE                       R22 P6
    16378 CAPTURE                          VAL R20
    16379 CAPTURE                          VAL R3
    16380 CALL                             R21 1 2
    16381 JUMPIFNOT                        R21 ; [+2]
    16382 MOVE                             R19 R22
    16383 JUMP                             ; [+2]
    16384 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16385 JUMP                             ; [0]
    16386 SETTABLEKS                       R19 R18 K21 ["date"]
    16388 MOVE                             R19 R12
    16389 LOADK                            R20 K166 ["Description.SocialLinksUpdated"]
    16390 DUPTABLE                         R21 K339 [{"groupName"}]
    16391 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16393 JUMPIFNOT                        R24 ; [+5]
    16394 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16396 GETTABLEKS                       R23 R24 K338 ["groupName"]
    16398 JUMPIF                           R23 ; [+1]
    16399 LOADK                            R23 K43 [""]
    16400 LOADK                            R24 K43 [""]
    16401 FASTCALL1                        TOSTRING R23 ; [+3]
    16402 MOVE                             R28 R23
    16403 GETIMPORT                        R27 K4 [tostring]
    16405 CALL                             R27 1 1
    16406 MOVE                             R25 R27
    16407 LOADK                            R26 K43 [""]
    16408 CONCAT                           R22 R24 R26
    16409 SETTABLEKS                       R22 R21 K338 ["groupName"]
    16411 CALL                             R19 2 1
    16412 SETTABLEKS                       R19 R18 K22 ["translation"]
    16414 GETTABLEKS                       R19 R2 K14 ["userId"]
    16416 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16418 MOVE                             R19 R0
    16419 GETTABLEKS                       R20 R2 K14 ["userId"]
    16421 CALL                             R19 1 1
    16422 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16424 LOADK                            R19 K85 ["animation"]
    16425 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16427 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16429 ORK                              R19 R20 K18 [0]
    16430 JUMP                             ; [0]
    16431 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16433 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16435 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16437 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16439 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16441 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16443 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16445 RETURN                           R18 1
    16446 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16448 JUMPIFNOTEQKN                    R18 K679 [145] ; [+77]
    16450 DUPTABLE                         R18 K681 [{"id", "eventType", "eventCategory", "date", "translation", "translationFunc", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "linkErrorHeader", "linkErrorBody"}]
    16451 GETTABLEKS                       R19 R2 K19 ["id"]
    16453 SETTABLEKS                       R19 R18 K19 ["id"]
    16455 LOADK                            R19 K170 [28]
    16456 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16458 LOADK                            R19 K171 ["WorldSettingsWorkSpaceGravity"]
    16459 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16461 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16463 GETIMPORT                        R21 K34 [pcall]
    16465 NEWCLOSURE                       R22 P6
    16466 CAPTURE                          VAL R20
    16467 CAPTURE                          VAL R3
    16468 CALL                             R21 1 2
    16469 JUMPIFNOT                        R21 ; [+2]
    16470 MOVE                             R19 R22
    16471 JUMP                             ; [+2]
    16472 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16473 JUMP                             ; [0]
    16474 SETTABLEKS                       R19 R18 K21 ["date"]
    16476 LOADK                            R19 K43 [""]
    16477 SETTABLEKS                       R19 R18 K22 ["translation"]
    16479 NEWCLOSURE                       R19 P8
    16480 CAPTURE                          VAL R16
    16481 CAPTURE                          VAL R2
    16482 SETTABLEKS                       R19 R18 K680 ["translationFunc"]
    16484 GETTABLEKS                       R19 R2 K14 ["userId"]
    16486 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16488 MOVE                             R19 R0
    16489 GETTABLEKS                       R20 R2 K14 ["userId"]
    16491 CALL                             R19 1 1
    16492 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16494 LOADK                            R19 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    16495 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16497 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16499 ORK                              R19 R20 K18 [0]
    16500 JUMP                             ; [0]
    16501 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16503 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16505 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16507 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16509 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16511 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16513 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16515 MOVE                             R19 R12
    16516 LOADK                            R20 K173 ["gravity"]
    16517 CALL                             R19 1 1
    16518 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    16520 MOVE                             R19 R12
    16521 LOADK                            R20 K174 [{"gravity"}]
    16522 CALL                             R19 1 1
    16523 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    16525 RETURN                           R18 1
    16526 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16528 JUMPIFNOTEQKN                    R18 K687 [146] ; [+66]
    16530 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16531 GETTABLEKS                       R19 R2 K19 ["id"]
    16533 SETTABLEKS                       R19 R18 K19 ["id"]
    16535 LOADK                            R19 K176 [29]
    16536 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16538 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    16539 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16541 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16543 GETIMPORT                        R21 K34 [pcall]
    16545 NEWCLOSURE                       R22 P6
    16546 CAPTURE                          VAL R20
    16547 CAPTURE                          VAL R3
    16548 CALL                             R21 1 2
    16549 JUMPIFNOT                        R21 ; [+2]
    16550 MOVE                             R19 R22
    16551 JUMP                             ; [+2]
    16552 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16553 JUMP                             ; [0]
    16554 SETTABLEKS                       R19 R18 K21 ["date"]
    16556 MOVE                             R19 R17
    16557 GETTABLEKS                       R20 R2 K41 ["metaData"]
    16559 LOADK                            R21 K177 ["WorldSettingsJumpHeight"]
    16560 LOADK                            R22 K178 ["Description.WorldSettingsJumpHeight"]
    16561 CALL                             R19 3 1
    16562 SETTABLEKS                       R19 R18 K22 ["translation"]
    16564 GETTABLEKS                       R19 R2 K14 ["userId"]
    16566 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16568 MOVE                             R19 R0
    16569 GETTABLEKS                       R20 R2 K14 ["userId"]
    16571 CALL                             R19 1 1
    16572 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16574 LOADK                            R19 K37 ["Universe"]
    16575 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16577 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16579 JUMP                             ; [0]
    16580 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16582 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16584 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16586 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16588 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16590 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16592 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16594 RETURN                           R18 1
    16595 DUPTABLE                         R18 K691 [{"id", "universeId", "eventType", "date", "translation", "actorId", "actorName", "iconId", "iconType", "eventCategory"}]
    16596 GETIMPORT                        R20 K694 [math.random]
    16598 CALL                             R20 0 -1
    16599 FASTCALL                         TOSTRING ; [+2]
    16600 GETIMPORT                        R19 K4 [tostring]
    16602 CALL                             R19 -1 1
    16603 SETTABLEKS                       R19 R18 K19 ["id"]
    16605 LOADN                            R19 0
    16606 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16608 LOADK                            R19 K31 ["Unknown"]
    16609 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16611 LOADK                            R19 K43 [""]
    16612 SETTABLEKS                       R19 R18 K21 ["date"]
    16614 LOADK                            R19 K183 ["WorldSettingsJumpPower"]
    16615 SETTABLEKS                       R19 R18 K22 ["translation"]
    16617 LOADN                            R19 0
    16618 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16620 LOADK                            R19 K184 ["Description.WorldSettingsJumpPower"]
    16621 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16623 LOADN                            R19 0
    16624 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16626 LOADK                            R19 K31 ["Unknown"]
    16627 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16629 LOADK                            R19 K43 [""]
    16630 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16632 RETURN                           R18 1

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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["SharedTypes"]
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
