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
      135 JUMPIFNOTEQKN                    R18 K18 [0] ; [+61]
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
      158 JUMP                             ; [+1]
      159 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      160 SETTABLEKS                       R19 R18 K21 ["date"]
      162 MOVE                             R19 R12
      163 LOADK                            R20 K36 ["Description.Init"]
      164 CALL                             R19 1 1
      165 SETTABLEKS                       R19 R18 K22 ["translation"]
      167 GETTABLEKS                       R19 R2 K14 ["userId"]
      169 SETTABLEKS                       R19 R18 K23 ["actorId"]
      171 MOVE                             R19 R0
      172 GETTABLEKS                       R20 R2 K14 ["userId"]
      174 CALL                             R19 1 1
      175 SETTABLEKS                       R19 R18 K24 ["actorName"]
      177 LOADK                            R19 K37 ["Universe"]
      178 SETTABLEKS                       R19 R18 K25 ["iconType"]
      180 GETTABLEKS                       R19 R2 K2 ["universeId"]
      182 SETTABLEKS                       R19 R18 K26 ["iconId"]
      184 GETTABLEKS                       R19 R2 K2 ["universeId"]
      186 SETTABLEKS                       R19 R18 K2 ["universeId"]
      188 GETTABLEKS                       R19 R2 K27 ["headerText"]
      190 SETTABLEKS                       R19 R18 K27 ["headerText"]
      192 GETTABLEKS                       R19 R2 K28 ["footerText"]
      194 SETTABLEKS                       R19 R18 K28 ["footerText"]
      196 RETURN                           R18 1
      197 GETTABLEKS                       R18 R2 K17 ["eventType"]
      199 JUMPIFNOTEQKN                    R18 K38 [1] ; [+88]
      201 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      202 GETTABLEKS                       R19 R2 K19 ["id"]
      204 SETTABLEKS                       R19 R18 K19 ["id"]
      206 LOADK                            R19 K39 ["ArchivedExperience"]
      207 SETTABLEKS                       R19 R18 K17 ["eventType"]
      209 LOADK                            R19 K40 ["Experience"]
      210 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      212 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      214 GETIMPORT                        R21 K34 [pcall]
      216 NEWCLOSURE                       R22 P6
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R3
      219 CALL                             R21 1 2
      220 JUMPIFNOT                        R21 ; [+2]
      221 MOVE                             R19 R22
      222 JUMP                             ; [+1]
      223 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      224 SETTABLEKS                       R19 R18 K21 ["date"]
      226 GETTABLEKS                       R22 R2 K41 ["metaData"]
      228 JUMPIFNOT                        R22 ; [+5]
      229 GETTABLEKS                       R22 R2 K41 ["metaData"]
      231 GETTABLEKS                       R21 R22 K42 ["Action"]
      233 JUMPIF                           R21 ; [+1]
      234 LOADK                            R21 K43 [""]
      235 GETIMPORT                        R22 K46 [string.lower]
      237 FASTCALL1                        TOSTRING R21 ; [+3]
      238 MOVE                             R24 R21
      239 GETIMPORT                        R23 K4 [tostring]
      241 CALL                             R23 1 1
      242 CALL                             R22 1 1
      243 JUMPIFNOTEQKS                    R22 K47 ["true"] ; [+3]
      245 LOADB                            R20 1
      246 JUMP                             ; [+1]
      247 LOADB                            R20 0
      248 JUMPIFNOT                        R20 ; [+4]
      249 MOVE                             R19 R12
      250 LOADK                            R20 K48 ["Description.ArchivedExperience"]
      251 CALL                             R19 1 1
      252 JUMPIF                           R19 ; [+3]
      253 MOVE                             R19 R12
      254 LOADK                            R20 K49 ["Description.RestoredExperience"]
      255 CALL                             R19 1 1
      256 SETTABLEKS                       R19 R18 K22 ["translation"]
      258 GETTABLEKS                       R19 R2 K14 ["userId"]
      260 SETTABLEKS                       R19 R18 K23 ["actorId"]
      262 MOVE                             R19 R0
      263 GETTABLEKS                       R20 R2 K14 ["userId"]
      265 CALL                             R19 1 1
      266 SETTABLEKS                       R19 R18 K24 ["actorName"]
      268 LOADK                            R19 K37 ["Universe"]
      269 SETTABLEKS                       R19 R18 K25 ["iconType"]
      271 GETTABLEKS                       R19 R2 K2 ["universeId"]
      273 SETTABLEKS                       R19 R18 K26 ["iconId"]
      275 GETTABLEKS                       R19 R2 K2 ["universeId"]
      277 SETTABLEKS                       R19 R18 K2 ["universeId"]
      279 GETTABLEKS                       R19 R2 K27 ["headerText"]
      281 SETTABLEKS                       R19 R18 K27 ["headerText"]
      283 GETTABLEKS                       R19 R2 K28 ["footerText"]
      285 SETTABLEKS                       R19 R18 K28 ["footerText"]
      287 RETURN                           R18 1
      288 GETTABLEKS                       R18 R2 K17 ["eventType"]
      290 JUMPIFNOTEQKN                    R18 K50 [2] ; [+109]
      292 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      293 GETTABLEKS                       R19 R2 K19 ["id"]
      295 SETTABLEKS                       R19 R18 K19 ["id"]
      297 LOADK                            R19 K53 ["PlayabilityChanged"]
      298 SETTABLEKS                       R19 R18 K17 ["eventType"]
      300 LOADK                            R19 K40 ["Experience"]
      301 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      303 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      305 GETIMPORT                        R21 K34 [pcall]
      307 NEWCLOSURE                       R22 P6
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R3
      310 CALL                             R21 1 2
      311 JUMPIFNOT                        R21 ; [+2]
      312 MOVE                             R19 R22
      313 JUMP                             ; [+1]
      314 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      315 SETTABLEKS                       R19 R18 K21 ["date"]
      317 MOVE                             R19 R12
      318 LOADK                            R20 K54 ["Description.PlayabilityChanged"]
      319 DUPTABLE                         R21 K56 [{"playability"}]
      320 GETTABLEKS                       R23 R2 K41 ["metaData"]
      322 GETTABLEKS                       R26 R2 K41 ["metaData"]
      324 GETTABLEKS                       R25 R26 K57 ["Playability"]
      326 JUMPIFNOTEQKS                    R25 K58 ["Public"] ; [+5]
      328 MOVE                             R24 R12
      329 LOADK                            R25 K59 ["Description.ActionPublic"]
      330 CALL                             R24 1 1
      331 JUMPIF                           R24 ; [+13]
      332 GETTABLEKS                       R26 R2 K41 ["metaData"]
      334 GETTABLEKS                       R25 R26 K57 ["Playability"]
      336 JUMPIFNOTEQKS                    R25 K60 ["Private"] ; [+5]
      338 MOVE                             R24 R12
      339 LOADK                            R25 K61 ["Description.ActionPrivate"]
      340 CALL                             R24 1 1
      341 JUMPIF                           R24 ; [+3]
      342 MOVE                             R24 R12
      343 LOADK                            R25 K62 ["Description.ActionFriends"]
      344 CALL                             R24 1 1
      345 LOADK                            R25 K43 [""]
      346 FASTCALL1                        TOSTRING R24 ; [+3]
      347 MOVE                             R29 R24
      348 GETIMPORT                        R28 K4 [tostring]
      350 CALL                             R28 1 1
      351 MOVE                             R26 R28
      352 LOADK                            R27 K43 [""]
      353 CONCAT                           R22 R25 R27
      354 SETTABLEKS                       R22 R21 K55 ["playability"]
      356 CALL                             R19 2 1
      357 SETTABLEKS                       R19 R18 K22 ["translation"]
      359 GETTABLEKS                       R19 R2 K14 ["userId"]
      361 SETTABLEKS                       R19 R18 K23 ["actorId"]
      363 MOVE                             R19 R0
      364 GETTABLEKS                       R20 R2 K14 ["userId"]
      366 CALL                             R19 1 1
      367 SETTABLEKS                       R19 R18 K24 ["actorName"]
      369 LOADK                            R19 K37 ["Universe"]
      370 SETTABLEKS                       R19 R18 K25 ["iconType"]
      372 GETTABLEKS                       R19 R2 K2 ["universeId"]
      374 SETTABLEKS                       R19 R18 K26 ["iconId"]
      376 GETTABLEKS                       R19 R2 K2 ["universeId"]
      378 SETTABLEKS                       R19 R18 K2 ["universeId"]
      380 GETTABLEKS                       R19 R2 K27 ["headerText"]
      382 SETTABLEKS                       R19 R18 K27 ["headerText"]
      384 GETTABLEKS                       R19 R2 K28 ["footerText"]
      386 SETTABLEKS                       R19 R18 K28 ["footerText"]
      388 LOADK                            R20 K43 [""]
      389 FASTCALL1                        TOSTRING R4 ; [+3]
      390 MOVE                             R24 R4
      391 GETIMPORT                        R23 K4 [tostring]
      393 CALL                             R23 1 1
      394 MOVE                             R21 R23
      395 LOADK                            R22 K11 ["/configure"]
      396 CONCAT                           R19 R20 R22
      397 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      399 RETURN                           R18 1
      400 GETTABLEKS                       R18 R2 K17 ["eventType"]
      402 JUMPIFNOTEQKN                    R18 K63 [3] ; [+93]
      404 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      405 GETTABLEKS                       R19 R2 K19 ["id"]
      407 SETTABLEKS                       R19 R18 K19 ["id"]
      409 LOADK                            R19 K64 ["NotificationStringCreated"]
      410 SETTABLEKS                       R19 R18 K17 ["eventType"]
      412 LOADK                            R19 K40 ["Experience"]
      413 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      415 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      417 GETIMPORT                        R21 K34 [pcall]
      419 NEWCLOSURE                       R22 P6
      420 CAPTURE                          VAL R20
      421 CAPTURE                          VAL R3
      422 CALL                             R21 1 2
      423 JUMPIFNOT                        R21 ; [+2]
      424 MOVE                             R19 R22
      425 JUMP                             ; [+1]
      426 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      427 SETTABLEKS                       R19 R18 K21 ["date"]
      429 MOVE                             R19 R12
      430 LOADK                            R20 K65 ["Description.NotificationStringCreated"]
      431 DUPTABLE                         R21 K67 [{"stringName"}]
      432 GETTABLEKS                       R24 R2 K41 ["metaData"]
      434 JUMPIFNOT                        R24 ; [+5]
      435 GETTABLEKS                       R24 R2 K41 ["metaData"]
      437 GETTABLEKS                       R23 R24 K68 ["StringName"]
      439 JUMPIF                           R23 ; [+1]
      440 LOADK                            R23 K43 [""]
      441 LOADK                            R24 K43 [""]
      442 FASTCALL1                        TOSTRING R23 ; [+3]
      443 MOVE                             R28 R23
      444 GETIMPORT                        R27 K4 [tostring]
      446 CALL                             R27 1 1
      447 MOVE                             R25 R27
      448 LOADK                            R26 K43 [""]
      449 CONCAT                           R22 R24 R26
      450 SETTABLEKS                       R22 R21 K66 ["stringName"]
      452 CALL                             R19 2 1
      453 SETTABLEKS                       R19 R18 K22 ["translation"]
      455 GETTABLEKS                       R19 R2 K14 ["userId"]
      457 SETTABLEKS                       R19 R18 K23 ["actorId"]
      459 MOVE                             R19 R0
      460 GETTABLEKS                       R20 R2 K14 ["userId"]
      462 CALL                             R19 1 1
      463 SETTABLEKS                       R19 R18 K24 ["actorName"]
      465 LOADK                            R19 K37 ["Universe"]
      466 SETTABLEKS                       R19 R18 K25 ["iconType"]
      468 GETTABLEKS                       R19 R2 K2 ["universeId"]
      470 SETTABLEKS                       R19 R18 K26 ["iconId"]
      472 GETTABLEKS                       R19 R2 K2 ["universeId"]
      474 SETTABLEKS                       R19 R18 K2 ["universeId"]
      476 GETTABLEKS                       R19 R2 K27 ["headerText"]
      478 SETTABLEKS                       R19 R18 K27 ["headerText"]
      480 GETTABLEKS                       R19 R2 K28 ["footerText"]
      482 SETTABLEKS                       R19 R18 K28 ["footerText"]
      484 LOADK                            R20 K43 [""]
      485 FASTCALL1                        TOSTRING R4 ; [+3]
      486 MOVE                             R24 R4
      487 GETIMPORT                        R23 K4 [tostring]
      489 CALL                             R23 1 1
      490 MOVE                             R21 R23
      491 LOADK                            R22 K69 ["/notifications"]
      492 CONCAT                           R19 R20 R22
      493 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      495 RETURN                           R18 1
      496 GETTABLEKS                       R18 R2 K17 ["eventType"]
      498 JUMPIFNOTEQKN                    R18 K70 [4] ; [+93]
      500 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      501 GETTABLEKS                       R19 R2 K19 ["id"]
      503 SETTABLEKS                       R19 R18 K19 ["id"]
      505 LOADK                            R19 K71 ["NotificationStringDeleted"]
      506 SETTABLEKS                       R19 R18 K17 ["eventType"]
      508 LOADK                            R19 K40 ["Experience"]
      509 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      511 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      513 GETIMPORT                        R21 K34 [pcall]
      515 NEWCLOSURE                       R22 P6
      516 CAPTURE                          VAL R20
      517 CAPTURE                          VAL R3
      518 CALL                             R21 1 2
      519 JUMPIFNOT                        R21 ; [+2]
      520 MOVE                             R19 R22
      521 JUMP                             ; [+1]
      522 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      523 SETTABLEKS                       R19 R18 K21 ["date"]
      525 MOVE                             R19 R12
      526 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
      527 DUPTABLE                         R21 K67 [{"stringName"}]
      528 GETTABLEKS                       R24 R2 K41 ["metaData"]
      530 JUMPIFNOT                        R24 ; [+5]
      531 GETTABLEKS                       R24 R2 K41 ["metaData"]
      533 GETTABLEKS                       R23 R24 K68 ["StringName"]
      535 JUMPIF                           R23 ; [+1]
      536 LOADK                            R23 K43 [""]
      537 LOADK                            R24 K43 [""]
      538 FASTCALL1                        TOSTRING R23 ; [+3]
      539 MOVE                             R28 R23
      540 GETIMPORT                        R27 K4 [tostring]
      542 CALL                             R27 1 1
      543 MOVE                             R25 R27
      544 LOADK                            R26 K43 [""]
      545 CONCAT                           R22 R24 R26
      546 SETTABLEKS                       R22 R21 K66 ["stringName"]
      548 CALL                             R19 2 1
      549 SETTABLEKS                       R19 R18 K22 ["translation"]
      551 GETTABLEKS                       R19 R2 K14 ["userId"]
      553 SETTABLEKS                       R19 R18 K23 ["actorId"]
      555 MOVE                             R19 R0
      556 GETTABLEKS                       R20 R2 K14 ["userId"]
      558 CALL                             R19 1 1
      559 SETTABLEKS                       R19 R18 K24 ["actorName"]
      561 LOADK                            R19 K37 ["Universe"]
      562 SETTABLEKS                       R19 R18 K25 ["iconType"]
      564 GETTABLEKS                       R19 R2 K2 ["universeId"]
      566 SETTABLEKS                       R19 R18 K26 ["iconId"]
      568 GETTABLEKS                       R19 R2 K2 ["universeId"]
      570 SETTABLEKS                       R19 R18 K2 ["universeId"]
      572 GETTABLEKS                       R19 R2 K27 ["headerText"]
      574 SETTABLEKS                       R19 R18 K27 ["headerText"]
      576 GETTABLEKS                       R19 R2 K28 ["footerText"]
      578 SETTABLEKS                       R19 R18 K28 ["footerText"]
      580 LOADK                            R20 K43 [""]
      581 FASTCALL1                        TOSTRING R4 ; [+3]
      582 MOVE                             R24 R4
      583 GETIMPORT                        R23 K4 [tostring]
      585 CALL                             R23 1 1
      586 MOVE                             R21 R23
      587 LOADK                            R22 K69 ["/notifications"]
      588 CONCAT                           R19 R20 R22
      589 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      591 RETURN                           R18 1
      592 GETTABLEKS                       R18 R2 K17 ["eventType"]
      594 JUMPIFNOTEQKN                    R18 K73 [5] ; [+93]
      596 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
      597 GETTABLEKS                       R19 R2 K19 ["id"]
      599 SETTABLEKS                       R19 R18 K19 ["id"]
      601 LOADK                            R19 K74 ["NotificationStringUpdated"]
      602 SETTABLEKS                       R19 R18 K17 ["eventType"]
      604 LOADK                            R19 K40 ["Experience"]
      605 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      607 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      609 GETIMPORT                        R21 K34 [pcall]
      611 NEWCLOSURE                       R22 P6
      612 CAPTURE                          VAL R20
      613 CAPTURE                          VAL R3
      614 CALL                             R21 1 2
      615 JUMPIFNOT                        R21 ; [+2]
      616 MOVE                             R19 R22
      617 JUMP                             ; [+1]
      618 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      619 SETTABLEKS                       R19 R18 K21 ["date"]
      621 MOVE                             R19 R12
      622 LOADK                            R20 K75 ["Description.NotificationStringUpdated"]
      623 DUPTABLE                         R21 K67 [{"stringName"}]
      624 GETTABLEKS                       R24 R2 K41 ["metaData"]
      626 JUMPIFNOT                        R24 ; [+5]
      627 GETTABLEKS                       R24 R2 K41 ["metaData"]
      629 GETTABLEKS                       R23 R24 K68 ["StringName"]
      631 JUMPIF                           R23 ; [+1]
      632 LOADK                            R23 K43 [""]
      633 LOADK                            R24 K43 [""]
      634 FASTCALL1                        TOSTRING R23 ; [+3]
      635 MOVE                             R28 R23
      636 GETIMPORT                        R27 K4 [tostring]
      638 CALL                             R27 1 1
      639 MOVE                             R25 R27
      640 LOADK                            R26 K43 [""]
      641 CONCAT                           R22 R24 R26
      642 SETTABLEKS                       R22 R21 K66 ["stringName"]
      644 CALL                             R19 2 1
      645 SETTABLEKS                       R19 R18 K22 ["translation"]
      647 GETTABLEKS                       R19 R2 K14 ["userId"]
      649 SETTABLEKS                       R19 R18 K23 ["actorId"]
      651 MOVE                             R19 R0
      652 GETTABLEKS                       R20 R2 K14 ["userId"]
      654 CALL                             R19 1 1
      655 SETTABLEKS                       R19 R18 K24 ["actorName"]
      657 LOADK                            R19 K37 ["Universe"]
      658 SETTABLEKS                       R19 R18 K25 ["iconType"]
      660 GETTABLEKS                       R19 R2 K2 ["universeId"]
      662 SETTABLEKS                       R19 R18 K26 ["iconId"]
      664 GETTABLEKS                       R19 R2 K2 ["universeId"]
      666 SETTABLEKS                       R19 R18 K2 ["universeId"]
      668 GETTABLEKS                       R19 R2 K27 ["headerText"]
      670 SETTABLEKS                       R19 R18 K27 ["headerText"]
      672 GETTABLEKS                       R19 R2 K28 ["footerText"]
      674 SETTABLEKS                       R19 R18 K28 ["footerText"]
      676 LOADK                            R20 K43 [""]
      677 FASTCALL1                        TOSTRING R4 ; [+3]
      678 MOVE                             R24 R4
      679 GETIMPORT                        R23 K4 [tostring]
      681 CALL                             R23 1 1
      682 MOVE                             R21 R23
      683 LOADK                            R22 K69 ["/notifications"]
      684 CONCAT                           R19 R20 R22
      685 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
      687 RETURN                           R18 1
      688 GETTABLEKS                       R18 R2 K17 ["eventType"]
      690 JUMPIFNOTEQKN                    R18 K76 [6] ; [+82]
      692 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      693 GETTABLEKS                       R19 R2 K19 ["id"]
      695 SETTABLEKS                       R19 R18 K19 ["id"]
      697 LOADK                            R19 K77 ["AvatarSettingsAvatarType"]
      698 SETTABLEKS                       R19 R18 K17 ["eventType"]
      700 LOADK                            R19 K40 ["Experience"]
      701 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      703 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      705 GETIMPORT                        R21 K34 [pcall]
      707 NEWCLOSURE                       R22 P6
      708 CAPTURE                          VAL R20
      709 CAPTURE                          VAL R3
      710 CALL                             R21 1 2
      711 JUMPIFNOT                        R21 ; [+2]
      712 MOVE                             R19 R22
      713 JUMP                             ; [+1]
      714 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      715 SETTABLEKS                       R19 R18 K21 ["date"]
      717 MOVE                             R19 R12
      718 LOADK                            R20 K78 ["Description.AvatarSettingsAvatarType"]
      719 DUPTABLE                         R21 K80 [{"avatarType"}]
      720 GETTABLEKS                       R24 R2 K41 ["metaData"]
      722 JUMPIFNOT                        R24 ; [+5]
      723 GETTABLEKS                       R24 R2 K41 ["metaData"]
      725 GETTABLEKS                       R23 R24 K81 ["AvatarType"]
      727 JUMPIF                           R23 ; [+1]
      728 LOADK                            R23 K43 [""]
      729 LOADK                            R24 K43 [""]
      730 FASTCALL1                        TOSTRING R23 ; [+3]
      731 MOVE                             R28 R23
      732 GETIMPORT                        R27 K4 [tostring]
      734 CALL                             R27 1 1
      735 MOVE                             R25 R27
      736 LOADK                            R26 K43 [""]
      737 CONCAT                           R22 R24 R26
      738 SETTABLEKS                       R22 R21 K79 ["avatarType"]
      740 CALL                             R19 2 1
      741 SETTABLEKS                       R19 R18 K22 ["translation"]
      743 GETTABLEKS                       R19 R2 K14 ["userId"]
      745 SETTABLEKS                       R19 R18 K23 ["actorId"]
      747 MOVE                             R19 R0
      748 GETTABLEKS                       R20 R2 K14 ["userId"]
      750 CALL                             R19 1 1
      751 SETTABLEKS                       R19 R18 K24 ["actorName"]
      753 LOADK                            R19 K37 ["Universe"]
      754 SETTABLEKS                       R19 R18 K25 ["iconType"]
      756 GETTABLEKS                       R19 R2 K2 ["universeId"]
      758 SETTABLEKS                       R19 R18 K26 ["iconId"]
      760 GETTABLEKS                       R19 R2 K2 ["universeId"]
      762 SETTABLEKS                       R19 R18 K2 ["universeId"]
      764 GETTABLEKS                       R19 R2 K27 ["headerText"]
      766 SETTABLEKS                       R19 R18 K27 ["headerText"]
      768 GETTABLEKS                       R19 R2 K28 ["footerText"]
      770 SETTABLEKS                       R19 R18 K28 ["footerText"]
      772 RETURN                           R18 1
      773 GETTABLEKS                       R18 R2 K17 ["eventType"]
      775 JUMPIFNOTEQKN                    R18 K82 [7] ; [+82]
      777 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      778 GETTABLEKS                       R19 R2 K19 ["id"]
      780 SETTABLEKS                       R19 R18 K19 ["id"]
      782 LOADK                            R19 K83 ["AvatarSettingsAnimation"]
      783 SETTABLEKS                       R19 R18 K17 ["eventType"]
      785 LOADK                            R19 K40 ["Experience"]
      786 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      788 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      790 GETIMPORT                        R21 K34 [pcall]
      792 NEWCLOSURE                       R22 P6
      793 CAPTURE                          VAL R20
      794 CAPTURE                          VAL R3
      795 CALL                             R21 1 2
      796 JUMPIFNOT                        R21 ; [+2]
      797 MOVE                             R19 R22
      798 JUMP                             ; [+1]
      799 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      800 SETTABLEKS                       R19 R18 K21 ["date"]
      802 MOVE                             R19 R12
      803 LOADK                            R20 K84 ["Description.AvatarSettingsAnimation"]
      804 DUPTABLE                         R21 K86 [{"animation"}]
      805 GETTABLEKS                       R24 R2 K41 ["metaData"]
      807 JUMPIFNOT                        R24 ; [+5]
      808 GETTABLEKS                       R24 R2 K41 ["metaData"]
      810 GETTABLEKS                       R23 R24 K87 ["Animation"]
      812 JUMPIF                           R23 ; [+1]
      813 LOADK                            R23 K43 [""]
      814 LOADK                            R24 K43 [""]
      815 FASTCALL1                        TOSTRING R23 ; [+3]
      816 MOVE                             R28 R23
      817 GETIMPORT                        R27 K4 [tostring]
      819 CALL                             R27 1 1
      820 MOVE                             R25 R27
      821 LOADK                            R26 K43 [""]
      822 CONCAT                           R22 R24 R26
      823 SETTABLEKS                       R22 R21 K85 ["animation"]
      825 CALL                             R19 2 1
      826 SETTABLEKS                       R19 R18 K22 ["translation"]
      828 GETTABLEKS                       R19 R2 K14 ["userId"]
      830 SETTABLEKS                       R19 R18 K23 ["actorId"]
      832 MOVE                             R19 R0
      833 GETTABLEKS                       R20 R2 K14 ["userId"]
      835 CALL                             R19 1 1
      836 SETTABLEKS                       R19 R18 K24 ["actorName"]
      838 LOADK                            R19 K37 ["Universe"]
      839 SETTABLEKS                       R19 R18 K25 ["iconType"]
      841 GETTABLEKS                       R19 R2 K2 ["universeId"]
      843 SETTABLEKS                       R19 R18 K26 ["iconId"]
      845 GETTABLEKS                       R19 R2 K2 ["universeId"]
      847 SETTABLEKS                       R19 R18 K2 ["universeId"]
      849 GETTABLEKS                       R19 R2 K27 ["headerText"]
      851 SETTABLEKS                       R19 R18 K27 ["headerText"]
      853 GETTABLEKS                       R19 R2 K28 ["footerText"]
      855 SETTABLEKS                       R19 R18 K28 ["footerText"]
      857 RETURN                           R18 1
      858 GETTABLEKS                       R18 R2 K17 ["eventType"]
      860 JUMPIFNOTEQKN                    R18 K88 [8] ; [+82]
      862 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      863 GETTABLEKS                       R19 R2 K19 ["id"]
      865 SETTABLEKS                       R19 R18 K19 ["id"]
      867 LOADK                            R19 K89 ["AvatarSettingsCollision"]
      868 SETTABLEKS                       R19 R18 K17 ["eventType"]
      870 LOADK                            R19 K40 ["Experience"]
      871 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      873 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      875 GETIMPORT                        R21 K34 [pcall]
      877 NEWCLOSURE                       R22 P6
      878 CAPTURE                          VAL R20
      879 CAPTURE                          VAL R3
      880 CALL                             R21 1 2
      881 JUMPIFNOT                        R21 ; [+2]
      882 MOVE                             R19 R22
      883 JUMP                             ; [+1]
      884 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      885 SETTABLEKS                       R19 R18 K21 ["date"]
      887 MOVE                             R19 R12
      888 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
      889 DUPTABLE                         R21 K92 [{"collision"}]
      890 GETTABLEKS                       R24 R2 K41 ["metaData"]
      892 JUMPIFNOT                        R24 ; [+5]
      893 GETTABLEKS                       R24 R2 K41 ["metaData"]
      895 GETTABLEKS                       R23 R24 K93 ["Collision"]
      897 JUMPIF                           R23 ; [+1]
      898 LOADK                            R23 K43 [""]
      899 LOADK                            R24 K43 [""]
      900 FASTCALL1                        TOSTRING R23 ; [+3]
      901 MOVE                             R28 R23
      902 GETIMPORT                        R27 K4 [tostring]
      904 CALL                             R27 1 1
      905 MOVE                             R25 R27
      906 LOADK                            R26 K43 [""]
      907 CONCAT                           R22 R24 R26
      908 SETTABLEKS                       R22 R21 K91 ["collision"]
      910 CALL                             R19 2 1
      911 SETTABLEKS                       R19 R18 K22 ["translation"]
      913 GETTABLEKS                       R19 R2 K14 ["userId"]
      915 SETTABLEKS                       R19 R18 K23 ["actorId"]
      917 MOVE                             R19 R0
      918 GETTABLEKS                       R20 R2 K14 ["userId"]
      920 CALL                             R19 1 1
      921 SETTABLEKS                       R19 R18 K24 ["actorName"]
      923 LOADK                            R19 K37 ["Universe"]
      924 SETTABLEKS                       R19 R18 K25 ["iconType"]
      926 GETTABLEKS                       R19 R2 K2 ["universeId"]
      928 SETTABLEKS                       R19 R18 K26 ["iconId"]
      930 GETTABLEKS                       R19 R2 K2 ["universeId"]
      932 SETTABLEKS                       R19 R18 K2 ["universeId"]
      934 GETTABLEKS                       R19 R2 K27 ["headerText"]
      936 SETTABLEKS                       R19 R18 K27 ["headerText"]
      938 GETTABLEKS                       R19 R2 K28 ["footerText"]
      940 SETTABLEKS                       R19 R18 K28 ["footerText"]
      942 RETURN                           R18 1
      943 GETTABLEKS                       R18 R2 K17 ["eventType"]
      945 JUMPIFNOTEQKN                    R18 K94 [9] ; [+82]
      947 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
      948 GETTABLEKS                       R19 R2 K19 ["id"]
      950 SETTABLEKS                       R19 R18 K19 ["id"]
      952 LOADK                            R19 K95 ["AvatarSettingsScaleHeight"]
      953 SETTABLEKS                       R19 R18 K17 ["eventType"]
      955 LOADK                            R19 K40 ["Experience"]
      956 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
      958 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
      960 GETIMPORT                        R21 K34 [pcall]
      962 NEWCLOSURE                       R22 P6
      963 CAPTURE                          VAL R20
      964 CAPTURE                          VAL R3
      965 CALL                             R21 1 2
      966 JUMPIFNOT                        R21 ; [+2]
      967 MOVE                             R19 R22
      968 JUMP                             ; [+1]
      969 LOADK                            R19 K35 ["🤷🏻‍♀️"]
      970 SETTABLEKS                       R19 R18 K21 ["date"]
      972 MOVE                             R19 R12
      973 LOADK                            R20 K96 ["Description.AvatarSettingsScaleHeight"]
      974 DUPTABLE                         R21 K98 [{"scale"}]
      975 GETTABLEKS                       R24 R2 K41 ["metaData"]
      977 JUMPIFNOT                        R24 ; [+5]
      978 GETTABLEKS                       R24 R2 K41 ["metaData"]
      980 GETTABLEKS                       R23 R24 K99 ["Scale"]
      982 JUMPIF                           R23 ; [+1]
      983 LOADK                            R23 K43 [""]
      984 LOADK                            R24 K43 [""]
      985 FASTCALL1                        TOSTRING R23 ; [+3]
      986 MOVE                             R28 R23
      987 GETIMPORT                        R27 K4 [tostring]
      989 CALL                             R27 1 1
      990 MOVE                             R25 R27
      991 LOADK                            R26 K43 [""]
      992 CONCAT                           R22 R24 R26
      993 SETTABLEKS                       R22 R21 K97 ["scale"]
      995 CALL                             R19 2 1
      996 SETTABLEKS                       R19 R18 K22 ["translation"]
      998 GETTABLEKS                       R19 R2 K14 ["userId"]
     1000 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1002 MOVE                             R19 R0
     1003 GETTABLEKS                       R20 R2 K14 ["userId"]
     1005 CALL                             R19 1 1
     1006 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1008 LOADK                            R19 K37 ["Universe"]
     1009 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1011 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1013 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1015 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1017 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1019 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1021 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1023 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1025 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1027 RETURN                           R18 1
     1028 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1030 JUMPIFNOTEQKN                    R18 K100 [10] ; [+82]
     1032 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1033 GETTABLEKS                       R19 R2 K19 ["id"]
     1035 SETTABLEKS                       R19 R18 K19 ["id"]
     1037 LOADK                            R19 K101 ["AvatarSettingsScaleWidth"]
     1038 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1040 LOADK                            R19 K40 ["Experience"]
     1041 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1043 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1045 GETIMPORT                        R21 K34 [pcall]
     1047 NEWCLOSURE                       R22 P6
     1048 CAPTURE                          VAL R20
     1049 CAPTURE                          VAL R3
     1050 CALL                             R21 1 2
     1051 JUMPIFNOT                        R21 ; [+2]
     1052 MOVE                             R19 R22
     1053 JUMP                             ; [+1]
     1054 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1055 SETTABLEKS                       R19 R18 K21 ["date"]
     1057 MOVE                             R19 R12
     1058 LOADK                            R20 K102 ["Description.AvatarSettingsScaleWidth"]
     1059 DUPTABLE                         R21 K98 [{"scale"}]
     1060 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1062 JUMPIFNOT                        R24 ; [+5]
     1063 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1065 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1067 JUMPIF                           R23 ; [+1]
     1068 LOADK                            R23 K43 [""]
     1069 LOADK                            R24 K43 [""]
     1070 FASTCALL1                        TOSTRING R23 ; [+3]
     1071 MOVE                             R28 R23
     1072 GETIMPORT                        R27 K4 [tostring]
     1074 CALL                             R27 1 1
     1075 MOVE                             R25 R27
     1076 LOADK                            R26 K43 [""]
     1077 CONCAT                           R22 R24 R26
     1078 SETTABLEKS                       R22 R21 K97 ["scale"]
     1080 CALL                             R19 2 1
     1081 SETTABLEKS                       R19 R18 K22 ["translation"]
     1083 GETTABLEKS                       R19 R2 K14 ["userId"]
     1085 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1087 MOVE                             R19 R0
     1088 GETTABLEKS                       R20 R2 K14 ["userId"]
     1090 CALL                             R19 1 1
     1091 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1093 LOADK                            R19 K37 ["Universe"]
     1094 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1096 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1098 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1100 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1102 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1104 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1106 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1108 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1110 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1112 RETURN                           R18 1
     1113 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1115 JUMPIFNOTEQKN                    R18 K103 [11] ; [+82]
     1117 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1118 GETTABLEKS                       R19 R2 K19 ["id"]
     1120 SETTABLEKS                       R19 R18 K19 ["id"]
     1122 LOADK                            R19 K104 ["AvatarSettingsScaleHead"]
     1123 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1125 LOADK                            R19 K40 ["Experience"]
     1126 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1128 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1130 GETIMPORT                        R21 K34 [pcall]
     1132 NEWCLOSURE                       R22 P6
     1133 CAPTURE                          VAL R20
     1134 CAPTURE                          VAL R3
     1135 CALL                             R21 1 2
     1136 JUMPIFNOT                        R21 ; [+2]
     1137 MOVE                             R19 R22
     1138 JUMP                             ; [+1]
     1139 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1140 SETTABLEKS                       R19 R18 K21 ["date"]
     1142 MOVE                             R19 R12
     1143 LOADK                            R20 K105 ["Description.AvatarSettingsScaleHead"]
     1144 DUPTABLE                         R21 K98 [{"scale"}]
     1145 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1147 JUMPIFNOT                        R24 ; [+5]
     1148 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1150 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1152 JUMPIF                           R23 ; [+1]
     1153 LOADK                            R23 K43 [""]
     1154 LOADK                            R24 K43 [""]
     1155 FASTCALL1                        TOSTRING R23 ; [+3]
     1156 MOVE                             R28 R23
     1157 GETIMPORT                        R27 K4 [tostring]
     1159 CALL                             R27 1 1
     1160 MOVE                             R25 R27
     1161 LOADK                            R26 K43 [""]
     1162 CONCAT                           R22 R24 R26
     1163 SETTABLEKS                       R22 R21 K97 ["scale"]
     1165 CALL                             R19 2 1
     1166 SETTABLEKS                       R19 R18 K22 ["translation"]
     1168 GETTABLEKS                       R19 R2 K14 ["userId"]
     1170 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1172 MOVE                             R19 R0
     1173 GETTABLEKS                       R20 R2 K14 ["userId"]
     1175 CALL                             R19 1 1
     1176 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1178 LOADK                            R19 K37 ["Universe"]
     1179 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1181 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1183 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1185 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1187 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1189 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1191 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1193 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1195 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1197 RETURN                           R18 1
     1198 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1200 JUMPIFNOTEQKN                    R18 K106 [12] ; [+82]
     1202 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1203 GETTABLEKS                       R19 R2 K19 ["id"]
     1205 SETTABLEKS                       R19 R18 K19 ["id"]
     1207 LOADK                            R19 K107 ["AvatarSettingsScaleBodyType"]
     1208 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1210 LOADK                            R19 K40 ["Experience"]
     1211 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1213 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1215 GETIMPORT                        R21 K34 [pcall]
     1217 NEWCLOSURE                       R22 P6
     1218 CAPTURE                          VAL R20
     1219 CAPTURE                          VAL R3
     1220 CALL                             R21 1 2
     1221 JUMPIFNOT                        R21 ; [+2]
     1222 MOVE                             R19 R22
     1223 JUMP                             ; [+1]
     1224 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1225 SETTABLEKS                       R19 R18 K21 ["date"]
     1227 MOVE                             R19 R12
     1228 LOADK                            R20 K108 ["Description.AvatarSettingsScaleBodyType"]
     1229 DUPTABLE                         R21 K98 [{"scale"}]
     1230 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1232 JUMPIFNOT                        R24 ; [+5]
     1233 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1235 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1237 JUMPIF                           R23 ; [+1]
     1238 LOADK                            R23 K43 [""]
     1239 LOADK                            R24 K43 [""]
     1240 FASTCALL1                        TOSTRING R23 ; [+3]
     1241 MOVE                             R28 R23
     1242 GETIMPORT                        R27 K4 [tostring]
     1244 CALL                             R27 1 1
     1245 MOVE                             R25 R27
     1246 LOADK                            R26 K43 [""]
     1247 CONCAT                           R22 R24 R26
     1248 SETTABLEKS                       R22 R21 K97 ["scale"]
     1250 CALL                             R19 2 1
     1251 SETTABLEKS                       R19 R18 K22 ["translation"]
     1253 GETTABLEKS                       R19 R2 K14 ["userId"]
     1255 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1257 MOVE                             R19 R0
     1258 GETTABLEKS                       R20 R2 K14 ["userId"]
     1260 CALL                             R19 1 1
     1261 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1263 LOADK                            R19 K37 ["Universe"]
     1264 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1266 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1268 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1270 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1272 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1274 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1276 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1278 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1280 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1282 RETURN                           R18 1
     1283 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1285 JUMPIFNOTEQKN                    R18 K109 [13] ; [+82]
     1287 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1288 GETTABLEKS                       R19 R2 K19 ["id"]
     1290 SETTABLEKS                       R19 R18 K19 ["id"]
     1292 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
     1293 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1295 LOADK                            R19 K40 ["Experience"]
     1296 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1298 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1300 GETIMPORT                        R21 K34 [pcall]
     1302 NEWCLOSURE                       R22 P6
     1303 CAPTURE                          VAL R20
     1304 CAPTURE                          VAL R3
     1305 CALL                             R21 1 2
     1306 JUMPIFNOT                        R21 ; [+2]
     1307 MOVE                             R19 R22
     1308 JUMP                             ; [+1]
     1309 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1310 SETTABLEKS                       R19 R18 K21 ["date"]
     1312 MOVE                             R19 R12
     1313 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
     1314 DUPTABLE                         R21 K98 [{"scale"}]
     1315 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1317 JUMPIFNOT                        R24 ; [+5]
     1318 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1320 GETTABLEKS                       R23 R24 K99 ["Scale"]
     1322 JUMPIF                           R23 ; [+1]
     1323 LOADK                            R23 K43 [""]
     1324 LOADK                            R24 K43 [""]
     1325 FASTCALL1                        TOSTRING R23 ; [+3]
     1326 MOVE                             R28 R23
     1327 GETIMPORT                        R27 K4 [tostring]
     1329 CALL                             R27 1 1
     1330 MOVE                             R25 R27
     1331 LOADK                            R26 K43 [""]
     1332 CONCAT                           R22 R24 R26
     1333 SETTABLEKS                       R22 R21 K97 ["scale"]
     1335 CALL                             R19 2 1
     1336 SETTABLEKS                       R19 R18 K22 ["translation"]
     1338 GETTABLEKS                       R19 R2 K14 ["userId"]
     1340 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1342 MOVE                             R19 R0
     1343 GETTABLEKS                       R20 R2 K14 ["userId"]
     1345 CALL                             R19 1 1
     1346 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1348 LOADK                            R19 K37 ["Universe"]
     1349 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1351 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1353 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1355 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1357 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1359 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1361 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1363 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1365 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1367 RETURN                           R18 1
     1368 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1370 JUMPIFNOTEQKN                    R18 K112 [14] ; [+61]
     1372 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1373 GETTABLEKS                       R19 R2 K19 ["id"]
     1375 SETTABLEKS                       R19 R18 K19 ["id"]
     1377 LOADK                            R19 K113 ["AvatarSettingsBodyParts"]
     1378 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1380 LOADK                            R19 K40 ["Experience"]
     1381 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1383 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1385 GETIMPORT                        R21 K34 [pcall]
     1387 NEWCLOSURE                       R22 P6
     1388 CAPTURE                          VAL R20
     1389 CAPTURE                          VAL R3
     1390 CALL                             R21 1 2
     1391 JUMPIFNOT                        R21 ; [+2]
     1392 MOVE                             R19 R22
     1393 JUMP                             ; [+1]
     1394 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1395 SETTABLEKS                       R19 R18 K21 ["date"]
     1397 MOVE                             R19 R12
     1398 LOADK                            R20 K114 ["Description.AvatarSettingsBodyParts"]
     1399 CALL                             R19 1 1
     1400 SETTABLEKS                       R19 R18 K22 ["translation"]
     1402 GETTABLEKS                       R19 R2 K14 ["userId"]
     1404 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1406 MOVE                             R19 R0
     1407 GETTABLEKS                       R20 R2 K14 ["userId"]
     1409 CALL                             R19 1 1
     1410 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1412 LOADK                            R19 K37 ["Universe"]
     1413 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1415 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1417 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1419 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1421 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1423 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1425 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1427 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1429 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1431 RETURN                           R18 1
     1432 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1434 JUMPIFNOTEQKN                    R18 K115 [15] ; [+61]
     1436 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1437 GETTABLEKS                       R19 R2 K19 ["id"]
     1439 SETTABLEKS                       R19 R18 K19 ["id"]
     1441 LOADK                            R19 K116 ["AvatarSettingsClothing"]
     1442 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1444 LOADK                            R19 K40 ["Experience"]
     1445 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1447 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1449 GETIMPORT                        R21 K34 [pcall]
     1451 NEWCLOSURE                       R22 P6
     1452 CAPTURE                          VAL R20
     1453 CAPTURE                          VAL R3
     1454 CALL                             R21 1 2
     1455 JUMPIFNOT                        R21 ; [+2]
     1456 MOVE                             R19 R22
     1457 JUMP                             ; [+1]
     1458 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1459 SETTABLEKS                       R19 R18 K21 ["date"]
     1461 MOVE                             R19 R12
     1462 LOADK                            R20 K117 ["Description.AvatarSettingsClothing"]
     1463 CALL                             R19 1 1
     1464 SETTABLEKS                       R19 R18 K22 ["translation"]
     1466 GETTABLEKS                       R19 R2 K14 ["userId"]
     1468 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1470 MOVE                             R19 R0
     1471 GETTABLEKS                       R20 R2 K14 ["userId"]
     1473 CALL                             R19 1 1
     1474 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1476 LOADK                            R19 K37 ["Universe"]
     1477 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1479 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1481 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1483 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1485 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1487 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1489 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1491 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1493 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1495 RETURN                           R18 1
     1496 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1498 JUMPIFNOTEQKN                    R18 K118 [16] ; [+113]
     1500 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1501 GETTABLEKS                       R19 R2 K19 ["id"]
     1503 SETTABLEKS                       R19 R18 K19 ["id"]
     1505 LOADK                            R19 K119 ["ExperienceName"]
     1506 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1508 LOADK                            R19 K40 ["Experience"]
     1509 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1511 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1513 GETIMPORT                        R21 K34 [pcall]
     1515 NEWCLOSURE                       R22 P6
     1516 CAPTURE                          VAL R20
     1517 CAPTURE                          VAL R3
     1518 CALL                             R21 1 2
     1519 JUMPIFNOT                        R21 ; [+2]
     1520 MOVE                             R19 R22
     1521 JUMP                             ; [+1]
     1522 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1523 SETTABLEKS                       R19 R18 K21 ["date"]
     1525 MOVE                             R19 R12
     1526 LOADK                            R20 K120 ["Description.ExperienceName"]
     1527 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     1528 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1530 JUMPIFNOT                        R24 ; [+5]
     1531 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1533 GETTABLEKS                       R23 R24 K124 ["NewName"]
     1535 JUMPIF                           R23 ; [+1]
     1536 LOADK                            R23 K43 [""]
     1537 LOADK                            R24 K43 [""]
     1538 FASTCALL1                        TOSTRING R23 ; [+3]
     1539 MOVE                             R28 R23
     1540 GETIMPORT                        R27 K4 [tostring]
     1542 CALL                             R27 1 1
     1543 MOVE                             R25 R27
     1544 LOADK                            R26 K43 [""]
     1545 CONCAT                           R22 R24 R26
     1546 SETTABLEKS                       R22 R21 K121 ["newName"]
     1548 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1550 JUMPIFNOT                        R24 ; [+5]
     1551 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1553 GETTABLEKS                       R23 R24 K125 ["OldName"]
     1555 JUMPIF                           R23 ; [+1]
     1556 LOADK                            R23 K43 [""]
     1557 LOADK                            R24 K43 [""]
     1558 FASTCALL1                        TOSTRING R23 ; [+3]
     1559 MOVE                             R28 R23
     1560 GETIMPORT                        R27 K4 [tostring]
     1562 CALL                             R27 1 1
     1563 MOVE                             R25 R27
     1564 LOADK                            R26 K43 [""]
     1565 CONCAT                           R22 R24 R26
     1566 SETTABLEKS                       R22 R21 K122 ["oldName"]
     1568 CALL                             R19 2 1
     1569 SETTABLEKS                       R19 R18 K22 ["translation"]
     1571 GETTABLEKS                       R19 R2 K14 ["userId"]
     1573 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1575 MOVE                             R19 R0
     1576 GETTABLEKS                       R20 R2 K14 ["userId"]
     1578 CALL                             R19 1 1
     1579 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1581 LOADK                            R19 K37 ["Universe"]
     1582 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1584 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1586 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1588 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1590 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1592 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1594 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1596 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1598 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1600 LOADK                            R20 K43 [""]
     1601 FASTCALL1                        TOSTRING R4 ; [+3]
     1602 MOVE                             R24 R4
     1603 GETIMPORT                        R23 K4 [tostring]
     1605 CALL                             R23 1 1
     1606 MOVE                             R21 R23
     1607 LOADK                            R22 K11 ["/configure"]
     1608 CONCAT                           R19 R20 R22
     1609 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1611 RETURN                           R18 1
     1612 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1614 JUMPIFNOTEQKN                    R18 K126 [17] ; [+72]
     1616 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1617 GETTABLEKS                       R19 R2 K19 ["id"]
     1619 SETTABLEKS                       R19 R18 K19 ["id"]
     1621 LOADK                            R19 K127 ["ExperienceDescription"]
     1622 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1624 LOADK                            R19 K40 ["Experience"]
     1625 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1627 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1629 GETIMPORT                        R21 K34 [pcall]
     1631 NEWCLOSURE                       R22 P6
     1632 CAPTURE                          VAL R20
     1633 CAPTURE                          VAL R3
     1634 CALL                             R21 1 2
     1635 JUMPIFNOT                        R21 ; [+2]
     1636 MOVE                             R19 R22
     1637 JUMP                             ; [+1]
     1638 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1639 SETTABLEKS                       R19 R18 K21 ["date"]
     1641 MOVE                             R19 R12
     1642 LOADK                            R20 K128 ["Description.ExperienceDescription"]
     1643 CALL                             R19 1 1
     1644 SETTABLEKS                       R19 R18 K22 ["translation"]
     1646 GETTABLEKS                       R19 R2 K14 ["userId"]
     1648 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1650 MOVE                             R19 R0
     1651 GETTABLEKS                       R20 R2 K14 ["userId"]
     1653 CALL                             R19 1 1
     1654 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1656 LOADK                            R19 K37 ["Universe"]
     1657 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1659 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1661 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1663 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1665 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1667 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1669 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1671 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1673 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1675 LOADK                            R20 K43 [""]
     1676 FASTCALL1                        TOSTRING R4 ; [+3]
     1677 MOVE                             R24 R4
     1678 GETIMPORT                        R23 K4 [tostring]
     1680 CALL                             R23 1 1
     1681 MOVE                             R21 R23
     1682 LOADK                            R22 K11 ["/configure"]
     1683 CONCAT                           R19 R20 R22
     1684 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1686 RETURN                           R18 1
     1687 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1689 JUMPIFNOTEQKN                    R18 K129 [18] ; [+93]
     1691 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1692 GETTABLEKS                       R19 R2 K19 ["id"]
     1694 SETTABLEKS                       R19 R18 K19 ["id"]
     1696 LOADK                            R19 K130 ["ExperienceGenre"]
     1697 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1699 LOADK                            R19 K40 ["Experience"]
     1700 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1702 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1704 GETIMPORT                        R21 K34 [pcall]
     1706 NEWCLOSURE                       R22 P6
     1707 CAPTURE                          VAL R20
     1708 CAPTURE                          VAL R3
     1709 CALL                             R21 1 2
     1710 JUMPIFNOT                        R21 ; [+2]
     1711 MOVE                             R19 R22
     1712 JUMP                             ; [+1]
     1713 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1714 SETTABLEKS                       R19 R18 K21 ["date"]
     1716 MOVE                             R19 R12
     1717 LOADK                            R20 K131 ["Description.ExperienceGenre"]
     1718 DUPTABLE                         R21 K133 [{"genre"}]
     1719 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1721 JUMPIFNOT                        R24 ; [+5]
     1722 GETTABLEKS                       R24 R2 K41 ["metaData"]
     1724 GETTABLEKS                       R23 R24 K134 ["Genre"]
     1726 JUMPIF                           R23 ; [+1]
     1727 LOADK                            R23 K43 [""]
     1728 LOADK                            R24 K43 [""]
     1729 FASTCALL1                        TOSTRING R23 ; [+3]
     1730 MOVE                             R28 R23
     1731 GETIMPORT                        R27 K4 [tostring]
     1733 CALL                             R27 1 1
     1734 MOVE                             R25 R27
     1735 LOADK                            R26 K43 [""]
     1736 CONCAT                           R22 R24 R26
     1737 SETTABLEKS                       R22 R21 K132 ["genre"]
     1739 CALL                             R19 2 1
     1740 SETTABLEKS                       R19 R18 K22 ["translation"]
     1742 GETTABLEKS                       R19 R2 K14 ["userId"]
     1744 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1746 MOVE                             R19 R0
     1747 GETTABLEKS                       R20 R2 K14 ["userId"]
     1749 CALL                             R19 1 1
     1750 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1752 LOADK                            R19 K37 ["Universe"]
     1753 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1755 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1757 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1759 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1761 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1763 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1765 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1767 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1769 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1771 LOADK                            R20 K43 [""]
     1772 FASTCALL1                        TOSTRING R4 ; [+3]
     1773 MOVE                             R24 R4
     1774 GETIMPORT                        R23 K4 [tostring]
     1776 CALL                             R23 1 1
     1777 MOVE                             R21 R23
     1778 LOADK                            R22 K11 ["/configure"]
     1779 CONCAT                           R19 R20 R22
     1780 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     1782 RETURN                           R18 1
     1783 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1785 JUMPIFNOTEQKN                    R18 K135 [19] ; [+103]
     1787 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     1788 GETTABLEKS                       R19 R2 K19 ["id"]
     1790 SETTABLEKS                       R19 R18 K19 ["id"]
     1792 LOADK                            R19 K136 ["SecuritySettingsHTTPRequests"]
     1793 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1795 LOADK                            R19 K40 ["Experience"]
     1796 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1798 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1800 GETIMPORT                        R21 K34 [pcall]
     1802 NEWCLOSURE                       R22 P6
     1803 CAPTURE                          VAL R20
     1804 CAPTURE                          VAL R3
     1805 CALL                             R21 1 2
     1806 JUMPIFNOT                        R21 ; [+2]
     1807 MOVE                             R19 R22
     1808 JUMP                             ; [+1]
     1809 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1810 SETTABLEKS                       R19 R18 K21 ["date"]
     1812 MOVE                             R19 R12
     1813 LOADK                            R20 K137 ["Description.SecuritySettingsHTTPRequests"]
     1814 DUPTABLE                         R21 K139 [{"action"}]
     1815 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1817 JUMPIFNOT                        R26 ; [+5]
     1818 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1820 GETTABLEKS                       R25 R26 K42 ["Action"]
     1822 JUMPIF                           R25 ; [+1]
     1823 LOADK                            R25 K43 [""]
     1824 GETIMPORT                        R26 K46 [string.lower]
     1826 FASTCALL1                        TOSTRING R25 ; [+3]
     1827 MOVE                             R28 R25
     1828 GETIMPORT                        R27 K4 [tostring]
     1830 CALL                             R27 1 1
     1831 CALL                             R26 1 1
     1832 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     1834 LOADB                            R24 1
     1835 JUMP                             ; [+1]
     1836 LOADB                            R24 0
     1837 JUMPIFNOT                        R24 ; [+4]
     1838 MOVE                             R23 R12
     1839 LOADK                            R24 K140 ["Description.ActionEnabled"]
     1840 CALL                             R23 1 1
     1841 JUMPIF                           R23 ; [+3]
     1842 MOVE                             R23 R12
     1843 LOADK                            R24 K141 ["Description.ActionDisabled"]
     1844 CALL                             R23 1 1
     1845 LOADK                            R24 K43 [""]
     1846 FASTCALL1                        TOSTRING R23 ; [+3]
     1847 MOVE                             R28 R23
     1848 GETIMPORT                        R27 K4 [tostring]
     1850 CALL                             R27 1 1
     1851 MOVE                             R25 R27
     1852 LOADK                            R26 K43 [""]
     1853 CONCAT                           R22 R24 R26
     1854 SETTABLEKS                       R22 R21 K138 ["action"]
     1856 CALL                             R19 2 1
     1857 SETTABLEKS                       R19 R18 K22 ["translation"]
     1859 GETTABLEKS                       R19 R2 K14 ["userId"]
     1861 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1863 MOVE                             R19 R0
     1864 GETTABLEKS                       R20 R2 K14 ["userId"]
     1866 CALL                             R19 1 1
     1867 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1869 LOADK                            R19 K37 ["Universe"]
     1870 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1872 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1874 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1876 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1878 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1880 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1882 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1884 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1886 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1888 RETURN                           R18 1
     1889 GETTABLEKS                       R18 R2 K17 ["eventType"]
     1891 JUMPIFNOTEQKN                    R18 K142 [20] ; [+114]
     1893 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     1894 GETTABLEKS                       R19 R2 K19 ["id"]
     1896 SETTABLEKS                       R19 R18 K19 ["id"]
     1898 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
     1899 SETTABLEKS                       R19 R18 K17 ["eventType"]
     1901 LOADK                            R19 K40 ["Experience"]
     1902 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     1904 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     1906 GETIMPORT                        R21 K34 [pcall]
     1908 NEWCLOSURE                       R22 P6
     1909 CAPTURE                          VAL R20
     1910 CAPTURE                          VAL R3
     1911 CALL                             R21 1 2
     1912 JUMPIFNOT                        R21 ; [+2]
     1913 MOVE                             R19 R22
     1914 JUMP                             ; [+1]
     1915 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     1916 SETTABLEKS                       R19 R18 K21 ["date"]
     1918 MOVE                             R19 R12
     1919 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
     1920 DUPTABLE                         R21 K139 [{"action"}]
     1921 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1923 JUMPIFNOT                        R26 ; [+5]
     1924 GETTABLEKS                       R26 R2 K41 ["metaData"]
     1926 GETTABLEKS                       R25 R26 K42 ["Action"]
     1928 JUMPIF                           R25 ; [+1]
     1929 LOADK                            R25 K43 [""]
     1930 GETIMPORT                        R26 K46 [string.lower]
     1932 FASTCALL1                        TOSTRING R25 ; [+3]
     1933 MOVE                             R28 R25
     1934 GETIMPORT                        R27 K4 [tostring]
     1936 CALL                             R27 1 1
     1937 CALL                             R26 1 1
     1938 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     1940 LOADB                            R24 1
     1941 JUMP                             ; [+1]
     1942 LOADB                            R24 0
     1943 JUMPIFNOT                        R24 ; [+4]
     1944 MOVE                             R23 R12
     1945 LOADK                            R24 K140 ["Description.ActionEnabled"]
     1946 CALL                             R23 1 1
     1947 JUMPIF                           R23 ; [+3]
     1948 MOVE                             R23 R12
     1949 LOADK                            R24 K141 ["Description.ActionDisabled"]
     1950 CALL                             R23 1 1
     1951 LOADK                            R24 K43 [""]
     1952 FASTCALL1                        TOSTRING R23 ; [+3]
     1953 MOVE                             R28 R23
     1954 GETIMPORT                        R27 K4 [tostring]
     1956 CALL                             R27 1 1
     1957 MOVE                             R25 R27
     1958 LOADK                            R26 K43 [""]
     1959 CONCAT                           R22 R24 R26
     1960 SETTABLEKS                       R22 R21 K138 ["action"]
     1962 CALL                             R19 2 1
     1963 SETTABLEKS                       R19 R18 K22 ["translation"]
     1965 GETTABLEKS                       R19 R2 K14 ["userId"]
     1967 SETTABLEKS                       R19 R18 K23 ["actorId"]
     1969 MOVE                             R19 R0
     1970 GETTABLEKS                       R20 R2 K14 ["userId"]
     1972 CALL                             R19 1 1
     1973 SETTABLEKS                       R19 R18 K24 ["actorName"]
     1975 LOADK                            R19 K37 ["Universe"]
     1976 SETTABLEKS                       R19 R18 K25 ["iconType"]
     1978 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1980 SETTABLEKS                       R19 R18 K26 ["iconId"]
     1982 GETTABLEKS                       R19 R2 K2 ["universeId"]
     1984 SETTABLEKS                       R19 R18 K2 ["universeId"]
     1986 GETTABLEKS                       R19 R2 K27 ["headerText"]
     1988 SETTABLEKS                       R19 R18 K27 ["headerText"]
     1990 GETTABLEKS                       R19 R2 K28 ["footerText"]
     1992 SETTABLEKS                       R19 R18 K28 ["footerText"]
     1994 LOADK                            R20 K43 [""]
     1995 FASTCALL1                        TOSTRING R4 ; [+3]
     1996 MOVE                             R24 R4
     1997 GETIMPORT                        R23 K4 [tostring]
     1999 CALL                             R23 1 1
     2000 MOVE                             R21 R23
     2001 LOADK                            R22 K11 ["/configure"]
     2002 CONCAT                           R19 R20 R22
     2003 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2005 RETURN                           R18 1
     2006 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2008 JUMPIFNOTEQKN                    R18 K145 [21] ; [+103]
     2010 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2011 GETTABLEKS                       R19 R2 K19 ["id"]
     2013 SETTABLEKS                       R19 R18 K19 ["id"]
     2015 LOADK                            R19 K146 ["SecuritySettingsThirdPartySales"]
     2016 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2018 LOADK                            R19 K40 ["Experience"]
     2019 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2021 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2023 GETIMPORT                        R21 K34 [pcall]
     2025 NEWCLOSURE                       R22 P6
     2026 CAPTURE                          VAL R20
     2027 CAPTURE                          VAL R3
     2028 CALL                             R21 1 2
     2029 JUMPIFNOT                        R21 ; [+2]
     2030 MOVE                             R19 R22
     2031 JUMP                             ; [+1]
     2032 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2033 SETTABLEKS                       R19 R18 K21 ["date"]
     2035 MOVE                             R19 R12
     2036 LOADK                            R20 K147 ["Description.SecuritySettingsThirdPartySales"]
     2037 DUPTABLE                         R21 K139 [{"action"}]
     2038 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2040 JUMPIFNOT                        R26 ; [+5]
     2041 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2043 GETTABLEKS                       R25 R26 K42 ["Action"]
     2045 JUMPIF                           R25 ; [+1]
     2046 LOADK                            R25 K43 [""]
     2047 GETIMPORT                        R26 K46 [string.lower]
     2049 FASTCALL1                        TOSTRING R25 ; [+3]
     2050 MOVE                             R28 R25
     2051 GETIMPORT                        R27 K4 [tostring]
     2053 CALL                             R27 1 1
     2054 CALL                             R26 1 1
     2055 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2057 LOADB                            R24 1
     2058 JUMP                             ; [+1]
     2059 LOADB                            R24 0
     2060 JUMPIFNOT                        R24 ; [+4]
     2061 MOVE                             R23 R12
     2062 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2063 CALL                             R23 1 1
     2064 JUMPIF                           R23 ; [+3]
     2065 MOVE                             R23 R12
     2066 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2067 CALL                             R23 1 1
     2068 LOADK                            R24 K43 [""]
     2069 FASTCALL1                        TOSTRING R23 ; [+3]
     2070 MOVE                             R28 R23
     2071 GETIMPORT                        R27 K4 [tostring]
     2073 CALL                             R27 1 1
     2074 MOVE                             R25 R27
     2075 LOADK                            R26 K43 [""]
     2076 CONCAT                           R22 R24 R26
     2077 SETTABLEKS                       R22 R21 K138 ["action"]
     2079 CALL                             R19 2 1
     2080 SETTABLEKS                       R19 R18 K22 ["translation"]
     2082 GETTABLEKS                       R19 R2 K14 ["userId"]
     2084 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2086 MOVE                             R19 R0
     2087 GETTABLEKS                       R20 R2 K14 ["userId"]
     2089 CALL                             R19 1 1
     2090 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2092 LOADK                            R19 K37 ["Universe"]
     2093 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2095 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2097 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2099 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2101 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2103 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2105 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2107 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2109 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2111 RETURN                           R18 1
     2112 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2114 JUMPIFNOTEQKN                    R18 K148 [22] ; [+103]
     2116 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2117 GETTABLEKS                       R19 R2 K19 ["id"]
     2119 SETTABLEKS                       R19 R18 K19 ["id"]
     2121 LOADK                            R19 K149 ["SecuritySettingsThirdPartyTeleports"]
     2122 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2124 LOADK                            R19 K40 ["Experience"]
     2125 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2127 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2129 GETIMPORT                        R21 K34 [pcall]
     2131 NEWCLOSURE                       R22 P6
     2132 CAPTURE                          VAL R20
     2133 CAPTURE                          VAL R3
     2134 CALL                             R21 1 2
     2135 JUMPIFNOT                        R21 ; [+2]
     2136 MOVE                             R19 R22
     2137 JUMP                             ; [+1]
     2138 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2139 SETTABLEKS                       R19 R18 K21 ["date"]
     2141 MOVE                             R19 R12
     2142 LOADK                            R20 K150 ["Description.SecuritySettingsThirdPartyTeleports"]
     2143 DUPTABLE                         R21 K139 [{"action"}]
     2144 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2146 JUMPIFNOT                        R26 ; [+5]
     2147 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2149 GETTABLEKS                       R25 R26 K42 ["Action"]
     2151 JUMPIF                           R25 ; [+1]
     2152 LOADK                            R25 K43 [""]
     2153 GETIMPORT                        R26 K46 [string.lower]
     2155 FASTCALL1                        TOSTRING R25 ; [+3]
     2156 MOVE                             R28 R25
     2157 GETIMPORT                        R27 K4 [tostring]
     2159 CALL                             R27 1 1
     2160 CALL                             R26 1 1
     2161 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2163 LOADB                            R24 1
     2164 JUMP                             ; [+1]
     2165 LOADB                            R24 0
     2166 JUMPIFNOT                        R24 ; [+4]
     2167 MOVE                             R23 R12
     2168 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2169 CALL                             R23 1 1
     2170 JUMPIF                           R23 ; [+3]
     2171 MOVE                             R23 R12
     2172 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2173 CALL                             R23 1 1
     2174 LOADK                            R24 K43 [""]
     2175 FASTCALL1                        TOSTRING R23 ; [+3]
     2176 MOVE                             R28 R23
     2177 GETIMPORT                        R27 K4 [tostring]
     2179 CALL                             R27 1 1
     2180 MOVE                             R25 R27
     2181 LOADK                            R26 K43 [""]
     2182 CONCAT                           R22 R24 R26
     2183 SETTABLEKS                       R22 R21 K138 ["action"]
     2185 CALL                             R19 2 1
     2186 SETTABLEKS                       R19 R18 K22 ["translation"]
     2188 GETTABLEKS                       R19 R2 K14 ["userId"]
     2190 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2192 MOVE                             R19 R0
     2193 GETTABLEKS                       R20 R2 K14 ["userId"]
     2195 CALL                             R19 1 1
     2196 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2198 LOADK                            R19 K37 ["Universe"]
     2199 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2201 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2203 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2205 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2207 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2209 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2211 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2213 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2215 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2217 RETURN                           R18 1
     2218 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2220 JUMPIFNOTEQKN                    R18 K151 [23] ; [+61]
     2222 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2223 GETTABLEKS                       R19 R2 K19 ["id"]
     2225 SETTABLEKS                       R19 R18 K19 ["id"]
     2227 LOADK                            R19 K152 ["ExperienceShutDown"]
     2228 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2230 LOADK                            R19 K40 ["Experience"]
     2231 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2233 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2235 GETIMPORT                        R21 K34 [pcall]
     2237 NEWCLOSURE                       R22 P6
     2238 CAPTURE                          VAL R20
     2239 CAPTURE                          VAL R3
     2240 CALL                             R21 1 2
     2241 JUMPIFNOT                        R21 ; [+2]
     2242 MOVE                             R19 R22
     2243 JUMP                             ; [+1]
     2244 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2245 SETTABLEKS                       R19 R18 K21 ["date"]
     2247 MOVE                             R19 R12
     2248 LOADK                            R20 K153 ["Description.ExperienceShutDown"]
     2249 CALL                             R19 1 1
     2250 SETTABLEKS                       R19 R18 K22 ["translation"]
     2252 GETTABLEKS                       R19 R2 K14 ["userId"]
     2254 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2256 MOVE                             R19 R0
     2257 GETTABLEKS                       R20 R2 K14 ["userId"]
     2259 CALL                             R19 1 1
     2260 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2262 LOADK                            R19 K37 ["Universe"]
     2263 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2265 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2267 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2269 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2271 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2273 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2275 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2277 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2279 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2281 RETURN                           R18 1
     2282 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2284 JUMPIFNOTEQKN                    R18 K154 [24] ; [+93]
     2286 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2287 GETTABLEKS                       R19 R2 K19 ["id"]
     2289 SETTABLEKS                       R19 R18 K19 ["id"]
     2291 LOADK                            R19 K155 ["SocialLinksAdded"]
     2292 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2294 LOADK                            R19 K40 ["Experience"]
     2295 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2297 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2299 GETIMPORT                        R21 K34 [pcall]
     2301 NEWCLOSURE                       R22 P6
     2302 CAPTURE                          VAL R20
     2303 CAPTURE                          VAL R3
     2304 CALL                             R21 1 2
     2305 JUMPIFNOT                        R21 ; [+2]
     2306 MOVE                             R19 R22
     2307 JUMP                             ; [+1]
     2308 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2309 SETTABLEKS                       R19 R18 K21 ["date"]
     2311 MOVE                             R19 R12
     2312 LOADK                            R20 K156 ["Description.SocialLinksAdded"]
     2313 DUPTABLE                         R21 K158 [{"channel"}]
     2314 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2316 JUMPIFNOT                        R24 ; [+5]
     2317 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2319 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2321 JUMPIF                           R23 ; [+1]
     2322 LOADK                            R23 K43 [""]
     2323 LOADK                            R24 K43 [""]
     2324 FASTCALL1                        TOSTRING R23 ; [+3]
     2325 MOVE                             R28 R23
     2326 GETIMPORT                        R27 K4 [tostring]
     2328 CALL                             R27 1 1
     2329 MOVE                             R25 R27
     2330 LOADK                            R26 K43 [""]
     2331 CONCAT                           R22 R24 R26
     2332 SETTABLEKS                       R22 R21 K157 ["channel"]
     2334 CALL                             R19 2 1
     2335 SETTABLEKS                       R19 R18 K22 ["translation"]
     2337 GETTABLEKS                       R19 R2 K14 ["userId"]
     2339 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2341 MOVE                             R19 R0
     2342 GETTABLEKS                       R20 R2 K14 ["userId"]
     2344 CALL                             R19 1 1
     2345 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2347 LOADK                            R19 K37 ["Universe"]
     2348 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2350 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2352 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2354 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2356 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2358 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2360 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2362 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2364 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2366 LOADK                            R20 K43 [""]
     2367 FASTCALL1                        TOSTRING R4 ; [+3]
     2368 MOVE                             R24 R4
     2369 GETIMPORT                        R23 K4 [tostring]
     2371 CALL                             R23 1 1
     2372 MOVE                             R21 R23
     2373 LOADK                            R22 K160 ["/social-links"]
     2374 CONCAT                           R19 R20 R22
     2375 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2377 RETURN                           R18 1
     2378 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2380 JUMPIFNOTEQKN                    R18 K161 [25] ; [+93]
     2382 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2383 GETTABLEKS                       R19 R2 K19 ["id"]
     2385 SETTABLEKS                       R19 R18 K19 ["id"]
     2387 LOADK                            R19 K162 ["SocialLinksRemoved"]
     2388 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2390 LOADK                            R19 K40 ["Experience"]
     2391 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2393 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2395 GETIMPORT                        R21 K34 [pcall]
     2397 NEWCLOSURE                       R22 P6
     2398 CAPTURE                          VAL R20
     2399 CAPTURE                          VAL R3
     2400 CALL                             R21 1 2
     2401 JUMPIFNOT                        R21 ; [+2]
     2402 MOVE                             R19 R22
     2403 JUMP                             ; [+1]
     2404 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2405 SETTABLEKS                       R19 R18 K21 ["date"]
     2407 MOVE                             R19 R12
     2408 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
     2409 DUPTABLE                         R21 K158 [{"channel"}]
     2410 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2412 JUMPIFNOT                        R24 ; [+5]
     2413 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2415 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2417 JUMPIF                           R23 ; [+1]
     2418 LOADK                            R23 K43 [""]
     2419 LOADK                            R24 K43 [""]
     2420 FASTCALL1                        TOSTRING R23 ; [+3]
     2421 MOVE                             R28 R23
     2422 GETIMPORT                        R27 K4 [tostring]
     2424 CALL                             R27 1 1
     2425 MOVE                             R25 R27
     2426 LOADK                            R26 K43 [""]
     2427 CONCAT                           R22 R24 R26
     2428 SETTABLEKS                       R22 R21 K157 ["channel"]
     2430 CALL                             R19 2 1
     2431 SETTABLEKS                       R19 R18 K22 ["translation"]
     2433 GETTABLEKS                       R19 R2 K14 ["userId"]
     2435 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2437 MOVE                             R19 R0
     2438 GETTABLEKS                       R20 R2 K14 ["userId"]
     2440 CALL                             R19 1 1
     2441 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2443 LOADK                            R19 K37 ["Universe"]
     2444 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2446 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2448 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2450 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2452 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2454 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2456 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2458 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2460 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2462 LOADK                            R20 K43 [""]
     2463 FASTCALL1                        TOSTRING R4 ; [+3]
     2464 MOVE                             R24 R4
     2465 GETIMPORT                        R23 K4 [tostring]
     2467 CALL                             R23 1 1
     2468 MOVE                             R21 R23
     2469 LOADK                            R22 K160 ["/social-links"]
     2470 CONCAT                           R19 R20 R22
     2471 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2473 RETURN                           R18 1
     2474 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2476 JUMPIFNOTEQKN                    R18 K164 [26] ; [+93]
     2478 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     2479 GETTABLEKS                       R19 R2 K19 ["id"]
     2481 SETTABLEKS                       R19 R18 K19 ["id"]
     2483 LOADK                            R19 K165 ["SocialLinksUpdated"]
     2484 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2486 LOADK                            R19 K40 ["Experience"]
     2487 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2489 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2491 GETIMPORT                        R21 K34 [pcall]
     2493 NEWCLOSURE                       R22 P6
     2494 CAPTURE                          VAL R20
     2495 CAPTURE                          VAL R3
     2496 CALL                             R21 1 2
     2497 JUMPIFNOT                        R21 ; [+2]
     2498 MOVE                             R19 R22
     2499 JUMP                             ; [+1]
     2500 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2501 SETTABLEKS                       R19 R18 K21 ["date"]
     2503 MOVE                             R19 R12
     2504 LOADK                            R20 K166 ["Description.SocialLinksUpdated"]
     2505 DUPTABLE                         R21 K158 [{"channel"}]
     2506 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2508 JUMPIFNOT                        R24 ; [+5]
     2509 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2511 GETTABLEKS                       R23 R24 K159 ["Channel"]
     2513 JUMPIF                           R23 ; [+1]
     2514 LOADK                            R23 K43 [""]
     2515 LOADK                            R24 K43 [""]
     2516 FASTCALL1                        TOSTRING R23 ; [+3]
     2517 MOVE                             R28 R23
     2518 GETIMPORT                        R27 K4 [tostring]
     2520 CALL                             R27 1 1
     2521 MOVE                             R25 R27
     2522 LOADK                            R26 K43 [""]
     2523 CONCAT                           R22 R24 R26
     2524 SETTABLEKS                       R22 R21 K157 ["channel"]
     2526 CALL                             R19 2 1
     2527 SETTABLEKS                       R19 R18 K22 ["translation"]
     2529 GETTABLEKS                       R19 R2 K14 ["userId"]
     2531 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2533 MOVE                             R19 R0
     2534 GETTABLEKS                       R20 R2 K14 ["userId"]
     2536 CALL                             R19 1 1
     2537 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2539 LOADK                            R19 K37 ["Universe"]
     2540 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2542 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2544 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2546 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2548 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2550 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2552 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2554 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2556 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2558 LOADK                            R20 K43 [""]
     2559 FASTCALL1                        TOSTRING R4 ; [+3]
     2560 MOVE                             R24 R4
     2561 GETIMPORT                        R23 K4 [tostring]
     2563 CALL                             R23 1 1
     2564 MOVE                             R21 R23
     2565 LOADK                            R22 K160 ["/social-links"]
     2566 CONCAT                           R19 R20 R22
     2567 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     2569 RETURN                           R18 1
     2570 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2572 JUMPIFNOTEQKN                    R18 K167 [27] ; [+103]
     2574 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2575 GETTABLEKS                       R19 R2 K19 ["id"]
     2577 SETTABLEKS                       R19 R18 K19 ["id"]
     2579 LOADK                            R19 K168 ["SpatialVoice"]
     2580 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2582 LOADK                            R19 K40 ["Experience"]
     2583 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2585 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2587 GETIMPORT                        R21 K34 [pcall]
     2589 NEWCLOSURE                       R22 P6
     2590 CAPTURE                          VAL R20
     2591 CAPTURE                          VAL R3
     2592 CALL                             R21 1 2
     2593 JUMPIFNOT                        R21 ; [+2]
     2594 MOVE                             R19 R22
     2595 JUMP                             ; [+1]
     2596 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2597 SETTABLEKS                       R19 R18 K21 ["date"]
     2599 MOVE                             R19 R12
     2600 LOADK                            R20 K169 ["Description.SpatialVoice"]
     2601 DUPTABLE                         R21 K139 [{"action"}]
     2602 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2604 JUMPIFNOT                        R26 ; [+5]
     2605 GETTABLEKS                       R26 R2 K41 ["metaData"]
     2607 GETTABLEKS                       R25 R26 K42 ["Action"]
     2609 JUMPIF                           R25 ; [+1]
     2610 LOADK                            R25 K43 [""]
     2611 GETIMPORT                        R26 K46 [string.lower]
     2613 FASTCALL1                        TOSTRING R25 ; [+3]
     2614 MOVE                             R28 R25
     2615 GETIMPORT                        R27 K4 [tostring]
     2617 CALL                             R27 1 1
     2618 CALL                             R26 1 1
     2619 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     2621 LOADB                            R24 1
     2622 JUMP                             ; [+1]
     2623 LOADB                            R24 0
     2624 JUMPIFNOT                        R24 ; [+4]
     2625 MOVE                             R23 R12
     2626 LOADK                            R24 K140 ["Description.ActionEnabled"]
     2627 CALL                             R23 1 1
     2628 JUMPIF                           R23 ; [+3]
     2629 MOVE                             R23 R12
     2630 LOADK                            R24 K141 ["Description.ActionDisabled"]
     2631 CALL                             R23 1 1
     2632 LOADK                            R24 K43 [""]
     2633 FASTCALL1                        TOSTRING R23 ; [+3]
     2634 MOVE                             R28 R23
     2635 GETIMPORT                        R27 K4 [tostring]
     2637 CALL                             R27 1 1
     2638 MOVE                             R25 R27
     2639 LOADK                            R26 K43 [""]
     2640 CONCAT                           R22 R24 R26
     2641 SETTABLEKS                       R22 R21 K138 ["action"]
     2643 CALL                             R19 2 1
     2644 SETTABLEKS                       R19 R18 K22 ["translation"]
     2646 GETTABLEKS                       R19 R2 K14 ["userId"]
     2648 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2650 MOVE                             R19 R0
     2651 GETTABLEKS                       R20 R2 K14 ["userId"]
     2653 CALL                             R19 1 1
     2654 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2656 LOADK                            R19 K37 ["Universe"]
     2657 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2659 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2661 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2663 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2665 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2667 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2669 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2671 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2673 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2675 RETURN                           R18 1
     2676 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2678 JUMPIFNOTEQKN                    R18 K170 [28] ; [+82]
     2680 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2681 GETTABLEKS                       R19 R2 K19 ["id"]
     2683 SETTABLEKS                       R19 R18 K19 ["id"]
     2685 LOADK                            R19 K171 ["WorldSettingsWorkSpaceGravity"]
     2686 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2688 LOADK                            R19 K40 ["Experience"]
     2689 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2691 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2693 GETIMPORT                        R21 K34 [pcall]
     2695 NEWCLOSURE                       R22 P6
     2696 CAPTURE                          VAL R20
     2697 CAPTURE                          VAL R3
     2698 CALL                             R21 1 2
     2699 JUMPIFNOT                        R21 ; [+2]
     2700 MOVE                             R19 R22
     2701 JUMP                             ; [+1]
     2702 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2703 SETTABLEKS                       R19 R18 K21 ["date"]
     2705 MOVE                             R19 R12
     2706 LOADK                            R20 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     2707 DUPTABLE                         R21 K174 [{"gravity"}]
     2708 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2710 JUMPIFNOT                        R24 ; [+5]
     2711 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2713 GETTABLEKS                       R23 R24 K175 ["Gravity"]
     2715 JUMPIF                           R23 ; [+1]
     2716 LOADK                            R23 K43 [""]
     2717 LOADK                            R24 K43 [""]
     2718 FASTCALL1                        TOSTRING R23 ; [+3]
     2719 MOVE                             R28 R23
     2720 GETIMPORT                        R27 K4 [tostring]
     2722 CALL                             R27 1 1
     2723 MOVE                             R25 R27
     2724 LOADK                            R26 K43 [""]
     2725 CONCAT                           R22 R24 R26
     2726 SETTABLEKS                       R22 R21 K173 ["gravity"]
     2728 CALL                             R19 2 1
     2729 SETTABLEKS                       R19 R18 K22 ["translation"]
     2731 GETTABLEKS                       R19 R2 K14 ["userId"]
     2733 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2735 MOVE                             R19 R0
     2736 GETTABLEKS                       R20 R2 K14 ["userId"]
     2738 CALL                             R19 1 1
     2739 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2741 LOADK                            R19 K37 ["Universe"]
     2742 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2744 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2746 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2748 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2750 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2752 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2754 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2756 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2758 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2760 RETURN                           R18 1
     2761 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2763 JUMPIFNOTEQKN                    R18 K176 [29] ; [+82]
     2765 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2766 GETTABLEKS                       R19 R2 K19 ["id"]
     2768 SETTABLEKS                       R19 R18 K19 ["id"]
     2770 LOADK                            R19 K177 ["WorldSettingsJumpHeight"]
     2771 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2773 LOADK                            R19 K40 ["Experience"]
     2774 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2776 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2778 GETIMPORT                        R21 K34 [pcall]
     2780 NEWCLOSURE                       R22 P6
     2781 CAPTURE                          VAL R20
     2782 CAPTURE                          VAL R3
     2783 CALL                             R21 1 2
     2784 JUMPIFNOT                        R21 ; [+2]
     2785 MOVE                             R19 R22
     2786 JUMP                             ; [+1]
     2787 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2788 SETTABLEKS                       R19 R18 K21 ["date"]
     2790 MOVE                             R19 R12
     2791 LOADK                            R20 K178 ["Description.WorldSettingsJumpHeight"]
     2792 DUPTABLE                         R21 K180 [{"jumpHeight"}]
     2793 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2795 JUMPIFNOT                        R24 ; [+5]
     2796 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2798 GETTABLEKS                       R23 R24 K181 ["JumpHeight"]
     2800 JUMPIF                           R23 ; [+1]
     2801 LOADK                            R23 K43 [""]
     2802 LOADK                            R24 K43 [""]
     2803 FASTCALL1                        TOSTRING R23 ; [+3]
     2804 MOVE                             R28 R23
     2805 GETIMPORT                        R27 K4 [tostring]
     2807 CALL                             R27 1 1
     2808 MOVE                             R25 R27
     2809 LOADK                            R26 K43 [""]
     2810 CONCAT                           R22 R24 R26
     2811 SETTABLEKS                       R22 R21 K179 ["jumpHeight"]
     2813 CALL                             R19 2 1
     2814 SETTABLEKS                       R19 R18 K22 ["translation"]
     2816 GETTABLEKS                       R19 R2 K14 ["userId"]
     2818 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2820 MOVE                             R19 R0
     2821 GETTABLEKS                       R20 R2 K14 ["userId"]
     2823 CALL                             R19 1 1
     2824 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2826 LOADK                            R19 K37 ["Universe"]
     2827 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2829 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2831 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2833 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2835 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2837 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2839 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2841 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2843 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2845 RETURN                           R18 1
     2846 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2848 JUMPIFNOTEQKN                    R18 K182 [30] ; [+82]
     2850 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2851 GETTABLEKS                       R19 R2 K19 ["id"]
     2853 SETTABLEKS                       R19 R18 K19 ["id"]
     2855 LOADK                            R19 K183 ["WorldSettingsJumpPower"]
     2856 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2858 LOADK                            R19 K40 ["Experience"]
     2859 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2861 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2863 GETIMPORT                        R21 K34 [pcall]
     2865 NEWCLOSURE                       R22 P6
     2866 CAPTURE                          VAL R20
     2867 CAPTURE                          VAL R3
     2868 CALL                             R21 1 2
     2869 JUMPIFNOT                        R21 ; [+2]
     2870 MOVE                             R19 R22
     2871 JUMP                             ; [+1]
     2872 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2873 SETTABLEKS                       R19 R18 K21 ["date"]
     2875 MOVE                             R19 R12
     2876 LOADK                            R20 K184 ["Description.WorldSettingsJumpPower"]
     2877 DUPTABLE                         R21 K186 [{"jumpPower"}]
     2878 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2880 JUMPIFNOT                        R24 ; [+5]
     2881 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2883 GETTABLEKS                       R23 R24 K187 ["JumpPower"]
     2885 JUMPIF                           R23 ; [+1]
     2886 LOADK                            R23 K43 [""]
     2887 LOADK                            R24 K43 [""]
     2888 FASTCALL1                        TOSTRING R23 ; [+3]
     2889 MOVE                             R28 R23
     2890 GETIMPORT                        R27 K4 [tostring]
     2892 CALL                             R27 1 1
     2893 MOVE                             R25 R27
     2894 LOADK                            R26 K43 [""]
     2895 CONCAT                           R22 R24 R26
     2896 SETTABLEKS                       R22 R21 K185 ["jumpPower"]
     2898 CALL                             R19 2 1
     2899 SETTABLEKS                       R19 R18 K22 ["translation"]
     2901 GETTABLEKS                       R19 R2 K14 ["userId"]
     2903 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2905 MOVE                             R19 R0
     2906 GETTABLEKS                       R20 R2 K14 ["userId"]
     2908 CALL                             R19 1 1
     2909 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2911 LOADK                            R19 K37 ["Universe"]
     2912 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2914 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2916 SETTABLEKS                       R19 R18 K26 ["iconId"]
     2918 GETTABLEKS                       R19 R2 K2 ["universeId"]
     2920 SETTABLEKS                       R19 R18 K2 ["universeId"]
     2922 GETTABLEKS                       R19 R2 K27 ["headerText"]
     2924 SETTABLEKS                       R19 R18 K27 ["headerText"]
     2926 GETTABLEKS                       R19 R2 K28 ["footerText"]
     2928 SETTABLEKS                       R19 R18 K28 ["footerText"]
     2930 RETURN                           R18 1
     2931 GETTABLEKS                       R18 R2 K17 ["eventType"]
     2933 JUMPIFNOTEQKN                    R18 K188 [31] ; [+82]
     2935 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     2936 GETTABLEKS                       R19 R2 K19 ["id"]
     2938 SETTABLEKS                       R19 R18 K19 ["id"]
     2940 LOADK                            R19 K189 ["WorldSettingsWalkSpeed"]
     2941 SETTABLEKS                       R19 R18 K17 ["eventType"]
     2943 LOADK                            R19 K40 ["Experience"]
     2944 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     2946 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     2948 GETIMPORT                        R21 K34 [pcall]
     2950 NEWCLOSURE                       R22 P6
     2951 CAPTURE                          VAL R20
     2952 CAPTURE                          VAL R3
     2953 CALL                             R21 1 2
     2954 JUMPIFNOT                        R21 ; [+2]
     2955 MOVE                             R19 R22
     2956 JUMP                             ; [+1]
     2957 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     2958 SETTABLEKS                       R19 R18 K21 ["date"]
     2960 MOVE                             R19 R12
     2961 LOADK                            R20 K190 ["Description.WorldSettingsWalkSpeed"]
     2962 DUPTABLE                         R21 K192 [{"walkSpeed"}]
     2963 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2965 JUMPIFNOT                        R24 ; [+5]
     2966 GETTABLEKS                       R24 R2 K41 ["metaData"]
     2968 GETTABLEKS                       R23 R24 K193 ["WalkSpeed"]
     2970 JUMPIF                           R23 ; [+1]
     2971 LOADK                            R23 K43 [""]
     2972 LOADK                            R24 K43 [""]
     2973 FASTCALL1                        TOSTRING R23 ; [+3]
     2974 MOVE                             R28 R23
     2975 GETIMPORT                        R27 K4 [tostring]
     2977 CALL                             R27 1 1
     2978 MOVE                             R25 R27
     2979 LOADK                            R26 K43 [""]
     2980 CONCAT                           R22 R24 R26
     2981 SETTABLEKS                       R22 R21 K191 ["walkSpeed"]
     2983 CALL                             R19 2 1
     2984 SETTABLEKS                       R19 R18 K22 ["translation"]
     2986 GETTABLEKS                       R19 R2 K14 ["userId"]
     2988 SETTABLEKS                       R19 R18 K23 ["actorId"]
     2990 MOVE                             R19 R0
     2991 GETTABLEKS                       R20 R2 K14 ["userId"]
     2993 CALL                             R19 1 1
     2994 SETTABLEKS                       R19 R18 K24 ["actorName"]
     2996 LOADK                            R19 K37 ["Universe"]
     2997 SETTABLEKS                       R19 R18 K25 ["iconType"]
     2999 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3001 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3003 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3005 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3007 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3009 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3011 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3013 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3015 RETURN                           R18 1
     3016 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3018 JUMPIFNOTEQKN                    R18 K194 [32] ; [+82]
     3020 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3021 GETTABLEKS                       R19 R2 K19 ["id"]
     3023 SETTABLEKS                       R19 R18 K19 ["id"]
     3025 LOADK                            R19 K195 ["WorldSettingsMaxSlopeAngle"]
     3026 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3028 LOADK                            R19 K40 ["Experience"]
     3029 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3031 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3033 GETIMPORT                        R21 K34 [pcall]
     3035 NEWCLOSURE                       R22 P6
     3036 CAPTURE                          VAL R20
     3037 CAPTURE                          VAL R3
     3038 CALL                             R21 1 2
     3039 JUMPIFNOT                        R21 ; [+2]
     3040 MOVE                             R19 R22
     3041 JUMP                             ; [+1]
     3042 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3043 SETTABLEKS                       R19 R18 K21 ["date"]
     3045 MOVE                             R19 R12
     3046 LOADK                            R20 K196 ["Description.WorldSettingsMaxSlopeAngle"]
     3047 DUPTABLE                         R21 K198 [{"maxSlopeAngle"}]
     3048 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3050 JUMPIFNOT                        R24 ; [+5]
     3051 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3053 GETTABLEKS                       R23 R24 K199 ["MaxSlopeAngle"]
     3055 JUMPIF                           R23 ; [+1]
     3056 LOADK                            R23 K43 [""]
     3057 LOADK                            R24 K43 [""]
     3058 FASTCALL1                        TOSTRING R23 ; [+3]
     3059 MOVE                             R28 R23
     3060 GETIMPORT                        R27 K4 [tostring]
     3062 CALL                             R27 1 1
     3063 MOVE                             R25 R27
     3064 LOADK                            R26 K43 [""]
     3065 CONCAT                           R22 R24 R26
     3066 SETTABLEKS                       R22 R21 K197 ["maxSlopeAngle"]
     3068 CALL                             R19 2 1
     3069 SETTABLEKS                       R19 R18 K22 ["translation"]
     3071 GETTABLEKS                       R19 R2 K14 ["userId"]
     3073 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3075 MOVE                             R19 R0
     3076 GETTABLEKS                       R20 R2 K14 ["userId"]
     3078 CALL                             R19 1 1
     3079 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3081 LOADK                            R19 K37 ["Universe"]
     3082 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3084 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3086 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3088 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3090 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3092 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3094 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3096 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3098 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3100 RETURN                           R18 1
     3101 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3103 JUMPIFNOTEQKN                    R18 K200 [33] ; [+93]
     3105 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3106 GETTABLEKS                       R19 R2 K19 ["id"]
     3108 SETTABLEKS                       R19 R18 K19 ["id"]
     3110 LOADK                            R19 K201 ["SentUpdate"]
     3111 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3113 LOADK                            R19 K40 ["Experience"]
     3114 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3116 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3118 GETIMPORT                        R21 K34 [pcall]
     3120 NEWCLOSURE                       R22 P6
     3121 CAPTURE                          VAL R20
     3122 CAPTURE                          VAL R3
     3123 CALL                             R21 1 2
     3124 JUMPIFNOT                        R21 ; [+2]
     3125 MOVE                             R19 R22
     3126 JUMP                             ; [+1]
     3127 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3128 SETTABLEKS                       R19 R18 K21 ["date"]
     3130 MOVE                             R19 R12
     3131 LOADK                            R20 K202 ["Description.SentUpdate"]
     3132 DUPTABLE                         R21 K204 [{"update"}]
     3133 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3135 JUMPIFNOT                        R24 ; [+5]
     3136 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3138 GETTABLEKS                       R23 R24 K205 ["Update"]
     3140 JUMPIF                           R23 ; [+1]
     3141 LOADK                            R23 K43 [""]
     3142 LOADK                            R24 K43 [""]
     3143 FASTCALL1                        TOSTRING R23 ; [+3]
     3144 MOVE                             R28 R23
     3145 GETIMPORT                        R27 K4 [tostring]
     3147 CALL                             R27 1 1
     3148 MOVE                             R25 R27
     3149 LOADK                            R26 K43 [""]
     3150 CONCAT                           R22 R24 R26
     3151 SETTABLEKS                       R22 R21 K203 ["update"]
     3153 CALL                             R19 2 1
     3154 SETTABLEKS                       R19 R18 K22 ["translation"]
     3156 GETTABLEKS                       R19 R2 K14 ["userId"]
     3158 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3160 MOVE                             R19 R0
     3161 GETTABLEKS                       R20 R2 K14 ["userId"]
     3163 CALL                             R19 1 1
     3164 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3166 LOADK                            R19 K37 ["Universe"]
     3167 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3169 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3171 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3173 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3175 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3177 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3179 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3181 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3183 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3185 LOADK                            R20 K43 [""]
     3186 FASTCALL1                        TOSTRING R4 ; [+3]
     3187 MOVE                             R24 R4
     3188 GETIMPORT                        R23 K4 [tostring]
     3190 CALL                             R23 1 1
     3191 MOVE                             R21 R23
     3192 LOADK                            R22 K206 ["/updates"]
     3193 CONCAT                           R19 R20 R22
     3194 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3196 RETURN                           R18 1
     3197 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3199 JUMPIFNOTEQKN                    R18 K207 [34] ; [+134]
     3201 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3202 GETTABLEKS                       R19 R2 K19 ["id"]
     3204 SETTABLEKS                       R19 R18 K19 ["id"]
     3206 LOADK                            R19 K208 ["SupportedLanguages"]
     3207 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3209 LOADK                            R19 K31 ["Unknown"]
     3210 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3212 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3214 GETIMPORT                        R21 K34 [pcall]
     3216 NEWCLOSURE                       R22 P6
     3217 CAPTURE                          VAL R20
     3218 CAPTURE                          VAL R3
     3219 CALL                             R21 1 2
     3220 JUMPIFNOT                        R21 ; [+2]
     3221 MOVE                             R19 R22
     3222 JUMP                             ; [+1]
     3223 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3224 SETTABLEKS                       R19 R18 K21 ["date"]
     3226 MOVE                             R19 R12
     3227 LOADK                            R20 K209 ["Description.SupportedLanguages"]
     3228 DUPTABLE                         R21 K211 [{"language", "action"}]
     3229 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3231 JUMPIFNOT                        R24 ; [+5]
     3232 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3234 GETTABLEKS                       R23 R24 K212 ["Language"]
     3236 JUMPIF                           R23 ; [+1]
     3237 LOADK                            R23 K43 [""]
     3238 LOADK                            R24 K43 [""]
     3239 FASTCALL1                        TOSTRING R23 ; [+3]
     3240 MOVE                             R28 R23
     3241 GETIMPORT                        R27 K4 [tostring]
     3243 CALL                             R27 1 1
     3244 MOVE                             R25 R27
     3245 LOADK                            R26 K43 [""]
     3246 CONCAT                           R22 R24 R26
     3247 SETTABLEKS                       R22 R21 K210 ["language"]
     3249 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3251 JUMPIFNOT                        R26 ; [+5]
     3252 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3254 GETTABLEKS                       R25 R26 K42 ["Action"]
     3256 JUMPIF                           R25 ; [+1]
     3257 LOADK                            R25 K43 [""]
     3258 GETIMPORT                        R26 K46 [string.lower]
     3260 FASTCALL1                        TOSTRING R25 ; [+3]
     3261 MOVE                             R28 R25
     3262 GETIMPORT                        R27 K4 [tostring]
     3264 CALL                             R27 1 1
     3265 CALL                             R26 1 1
     3266 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3268 LOADB                            R24 1
     3269 JUMP                             ; [+1]
     3270 LOADB                            R24 0
     3271 JUMPIFNOT                        R24 ; [+4]
     3272 MOVE                             R23 R12
     3273 LOADK                            R24 K213 ["Description.ActionAdded"]
     3274 CALL                             R23 1 1
     3275 JUMPIF                           R23 ; [+3]
     3276 MOVE                             R23 R12
     3277 LOADK                            R24 K214 ["Description.ActionRemoved"]
     3278 CALL                             R23 1 1
     3279 LOADK                            R24 K43 [""]
     3280 FASTCALL1                        TOSTRING R23 ; [+3]
     3281 MOVE                             R28 R23
     3282 GETIMPORT                        R27 K4 [tostring]
     3284 CALL                             R27 1 1
     3285 MOVE                             R25 R27
     3286 LOADK                            R26 K43 [""]
     3287 CONCAT                           R22 R24 R26
     3288 SETTABLEKS                       R22 R21 K138 ["action"]
     3290 CALL                             R19 2 1
     3291 SETTABLEKS                       R19 R18 K22 ["translation"]
     3293 GETTABLEKS                       R19 R2 K14 ["userId"]
     3295 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3297 MOVE                             R19 R0
     3298 GETTABLEKS                       R20 R2 K14 ["userId"]
     3300 CALL                             R19 1 1
     3301 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3303 LOADK                            R19 K37 ["Universe"]
     3304 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3306 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3308 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3310 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3312 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3314 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3316 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3318 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3320 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3322 LOADK                            R20 K43 [""]
     3323 FASTCALL1                        TOSTRING R4 ; [+3]
     3324 MOVE                             R24 R4
     3325 GETIMPORT                        R23 K4 [tostring]
     3327 CALL                             R23 1 1
     3328 MOVE                             R21 R23
     3329 LOADK                            R22 K215 ["/localization"]
     3330 CONCAT                           R19 R20 R22
     3331 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3333 RETURN                           R18 1
     3334 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3336 JUMPIFNOTEQKN                    R18 K216 [35] ; [+134]
     3338 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3339 GETTABLEKS                       R19 R2 K19 ["id"]
     3341 SETTABLEKS                       R19 R18 K19 ["id"]
     3343 LOADK                            R19 K217 ["AutoTranslationExperienceInformation"]
     3344 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3346 LOADK                            R19 K31 ["Unknown"]
     3347 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3349 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3351 GETIMPORT                        R21 K34 [pcall]
     3353 NEWCLOSURE                       R22 P6
     3354 CAPTURE                          VAL R20
     3355 CAPTURE                          VAL R3
     3356 CALL                             R21 1 2
     3357 JUMPIFNOT                        R21 ; [+2]
     3358 MOVE                             R19 R22
     3359 JUMP                             ; [+1]
     3360 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3361 SETTABLEKS                       R19 R18 K21 ["date"]
     3363 MOVE                             R19 R12
     3364 LOADK                            R20 K218 ["Description.AutoTranslationExperienceInformation"]
     3365 DUPTABLE                         R21 K211 [{"language", "action"}]
     3366 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3368 JUMPIFNOT                        R24 ; [+5]
     3369 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3371 GETTABLEKS                       R23 R24 K212 ["Language"]
     3373 JUMPIF                           R23 ; [+1]
     3374 LOADK                            R23 K43 [""]
     3375 LOADK                            R24 K43 [""]
     3376 FASTCALL1                        TOSTRING R23 ; [+3]
     3377 MOVE                             R28 R23
     3378 GETIMPORT                        R27 K4 [tostring]
     3380 CALL                             R27 1 1
     3381 MOVE                             R25 R27
     3382 LOADK                            R26 K43 [""]
     3383 CONCAT                           R22 R24 R26
     3384 SETTABLEKS                       R22 R21 K210 ["language"]
     3386 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3388 JUMPIFNOT                        R26 ; [+5]
     3389 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3391 GETTABLEKS                       R25 R26 K42 ["Action"]
     3393 JUMPIF                           R25 ; [+1]
     3394 LOADK                            R25 K43 [""]
     3395 GETIMPORT                        R26 K46 [string.lower]
     3397 FASTCALL1                        TOSTRING R25 ; [+3]
     3398 MOVE                             R28 R25
     3399 GETIMPORT                        R27 K4 [tostring]
     3401 CALL                             R27 1 1
     3402 CALL                             R26 1 1
     3403 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3405 LOADB                            R24 1
     3406 JUMP                             ; [+1]
     3407 LOADB                            R24 0
     3408 JUMPIFNOT                        R24 ; [+4]
     3409 MOVE                             R23 R12
     3410 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3411 CALL                             R23 1 1
     3412 JUMPIF                           R23 ; [+3]
     3413 MOVE                             R23 R12
     3414 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3415 CALL                             R23 1 1
     3416 LOADK                            R24 K43 [""]
     3417 FASTCALL1                        TOSTRING R23 ; [+3]
     3418 MOVE                             R28 R23
     3419 GETIMPORT                        R27 K4 [tostring]
     3421 CALL                             R27 1 1
     3422 MOVE                             R25 R27
     3423 LOADK                            R26 K43 [""]
     3424 CONCAT                           R22 R24 R26
     3425 SETTABLEKS                       R22 R21 K138 ["action"]
     3427 CALL                             R19 2 1
     3428 SETTABLEKS                       R19 R18 K22 ["translation"]
     3430 GETTABLEKS                       R19 R2 K14 ["userId"]
     3432 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3434 MOVE                             R19 R0
     3435 GETTABLEKS                       R20 R2 K14 ["userId"]
     3437 CALL                             R19 1 1
     3438 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3440 LOADK                            R19 K37 ["Universe"]
     3441 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3443 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3445 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3447 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3449 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3451 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3453 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3455 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3457 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3459 LOADK                            R20 K43 [""]
     3460 FASTCALL1                        TOSTRING R4 ; [+3]
     3461 MOVE                             R24 R4
     3462 GETIMPORT                        R23 K4 [tostring]
     3464 CALL                             R23 1 1
     3465 MOVE                             R21 R23
     3466 LOADK                            R22 K215 ["/localization"]
     3467 CONCAT                           R19 R20 R22
     3468 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3470 RETURN                           R18 1
     3471 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3473 JUMPIFNOTEQKN                    R18 K219 [36] ; [+134]
     3475 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3476 GETTABLEKS                       R19 R2 K19 ["id"]
     3478 SETTABLEKS                       R19 R18 K19 ["id"]
     3480 LOADK                            R19 K220 ["AutoTranslationExperienceStringsAndProducts"]
     3481 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3483 LOADK                            R19 K31 ["Unknown"]
     3484 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3486 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3488 GETIMPORT                        R21 K34 [pcall]
     3490 NEWCLOSURE                       R22 P6
     3491 CAPTURE                          VAL R20
     3492 CAPTURE                          VAL R3
     3493 CALL                             R21 1 2
     3494 JUMPIFNOT                        R21 ; [+2]
     3495 MOVE                             R19 R22
     3496 JUMP                             ; [+1]
     3497 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3498 SETTABLEKS                       R19 R18 K21 ["date"]
     3500 MOVE                             R19 R12
     3501 LOADK                            R20 K221 ["Description.AutoTranslationExperienceStringsAndProducts"]
     3502 DUPTABLE                         R21 K211 [{"language", "action"}]
     3503 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3505 JUMPIFNOT                        R24 ; [+5]
     3506 GETTABLEKS                       R24 R2 K41 ["metaData"]
     3508 GETTABLEKS                       R23 R24 K212 ["Language"]
     3510 JUMPIF                           R23 ; [+1]
     3511 LOADK                            R23 K43 [""]
     3512 LOADK                            R24 K43 [""]
     3513 FASTCALL1                        TOSTRING R23 ; [+3]
     3514 MOVE                             R28 R23
     3515 GETIMPORT                        R27 K4 [tostring]
     3517 CALL                             R27 1 1
     3518 MOVE                             R25 R27
     3519 LOADK                            R26 K43 [""]
     3520 CONCAT                           R22 R24 R26
     3521 SETTABLEKS                       R22 R21 K210 ["language"]
     3523 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3525 JUMPIFNOT                        R26 ; [+5]
     3526 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3528 GETTABLEKS                       R25 R26 K42 ["Action"]
     3530 JUMPIF                           R25 ; [+1]
     3531 LOADK                            R25 K43 [""]
     3532 GETIMPORT                        R26 K46 [string.lower]
     3534 FASTCALL1                        TOSTRING R25 ; [+3]
     3535 MOVE                             R28 R25
     3536 GETIMPORT                        R27 K4 [tostring]
     3538 CALL                             R27 1 1
     3539 CALL                             R26 1 1
     3540 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3542 LOADB                            R24 1
     3543 JUMP                             ; [+1]
     3544 LOADB                            R24 0
     3545 JUMPIFNOT                        R24 ; [+4]
     3546 MOVE                             R23 R12
     3547 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3548 CALL                             R23 1 1
     3549 JUMPIF                           R23 ; [+3]
     3550 MOVE                             R23 R12
     3551 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3552 CALL                             R23 1 1
     3553 LOADK                            R24 K43 [""]
     3554 FASTCALL1                        TOSTRING R23 ; [+3]
     3555 MOVE                             R28 R23
     3556 GETIMPORT                        R27 K4 [tostring]
     3558 CALL                             R27 1 1
     3559 MOVE                             R25 R27
     3560 LOADK                            R26 K43 [""]
     3561 CONCAT                           R22 R24 R26
     3562 SETTABLEKS                       R22 R21 K138 ["action"]
     3564 CALL                             R19 2 1
     3565 SETTABLEKS                       R19 R18 K22 ["translation"]
     3567 GETTABLEKS                       R19 R2 K14 ["userId"]
     3569 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3571 MOVE                             R19 R0
     3572 GETTABLEKS                       R20 R2 K14 ["userId"]
     3574 CALL                             R19 1 1
     3575 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3577 LOADK                            R19 K37 ["Universe"]
     3578 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3580 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3582 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3584 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3586 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3588 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3590 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3592 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3594 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3596 LOADK                            R20 K43 [""]
     3597 FASTCALL1                        TOSTRING R4 ; [+3]
     3598 MOVE                             R24 R4
     3599 GETIMPORT                        R23 K4 [tostring]
     3601 CALL                             R23 1 1
     3602 MOVE                             R21 R23
     3603 LOADK                            R22 K215 ["/localization"]
     3604 CONCAT                           R19 R20 R22
     3605 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3607 RETURN                           R18 1
     3608 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3610 JUMPIFNOTEQKN                    R18 K222 [37] ; [+114]
     3612 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3613 GETTABLEKS                       R19 R2 K19 ["id"]
     3615 SETTABLEKS                       R19 R18 K19 ["id"]
     3617 LOADK                            R19 K223 ["LocalizationSettingsAutomaticTextCapture"]
     3618 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3620 LOADK                            R19 K31 ["Unknown"]
     3621 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3623 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3625 GETIMPORT                        R21 K34 [pcall]
     3627 NEWCLOSURE                       R22 P6
     3628 CAPTURE                          VAL R20
     3629 CAPTURE                          VAL R3
     3630 CALL                             R21 1 2
     3631 JUMPIFNOT                        R21 ; [+2]
     3632 MOVE                             R19 R22
     3633 JUMP                             ; [+1]
     3634 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3635 SETTABLEKS                       R19 R18 K21 ["date"]
     3637 MOVE                             R19 R12
     3638 LOADK                            R20 K224 ["Description.LocalizationSettingsAutomaticTextCapture"]
     3639 DUPTABLE                         R21 K139 [{"action"}]
     3640 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3642 JUMPIFNOT                        R26 ; [+5]
     3643 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3645 GETTABLEKS                       R25 R26 K42 ["Action"]
     3647 JUMPIF                           R25 ; [+1]
     3648 LOADK                            R25 K43 [""]
     3649 GETIMPORT                        R26 K46 [string.lower]
     3651 FASTCALL1                        TOSTRING R25 ; [+3]
     3652 MOVE                             R28 R25
     3653 GETIMPORT                        R27 K4 [tostring]
     3655 CALL                             R27 1 1
     3656 CALL                             R26 1 1
     3657 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3659 LOADB                            R24 1
     3660 JUMP                             ; [+1]
     3661 LOADB                            R24 0
     3662 JUMPIFNOT                        R24 ; [+4]
     3663 MOVE                             R23 R12
     3664 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3665 CALL                             R23 1 1
     3666 JUMPIF                           R23 ; [+3]
     3667 MOVE                             R23 R12
     3668 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3669 CALL                             R23 1 1
     3670 LOADK                            R24 K43 [""]
     3671 FASTCALL1                        TOSTRING R23 ; [+3]
     3672 MOVE                             R28 R23
     3673 GETIMPORT                        R27 K4 [tostring]
     3675 CALL                             R27 1 1
     3676 MOVE                             R25 R27
     3677 LOADK                            R26 K43 [""]
     3678 CONCAT                           R22 R24 R26
     3679 SETTABLEKS                       R22 R21 K138 ["action"]
     3681 CALL                             R19 2 1
     3682 SETTABLEKS                       R19 R18 K22 ["translation"]
     3684 GETTABLEKS                       R19 R2 K14 ["userId"]
     3686 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3688 MOVE                             R19 R0
     3689 GETTABLEKS                       R20 R2 K14 ["userId"]
     3691 CALL                             R19 1 1
     3692 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3694 LOADK                            R19 K37 ["Universe"]
     3695 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3697 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3699 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3701 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3703 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3705 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3707 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3709 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3711 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3713 LOADK                            R20 K43 [""]
     3714 FASTCALL1                        TOSTRING R4 ; [+3]
     3715 MOVE                             R24 R4
     3716 GETIMPORT                        R23 K4 [tostring]
     3718 CALL                             R23 1 1
     3719 MOVE                             R21 R23
     3720 LOADK                            R22 K215 ["/localization"]
     3721 CONCAT                           R19 R20 R22
     3722 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3724 RETURN                           R18 1
     3725 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3727 JUMPIFNOTEQKN                    R18 K225 [38] ; [+114]
     3729 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     3730 GETTABLEKS                       R19 R2 K19 ["id"]
     3732 SETTABLEKS                       R19 R18 K19 ["id"]
     3734 LOADK                            R19 K226 ["LocalizationSettingsUserTranslatedContent"]
     3735 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3737 LOADK                            R19 K31 ["Unknown"]
     3738 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3740 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3742 GETIMPORT                        R21 K34 [pcall]
     3744 NEWCLOSURE                       R22 P6
     3745 CAPTURE                          VAL R20
     3746 CAPTURE                          VAL R3
     3747 CALL                             R21 1 2
     3748 JUMPIFNOT                        R21 ; [+2]
     3749 MOVE                             R19 R22
     3750 JUMP                             ; [+1]
     3751 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3752 SETTABLEKS                       R19 R18 K21 ["date"]
     3754 MOVE                             R19 R12
     3755 LOADK                            R20 K227 ["Description.LocalizationSettingsUserTranslatedContent"]
     3756 DUPTABLE                         R21 K139 [{"action"}]
     3757 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3759 JUMPIFNOT                        R26 ; [+5]
     3760 GETTABLEKS                       R26 R2 K41 ["metaData"]
     3762 GETTABLEKS                       R25 R26 K42 ["Action"]
     3764 JUMPIF                           R25 ; [+1]
     3765 LOADK                            R25 K43 [""]
     3766 GETIMPORT                        R26 K46 [string.lower]
     3768 FASTCALL1                        TOSTRING R25 ; [+3]
     3769 MOVE                             R28 R25
     3770 GETIMPORT                        R27 K4 [tostring]
     3772 CALL                             R27 1 1
     3773 CALL                             R26 1 1
     3774 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     3776 LOADB                            R24 1
     3777 JUMP                             ; [+1]
     3778 LOADB                            R24 0
     3779 JUMPIFNOT                        R24 ; [+4]
     3780 MOVE                             R23 R12
     3781 LOADK                            R24 K140 ["Description.ActionEnabled"]
     3782 CALL                             R23 1 1
     3783 JUMPIF                           R23 ; [+3]
     3784 MOVE                             R23 R12
     3785 LOADK                            R24 K141 ["Description.ActionDisabled"]
     3786 CALL                             R23 1 1
     3787 LOADK                            R24 K43 [""]
     3788 FASTCALL1                        TOSTRING R23 ; [+3]
     3789 MOVE                             R28 R23
     3790 GETIMPORT                        R27 K4 [tostring]
     3792 CALL                             R27 1 1
     3793 MOVE                             R25 R27
     3794 LOADK                            R26 K43 [""]
     3795 CONCAT                           R22 R24 R26
     3796 SETTABLEKS                       R22 R21 K138 ["action"]
     3798 CALL                             R19 2 1
     3799 SETTABLEKS                       R19 R18 K22 ["translation"]
     3801 GETTABLEKS                       R19 R2 K14 ["userId"]
     3803 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3805 MOVE                             R19 R0
     3806 GETTABLEKS                       R20 R2 K14 ["userId"]
     3808 CALL                             R19 1 1
     3809 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3811 LOADK                            R19 K37 ["Universe"]
     3812 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3814 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3816 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3818 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3820 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3822 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3824 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3826 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3828 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3830 LOADK                            R20 K43 [""]
     3831 FASTCALL1                        TOSTRING R4 ; [+3]
     3832 MOVE                             R24 R4
     3833 GETIMPORT                        R23 K4 [tostring]
     3835 CALL                             R23 1 1
     3836 MOVE                             R21 R23
     3837 LOADK                            R22 K215 ["/localization"]
     3838 CONCAT                           R19 R20 R22
     3839 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     3841 RETURN                           R18 1
     3842 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3844 JUMPIFNOTEQKN                    R18 K228 [39] ; [+59]
     3846 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3847 GETTABLEKS                       R19 R2 K19 ["id"]
     3849 SETTABLEKS                       R19 R18 K19 ["id"]
     3851 LOADK                            R19 K229 ["ClearUnmodifiedAutoCaptureEntries"]
     3852 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3854 LOADK                            R19 K31 ["Unknown"]
     3855 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3857 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3859 GETIMPORT                        R21 K34 [pcall]
     3861 NEWCLOSURE                       R22 P6
     3862 CAPTURE                          VAL R20
     3863 CAPTURE                          VAL R3
     3864 CALL                             R21 1 2
     3865 JUMPIFNOT                        R21 ; [+2]
     3866 MOVE                             R19 R22
     3867 JUMP                             ; [+1]
     3868 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3869 SETTABLEKS                       R19 R18 K21 ["date"]
     3871 LOADK                            R19 K43 [""]
     3872 SETTABLEKS                       R19 R18 K22 ["translation"]
     3874 GETTABLEKS                       R19 R2 K14 ["userId"]
     3876 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3878 MOVE                             R19 R0
     3879 GETTABLEKS                       R20 R2 K14 ["userId"]
     3881 CALL                             R19 1 1
     3882 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3884 LOADK                            R19 K37 ["Universe"]
     3885 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3887 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3889 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3891 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3893 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3895 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3897 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3899 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3901 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3903 RETURN                           R18 1
     3904 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3906 JUMPIFNOTEQKN                    R18 K230 [40] ; [+59]
     3908 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     3909 GETTABLEKS                       R19 R2 K19 ["id"]
     3911 SETTABLEKS                       R19 R18 K19 ["id"]
     3913 LOADK                            R19 K231 ["AnalyticsReport"]
     3914 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3916 LOADK                            R19 K31 ["Unknown"]
     3917 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3919 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3921 GETIMPORT                        R21 K34 [pcall]
     3923 NEWCLOSURE                       R22 P6
     3924 CAPTURE                          VAL R20
     3925 CAPTURE                          VAL R3
     3926 CALL                             R21 1 2
     3927 JUMPIFNOT                        R21 ; [+2]
     3928 MOVE                             R19 R22
     3929 JUMP                             ; [+1]
     3930 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3931 SETTABLEKS                       R19 R18 K21 ["date"]
     3933 LOADK                            R19 K43 [""]
     3934 SETTABLEKS                       R19 R18 K22 ["translation"]
     3936 GETTABLEKS                       R19 R2 K14 ["userId"]
     3938 SETTABLEKS                       R19 R18 K23 ["actorId"]
     3940 MOVE                             R19 R0
     3941 GETTABLEKS                       R20 R2 K14 ["userId"]
     3943 CALL                             R19 1 1
     3944 SETTABLEKS                       R19 R18 K24 ["actorName"]
     3946 LOADK                            R19 K37 ["Universe"]
     3947 SETTABLEKS                       R19 R18 K25 ["iconType"]
     3949 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3951 SETTABLEKS                       R19 R18 K26 ["iconId"]
     3953 GETTABLEKS                       R19 R2 K2 ["universeId"]
     3955 SETTABLEKS                       R19 R18 K2 ["universeId"]
     3957 GETTABLEKS                       R19 R2 K27 ["headerText"]
     3959 SETTABLEKS                       R19 R18 K27 ["headerText"]
     3961 GETTABLEKS                       R19 R2 K28 ["footerText"]
     3963 SETTABLEKS                       R19 R18 K28 ["footerText"]
     3965 RETURN                           R18 1
     3966 GETTABLEKS                       R18 R2 K17 ["eventType"]
     3968 JUMPIFNOTEQKN                    R18 K232 [41] ; [+132]
     3970 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     3971 GETTABLEKS                       R19 R2 K19 ["id"]
     3973 SETTABLEKS                       R19 R18 K19 ["id"]
     3975 LOADK                            R19 K235 ["TranslationIconAdded"]
     3976 SETTABLEKS                       R19 R18 K17 ["eventType"]
     3978 LOADK                            R19 K31 ["Unknown"]
     3979 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     3981 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     3983 GETIMPORT                        R21 K34 [pcall]
     3985 NEWCLOSURE                       R22 P6
     3986 CAPTURE                          VAL R20
     3987 CAPTURE                          VAL R3
     3988 CALL                             R21 1 2
     3989 JUMPIFNOT                        R21 ; [+2]
     3990 MOVE                             R19 R22
     3991 JUMP                             ; [+1]
     3992 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     3993 SETTABLEKS                       R19 R18 K21 ["date"]
     3995 MOVE                             R19 R12
     3996 LOADK                            R20 K236 ["Description.TranslationIconAdded"]
     3997 DUPTABLE                         R21 K238 [{"language", "iconName"}]
     3998 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4000 JUMPIFNOT                        R24 ; [+5]
     4001 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4003 GETTABLEKS                       R23 R24 K212 ["Language"]
     4005 JUMPIF                           R23 ; [+1]
     4006 LOADK                            R23 K43 [""]
     4007 LOADK                            R24 K43 [""]
     4008 FASTCALL1                        TOSTRING R23 ; [+3]
     4009 MOVE                             R28 R23
     4010 GETIMPORT                        R27 K4 [tostring]
     4012 CALL                             R27 1 1
     4013 MOVE                             R25 R27
     4014 LOADK                            R26 K43 [""]
     4015 CONCAT                           R22 R24 R26
     4016 SETTABLEKS                       R22 R21 K210 ["language"]
     4018 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4020 JUMPIFNOT                        R24 ; [+5]
     4021 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4023 GETTABLEKS                       R23 R24 K239 ["IconName"]
     4025 JUMPIF                           R23 ; [+1]
     4026 LOADK                            R23 K43 [""]
     4027 LOADK                            R24 K43 [""]
     4028 FASTCALL1                        TOSTRING R23 ; [+3]
     4029 MOVE                             R28 R23
     4030 GETIMPORT                        R27 K4 [tostring]
     4032 CALL                             R27 1 1
     4033 MOVE                             R25 R27
     4034 LOADK                            R26 K43 [""]
     4035 CONCAT                           R22 R24 R26
     4036 SETTABLEKS                       R22 R21 K237 ["iconName"]
     4038 CALL                             R19 2 1
     4039 SETTABLEKS                       R19 R18 K22 ["translation"]
     4041 GETTABLEKS                       R19 R2 K14 ["userId"]
     4043 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4045 MOVE                             R19 R0
     4046 GETTABLEKS                       R20 R2 K14 ["userId"]
     4048 CALL                             R19 1 1
     4049 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4051 LOADK                            R19 K37 ["Universe"]
     4052 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4054 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4056 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4058 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4060 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4062 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4064 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4066 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4068 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4070 LOADK                            R20 K43 [""]
     4071 FASTCALL1                        TOSTRING R4 ; [+3]
     4072 MOVE                             R24 R4
     4073 GETIMPORT                        R23 K4 [tostring]
     4075 CALL                             R23 1 1
     4076 MOVE                             R21 R23
     4077 LOADK                            R22 K240 ["/localization/translation"]
     4078 CONCAT                           R19 R20 R22
     4079 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4081 LOADK                            R20 K43 [""]
     4082 GETUPVAL                         R26 1
     4083 FASTCALL1                        TOSTRING R26 ; [+2]
     4084 GETIMPORT                        R25 K4 [tostring]
     4086 CALL                             R25 1 1
     4087 MOVE                             R21 R25
     4088 LOADK                            R22 K241 ["catalog/"]
     4089 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4091 FASTCALL1                        TOSTRING R26 ; [+2]
     4092 GETIMPORT                        R25 K4 [tostring]
     4094 CALL                             R25 1 1
     4095 MOVE                             R23 R25
     4096 LOADK                            R24 K43 [""]
     4097 CONCAT                           R19 R20 R24
     4098 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     4100 RETURN                           R18 1
     4101 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4103 JUMPIFNOTEQKN                    R18 K242 [42] ; [+132]
     4105 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     4106 GETTABLEKS                       R19 R2 K19 ["id"]
     4108 SETTABLEKS                       R19 R18 K19 ["id"]
     4110 LOADK                            R19 K243 ["TranslationIconDeleted"]
     4111 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4113 LOADK                            R19 K31 ["Unknown"]
     4114 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4116 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4118 GETIMPORT                        R21 K34 [pcall]
     4120 NEWCLOSURE                       R22 P6
     4121 CAPTURE                          VAL R20
     4122 CAPTURE                          VAL R3
     4123 CALL                             R21 1 2
     4124 JUMPIFNOT                        R21 ; [+2]
     4125 MOVE                             R19 R22
     4126 JUMP                             ; [+1]
     4127 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4128 SETTABLEKS                       R19 R18 K21 ["date"]
     4130 MOVE                             R19 R12
     4131 LOADK                            R20 K244 ["Description.TranslationIconDeleted"]
     4132 DUPTABLE                         R21 K238 [{"language", "iconName"}]
     4133 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4135 JUMPIFNOT                        R24 ; [+5]
     4136 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4138 GETTABLEKS                       R23 R24 K212 ["Language"]
     4140 JUMPIF                           R23 ; [+1]
     4141 LOADK                            R23 K43 [""]
     4142 LOADK                            R24 K43 [""]
     4143 FASTCALL1                        TOSTRING R23 ; [+3]
     4144 MOVE                             R28 R23
     4145 GETIMPORT                        R27 K4 [tostring]
     4147 CALL                             R27 1 1
     4148 MOVE                             R25 R27
     4149 LOADK                            R26 K43 [""]
     4150 CONCAT                           R22 R24 R26
     4151 SETTABLEKS                       R22 R21 K210 ["language"]
     4153 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4155 JUMPIFNOT                        R24 ; [+5]
     4156 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4158 GETTABLEKS                       R23 R24 K239 ["IconName"]
     4160 JUMPIF                           R23 ; [+1]
     4161 LOADK                            R23 K43 [""]
     4162 LOADK                            R24 K43 [""]
     4163 FASTCALL1                        TOSTRING R23 ; [+3]
     4164 MOVE                             R28 R23
     4165 GETIMPORT                        R27 K4 [tostring]
     4167 CALL                             R27 1 1
     4168 MOVE                             R25 R27
     4169 LOADK                            R26 K43 [""]
     4170 CONCAT                           R22 R24 R26
     4171 SETTABLEKS                       R22 R21 K237 ["iconName"]
     4173 CALL                             R19 2 1
     4174 SETTABLEKS                       R19 R18 K22 ["translation"]
     4176 GETTABLEKS                       R19 R2 K14 ["userId"]
     4178 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4180 MOVE                             R19 R0
     4181 GETTABLEKS                       R20 R2 K14 ["userId"]
     4183 CALL                             R19 1 1
     4184 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4186 LOADK                            R19 K37 ["Universe"]
     4187 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4189 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4191 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4193 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4195 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4197 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4199 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4201 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4203 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4205 LOADK                            R20 K43 [""]
     4206 FASTCALL1                        TOSTRING R4 ; [+3]
     4207 MOVE                             R24 R4
     4208 GETIMPORT                        R23 K4 [tostring]
     4210 CALL                             R23 1 1
     4211 MOVE                             R21 R23
     4212 LOADK                            R22 K240 ["/localization/translation"]
     4213 CONCAT                           R19 R20 R22
     4214 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4216 LOADK                            R20 K43 [""]
     4217 GETUPVAL                         R26 1
     4218 FASTCALL1                        TOSTRING R26 ; [+2]
     4219 GETIMPORT                        R25 K4 [tostring]
     4221 CALL                             R25 1 1
     4222 MOVE                             R21 R25
     4223 LOADK                            R22 K241 ["catalog/"]
     4224 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     4226 FASTCALL1                        TOSTRING R26 ; [+2]
     4227 GETIMPORT                        R25 K4 [tostring]
     4229 CALL                             R25 1 1
     4230 MOVE                             R23 R25
     4231 LOADK                            R24 K43 [""]
     4232 CONCAT                           R19 R20 R24
     4233 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     4235 RETURN                           R18 1
     4236 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4238 JUMPIFNOTEQKN                    R18 K245 [43] ; [+93]
     4240 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4241 GETTABLEKS                       R19 R2 K19 ["id"]
     4243 SETTABLEKS                       R19 R18 K19 ["id"]
     4245 LOADK                            R19 K246 ["TranslationExperienceName"]
     4246 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4248 LOADK                            R19 K31 ["Unknown"]
     4249 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4251 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4253 GETIMPORT                        R21 K34 [pcall]
     4255 NEWCLOSURE                       R22 P6
     4256 CAPTURE                          VAL R20
     4257 CAPTURE                          VAL R3
     4258 CALL                             R21 1 2
     4259 JUMPIFNOT                        R21 ; [+2]
     4260 MOVE                             R19 R22
     4261 JUMP                             ; [+1]
     4262 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4263 SETTABLEKS                       R19 R18 K21 ["date"]
     4265 MOVE                             R19 R12
     4266 LOADK                            R20 K247 ["Description.TranslationExperienceName"]
     4267 DUPTABLE                         R21 K248 [{"language"}]
     4268 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4270 JUMPIFNOT                        R24 ; [+5]
     4271 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4273 GETTABLEKS                       R23 R24 K212 ["Language"]
     4275 JUMPIF                           R23 ; [+1]
     4276 LOADK                            R23 K43 [""]
     4277 LOADK                            R24 K43 [""]
     4278 FASTCALL1                        TOSTRING R23 ; [+3]
     4279 MOVE                             R28 R23
     4280 GETIMPORT                        R27 K4 [tostring]
     4282 CALL                             R27 1 1
     4283 MOVE                             R25 R27
     4284 LOADK                            R26 K43 [""]
     4285 CONCAT                           R22 R24 R26
     4286 SETTABLEKS                       R22 R21 K210 ["language"]
     4288 CALL                             R19 2 1
     4289 SETTABLEKS                       R19 R18 K22 ["translation"]
     4291 GETTABLEKS                       R19 R2 K14 ["userId"]
     4293 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4295 MOVE                             R19 R0
     4296 GETTABLEKS                       R20 R2 K14 ["userId"]
     4298 CALL                             R19 1 1
     4299 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4301 LOADK                            R19 K37 ["Universe"]
     4302 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4304 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4306 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4308 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4310 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4312 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4314 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4316 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4318 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4320 LOADK                            R20 K43 [""]
     4321 FASTCALL1                        TOSTRING R4 ; [+3]
     4322 MOVE                             R24 R4
     4323 GETIMPORT                        R23 K4 [tostring]
     4325 CALL                             R23 1 1
     4326 MOVE                             R21 R23
     4327 LOADK                            R22 K240 ["/localization/translation"]
     4328 CONCAT                           R19 R20 R22
     4329 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4331 RETURN                           R18 1
     4332 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4334 JUMPIFNOTEQKN                    R18 K249 [44] ; [+93]
     4336 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4337 GETTABLEKS                       R19 R2 K19 ["id"]
     4339 SETTABLEKS                       R19 R18 K19 ["id"]
     4341 LOADK                            R19 K250 ["TranslationExperienceDescription"]
     4342 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4344 LOADK                            R19 K31 ["Unknown"]
     4345 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4347 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4349 GETIMPORT                        R21 K34 [pcall]
     4351 NEWCLOSURE                       R22 P6
     4352 CAPTURE                          VAL R20
     4353 CAPTURE                          VAL R3
     4354 CALL                             R21 1 2
     4355 JUMPIFNOT                        R21 ; [+2]
     4356 MOVE                             R19 R22
     4357 JUMP                             ; [+1]
     4358 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4359 SETTABLEKS                       R19 R18 K21 ["date"]
     4361 MOVE                             R19 R12
     4362 LOADK                            R20 K251 ["Description.TranslationExperienceDescription"]
     4363 DUPTABLE                         R21 K248 [{"language"}]
     4364 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4366 JUMPIFNOT                        R24 ; [+5]
     4367 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4369 GETTABLEKS                       R23 R24 K212 ["Language"]
     4371 JUMPIF                           R23 ; [+1]
     4372 LOADK                            R23 K43 [""]
     4373 LOADK                            R24 K43 [""]
     4374 FASTCALL1                        TOSTRING R23 ; [+3]
     4375 MOVE                             R28 R23
     4376 GETIMPORT                        R27 K4 [tostring]
     4378 CALL                             R27 1 1
     4379 MOVE                             R25 R27
     4380 LOADK                            R26 K43 [""]
     4381 CONCAT                           R22 R24 R26
     4382 SETTABLEKS                       R22 R21 K210 ["language"]
     4384 CALL                             R19 2 1
     4385 SETTABLEKS                       R19 R18 K22 ["translation"]
     4387 GETTABLEKS                       R19 R2 K14 ["userId"]
     4389 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4391 MOVE                             R19 R0
     4392 GETTABLEKS                       R20 R2 K14 ["userId"]
     4394 CALL                             R19 1 1
     4395 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4397 LOADK                            R19 K37 ["Universe"]
     4398 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4400 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4402 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4404 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4406 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4408 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4410 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4412 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4414 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4416 LOADK                            R20 K43 [""]
     4417 FASTCALL1                        TOSTRING R4 ; [+3]
     4418 MOVE                             R24 R4
     4419 GETIMPORT                        R23 K4 [tostring]
     4421 CALL                             R23 1 1
     4422 MOVE                             R21 R23
     4423 LOADK                            R22 K240 ["/localization/translation"]
     4424 CONCAT                           R19 R20 R22
     4425 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4427 RETURN                           R18 1
     4428 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4430 JUMPIFNOTEQKN                    R18 K252 [45] ; [+113]
     4432 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4433 GETTABLEKS                       R19 R2 K19 ["id"]
     4435 SETTABLEKS                       R19 R18 K19 ["id"]
     4437 LOADK                            R19 K253 ["TranslationThumbnailAltText"]
     4438 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4440 LOADK                            R19 K31 ["Unknown"]
     4441 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4443 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4445 GETIMPORT                        R21 K34 [pcall]
     4447 NEWCLOSURE                       R22 P6
     4448 CAPTURE                          VAL R20
     4449 CAPTURE                          VAL R3
     4450 CALL                             R21 1 2
     4451 JUMPIFNOT                        R21 ; [+2]
     4452 MOVE                             R19 R22
     4453 JUMP                             ; [+1]
     4454 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4455 SETTABLEKS                       R19 R18 K21 ["date"]
     4457 MOVE                             R19 R12
     4458 LOADK                            R20 K254 ["Description.TranslationThumbnailAltText"]
     4459 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4460 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4462 JUMPIFNOT                        R24 ; [+5]
     4463 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4465 GETTABLEKS                       R23 R24 K212 ["Language"]
     4467 JUMPIF                           R23 ; [+1]
     4468 LOADK                            R23 K43 [""]
     4469 LOADK                            R24 K43 [""]
     4470 FASTCALL1                        TOSTRING R23 ; [+3]
     4471 MOVE                             R28 R23
     4472 GETIMPORT                        R27 K4 [tostring]
     4474 CALL                             R27 1 1
     4475 MOVE                             R25 R27
     4476 LOADK                            R26 K43 [""]
     4477 CONCAT                           R22 R24 R26
     4478 SETTABLEKS                       R22 R21 K210 ["language"]
     4480 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4482 JUMPIFNOT                        R24 ; [+5]
     4483 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4485 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4487 JUMPIF                           R23 ; [+1]
     4488 LOADK                            R23 K43 [""]
     4489 LOADK                            R24 K43 [""]
     4490 FASTCALL1                        TOSTRING R23 ; [+3]
     4491 MOVE                             R28 R23
     4492 GETIMPORT                        R27 K4 [tostring]
     4494 CALL                             R27 1 1
     4495 MOVE                             R25 R27
     4496 LOADK                            R26 K43 [""]
     4497 CONCAT                           R22 R24 R26
     4498 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4500 CALL                             R19 2 1
     4501 SETTABLEKS                       R19 R18 K22 ["translation"]
     4503 GETTABLEKS                       R19 R2 K14 ["userId"]
     4505 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4507 MOVE                             R19 R0
     4508 GETTABLEKS                       R20 R2 K14 ["userId"]
     4510 CALL                             R19 1 1
     4511 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4513 LOADK                            R19 K37 ["Universe"]
     4514 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4516 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4518 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4520 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4522 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4524 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4526 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4528 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4530 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4532 LOADK                            R20 K43 [""]
     4533 FASTCALL1                        TOSTRING R4 ; [+3]
     4534 MOVE                             R24 R4
     4535 GETIMPORT                        R23 K4 [tostring]
     4537 CALL                             R23 1 1
     4538 MOVE                             R21 R23
     4539 LOADK                            R22 K240 ["/localization/translation"]
     4540 CONCAT                           R19 R20 R22
     4541 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4543 RETURN                           R18 1
     4544 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4546 JUMPIFNOTEQKN                    R18 K258 [46] ; [+113]
     4548 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4549 GETTABLEKS                       R19 R2 K19 ["id"]
     4551 SETTABLEKS                       R19 R18 K19 ["id"]
     4553 LOADK                            R19 K3 ["tostring"]
     4554 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4556 LOADK                            R19 K31 ["Unknown"]
     4557 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4559 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4561 GETIMPORT                        R21 K34 [pcall]
     4563 NEWCLOSURE                       R22 P6
     4564 CAPTURE                          VAL R20
     4565 CAPTURE                          VAL R3
     4566 CALL                             R21 1 2
     4567 JUMPIFNOT                        R21 ; [+2]
     4568 MOVE                             R19 R22
     4569 JUMP                             ; [+1]
     4570 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4571 SETTABLEKS                       R19 R18 K21 ["date"]
     4573 MOVE                             R19 R12
     4574 LOADK                            R20 K4 [tostring]
     4575 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4576 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4578 JUMPIFNOT                        R24 ; [+5]
     4579 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4581 GETTABLEKS                       R23 R24 K212 ["Language"]
     4583 JUMPIF                           R23 ; [+1]
     4584 LOADK                            R23 K43 [""]
     4585 LOADK                            R24 K43 [""]
     4586 FASTCALL1                        TOSTRING R23 ; [+3]
     4587 MOVE                             R28 R23
     4588 GETIMPORT                        R27 K4 [tostring]
     4590 CALL                             R27 1 1
     4591 MOVE                             R25 R27
     4592 LOADK                            R26 K43 [""]
     4593 CONCAT                           R22 R24 R26
     4594 SETTABLEKS                       R22 R21 K210 ["language"]
     4596 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4598 JUMPIFNOT                        R24 ; [+5]
     4599 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4601 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4603 JUMPIF                           R23 ; [+1]
     4604 LOADK                            R23 K43 [""]
     4605 LOADK                            R24 K43 [""]
     4606 FASTCALL1                        TOSTRING R23 ; [+3]
     4607 MOVE                             R28 R23
     4608 GETIMPORT                        R27 K4 [tostring]
     4610 CALL                             R27 1 1
     4611 MOVE                             R25 R27
     4612 LOADK                            R26 K43 [""]
     4613 CONCAT                           R22 R24 R26
     4614 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4616 CALL                             R19 2 1
     4617 SETTABLEKS                       R19 R18 K22 ["translation"]
     4619 GETTABLEKS                       R19 R2 K14 ["userId"]
     4621 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4623 MOVE                             R19 R0
     4624 GETTABLEKS                       R20 R2 K14 ["userId"]
     4626 CALL                             R19 1 1
     4627 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4629 LOADK                            R19 K37 ["Universe"]
     4630 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4632 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4634 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4636 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4638 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4640 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4642 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4644 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4646 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4648 LOADK                            R20 K43 [""]
     4649 FASTCALL1                        TOSTRING R4 ; [+3]
     4650 MOVE                             R24 R4
     4651 GETIMPORT                        R23 K4 [tostring]
     4653 CALL                             R23 1 1
     4654 MOVE                             R21 R23
     4655 LOADK                            R22 K240 ["/localization/translation"]
     4656 CONCAT                           R19 R20 R22
     4657 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4659 RETURN                           R18 1
     4660 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4662 JUMPIFNOTEQKN                    R18 K261 [47] ; [+113]
     4664 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4665 GETTABLEKS                       R19 R2 K19 ["id"]
     4667 SETTABLEKS                       R19 R18 K19 ["id"]
     4669 LOADK                            R19 K6 ["placeId"]
     4670 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4672 LOADK                            R19 K31 ["Unknown"]
     4673 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4675 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4677 GETIMPORT                        R21 K34 [pcall]
     4679 NEWCLOSURE                       R22 P6
     4680 CAPTURE                          VAL R20
     4681 CAPTURE                          VAL R3
     4682 CALL                             R21 1 2
     4683 JUMPIFNOT                        R21 ; [+2]
     4684 MOVE                             R19 R22
     4685 JUMP                             ; [+1]
     4686 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4687 SETTABLEKS                       R19 R18 K21 ["date"]
     4689 MOVE                             R19 R12
     4690 LOADK                            R20 K7 ["/badges/"]
     4691 DUPTABLE                         R21 K256 [{"language", "thumbnailName"}]
     4692 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4694 JUMPIFNOT                        R24 ; [+5]
     4695 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4697 GETTABLEKS                       R23 R24 K212 ["Language"]
     4699 JUMPIF                           R23 ; [+1]
     4700 LOADK                            R23 K43 [""]
     4701 LOADK                            R24 K43 [""]
     4702 FASTCALL1                        TOSTRING R23 ; [+3]
     4703 MOVE                             R28 R23
     4704 GETIMPORT                        R27 K4 [tostring]
     4706 CALL                             R27 1 1
     4707 MOVE                             R25 R27
     4708 LOADK                            R26 K43 [""]
     4709 CONCAT                           R22 R24 R26
     4710 SETTABLEKS                       R22 R21 K210 ["language"]
     4712 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4714 JUMPIFNOT                        R24 ; [+5]
     4715 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4717 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
     4719 JUMPIF                           R23 ; [+1]
     4720 LOADK                            R23 K43 [""]
     4721 LOADK                            R24 K43 [""]
     4722 FASTCALL1                        TOSTRING R23 ; [+3]
     4723 MOVE                             R28 R23
     4724 GETIMPORT                        R27 K4 [tostring]
     4726 CALL                             R27 1 1
     4727 MOVE                             R25 R27
     4728 LOADK                            R26 K43 [""]
     4729 CONCAT                           R22 R24 R26
     4730 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
     4732 CALL                             R19 2 1
     4733 SETTABLEKS                       R19 R18 K22 ["translation"]
     4735 GETTABLEKS                       R19 R2 K14 ["userId"]
     4737 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4739 MOVE                             R19 R0
     4740 GETTABLEKS                       R20 R2 K14 ["userId"]
     4742 CALL                             R19 1 1
     4743 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4745 LOADK                            R19 K37 ["Universe"]
     4746 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4748 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4750 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4752 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4754 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4756 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4758 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4760 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4762 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4764 LOADK                            R20 K43 [""]
     4765 FASTCALL1                        TOSTRING R4 ; [+3]
     4766 MOVE                             R24 R4
     4767 GETIMPORT                        R23 K4 [tostring]
     4769 CALL                             R23 1 1
     4770 MOVE                             R21 R23
     4771 LOADK                            R22 K240 ["/localization/translation"]
     4772 CONCAT                           R19 R20 R22
     4773 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4775 RETURN                           R18 1
     4776 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4778 JUMPIFNOTEQKN                    R18 K264 [48] ; [+59]
     4780 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     4781 GETTABLEKS                       R19 R2 K19 ["id"]
     4783 SETTABLEKS                       R19 R18 K19 ["id"]
     4785 LOADK                            R19 K9 ["/overview"]
     4786 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4788 LOADK                            R19 K31 ["Unknown"]
     4789 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4791 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4793 GETIMPORT                        R21 K34 [pcall]
     4795 NEWCLOSURE                       R22 P6
     4796 CAPTURE                          VAL R20
     4797 CAPTURE                          VAL R3
     4798 CALL                             R21 1 2
     4799 JUMPIFNOT                        R21 ; [+2]
     4800 MOVE                             R19 R22
     4801 JUMP                             ; [+1]
     4802 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4803 SETTABLEKS                       R19 R18 K21 ["date"]
     4805 LOADK                            R19 K43 [""]
     4806 SETTABLEKS                       R19 R18 K22 ["translation"]
     4808 GETTABLEKS                       R19 R2 K14 ["userId"]
     4810 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4812 MOVE                             R19 R0
     4813 GETTABLEKS                       R20 R2 K14 ["userId"]
     4815 CALL                             R19 1 1
     4816 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4818 LOADK                            R19 K37 ["Universe"]
     4819 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4821 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4823 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4825 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4827 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4829 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4831 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4833 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4835 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4837 RETURN                           R18 1
     4838 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4840 JUMPIFNOTEQKN                    R18 K266 [49] ; [+113]
     4842 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4843 GETTABLEKS                       R19 R2 K19 ["id"]
     4845 SETTABLEKS                       R19 R18 K19 ["id"]
     4847 LOADK                            R19 K11 ["/configure"]
     4848 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4850 LOADK                            R19 K31 ["Unknown"]
     4851 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4853 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4855 GETIMPORT                        R21 K34 [pcall]
     4857 NEWCLOSURE                       R22 P6
     4858 CAPTURE                          VAL R20
     4859 CAPTURE                          VAL R3
     4860 CALL                             R21 1 2
     4861 JUMPIFNOT                        R21 ; [+2]
     4862 MOVE                             R19 R22
     4863 JUMP                             ; [+1]
     4864 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4865 SETTABLEKS                       R19 R18 K21 ["date"]
     4867 MOVE                             R19 R12
     4868 LOADK                            R20 K12 ["/passes/"]
     4869 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     4870 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4872 JUMPIFNOT                        R24 ; [+5]
     4873 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4875 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     4877 JUMPIF                           R23 ; [+1]
     4878 LOADK                            R23 K43 [""]
     4879 LOADK                            R24 K43 [""]
     4880 FASTCALL1                        TOSTRING R23 ; [+3]
     4881 MOVE                             R28 R23
     4882 GETIMPORT                        R27 K4 [tostring]
     4884 CALL                             R27 1 1
     4885 MOVE                             R25 R27
     4886 LOADK                            R26 K43 [""]
     4887 CONCAT                           R22 R24 R26
     4888 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     4890 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4892 JUMPIFNOT                        R24 ; [+5]
     4893 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4895 GETTABLEKS                       R23 R24 K212 ["Language"]
     4897 JUMPIF                           R23 ; [+1]
     4898 LOADK                            R23 K43 [""]
     4899 LOADK                            R24 K43 [""]
     4900 FASTCALL1                        TOSTRING R23 ; [+3]
     4901 MOVE                             R28 R23
     4902 GETIMPORT                        R27 K4 [tostring]
     4904 CALL                             R27 1 1
     4905 MOVE                             R25 R27
     4906 LOADK                            R26 K43 [""]
     4907 CONCAT                           R22 R24 R26
     4908 SETTABLEKS                       R22 R21 K210 ["language"]
     4910 CALL                             R19 2 1
     4911 SETTABLEKS                       R19 R18 K22 ["translation"]
     4913 GETTABLEKS                       R19 R2 K14 ["userId"]
     4915 SETTABLEKS                       R19 R18 K23 ["actorId"]
     4917 MOVE                             R19 R0
     4918 GETTABLEKS                       R20 R2 K14 ["userId"]
     4920 CALL                             R19 1 1
     4921 SETTABLEKS                       R19 R18 K24 ["actorName"]
     4923 LOADK                            R19 K37 ["Universe"]
     4924 SETTABLEKS                       R19 R18 K25 ["iconType"]
     4926 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4928 SETTABLEKS                       R19 R18 K26 ["iconId"]
     4930 GETTABLEKS                       R19 R2 K2 ["universeId"]
     4932 SETTABLEKS                       R19 R18 K2 ["universeId"]
     4934 GETTABLEKS                       R19 R2 K27 ["headerText"]
     4936 SETTABLEKS                       R19 R18 K27 ["headerText"]
     4938 GETTABLEKS                       R19 R2 K28 ["footerText"]
     4940 SETTABLEKS                       R19 R18 K28 ["footerText"]
     4942 LOADK                            R20 K43 [""]
     4943 FASTCALL1                        TOSTRING R4 ; [+3]
     4944 MOVE                             R24 R4
     4945 GETIMPORT                        R23 K4 [tostring]
     4947 CALL                             R23 1 1
     4948 MOVE                             R21 R23
     4949 LOADK                            R22 K240 ["/localization/translation"]
     4950 CONCAT                           R19 R20 R22
     4951 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     4953 RETURN                           R18 1
     4954 GETTABLEKS                       R18 R2 K17 ["eventType"]
     4956 JUMPIFNOTEQKN                    R18 K272 [50] ; [+113]
     4958 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     4959 GETTABLEKS                       R19 R2 K19 ["id"]
     4961 SETTABLEKS                       R19 R18 K19 ["id"]
     4963 LOADK                            R19 K17 ["eventType"]
     4964 SETTABLEKS                       R19 R18 K17 ["eventType"]
     4966 LOADK                            R19 K31 ["Unknown"]
     4967 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     4969 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     4971 GETIMPORT                        R21 K34 [pcall]
     4973 NEWCLOSURE                       R22 P6
     4974 CAPTURE                          VAL R20
     4975 CAPTURE                          VAL R3
     4976 CALL                             R21 1 2
     4977 JUMPIFNOT                        R21 ; [+2]
     4978 MOVE                             R19 R22
     4979 JUMP                             ; [+1]
     4980 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     4981 SETTABLEKS                       R19 R18 K21 ["date"]
     4983 MOVE                             R19 R12
     4984 LOADK                            R20 K18 [0]
     4985 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     4986 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4988 JUMPIFNOT                        R24 ; [+5]
     4989 GETTABLEKS                       R24 R2 K41 ["metaData"]
     4991 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     4993 JUMPIF                           R23 ; [+1]
     4994 LOADK                            R23 K43 [""]
     4995 LOADK                            R24 K43 [""]
     4996 FASTCALL1                        TOSTRING R23 ; [+3]
     4997 MOVE                             R28 R23
     4998 GETIMPORT                        R27 K4 [tostring]
     5000 CALL                             R27 1 1
     5001 MOVE                             R25 R27
     5002 LOADK                            R26 K43 [""]
     5003 CONCAT                           R22 R24 R26
     5004 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     5006 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5008 JUMPIFNOT                        R24 ; [+5]
     5009 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5011 GETTABLEKS                       R23 R24 K212 ["Language"]
     5013 JUMPIF                           R23 ; [+1]
     5014 LOADK                            R23 K43 [""]
     5015 LOADK                            R24 K43 [""]
     5016 FASTCALL1                        TOSTRING R23 ; [+3]
     5017 MOVE                             R28 R23
     5018 GETIMPORT                        R27 K4 [tostring]
     5020 CALL                             R27 1 1
     5021 MOVE                             R25 R27
     5022 LOADK                            R26 K43 [""]
     5023 CONCAT                           R22 R24 R26
     5024 SETTABLEKS                       R22 R21 K210 ["language"]
     5026 CALL                             R19 2 1
     5027 SETTABLEKS                       R19 R18 K22 ["translation"]
     5029 GETTABLEKS                       R19 R2 K14 ["userId"]
     5031 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5033 MOVE                             R19 R0
     5034 GETTABLEKS                       R20 R2 K14 ["userId"]
     5036 CALL                             R19 1 1
     5037 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5039 LOADK                            R19 K37 ["Universe"]
     5040 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5042 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5044 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5046 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5048 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5050 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5052 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5054 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5056 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5058 LOADK                            R20 K43 [""]
     5059 FASTCALL1                        TOSTRING R4 ; [+3]
     5060 MOVE                             R24 R4
     5061 GETIMPORT                        R23 K4 [tostring]
     5063 CALL                             R23 1 1
     5064 MOVE                             R21 R23
     5065 LOADK                            R22 K240 ["/localization/translation"]
     5066 CONCAT                           R19 R20 R22
     5067 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5069 RETURN                           R18 1
     5070 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5072 JUMPIFNOTEQKN                    R18 K275 [51] ; [+113]
     5074 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     5075 GETTABLEKS                       R19 R2 K19 ["id"]
     5077 SETTABLEKS                       R19 R18 K19 ["id"]
     5079 LOADK                            R19 K20 ["eventCategory"]
     5080 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5082 LOADK                            R19 K31 ["Unknown"]
     5083 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5085 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5087 GETIMPORT                        R21 K34 [pcall]
     5089 NEWCLOSURE                       R22 P6
     5090 CAPTURE                          VAL R20
     5091 CAPTURE                          VAL R3
     5092 CALL                             R21 1 2
     5093 JUMPIFNOT                        R21 ; [+2]
     5094 MOVE                             R19 R22
     5095 JUMP                             ; [+1]
     5096 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5097 SETTABLEKS                       R19 R18 K21 ["date"]
     5099 MOVE                             R19 R12
     5100 LOADK                            R20 K21 ["date"]
     5101 DUPTABLE                         R21 K270 [{"stringKey", "language"}]
     5102 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5104 JUMPIFNOT                        R24 ; [+5]
     5105 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5107 GETTABLEKS                       R23 R24 K271 ["StringKey"]
     5109 JUMPIF                           R23 ; [+1]
     5110 LOADK                            R23 K43 [""]
     5111 LOADK                            R24 K43 [""]
     5112 FASTCALL1                        TOSTRING R23 ; [+3]
     5113 MOVE                             R28 R23
     5114 GETIMPORT                        R27 K4 [tostring]
     5116 CALL                             R27 1 1
     5117 MOVE                             R25 R27
     5118 LOADK                            R26 K43 [""]
     5119 CONCAT                           R22 R24 R26
     5120 SETTABLEKS                       R22 R21 K269 ["stringKey"]
     5122 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5124 JUMPIFNOT                        R24 ; [+5]
     5125 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5127 GETTABLEKS                       R23 R24 K212 ["Language"]
     5129 JUMPIF                           R23 ; [+1]
     5130 LOADK                            R23 K43 [""]
     5131 LOADK                            R24 K43 [""]
     5132 FASTCALL1                        TOSTRING R23 ; [+3]
     5133 MOVE                             R28 R23
     5134 GETIMPORT                        R27 K4 [tostring]
     5136 CALL                             R27 1 1
     5137 MOVE                             R25 R27
     5138 LOADK                            R26 K43 [""]
     5139 CONCAT                           R22 R24 R26
     5140 SETTABLEKS                       R22 R21 K210 ["language"]
     5142 CALL                             R19 2 1
     5143 SETTABLEKS                       R19 R18 K22 ["translation"]
     5145 GETTABLEKS                       R19 R2 K14 ["userId"]
     5147 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5149 MOVE                             R19 R0
     5150 GETTABLEKS                       R20 R2 K14 ["userId"]
     5152 CALL                             R19 1 1
     5153 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5155 LOADK                            R19 K37 ["Universe"]
     5156 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5158 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5160 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5162 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5164 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5166 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5168 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5170 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5172 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5174 LOADK                            R20 K43 [""]
     5175 FASTCALL1                        TOSTRING R4 ; [+3]
     5176 MOVE                             R24 R4
     5177 GETIMPORT                        R23 K4 [tostring]
     5179 CALL                             R23 1 1
     5180 MOVE                             R21 R23
     5181 LOADK                            R22 K240 ["/localization/translation"]
     5182 CONCAT                           R19 R20 R22
     5183 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5185 RETURN                           R18 1
     5186 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5188 JUMPIFNOTEQKN                    R18 K278 [52] ; [+133]
     5190 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5191 GETTABLEKS                       R19 R2 K19 ["id"]
     5193 SETTABLEKS                       R19 R18 K19 ["id"]
     5195 LOADK                            R19 K23 ["actorId"]
     5196 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5198 LOADK                            R19 K31 ["Unknown"]
     5199 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5201 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5203 GETIMPORT                        R21 K34 [pcall]
     5205 NEWCLOSURE                       R22 P6
     5206 CAPTURE                          VAL R20
     5207 CAPTURE                          VAL R3
     5208 CALL                             R21 1 2
     5209 JUMPIFNOT                        R21 ; [+2]
     5210 MOVE                             R19 R22
     5211 JUMP                             ; [+1]
     5212 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5213 SETTABLEKS                       R19 R18 K21 ["date"]
     5215 MOVE                             R19 R12
     5216 LOADK                            R20 K24 ["actorName"]
     5217 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5218 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5220 JUMPIFNOT                        R24 ; [+5]
     5221 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5223 GETTABLEKS                       R23 R24 K212 ["Language"]
     5225 JUMPIF                           R23 ; [+1]
     5226 LOADK                            R23 K43 [""]
     5227 LOADK                            R24 K43 [""]
     5228 FASTCALL1                        TOSTRING R23 ; [+3]
     5229 MOVE                             R28 R23
     5230 GETIMPORT                        R27 K4 [tostring]
     5232 CALL                             R27 1 1
     5233 MOVE                             R25 R27
     5234 LOADK                            R26 K43 [""]
     5235 CONCAT                           R22 R24 R26
     5236 SETTABLEKS                       R22 R21 K210 ["language"]
     5238 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5240 JUMPIFNOT                        R24 ; [+5]
     5241 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5243 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5245 JUMPIF                           R23 ; [+1]
     5246 LOADK                            R23 K43 [""]
     5247 LOADK                            R24 K43 [""]
     5248 FASTCALL1                        TOSTRING R23 ; [+3]
     5249 MOVE                             R28 R23
     5250 GETIMPORT                        R27 K4 [tostring]
     5252 CALL                             R27 1 1
     5253 MOVE                             R25 R27
     5254 LOADK                            R26 K43 [""]
     5255 CONCAT                           R22 R24 R26
     5256 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5258 CALL                             R19 2 1
     5259 SETTABLEKS                       R19 R18 K22 ["translation"]
     5261 GETTABLEKS                       R19 R2 K14 ["userId"]
     5263 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5265 MOVE                             R19 R0
     5266 GETTABLEKS                       R20 R2 K14 ["userId"]
     5268 CALL                             R19 1 1
     5269 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5271 LOADK                            R19 K28 ["footerText"]
     5272 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5274 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5276 ORK                              R19 R20 K18 [0]
     5277 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5279 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5281 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5283 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5285 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5287 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5289 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5291 LOADK                            R20 K43 [""]
     5292 FASTCALL1                        TOSTRING R4 ; [+3]
     5293 MOVE                             R24 R4
     5294 GETIMPORT                        R23 K4 [tostring]
     5296 CALL                             R23 1 1
     5297 MOVE                             R21 R23
     5298 LOADK                            R22 K240 ["/localization/translation"]
     5299 CONCAT                           R19 R20 R22
     5300 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5302 LOADK                            R20 K43 [""]
     5303 GETUPVAL                         R26 1
     5304 FASTCALL1                        TOSTRING R26 ; [+2]
     5305 GETIMPORT                        R25 K4 [tostring]
     5307 CALL                             R25 1 1
     5308 MOVE                             R21 R25
     5309 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5310 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5312 FASTCALL1                        TOSTRING R26 ; [+2]
     5313 GETIMPORT                        R25 K4 [tostring]
     5315 CALL                             R25 1 1
     5316 MOVE                             R23 R25
     5317 LOADK                            R24 K43 [""]
     5318 CONCAT                           R19 R20 R24
     5319 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5321 RETURN                           R18 1
     5322 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5324 JUMPIFNOTEQKN                    R18 K286 [53] ; [+133]
     5326 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5327 GETTABLEKS                       R19 R2 K19 ["id"]
     5329 SETTABLEKS                       R19 R18 K19 ["id"]
     5331 LOADK                            R19 K31 ["Unknown"]
     5332 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5334 LOADK                            R19 K31 ["Unknown"]
     5335 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5337 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5339 GETIMPORT                        R21 K34 [pcall]
     5341 NEWCLOSURE                       R22 P6
     5342 CAPTURE                          VAL R20
     5343 CAPTURE                          VAL R3
     5344 CALL                             R21 1 2
     5345 JUMPIFNOT                        R21 ; [+2]
     5346 MOVE                             R19 R22
     5347 JUMP                             ; [+1]
     5348 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5349 SETTABLEKS                       R19 R18 K21 ["date"]
     5351 MOVE                             R19 R12
     5352 LOADK                            R20 K32 ["createdUnixTimeMs"]
     5353 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5354 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5356 JUMPIFNOT                        R24 ; [+5]
     5357 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5359 GETTABLEKS                       R23 R24 K212 ["Language"]
     5361 JUMPIF                           R23 ; [+1]
     5362 LOADK                            R23 K43 [""]
     5363 LOADK                            R24 K43 [""]
     5364 FASTCALL1                        TOSTRING R23 ; [+3]
     5365 MOVE                             R28 R23
     5366 GETIMPORT                        R27 K4 [tostring]
     5368 CALL                             R27 1 1
     5369 MOVE                             R25 R27
     5370 LOADK                            R26 K43 [""]
     5371 CONCAT                           R22 R24 R26
     5372 SETTABLEKS                       R22 R21 K210 ["language"]
     5374 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5376 JUMPIFNOT                        R24 ; [+5]
     5377 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5379 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5381 JUMPIF                           R23 ; [+1]
     5382 LOADK                            R23 K43 [""]
     5383 LOADK                            R24 K43 [""]
     5384 FASTCALL1                        TOSTRING R23 ; [+3]
     5385 MOVE                             R28 R23
     5386 GETIMPORT                        R27 K4 [tostring]
     5388 CALL                             R27 1 1
     5389 MOVE                             R25 R27
     5390 LOADK                            R26 K43 [""]
     5391 CONCAT                           R22 R24 R26
     5392 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5394 CALL                             R19 2 1
     5395 SETTABLEKS                       R19 R18 K22 ["translation"]
     5397 GETTABLEKS                       R19 R2 K14 ["userId"]
     5399 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5401 MOVE                             R19 R0
     5402 GETTABLEKS                       R20 R2 K14 ["userId"]
     5404 CALL                             R19 1 1
     5405 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5407 LOADK                            R19 K28 ["footerText"]
     5408 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5410 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5412 ORK                              R19 R20 K18 [0]
     5413 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5415 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5417 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5419 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5421 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5423 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5425 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5427 LOADK                            R20 K43 [""]
     5428 FASTCALL1                        TOSTRING R4 ; [+3]
     5429 MOVE                             R24 R4
     5430 GETIMPORT                        R23 K4 [tostring]
     5432 CALL                             R23 1 1
     5433 MOVE                             R21 R23
     5434 LOADK                            R22 K240 ["/localization/translation"]
     5435 CONCAT                           R19 R20 R22
     5436 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5438 LOADK                            R20 K43 [""]
     5439 GETUPVAL                         R26 1
     5440 FASTCALL1                        TOSTRING R26 ; [+2]
     5441 GETIMPORT                        R25 K4 [tostring]
     5443 CALL                             R25 1 1
     5444 MOVE                             R21 R25
     5445 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5446 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5448 FASTCALL1                        TOSTRING R26 ; [+2]
     5449 GETIMPORT                        R25 K4 [tostring]
     5451 CALL                             R25 1 1
     5452 MOVE                             R23 R25
     5453 LOADK                            R24 K43 [""]
     5454 CONCAT                           R19 R20 R24
     5455 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5457 RETURN                           R18 1
     5458 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5460 JUMPIFNOTEQKN                    R18 K289 [54] ; [+133]
     5462 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5463 GETTABLEKS                       R19 R2 K19 ["id"]
     5465 SETTABLEKS                       R19 R18 K19 ["id"]
     5467 LOADK                            R19 K34 [pcall]
     5468 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5470 LOADK                            R19 K31 ["Unknown"]
     5471 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5473 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5475 GETIMPORT                        R21 K34 [pcall]
     5477 NEWCLOSURE                       R22 P6
     5478 CAPTURE                          VAL R20
     5479 CAPTURE                          VAL R3
     5480 CALL                             R21 1 2
     5481 JUMPIFNOT                        R21 ; [+2]
     5482 MOVE                             R19 R22
     5483 JUMP                             ; [+1]
     5484 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5485 SETTABLEKS                       R19 R18 K21 ["date"]
     5487 MOVE                             R19 R12
     5488 LOADK                            R20 K35 ["🤷🏻‍♀️"]
     5489 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5490 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5492 JUMPIFNOT                        R24 ; [+5]
     5493 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5495 GETTABLEKS                       R23 R24 K212 ["Language"]
     5497 JUMPIF                           R23 ; [+1]
     5498 LOADK                            R23 K43 [""]
     5499 LOADK                            R24 K43 [""]
     5500 FASTCALL1                        TOSTRING R23 ; [+3]
     5501 MOVE                             R28 R23
     5502 GETIMPORT                        R27 K4 [tostring]
     5504 CALL                             R27 1 1
     5505 MOVE                             R25 R27
     5506 LOADK                            R26 K43 [""]
     5507 CONCAT                           R22 R24 R26
     5508 SETTABLEKS                       R22 R21 K210 ["language"]
     5510 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5512 JUMPIFNOT                        R24 ; [+5]
     5513 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5515 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5517 JUMPIF                           R23 ; [+1]
     5518 LOADK                            R23 K43 [""]
     5519 LOADK                            R24 K43 [""]
     5520 FASTCALL1                        TOSTRING R23 ; [+3]
     5521 MOVE                             R28 R23
     5522 GETIMPORT                        R27 K4 [tostring]
     5524 CALL                             R27 1 1
     5525 MOVE                             R25 R27
     5526 LOADK                            R26 K43 [""]
     5527 CONCAT                           R22 R24 R26
     5528 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5530 CALL                             R19 2 1
     5531 SETTABLEKS                       R19 R18 K22 ["translation"]
     5533 GETTABLEKS                       R19 R2 K14 ["userId"]
     5535 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5537 MOVE                             R19 R0
     5538 GETTABLEKS                       R20 R2 K14 ["userId"]
     5540 CALL                             R19 1 1
     5541 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5543 LOADK                            R19 K28 ["footerText"]
     5544 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5546 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5548 ORK                              R19 R20 K18 [0]
     5549 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5551 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5553 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5555 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5557 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5559 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5561 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5563 LOADK                            R20 K43 [""]
     5564 FASTCALL1                        TOSTRING R4 ; [+3]
     5565 MOVE                             R24 R4
     5566 GETIMPORT                        R23 K4 [tostring]
     5568 CALL                             R23 1 1
     5569 MOVE                             R21 R23
     5570 LOADK                            R22 K240 ["/localization/translation"]
     5571 CONCAT                           R19 R20 R22
     5572 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5574 LOADK                            R20 K43 [""]
     5575 GETUPVAL                         R26 1
     5576 FASTCALL1                        TOSTRING R26 ; [+2]
     5577 GETIMPORT                        R25 K4 [tostring]
     5579 CALL                             R25 1 1
     5580 MOVE                             R21 R25
     5581 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5582 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5584 FASTCALL1                        TOSTRING R26 ; [+2]
     5585 GETIMPORT                        R25 K4 [tostring]
     5587 CALL                             R25 1 1
     5588 MOVE                             R23 R25
     5589 LOADK                            R24 K43 [""]
     5590 CONCAT                           R19 R20 R24
     5591 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5593 RETURN                           R18 1
     5594 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5596 JUMPIFNOTEQKN                    R18 K292 [55] ; [+133]
     5598 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5599 GETTABLEKS                       R19 R2 K19 ["id"]
     5601 SETTABLEKS                       R19 R18 K19 ["id"]
     5603 LOADK                            R19 K37 ["Universe"]
     5604 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5606 LOADK                            R19 K31 ["Unknown"]
     5607 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5609 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5611 GETIMPORT                        R21 K34 [pcall]
     5613 NEWCLOSURE                       R22 P6
     5614 CAPTURE                          VAL R20
     5615 CAPTURE                          VAL R3
     5616 CALL                             R21 1 2
     5617 JUMPIFNOT                        R21 ; [+2]
     5618 MOVE                             R19 R22
     5619 JUMP                             ; [+1]
     5620 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5621 SETTABLEKS                       R19 R18 K21 ["date"]
     5623 MOVE                             R19 R12
     5624 LOADK                            R20 K38 [1]
     5625 DUPTABLE                         R21 K282 [{"language", "badgeName"}]
     5626 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5628 JUMPIFNOT                        R24 ; [+5]
     5629 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5631 GETTABLEKS                       R23 R24 K212 ["Language"]
     5633 JUMPIF                           R23 ; [+1]
     5634 LOADK                            R23 K43 [""]
     5635 LOADK                            R24 K43 [""]
     5636 FASTCALL1                        TOSTRING R23 ; [+3]
     5637 MOVE                             R28 R23
     5638 GETIMPORT                        R27 K4 [tostring]
     5640 CALL                             R27 1 1
     5641 MOVE                             R25 R27
     5642 LOADK                            R26 K43 [""]
     5643 CONCAT                           R22 R24 R26
     5644 SETTABLEKS                       R22 R21 K210 ["language"]
     5646 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5648 JUMPIFNOT                        R24 ; [+5]
     5649 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5651 GETTABLEKS                       R23 R24 K283 ["BadgeName"]
     5653 JUMPIF                           R23 ; [+1]
     5654 LOADK                            R23 K43 [""]
     5655 LOADK                            R24 K43 [""]
     5656 FASTCALL1                        TOSTRING R23 ; [+3]
     5657 MOVE                             R28 R23
     5658 GETIMPORT                        R27 K4 [tostring]
     5660 CALL                             R27 1 1
     5661 MOVE                             R25 R27
     5662 LOADK                            R26 K43 [""]
     5663 CONCAT                           R22 R24 R26
     5664 SETTABLEKS                       R22 R21 K281 ["badgeName"]
     5666 CALL                             R19 2 1
     5667 SETTABLEKS                       R19 R18 K22 ["translation"]
     5669 GETTABLEKS                       R19 R2 K14 ["userId"]
     5671 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5673 MOVE                             R19 R0
     5674 GETTABLEKS                       R20 R2 K14 ["userId"]
     5676 CALL                             R19 1 1
     5677 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5679 LOADK                            R19 K28 ["footerText"]
     5680 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5682 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5684 ORK                              R19 R20 K18 [0]
     5685 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5687 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5689 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5691 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5693 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5695 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5697 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5699 LOADK                            R20 K43 [""]
     5700 FASTCALL1                        TOSTRING R4 ; [+3]
     5701 MOVE                             R24 R4
     5702 GETIMPORT                        R23 K4 [tostring]
     5704 CALL                             R23 1 1
     5705 MOVE                             R21 R23
     5706 LOADK                            R22 K240 ["/localization/translation"]
     5707 CONCAT                           R19 R20 R22
     5708 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5710 LOADK                            R20 K43 [""]
     5711 GETUPVAL                         R26 1
     5712 FASTCALL1                        TOSTRING R26 ; [+2]
     5713 GETIMPORT                        R25 K4 [tostring]
     5715 CALL                             R25 1 1
     5716 MOVE                             R21 R25
     5717 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     5718 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5720 FASTCALL1                        TOSTRING R26 ; [+2]
     5721 GETIMPORT                        R25 K4 [tostring]
     5723 CALL                             R25 1 1
     5724 MOVE                             R23 R25
     5725 LOADK                            R24 K43 [""]
     5726 CONCAT                           R19 R20 R24
     5727 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5729 RETURN                           R18 1
     5730 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5732 JUMPIFNOTEQKN                    R18 K295 [56] ; [+133]
     5734 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5735 GETTABLEKS                       R19 R2 K19 ["id"]
     5737 SETTABLEKS                       R19 R18 K19 ["id"]
     5739 LOADK                            R19 K40 ["Experience"]
     5740 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5742 LOADK                            R19 K31 ["Unknown"]
     5743 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5745 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5747 GETIMPORT                        R21 K34 [pcall]
     5749 NEWCLOSURE                       R22 P6
     5750 CAPTURE                          VAL R20
     5751 CAPTURE                          VAL R3
     5752 CALL                             R21 1 2
     5753 JUMPIFNOT                        R21 ; [+2]
     5754 MOVE                             R19 R22
     5755 JUMP                             ; [+1]
     5756 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5757 SETTABLEKS                       R19 R18 K21 ["date"]
     5759 MOVE                             R19 R12
     5760 LOADK                            R20 K41 ["metaData"]
     5761 DUPTABLE                         R21 K299 [{"language", "productName"}]
     5762 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5764 JUMPIFNOT                        R24 ; [+5]
     5765 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5767 GETTABLEKS                       R23 R24 K212 ["Language"]
     5769 JUMPIF                           R23 ; [+1]
     5770 LOADK                            R23 K43 [""]
     5771 LOADK                            R24 K43 [""]
     5772 FASTCALL1                        TOSTRING R23 ; [+3]
     5773 MOVE                             R28 R23
     5774 GETIMPORT                        R27 K4 [tostring]
     5776 CALL                             R27 1 1
     5777 MOVE                             R25 R27
     5778 LOADK                            R26 K43 [""]
     5779 CONCAT                           R22 R24 R26
     5780 SETTABLEKS                       R22 R21 K210 ["language"]
     5782 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5784 JUMPIFNOT                        R24 ; [+5]
     5785 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5787 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     5789 JUMPIF                           R23 ; [+1]
     5790 LOADK                            R23 K43 [""]
     5791 LOADK                            R24 K43 [""]
     5792 FASTCALL1                        TOSTRING R23 ; [+3]
     5793 MOVE                             R28 R23
     5794 GETIMPORT                        R27 K4 [tostring]
     5796 CALL                             R27 1 1
     5797 MOVE                             R25 R27
     5798 LOADK                            R26 K43 [""]
     5799 CONCAT                           R22 R24 R26
     5800 SETTABLEKS                       R22 R21 K298 ["productName"]
     5802 CALL                             R19 2 1
     5803 SETTABLEKS                       R19 R18 K22 ["translation"]
     5805 GETTABLEKS                       R19 R2 K14 ["userId"]
     5807 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5809 MOVE                             R19 R0
     5810 GETTABLEKS                       R20 R2 K14 ["userId"]
     5812 CALL                             R19 1 1
     5813 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5815 LOADK                            R19 K45 ["lower"]
     5816 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5818 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5820 ORK                              R19 R20 K18 [0]
     5821 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5823 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5825 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5827 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5829 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5831 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5833 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5835 LOADK                            R20 K43 [""]
     5836 FASTCALL1                        TOSTRING R4 ; [+3]
     5837 MOVE                             R24 R4
     5838 GETIMPORT                        R23 K4 [tostring]
     5840 CALL                             R23 1 1
     5841 MOVE                             R21 R23
     5842 LOADK                            R22 K240 ["/localization/translation"]
     5843 CONCAT                           R19 R20 R22
     5844 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5846 LOADK                            R20 K43 [""]
     5847 GETUPVAL                         R26 1
     5848 FASTCALL1                        TOSTRING R26 ; [+2]
     5849 GETIMPORT                        R25 K4 [tostring]
     5851 CALL                             R25 1 1
     5852 MOVE                             R21 R25
     5853 LOADK                            R22 K46 [string.lower]
     5854 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5856 FASTCALL1                        TOSTRING R26 ; [+2]
     5857 GETIMPORT                        R25 K4 [tostring]
     5859 CALL                             R25 1 1
     5860 MOVE                             R23 R25
     5861 LOADK                            R24 K43 [""]
     5862 CONCAT                           R19 R20 R24
     5863 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     5865 RETURN                           R18 1
     5866 GETTABLEKS                       R18 R2 K17 ["eventType"]
     5868 JUMPIFNOTEQKN                    R18 K303 [57] ; [+133]
     5870 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     5871 GETTABLEKS                       R19 R2 K19 ["id"]
     5873 SETTABLEKS                       R19 R18 K19 ["id"]
     5875 LOADK                            R19 K48 ["Description.ArchivedExperience"]
     5876 SETTABLEKS                       R19 R18 K17 ["eventType"]
     5878 LOADK                            R19 K31 ["Unknown"]
     5879 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     5881 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     5883 GETIMPORT                        R21 K34 [pcall]
     5885 NEWCLOSURE                       R22 P6
     5886 CAPTURE                          VAL R20
     5887 CAPTURE                          VAL R3
     5888 CALL                             R21 1 2
     5889 JUMPIFNOT                        R21 ; [+2]
     5890 MOVE                             R19 R22
     5891 JUMP                             ; [+1]
     5892 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     5893 SETTABLEKS                       R19 R18 K21 ["date"]
     5895 MOVE                             R19 R12
     5896 LOADK                            R20 K49 ["Description.RestoredExperience"]
     5897 DUPTABLE                         R21 K299 [{"language", "productName"}]
     5898 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5900 JUMPIFNOT                        R24 ; [+5]
     5901 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5903 GETTABLEKS                       R23 R24 K212 ["Language"]
     5905 JUMPIF                           R23 ; [+1]
     5906 LOADK                            R23 K43 [""]
     5907 LOADK                            R24 K43 [""]
     5908 FASTCALL1                        TOSTRING R23 ; [+3]
     5909 MOVE                             R28 R23
     5910 GETIMPORT                        R27 K4 [tostring]
     5912 CALL                             R27 1 1
     5913 MOVE                             R25 R27
     5914 LOADK                            R26 K43 [""]
     5915 CONCAT                           R22 R24 R26
     5916 SETTABLEKS                       R22 R21 K210 ["language"]
     5918 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5920 JUMPIFNOT                        R24 ; [+5]
     5921 GETTABLEKS                       R24 R2 K41 ["metaData"]
     5923 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     5925 JUMPIF                           R23 ; [+1]
     5926 LOADK                            R23 K43 [""]
     5927 LOADK                            R24 K43 [""]
     5928 FASTCALL1                        TOSTRING R23 ; [+3]
     5929 MOVE                             R28 R23
     5930 GETIMPORT                        R27 K4 [tostring]
     5932 CALL                             R27 1 1
     5933 MOVE                             R25 R27
     5934 LOADK                            R26 K43 [""]
     5935 CONCAT                           R22 R24 R26
     5936 SETTABLEKS                       R22 R21 K298 ["productName"]
     5938 CALL                             R19 2 1
     5939 SETTABLEKS                       R19 R18 K22 ["translation"]
     5941 GETTABLEKS                       R19 R2 K14 ["userId"]
     5943 SETTABLEKS                       R19 R18 K23 ["actorId"]
     5945 MOVE                             R19 R0
     5946 GETTABLEKS                       R20 R2 K14 ["userId"]
     5948 CALL                             R19 1 1
     5949 SETTABLEKS                       R19 R18 K24 ["actorName"]
     5951 LOADK                            R19 K45 ["lower"]
     5952 SETTABLEKS                       R19 R18 K25 ["iconType"]
     5954 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     5956 ORK                              R19 R20 K18 [0]
     5957 SETTABLEKS                       R19 R18 K26 ["iconId"]
     5959 GETTABLEKS                       R19 R2 K2 ["universeId"]
     5961 SETTABLEKS                       R19 R18 K2 ["universeId"]
     5963 GETTABLEKS                       R19 R2 K27 ["headerText"]
     5965 SETTABLEKS                       R19 R18 K27 ["headerText"]
     5967 GETTABLEKS                       R19 R2 K28 ["footerText"]
     5969 SETTABLEKS                       R19 R18 K28 ["footerText"]
     5971 LOADK                            R20 K43 [""]
     5972 FASTCALL1                        TOSTRING R4 ; [+3]
     5973 MOVE                             R24 R4
     5974 GETIMPORT                        R23 K4 [tostring]
     5976 CALL                             R23 1 1
     5977 MOVE                             R21 R23
     5978 LOADK                            R22 K240 ["/localization/translation"]
     5979 CONCAT                           R19 R20 R22
     5980 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     5982 LOADK                            R20 K43 [""]
     5983 GETUPVAL                         R26 1
     5984 FASTCALL1                        TOSTRING R26 ; [+2]
     5985 GETIMPORT                        R25 K4 [tostring]
     5987 CALL                             R25 1 1
     5988 MOVE                             R21 R25
     5989 LOADK                            R22 K46 [string.lower]
     5990 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     5992 FASTCALL1                        TOSTRING R26 ; [+2]
     5993 GETIMPORT                        R25 K4 [tostring]
     5995 CALL                             R25 1 1
     5996 MOVE                             R23 R25
     5997 LOADK                            R24 K43 [""]
     5998 CONCAT                           R19 R20 R24
     5999 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6001 RETURN                           R18 1
     6002 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6004 JUMPIFNOTEQKN                    R18 K306 [58] ; [+133]
     6006 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6007 GETTABLEKS                       R19 R2 K19 ["id"]
     6009 SETTABLEKS                       R19 R18 K19 ["id"]
     6011 LOADK                            R19 K51 ["viewBasicSettingsLink"]
     6012 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6014 LOADK                            R19 K31 ["Unknown"]
     6015 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6017 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6019 GETIMPORT                        R21 K34 [pcall]
     6021 NEWCLOSURE                       R22 P6
     6022 CAPTURE                          VAL R20
     6023 CAPTURE                          VAL R3
     6024 CALL                             R21 1 2
     6025 JUMPIFNOT                        R21 ; [+2]
     6026 MOVE                             R19 R22
     6027 JUMP                             ; [+1]
     6028 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6029 SETTABLEKS                       R19 R18 K21 ["date"]
     6031 MOVE                             R19 R12
     6032 LOADK                            R20 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     6033 DUPTABLE                         R21 K299 [{"language", "productName"}]
     6034 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6036 JUMPIFNOT                        R24 ; [+5]
     6037 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6039 GETTABLEKS                       R23 R24 K212 ["Language"]
     6041 JUMPIF                           R23 ; [+1]
     6042 LOADK                            R23 K43 [""]
     6043 LOADK                            R24 K43 [""]
     6044 FASTCALL1                        TOSTRING R23 ; [+3]
     6045 MOVE                             R28 R23
     6046 GETIMPORT                        R27 K4 [tostring]
     6048 CALL                             R27 1 1
     6049 MOVE                             R25 R27
     6050 LOADK                            R26 K43 [""]
     6051 CONCAT                           R22 R24 R26
     6052 SETTABLEKS                       R22 R21 K210 ["language"]
     6054 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6056 JUMPIFNOT                        R24 ; [+5]
     6057 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6059 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     6061 JUMPIF                           R23 ; [+1]
     6062 LOADK                            R23 K43 [""]
     6063 LOADK                            R24 K43 [""]
     6064 FASTCALL1                        TOSTRING R23 ; [+3]
     6065 MOVE                             R28 R23
     6066 GETIMPORT                        R27 K4 [tostring]
     6068 CALL                             R27 1 1
     6069 MOVE                             R25 R27
     6070 LOADK                            R26 K43 [""]
     6071 CONCAT                           R22 R24 R26
     6072 SETTABLEKS                       R22 R21 K298 ["productName"]
     6074 CALL                             R19 2 1
     6075 SETTABLEKS                       R19 R18 K22 ["translation"]
     6077 GETTABLEKS                       R19 R2 K14 ["userId"]
     6079 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6081 MOVE                             R19 R0
     6082 GETTABLEKS                       R20 R2 K14 ["userId"]
     6084 CALL                             R19 1 1
     6085 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6087 LOADK                            R19 K45 ["lower"]
     6088 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6090 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6092 ORK                              R19 R20 K18 [0]
     6093 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6095 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6097 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6099 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6101 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6103 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6105 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6107 LOADK                            R20 K43 [""]
     6108 FASTCALL1                        TOSTRING R4 ; [+3]
     6109 MOVE                             R24 R4
     6110 GETIMPORT                        R23 K4 [tostring]
     6112 CALL                             R23 1 1
     6113 MOVE                             R21 R23
     6114 LOADK                            R22 K240 ["/localization/translation"]
     6115 CONCAT                           R19 R20 R22
     6116 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6118 LOADK                            R20 K43 [""]
     6119 GETUPVAL                         R26 1
     6120 FASTCALL1                        TOSTRING R26 ; [+2]
     6121 GETIMPORT                        R25 K4 [tostring]
     6123 CALL                             R25 1 1
     6124 MOVE                             R21 R25
     6125 LOADK                            R22 K46 [string.lower]
     6126 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6128 FASTCALL1                        TOSTRING R26 ; [+2]
     6129 GETIMPORT                        R25 K4 [tostring]
     6131 CALL                             R25 1 1
     6132 MOVE                             R23 R25
     6133 LOADK                            R24 K43 [""]
     6134 CONCAT                           R19 R20 R24
     6135 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6137 RETURN                           R18 1
     6138 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6140 JUMPIFNOTEQKN                    R18 K309 [59] ; [+133]
     6142 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6143 GETTABLEKS                       R19 R2 K19 ["id"]
     6145 SETTABLEKS                       R19 R18 K19 ["id"]
     6147 LOADK                            R19 K54 ["Description.PlayabilityChanged"]
     6148 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6150 LOADK                            R19 K31 ["Unknown"]
     6151 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6153 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6155 GETIMPORT                        R21 K34 [pcall]
     6157 NEWCLOSURE                       R22 P6
     6158 CAPTURE                          VAL R20
     6159 CAPTURE                          VAL R3
     6160 CALL                             R21 1 2
     6161 JUMPIFNOT                        R21 ; [+2]
     6162 MOVE                             R19 R22
     6163 JUMP                             ; [+1]
     6164 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6165 SETTABLEKS                       R19 R18 K21 ["date"]
     6167 MOVE                             R19 R12
     6168 LOADK                            R20 K55 ["playability"]
     6169 DUPTABLE                         R21 K299 [{"language", "productName"}]
     6170 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6172 JUMPIFNOT                        R24 ; [+5]
     6173 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6175 GETTABLEKS                       R23 R24 K212 ["Language"]
     6177 JUMPIF                           R23 ; [+1]
     6178 LOADK                            R23 K43 [""]
     6179 LOADK                            R24 K43 [""]
     6180 FASTCALL1                        TOSTRING R23 ; [+3]
     6181 MOVE                             R28 R23
     6182 GETIMPORT                        R27 K4 [tostring]
     6184 CALL                             R27 1 1
     6185 MOVE                             R25 R27
     6186 LOADK                            R26 K43 [""]
     6187 CONCAT                           R22 R24 R26
     6188 SETTABLEKS                       R22 R21 K210 ["language"]
     6190 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6192 JUMPIFNOT                        R24 ; [+5]
     6193 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6195 GETTABLEKS                       R23 R24 K300 ["ProductName"]
     6197 JUMPIF                           R23 ; [+1]
     6198 LOADK                            R23 K43 [""]
     6199 LOADK                            R24 K43 [""]
     6200 FASTCALL1                        TOSTRING R23 ; [+3]
     6201 MOVE                             R28 R23
     6202 GETIMPORT                        R27 K4 [tostring]
     6204 CALL                             R27 1 1
     6205 MOVE                             R25 R27
     6206 LOADK                            R26 K43 [""]
     6207 CONCAT                           R22 R24 R26
     6208 SETTABLEKS                       R22 R21 K298 ["productName"]
     6210 CALL                             R19 2 1
     6211 SETTABLEKS                       R19 R18 K22 ["translation"]
     6213 GETTABLEKS                       R19 R2 K14 ["userId"]
     6215 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6217 MOVE                             R19 R0
     6218 GETTABLEKS                       R20 R2 K14 ["userId"]
     6220 CALL                             R19 1 1
     6221 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6223 LOADK                            R19 K45 ["lower"]
     6224 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6226 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6228 ORK                              R19 R20 K18 [0]
     6229 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6231 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6233 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6235 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6237 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6239 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6241 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6243 LOADK                            R20 K43 [""]
     6244 FASTCALL1                        TOSTRING R4 ; [+3]
     6245 MOVE                             R24 R4
     6246 GETIMPORT                        R23 K4 [tostring]
     6248 CALL                             R23 1 1
     6249 MOVE                             R21 R23
     6250 LOADK                            R22 K240 ["/localization/translation"]
     6251 CONCAT                           R19 R20 R22
     6252 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6254 LOADK                            R20 K43 [""]
     6255 GETUPVAL                         R26 1
     6256 FASTCALL1                        TOSTRING R26 ; [+2]
     6257 GETIMPORT                        R25 K4 [tostring]
     6259 CALL                             R25 1 1
     6260 MOVE                             R21 R25
     6261 LOADK                            R22 K46 [string.lower]
     6262 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6264 FASTCALL1                        TOSTRING R26 ; [+2]
     6265 GETIMPORT                        R25 K4 [tostring]
     6267 CALL                             R25 1 1
     6268 MOVE                             R23 R25
     6269 LOADK                            R24 K43 [""]
     6270 CONCAT                           R19 R20 R24
     6271 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6273 RETURN                           R18 1
     6274 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6276 JUMPIFNOTEQKN                    R18 K312 [60] ; [+133]
     6278 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6279 GETTABLEKS                       R19 R2 K19 ["id"]
     6281 SETTABLEKS                       R19 R18 K19 ["id"]
     6283 LOADK                            R19 K57 ["Playability"]
     6284 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6286 LOADK                            R19 K31 ["Unknown"]
     6287 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6289 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6291 GETIMPORT                        R21 K34 [pcall]
     6293 NEWCLOSURE                       R22 P6
     6294 CAPTURE                          VAL R20
     6295 CAPTURE                          VAL R3
     6296 CALL                             R21 1 2
     6297 JUMPIFNOT                        R21 ; [+2]
     6298 MOVE                             R19 R22
     6299 JUMP                             ; [+1]
     6300 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6301 SETTABLEKS                       R19 R18 K21 ["date"]
     6303 MOVE                             R19 R12
     6304 LOADK                            R20 K58 ["Public"]
     6305 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6306 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6308 JUMPIFNOT                        R24 ; [+5]
     6309 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6311 GETTABLEKS                       R23 R24 K212 ["Language"]
     6313 JUMPIF                           R23 ; [+1]
     6314 LOADK                            R23 K43 [""]
     6315 LOADK                            R24 K43 [""]
     6316 FASTCALL1                        TOSTRING R23 ; [+3]
     6317 MOVE                             R28 R23
     6318 GETIMPORT                        R27 K4 [tostring]
     6320 CALL                             R27 1 1
     6321 MOVE                             R25 R27
     6322 LOADK                            R26 K43 [""]
     6323 CONCAT                           R22 R24 R26
     6324 SETTABLEKS                       R22 R21 K210 ["language"]
     6326 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6328 JUMPIFNOT                        R24 ; [+5]
     6329 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6331 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6333 JUMPIF                           R23 ; [+1]
     6334 LOADK                            R23 K43 [""]
     6335 LOADK                            R24 K43 [""]
     6336 FASTCALL1                        TOSTRING R23 ; [+3]
     6337 MOVE                             R28 R23
     6338 GETIMPORT                        R27 K4 [tostring]
     6340 CALL                             R27 1 1
     6341 MOVE                             R25 R27
     6342 LOADK                            R26 K43 [""]
     6343 CONCAT                           R22 R24 R26
     6344 SETTABLEKS                       R22 R21 K315 ["passName"]
     6346 CALL                             R19 2 1
     6347 SETTABLEKS                       R19 R18 K22 ["translation"]
     6349 GETTABLEKS                       R19 R2 K14 ["userId"]
     6351 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6353 MOVE                             R19 R0
     6354 GETTABLEKS                       R20 R2 K14 ["userId"]
     6356 CALL                             R19 1 1
     6357 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6359 LOADK                            R19 K62 ["Description.ActionFriends"]
     6360 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6362 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6364 ORK                              R19 R20 K18 [0]
     6365 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6367 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6369 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6371 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6373 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6375 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6377 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6379 LOADK                            R20 K43 [""]
     6380 FASTCALL1                        TOSTRING R4 ; [+3]
     6381 MOVE                             R24 R4
     6382 GETIMPORT                        R23 K4 [tostring]
     6384 CALL                             R23 1 1
     6385 MOVE                             R21 R23
     6386 LOADK                            R22 K240 ["/localization/translation"]
     6387 CONCAT                           R19 R20 R22
     6388 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6390 LOADK                            R20 K43 [""]
     6391 GETUPVAL                         R26 1
     6392 FASTCALL1                        TOSTRING R26 ; [+2]
     6393 GETIMPORT                        R25 K4 [tostring]
     6395 CALL                             R25 1 1
     6396 MOVE                             R21 R25
     6397 LOADK                            R22 K63 [3]
     6398 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6400 FASTCALL1                        TOSTRING R26 ; [+2]
     6401 GETIMPORT                        R25 K4 [tostring]
     6403 CALL                             R25 1 1
     6404 MOVE                             R23 R25
     6405 LOADK                            R24 K43 [""]
     6406 CONCAT                           R19 R20 R24
     6407 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6409 RETURN                           R18 1
     6410 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6412 JUMPIFNOTEQKN                    R18 K320 [61] ; [+133]
     6414 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6415 GETTABLEKS                       R19 R2 K19 ["id"]
     6417 SETTABLEKS                       R19 R18 K19 ["id"]
     6419 LOADK                            R19 K65 ["Description.NotificationStringCreated"]
     6420 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6422 LOADK                            R19 K31 ["Unknown"]
     6423 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6425 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6427 GETIMPORT                        R21 K34 [pcall]
     6429 NEWCLOSURE                       R22 P6
     6430 CAPTURE                          VAL R20
     6431 CAPTURE                          VAL R3
     6432 CALL                             R21 1 2
     6433 JUMPIFNOT                        R21 ; [+2]
     6434 MOVE                             R19 R22
     6435 JUMP                             ; [+1]
     6436 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6437 SETTABLEKS                       R19 R18 K21 ["date"]
     6439 MOVE                             R19 R12
     6440 LOADK                            R20 K66 ["stringName"]
     6441 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6442 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6444 JUMPIFNOT                        R24 ; [+5]
     6445 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6447 GETTABLEKS                       R23 R24 K212 ["Language"]
     6449 JUMPIF                           R23 ; [+1]
     6450 LOADK                            R23 K43 [""]
     6451 LOADK                            R24 K43 [""]
     6452 FASTCALL1                        TOSTRING R23 ; [+3]
     6453 MOVE                             R28 R23
     6454 GETIMPORT                        R27 K4 [tostring]
     6456 CALL                             R27 1 1
     6457 MOVE                             R25 R27
     6458 LOADK                            R26 K43 [""]
     6459 CONCAT                           R22 R24 R26
     6460 SETTABLEKS                       R22 R21 K210 ["language"]
     6462 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6464 JUMPIFNOT                        R24 ; [+5]
     6465 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6467 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6469 JUMPIF                           R23 ; [+1]
     6470 LOADK                            R23 K43 [""]
     6471 LOADK                            R24 K43 [""]
     6472 FASTCALL1                        TOSTRING R23 ; [+3]
     6473 MOVE                             R28 R23
     6474 GETIMPORT                        R27 K4 [tostring]
     6476 CALL                             R27 1 1
     6477 MOVE                             R25 R27
     6478 LOADK                            R26 K43 [""]
     6479 CONCAT                           R22 R24 R26
     6480 SETTABLEKS                       R22 R21 K315 ["passName"]
     6482 CALL                             R19 2 1
     6483 SETTABLEKS                       R19 R18 K22 ["translation"]
     6485 GETTABLEKS                       R19 R2 K14 ["userId"]
     6487 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6489 MOVE                             R19 R0
     6490 GETTABLEKS                       R20 R2 K14 ["userId"]
     6492 CALL                             R19 1 1
     6493 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6495 LOADK                            R19 K62 ["Description.ActionFriends"]
     6496 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6498 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6500 ORK                              R19 R20 K18 [0]
     6501 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6503 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6505 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6507 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6509 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6511 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6513 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6515 LOADK                            R20 K43 [""]
     6516 FASTCALL1                        TOSTRING R4 ; [+3]
     6517 MOVE                             R24 R4
     6518 GETIMPORT                        R23 K4 [tostring]
     6520 CALL                             R23 1 1
     6521 MOVE                             R21 R23
     6522 LOADK                            R22 K240 ["/localization/translation"]
     6523 CONCAT                           R19 R20 R22
     6524 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6526 LOADK                            R20 K43 [""]
     6527 GETUPVAL                         R26 1
     6528 FASTCALL1                        TOSTRING R26 ; [+2]
     6529 GETIMPORT                        R25 K4 [tostring]
     6531 CALL                             R25 1 1
     6532 MOVE                             R21 R25
     6533 LOADK                            R22 K63 [3]
     6534 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6536 FASTCALL1                        TOSTRING R26 ; [+2]
     6537 GETIMPORT                        R25 K4 [tostring]
     6539 CALL                             R25 1 1
     6540 MOVE                             R23 R25
     6541 LOADK                            R24 K43 [""]
     6542 CONCAT                           R19 R20 R24
     6543 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6545 RETURN                           R18 1
     6546 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6548 JUMPIFNOTEQKN                    R18 K323 [62] ; [+133]
     6550 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6551 GETTABLEKS                       R19 R2 K19 ["id"]
     6553 SETTABLEKS                       R19 R18 K19 ["id"]
     6555 LOADK                            R19 K68 ["StringName"]
     6556 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6558 LOADK                            R19 K31 ["Unknown"]
     6559 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6561 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6563 GETIMPORT                        R21 K34 [pcall]
     6565 NEWCLOSURE                       R22 P6
     6566 CAPTURE                          VAL R20
     6567 CAPTURE                          VAL R3
     6568 CALL                             R21 1 2
     6569 JUMPIFNOT                        R21 ; [+2]
     6570 MOVE                             R19 R22
     6571 JUMP                             ; [+1]
     6572 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6573 SETTABLEKS                       R19 R18 K21 ["date"]
     6575 MOVE                             R19 R12
     6576 LOADK                            R20 K69 ["/notifications"]
     6577 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6578 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6580 JUMPIFNOT                        R24 ; [+5]
     6581 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6583 GETTABLEKS                       R23 R24 K212 ["Language"]
     6585 JUMPIF                           R23 ; [+1]
     6586 LOADK                            R23 K43 [""]
     6587 LOADK                            R24 K43 [""]
     6588 FASTCALL1                        TOSTRING R23 ; [+3]
     6589 MOVE                             R28 R23
     6590 GETIMPORT                        R27 K4 [tostring]
     6592 CALL                             R27 1 1
     6593 MOVE                             R25 R27
     6594 LOADK                            R26 K43 [""]
     6595 CONCAT                           R22 R24 R26
     6596 SETTABLEKS                       R22 R21 K210 ["language"]
     6598 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6600 JUMPIFNOT                        R24 ; [+5]
     6601 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6603 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6605 JUMPIF                           R23 ; [+1]
     6606 LOADK                            R23 K43 [""]
     6607 LOADK                            R24 K43 [""]
     6608 FASTCALL1                        TOSTRING R23 ; [+3]
     6609 MOVE                             R28 R23
     6610 GETIMPORT                        R27 K4 [tostring]
     6612 CALL                             R27 1 1
     6613 MOVE                             R25 R27
     6614 LOADK                            R26 K43 [""]
     6615 CONCAT                           R22 R24 R26
     6616 SETTABLEKS                       R22 R21 K315 ["passName"]
     6618 CALL                             R19 2 1
     6619 SETTABLEKS                       R19 R18 K22 ["translation"]
     6621 GETTABLEKS                       R19 R2 K14 ["userId"]
     6623 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6625 MOVE                             R19 R0
     6626 GETTABLEKS                       R20 R2 K14 ["userId"]
     6628 CALL                             R19 1 1
     6629 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6631 LOADK                            R19 K62 ["Description.ActionFriends"]
     6632 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6634 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6636 ORK                              R19 R20 K18 [0]
     6637 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6639 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6641 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6643 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6645 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6647 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6649 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6651 LOADK                            R20 K43 [""]
     6652 FASTCALL1                        TOSTRING R4 ; [+3]
     6653 MOVE                             R24 R4
     6654 GETIMPORT                        R23 K4 [tostring]
     6656 CALL                             R23 1 1
     6657 MOVE                             R21 R23
     6658 LOADK                            R22 K240 ["/localization/translation"]
     6659 CONCAT                           R19 R20 R22
     6660 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6662 LOADK                            R20 K43 [""]
     6663 GETUPVAL                         R26 1
     6664 FASTCALL1                        TOSTRING R26 ; [+2]
     6665 GETIMPORT                        R25 K4 [tostring]
     6667 CALL                             R25 1 1
     6668 MOVE                             R21 R25
     6669 LOADK                            R22 K63 [3]
     6670 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6672 FASTCALL1                        TOSTRING R26 ; [+2]
     6673 GETIMPORT                        R25 K4 [tostring]
     6675 CALL                             R25 1 1
     6676 MOVE                             R23 R25
     6677 LOADK                            R24 K43 [""]
     6678 CONCAT                           R19 R20 R24
     6679 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6681 RETURN                           R18 1
     6682 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6684 JUMPIFNOTEQKN                    R18 K326 [63] ; [+133]
     6686 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6687 GETTABLEKS                       R19 R2 K19 ["id"]
     6689 SETTABLEKS                       R19 R18 K19 ["id"]
     6691 LOADK                            R19 K71 ["NotificationStringDeleted"]
     6692 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6694 LOADK                            R19 K31 ["Unknown"]
     6695 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6697 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6699 GETIMPORT                        R21 K34 [pcall]
     6701 NEWCLOSURE                       R22 P6
     6702 CAPTURE                          VAL R20
     6703 CAPTURE                          VAL R3
     6704 CALL                             R21 1 2
     6705 JUMPIFNOT                        R21 ; [+2]
     6706 MOVE                             R19 R22
     6707 JUMP                             ; [+1]
     6708 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6709 SETTABLEKS                       R19 R18 K21 ["date"]
     6711 MOVE                             R19 R12
     6712 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
     6713 DUPTABLE                         R21 K316 [{"language", "passName"}]
     6714 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6716 JUMPIFNOT                        R24 ; [+5]
     6717 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6719 GETTABLEKS                       R23 R24 K212 ["Language"]
     6721 JUMPIF                           R23 ; [+1]
     6722 LOADK                            R23 K43 [""]
     6723 LOADK                            R24 K43 [""]
     6724 FASTCALL1                        TOSTRING R23 ; [+3]
     6725 MOVE                             R28 R23
     6726 GETIMPORT                        R27 K4 [tostring]
     6728 CALL                             R27 1 1
     6729 MOVE                             R25 R27
     6730 LOADK                            R26 K43 [""]
     6731 CONCAT                           R22 R24 R26
     6732 SETTABLEKS                       R22 R21 K210 ["language"]
     6734 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6736 JUMPIFNOT                        R24 ; [+5]
     6737 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6739 GETTABLEKS                       R23 R24 K317 ["PassName"]
     6741 JUMPIF                           R23 ; [+1]
     6742 LOADK                            R23 K43 [""]
     6743 LOADK                            R24 K43 [""]
     6744 FASTCALL1                        TOSTRING R23 ; [+3]
     6745 MOVE                             R28 R23
     6746 GETIMPORT                        R27 K4 [tostring]
     6748 CALL                             R27 1 1
     6749 MOVE                             R25 R27
     6750 LOADK                            R26 K43 [""]
     6751 CONCAT                           R22 R24 R26
     6752 SETTABLEKS                       R22 R21 K315 ["passName"]
     6754 CALL                             R19 2 1
     6755 SETTABLEKS                       R19 R18 K22 ["translation"]
     6757 GETTABLEKS                       R19 R2 K14 ["userId"]
     6759 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6761 MOVE                             R19 R0
     6762 GETTABLEKS                       R20 R2 K14 ["userId"]
     6764 CALL                             R19 1 1
     6765 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6767 LOADK                            R19 K62 ["Description.ActionFriends"]
     6768 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6770 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6772 ORK                              R19 R20 K18 [0]
     6773 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6775 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6777 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6779 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6781 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6783 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6785 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6787 LOADK                            R20 K43 [""]
     6788 FASTCALL1                        TOSTRING R4 ; [+3]
     6789 MOVE                             R24 R4
     6790 GETIMPORT                        R23 K4 [tostring]
     6792 CALL                             R23 1 1
     6793 MOVE                             R21 R23
     6794 LOADK                            R22 K240 ["/localization/translation"]
     6795 CONCAT                           R19 R20 R22
     6796 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6798 LOADK                            R20 K43 [""]
     6799 GETUPVAL                         R26 1
     6800 FASTCALL1                        TOSTRING R26 ; [+2]
     6801 GETIMPORT                        R25 K4 [tostring]
     6803 CALL                             R25 1 1
     6804 MOVE                             R21 R25
     6805 LOADK                            R22 K63 [3]
     6806 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     6808 FASTCALL1                        TOSTRING R26 ; [+2]
     6809 GETIMPORT                        R25 K4 [tostring]
     6811 CALL                             R25 1 1
     6812 MOVE                             R23 R25
     6813 LOADK                            R24 K43 [""]
     6814 CONCAT                           R19 R20 R24
     6815 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     6817 RETURN                           R18 1
     6818 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6820 JUMPIFNOTEQKN                    R18 K329 [64] ; [+96]
     6822 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6823 GETTABLEKS                       R19 R2 K19 ["id"]
     6825 SETTABLEKS                       R19 R18 K19 ["id"]
     6827 LOADK                            R19 K74 ["NotificationStringUpdated"]
     6828 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6830 LOADK                            R19 K31 ["Unknown"]
     6831 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6833 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6835 GETIMPORT                        R21 K34 [pcall]
     6837 NEWCLOSURE                       R22 P6
     6838 CAPTURE                          VAL R20
     6839 CAPTURE                          VAL R3
     6840 CALL                             R21 1 2
     6841 JUMPIFNOT                        R21 ; [+2]
     6842 MOVE                             R19 R22
     6843 JUMP                             ; [+1]
     6844 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6845 SETTABLEKS                       R19 R18 K21 ["date"]
     6847 MOVE                             R19 R12
     6848 LOADK                            R20 K75 ["Description.NotificationStringUpdated"]
     6849 DUPTABLE                         R21 K333 [{"userName"}]
     6850 MOVE                             R23 R0
     6851 GETTABLEKS                       R25 R2 K8 ["resourceId"]
     6853 JUMPIFNOT                        R25 ; [+3]
     6854 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     6856 JUMPIF                           R24 ; [+1]
     6857 LOADN                            R24 255
     6858 CALL                             R23 1 1
     6859 LOADK                            R24 K43 [""]
     6860 FASTCALL1                        TOSTRING R23 ; [+3]
     6861 MOVE                             R28 R23
     6862 GETIMPORT                        R27 K4 [tostring]
     6864 CALL                             R27 1 1
     6865 MOVE                             R25 R27
     6866 LOADK                            R26 K43 [""]
     6867 CONCAT                           R22 R24 R26
     6868 SETTABLEKS                       R22 R21 K332 ["userName"]
     6870 CALL                             R19 2 1
     6871 SETTABLEKS                       R19 R18 K22 ["translation"]
     6873 GETTABLEKS                       R19 R2 K14 ["userId"]
     6875 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6877 MOVE                             R19 R0
     6878 GETTABLEKS                       R20 R2 K14 ["userId"]
     6880 CALL                             R19 1 1
     6881 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6883 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
     6884 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6886 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6888 ORK                              R19 R20 K18 [0]
     6889 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6891 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6893 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6895 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6897 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6899 GETTABLEKS                       R19 R2 K28 ["footerText"]
     6901 SETTABLEKS                       R19 R18 K28 ["footerText"]
     6903 LOADK                            R20 K43 [""]
     6904 FASTCALL1                        TOSTRING R4 ; [+3]
     6905 MOVE                             R24 R4
     6906 GETIMPORT                        R23 K4 [tostring]
     6908 CALL                             R23 1 1
     6909 MOVE                             R21 R23
     6910 LOADK                            R22 K215 ["/localization"]
     6911 CONCAT                           R19 R20 R22
     6912 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     6914 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
     6916 RETURN                           R18 1
     6917 GETTABLEKS                       R18 R2 K17 ["eventType"]
     6919 JUMPIFNOTEQKN                    R18 K335 [65] ; [+96]
     6921 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     6922 GETTABLEKS                       R19 R2 K19 ["id"]
     6924 SETTABLEKS                       R19 R18 K19 ["id"]
     6926 LOADK                            R19 K80 [{"avatarType"}]
     6927 SETTABLEKS                       R19 R18 K17 ["eventType"]
     6929 LOADK                            R19 K31 ["Unknown"]
     6930 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     6932 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     6934 GETIMPORT                        R21 K34 [pcall]
     6936 NEWCLOSURE                       R22 P6
     6937 CAPTURE                          VAL R20
     6938 CAPTURE                          VAL R3
     6939 CALL                             R21 1 2
     6940 JUMPIFNOT                        R21 ; [+2]
     6941 MOVE                             R19 R22
     6942 JUMP                             ; [+1]
     6943 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     6944 SETTABLEKS                       R19 R18 K21 ["date"]
     6946 MOVE                             R19 R12
     6947 LOADK                            R20 K81 ["AvatarType"]
     6948 DUPTABLE                         R21 K339 [{"groupName"}]
     6949 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6951 JUMPIFNOT                        R24 ; [+5]
     6952 GETTABLEKS                       R24 R2 K41 ["metaData"]
     6954 GETTABLEKS                       R23 R24 K340 ["GroupName"]
     6956 JUMPIF                           R23 ; [+1]
     6957 LOADK                            R23 K43 [""]
     6958 LOADK                            R24 K43 [""]
     6959 FASTCALL1                        TOSTRING R23 ; [+3]
     6960 MOVE                             R28 R23
     6961 GETIMPORT                        R27 K4 [tostring]
     6963 CALL                             R27 1 1
     6964 MOVE                             R25 R27
     6965 LOADK                            R26 K43 [""]
     6966 CONCAT                           R22 R24 R26
     6967 SETTABLEKS                       R22 R21 K338 ["groupName"]
     6969 CALL                             R19 2 1
     6970 SETTABLEKS                       R19 R18 K22 ["translation"]
     6972 GETTABLEKS                       R19 R2 K14 ["userId"]
     6974 SETTABLEKS                       R19 R18 K23 ["actorId"]
     6976 MOVE                             R19 R0
     6977 GETTABLEKS                       R20 R2 K14 ["userId"]
     6979 CALL                             R19 1 1
     6980 SETTABLEKS                       R19 R18 K24 ["actorName"]
     6982 LOADK                            R19 K85 ["animation"]
     6983 SETTABLEKS                       R19 R18 K25 ["iconType"]
     6985 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     6987 ORK                              R19 R20 K18 [0]
     6988 SETTABLEKS                       R19 R18 K26 ["iconId"]
     6990 GETTABLEKS                       R19 R2 K2 ["universeId"]
     6992 SETTABLEKS                       R19 R18 K2 ["universeId"]
     6994 GETTABLEKS                       R19 R2 K27 ["headerText"]
     6996 SETTABLEKS                       R19 R18 K27 ["headerText"]
     6998 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7000 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7002 LOADK                            R20 K43 [""]
     7003 FASTCALL1                        TOSTRING R4 ; [+3]
     7004 MOVE                             R24 R4
     7005 GETIMPORT                        R23 K4 [tostring]
     7007 CALL                             R23 1 1
     7008 MOVE                             R21 R23
     7009 LOADK                            R22 K215 ["/localization"]
     7010 CONCAT                           R19 R20 R22
     7011 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7013 SETTABLEKS                       R11 R18 K233 ["viewOnRobloxLink"]
     7015 RETURN                           R18 1
     7016 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7018 JUMPIFNOTEQKN                    R18 K342 [66] ; [+103]
     7020 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     7021 GETTABLEKS                       R19 R2 K19 ["id"]
     7023 SETTABLEKS                       R19 R18 K19 ["id"]
     7025 LOADK                            R19 K87 ["Animation"]
     7026 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7028 LOADK                            R19 K88 [8]
     7029 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7031 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7033 GETIMPORT                        R21 K34 [pcall]
     7035 NEWCLOSURE                       R22 P6
     7036 CAPTURE                          VAL R20
     7037 CAPTURE                          VAL R3
     7038 CALL                             R21 1 2
     7039 JUMPIFNOT                        R21 ; [+2]
     7040 MOVE                             R19 R22
     7041 JUMP                             ; [+1]
     7042 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7043 SETTABLEKS                       R19 R18 K21 ["date"]
     7045 MOVE                             R19 R12
     7046 LOADK                            R20 K89 ["AvatarSettingsCollision"]
     7047 DUPTABLE                         R21 K139 [{"action"}]
     7048 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7050 JUMPIFNOT                        R26 ; [+5]
     7051 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7053 GETTABLEKS                       R25 R26 K42 ["Action"]
     7055 JUMPIF                           R25 ; [+1]
     7056 LOADK                            R25 K43 [""]
     7057 GETIMPORT                        R26 K46 [string.lower]
     7059 FASTCALL1                        TOSTRING R25 ; [+3]
     7060 MOVE                             R28 R25
     7061 GETIMPORT                        R27 K4 [tostring]
     7063 CALL                             R27 1 1
     7064 CALL                             R26 1 1
     7065 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7067 LOADB                            R24 1
     7068 JUMP                             ; [+1]
     7069 LOADB                            R24 0
     7070 JUMPIFNOT                        R24 ; [+4]
     7071 MOVE                             R23 R12
     7072 LOADK                            R24 K90 ["Description.AvatarSettingsCollision"]
     7073 CALL                             R23 1 1
     7074 JUMPIF                           R23 ; [+3]
     7075 MOVE                             R23 R12
     7076 LOADK                            R24 K214 ["Description.ActionRemoved"]
     7077 CALL                             R23 1 1
     7078 LOADK                            R24 K43 [""]
     7079 FASTCALL1                        TOSTRING R23 ; [+3]
     7080 MOVE                             R28 R23
     7081 GETIMPORT                        R27 K4 [tostring]
     7083 CALL                             R27 1 1
     7084 MOVE                             R25 R27
     7085 LOADK                            R26 K43 [""]
     7086 CONCAT                           R22 R24 R26
     7087 SETTABLEKS                       R22 R21 K138 ["action"]
     7089 CALL                             R19 2 1
     7090 SETTABLEKS                       R19 R18 K22 ["translation"]
     7092 GETTABLEKS                       R19 R2 K14 ["userId"]
     7094 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7096 MOVE                             R19 R0
     7097 GETTABLEKS                       R20 R2 K14 ["userId"]
     7099 CALL                             R19 1 1
     7100 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7102 LOADK                            R19 K37 ["Universe"]
     7103 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7105 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7107 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7109 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7111 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7113 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7115 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7117 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7119 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7121 RETURN                           R18 1
     7122 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7124 JUMPIFNOTEQKN                    R18 K347 [67] ; [+114]
     7126 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7127 GETTABLEKS                       R19 R2 K19 ["id"]
     7129 SETTABLEKS                       R19 R18 K19 ["id"]
     7131 LOADK                            R19 K92 [{"collision"}]
     7132 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7134 LOADK                            R19 K88 [8]
     7135 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7137 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7139 GETIMPORT                        R21 K34 [pcall]
     7141 NEWCLOSURE                       R22 P6
     7142 CAPTURE                          VAL R20
     7143 CAPTURE                          VAL R3
     7144 CALL                             R21 1 2
     7145 JUMPIFNOT                        R21 ; [+2]
     7146 MOVE                             R19 R22
     7147 JUMP                             ; [+1]
     7148 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7149 SETTABLEKS                       R19 R18 K21 ["date"]
     7151 MOVE                             R19 R12
     7152 LOADK                            R20 K93 ["Collision"]
     7153 DUPTABLE                         R21 K139 [{"action"}]
     7154 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7156 JUMPIFNOT                        R26 ; [+5]
     7157 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7159 GETTABLEKS                       R25 R26 K42 ["Action"]
     7161 JUMPIF                           R25 ; [+1]
     7162 LOADK                            R25 K43 [""]
     7163 GETIMPORT                        R26 K46 [string.lower]
     7165 FASTCALL1                        TOSTRING R25 ; [+3]
     7166 MOVE                             R28 R25
     7167 GETIMPORT                        R27 K4 [tostring]
     7169 CALL                             R27 1 1
     7170 CALL                             R26 1 1
     7171 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7173 LOADB                            R24 1
     7174 JUMP                             ; [+1]
     7175 LOADB                            R24 0
     7176 JUMPIFNOT                        R24 ; [+4]
     7177 MOVE                             R23 R12
     7178 LOADK                            R24 K62 ["Description.ActionFriends"]
     7179 CALL                             R23 1 1
     7180 JUMPIF                           R23 ; [+3]
     7181 MOVE                             R23 R12
     7182 LOADK                            R24 K59 ["Description.ActionPublic"]
     7183 CALL                             R23 1 1
     7184 LOADK                            R24 K43 [""]
     7185 FASTCALL1                        TOSTRING R23 ; [+3]
     7186 MOVE                             R28 R23
     7187 GETIMPORT                        R27 K4 [tostring]
     7189 CALL                             R27 1 1
     7190 MOVE                             R25 R27
     7191 LOADK                            R26 K43 [""]
     7192 CONCAT                           R22 R24 R26
     7193 SETTABLEKS                       R22 R21 K138 ["action"]
     7195 CALL                             R19 2 1
     7196 SETTABLEKS                       R19 R18 K22 ["translation"]
     7198 GETTABLEKS                       R19 R2 K14 ["userId"]
     7200 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7202 MOVE                             R19 R0
     7203 GETTABLEKS                       R20 R2 K14 ["userId"]
     7205 CALL                             R19 1 1
     7206 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7208 LOADK                            R19 K37 ["Universe"]
     7209 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7211 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7213 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7215 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7217 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7219 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7221 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7223 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7225 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7227 LOADK                            R20 K43 [""]
     7228 FASTCALL1                        TOSTRING R4 ; [+3]
     7229 MOVE                             R24 R4
     7230 GETIMPORT                        R23 K4 [tostring]
     7232 CALL                             R23 1 1
     7233 MOVE                             R21 R23
     7234 LOADK                            R22 K94 [9]
     7235 CONCAT                           R19 R20 R22
     7236 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7238 RETURN                           R18 1
     7239 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7241 JUMPIFNOTEQKN                    R18 K351 [68] ; [+114]
     7243 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7244 GETTABLEKS                       R19 R2 K19 ["id"]
     7246 SETTABLEKS                       R19 R18 K19 ["id"]
     7248 LOADK                            R19 K96 ["Description.AvatarSettingsScaleHeight"]
     7249 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7251 LOADK                            R19 K88 [8]
     7252 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7254 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7256 GETIMPORT                        R21 K34 [pcall]
     7258 NEWCLOSURE                       R22 P6
     7259 CAPTURE                          VAL R20
     7260 CAPTURE                          VAL R3
     7261 CALL                             R21 1 2
     7262 JUMPIFNOT                        R21 ; [+2]
     7263 MOVE                             R19 R22
     7264 JUMP                             ; [+1]
     7265 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7266 SETTABLEKS                       R19 R18 K21 ["date"]
     7268 MOVE                             R19 R12
     7269 LOADK                            R20 K97 ["scale"]
     7270 DUPTABLE                         R21 K139 [{"action"}]
     7271 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7273 JUMPIFNOT                        R26 ; [+5]
     7274 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7276 GETTABLEKS                       R25 R26 K42 ["Action"]
     7278 JUMPIF                           R25 ; [+1]
     7279 LOADK                            R25 K43 [""]
     7280 GETIMPORT                        R26 K46 [string.lower]
     7282 FASTCALL1                        TOSTRING R25 ; [+3]
     7283 MOVE                             R28 R25
     7284 GETIMPORT                        R27 K4 [tostring]
     7286 CALL                             R27 1 1
     7287 CALL                             R26 1 1
     7288 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7290 LOADB                            R24 1
     7291 JUMP                             ; [+1]
     7292 LOADB                            R24 0
     7293 JUMPIFNOT                        R24 ; [+4]
     7294 MOVE                             R23 R12
     7295 LOADK                            R24 K140 ["Description.ActionEnabled"]
     7296 CALL                             R23 1 1
     7297 JUMPIF                           R23 ; [+3]
     7298 MOVE                             R23 R12
     7299 LOADK                            R24 K141 ["Description.ActionDisabled"]
     7300 CALL                             R23 1 1
     7301 LOADK                            R24 K43 [""]
     7302 FASTCALL1                        TOSTRING R23 ; [+3]
     7303 MOVE                             R28 R23
     7304 GETIMPORT                        R27 K4 [tostring]
     7306 CALL                             R27 1 1
     7307 MOVE                             R25 R27
     7308 LOADK                            R26 K43 [""]
     7309 CONCAT                           R22 R24 R26
     7310 SETTABLEKS                       R22 R21 K138 ["action"]
     7312 CALL                             R19 2 1
     7313 SETTABLEKS                       R19 R18 K22 ["translation"]
     7315 GETTABLEKS                       R19 R2 K14 ["userId"]
     7317 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7319 MOVE                             R19 R0
     7320 GETTABLEKS                       R20 R2 K14 ["userId"]
     7322 CALL                             R19 1 1
     7323 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7325 LOADK                            R19 K37 ["Universe"]
     7326 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7328 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7330 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7332 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7334 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7336 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7338 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7340 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7342 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7344 LOADK                            R20 K43 [""]
     7345 FASTCALL1                        TOSTRING R4 ; [+3]
     7346 MOVE                             R24 R4
     7347 GETIMPORT                        R23 K4 [tostring]
     7349 CALL                             R23 1 1
     7350 MOVE                             R21 R23
     7351 LOADK                            R22 K94 [9]
     7352 CONCAT                           R19 R20 R22
     7353 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7355 RETURN                           R18 1
     7356 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7358 JUMPIFNOTEQKN                    R18 K354 [69] ; [+93]
     7360 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7361 GETTABLEKS                       R19 R2 K19 ["id"]
     7363 SETTABLEKS                       R19 R18 K19 ["id"]
     7365 LOADK                            R19 K99 ["Scale"]
     7366 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7368 LOADK                            R19 K88 [8]
     7369 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7371 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7373 GETIMPORT                        R21 K34 [pcall]
     7375 NEWCLOSURE                       R22 P6
     7376 CAPTURE                          VAL R20
     7377 CAPTURE                          VAL R3
     7378 CALL                             R21 1 2
     7379 JUMPIFNOT                        R21 ; [+2]
     7380 MOVE                             R19 R22
     7381 JUMP                             ; [+1]
     7382 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7383 SETTABLEKS                       R19 R18 K21 ["date"]
     7385 MOVE                             R19 R12
     7386 LOADK                            R20 K100 [10]
     7387 DUPTABLE                         R21 K358 [{"price"}]
     7388 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7390 JUMPIFNOT                        R24 ; [+5]
     7391 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7393 GETTABLEKS                       R23 R24 K359 ["Price"]
     7395 JUMPIF                           R23 ; [+1]
     7396 LOADK                            R23 K43 [""]
     7397 LOADK                            R24 K43 [""]
     7398 FASTCALL1                        TOSTRING R23 ; [+3]
     7399 MOVE                             R28 R23
     7400 GETIMPORT                        R27 K4 [tostring]
     7402 CALL                             R27 1 1
     7403 MOVE                             R25 R27
     7404 LOADK                            R26 K43 [""]
     7405 CONCAT                           R22 R24 R26
     7406 SETTABLEKS                       R22 R21 K357 ["price"]
     7408 CALL                             R19 2 1
     7409 SETTABLEKS                       R19 R18 K22 ["translation"]
     7411 GETTABLEKS                       R19 R2 K14 ["userId"]
     7413 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7415 MOVE                             R19 R0
     7416 GETTABLEKS                       R20 R2 K14 ["userId"]
     7418 CALL                             R19 1 1
     7419 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7421 LOADK                            R19 K37 ["Universe"]
     7422 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7424 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7426 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7428 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7430 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7432 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7434 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7436 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7438 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7440 LOADK                            R20 K43 [""]
     7441 FASTCALL1                        TOSTRING R4 ; [+3]
     7442 MOVE                             R24 R4
     7443 GETIMPORT                        R23 K4 [tostring]
     7445 CALL                             R23 1 1
     7446 MOVE                             R21 R23
     7447 LOADK                            R22 K94 [9]
     7448 CONCAT                           R19 R20 R22
     7449 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7451 RETURN                           R18 1
     7452 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7454 JUMPIFNOTEQKN                    R18 K360 [70] ; [+83]
     7456 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7457 GETTABLEKS                       R19 R2 K19 ["id"]
     7459 SETTABLEKS                       R19 R18 K19 ["id"]
     7461 LOADK                            R19 K105 ["Description.AvatarSettingsScaleHead"]
     7462 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7464 LOADK                            R19 K88 [8]
     7465 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7467 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7469 GETIMPORT                        R21 K34 [pcall]
     7471 NEWCLOSURE                       R22 P6
     7472 CAPTURE                          VAL R20
     7473 CAPTURE                          VAL R3
     7474 CALL                             R21 1 2
     7475 JUMPIFNOT                        R21 ; [+2]
     7476 MOVE                             R19 R22
     7477 JUMP                             ; [+1]
     7478 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7479 SETTABLEKS                       R19 R18 K21 ["date"]
     7481 GETTABLEKS                       R20 R2 K41 ["metaData"]
     7483 LOADK                            R21 K43 [""]
     7484 GETIMPORT                        R22 K34 [pcall]
     7486 NEWCLOSURE                       R23 P7
     7487 CAPTURE                          VAL R20
     7488 CAPTURE                          UPVAL U3
     7489 CAPTURE                          UPVAL U4
     7490 CAPTURE                          VAL R12
     7491 CAPTURE                          REF R21
     7492 CALL                             R22 1 2
     7493 MOVE                             R19 R21
     7494 CLOSEUPVALS                      R21
     7495 SETTABLEKS                       R19 R18 K22 ["translation"]
     7497 GETTABLEKS                       R19 R2 K14 ["userId"]
     7499 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7501 MOVE                             R19 R0
     7502 GETTABLEKS                       R20 R2 K14 ["userId"]
     7504 CALL                             R19 1 1
     7505 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7507 LOADK                            R19 K37 ["Universe"]
     7508 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7510 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7512 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7514 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7516 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7518 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7520 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7522 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7524 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7526 LOADK                            R20 K43 [""]
     7527 FASTCALL1                        TOSTRING R4 ; [+3]
     7528 MOVE                             R24 R4
     7529 GETIMPORT                        R23 K4 [tostring]
     7531 CALL                             R23 1 1
     7532 MOVE                             R21 R23
     7533 LOADK                            R22 K94 [9]
     7534 CONCAT                           R19 R20 R22
     7535 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7537 RETURN                           R18 1
     7538 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7540 JUMPIFNOTEQKN                    R18 K362 [71] ; [+114]
     7542 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7543 GETTABLEKS                       R19 R2 K19 ["id"]
     7545 SETTABLEKS                       R19 R18 K19 ["id"]
     7547 LOADK                            R19 K107 ["AvatarSettingsScaleBodyType"]
     7548 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7550 LOADK                            R19 K88 [8]
     7551 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7553 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7555 GETIMPORT                        R21 K34 [pcall]
     7557 NEWCLOSURE                       R22 P6
     7558 CAPTURE                          VAL R20
     7559 CAPTURE                          VAL R3
     7560 CALL                             R21 1 2
     7561 JUMPIFNOT                        R21 ; [+2]
     7562 MOVE                             R19 R22
     7563 JUMP                             ; [+1]
     7564 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7565 SETTABLEKS                       R19 R18 K21 ["date"]
     7567 MOVE                             R19 R12
     7568 LOADK                            R20 K108 ["Description.AvatarSettingsScaleBodyType"]
     7569 DUPTABLE                         R21 K139 [{"action"}]
     7570 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7572 JUMPIFNOT                        R26 ; [+5]
     7573 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7575 GETTABLEKS                       R25 R26 K42 ["Action"]
     7577 JUMPIF                           R25 ; [+1]
     7578 LOADK                            R25 K43 [""]
     7579 GETIMPORT                        R26 K46 [string.lower]
     7581 FASTCALL1                        TOSTRING R25 ; [+3]
     7582 MOVE                             R28 R25
     7583 GETIMPORT                        R27 K4 [tostring]
     7585 CALL                             R27 1 1
     7586 CALL                             R26 1 1
     7587 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7589 LOADB                            R24 1
     7590 JUMP                             ; [+1]
     7591 LOADB                            R24 0
     7592 JUMPIFNOT                        R24 ; [+4]
     7593 MOVE                             R23 R12
     7594 LOADK                            R24 K140 ["Description.ActionEnabled"]
     7595 CALL                             R23 1 1
     7596 JUMPIF                           R23 ; [+3]
     7597 MOVE                             R23 R12
     7598 LOADK                            R24 K141 ["Description.ActionDisabled"]
     7599 CALL                             R23 1 1
     7600 LOADK                            R24 K43 [""]
     7601 FASTCALL1                        TOSTRING R23 ; [+3]
     7602 MOVE                             R28 R23
     7603 GETIMPORT                        R27 K4 [tostring]
     7605 CALL                             R27 1 1
     7606 MOVE                             R25 R27
     7607 LOADK                            R26 K43 [""]
     7608 CONCAT                           R22 R24 R26
     7609 SETTABLEKS                       R22 R21 K138 ["action"]
     7611 CALL                             R19 2 1
     7612 SETTABLEKS                       R19 R18 K22 ["translation"]
     7614 GETTABLEKS                       R19 R2 K14 ["userId"]
     7616 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7618 MOVE                             R19 R0
     7619 GETTABLEKS                       R20 R2 K14 ["userId"]
     7621 CALL                             R19 1 1
     7622 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7624 LOADK                            R19 K37 ["Universe"]
     7625 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7627 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7629 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7631 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7633 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7635 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7637 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7639 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7641 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7643 LOADK                            R20 K43 [""]
     7644 FASTCALL1                        TOSTRING R4 ; [+3]
     7645 MOVE                             R24 R4
     7646 GETIMPORT                        R23 K4 [tostring]
     7648 CALL                             R23 1 1
     7649 MOVE                             R21 R23
     7650 LOADK                            R22 K94 [9]
     7651 CONCAT                           R19 R20 R22
     7652 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7654 RETURN                           R18 1
     7655 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7657 JUMPIFNOTEQKN                    R18 K365 [72] ; [+93]
     7659 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
     7660 GETTABLEKS                       R19 R2 K19 ["id"]
     7662 SETTABLEKS                       R19 R18 K19 ["id"]
     7664 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
     7665 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7667 LOADK                            R19 K88 [8]
     7668 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7670 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7672 GETIMPORT                        R21 K34 [pcall]
     7674 NEWCLOSURE                       R22 P6
     7675 CAPTURE                          VAL R20
     7676 CAPTURE                          VAL R3
     7677 CALL                             R21 1 2
     7678 JUMPIFNOT                        R21 ; [+2]
     7679 MOVE                             R19 R22
     7680 JUMP                             ; [+1]
     7681 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7682 SETTABLEKS                       R19 R18 K21 ["date"]
     7684 MOVE                             R19 R12
     7685 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
     7686 DUPTABLE                         R21 K358 [{"price"}]
     7687 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7689 JUMPIFNOT                        R24 ; [+5]
     7690 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7692 GETTABLEKS                       R23 R24 K359 ["Price"]
     7694 JUMPIF                           R23 ; [+1]
     7695 LOADK                            R23 K43 [""]
     7696 LOADK                            R24 K43 [""]
     7697 FASTCALL1                        TOSTRING R23 ; [+3]
     7698 MOVE                             R28 R23
     7699 GETIMPORT                        R27 K4 [tostring]
     7701 CALL                             R27 1 1
     7702 MOVE                             R25 R27
     7703 LOADK                            R26 K43 [""]
     7704 CONCAT                           R22 R24 R26
     7705 SETTABLEKS                       R22 R21 K357 ["price"]
     7707 CALL                             R19 2 1
     7708 SETTABLEKS                       R19 R18 K22 ["translation"]
     7710 GETTABLEKS                       R19 R2 K14 ["userId"]
     7712 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7714 MOVE                             R19 R0
     7715 GETTABLEKS                       R20 R2 K14 ["userId"]
     7717 CALL                             R19 1 1
     7718 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7720 LOADK                            R19 K37 ["Universe"]
     7721 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7723 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7725 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7727 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7729 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7731 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7733 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7735 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7737 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7739 LOADK                            R20 K43 [""]
     7740 FASTCALL1                        TOSTRING R4 ; [+3]
     7741 MOVE                             R24 R4
     7742 GETIMPORT                        R23 K4 [tostring]
     7744 CALL                             R23 1 1
     7745 MOVE                             R21 R23
     7746 LOADK                            R22 K94 [9]
     7747 CONCAT                           R19 R20 R22
     7748 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     7750 RETURN                           R18 1
     7751 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7753 JUMPIFNOTEQKN                    R18 K368 [73] ; [+142]
     7755 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     7756 GETTABLEKS                       R19 R2 K19 ["id"]
     7758 SETTABLEKS                       R19 R18 K19 ["id"]
     7760 LOADK                            R19 K114 ["Description.AvatarSettingsBodyParts"]
     7761 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7763 LOADK                            R19 K88 [8]
     7764 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7766 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7768 GETIMPORT                        R21 K34 [pcall]
     7770 NEWCLOSURE                       R22 P6
     7771 CAPTURE                          VAL R20
     7772 CAPTURE                          VAL R3
     7773 CALL                             R21 1 2
     7774 JUMPIFNOT                        R21 ; [+2]
     7775 MOVE                             R19 R22
     7776 JUMP                             ; [+1]
     7777 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7778 SETTABLEKS                       R19 R18 K21 ["date"]
     7780 MOVE                             R19 R12
     7781 LOADK                            R20 K115 [15]
     7782 DUPTABLE                         R21 K373 [{"adName", "action"}]
     7783 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7785 JUMPIFNOT                        R24 ; [+5]
     7786 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7788 GETTABLEKS                       R23 R24 K374 ["AdName"]
     7790 JUMPIF                           R23 ; [+1]
     7791 LOADK                            R23 K43 [""]
     7792 LOADK                            R24 K43 [""]
     7793 FASTCALL1                        TOSTRING R23 ; [+3]
     7794 MOVE                             R28 R23
     7795 GETIMPORT                        R27 K4 [tostring]
     7797 CALL                             R27 1 1
     7798 MOVE                             R25 R27
     7799 LOADK                            R26 K43 [""]
     7800 CONCAT                           R22 R24 R26
     7801 SETTABLEKS                       R22 R21 K372 ["adName"]
     7803 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7805 JUMPIFNOT                        R26 ; [+5]
     7806 GETTABLEKS                       R26 R2 K41 ["metaData"]
     7808 GETTABLEKS                       R25 R26 K42 ["Action"]
     7810 JUMPIF                           R25 ; [+1]
     7811 LOADK                            R25 K43 [""]
     7812 GETIMPORT                        R26 K46 [string.lower]
     7814 FASTCALL1                        TOSTRING R25 ; [+3]
     7815 MOVE                             R28 R25
     7816 GETIMPORT                        R27 K4 [tostring]
     7818 CALL                             R27 1 1
     7819 CALL                             R26 1 1
     7820 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
     7822 LOADB                            R24 1
     7823 JUMP                             ; [+1]
     7824 LOADB                            R24 0
     7825 JUMPIFNOT                        R24 ; [+4]
     7826 MOVE                             R23 R12
     7827 LOADK                            R24 K119 ["ExperienceName"]
     7828 CALL                             R23 1 1
     7829 JUMPIF                           R23 ; [+3]
     7830 MOVE                             R23 R12
     7831 LOADK                            R24 K120 ["Description.ExperienceName"]
     7832 CALL                             R23 1 1
     7833 LOADK                            R24 K43 [""]
     7834 FASTCALL1                        TOSTRING R23 ; [+3]
     7835 MOVE                             R28 R23
     7836 GETIMPORT                        R27 K4 [tostring]
     7838 CALL                             R27 1 1
     7839 MOVE                             R25 R27
     7840 LOADK                            R26 K43 [""]
     7841 CONCAT                           R22 R24 R26
     7842 SETTABLEKS                       R22 R21 K138 ["action"]
     7844 CALL                             R19 2 1
     7845 SETTABLEKS                       R19 R18 K22 ["translation"]
     7847 GETTABLEKS                       R19 R2 K14 ["userId"]
     7849 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7851 MOVE                             R19 R0
     7852 GETTABLEKS                       R20 R2 K14 ["userId"]
     7854 CALL                             R19 1 1
     7855 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7857 LOADK                            R19 K37 ["Universe"]
     7858 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7860 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7862 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7864 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7866 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7868 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7870 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7872 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7874 SETTABLEKS                       R19 R18 K28 ["footerText"]
     7876 LOADK                            R20 K43 [""]
     7877 GETUPVAL                         R26 1
     7878 FASTCALL1                        TOSTRING R26 ; [+2]
     7879 GETIMPORT                        R25 K4 [tostring]
     7881 CALL                             R25 1 1
     7882 MOVE                             R21 R25
     7883 LOADK                            R22 K121 ["newName"]
     7884 GETTABLEKS                       R26 R2 K2 ["universeId"]
     7886 FASTCALL1                        TOSTRING R26 ; [+2]
     7887 GETIMPORT                        R25 K4 [tostring]
     7889 CALL                             R25 1 1
     7890 MOVE                             R23 R25
     7891 LOADK                            R24 K43 [""]
     7892 CONCAT                           R19 R20 R24
     7893 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     7895 RETURN                           R18 1
     7896 GETTABLEKS                       R18 R2 K17 ["eventType"]
     7898 JUMPIFNOTEQKN                    R18 K378 [74] ; [+141]
     7900 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     7901 GETTABLEKS                       R19 R2 K19 ["id"]
     7903 SETTABLEKS                       R19 R18 K19 ["id"]
     7905 LOADK                            R19 K27 ["headerText"]
     7906 SETTABLEKS                       R19 R18 K17 ["eventType"]
     7908 LOADK                            R19 K88 [8]
     7909 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     7911 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     7913 GETIMPORT                        R21 K34 [pcall]
     7915 NEWCLOSURE                       R22 P6
     7916 CAPTURE                          VAL R20
     7917 CAPTURE                          VAL R3
     7918 CALL                             R21 1 2
     7919 JUMPIFNOT                        R21 ; [+2]
     7920 MOVE                             R19 R22
     7921 JUMP                             ; [+1]
     7922 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     7923 SETTABLEKS                       R19 R18 K21 ["date"]
     7925 MOVE                             R19 R12
     7926 LOADK                            R20 K123 [{"newName", "oldName"}]
     7927 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     7928 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7930 JUMPIFNOT                        R24 ; [+5]
     7931 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7933 GETTABLEKS                       R23 R24 K124 ["NewName"]
     7935 JUMPIF                           R23 ; [+1]
     7936 LOADK                            R23 K43 [""]
     7937 LOADK                            R24 K43 [""]
     7938 FASTCALL1                        TOSTRING R23 ; [+3]
     7939 MOVE                             R28 R23
     7940 GETIMPORT                        R27 K4 [tostring]
     7942 CALL                             R27 1 1
     7943 MOVE                             R25 R27
     7944 LOADK                            R26 K43 [""]
     7945 CONCAT                           R22 R24 R26
     7946 SETTABLEKS                       R22 R21 K121 ["newName"]
     7948 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7950 JUMPIFNOT                        R24 ; [+5]
     7951 GETTABLEKS                       R24 R2 K41 ["metaData"]
     7953 GETTABLEKS                       R23 R24 K125 ["OldName"]
     7955 JUMPIF                           R23 ; [+1]
     7956 LOADK                            R23 K43 [""]
     7957 LOADK                            R24 K43 [""]
     7958 FASTCALL1                        TOSTRING R23 ; [+3]
     7959 MOVE                             R28 R23
     7960 GETIMPORT                        R27 K4 [tostring]
     7962 CALL                             R27 1 1
     7963 MOVE                             R25 R27
     7964 LOADK                            R26 K43 [""]
     7965 CONCAT                           R22 R24 R26
     7966 SETTABLEKS                       R22 R21 K122 ["oldName"]
     7968 CALL                             R19 2 1
     7969 SETTABLEKS                       R19 R18 K22 ["translation"]
     7971 GETTABLEKS                       R19 R2 K14 ["userId"]
     7973 SETTABLEKS                       R19 R18 K23 ["actorId"]
     7975 MOVE                             R19 R0
     7976 GETTABLEKS                       R20 R2 K14 ["userId"]
     7978 CALL                             R19 1 1
     7979 SETTABLEKS                       R19 R18 K24 ["actorName"]
     7981 LOADK                            R19 K28 ["footerText"]
     7982 SETTABLEKS                       R19 R18 K25 ["iconType"]
     7984 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     7986 ORK                              R19 R20 K18 [0]
     7987 SETTABLEKS                       R19 R18 K26 ["iconId"]
     7989 GETTABLEKS                       R19 R2 K2 ["universeId"]
     7991 SETTABLEKS                       R19 R18 K2 ["universeId"]
     7993 GETTABLEKS                       R19 R2 K27 ["headerText"]
     7995 SETTABLEKS                       R19 R18 K27 ["headerText"]
     7997 GETTABLEKS                       R19 R2 K28 ["footerText"]
     7999 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8001 LOADK                            R20 K43 [""]
     8002 FASTCALL1                        TOSTRING R4 ; [+3]
     8003 MOVE                             R26 R4
     8004 GETIMPORT                        R25 K4 [tostring]
     8006 CALL                             R25 1 1
     8007 MOVE                             R21 R25
     8008 LOADK                            R22 K7 ["/badges/"]
     8009 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8011 FASTCALL1                        TOSTRING R26 ; [+2]
     8012 GETIMPORT                        R25 K4 [tostring]
     8014 CALL                             R25 1 1
     8015 MOVE                             R23 R25
     8016 LOADK                            R24 K11 ["/configure"]
     8017 CONCAT                           R19 R20 R24
     8018 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8020 LOADK                            R20 K43 [""]
     8021 GETUPVAL                         R26 1
     8022 FASTCALL1                        TOSTRING R26 ; [+2]
     8023 GETIMPORT                        R25 K4 [tostring]
     8025 CALL                             R25 1 1
     8026 MOVE                             R21 R25
     8027 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8028 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8030 FASTCALL1                        TOSTRING R26 ; [+2]
     8031 GETIMPORT                        R25 K4 [tostring]
     8033 CALL                             R25 1 1
     8034 MOVE                             R23 R25
     8035 LOADK                            R24 K43 [""]
     8036 CONCAT                           R19 R20 R24
     8037 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8039 RETURN                           R18 1
     8040 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8042 JUMPIFNOTEQKN                    R18 K380 [75] ; [+100]
     8044 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8045 GETTABLEKS                       R19 R2 K19 ["id"]
     8047 SETTABLEKS                       R19 R18 K19 ["id"]
     8049 LOADK                            R19 K125 ["OldName"]
     8050 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8052 LOADK                            R19 K88 [8]
     8053 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8055 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8057 GETIMPORT                        R21 K34 [pcall]
     8059 NEWCLOSURE                       R22 P6
     8060 CAPTURE                          VAL R20
     8061 CAPTURE                          VAL R3
     8062 CALL                             R21 1 2
     8063 JUMPIFNOT                        R21 ; [+2]
     8064 MOVE                             R19 R22
     8065 JUMP                             ; [+1]
     8066 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8067 SETTABLEKS                       R19 R18 K21 ["date"]
     8069 MOVE                             R19 R12
     8070 LOADK                            R20 K126 [17]
     8071 CALL                             R19 1 1
     8072 SETTABLEKS                       R19 R18 K22 ["translation"]
     8074 GETTABLEKS                       R19 R2 K14 ["userId"]
     8076 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8078 MOVE                             R19 R0
     8079 GETTABLEKS                       R20 R2 K14 ["userId"]
     8081 CALL                             R19 1 1
     8082 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8084 LOADK                            R19 K28 ["footerText"]
     8085 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8087 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8089 ORK                              R19 R20 K18 [0]
     8090 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8092 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8094 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8096 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8098 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8100 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8102 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8104 LOADK                            R20 K43 [""]
     8105 FASTCALL1                        TOSTRING R4 ; [+3]
     8106 MOVE                             R26 R4
     8107 GETIMPORT                        R25 K4 [tostring]
     8109 CALL                             R25 1 1
     8110 MOVE                             R21 R25
     8111 LOADK                            R22 K7 ["/badges/"]
     8112 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8114 FASTCALL1                        TOSTRING R26 ; [+2]
     8115 GETIMPORT                        R25 K4 [tostring]
     8117 CALL                             R25 1 1
     8118 MOVE                             R23 R25
     8119 LOADK                            R24 K11 ["/configure"]
     8120 CONCAT                           R19 R20 R24
     8121 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8123 LOADK                            R20 K43 [""]
     8124 GETUPVAL                         R26 1
     8125 FASTCALL1                        TOSTRING R26 ; [+2]
     8126 GETIMPORT                        R25 K4 [tostring]
     8128 CALL                             R25 1 1
     8129 MOVE                             R21 R25
     8130 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8131 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8133 FASTCALL1                        TOSTRING R26 ; [+2]
     8134 GETIMPORT                        R25 K4 [tostring]
     8136 CALL                             R25 1 1
     8137 MOVE                             R23 R25
     8138 LOADK                            R24 K43 [""]
     8139 CONCAT                           R19 R20 R24
     8140 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8142 RETURN                           R18 1
     8143 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8145 JUMPIFNOTEQKN                    R18 K383 [76] ; [+100]
     8147 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8148 GETTABLEKS                       R19 R2 K19 ["id"]
     8150 SETTABLEKS                       R19 R18 K19 ["id"]
     8152 LOADK                            R19 K128 ["Description.ExperienceDescription"]
     8153 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8155 LOADK                            R19 K88 [8]
     8156 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8158 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8160 GETIMPORT                        R21 K34 [pcall]
     8162 NEWCLOSURE                       R22 P6
     8163 CAPTURE                          VAL R20
     8164 CAPTURE                          VAL R3
     8165 CALL                             R21 1 2
     8166 JUMPIFNOT                        R21 ; [+2]
     8167 MOVE                             R19 R22
     8168 JUMP                             ; [+1]
     8169 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8170 SETTABLEKS                       R19 R18 K21 ["date"]
     8172 MOVE                             R19 R12
     8173 LOADK                            R20 K129 [18]
     8174 CALL                             R19 1 1
     8175 SETTABLEKS                       R19 R18 K22 ["translation"]
     8177 GETTABLEKS                       R19 R2 K14 ["userId"]
     8179 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8181 MOVE                             R19 R0
     8182 GETTABLEKS                       R20 R2 K14 ["userId"]
     8184 CALL                             R19 1 1
     8185 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8187 LOADK                            R19 K28 ["footerText"]
     8188 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8190 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8192 ORK                              R19 R20 K18 [0]
     8193 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8195 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8197 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8199 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8201 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8203 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8205 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8207 LOADK                            R20 K43 [""]
     8208 FASTCALL1                        TOSTRING R4 ; [+3]
     8209 MOVE                             R26 R4
     8210 GETIMPORT                        R25 K4 [tostring]
     8212 CALL                             R25 1 1
     8213 MOVE                             R21 R25
     8214 LOADK                            R22 K7 ["/badges/"]
     8215 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8217 FASTCALL1                        TOSTRING R26 ; [+2]
     8218 GETIMPORT                        R25 K4 [tostring]
     8220 CALL                             R25 1 1
     8221 MOVE                             R23 R25
     8222 LOADK                            R24 K11 ["/configure"]
     8223 CONCAT                           R19 R20 R24
     8224 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8226 LOADK                            R20 K43 [""]
     8227 GETUPVAL                         R26 1
     8228 FASTCALL1                        TOSTRING R26 ; [+2]
     8229 GETIMPORT                        R25 K4 [tostring]
     8231 CALL                             R25 1 1
     8232 MOVE                             R21 R25
     8233 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8234 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8236 FASTCALL1                        TOSTRING R26 ; [+2]
     8237 GETIMPORT                        R25 K4 [tostring]
     8239 CALL                             R25 1 1
     8240 MOVE                             R23 R25
     8241 LOADK                            R24 K43 [""]
     8242 CONCAT                           R19 R20 R24
     8243 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8245 RETURN                           R18 1
     8246 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8248 JUMPIFNOTEQKN                    R18 K386 [77] ; [+100]
     8250 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8251 GETTABLEKS                       R19 R2 K19 ["id"]
     8253 SETTABLEKS                       R19 R18 K19 ["id"]
     8255 LOADK                            R19 K131 ["Description.ExperienceGenre"]
     8256 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8258 LOADK                            R19 K88 [8]
     8259 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8261 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8263 GETIMPORT                        R21 K34 [pcall]
     8265 NEWCLOSURE                       R22 P6
     8266 CAPTURE                          VAL R20
     8267 CAPTURE                          VAL R3
     8268 CALL                             R21 1 2
     8269 JUMPIFNOT                        R21 ; [+2]
     8270 MOVE                             R19 R22
     8271 JUMP                             ; [+1]
     8272 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8273 SETTABLEKS                       R19 R18 K21 ["date"]
     8275 MOVE                             R19 R12
     8276 LOADK                            R20 K132 ["genre"]
     8277 CALL                             R19 1 1
     8278 SETTABLEKS                       R19 R18 K22 ["translation"]
     8280 GETTABLEKS                       R19 R2 K14 ["userId"]
     8282 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8284 MOVE                             R19 R0
     8285 GETTABLEKS                       R20 R2 K14 ["userId"]
     8287 CALL                             R19 1 1
     8288 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8290 LOADK                            R19 K28 ["footerText"]
     8291 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8293 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8295 ORK                              R19 R20 K18 [0]
     8296 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8298 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8300 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8302 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8304 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8306 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8308 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8310 LOADK                            R20 K43 [""]
     8311 FASTCALL1                        TOSTRING R4 ; [+3]
     8312 MOVE                             R26 R4
     8313 GETIMPORT                        R25 K4 [tostring]
     8315 CALL                             R25 1 1
     8316 MOVE                             R21 R25
     8317 LOADK                            R22 K7 ["/badges/"]
     8318 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8320 FASTCALL1                        TOSTRING R26 ; [+2]
     8321 GETIMPORT                        R25 K4 [tostring]
     8323 CALL                             R25 1 1
     8324 MOVE                             R23 R25
     8325 LOADK                            R24 K9 ["/overview"]
     8326 CONCAT                           R19 R20 R24
     8327 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8329 LOADK                            R20 K43 [""]
     8330 GETUPVAL                         R26 1
     8331 FASTCALL1                        TOSTRING R26 ; [+2]
     8332 GETIMPORT                        R25 K4 [tostring]
     8334 CALL                             R25 1 1
     8335 MOVE                             R21 R25
     8336 LOADK                            R22 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
     8337 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8339 FASTCALL1                        TOSTRING R26 ; [+2]
     8340 GETIMPORT                        R25 K4 [tostring]
     8342 CALL                             R25 1 1
     8343 MOVE                             R23 R25
     8344 LOADK                            R24 K43 [""]
     8345 CONCAT                           R19 R20 R24
     8346 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8348 RETURN                           R18 1
     8349 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8351 JUMPIFNOTEQKN                    R18 K389 [78] ; [+141]
     8353 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8354 GETTABLEKS                       R19 R2 K19 ["id"]
     8356 SETTABLEKS                       R19 R18 K19 ["id"]
     8358 LOADK                            R19 K134 ["Genre"]
     8359 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8361 LOADK                            R19 K88 [8]
     8362 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8364 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8366 GETIMPORT                        R21 K34 [pcall]
     8368 NEWCLOSURE                       R22 P6
     8369 CAPTURE                          VAL R20
     8370 CAPTURE                          VAL R3
     8371 CALL                             R21 1 2
     8372 JUMPIFNOT                        R21 ; [+2]
     8373 MOVE                             R19 R22
     8374 JUMP                             ; [+1]
     8375 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8376 SETTABLEKS                       R19 R18 K21 ["date"]
     8378 MOVE                             R19 R12
     8379 LOADK                            R20 K135 [19]
     8380 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     8381 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8383 JUMPIFNOT                        R24 ; [+5]
     8384 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8386 GETTABLEKS                       R23 R24 K124 ["NewName"]
     8388 JUMPIF                           R23 ; [+1]
     8389 LOADK                            R23 K43 [""]
     8390 LOADK                            R24 K43 [""]
     8391 FASTCALL1                        TOSTRING R23 ; [+3]
     8392 MOVE                             R28 R23
     8393 GETIMPORT                        R27 K4 [tostring]
     8395 CALL                             R27 1 1
     8396 MOVE                             R25 R27
     8397 LOADK                            R26 K43 [""]
     8398 CONCAT                           R22 R24 R26
     8399 SETTABLEKS                       R22 R21 K121 ["newName"]
     8401 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8403 JUMPIFNOT                        R24 ; [+5]
     8404 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8406 GETTABLEKS                       R23 R24 K125 ["OldName"]
     8408 JUMPIF                           R23 ; [+1]
     8409 LOADK                            R23 K43 [""]
     8410 LOADK                            R24 K43 [""]
     8411 FASTCALL1                        TOSTRING R23 ; [+3]
     8412 MOVE                             R28 R23
     8413 GETIMPORT                        R27 K4 [tostring]
     8415 CALL                             R27 1 1
     8416 MOVE                             R25 R27
     8417 LOADK                            R26 K43 [""]
     8418 CONCAT                           R22 R24 R26
     8419 SETTABLEKS                       R22 R21 K122 ["oldName"]
     8421 CALL                             R19 2 1
     8422 SETTABLEKS                       R19 R18 K22 ["translation"]
     8424 GETTABLEKS                       R19 R2 K14 ["userId"]
     8426 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8428 MOVE                             R19 R0
     8429 GETTABLEKS                       R20 R2 K14 ["userId"]
     8431 CALL                             R19 1 1
     8432 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8434 LOADK                            R19 K45 ["lower"]
     8435 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8437 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8439 ORK                              R19 R20 K18 [0]
     8440 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8442 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8444 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8446 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8448 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8450 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8452 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8454 LOADK                            R20 K43 [""]
     8455 FASTCALL1                        TOSTRING R4 ; [+3]
     8456 MOVE                             R26 R4
     8457 GETIMPORT                        R25 K4 [tostring]
     8459 CALL                             R25 1 1
     8460 MOVE                             R21 R25
     8461 LOADK                            R22 K10 ["/developer-products/"]
     8462 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8464 FASTCALL1                        TOSTRING R26 ; [+2]
     8465 GETIMPORT                        R25 K4 [tostring]
     8467 CALL                             R25 1 1
     8468 MOVE                             R23 R25
     8469 LOADK                            R24 K11 ["/configure"]
     8470 CONCAT                           R19 R20 R24
     8471 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8473 LOADK                            R20 K43 [""]
     8474 GETUPVAL                         R26 1
     8475 FASTCALL1                        TOSTRING R26 ; [+2]
     8476 GETIMPORT                        R25 K4 [tostring]
     8478 CALL                             R25 1 1
     8479 MOVE                             R21 R25
     8480 LOADK                            R22 K46 [string.lower]
     8481 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8483 FASTCALL1                        TOSTRING R26 ; [+2]
     8484 GETIMPORT                        R25 K4 [tostring]
     8486 CALL                             R25 1 1
     8487 MOVE                             R23 R25
     8488 LOADK                            R24 K43 [""]
     8489 CONCAT                           R19 R20 R24
     8490 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8492 RETURN                           R18 1
     8493 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8495 JUMPIFNOTEQKN                    R18 K392 [79] ; [+100]
     8497 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8498 GETTABLEKS                       R19 R2 K19 ["id"]
     8500 SETTABLEKS                       R19 R18 K19 ["id"]
     8502 LOADK                            R19 K137 ["Description.SecuritySettingsHTTPRequests"]
     8503 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8505 LOADK                            R19 K88 [8]
     8506 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8508 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8510 GETIMPORT                        R21 K34 [pcall]
     8512 NEWCLOSURE                       R22 P6
     8513 CAPTURE                          VAL R20
     8514 CAPTURE                          VAL R3
     8515 CALL                             R21 1 2
     8516 JUMPIFNOT                        R21 ; [+2]
     8517 MOVE                             R19 R22
     8518 JUMP                             ; [+1]
     8519 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8520 SETTABLEKS                       R19 R18 K21 ["date"]
     8522 MOVE                             R19 R12
     8523 LOADK                            R20 K138 ["action"]
     8524 CALL                             R19 1 1
     8525 SETTABLEKS                       R19 R18 K22 ["translation"]
     8527 GETTABLEKS                       R19 R2 K14 ["userId"]
     8529 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8531 MOVE                             R19 R0
     8532 GETTABLEKS                       R20 R2 K14 ["userId"]
     8534 CALL                             R19 1 1
     8535 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8537 LOADK                            R19 K45 ["lower"]
     8538 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8540 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8542 ORK                              R19 R20 K18 [0]
     8543 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8545 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8547 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8549 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8551 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8553 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8555 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8557 LOADK                            R20 K43 [""]
     8558 FASTCALL1                        TOSTRING R4 ; [+3]
     8559 MOVE                             R26 R4
     8560 GETIMPORT                        R25 K4 [tostring]
     8562 CALL                             R25 1 1
     8563 MOVE                             R21 R25
     8564 LOADK                            R22 K10 ["/developer-products/"]
     8565 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8567 FASTCALL1                        TOSTRING R26 ; [+2]
     8568 GETIMPORT                        R25 K4 [tostring]
     8570 CALL                             R25 1 1
     8571 MOVE                             R23 R25
     8572 LOADK                            R24 K11 ["/configure"]
     8573 CONCAT                           R19 R20 R24
     8574 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8576 LOADK                            R20 K43 [""]
     8577 GETUPVAL                         R26 1
     8578 FASTCALL1                        TOSTRING R26 ; [+2]
     8579 GETIMPORT                        R25 K4 [tostring]
     8581 CALL                             R25 1 1
     8582 MOVE                             R21 R25
     8583 LOADK                            R22 K46 [string.lower]
     8584 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8586 FASTCALL1                        TOSTRING R26 ; [+2]
     8587 GETIMPORT                        R25 K4 [tostring]
     8589 CALL                             R25 1 1
     8590 MOVE                             R23 R25
     8591 LOADK                            R24 K43 [""]
     8592 CONCAT                           R19 R20 R24
     8593 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8595 RETURN                           R18 1
     8596 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8598 JUMPIFNOTEQKN                    R18 K395 [80] ; [+100]
     8600 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8601 GETTABLEKS                       R19 R2 K19 ["id"]
     8603 SETTABLEKS                       R19 R18 K19 ["id"]
     8605 LOADK                            R19 K140 ["Description.ActionEnabled"]
     8606 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8608 LOADK                            R19 K88 [8]
     8609 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8611 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8613 GETIMPORT                        R21 K34 [pcall]
     8615 NEWCLOSURE                       R22 P6
     8616 CAPTURE                          VAL R20
     8617 CAPTURE                          VAL R3
     8618 CALL                             R21 1 2
     8619 JUMPIFNOT                        R21 ; [+2]
     8620 MOVE                             R19 R22
     8621 JUMP                             ; [+1]
     8622 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8623 SETTABLEKS                       R19 R18 K21 ["date"]
     8625 MOVE                             R19 R12
     8626 LOADK                            R20 K141 ["Description.ActionDisabled"]
     8627 CALL                             R19 1 1
     8628 SETTABLEKS                       R19 R18 K22 ["translation"]
     8630 GETTABLEKS                       R19 R2 K14 ["userId"]
     8632 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8634 MOVE                             R19 R0
     8635 GETTABLEKS                       R20 R2 K14 ["userId"]
     8637 CALL                             R19 1 1
     8638 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8640 LOADK                            R19 K45 ["lower"]
     8641 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8643 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8645 ORK                              R19 R20 K18 [0]
     8646 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8648 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8650 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8652 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8654 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8656 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8658 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8660 LOADK                            R20 K43 [""]
     8661 FASTCALL1                        TOSTRING R4 ; [+3]
     8662 MOVE                             R26 R4
     8663 GETIMPORT                        R25 K4 [tostring]
     8665 CALL                             R25 1 1
     8666 MOVE                             R21 R25
     8667 LOADK                            R22 K10 ["/developer-products/"]
     8668 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8670 FASTCALL1                        TOSTRING R26 ; [+2]
     8671 GETIMPORT                        R25 K4 [tostring]
     8673 CALL                             R25 1 1
     8674 MOVE                             R23 R25
     8675 LOADK                            R24 K11 ["/configure"]
     8676 CONCAT                           R19 R20 R24
     8677 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8679 LOADK                            R20 K43 [""]
     8680 GETUPVAL                         R26 1
     8681 FASTCALL1                        TOSTRING R26 ; [+2]
     8682 GETIMPORT                        R25 K4 [tostring]
     8684 CALL                             R25 1 1
     8685 MOVE                             R21 R25
     8686 LOADK                            R22 K46 [string.lower]
     8687 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8689 FASTCALL1                        TOSTRING R26 ; [+2]
     8690 GETIMPORT                        R25 K4 [tostring]
     8692 CALL                             R25 1 1
     8693 MOVE                             R23 R25
     8694 LOADK                            R24 K43 [""]
     8695 CONCAT                           R19 R20 R24
     8696 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8698 RETURN                           R18 1
     8699 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8701 JUMPIFNOTEQKN                    R18 K398 [81] ; [+121]
     8703 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8704 GETTABLEKS                       R19 R2 K19 ["id"]
     8706 SETTABLEKS                       R19 R18 K19 ["id"]
     8708 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
     8709 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8711 LOADK                            R19 K88 [8]
     8712 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8714 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8716 GETIMPORT                        R21 K34 [pcall]
     8718 NEWCLOSURE                       R22 P6
     8719 CAPTURE                          VAL R20
     8720 CAPTURE                          VAL R3
     8721 CALL                             R21 1 2
     8722 JUMPIFNOT                        R21 ; [+2]
     8723 MOVE                             R19 R22
     8724 JUMP                             ; [+1]
     8725 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8726 SETTABLEKS                       R19 R18 K21 ["date"]
     8728 MOVE                             R19 R12
     8729 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
     8730 DUPTABLE                         R21 K358 [{"price"}]
     8731 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8733 JUMPIFNOT                        R24 ; [+5]
     8734 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8736 GETTABLEKS                       R23 R24 K359 ["Price"]
     8738 JUMPIF                           R23 ; [+1]
     8739 LOADK                            R23 K43 [""]
     8740 LOADK                            R24 K43 [""]
     8741 FASTCALL1                        TOSTRING R23 ; [+3]
     8742 MOVE                             R28 R23
     8743 GETIMPORT                        R27 K4 [tostring]
     8745 CALL                             R27 1 1
     8746 MOVE                             R25 R27
     8747 LOADK                            R26 K43 [""]
     8748 CONCAT                           R22 R24 R26
     8749 SETTABLEKS                       R22 R21 K357 ["price"]
     8751 CALL                             R19 2 1
     8752 SETTABLEKS                       R19 R18 K22 ["translation"]
     8754 GETTABLEKS                       R19 R2 K14 ["userId"]
     8756 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8758 MOVE                             R19 R0
     8759 GETTABLEKS                       R20 R2 K14 ["userId"]
     8761 CALL                             R19 1 1
     8762 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8764 LOADK                            R19 K45 ["lower"]
     8765 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8767 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8769 ORK                              R19 R20 K18 [0]
     8770 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8772 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8774 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8776 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8778 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8780 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8782 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8784 LOADK                            R20 K43 [""]
     8785 FASTCALL1                        TOSTRING R4 ; [+3]
     8786 MOVE                             R26 R4
     8787 GETIMPORT                        R25 K4 [tostring]
     8789 CALL                             R25 1 1
     8790 MOVE                             R21 R25
     8791 LOADK                            R22 K10 ["/developer-products/"]
     8792 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8794 FASTCALL1                        TOSTRING R26 ; [+2]
     8795 GETIMPORT                        R25 K4 [tostring]
     8797 CALL                             R25 1 1
     8798 MOVE                             R23 R25
     8799 LOADK                            R24 K11 ["/configure"]
     8800 CONCAT                           R19 R20 R24
     8801 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8803 LOADK                            R20 K43 [""]
     8804 GETUPVAL                         R26 1
     8805 FASTCALL1                        TOSTRING R26 ; [+2]
     8806 GETIMPORT                        R25 K4 [tostring]
     8808 CALL                             R25 1 1
     8809 MOVE                             R21 R25
     8810 LOADK                            R22 K46 [string.lower]
     8811 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8813 FASTCALL1                        TOSTRING R26 ; [+2]
     8814 GETIMPORT                        R25 K4 [tostring]
     8816 CALL                             R25 1 1
     8817 MOVE                             R23 R25
     8818 LOADK                            R24 K43 [""]
     8819 CONCAT                           R19 R20 R24
     8820 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8822 RETURN                           R18 1
     8823 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8825 JUMPIFNOTEQKN                    R18 K401 [82] ; [+100]
     8827 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8828 GETTABLEKS                       R19 R2 K19 ["id"]
     8830 SETTABLEKS                       R19 R18 K19 ["id"]
     8832 LOADK                            R19 K146 ["SecuritySettingsThirdPartySales"]
     8833 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8835 LOADK                            R19 K88 [8]
     8836 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8838 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8840 GETIMPORT                        R21 K34 [pcall]
     8842 NEWCLOSURE                       R22 P6
     8843 CAPTURE                          VAL R20
     8844 CAPTURE                          VAL R3
     8845 CALL                             R21 1 2
     8846 JUMPIFNOT                        R21 ; [+2]
     8847 MOVE                             R19 R22
     8848 JUMP                             ; [+1]
     8849 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8850 SETTABLEKS                       R19 R18 K21 ["date"]
     8852 MOVE                             R19 R12
     8853 LOADK                            R20 K147 ["Description.SecuritySettingsThirdPartySales"]
     8854 CALL                             R19 1 1
     8855 SETTABLEKS                       R19 R18 K22 ["translation"]
     8857 GETTABLEKS                       R19 R2 K14 ["userId"]
     8859 SETTABLEKS                       R19 R18 K23 ["actorId"]
     8861 MOVE                             R19 R0
     8862 GETTABLEKS                       R20 R2 K14 ["userId"]
     8864 CALL                             R19 1 1
     8865 SETTABLEKS                       R19 R18 K24 ["actorName"]
     8867 LOADK                            R19 K45 ["lower"]
     8868 SETTABLEKS                       R19 R18 K25 ["iconType"]
     8870 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     8872 ORK                              R19 R20 K18 [0]
     8873 SETTABLEKS                       R19 R18 K26 ["iconId"]
     8875 GETTABLEKS                       R19 R2 K2 ["universeId"]
     8877 SETTABLEKS                       R19 R18 K2 ["universeId"]
     8879 GETTABLEKS                       R19 R2 K27 ["headerText"]
     8881 SETTABLEKS                       R19 R18 K27 ["headerText"]
     8883 GETTABLEKS                       R19 R2 K28 ["footerText"]
     8885 SETTABLEKS                       R19 R18 K28 ["footerText"]
     8887 LOADK                            R20 K43 [""]
     8888 FASTCALL1                        TOSTRING R4 ; [+3]
     8889 MOVE                             R26 R4
     8890 GETIMPORT                        R25 K4 [tostring]
     8892 CALL                             R25 1 1
     8893 MOVE                             R21 R25
     8894 LOADK                            R22 K10 ["/developer-products/"]
     8895 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8897 FASTCALL1                        TOSTRING R26 ; [+2]
     8898 GETIMPORT                        R25 K4 [tostring]
     8900 CALL                             R25 1 1
     8901 MOVE                             R23 R25
     8902 LOADK                            R24 K11 ["/configure"]
     8903 CONCAT                           R19 R20 R24
     8904 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     8906 LOADK                            R20 K43 [""]
     8907 GETUPVAL                         R26 1
     8908 FASTCALL1                        TOSTRING R26 ; [+2]
     8909 GETIMPORT                        R25 K4 [tostring]
     8911 CALL                             R25 1 1
     8912 MOVE                             R21 R25
     8913 LOADK                            R22 K46 [string.lower]
     8914 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     8916 FASTCALL1                        TOSTRING R26 ; [+2]
     8917 GETIMPORT                        R25 K4 [tostring]
     8919 CALL                             R25 1 1
     8920 MOVE                             R23 R25
     8921 LOADK                            R24 K43 [""]
     8922 CONCAT                           R19 R20 R24
     8923 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     8925 RETURN                           R18 1
     8926 GETTABLEKS                       R18 R2 K17 ["eventType"]
     8928 JUMPIFNOTEQKN                    R18 K404 [83] ; [+141]
     8930 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     8931 GETTABLEKS                       R19 R2 K19 ["id"]
     8933 SETTABLEKS                       R19 R18 K19 ["id"]
     8935 LOADK                            R19 K149 ["SecuritySettingsThirdPartyTeleports"]
     8936 SETTABLEKS                       R19 R18 K17 ["eventType"]
     8938 LOADK                            R19 K88 [8]
     8939 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     8941 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     8943 GETIMPORT                        R21 K34 [pcall]
     8945 NEWCLOSURE                       R22 P6
     8946 CAPTURE                          VAL R20
     8947 CAPTURE                          VAL R3
     8948 CALL                             R21 1 2
     8949 JUMPIFNOT                        R21 ; [+2]
     8950 MOVE                             R19 R22
     8951 JUMP                             ; [+1]
     8952 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     8953 SETTABLEKS                       R19 R18 K21 ["date"]
     8955 MOVE                             R19 R12
     8956 LOADK                            R20 K150 ["Description.SecuritySettingsThirdPartyTeleports"]
     8957 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
     8958 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8960 JUMPIFNOT                        R24 ; [+5]
     8961 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8963 GETTABLEKS                       R23 R24 K124 ["NewName"]
     8965 JUMPIF                           R23 ; [+1]
     8966 LOADK                            R23 K43 [""]
     8967 LOADK                            R24 K43 [""]
     8968 FASTCALL1                        TOSTRING R23 ; [+3]
     8969 MOVE                             R28 R23
     8970 GETIMPORT                        R27 K4 [tostring]
     8972 CALL                             R27 1 1
     8973 MOVE                             R25 R27
     8974 LOADK                            R26 K43 [""]
     8975 CONCAT                           R22 R24 R26
     8976 SETTABLEKS                       R22 R21 K121 ["newName"]
     8978 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8980 JUMPIFNOT                        R24 ; [+5]
     8981 GETTABLEKS                       R24 R2 K41 ["metaData"]
     8983 GETTABLEKS                       R23 R24 K125 ["OldName"]
     8985 JUMPIF                           R23 ; [+1]
     8986 LOADK                            R23 K43 [""]
     8987 LOADK                            R24 K43 [""]
     8988 FASTCALL1                        TOSTRING R23 ; [+3]
     8989 MOVE                             R28 R23
     8990 GETIMPORT                        R27 K4 [tostring]
     8992 CALL                             R27 1 1
     8993 MOVE                             R25 R27
     8994 LOADK                            R26 K43 [""]
     8995 CONCAT                           R22 R24 R26
     8996 SETTABLEKS                       R22 R21 K122 ["oldName"]
     8998 CALL                             R19 2 1
     8999 SETTABLEKS                       R19 R18 K22 ["translation"]
     9001 GETTABLEKS                       R19 R2 K14 ["userId"]
     9003 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9005 MOVE                             R19 R0
     9006 GETTABLEKS                       R20 R2 K14 ["userId"]
     9008 CALL                             R19 1 1
     9009 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9011 LOADK                            R19 K62 ["Description.ActionFriends"]
     9012 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9014 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9016 ORK                              R19 R20 K18 [0]
     9017 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9019 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9021 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9023 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9025 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9027 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9029 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9031 LOADK                            R20 K43 [""]
     9032 FASTCALL1                        TOSTRING R4 ; [+3]
     9033 MOVE                             R26 R4
     9034 GETIMPORT                        R25 K4 [tostring]
     9036 CALL                             R25 1 1
     9037 MOVE                             R21 R25
     9038 LOADK                            R22 K12 ["/passes/"]
     9039 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9041 FASTCALL1                        TOSTRING R26 ; [+2]
     9042 GETIMPORT                        R25 K4 [tostring]
     9044 CALL                             R25 1 1
     9045 MOVE                             R23 R25
     9046 LOADK                            R24 K11 ["/configure"]
     9047 CONCAT                           R19 R20 R24
     9048 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9050 LOADK                            R20 K43 [""]
     9051 GETUPVAL                         R26 1
     9052 FASTCALL1                        TOSTRING R26 ; [+2]
     9053 GETIMPORT                        R25 K4 [tostring]
     9055 CALL                             R25 1 1
     9056 MOVE                             R21 R25
     9057 LOADK                            R22 K63 [3]
     9058 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9060 FASTCALL1                        TOSTRING R26 ; [+2]
     9061 GETIMPORT                        R25 K4 [tostring]
     9063 CALL                             R25 1 1
     9064 MOVE                             R23 R25
     9065 LOADK                            R24 K43 [""]
     9066 CONCAT                           R19 R20 R24
     9067 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9069 RETURN                           R18 1
     9070 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9072 JUMPIFNOTEQKN                    R18 K407 [84] ; [+100]
     9074 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9075 GETTABLEKS                       R19 R2 K19 ["id"]
     9077 SETTABLEKS                       R19 R18 K19 ["id"]
     9079 LOADK                            R19 K152 ["ExperienceShutDown"]
     9080 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9082 LOADK                            R19 K88 [8]
     9083 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9085 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9087 GETIMPORT                        R21 K34 [pcall]
     9089 NEWCLOSURE                       R22 P6
     9090 CAPTURE                          VAL R20
     9091 CAPTURE                          VAL R3
     9092 CALL                             R21 1 2
     9093 JUMPIFNOT                        R21 ; [+2]
     9094 MOVE                             R19 R22
     9095 JUMP                             ; [+1]
     9096 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9097 SETTABLEKS                       R19 R18 K21 ["date"]
     9099 MOVE                             R19 R12
     9100 LOADK                            R20 K153 ["Description.ExperienceShutDown"]
     9101 CALL                             R19 1 1
     9102 SETTABLEKS                       R19 R18 K22 ["translation"]
     9104 GETTABLEKS                       R19 R2 K14 ["userId"]
     9106 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9108 MOVE                             R19 R0
     9109 GETTABLEKS                       R20 R2 K14 ["userId"]
     9111 CALL                             R19 1 1
     9112 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9114 LOADK                            R19 K62 ["Description.ActionFriends"]
     9115 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9117 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9119 ORK                              R19 R20 K18 [0]
     9120 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9122 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9124 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9126 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9128 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9130 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9132 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9134 LOADK                            R20 K43 [""]
     9135 FASTCALL1                        TOSTRING R4 ; [+3]
     9136 MOVE                             R26 R4
     9137 GETIMPORT                        R25 K4 [tostring]
     9139 CALL                             R25 1 1
     9140 MOVE                             R21 R25
     9141 LOADK                            R22 K12 ["/passes/"]
     9142 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9144 FASTCALL1                        TOSTRING R26 ; [+2]
     9145 GETIMPORT                        R25 K4 [tostring]
     9147 CALL                             R25 1 1
     9148 MOVE                             R23 R25
     9149 LOADK                            R24 K11 ["/configure"]
     9150 CONCAT                           R19 R20 R24
     9151 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9153 LOADK                            R20 K43 [""]
     9154 GETUPVAL                         R26 1
     9155 FASTCALL1                        TOSTRING R26 ; [+2]
     9156 GETIMPORT                        R25 K4 [tostring]
     9158 CALL                             R25 1 1
     9159 MOVE                             R21 R25
     9160 LOADK                            R22 K63 [3]
     9161 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9163 FASTCALL1                        TOSTRING R26 ; [+2]
     9164 GETIMPORT                        R25 K4 [tostring]
     9166 CALL                             R25 1 1
     9167 MOVE                             R23 R25
     9168 LOADK                            R24 K43 [""]
     9169 CONCAT                           R19 R20 R24
     9170 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9172 RETURN                           R18 1
     9173 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9175 JUMPIFNOTEQKN                    R18 K410 [85] ; [+100]
     9177 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9178 GETTABLEKS                       R19 R2 K19 ["id"]
     9180 SETTABLEKS                       R19 R18 K19 ["id"]
     9182 LOADK                            R19 K155 ["SocialLinksAdded"]
     9183 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9185 LOADK                            R19 K88 [8]
     9186 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9188 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9190 GETIMPORT                        R21 K34 [pcall]
     9192 NEWCLOSURE                       R22 P6
     9193 CAPTURE                          VAL R20
     9194 CAPTURE                          VAL R3
     9195 CALL                             R21 1 2
     9196 JUMPIFNOT                        R21 ; [+2]
     9197 MOVE                             R19 R22
     9198 JUMP                             ; [+1]
     9199 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9200 SETTABLEKS                       R19 R18 K21 ["date"]
     9202 MOVE                             R19 R12
     9203 LOADK                            R20 K156 ["Description.SocialLinksAdded"]
     9204 CALL                             R19 1 1
     9205 SETTABLEKS                       R19 R18 K22 ["translation"]
     9207 GETTABLEKS                       R19 R2 K14 ["userId"]
     9209 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9211 MOVE                             R19 R0
     9212 GETTABLEKS                       R20 R2 K14 ["userId"]
     9214 CALL                             R19 1 1
     9215 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9217 LOADK                            R19 K62 ["Description.ActionFriends"]
     9218 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9220 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9222 ORK                              R19 R20 K18 [0]
     9223 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9225 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9227 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9229 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9231 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9233 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9235 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9237 LOADK                            R20 K43 [""]
     9238 FASTCALL1                        TOSTRING R4 ; [+3]
     9239 MOVE                             R26 R4
     9240 GETIMPORT                        R25 K4 [tostring]
     9242 CALL                             R25 1 1
     9243 MOVE                             R21 R25
     9244 LOADK                            R22 K12 ["/passes/"]
     9245 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9247 FASTCALL1                        TOSTRING R26 ; [+2]
     9248 GETIMPORT                        R25 K4 [tostring]
     9250 CALL                             R25 1 1
     9251 MOVE                             R23 R25
     9252 LOADK                            R24 K11 ["/configure"]
     9253 CONCAT                           R19 R20 R24
     9254 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9256 LOADK                            R20 K43 [""]
     9257 GETUPVAL                         R26 1
     9258 FASTCALL1                        TOSTRING R26 ; [+2]
     9259 GETIMPORT                        R25 K4 [tostring]
     9261 CALL                             R25 1 1
     9262 MOVE                             R21 R25
     9263 LOADK                            R22 K63 [3]
     9264 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9266 FASTCALL1                        TOSTRING R26 ; [+2]
     9267 GETIMPORT                        R25 K4 [tostring]
     9269 CALL                             R25 1 1
     9270 MOVE                             R23 R25
     9271 LOADK                            R24 K43 [""]
     9272 CONCAT                           R19 R20 R24
     9273 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9275 RETURN                           R18 1
     9276 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9278 JUMPIFNOTEQKN                    R18 K413 [86] ; [+121]
     9280 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9281 GETTABLEKS                       R19 R2 K19 ["id"]
     9283 SETTABLEKS                       R19 R18 K19 ["id"]
     9285 LOADK                            R19 K158 [{"channel"}]
     9286 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9288 LOADK                            R19 K88 [8]
     9289 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9291 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9293 GETIMPORT                        R21 K34 [pcall]
     9295 NEWCLOSURE                       R22 P6
     9296 CAPTURE                          VAL R20
     9297 CAPTURE                          VAL R3
     9298 CALL                             R21 1 2
     9299 JUMPIFNOT                        R21 ; [+2]
     9300 MOVE                             R19 R22
     9301 JUMP                             ; [+1]
     9302 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9303 SETTABLEKS                       R19 R18 K21 ["date"]
     9305 MOVE                             R19 R12
     9306 LOADK                            R20 K159 ["Channel"]
     9307 DUPTABLE                         R21 K358 [{"price"}]
     9308 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9310 JUMPIFNOT                        R24 ; [+5]
     9311 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9313 GETTABLEKS                       R23 R24 K359 ["Price"]
     9315 JUMPIF                           R23 ; [+1]
     9316 LOADK                            R23 K43 [""]
     9317 LOADK                            R24 K43 [""]
     9318 FASTCALL1                        TOSTRING R23 ; [+3]
     9319 MOVE                             R28 R23
     9320 GETIMPORT                        R27 K4 [tostring]
     9322 CALL                             R27 1 1
     9323 MOVE                             R25 R27
     9324 LOADK                            R26 K43 [""]
     9325 CONCAT                           R22 R24 R26
     9326 SETTABLEKS                       R22 R21 K357 ["price"]
     9328 CALL                             R19 2 1
     9329 SETTABLEKS                       R19 R18 K22 ["translation"]
     9331 GETTABLEKS                       R19 R2 K14 ["userId"]
     9333 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9335 MOVE                             R19 R0
     9336 GETTABLEKS                       R20 R2 K14 ["userId"]
     9338 CALL                             R19 1 1
     9339 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9341 LOADK                            R19 K62 ["Description.ActionFriends"]
     9342 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9344 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9346 ORK                              R19 R20 K18 [0]
     9347 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9349 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9351 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9353 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9355 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9357 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9359 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9361 LOADK                            R20 K43 [""]
     9362 FASTCALL1                        TOSTRING R4 ; [+3]
     9363 MOVE                             R26 R4
     9364 GETIMPORT                        R25 K4 [tostring]
     9366 CALL                             R25 1 1
     9367 MOVE                             R21 R25
     9368 LOADK                            R22 K12 ["/passes/"]
     9369 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9371 FASTCALL1                        TOSTRING R26 ; [+2]
     9372 GETIMPORT                        R25 K4 [tostring]
     9374 CALL                             R25 1 1
     9375 MOVE                             R23 R25
     9376 LOADK                            R24 K160 ["/social-links"]
     9377 CONCAT                           R19 R20 R24
     9378 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9380 LOADK                            R20 K43 [""]
     9381 GETUPVAL                         R26 1
     9382 FASTCALL1                        TOSTRING R26 ; [+2]
     9383 GETIMPORT                        R25 K4 [tostring]
     9385 CALL                             R25 1 1
     9386 MOVE                             R21 R25
     9387 LOADK                            R22 K63 [3]
     9388 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9390 FASTCALL1                        TOSTRING R26 ; [+2]
     9391 GETIMPORT                        R25 K4 [tostring]
     9393 CALL                             R25 1 1
     9394 MOVE                             R23 R25
     9395 LOADK                            R24 K43 [""]
     9396 CONCAT                           R19 R20 R24
     9397 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9399 RETURN                           R18 1
     9400 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9402 JUMPIFNOTEQKN                    R18 K417 [87] ; [+100]
     9404 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
     9405 GETTABLEKS                       R19 R2 K19 ["id"]
     9407 SETTABLEKS                       R19 R18 K19 ["id"]
     9409 LOADK                            R19 K162 ["SocialLinksRemoved"]
     9410 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9412 LOADK                            R19 K88 [8]
     9413 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9415 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9417 GETIMPORT                        R21 K34 [pcall]
     9419 NEWCLOSURE                       R22 P6
     9420 CAPTURE                          VAL R20
     9421 CAPTURE                          VAL R3
     9422 CALL                             R21 1 2
     9423 JUMPIFNOT                        R21 ; [+2]
     9424 MOVE                             R19 R22
     9425 JUMP                             ; [+1]
     9426 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9427 SETTABLEKS                       R19 R18 K21 ["date"]
     9429 MOVE                             R19 R12
     9430 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
     9431 CALL                             R19 1 1
     9432 SETTABLEKS                       R19 R18 K22 ["translation"]
     9434 GETTABLEKS                       R19 R2 K14 ["userId"]
     9436 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9438 MOVE                             R19 R0
     9439 GETTABLEKS                       R20 R2 K14 ["userId"]
     9441 CALL                             R19 1 1
     9442 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9444 LOADK                            R19 K62 ["Description.ActionFriends"]
     9445 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9447 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9449 ORK                              R19 R20 K18 [0]
     9450 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9452 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9454 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9456 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9458 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9460 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9462 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9464 LOADK                            R20 K43 [""]
     9465 FASTCALL1                        TOSTRING R4 ; [+3]
     9466 MOVE                             R26 R4
     9467 GETIMPORT                        R25 K4 [tostring]
     9469 CALL                             R25 1 1
     9470 MOVE                             R21 R25
     9471 LOADK                            R22 K12 ["/passes/"]
     9472 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9474 FASTCALL1                        TOSTRING R26 ; [+2]
     9475 GETIMPORT                        R25 K4 [tostring]
     9477 CALL                             R25 1 1
     9478 MOVE                             R23 R25
     9479 LOADK                            R24 K11 ["/configure"]
     9480 CONCAT                           R19 R20 R24
     9481 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
     9483 LOADK                            R20 K43 [""]
     9484 GETUPVAL                         R26 1
     9485 FASTCALL1                        TOSTRING R26 ; [+2]
     9486 GETIMPORT                        R25 K4 [tostring]
     9488 CALL                             R25 1 1
     9489 MOVE                             R21 R25
     9490 LOADK                            R22 K63 [3]
     9491 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9493 FASTCALL1                        TOSTRING R26 ; [+2]
     9494 GETIMPORT                        R25 K4 [tostring]
     9496 CALL                             R25 1 1
     9497 MOVE                             R23 R25
     9498 LOADK                            R24 K43 [""]
     9499 CONCAT                           R19 R20 R24
     9500 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9502 RETURN                           R18 1
     9503 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9505 JUMPIFNOTEQKN                    R18 K420 [88] ; [+109]
     9507 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9508 GETTABLEKS                       R19 R2 K19 ["id"]
     9510 SETTABLEKS                       R19 R18 K19 ["id"]
     9512 LOADK                            R19 K165 ["SocialLinksUpdated"]
     9513 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9515 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9516 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9518 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9520 GETIMPORT                        R21 K34 [pcall]
     9522 NEWCLOSURE                       R22 P6
     9523 CAPTURE                          VAL R20
     9524 CAPTURE                          VAL R3
     9525 CALL                             R21 1 2
     9526 JUMPIFNOT                        R21 ; [+2]
     9527 MOVE                             R19 R22
     9528 JUMP                             ; [+1]
     9529 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9530 SETTABLEKS                       R19 R18 K21 ["date"]
     9532 MOVE                             R19 R12
     9533 LOADK                            R20 K167 [27]
     9534 DUPTABLE                         R21 K425 [{"userName", "role"}]
     9535 MOVE                             R23 R0
     9536 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9538 CALL                             R23 1 1
     9539 LOADK                            R24 K43 [""]
     9540 FASTCALL1                        TOSTRING R23 ; [+3]
     9541 MOVE                             R28 R23
     9542 GETIMPORT                        R27 K4 [tostring]
     9544 CALL                             R27 1 1
     9545 MOVE                             R25 R27
     9546 LOADK                            R26 K43 [""]
     9547 CONCAT                           R22 R24 R26
     9548 SETTABLEKS                       R22 R21 K332 ["userName"]
     9550 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9552 JUMPIFNOT                        R25 ; [+5]
     9553 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9555 GETTABLEKS                       R24 R25 K42 ["Action"]
     9557 JUMPIF                           R24 ; [+1]
     9558 LOADK                            R24 K43 [""]
     9559 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9561 MOVE                             R23 R12
     9562 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9563 CALL                             R23 1 1
     9564 JUMPIF                           R23 ; [+3]
     9565 MOVE                             R23 R12
     9566 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9567 CALL                             R23 1 1
     9568 LOADK                            R24 K43 [""]
     9569 FASTCALL1                        TOSTRING R23 ; [+3]
     9570 MOVE                             R28 R23
     9571 GETIMPORT                        R27 K4 [tostring]
     9573 CALL                             R27 1 1
     9574 MOVE                             R25 R27
     9575 LOADK                            R26 K43 [""]
     9576 CONCAT                           R22 R24 R26
     9577 SETTABLEKS                       R22 R21 K424 ["role"]
     9579 CALL                             R19 2 1
     9580 SETTABLEKS                       R19 R18 K22 ["translation"]
     9582 GETTABLEKS                       R19 R2 K14 ["userId"]
     9584 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9586 MOVE                             R19 R0
     9587 GETTABLEKS                       R20 R2 K14 ["userId"]
     9589 CALL                             R19 1 1
     9590 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9592 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
     9593 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9595 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9597 ORK                              R19 R20 K18 [0]
     9598 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9600 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9602 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9604 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9606 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9608 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9610 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9612 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
     9614 RETURN                           R18 1
     9615 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9617 JUMPIFNOTEQKN                    R18 K429 [89] ; [+151]
     9619 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9620 GETTABLEKS                       R19 R2 K19 ["id"]
     9622 SETTABLEKS                       R19 R18 K19 ["id"]
     9624 LOADK                            R19 K174 [{"gravity"}]
     9625 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9627 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9628 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9630 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9632 GETIMPORT                        R21 K34 [pcall]
     9634 NEWCLOSURE                       R22 P6
     9635 CAPTURE                          VAL R20
     9636 CAPTURE                          VAL R3
     9637 CALL                             R21 1 2
     9638 JUMPIFNOT                        R21 ; [+2]
     9639 MOVE                             R19 R22
     9640 JUMP                             ; [+1]
     9641 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9642 SETTABLEKS                       R19 R18 K21 ["date"]
     9644 MOVE                             R19 R12
     9645 LOADK                            R20 K175 ["Gravity"]
     9646 DUPTABLE                         R21 K433 [{"groupRole", "groupName", "role"}]
     9647 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9649 JUMPIFNOT                        R24 ; [+5]
     9650 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9652 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
     9654 JUMPIF                           R23 ; [+1]
     9655 LOADK                            R23 K43 [""]
     9656 LOADK                            R24 K43 [""]
     9657 FASTCALL1                        TOSTRING R23 ; [+3]
     9658 MOVE                             R28 R23
     9659 GETIMPORT                        R27 K4 [tostring]
     9661 CALL                             R27 1 1
     9662 MOVE                             R25 R27
     9663 LOADK                            R26 K43 [""]
     9664 CONCAT                           R22 R24 R26
     9665 SETTABLEKS                       R22 R21 K432 ["groupRole"]
     9667 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9669 JUMPIFNOT                        R24 ; [+5]
     9670 GETTABLEKS                       R24 R2 K41 ["metaData"]
     9672 GETTABLEKS                       R23 R24 K340 ["GroupName"]
     9674 JUMPIF                           R23 ; [+1]
     9675 LOADK                            R23 K43 [""]
     9676 LOADK                            R24 K43 [""]
     9677 FASTCALL1                        TOSTRING R23 ; [+3]
     9678 MOVE                             R28 R23
     9679 GETIMPORT                        R27 K4 [tostring]
     9681 CALL                             R27 1 1
     9682 MOVE                             R25 R27
     9683 LOADK                            R26 K43 [""]
     9684 CONCAT                           R22 R24 R26
     9685 SETTABLEKS                       R22 R21 K338 ["groupName"]
     9687 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9689 JUMPIFNOT                        R25 ; [+5]
     9690 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9692 GETTABLEKS                       R24 R25 K42 ["Action"]
     9694 JUMPIF                           R24 ; [+1]
     9695 LOADK                            R24 K43 [""]
     9696 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9698 MOVE                             R23 R12
     9699 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9700 CALL                             R23 1 1
     9701 JUMPIF                           R23 ; [+3]
     9702 MOVE                             R23 R12
     9703 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9704 CALL                             R23 1 1
     9705 LOADK                            R24 K43 [""]
     9706 FASTCALL1                        TOSTRING R23 ; [+3]
     9707 MOVE                             R28 R23
     9708 GETIMPORT                        R27 K4 [tostring]
     9710 CALL                             R27 1 1
     9711 MOVE                             R25 R27
     9712 LOADK                            R26 K43 [""]
     9713 CONCAT                           R22 R24 R26
     9714 SETTABLEKS                       R22 R21 K424 ["role"]
     9716 CALL                             R19 2 1
     9717 SETTABLEKS                       R19 R18 K22 ["translation"]
     9719 GETTABLEKS                       R19 R2 K14 ["userId"]
     9721 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9723 MOVE                             R19 R0
     9724 GETTABLEKS                       R20 R2 K14 ["userId"]
     9726 CALL                             R19 1 1
     9727 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9729 LOADK                            R19 K85 ["animation"]
     9730 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9732 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9734 ORK                              R19 R20 K18 [0]
     9735 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9737 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9739 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9741 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9743 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9745 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9747 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9749 LOADK                            R20 K43 [""]
     9750 GETUPVAL                         R26 1
     9751 FASTCALL1                        TOSTRING R26 ; [+2]
     9752 GETIMPORT                        R25 K4 [tostring]
     9754 CALL                             R25 1 1
     9755 MOVE                             R21 R25
     9756 LOADK                            R22 K16 ["groups/"]
     9757 GETTABLEKS                       R26 R2 K8 ["resourceId"]
     9759 FASTCALL1                        TOSTRING R26 ; [+2]
     9760 GETIMPORT                        R25 K4 [tostring]
     9762 CALL                             R25 1 1
     9763 MOVE                             R23 R25
     9764 LOADK                            R24 K43 [""]
     9765 CONCAT                           R19 R20 R24
     9766 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
     9768 RETURN                           R18 1
     9769 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9771 JUMPIFNOTEQKN                    R18 K435 [90] ; [+138]
     9773 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9774 GETTABLEKS                       R19 R2 K19 ["id"]
     9776 SETTABLEKS                       R19 R18 K19 ["id"]
     9778 LOADK                            R19 K180 [{"jumpHeight"}]
     9779 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9781 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9782 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9784 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9786 GETIMPORT                        R21 K34 [pcall]
     9788 NEWCLOSURE                       R22 P6
     9789 CAPTURE                          VAL R20
     9790 CAPTURE                          VAL R3
     9791 CALL                             R21 1 2
     9792 JUMPIFNOT                        R21 ; [+2]
     9793 MOVE                             R19 R22
     9794 JUMP                             ; [+1]
     9795 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9796 SETTABLEKS                       R19 R18 K21 ["date"]
     9798 MOVE                             R19 R12
     9799 LOADK                            R20 K181 ["JumpHeight"]
     9800 DUPTABLE                         R21 K440 [{"userName", "oldRole", "newRole"}]
     9801 MOVE                             R23 R0
     9802 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9804 CALL                             R23 1 1
     9805 LOADK                            R24 K43 [""]
     9806 FASTCALL1                        TOSTRING R23 ; [+3]
     9807 MOVE                             R28 R23
     9808 GETIMPORT                        R27 K4 [tostring]
     9810 CALL                             R27 1 1
     9811 MOVE                             R25 R27
     9812 LOADK                            R26 K43 [""]
     9813 CONCAT                           R22 R24 R26
     9814 SETTABLEKS                       R22 R21 K332 ["userName"]
     9816 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9818 JUMPIFNOT                        R25 ; [+5]
     9819 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9821 GETTABLEKS                       R24 R25 K42 ["Action"]
     9823 JUMPIF                           R24 ; [+1]
     9824 LOADK                            R24 K43 [""]
     9825 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9827 MOVE                             R23 R12
     9828 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9829 CALL                             R23 1 1
     9830 JUMPIF                           R23 ; [+3]
     9831 MOVE                             R23 R12
     9832 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9833 CALL                             R23 1 1
     9834 LOADK                            R24 K43 [""]
     9835 FASTCALL1                        TOSTRING R23 ; [+3]
     9836 MOVE                             R28 R23
     9837 GETIMPORT                        R27 K4 [tostring]
     9839 CALL                             R27 1 1
     9840 MOVE                             R25 R27
     9841 LOADK                            R26 K43 [""]
     9842 CONCAT                           R22 R24 R26
     9843 SETTABLEKS                       R22 R21 K438 ["oldRole"]
     9845 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9847 JUMPIFNOT                        R25 ; [+5]
     9848 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9850 GETTABLEKS                       R24 R25 K42 ["Action"]
     9852 JUMPIF                           R24 ; [+1]
     9853 LOADK                            R24 K43 [""]
     9854 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9856 MOVE                             R23 R12
     9857 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
     9858 CALL                             R23 1 1
     9859 JUMPIF                           R23 ; [+3]
     9860 MOVE                             R23 R12
     9861 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
     9862 CALL                             R23 1 1
     9863 LOADK                            R24 K43 [""]
     9864 FASTCALL1                        TOSTRING R23 ; [+3]
     9865 MOVE                             R28 R23
     9866 GETIMPORT                        R27 K4 [tostring]
     9868 CALL                             R27 1 1
     9869 MOVE                             R25 R27
     9870 LOADK                            R26 K43 [""]
     9871 CONCAT                           R22 R24 R26
     9872 SETTABLEKS                       R22 R21 K439 ["newRole"]
     9874 CALL                             R19 2 1
     9875 SETTABLEKS                       R19 R18 K22 ["translation"]
     9877 GETTABLEKS                       R19 R2 K14 ["userId"]
     9879 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9881 MOVE                             R19 R0
     9882 GETTABLEKS                       R20 R2 K14 ["userId"]
     9884 CALL                             R19 1 1
     9885 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9887 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
     9888 SETTABLEKS                       R19 R18 K25 ["iconType"]
     9890 GETTABLEKS                       R20 R2 K8 ["resourceId"]
     9892 ORK                              R19 R20 K18 [0]
     9893 SETTABLEKS                       R19 R18 K26 ["iconId"]
     9895 GETTABLEKS                       R19 R2 K2 ["universeId"]
     9897 SETTABLEKS                       R19 R18 K2 ["universeId"]
     9899 GETTABLEKS                       R19 R2 K27 ["headerText"]
     9901 SETTABLEKS                       R19 R18 K27 ["headerText"]
     9903 GETTABLEKS                       R19 R2 K28 ["footerText"]
     9905 SETTABLEKS                       R19 R18 K28 ["footerText"]
     9907 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
     9909 RETURN                           R18 1
     9910 GETTABLEKS                       R18 R2 K17 ["eventType"]
     9912 JUMPIFNOTEQKN                    R18 K441 [91] ; [+109]
     9914 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
     9915 GETTABLEKS                       R19 R2 K19 ["id"]
     9917 SETTABLEKS                       R19 R18 K19 ["id"]
     9919 LOADK                            R19 K186 [{"jumpPower"}]
     9920 SETTABLEKS                       R19 R18 K17 ["eventType"]
     9922 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
     9923 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
     9925 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
     9927 GETIMPORT                        R21 K34 [pcall]
     9929 NEWCLOSURE                       R22 P6
     9930 CAPTURE                          VAL R20
     9931 CAPTURE                          VAL R3
     9932 CALL                             R21 1 2
     9933 JUMPIFNOT                        R21 ; [+2]
     9934 MOVE                             R19 R22
     9935 JUMP                             ; [+1]
     9936 LOADK                            R19 K35 ["🤷🏻‍♀️"]
     9937 SETTABLEKS                       R19 R18 K21 ["date"]
     9939 MOVE                             R19 R12
     9940 LOADK                            R20 K187 ["JumpPower"]
     9941 DUPTABLE                         R21 K425 [{"userName", "role"}]
     9942 MOVE                             R23 R0
     9943 GETTABLEKS                       R24 R2 K8 ["resourceId"]
     9945 CALL                             R23 1 1
     9946 LOADK                            R24 K43 [""]
     9947 FASTCALL1                        TOSTRING R23 ; [+3]
     9948 MOVE                             R28 R23
     9949 GETIMPORT                        R27 K4 [tostring]
     9951 CALL                             R27 1 1
     9952 MOVE                             R25 R27
     9953 LOADK                            R26 K43 [""]
     9954 CONCAT                           R22 R24 R26
     9955 SETTABLEKS                       R22 R21 K332 ["userName"]
     9957 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9959 JUMPIFNOT                        R25 ; [+5]
     9960 GETTABLEKS                       R25 R2 K41 ["metaData"]
     9962 GETTABLEKS                       R24 R25 K42 ["Action"]
     9964 JUMPIF                           R24 ; [+1]
     9965 LOADK                            R24 K43 [""]
     9966 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
     9968 MOVE                             R23 R12
     9969 LOADK                            R24 K188 [31]
     9970 CALL                             R23 1 1
     9971 JUMPIF                           R23 ; [+3]
     9972 MOVE                             R23 R12
     9973 LOADK                            R24 K189 ["WorldSettingsWalkSpeed"]
     9974 CALL                             R23 1 1
     9975 LOADK                            R24 K43 [""]
     9976 FASTCALL1                        TOSTRING R23 ; [+3]
     9977 MOVE                             R28 R23
     9978 GETIMPORT                        R27 K4 [tostring]
     9980 CALL                             R27 1 1
     9981 MOVE                             R25 R27
     9982 LOADK                            R26 K43 [""]
     9983 CONCAT                           R22 R24 R26
     9984 SETTABLEKS                       R22 R21 K424 ["role"]
     9986 CALL                             R19 2 1
     9987 SETTABLEKS                       R19 R18 K22 ["translation"]
     9989 GETTABLEKS                       R19 R2 K14 ["userId"]
     9991 SETTABLEKS                       R19 R18 K23 ["actorId"]
     9993 MOVE                             R19 R0
     9994 GETTABLEKS                       R20 R2 K14 ["userId"]
     9996 CALL                             R19 1 1
     9997 SETTABLEKS                       R19 R18 K24 ["actorName"]
     9999 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    10000 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10002 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10004 ORK                              R19 R20 K18 [0]
    10005 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10007 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10009 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10011 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10013 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10015 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10017 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10019 SETTABLEKS                       R10 R18 K233 ["viewOnRobloxLink"]
    10021 RETURN                           R18 1
    10022 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10024 JUMPIFNOTEQKN                    R18 K446 [92] ; [+180]
    10026 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10027 GETTABLEKS                       R19 R2 K19 ["id"]
    10029 SETTABLEKS                       R19 R18 K19 ["id"]
    10031 LOADK                            R19 K191 ["walkSpeed"]
    10032 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10034 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10035 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10037 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10039 GETIMPORT                        R21 K34 [pcall]
    10041 NEWCLOSURE                       R22 P6
    10042 CAPTURE                          VAL R20
    10043 CAPTURE                          VAL R3
    10044 CALL                             R21 1 2
    10045 JUMPIFNOT                        R21 ; [+2]
    10046 MOVE                             R19 R22
    10047 JUMP                             ; [+1]
    10048 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10049 SETTABLEKS                       R19 R18 K21 ["date"]
    10051 MOVE                             R19 R12
    10052 LOADK                            R20 K192 [{"walkSpeed"}]
    10053 DUPTABLE                         R21 K449 [{"groupRole", "groupName", "oldRole", "newRole"}]
    10054 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10056 JUMPIFNOT                        R24 ; [+5]
    10057 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10059 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
    10061 JUMPIF                           R23 ; [+1]
    10062 LOADK                            R23 K43 [""]
    10063 LOADK                            R24 K43 [""]
    10064 FASTCALL1                        TOSTRING R23 ; [+3]
    10065 MOVE                             R28 R23
    10066 GETIMPORT                        R27 K4 [tostring]
    10068 CALL                             R27 1 1
    10069 MOVE                             R25 R27
    10070 LOADK                            R26 K43 [""]
    10071 CONCAT                           R22 R24 R26
    10072 SETTABLEKS                       R22 R21 K432 ["groupRole"]
    10074 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10076 JUMPIFNOT                        R24 ; [+5]
    10077 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10079 GETTABLEKS                       R23 R24 K340 ["GroupName"]
    10081 JUMPIF                           R23 ; [+1]
    10082 LOADK                            R23 K43 [""]
    10083 LOADK                            R24 K43 [""]
    10084 FASTCALL1                        TOSTRING R23 ; [+3]
    10085 MOVE                             R28 R23
    10086 GETIMPORT                        R27 K4 [tostring]
    10088 CALL                             R27 1 1
    10089 MOVE                             R25 R27
    10090 LOADK                            R26 K43 [""]
    10091 CONCAT                           R22 R24 R26
    10092 SETTABLEKS                       R22 R21 K338 ["groupName"]
    10094 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10096 JUMPIFNOT                        R25 ; [+5]
    10097 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10099 GETTABLEKS                       R24 R25 K42 ["Action"]
    10101 JUMPIF                           R24 ; [+1]
    10102 LOADK                            R24 K43 [""]
    10103 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10105 MOVE                             R23 R12
    10106 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10107 CALL                             R23 1 1
    10108 JUMPIF                           R23 ; [+3]
    10109 MOVE                             R23 R12
    10110 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10111 CALL                             R23 1 1
    10112 LOADK                            R24 K43 [""]
    10113 FASTCALL1                        TOSTRING R23 ; [+3]
    10114 MOVE                             R28 R23
    10115 GETIMPORT                        R27 K4 [tostring]
    10117 CALL                             R27 1 1
    10118 MOVE                             R25 R27
    10119 LOADK                            R26 K43 [""]
    10120 CONCAT                           R22 R24 R26
    10121 SETTABLEKS                       R22 R21 K438 ["oldRole"]
    10123 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10125 JUMPIFNOT                        R25 ; [+5]
    10126 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10128 GETTABLEKS                       R24 R25 K42 ["Action"]
    10130 JUMPIF                           R24 ; [+1]
    10131 LOADK                            R24 K43 [""]
    10132 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10134 MOVE                             R23 R12
    10135 LOADK                            R24 K171 ["WorldSettingsWorkSpaceGravity"]
    10136 CALL                             R23 1 1
    10137 JUMPIF                           R23 ; [+3]
    10138 MOVE                             R23 R12
    10139 LOADK                            R24 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    10140 CALL                             R23 1 1
    10141 LOADK                            R24 K43 [""]
    10142 FASTCALL1                        TOSTRING R23 ; [+3]
    10143 MOVE                             R28 R23
    10144 GETIMPORT                        R27 K4 [tostring]
    10146 CALL                             R27 1 1
    10147 MOVE                             R25 R27
    10148 LOADK                            R26 K43 [""]
    10149 CONCAT                           R22 R24 R26
    10150 SETTABLEKS                       R22 R21 K439 ["newRole"]
    10152 CALL                             R19 2 1
    10153 SETTABLEKS                       R19 R18 K22 ["translation"]
    10155 GETTABLEKS                       R19 R2 K14 ["userId"]
    10157 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10159 MOVE                             R19 R0
    10160 GETTABLEKS                       R20 R2 K14 ["userId"]
    10162 CALL                             R19 1 1
    10163 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10165 LOADK                            R19 K85 ["animation"]
    10166 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10168 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10170 ORK                              R19 R20 K18 [0]
    10171 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10173 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10175 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10177 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10179 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10181 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10183 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10185 LOADK                            R20 K43 [""]
    10186 GETUPVAL                         R26 1
    10187 FASTCALL1                        TOSTRING R26 ; [+2]
    10188 GETIMPORT                        R25 K4 [tostring]
    10190 CALL                             R25 1 1
    10191 MOVE                             R21 R25
    10192 LOADK                            R22 K16 ["groups/"]
    10193 GETTABLEKS                       R26 R2 K8 ["resourceId"]
    10195 FASTCALL1                        TOSTRING R26 ; [+2]
    10196 GETIMPORT                        R25 K4 [tostring]
    10198 CALL                             R25 1 1
    10199 MOVE                             R23 R25
    10200 LOADK                            R24 K43 [""]
    10201 CONCAT                           R19 R20 R24
    10202 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10204 RETURN                           R18 1
    10205 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10207 JUMPIFNOTEQKN                    R18 K450 [93] ; [+151]
    10209 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10210 GETTABLEKS                       R19 R2 K19 ["id"]
    10212 SETTABLEKS                       R19 R18 K19 ["id"]
    10214 LOADK                            R19 K195 ["WorldSettingsMaxSlopeAngle"]
    10215 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10217 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10218 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10220 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10222 GETIMPORT                        R21 K34 [pcall]
    10224 NEWCLOSURE                       R22 P6
    10225 CAPTURE                          VAL R20
    10226 CAPTURE                          VAL R3
    10227 CALL                             R21 1 2
    10228 JUMPIFNOT                        R21 ; [+2]
    10229 MOVE                             R19 R22
    10230 JUMP                             ; [+1]
    10231 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10232 SETTABLEKS                       R19 R18 K21 ["date"]
    10234 MOVE                             R19 R12
    10235 LOADK                            R20 K196 ["Description.WorldSettingsMaxSlopeAngle"]
    10236 DUPTABLE                         R21 K433 [{"groupRole", "groupName", "role"}]
    10237 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10239 JUMPIFNOT                        R24 ; [+5]
    10240 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10242 GETTABLEKS                       R23 R24 K434 ["RolesetName"]
    10244 JUMPIF                           R23 ; [+1]
    10245 LOADK                            R23 K43 [""]
    10246 LOADK                            R24 K43 [""]
    10247 FASTCALL1                        TOSTRING R23 ; [+3]
    10248 MOVE                             R28 R23
    10249 GETIMPORT                        R27 K4 [tostring]
    10251 CALL                             R27 1 1
    10252 MOVE                             R25 R27
    10253 LOADK                            R26 K43 [""]
    10254 CONCAT                           R22 R24 R26
    10255 SETTABLEKS                       R22 R21 K432 ["groupRole"]
    10257 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10259 JUMPIFNOT                        R24 ; [+5]
    10260 GETTABLEKS                       R24 R2 K41 ["metaData"]
    10262 GETTABLEKS                       R23 R24 K340 ["GroupName"]
    10264 JUMPIF                           R23 ; [+1]
    10265 LOADK                            R23 K43 [""]
    10266 LOADK                            R24 K43 [""]
    10267 FASTCALL1                        TOSTRING R23 ; [+3]
    10268 MOVE                             R28 R23
    10269 GETIMPORT                        R27 K4 [tostring]
    10271 CALL                             R27 1 1
    10272 MOVE                             R25 R27
    10273 LOADK                            R26 K43 [""]
    10274 CONCAT                           R22 R24 R26
    10275 SETTABLEKS                       R22 R21 K338 ["groupName"]
    10277 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10279 JUMPIFNOT                        R25 ; [+5]
    10280 GETTABLEKS                       R25 R2 K41 ["metaData"]
    10282 GETTABLEKS                       R24 R25 K42 ["Action"]
    10284 JUMPIF                           R24 ; [+1]
    10285 LOADK                            R24 K43 [""]
    10286 JUMPIFNOTEQKS                    R24 K426 ["Edit"] ; [+5]
    10288 MOVE                             R23 R12
    10289 LOADK                            R24 K188 [31]
    10290 CALL                             R23 1 1
    10291 JUMPIF                           R23 ; [+3]
    10292 MOVE                             R23 R12
    10293 LOADK                            R24 K189 ["WorldSettingsWalkSpeed"]
    10294 CALL                             R23 1 1
    10295 LOADK                            R24 K43 [""]
    10296 FASTCALL1                        TOSTRING R23 ; [+3]
    10297 MOVE                             R28 R23
    10298 GETIMPORT                        R27 K4 [tostring]
    10300 CALL                             R27 1 1
    10301 MOVE                             R25 R27
    10302 LOADK                            R26 K43 [""]
    10303 CONCAT                           R22 R24 R26
    10304 SETTABLEKS                       R22 R21 K424 ["role"]
    10306 CALL                             R19 2 1
    10307 SETTABLEKS                       R19 R18 K22 ["translation"]
    10309 GETTABLEKS                       R19 R2 K14 ["userId"]
    10311 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10313 MOVE                             R19 R0
    10314 GETTABLEKS                       R20 R2 K14 ["userId"]
    10316 CALL                             R19 1 1
    10317 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10319 LOADK                            R19 K85 ["animation"]
    10320 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10322 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10324 ORK                              R19 R20 K18 [0]
    10325 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10327 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10329 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10331 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10333 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10335 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10337 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10339 LOADK                            R20 K43 [""]
    10340 GETUPVAL                         R26 1
    10341 FASTCALL1                        TOSTRING R26 ; [+2]
    10342 GETIMPORT                        R25 K4 [tostring]
    10344 CALL                             R25 1 1
    10345 MOVE                             R21 R25
    10346 LOADK                            R22 K16 ["groups/"]
    10347 GETTABLEKS                       R26 R2 K8 ["resourceId"]
    10349 FASTCALL1                        TOSTRING R26 ; [+2]
    10350 GETIMPORT                        R25 K4 [tostring]
    10352 CALL                             R25 1 1
    10353 MOVE                             R23 R25
    10354 LOADK                            R24 K43 [""]
    10355 CONCAT                           R19 R20 R24
    10356 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10358 RETURN                           R18 1
    10359 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10361 JUMPIFNOTEQKN                    R18 K453 [94] ; [+121]
    10363 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    10364 GETTABLEKS                       R19 R2 K19 ["id"]
    10366 SETTABLEKS                       R19 R18 K19 ["id"]
    10368 LOADK                            R19 K198 [{"maxSlopeAngle"}]
    10369 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10371 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    10372 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10374 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10376 GETIMPORT                        R21 K34 [pcall]
    10378 NEWCLOSURE                       R22 P6
    10379 CAPTURE                          VAL R20
    10380 CAPTURE                          VAL R3
    10381 CALL                             R21 1 2
    10382 JUMPIFNOT                        R21 ; [+2]
    10383 MOVE                             R19 R22
    10384 JUMP                             ; [+1]
    10385 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10386 SETTABLEKS                       R19 R18 K21 ["date"]
    10388 MOVE                             R19 R12
    10389 LOADK                            R20 K199 ["MaxSlopeAngle"]
    10390 DUPTABLE                         R21 K456 [{"userName", "action"}]
    10391 MOVE                             R23 R0
    10392 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    10394 CALL                             R23 1 1
    10395 LOADK                            R24 K43 [""]
    10396 FASTCALL1                        TOSTRING R23 ; [+3]
    10397 MOVE                             R28 R23
    10398 GETIMPORT                        R27 K4 [tostring]
    10400 CALL                             R27 1 1
    10401 MOVE                             R25 R27
    10402 LOADK                            R26 K43 [""]
    10403 CONCAT                           R22 R24 R26
    10404 SETTABLEKS                       R22 R21 K332 ["userName"]
    10406 GETTABLEKS                       R26 R2 K41 ["metaData"]
    10408 JUMPIFNOT                        R26 ; [+5]
    10409 GETTABLEKS                       R26 R2 K41 ["metaData"]
    10411 GETTABLEKS                       R25 R26 K42 ["Action"]
    10413 JUMPIF                           R25 ; [+1]
    10414 LOADK                            R25 K43 [""]
    10415 GETIMPORT                        R26 K46 [string.lower]
    10417 FASTCALL1                        TOSTRING R25 ; [+3]
    10418 MOVE                             R28 R25
    10419 GETIMPORT                        R27 K4 [tostring]
    10421 CALL                             R27 1 1
    10422 CALL                             R26 1 1
    10423 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    10425 LOADB                            R24 1
    10426 JUMP                             ; [+1]
    10427 LOADB                            R24 0
    10428 JUMPIFNOT                        R24 ; [+4]
    10429 MOVE                             R23 R12
    10430 LOADK                            R24 K201 ["SentUpdate"]
    10431 CALL                             R23 1 1
    10432 JUMPIF                           R23 ; [+3]
    10433 MOVE                             R23 R12
    10434 LOADK                            R24 K202 ["Description.SentUpdate"]
    10435 CALL                             R23 1 1
    10436 LOADK                            R24 K43 [""]
    10437 FASTCALL1                        TOSTRING R23 ; [+3]
    10438 MOVE                             R28 R23
    10439 GETIMPORT                        R27 K4 [tostring]
    10441 CALL                             R27 1 1
    10442 MOVE                             R25 R27
    10443 LOADK                            R26 K43 [""]
    10444 CONCAT                           R22 R24 R26
    10445 SETTABLEKS                       R22 R21 K138 ["action"]
    10447 CALL                             R19 2 1
    10448 SETTABLEKS                       R19 R18 K22 ["translation"]
    10450 GETTABLEKS                       R19 R2 K14 ["userId"]
    10452 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10454 MOVE                             R19 R0
    10455 GETTABLEKS                       R20 R2 K14 ["userId"]
    10457 CALL                             R19 1 1
    10458 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10460 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    10461 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10463 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    10465 ORK                              R19 R20 K18 [0]
    10466 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10468 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10470 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10472 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10474 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10476 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10478 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10480 SETTABLEKS                       R9 R18 K233 ["viewOnRobloxLink"]
    10482 RETURN                           R18 1
    10483 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10485 JUMPIFNOTEQKN                    R18 K459 [95] ; [+100]
    10487 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10488 GETTABLEKS                       R19 R2 K19 ["id"]
    10490 SETTABLEKS                       R19 R18 K19 ["id"]
    10492 LOADK                            R19 K204 [{"update"}]
    10493 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10495 LOADK                            R19 K205 ["Update"]
    10496 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10498 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10500 GETIMPORT                        R21 K34 [pcall]
    10502 NEWCLOSURE                       R22 P6
    10503 CAPTURE                          VAL R20
    10504 CAPTURE                          VAL R3
    10505 CALL                             R21 1 2
    10506 JUMPIFNOT                        R21 ; [+2]
    10507 MOVE                             R19 R22
    10508 JUMP                             ; [+1]
    10509 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10510 SETTABLEKS                       R19 R18 K21 ["date"]
    10512 MOVE                             R19 R12
    10513 LOADK                            R20 K206 ["/updates"]
    10514 CALL                             R19 1 1
    10515 SETTABLEKS                       R19 R18 K22 ["translation"]
    10517 GETTABLEKS                       R19 R2 K14 ["userId"]
    10519 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10521 MOVE                             R19 R0
    10522 GETTABLEKS                       R20 R2 K14 ["userId"]
    10524 CALL                             R19 1 1
    10525 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10527 LOADK                            R19 K205 ["Update"]
    10528 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10530 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10532 ORK                              R19 R20 K18 [0]
    10533 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10535 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10537 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10539 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10541 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10543 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10545 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10547 LOADK                            R20 K43 [""]
    10548 FASTCALL1                        TOSTRING R4 ; [+3]
    10549 MOVE                             R26 R4
    10550 GETIMPORT                        R25 K4 [tostring]
    10552 CALL                             R25 1 1
    10553 MOVE                             R21 R25
    10554 LOADK                            R22 K5 ["/places/"]
    10555 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10557 FASTCALL1                        TOSTRING R26 ; [+2]
    10558 GETIMPORT                        R25 K4 [tostring]
    10560 CALL                             R25 1 1
    10561 MOVE                             R23 R25
    10562 LOADK                            R24 K207 [34]
    10563 CONCAT                           R19 R20 R24
    10564 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10566 LOADK                            R20 K43 [""]
    10567 GETUPVAL                         R26 1
    10568 FASTCALL1                        TOSTRING R26 ; [+2]
    10569 GETIMPORT                        R25 K4 [tostring]
    10571 CALL                             R25 1 1
    10572 MOVE                             R21 R25
    10573 LOADK                            R22 K208 ["SupportedLanguages"]
    10574 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10576 FASTCALL1                        TOSTRING R26 ; [+2]
    10577 GETIMPORT                        R25 K4 [tostring]
    10579 CALL                             R25 1 1
    10580 MOVE                             R23 R25
    10581 LOADK                            R24 K43 [""]
    10582 CONCAT                           R19 R20 R24
    10583 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10585 RETURN                           R18 1
    10586 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10588 JUMPIFNOTEQKN                    R18 K465 [96] ; [+100]
    10590 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10591 GETTABLEKS                       R19 R2 K19 ["id"]
    10593 SETTABLEKS                       R19 R18 K19 ["id"]
    10595 LOADK                            R19 K210 ["language"]
    10596 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10598 LOADK                            R19 K205 ["Update"]
    10599 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10601 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10603 GETIMPORT                        R21 K34 [pcall]
    10605 NEWCLOSURE                       R22 P6
    10606 CAPTURE                          VAL R20
    10607 CAPTURE                          VAL R3
    10608 CALL                             R21 1 2
    10609 JUMPIFNOT                        R21 ; [+2]
    10610 MOVE                             R19 R22
    10611 JUMP                             ; [+1]
    10612 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10613 SETTABLEKS                       R19 R18 K21 ["date"]
    10615 MOVE                             R19 R12
    10616 LOADK                            R20 K211 [{"language", "action"}]
    10617 CALL                             R19 1 1
    10618 SETTABLEKS                       R19 R18 K22 ["translation"]
    10620 GETTABLEKS                       R19 R2 K14 ["userId"]
    10622 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10624 MOVE                             R19 R0
    10625 GETTABLEKS                       R20 R2 K14 ["userId"]
    10627 CALL                             R19 1 1
    10628 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10630 LOADK                            R19 K205 ["Update"]
    10631 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10633 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10635 ORK                              R19 R20 K18 [0]
    10636 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10638 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10640 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10642 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10644 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10646 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10648 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10650 LOADK                            R20 K43 [""]
    10651 FASTCALL1                        TOSTRING R4 ; [+3]
    10652 MOVE                             R26 R4
    10653 GETIMPORT                        R25 K4 [tostring]
    10655 CALL                             R25 1 1
    10656 MOVE                             R21 R25
    10657 LOADK                            R22 K5 ["/places/"]
    10658 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10660 FASTCALL1                        TOSTRING R26 ; [+2]
    10661 GETIMPORT                        R25 K4 [tostring]
    10663 CALL                             R25 1 1
    10664 MOVE                             R23 R25
    10665 LOADK                            R24 K207 [34]
    10666 CONCAT                           R19 R20 R24
    10667 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10669 LOADK                            R20 K43 [""]
    10670 GETUPVAL                         R26 1
    10671 FASTCALL1                        TOSTRING R26 ; [+2]
    10672 GETIMPORT                        R25 K4 [tostring]
    10674 CALL                             R25 1 1
    10675 MOVE                             R21 R25
    10676 LOADK                            R22 K208 ["SupportedLanguages"]
    10677 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10679 FASTCALL1                        TOSTRING R26 ; [+2]
    10680 GETIMPORT                        R25 K4 [tostring]
    10682 CALL                             R25 1 1
    10683 MOVE                             R23 R25
    10684 LOADK                            R24 K43 [""]
    10685 CONCAT                           R19 R20 R24
    10686 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10688 RETURN                           R18 1
    10689 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10691 JUMPIFNOTEQKN                    R18 K468 [97] ; [+100]
    10693 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10694 GETTABLEKS                       R19 R2 K19 ["id"]
    10696 SETTABLEKS                       R19 R18 K19 ["id"]
    10698 LOADK                            R19 K213 ["Description.ActionAdded"]
    10699 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10701 LOADK                            R19 K205 ["Update"]
    10702 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10704 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10706 GETIMPORT                        R21 K34 [pcall]
    10708 NEWCLOSURE                       R22 P6
    10709 CAPTURE                          VAL R20
    10710 CAPTURE                          VAL R3
    10711 CALL                             R21 1 2
    10712 JUMPIFNOT                        R21 ; [+2]
    10713 MOVE                             R19 R22
    10714 JUMP                             ; [+1]
    10715 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10716 SETTABLEKS                       R19 R18 K21 ["date"]
    10718 MOVE                             R19 R12
    10719 LOADK                            R20 K214 ["Description.ActionRemoved"]
    10720 CALL                             R19 1 1
    10721 SETTABLEKS                       R19 R18 K22 ["translation"]
    10723 GETTABLEKS                       R19 R2 K14 ["userId"]
    10725 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10727 MOVE                             R19 R0
    10728 GETTABLEKS                       R20 R2 K14 ["userId"]
    10730 CALL                             R19 1 1
    10731 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10733 LOADK                            R19 K205 ["Update"]
    10734 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10736 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10738 ORK                              R19 R20 K18 [0]
    10739 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10741 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10743 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10745 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10747 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10749 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10751 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10753 LOADK                            R20 K43 [""]
    10754 FASTCALL1                        TOSTRING R4 ; [+3]
    10755 MOVE                             R26 R4
    10756 GETIMPORT                        R25 K4 [tostring]
    10758 CALL                             R25 1 1
    10759 MOVE                             R21 R25
    10760 LOADK                            R22 K5 ["/places/"]
    10761 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10763 FASTCALL1                        TOSTRING R26 ; [+2]
    10764 GETIMPORT                        R25 K4 [tostring]
    10766 CALL                             R25 1 1
    10767 MOVE                             R23 R25
    10768 LOADK                            R24 K207 [34]
    10769 CONCAT                           R19 R20 R24
    10770 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10772 LOADK                            R20 K43 [""]
    10773 GETUPVAL                         R26 1
    10774 FASTCALL1                        TOSTRING R26 ; [+2]
    10775 GETIMPORT                        R25 K4 [tostring]
    10777 CALL                             R25 1 1
    10778 MOVE                             R21 R25
    10779 LOADK                            R22 K208 ["SupportedLanguages"]
    10780 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10782 FASTCALL1                        TOSTRING R26 ; [+2]
    10783 GETIMPORT                        R25 K4 [tostring]
    10785 CALL                             R25 1 1
    10786 MOVE                             R23 R25
    10787 LOADK                            R24 K43 [""]
    10788 CONCAT                           R19 R20 R24
    10789 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10791 RETURN                           R18 1
    10792 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10794 JUMPIFNOTEQKN                    R18 K471 [98] ; [+100]
    10796 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10797 GETTABLEKS                       R19 R2 K19 ["id"]
    10799 SETTABLEKS                       R19 R18 K19 ["id"]
    10801 LOADK                            R19 K216 [35]
    10802 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10804 LOADK                            R19 K205 ["Update"]
    10805 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10807 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10809 GETIMPORT                        R21 K34 [pcall]
    10811 NEWCLOSURE                       R22 P6
    10812 CAPTURE                          VAL R20
    10813 CAPTURE                          VAL R3
    10814 CALL                             R21 1 2
    10815 JUMPIFNOT                        R21 ; [+2]
    10816 MOVE                             R19 R22
    10817 JUMP                             ; [+1]
    10818 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10819 SETTABLEKS                       R19 R18 K21 ["date"]
    10821 MOVE                             R19 R12
    10822 LOADK                            R20 K217 ["AutoTranslationExperienceInformation"]
    10823 CALL                             R19 1 1
    10824 SETTABLEKS                       R19 R18 K22 ["translation"]
    10826 GETTABLEKS                       R19 R2 K14 ["userId"]
    10828 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10830 MOVE                             R19 R0
    10831 GETTABLEKS                       R20 R2 K14 ["userId"]
    10833 CALL                             R19 1 1
    10834 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10836 LOADK                            R19 K205 ["Update"]
    10837 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10839 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10841 ORK                              R19 R20 K18 [0]
    10842 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10844 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10846 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10848 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10850 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10852 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10854 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10856 LOADK                            R20 K43 [""]
    10857 FASTCALL1                        TOSTRING R4 ; [+3]
    10858 MOVE                             R26 R4
    10859 GETIMPORT                        R25 K4 [tostring]
    10861 CALL                             R25 1 1
    10862 MOVE                             R21 R25
    10863 LOADK                            R22 K5 ["/places/"]
    10864 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10866 FASTCALL1                        TOSTRING R26 ; [+2]
    10867 GETIMPORT                        R25 K4 [tostring]
    10869 CALL                             R25 1 1
    10870 MOVE                             R23 R25
    10871 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    10872 CONCAT                           R19 R20 R24
    10873 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10875 LOADK                            R20 K43 [""]
    10876 GETUPVAL                         R26 1
    10877 FASTCALL1                        TOSTRING R26 ; [+2]
    10878 GETIMPORT                        R25 K4 [tostring]
    10880 CALL                             R25 1 1
    10881 MOVE                             R21 R25
    10882 LOADK                            R22 K208 ["SupportedLanguages"]
    10883 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10885 FASTCALL1                        TOSTRING R26 ; [+2]
    10886 GETIMPORT                        R25 K4 [tostring]
    10888 CALL                             R25 1 1
    10889 MOVE                             R23 R25
    10890 LOADK                            R24 K43 [""]
    10891 CONCAT                           R19 R20 R24
    10892 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10894 RETURN                           R18 1
    10895 GETTABLEKS                       R18 R2 K17 ["eventType"]
    10897 JUMPIFNOTEQKN                    R18 K475 [99] ; [+100]
    10899 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    10900 GETTABLEKS                       R19 R2 K19 ["id"]
    10902 SETTABLEKS                       R19 R18 K19 ["id"]
    10904 LOADK                            R19 K220 ["AutoTranslationExperienceStringsAndProducts"]
    10905 SETTABLEKS                       R19 R18 K17 ["eventType"]
    10907 LOADK                            R19 K205 ["Update"]
    10908 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    10910 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    10912 GETIMPORT                        R21 K34 [pcall]
    10914 NEWCLOSURE                       R22 P6
    10915 CAPTURE                          VAL R20
    10916 CAPTURE                          VAL R3
    10917 CALL                             R21 1 2
    10918 JUMPIFNOT                        R21 ; [+2]
    10919 MOVE                             R19 R22
    10920 JUMP                             ; [+1]
    10921 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    10922 SETTABLEKS                       R19 R18 K21 ["date"]
    10924 MOVE                             R19 R12
    10925 LOADK                            R20 K221 ["Description.AutoTranslationExperienceStringsAndProducts"]
    10926 CALL                             R19 1 1
    10927 SETTABLEKS                       R19 R18 K22 ["translation"]
    10929 GETTABLEKS                       R19 R2 K14 ["userId"]
    10931 SETTABLEKS                       R19 R18 K23 ["actorId"]
    10933 MOVE                             R19 R0
    10934 GETTABLEKS                       R20 R2 K14 ["userId"]
    10936 CALL                             R19 1 1
    10937 SETTABLEKS                       R19 R18 K24 ["actorName"]
    10939 LOADK                            R19 K205 ["Update"]
    10940 SETTABLEKS                       R19 R18 K25 ["iconType"]
    10942 GETTABLEKS                       R20 R2 K6 ["placeId"]
    10944 ORK                              R19 R20 K18 [0]
    10945 SETTABLEKS                       R19 R18 K26 ["iconId"]
    10947 GETTABLEKS                       R19 R2 K2 ["universeId"]
    10949 SETTABLEKS                       R19 R18 K2 ["universeId"]
    10951 GETTABLEKS                       R19 R2 K27 ["headerText"]
    10953 SETTABLEKS                       R19 R18 K27 ["headerText"]
    10955 GETTABLEKS                       R19 R2 K28 ["footerText"]
    10957 SETTABLEKS                       R19 R18 K28 ["footerText"]
    10959 LOADK                            R20 K43 [""]
    10960 FASTCALL1                        TOSTRING R4 ; [+3]
    10961 MOVE                             R26 R4
    10962 GETIMPORT                        R25 K4 [tostring]
    10964 CALL                             R25 1 1
    10965 MOVE                             R21 R25
    10966 LOADK                            R22 K5 ["/places/"]
    10967 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10969 FASTCALL1                        TOSTRING R26 ; [+2]
    10970 GETIMPORT                        R25 K4 [tostring]
    10972 CALL                             R25 1 1
    10973 MOVE                             R23 R25
    10974 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    10975 CONCAT                           R19 R20 R24
    10976 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    10978 LOADK                            R20 K43 [""]
    10979 GETUPVAL                         R26 1
    10980 FASTCALL1                        TOSTRING R26 ; [+2]
    10981 GETIMPORT                        R25 K4 [tostring]
    10983 CALL                             R25 1 1
    10984 MOVE                             R21 R25
    10985 LOADK                            R22 K208 ["SupportedLanguages"]
    10986 GETTABLEKS                       R26 R2 K6 ["placeId"]
    10988 FASTCALL1                        TOSTRING R26 ; [+2]
    10989 GETIMPORT                        R25 K4 [tostring]
    10991 CALL                             R25 1 1
    10992 MOVE                             R23 R25
    10993 LOADK                            R24 K43 [""]
    10994 CONCAT                           R19 R20 R24
    10995 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    10997 RETURN                           R18 1
    10998 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11000 JUMPIFNOTEQKN                    R18 K478 [100] ; [+124]
    11002 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11003 GETTABLEKS                       R19 R2 K19 ["id"]
    11005 SETTABLEKS                       R19 R18 K19 ["id"]
    11007 LOADK                            R19 K223 ["LocalizationSettingsAutomaticTextCapture"]
    11008 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11010 LOADK                            R19 K205 ["Update"]
    11011 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11013 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11015 GETIMPORT                        R21 K34 [pcall]
    11017 NEWCLOSURE                       R22 P6
    11018 CAPTURE                          VAL R20
    11019 CAPTURE                          VAL R3
    11020 CALL                             R21 1 2
    11021 JUMPIFNOT                        R21 ; [+2]
    11022 MOVE                             R19 R22
    11023 JUMP                             ; [+1]
    11024 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11025 SETTABLEKS                       R19 R18 K21 ["date"]
    11027 MOVE                             R19 R12
    11028 LOADK                            R20 K224 ["Description.LocalizationSettingsAutomaticTextCapture"]
    11029 DUPTABLE                         R21 K482 [{"gearTypes"}]
    11030 GETGLOBAL                        R23 K483 ["joinStrings"]
    11032 GETTABLEKS                       R25 R2 K41 ["metaData"]
    11034 JUMPIFNOT                        R25 ; [+5]
    11035 GETTABLEKS                       R25 R2 K41 ["metaData"]
    11037 GETTABLEKS                       R24 R25 K484 ["GearTypes"]
    11039 JUMPIF                           R24 ; [+1]
    11040 LOADK                            R24 K43 [""]
    11041 CALL                             R23 1 1
    11042 LOADK                            R24 K43 [""]
    11043 FASTCALL1                        TOSTRING R23 ; [+3]
    11044 MOVE                             R28 R23
    11045 GETIMPORT                        R27 K4 [tostring]
    11047 CALL                             R27 1 1
    11048 MOVE                             R25 R27
    11049 LOADK                            R26 K43 [""]
    11050 CONCAT                           R22 R24 R26
    11051 SETTABLEKS                       R22 R21 K481 ["gearTypes"]
    11053 CALL                             R19 2 1
    11054 SETTABLEKS                       R19 R18 K22 ["translation"]
    11056 GETTABLEKS                       R19 R2 K14 ["userId"]
    11058 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11060 MOVE                             R19 R0
    11061 GETTABLEKS                       R20 R2 K14 ["userId"]
    11063 CALL                             R19 1 1
    11064 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11066 LOADK                            R19 K205 ["Update"]
    11067 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11069 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11071 ORK                              R19 R20 K18 [0]
    11072 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11074 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11076 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11078 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11080 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11082 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11084 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11086 LOADK                            R20 K43 [""]
    11087 FASTCALL1                        TOSTRING R4 ; [+3]
    11088 MOVE                             R26 R4
    11089 GETIMPORT                        R25 K4 [tostring]
    11091 CALL                             R25 1 1
    11092 MOVE                             R21 R25
    11093 LOADK                            R22 K5 ["/places/"]
    11094 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11096 FASTCALL1                        TOSTRING R26 ; [+2]
    11097 GETIMPORT                        R25 K4 [tostring]
    11099 CALL                             R25 1 1
    11100 MOVE                             R23 R25
    11101 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11102 CONCAT                           R19 R20 R24
    11103 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11105 LOADK                            R20 K43 [""]
    11106 GETUPVAL                         R26 1
    11107 FASTCALL1                        TOSTRING R26 ; [+2]
    11108 GETIMPORT                        R25 K4 [tostring]
    11110 CALL                             R25 1 1
    11111 MOVE                             R21 R25
    11112 LOADK                            R22 K208 ["SupportedLanguages"]
    11113 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11115 FASTCALL1                        TOSTRING R26 ; [+2]
    11116 GETIMPORT                        R25 K4 [tostring]
    11118 CALL                             R25 1 1
    11119 MOVE                             R23 R25
    11120 LOADK                            R24 K43 [""]
    11121 CONCAT                           R19 R20 R24
    11122 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11124 RETURN                           R18 1
    11125 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11127 JUMPIFNOTEQKN                    R18 K485 [101] ; [+162]
    11129 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11130 GETTABLEKS                       R19 R2 K19 ["id"]
    11132 SETTABLEKS                       R19 R18 K19 ["id"]
    11134 LOADK                            R19 K230 [40]
    11135 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11137 LOADK                            R19 K205 ["Update"]
    11138 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11140 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11142 GETIMPORT                        R21 K34 [pcall]
    11144 NEWCLOSURE                       R22 P6
    11145 CAPTURE                          VAL R20
    11146 CAPTURE                          VAL R3
    11147 CALL                             R21 1 2
    11148 JUMPIFNOT                        R21 ; [+2]
    11149 MOVE                             R19 R22
    11150 JUMP                             ; [+1]
    11151 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11152 SETTABLEKS                       R19 R18 K21 ["date"]
    11154 MOVE                             R19 R12
    11155 LOADK                            R20 K231 ["AnalyticsReport"]
    11156 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    11157 GETTABLEKS                       R26 R2 K41 ["metaData"]
    11159 JUMPIFNOT                        R26 ; [+5]
    11160 GETTABLEKS                       R26 R2 K41 ["metaData"]
    11162 GETTABLEKS                       R25 R26 K42 ["Action"]
    11164 JUMPIF                           R25 ; [+1]
    11165 LOADK                            R25 K43 [""]
    11166 GETIMPORT                        R26 K46 [string.lower]
    11168 FASTCALL1                        TOSTRING R25 ; [+3]
    11169 MOVE                             R28 R25
    11170 GETIMPORT                        R27 K4 [tostring]
    11172 CALL                             R27 1 1
    11173 CALL                             R26 1 1
    11174 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    11176 LOADB                            R24 1
    11177 JUMP                             ; [+1]
    11178 LOADB                            R24 0
    11179 JUMPIFNOT                        R24 ; [+4]
    11180 MOVE                             R23 R12
    11181 LOADK                            R24 K140 ["Description.ActionEnabled"]
    11182 CALL                             R23 1 1
    11183 JUMPIF                           R23 ; [+3]
    11184 MOVE                             R23 R12
    11185 LOADK                            R24 K141 ["Description.ActionDisabled"]
    11186 CALL                             R23 1 1
    11187 LOADK                            R24 K43 [""]
    11188 FASTCALL1                        TOSTRING R23 ; [+3]
    11189 MOVE                             R28 R23
    11190 GETIMPORT                        R27 K4 [tostring]
    11192 CALL                             R27 1 1
    11193 MOVE                             R25 R27
    11194 LOADK                            R26 K43 [""]
    11195 CONCAT                           R22 R24 R26
    11196 SETTABLEKS                       R22 R21 K138 ["action"]
    11198 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11200 JUMPIFNOT                        R24 ; [+5]
    11201 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11203 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    11205 JUMPIF                           R23 ; [+1]
    11206 LOADK                            R23 K43 [""]
    11207 LOADK                            R24 K43 [""]
    11208 FASTCALL1                        TOSTRING R23 ; [+3]
    11209 MOVE                             R28 R23
    11210 GETIMPORT                        R27 K4 [tostring]
    11212 CALL                             R27 1 1
    11213 MOVE                             R25 R27
    11214 LOADK                            R26 K43 [""]
    11215 CONCAT                           R22 R24 R26
    11216 SETTABLEKS                       R22 R21 K488 ["placeName"]
    11218 CALL                             R19 2 1
    11219 SETTABLEKS                       R19 R18 K22 ["translation"]
    11221 GETTABLEKS                       R19 R2 K14 ["userId"]
    11223 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11225 MOVE                             R19 R0
    11226 GETTABLEKS                       R20 R2 K14 ["userId"]
    11228 CALL                             R19 1 1
    11229 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11231 LOADK                            R19 K205 ["Update"]
    11232 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11234 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11236 ORK                              R19 R20 K18 [0]
    11237 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11239 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11241 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11243 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11245 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11247 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11249 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11251 LOADK                            R20 K43 [""]
    11252 FASTCALL1                        TOSTRING R4 ; [+3]
    11253 MOVE                             R26 R4
    11254 GETIMPORT                        R25 K4 [tostring]
    11256 CALL                             R25 1 1
    11257 MOVE                             R21 R25
    11258 LOADK                            R22 K5 ["/places/"]
    11259 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11261 FASTCALL1                        TOSTRING R26 ; [+2]
    11262 GETIMPORT                        R25 K4 [tostring]
    11264 CALL                             R25 1 1
    11265 MOVE                             R23 R25
    11266 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    11267 CONCAT                           R19 R20 R24
    11268 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11270 LOADK                            R20 K43 [""]
    11271 GETUPVAL                         R26 1
    11272 FASTCALL1                        TOSTRING R26 ; [+2]
    11273 GETIMPORT                        R25 K4 [tostring]
    11275 CALL                             R25 1 1
    11276 MOVE                             R21 R25
    11277 LOADK                            R22 K208 ["SupportedLanguages"]
    11278 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11280 FASTCALL1                        TOSTRING R26 ; [+2]
    11281 GETIMPORT                        R25 K4 [tostring]
    11283 CALL                             R25 1 1
    11284 MOVE                             R23 R25
    11285 LOADK                            R24 K43 [""]
    11286 CONCAT                           R19 R20 R24
    11287 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11289 RETURN                           R18 1
    11290 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11292 JUMPIFNOTEQKN                    R18 K491 [102] ; [+121]
    11294 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11295 GETTABLEKS                       R19 R2 K19 ["id"]
    11297 SETTABLEKS                       R19 R18 K19 ["id"]
    11299 LOADK                            R19 K236 ["Description.TranslationIconAdded"]
    11300 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11302 LOADK                            R19 K205 ["Update"]
    11303 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11305 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11307 GETIMPORT                        R21 K34 [pcall]
    11309 NEWCLOSURE                       R22 P6
    11310 CAPTURE                          VAL R20
    11311 CAPTURE                          VAL R3
    11312 CALL                             R21 1 2
    11313 JUMPIFNOT                        R21 ; [+2]
    11314 MOVE                             R19 R22
    11315 JUMP                             ; [+1]
    11316 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11317 SETTABLEKS                       R19 R18 K21 ["date"]
    11319 MOVE                             R19 R12
    11320 LOADK                            R20 K237 ["iconName"]
    11321 DUPTABLE                         R21 K133 [{"genre"}]
    11322 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11324 JUMPIFNOT                        R24 ; [+5]
    11325 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11327 GETTABLEKS                       R23 R24 K134 ["Genre"]
    11329 JUMPIF                           R23 ; [+1]
    11330 LOADK                            R23 K43 [""]
    11331 LOADK                            R24 K43 [""]
    11332 FASTCALL1                        TOSTRING R23 ; [+3]
    11333 MOVE                             R28 R23
    11334 GETIMPORT                        R27 K4 [tostring]
    11336 CALL                             R27 1 1
    11337 MOVE                             R25 R27
    11338 LOADK                            R26 K43 [""]
    11339 CONCAT                           R22 R24 R26
    11340 SETTABLEKS                       R22 R21 K132 ["genre"]
    11342 CALL                             R19 2 1
    11343 SETTABLEKS                       R19 R18 K22 ["translation"]
    11345 GETTABLEKS                       R19 R2 K14 ["userId"]
    11347 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11349 MOVE                             R19 R0
    11350 GETTABLEKS                       R20 R2 K14 ["userId"]
    11352 CALL                             R19 1 1
    11353 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11355 LOADK                            R19 K205 ["Update"]
    11356 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11358 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11360 ORK                              R19 R20 K18 [0]
    11361 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11363 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11365 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11367 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11369 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11371 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11373 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11375 LOADK                            R20 K43 [""]
    11376 FASTCALL1                        TOSTRING R4 ; [+3]
    11377 MOVE                             R26 R4
    11378 GETIMPORT                        R25 K4 [tostring]
    11380 CALL                             R25 1 1
    11381 MOVE                             R21 R25
    11382 LOADK                            R22 K5 ["/places/"]
    11383 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11385 FASTCALL1                        TOSTRING R26 ; [+2]
    11386 GETIMPORT                        R25 K4 [tostring]
    11388 CALL                             R25 1 1
    11389 MOVE                             R23 R25
    11390 LOADK                            R24 K11 ["/configure"]
    11391 CONCAT                           R19 R20 R24
    11392 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11394 LOADK                            R20 K43 [""]
    11395 GETUPVAL                         R26 1
    11396 FASTCALL1                        TOSTRING R26 ; [+2]
    11397 GETIMPORT                        R25 K4 [tostring]
    11399 CALL                             R25 1 1
    11400 MOVE                             R21 R25
    11401 LOADK                            R22 K208 ["SupportedLanguages"]
    11402 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11404 FASTCALL1                        TOSTRING R26 ; [+2]
    11405 GETIMPORT                        R25 K4 [tostring]
    11407 CALL                             R25 1 1
    11408 MOVE                             R23 R25
    11409 LOADK                            R24 K43 [""]
    11410 CONCAT                           R19 R20 R24
    11411 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11413 RETURN                           R18 1
    11414 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11416 JUMPIFNOTEQKN                    R18 K494 [103] ; [+141]
    11418 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11419 GETTABLEKS                       R19 R2 K19 ["id"]
    11421 SETTABLEKS                       R19 R18 K19 ["id"]
    11423 LOADK                            R19 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11424 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11426 LOADK                            R19 K205 ["Update"]
    11427 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11429 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11431 GETIMPORT                        R21 K34 [pcall]
    11433 NEWCLOSURE                       R22 P6
    11434 CAPTURE                          VAL R20
    11435 CAPTURE                          VAL R3
    11436 CALL                             R21 1 2
    11437 JUMPIFNOT                        R21 ; [+2]
    11438 MOVE                             R19 R22
    11439 JUMP                             ; [+1]
    11440 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11441 SETTABLEKS                       R19 R18 K21 ["date"]
    11443 MOVE                             R19 R12
    11444 LOADK                            R20 K239 ["IconName"]
    11445 DUPTABLE                         R21 K123 [{"newName", "oldName"}]
    11446 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11448 JUMPIFNOT                        R24 ; [+5]
    11449 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11451 GETTABLEKS                       R23 R24 K124 ["NewName"]
    11453 JUMPIF                           R23 ; [+1]
    11454 LOADK                            R23 K43 [""]
    11455 LOADK                            R24 K43 [""]
    11456 FASTCALL1                        TOSTRING R23 ; [+3]
    11457 MOVE                             R28 R23
    11458 GETIMPORT                        R27 K4 [tostring]
    11460 CALL                             R27 1 1
    11461 MOVE                             R25 R27
    11462 LOADK                            R26 K43 [""]
    11463 CONCAT                           R22 R24 R26
    11464 SETTABLEKS                       R22 R21 K121 ["newName"]
    11466 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11468 JUMPIFNOT                        R24 ; [+5]
    11469 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11471 GETTABLEKS                       R23 R24 K125 ["OldName"]
    11473 JUMPIF                           R23 ; [+1]
    11474 LOADK                            R23 K43 [""]
    11475 LOADK                            R24 K43 [""]
    11476 FASTCALL1                        TOSTRING R23 ; [+3]
    11477 MOVE                             R28 R23
    11478 GETIMPORT                        R27 K4 [tostring]
    11480 CALL                             R27 1 1
    11481 MOVE                             R25 R27
    11482 LOADK                            R26 K43 [""]
    11483 CONCAT                           R22 R24 R26
    11484 SETTABLEKS                       R22 R21 K122 ["oldName"]
    11486 CALL                             R19 2 1
    11487 SETTABLEKS                       R19 R18 K22 ["translation"]
    11489 GETTABLEKS                       R19 R2 K14 ["userId"]
    11491 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11493 MOVE                             R19 R0
    11494 GETTABLEKS                       R20 R2 K14 ["userId"]
    11496 CALL                             R19 1 1
    11497 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11499 LOADK                            R19 K205 ["Update"]
    11500 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11502 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11504 ORK                              R19 R20 K18 [0]
    11505 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11507 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11509 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11511 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11513 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11515 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11517 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11519 LOADK                            R20 K43 [""]
    11520 FASTCALL1                        TOSTRING R4 ; [+3]
    11521 MOVE                             R26 R4
    11522 GETIMPORT                        R25 K4 [tostring]
    11524 CALL                             R25 1 1
    11525 MOVE                             R21 R25
    11526 LOADK                            R22 K5 ["/places/"]
    11527 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11529 FASTCALL1                        TOSTRING R26 ; [+2]
    11530 GETIMPORT                        R25 K4 [tostring]
    11532 CALL                             R25 1 1
    11533 MOVE                             R23 R25
    11534 LOADK                            R24 K11 ["/configure"]
    11535 CONCAT                           R19 R20 R24
    11536 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11538 LOADK                            R20 K43 [""]
    11539 GETUPVAL                         R26 1
    11540 FASTCALL1                        TOSTRING R26 ; [+2]
    11541 GETIMPORT                        R25 K4 [tostring]
    11543 CALL                             R25 1 1
    11544 MOVE                             R21 R25
    11545 LOADK                            R22 K208 ["SupportedLanguages"]
    11546 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11548 FASTCALL1                        TOSTRING R26 ; [+2]
    11549 GETIMPORT                        R25 K4 [tostring]
    11551 CALL                             R25 1 1
    11552 MOVE                             R23 R25
    11553 LOADK                            R24 K43 [""]
    11554 CONCAT                           R19 R20 R24
    11555 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11557 RETURN                           R18 1
    11558 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11560 JUMPIFNOTEQKN                    R18 K496 [104] ; [+121]
    11562 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11563 GETTABLEKS                       R19 R2 K19 ["id"]
    11565 SETTABLEKS                       R19 R18 K19 ["id"]
    11567 LOADK                            R19 K241 ["catalog/"]
    11568 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11570 LOADK                            R19 K205 ["Update"]
    11571 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11573 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11575 GETIMPORT                        R21 K34 [pcall]
    11577 NEWCLOSURE                       R22 P6
    11578 CAPTURE                          VAL R20
    11579 CAPTURE                          VAL R3
    11580 CALL                             R21 1 2
    11581 JUMPIFNOT                        R21 ; [+2]
    11582 MOVE                             R19 R22
    11583 JUMP                             ; [+1]
    11584 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11585 SETTABLEKS                       R19 R18 K21 ["date"]
    11587 MOVE                             R19 R12
    11588 LOADK                            R20 K242 [42]
    11589 DUPTABLE                         R21 K499 [{"placeName"}]
    11590 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11592 JUMPIFNOT                        R24 ; [+5]
    11593 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11595 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    11597 JUMPIF                           R23 ; [+1]
    11598 LOADK                            R23 K43 [""]
    11599 LOADK                            R24 K43 [""]
    11600 FASTCALL1                        TOSTRING R23 ; [+3]
    11601 MOVE                             R28 R23
    11602 GETIMPORT                        R27 K4 [tostring]
    11604 CALL                             R27 1 1
    11605 MOVE                             R25 R27
    11606 LOADK                            R26 K43 [""]
    11607 CONCAT                           R22 R24 R26
    11608 SETTABLEKS                       R22 R21 K488 ["placeName"]
    11610 CALL                             R19 2 1
    11611 SETTABLEKS                       R19 R18 K22 ["translation"]
    11613 GETTABLEKS                       R19 R2 K14 ["userId"]
    11615 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11617 MOVE                             R19 R0
    11618 GETTABLEKS                       R20 R2 K14 ["userId"]
    11620 CALL                             R19 1 1
    11621 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11623 LOADK                            R19 K205 ["Update"]
    11624 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11626 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11628 ORK                              R19 R20 K18 [0]
    11629 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11631 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11633 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11635 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11637 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11639 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11641 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11643 LOADK                            R20 K43 [""]
    11644 FASTCALL1                        TOSTRING R4 ; [+3]
    11645 MOVE                             R26 R4
    11646 GETIMPORT                        R25 K4 [tostring]
    11648 CALL                             R25 1 1
    11649 MOVE                             R21 R25
    11650 LOADK                            R22 K5 ["/places/"]
    11651 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11653 FASTCALL1                        TOSTRING R26 ; [+2]
    11654 GETIMPORT                        R25 K4 [tostring]
    11656 CALL                             R25 1 1
    11657 MOVE                             R23 R25
    11658 LOADK                            R24 K11 ["/configure"]
    11659 CONCAT                           R19 R20 R24
    11660 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11662 LOADK                            R20 K43 [""]
    11663 GETUPVAL                         R26 1
    11664 FASTCALL1                        TOSTRING R26 ; [+2]
    11665 GETIMPORT                        R25 K4 [tostring]
    11667 CALL                             R25 1 1
    11668 MOVE                             R21 R25
    11669 LOADK                            R22 K208 ["SupportedLanguages"]
    11670 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11672 FASTCALL1                        TOSTRING R26 ; [+2]
    11673 GETIMPORT                        R25 K4 [tostring]
    11675 CALL                             R25 1 1
    11676 MOVE                             R23 R25
    11677 LOADK                            R24 K43 [""]
    11678 CONCAT                           R19 R20 R24
    11679 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11681 RETURN                           R18 1
    11682 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11684 JUMPIFNOTEQKN                    R18 K500 [105] ; [+121]
    11686 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11687 GETTABLEKS                       R19 R2 K19 ["id"]
    11689 SETTABLEKS                       R19 R18 K19 ["id"]
    11691 LOADK                            R19 K245 [43]
    11692 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11694 LOADK                            R19 K205 ["Update"]
    11695 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11697 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11699 GETIMPORT                        R21 K34 [pcall]
    11701 NEWCLOSURE                       R22 P6
    11702 CAPTURE                          VAL R20
    11703 CAPTURE                          VAL R3
    11704 CALL                             R21 1 2
    11705 JUMPIFNOT                        R21 ; [+2]
    11706 MOVE                             R19 R22
    11707 JUMP                             ; [+1]
    11708 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11709 SETTABLEKS                       R19 R18 K21 ["date"]
    11711 MOVE                             R19 R12
    11712 LOADK                            R20 K246 ["TranslationExperienceName"]
    11713 DUPTABLE                         R21 K504 [{"count"}]
    11714 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11716 JUMPIFNOT                        R24 ; [+5]
    11717 GETTABLEKS                       R24 R2 K41 ["metaData"]
    11719 GETTABLEKS                       R23 R24 K505 ["Count"]
    11721 JUMPIF                           R23 ; [+1]
    11722 LOADK                            R23 K43 [""]
    11723 LOADK                            R24 K43 [""]
    11724 FASTCALL1                        TOSTRING R23 ; [+3]
    11725 MOVE                             R28 R23
    11726 GETIMPORT                        R27 K4 [tostring]
    11728 CALL                             R27 1 1
    11729 MOVE                             R25 R27
    11730 LOADK                            R26 K43 [""]
    11731 CONCAT                           R22 R24 R26
    11732 SETTABLEKS                       R22 R21 K503 ["count"]
    11734 CALL                             R19 2 1
    11735 SETTABLEKS                       R19 R18 K22 ["translation"]
    11737 GETTABLEKS                       R19 R2 K14 ["userId"]
    11739 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11741 MOVE                             R19 R0
    11742 GETTABLEKS                       R20 R2 K14 ["userId"]
    11744 CALL                             R19 1 1
    11745 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11747 LOADK                            R19 K205 ["Update"]
    11748 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11750 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11752 ORK                              R19 R20 K18 [0]
    11753 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11755 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11757 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11759 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11761 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11763 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11765 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11767 LOADK                            R20 K43 [""]
    11768 FASTCALL1                        TOSTRING R4 ; [+3]
    11769 MOVE                             R26 R4
    11770 GETIMPORT                        R25 K4 [tostring]
    11772 CALL                             R25 1 1
    11773 MOVE                             R21 R25
    11774 LOADK                            R22 K5 ["/places/"]
    11775 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11777 FASTCALL1                        TOSTRING R26 ; [+2]
    11778 GETIMPORT                        R25 K4 [tostring]
    11780 CALL                             R25 1 1
    11781 MOVE                             R23 R25
    11782 LOADK                            R24 K94 [9]
    11783 CONCAT                           R19 R20 R24
    11784 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11786 LOADK                            R20 K43 [""]
    11787 GETUPVAL                         R26 1
    11788 FASTCALL1                        TOSTRING R26 ; [+2]
    11789 GETIMPORT                        R25 K4 [tostring]
    11791 CALL                             R25 1 1
    11792 MOVE                             R21 R25
    11793 LOADK                            R22 K208 ["SupportedLanguages"]
    11794 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11796 FASTCALL1                        TOSTRING R26 ; [+2]
    11797 GETIMPORT                        R25 K4 [tostring]
    11799 CALL                             R25 1 1
    11800 MOVE                             R23 R25
    11801 LOADK                            R24 K43 [""]
    11802 CONCAT                           R19 R20 R24
    11803 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11805 RETURN                           R18 1
    11806 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11808 JUMPIFNOTEQKN                    R18 K506 [106] ; [+100]
    11810 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11811 GETTABLEKS                       R19 R2 K19 ["id"]
    11813 SETTABLEKS                       R19 R18 K19 ["id"]
    11815 LOADK                            R19 K251 ["Description.TranslationExperienceDescription"]
    11816 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11818 LOADK                            R19 K205 ["Update"]
    11819 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11821 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11823 GETIMPORT                        R21 K34 [pcall]
    11825 NEWCLOSURE                       R22 P6
    11826 CAPTURE                          VAL R20
    11827 CAPTURE                          VAL R3
    11828 CALL                             R21 1 2
    11829 JUMPIFNOT                        R21 ; [+2]
    11830 MOVE                             R19 R22
    11831 JUMP                             ; [+1]
    11832 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11833 SETTABLEKS                       R19 R18 K21 ["date"]
    11835 MOVE                             R19 R12
    11836 LOADK                            R20 K252 [45]
    11837 CALL                             R19 1 1
    11838 SETTABLEKS                       R19 R18 K22 ["translation"]
    11840 GETTABLEKS                       R19 R2 K14 ["userId"]
    11842 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11844 MOVE                             R19 R0
    11845 GETTABLEKS                       R20 R2 K14 ["userId"]
    11847 CALL                             R19 1 1
    11848 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11850 LOADK                            R19 K205 ["Update"]
    11851 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11853 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11855 ORK                              R19 R20 K18 [0]
    11856 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11858 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11860 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11862 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11864 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11866 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11868 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11870 LOADK                            R20 K43 [""]
    11871 FASTCALL1                        TOSTRING R4 ; [+3]
    11872 MOVE                             R26 R4
    11873 GETIMPORT                        R25 K4 [tostring]
    11875 CALL                             R25 1 1
    11876 MOVE                             R21 R25
    11877 LOADK                            R22 K5 ["/places/"]
    11878 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11880 FASTCALL1                        TOSTRING R26 ; [+2]
    11881 GETIMPORT                        R25 K4 [tostring]
    11883 CALL                             R25 1 1
    11884 MOVE                             R23 R25
    11885 LOADK                            R24 K94 [9]
    11886 CONCAT                           R19 R20 R24
    11887 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11889 LOADK                            R20 K43 [""]
    11890 GETUPVAL                         R26 1
    11891 FASTCALL1                        TOSTRING R26 ; [+2]
    11892 GETIMPORT                        R25 K4 [tostring]
    11894 CALL                             R25 1 1
    11895 MOVE                             R21 R25
    11896 LOADK                            R22 K208 ["SupportedLanguages"]
    11897 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11899 FASTCALL1                        TOSTRING R26 ; [+2]
    11900 GETIMPORT                        R25 K4 [tostring]
    11902 CALL                             R25 1 1
    11903 MOVE                             R23 R25
    11904 LOADK                            R24 K43 [""]
    11905 CONCAT                           R19 R20 R24
    11906 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    11908 RETURN                           R18 1
    11909 GETTABLEKS                       R18 R2 K17 ["eventType"]
    11911 JUMPIFNOTEQKN                    R18 K509 [107] ; [+100]
    11913 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    11914 GETTABLEKS                       R19 R2 K19 ["id"]
    11916 SETTABLEKS                       R19 R18 K19 ["id"]
    11918 LOADK                            R19 K254 ["Description.TranslationThumbnailAltText"]
    11919 SETTABLEKS                       R19 R18 K17 ["eventType"]
    11921 LOADK                            R19 K205 ["Update"]
    11922 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    11924 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    11926 GETIMPORT                        R21 K34 [pcall]
    11928 NEWCLOSURE                       R22 P6
    11929 CAPTURE                          VAL R20
    11930 CAPTURE                          VAL R3
    11931 CALL                             R21 1 2
    11932 JUMPIFNOT                        R21 ; [+2]
    11933 MOVE                             R19 R22
    11934 JUMP                             ; [+1]
    11935 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    11936 SETTABLEKS                       R19 R18 K21 ["date"]
    11938 MOVE                             R19 R12
    11939 LOADK                            R20 K255 ["thumbnailName"]
    11940 CALL                             R19 1 1
    11941 SETTABLEKS                       R19 R18 K22 ["translation"]
    11943 GETTABLEKS                       R19 R2 K14 ["userId"]
    11945 SETTABLEKS                       R19 R18 K23 ["actorId"]
    11947 MOVE                             R19 R0
    11948 GETTABLEKS                       R20 R2 K14 ["userId"]
    11950 CALL                             R19 1 1
    11951 SETTABLEKS                       R19 R18 K24 ["actorName"]
    11953 LOADK                            R19 K205 ["Update"]
    11954 SETTABLEKS                       R19 R18 K25 ["iconType"]
    11956 GETTABLEKS                       R20 R2 K6 ["placeId"]
    11958 ORK                              R19 R20 K18 [0]
    11959 SETTABLEKS                       R19 R18 K26 ["iconId"]
    11961 GETTABLEKS                       R19 R2 K2 ["universeId"]
    11963 SETTABLEKS                       R19 R18 K2 ["universeId"]
    11965 GETTABLEKS                       R19 R2 K27 ["headerText"]
    11967 SETTABLEKS                       R19 R18 K27 ["headerText"]
    11969 GETTABLEKS                       R19 R2 K28 ["footerText"]
    11971 SETTABLEKS                       R19 R18 K28 ["footerText"]
    11973 LOADK                            R20 K43 [""]
    11974 FASTCALL1                        TOSTRING R4 ; [+3]
    11975 MOVE                             R26 R4
    11976 GETIMPORT                        R25 K4 [tostring]
    11978 CALL                             R25 1 1
    11979 MOVE                             R21 R25
    11980 LOADK                            R22 K5 ["/places/"]
    11981 GETTABLEKS                       R26 R2 K6 ["placeId"]
    11983 FASTCALL1                        TOSTRING R26 ; [+2]
    11984 GETIMPORT                        R25 K4 [tostring]
    11986 CALL                             R25 1 1
    11987 MOVE                             R23 R25
    11988 LOADK                            R24 K94 [9]
    11989 CONCAT                           R19 R20 R24
    11990 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    11992 LOADK                            R20 K43 [""]
    11993 GETUPVAL                         R26 1
    11994 FASTCALL1                        TOSTRING R26 ; [+2]
    11995 GETIMPORT                        R25 K4 [tostring]
    11997 CALL                             R25 1 1
    11998 MOVE                             R21 R25
    11999 LOADK                            R22 K208 ["SupportedLanguages"]
    12000 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12002 FASTCALL1                        TOSTRING R26 ; [+2]
    12003 GETIMPORT                        R25 K4 [tostring]
    12005 CALL                             R25 1 1
    12006 MOVE                             R23 R25
    12007 LOADK                            R24 K43 [""]
    12008 CONCAT                           R19 R20 R24
    12009 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12011 RETURN                           R18 1
    12012 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12014 JUMPIFNOTEQKN                    R18 K512 [108] ; [+121]
    12016 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12017 GETTABLEKS                       R19 R2 K19 ["id"]
    12019 SETTABLEKS                       R19 R18 K19 ["id"]
    12021 LOADK                            R19 K1 ["dashboard/creations/experiences/"]
    12022 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12024 LOADK                            R19 K205 ["Update"]
    12025 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12027 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12029 GETIMPORT                        R21 K34 [pcall]
    12031 NEWCLOSURE                       R22 P6
    12032 CAPTURE                          VAL R20
    12033 CAPTURE                          VAL R3
    12034 CALL                             R21 1 2
    12035 JUMPIFNOT                        R21 ; [+2]
    12036 MOVE                             R19 R22
    12037 JUMP                             ; [+1]
    12038 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12039 SETTABLEKS                       R19 R18 K21 ["date"]
    12041 MOVE                             R19 R12
    12042 LOADK                            R20 K2 ["universeId"]
    12043 DUPTABLE                         R21 K504 [{"count"}]
    12044 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12046 JUMPIFNOT                        R24 ; [+5]
    12047 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12049 GETTABLEKS                       R23 R24 K505 ["Count"]
    12051 JUMPIF                           R23 ; [+1]
    12052 LOADK                            R23 K43 [""]
    12053 LOADK                            R24 K43 [""]
    12054 FASTCALL1                        TOSTRING R23 ; [+3]
    12055 MOVE                             R28 R23
    12056 GETIMPORT                        R27 K4 [tostring]
    12058 CALL                             R27 1 1
    12059 MOVE                             R25 R27
    12060 LOADK                            R26 K43 [""]
    12061 CONCAT                           R22 R24 R26
    12062 SETTABLEKS                       R22 R21 K503 ["count"]
    12064 CALL                             R19 2 1
    12065 SETTABLEKS                       R19 R18 K22 ["translation"]
    12067 GETTABLEKS                       R19 R2 K14 ["userId"]
    12069 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12071 MOVE                             R19 R0
    12072 GETTABLEKS                       R20 R2 K14 ["userId"]
    12074 CALL                             R19 1 1
    12075 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12077 LOADK                            R19 K205 ["Update"]
    12078 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12080 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12082 ORK                              R19 R20 K18 [0]
    12083 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12085 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12087 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12089 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12091 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12093 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12095 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12097 LOADK                            R20 K43 [""]
    12098 FASTCALL1                        TOSTRING R4 ; [+3]
    12099 MOVE                             R26 R4
    12100 GETIMPORT                        R25 K4 [tostring]
    12102 CALL                             R25 1 1
    12103 MOVE                             R21 R25
    12104 LOADK                            R22 K5 ["/places/"]
    12105 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12107 FASTCALL1                        TOSTRING R26 ; [+2]
    12108 GETIMPORT                        R25 K4 [tostring]
    12110 CALL                             R25 1 1
    12111 MOVE                             R23 R25
    12112 LOADK                            R24 K94 [9]
    12113 CONCAT                           R19 R20 R24
    12114 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12116 LOADK                            R20 K43 [""]
    12117 GETUPVAL                         R26 1
    12118 FASTCALL1                        TOSTRING R26 ; [+2]
    12119 GETIMPORT                        R25 K4 [tostring]
    12121 CALL                             R25 1 1
    12122 MOVE                             R21 R25
    12123 LOADK                            R22 K208 ["SupportedLanguages"]
    12124 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12126 FASTCALL1                        TOSTRING R26 ; [+2]
    12127 GETIMPORT                        R25 K4 [tostring]
    12129 CALL                             R25 1 1
    12130 MOVE                             R23 R25
    12131 LOADK                            R24 K43 [""]
    12132 CONCAT                           R19 R20 R24
    12133 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12135 RETURN                           R18 1
    12136 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12138 JUMPIFNOTEQKN                    R18 K515 [109] ; [+162]
    12140 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12141 GETTABLEKS                       R19 R2 K19 ["id"]
    12143 SETTABLEKS                       R19 R18 K19 ["id"]
    12145 LOADK                            R19 K4 [tostring]
    12146 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12148 LOADK                            R19 K205 ["Update"]
    12149 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12151 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12153 GETIMPORT                        R21 K34 [pcall]
    12155 NEWCLOSURE                       R22 P6
    12156 CAPTURE                          VAL R20
    12157 CAPTURE                          VAL R3
    12158 CALL                             R21 1 2
    12159 JUMPIFNOT                        R21 ; [+2]
    12160 MOVE                             R19 R22
    12161 JUMP                             ; [+1]
    12162 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12163 SETTABLEKS                       R19 R18 K21 ["date"]
    12165 MOVE                             R19 R12
    12166 LOADK                            R20 K5 ["/places/"]
    12167 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    12168 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12170 JUMPIFNOT                        R26 ; [+5]
    12171 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12173 GETTABLEKS                       R25 R26 K42 ["Action"]
    12175 JUMPIF                           R25 ; [+1]
    12176 LOADK                            R25 K43 [""]
    12177 GETIMPORT                        R26 K46 [string.lower]
    12179 FASTCALL1                        TOSTRING R25 ; [+3]
    12180 MOVE                             R28 R25
    12181 GETIMPORT                        R27 K4 [tostring]
    12183 CALL                             R27 1 1
    12184 CALL                             R26 1 1
    12185 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    12187 LOADB                            R24 1
    12188 JUMP                             ; [+1]
    12189 LOADB                            R24 0
    12190 JUMPIFNOT                        R24 ; [+4]
    12191 MOVE                             R23 R12
    12192 LOADK                            R24 K140 ["Description.ActionEnabled"]
    12193 CALL                             R23 1 1
    12194 JUMPIF                           R23 ; [+3]
    12195 MOVE                             R23 R12
    12196 LOADK                            R24 K141 ["Description.ActionDisabled"]
    12197 CALL                             R23 1 1
    12198 LOADK                            R24 K43 [""]
    12199 FASTCALL1                        TOSTRING R23 ; [+3]
    12200 MOVE                             R28 R23
    12201 GETIMPORT                        R27 K4 [tostring]
    12203 CALL                             R27 1 1
    12204 MOVE                             R25 R27
    12205 LOADK                            R26 K43 [""]
    12206 CONCAT                           R22 R24 R26
    12207 SETTABLEKS                       R22 R21 K138 ["action"]
    12209 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12211 JUMPIFNOT                        R24 ; [+5]
    12212 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12214 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12216 JUMPIF                           R23 ; [+1]
    12217 LOADK                            R23 K43 [""]
    12218 LOADK                            R24 K43 [""]
    12219 FASTCALL1                        TOSTRING R23 ; [+3]
    12220 MOVE                             R28 R23
    12221 GETIMPORT                        R27 K4 [tostring]
    12223 CALL                             R27 1 1
    12224 MOVE                             R25 R27
    12225 LOADK                            R26 K43 [""]
    12226 CONCAT                           R22 R24 R26
    12227 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12229 CALL                             R19 2 1
    12230 SETTABLEKS                       R19 R18 K22 ["translation"]
    12232 GETTABLEKS                       R19 R2 K14 ["userId"]
    12234 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12236 MOVE                             R19 R0
    12237 GETTABLEKS                       R20 R2 K14 ["userId"]
    12239 CALL                             R19 1 1
    12240 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12242 LOADK                            R19 K205 ["Update"]
    12243 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12245 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12247 ORK                              R19 R20 K18 [0]
    12248 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12250 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12252 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12254 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12256 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12258 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12260 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12262 LOADK                            R20 K43 [""]
    12263 FASTCALL1                        TOSTRING R4 ; [+3]
    12264 MOVE                             R26 R4
    12265 GETIMPORT                        R25 K4 [tostring]
    12267 CALL                             R25 1 1
    12268 MOVE                             R21 R25
    12269 LOADK                            R22 K5 ["/places/"]
    12270 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12272 FASTCALL1                        TOSTRING R26 ; [+2]
    12273 GETIMPORT                        R25 K4 [tostring]
    12275 CALL                             R25 1 1
    12276 MOVE                             R23 R25
    12277 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    12278 CONCAT                           R19 R20 R24
    12279 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12281 LOADK                            R20 K43 [""]
    12282 GETUPVAL                         R26 1
    12283 FASTCALL1                        TOSTRING R26 ; [+2]
    12284 GETIMPORT                        R25 K4 [tostring]
    12286 CALL                             R25 1 1
    12287 MOVE                             R21 R25
    12288 LOADK                            R22 K208 ["SupportedLanguages"]
    12289 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12291 FASTCALL1                        TOSTRING R26 ; [+2]
    12292 GETIMPORT                        R25 K4 [tostring]
    12294 CALL                             R25 1 1
    12295 MOVE                             R23 R25
    12296 LOADK                            R24 K43 [""]
    12297 CONCAT                           R19 R20 R24
    12298 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12300 RETURN                           R18 1
    12301 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12303 JUMPIFNOTEQKN                    R18 K518 [110] ; [+162]
    12305 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12306 GETTABLEKS                       R19 R2 K19 ["id"]
    12308 SETTABLEKS                       R19 R18 K19 ["id"]
    12310 LOADK                            R19 K7 ["/badges/"]
    12311 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12313 LOADK                            R19 K205 ["Update"]
    12314 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12316 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12318 GETIMPORT                        R21 K34 [pcall]
    12320 NEWCLOSURE                       R22 P6
    12321 CAPTURE                          VAL R20
    12322 CAPTURE                          VAL R3
    12323 CALL                             R21 1 2
    12324 JUMPIFNOT                        R21 ; [+2]
    12325 MOVE                             R19 R22
    12326 JUMP                             ; [+1]
    12327 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12328 SETTABLEKS                       R19 R18 K21 ["date"]
    12330 MOVE                             R19 R12
    12331 LOADK                            R20 K8 ["resourceId"]
    12332 DUPTABLE                         R21 K489 [{"action", "placeName"}]
    12333 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12335 JUMPIFNOT                        R26 ; [+5]
    12336 GETTABLEKS                       R26 R2 K41 ["metaData"]
    12338 GETTABLEKS                       R25 R26 K42 ["Action"]
    12340 JUMPIF                           R25 ; [+1]
    12341 LOADK                            R25 K43 [""]
    12342 GETIMPORT                        R26 K46 [string.lower]
    12344 FASTCALL1                        TOSTRING R25 ; [+3]
    12345 MOVE                             R28 R25
    12346 GETIMPORT                        R27 K4 [tostring]
    12348 CALL                             R27 1 1
    12349 CALL                             R26 1 1
    12350 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    12352 LOADB                            R24 1
    12353 JUMP                             ; [+1]
    12354 LOADB                            R24 0
    12355 JUMPIFNOT                        R24 ; [+4]
    12356 MOVE                             R23 R12
    12357 LOADK                            R24 K140 ["Description.ActionEnabled"]
    12358 CALL                             R23 1 1
    12359 JUMPIF                           R23 ; [+3]
    12360 MOVE                             R23 R12
    12361 LOADK                            R24 K141 ["Description.ActionDisabled"]
    12362 CALL                             R23 1 1
    12363 LOADK                            R24 K43 [""]
    12364 FASTCALL1                        TOSTRING R23 ; [+3]
    12365 MOVE                             R28 R23
    12366 GETIMPORT                        R27 K4 [tostring]
    12368 CALL                             R27 1 1
    12369 MOVE                             R25 R27
    12370 LOADK                            R26 K43 [""]
    12371 CONCAT                           R22 R24 R26
    12372 SETTABLEKS                       R22 R21 K138 ["action"]
    12374 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12376 JUMPIFNOT                        R24 ; [+5]
    12377 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12379 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12381 JUMPIF                           R23 ; [+1]
    12382 LOADK                            R23 K43 [""]
    12383 LOADK                            R24 K43 [""]
    12384 FASTCALL1                        TOSTRING R23 ; [+3]
    12385 MOVE                             R28 R23
    12386 GETIMPORT                        R27 K4 [tostring]
    12388 CALL                             R27 1 1
    12389 MOVE                             R25 R27
    12390 LOADK                            R26 K43 [""]
    12391 CONCAT                           R22 R24 R26
    12392 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12394 CALL                             R19 2 1
    12395 SETTABLEKS                       R19 R18 K22 ["translation"]
    12397 GETTABLEKS                       R19 R2 K14 ["userId"]
    12399 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12401 MOVE                             R19 R0
    12402 GETTABLEKS                       R20 R2 K14 ["userId"]
    12404 CALL                             R19 1 1
    12405 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12407 LOADK                            R19 K205 ["Update"]
    12408 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12410 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12412 ORK                              R19 R20 K18 [0]
    12413 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12415 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12417 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12419 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12421 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12423 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12425 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12427 LOADK                            R20 K43 [""]
    12428 FASTCALL1                        TOSTRING R4 ; [+3]
    12429 MOVE                             R26 R4
    12430 GETIMPORT                        R25 K4 [tostring]
    12432 CALL                             R25 1 1
    12433 MOVE                             R21 R25
    12434 LOADK                            R22 K5 ["/places/"]
    12435 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12437 FASTCALL1                        TOSTRING R26 ; [+2]
    12438 GETIMPORT                        R25 K4 [tostring]
    12440 CALL                             R25 1 1
    12441 MOVE                             R23 R25
    12442 LOADK                            R24 K218 ["Description.AutoTranslationExperienceInformation"]
    12443 CONCAT                           R19 R20 R24
    12444 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12446 LOADK                            R20 K43 [""]
    12447 GETUPVAL                         R26 1
    12448 FASTCALL1                        TOSTRING R26 ; [+2]
    12449 GETIMPORT                        R25 K4 [tostring]
    12451 CALL                             R25 1 1
    12452 MOVE                             R21 R25
    12453 LOADK                            R22 K208 ["SupportedLanguages"]
    12454 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12456 FASTCALL1                        TOSTRING R26 ; [+2]
    12457 GETIMPORT                        R25 K4 [tostring]
    12459 CALL                             R25 1 1
    12460 MOVE                             R23 R25
    12461 LOADK                            R24 K43 [""]
    12462 CONCAT                           R19 R20 R24
    12463 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12465 RETURN                           R18 1
    12466 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12468 JUMPIFNOTEQKN                    R18 K521 [111] ; [+161]
    12470 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12471 GETTABLEKS                       R19 R2 K19 ["id"]
    12473 SETTABLEKS                       R19 R18 K19 ["id"]
    12475 LOADK                            R19 K10 ["/developer-products/"]
    12476 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12478 LOADK                            R19 K205 ["Update"]
    12479 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12481 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12483 GETIMPORT                        R21 K34 [pcall]
    12485 NEWCLOSURE                       R22 P6
    12486 CAPTURE                          VAL R20
    12487 CAPTURE                          VAL R3
    12488 CALL                             R21 1 2
    12489 JUMPIFNOT                        R21 ; [+2]
    12490 MOVE                             R19 R22
    12491 JUMP                             ; [+1]
    12492 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12493 SETTABLEKS                       R19 R18 K21 ["date"]
    12495 MOVE                             R19 R12
    12496 LOADK                            R20 K11 ["/configure"]
    12497 DUPTABLE                         R21 K526 [{"placeName", "oldVersion", "newVersion"}]
    12498 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12500 JUMPIFNOT                        R24 ; [+5]
    12501 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12503 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    12505 JUMPIF                           R23 ; [+1]
    12506 LOADK                            R23 K43 [""]
    12507 LOADK                            R24 K43 [""]
    12508 FASTCALL1                        TOSTRING R23 ; [+3]
    12509 MOVE                             R28 R23
    12510 GETIMPORT                        R27 K4 [tostring]
    12512 CALL                             R27 1 1
    12513 MOVE                             R25 R27
    12514 LOADK                            R26 K43 [""]
    12515 CONCAT                           R22 R24 R26
    12516 SETTABLEKS                       R22 R21 K488 ["placeName"]
    12518 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12520 JUMPIFNOT                        R24 ; [+5]
    12521 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12523 GETTABLEKS                       R23 R24 K527 ["OldVersion"]
    12525 JUMPIF                           R23 ; [+1]
    12526 LOADK                            R23 K43 [""]
    12527 LOADK                            R24 K43 [""]
    12528 FASTCALL1                        TOSTRING R23 ; [+3]
    12529 MOVE                             R28 R23
    12530 GETIMPORT                        R27 K4 [tostring]
    12532 CALL                             R27 1 1
    12533 MOVE                             R25 R27
    12534 LOADK                            R26 K43 [""]
    12535 CONCAT                           R22 R24 R26
    12536 SETTABLEKS                       R22 R21 K524 ["oldVersion"]
    12538 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12540 JUMPIFNOT                        R24 ; [+5]
    12541 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12543 GETTABLEKS                       R23 R24 K528 ["NewVersion"]
    12545 JUMPIF                           R23 ; [+1]
    12546 LOADK                            R23 K43 [""]
    12547 LOADK                            R24 K43 [""]
    12548 FASTCALL1                        TOSTRING R23 ; [+3]
    12549 MOVE                             R28 R23
    12550 GETIMPORT                        R27 K4 [tostring]
    12552 CALL                             R27 1 1
    12553 MOVE                             R25 R27
    12554 LOADK                            R26 K43 [""]
    12555 CONCAT                           R22 R24 R26
    12556 SETTABLEKS                       R22 R21 K525 ["newVersion"]
    12558 CALL                             R19 2 1
    12559 SETTABLEKS                       R19 R18 K22 ["translation"]
    12561 GETTABLEKS                       R19 R2 K14 ["userId"]
    12563 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12565 MOVE                             R19 R0
    12566 GETTABLEKS                       R20 R2 K14 ["userId"]
    12568 CALL                             R19 1 1
    12569 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12571 LOADK                            R19 K205 ["Update"]
    12572 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12574 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12576 ORK                              R19 R20 K18 [0]
    12577 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12579 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12581 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12583 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12585 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12587 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12589 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12591 LOADK                            R20 K43 [""]
    12592 FASTCALL1                        TOSTRING R4 ; [+3]
    12593 MOVE                             R26 R4
    12594 GETIMPORT                        R25 K4 [tostring]
    12596 CALL                             R25 1 1
    12597 MOVE                             R21 R25
    12598 LOADK                            R22 K5 ["/places/"]
    12599 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12601 FASTCALL1                        TOSTRING R26 ; [+2]
    12602 GETIMPORT                        R25 K4 [tostring]
    12604 CALL                             R25 1 1
    12605 MOVE                             R23 R25
    12606 LOADK                            R24 K17 ["eventType"]
    12607 CONCAT                           R19 R20 R24
    12608 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12610 LOADK                            R20 K43 [""]
    12611 GETUPVAL                         R26 1
    12612 FASTCALL1                        TOSTRING R26 ; [+2]
    12613 GETIMPORT                        R25 K4 [tostring]
    12615 CALL                             R25 1 1
    12616 MOVE                             R21 R25
    12617 LOADK                            R22 K208 ["SupportedLanguages"]
    12618 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12620 FASTCALL1                        TOSTRING R26 ; [+2]
    12621 GETIMPORT                        R25 K4 [tostring]
    12623 CALL                             R25 1 1
    12624 MOVE                             R23 R25
    12625 LOADK                            R24 K43 [""]
    12626 CONCAT                           R19 R20 R24
    12627 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12629 RETURN                           R18 1
    12630 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12632 JUMPIFNOTEQKN                    R18 K530 [112] ; [+81]
    12634 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    12635 GETTABLEKS                       R19 R2 K19 ["id"]
    12637 SETTABLEKS                       R19 R18 K19 ["id"]
    12639 LOADK                            R19 K19 ["id"]
    12640 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12642 LOADK                            R19 K205 ["Update"]
    12643 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12645 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12647 GETIMPORT                        R21 K34 [pcall]
    12649 NEWCLOSURE                       R22 P6
    12650 CAPTURE                          VAL R20
    12651 CAPTURE                          VAL R3
    12652 CALL                             R21 1 2
    12653 JUMPIFNOT                        R21 ; [+2]
    12654 MOVE                             R19 R22
    12655 JUMP                             ; [+1]
    12656 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12657 SETTABLEKS                       R19 R18 K21 ["date"]
    12659 MOVE                             R19 R12
    12660 LOADK                            R20 K20 ["eventCategory"]
    12661 CALL                             R19 1 1
    12662 SETTABLEKS                       R19 R18 K22 ["translation"]
    12664 GETTABLEKS                       R19 R2 K14 ["userId"]
    12666 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12668 MOVE                             R19 R0
    12669 GETTABLEKS                       R20 R2 K14 ["userId"]
    12671 CALL                             R19 1 1
    12672 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12674 LOADK                            R19 K205 ["Update"]
    12675 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12677 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12679 ORK                              R19 R20 K18 [0]
    12680 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12682 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12684 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12686 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12688 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12690 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12692 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12694 LOADK                            R20 K43 [""]
    12695 GETUPVAL                         R26 1
    12696 FASTCALL1                        TOSTRING R26 ; [+2]
    12697 GETIMPORT                        R25 K4 [tostring]
    12699 CALL                             R25 1 1
    12700 MOVE                             R21 R25
    12701 LOADK                            R22 K208 ["SupportedLanguages"]
    12702 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12704 FASTCALL1                        TOSTRING R26 ; [+2]
    12705 GETIMPORT                        R25 K4 [tostring]
    12707 CALL                             R25 1 1
    12708 MOVE                             R23 R25
    12709 LOADK                            R24 K43 [""]
    12710 CONCAT                           R19 R20 R24
    12711 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12713 RETURN                           R18 1
    12714 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12716 JUMPIFNOTEQKN                    R18 K533 [113] ; [+81]
    12718 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    12719 GETTABLEKS                       R19 R2 K19 ["id"]
    12721 SETTABLEKS                       R19 R18 K19 ["id"]
    12723 LOADK                            R19 K22 ["translation"]
    12724 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12726 LOADK                            R19 K205 ["Update"]
    12727 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12729 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12731 GETIMPORT                        R21 K34 [pcall]
    12733 NEWCLOSURE                       R22 P6
    12734 CAPTURE                          VAL R20
    12735 CAPTURE                          VAL R3
    12736 CALL                             R21 1 2
    12737 JUMPIFNOT                        R21 ; [+2]
    12738 MOVE                             R19 R22
    12739 JUMP                             ; [+1]
    12740 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12741 SETTABLEKS                       R19 R18 K21 ["date"]
    12743 MOVE                             R19 R12
    12744 LOADK                            R20 K23 ["actorId"]
    12745 CALL                             R19 1 1
    12746 SETTABLEKS                       R19 R18 K22 ["translation"]
    12748 GETTABLEKS                       R19 R2 K14 ["userId"]
    12750 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12752 MOVE                             R19 R0
    12753 GETTABLEKS                       R20 R2 K14 ["userId"]
    12755 CALL                             R19 1 1
    12756 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12758 LOADK                            R19 K205 ["Update"]
    12759 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12761 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12763 ORK                              R19 R20 K18 [0]
    12764 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12766 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12768 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12770 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12772 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12774 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12776 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12778 LOADK                            R20 K43 [""]
    12779 GETUPVAL                         R26 1
    12780 FASTCALL1                        TOSTRING R26 ; [+2]
    12781 GETIMPORT                        R25 K4 [tostring]
    12783 CALL                             R25 1 1
    12784 MOVE                             R21 R25
    12785 LOADK                            R22 K208 ["SupportedLanguages"]
    12786 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12788 FASTCALL1                        TOSTRING R26 ; [+2]
    12789 GETIMPORT                        R25 K4 [tostring]
    12791 CALL                             R25 1 1
    12792 MOVE                             R23 R25
    12793 LOADK                            R24 K43 [""]
    12794 CONCAT                           R19 R20 R24
    12795 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12797 RETURN                           R18 1
    12798 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12800 JUMPIFNOTEQKN                    R18 K536 [114] ; [+121]
    12802 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12803 GETTABLEKS                       R19 R2 K19 ["id"]
    12805 SETTABLEKS                       R19 R18 K19 ["id"]
    12807 LOADK                            R19 K25 ["iconType"]
    12808 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12810 LOADK                            R19 K205 ["Update"]
    12811 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12813 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12815 GETIMPORT                        R21 K34 [pcall]
    12817 NEWCLOSURE                       R22 P6
    12818 CAPTURE                          VAL R20
    12819 CAPTURE                          VAL R3
    12820 CALL                             R21 1 2
    12821 JUMPIFNOT                        R21 ; [+2]
    12822 MOVE                             R19 R22
    12823 JUMP                             ; [+1]
    12824 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12825 SETTABLEKS                       R19 R18 K21 ["date"]
    12827 MOVE                             R19 R12
    12828 LOADK                            R20 K26 ["iconId"]
    12829 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    12830 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12832 JUMPIFNOT                        R24 ; [+5]
    12833 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12835 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    12837 JUMPIF                           R23 ; [+1]
    12838 LOADK                            R23 K43 [""]
    12839 LOADK                            R24 K43 [""]
    12840 FASTCALL1                        TOSTRING R23 ; [+3]
    12841 MOVE                             R28 R23
    12842 GETIMPORT                        R27 K4 [tostring]
    12844 CALL                             R27 1 1
    12845 MOVE                             R25 R27
    12846 LOADK                            R26 K43 [""]
    12847 CONCAT                           R22 R24 R26
    12848 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    12850 CALL                             R19 2 1
    12851 SETTABLEKS                       R19 R18 K22 ["translation"]
    12853 GETTABLEKS                       R19 R2 K14 ["userId"]
    12855 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12857 MOVE                             R19 R0
    12858 GETTABLEKS                       R20 R2 K14 ["userId"]
    12860 CALL                             R19 1 1
    12861 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12863 LOADK                            R19 K205 ["Update"]
    12864 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12866 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12868 ORK                              R19 R20 K18 [0]
    12869 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12871 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12873 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12875 GETTABLEKS                       R19 R2 K27 ["headerText"]
    12877 SETTABLEKS                       R19 R18 K27 ["headerText"]
    12879 GETTABLEKS                       R19 R2 K28 ["footerText"]
    12881 SETTABLEKS                       R19 R18 K28 ["footerText"]
    12883 LOADK                            R20 K43 [""]
    12884 FASTCALL1                        TOSTRING R4 ; [+3]
    12885 MOVE                             R26 R4
    12886 GETIMPORT                        R25 K4 [tostring]
    12888 CALL                             R25 1 1
    12889 MOVE                             R21 R25
    12890 LOADK                            R22 K5 ["/places/"]
    12891 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12893 FASTCALL1                        TOSTRING R26 ; [+2]
    12894 GETIMPORT                        R25 K4 [tostring]
    12896 CALL                             R25 1 1
    12897 MOVE                             R23 R25
    12898 LOADK                            R24 K28 ["footerText"]
    12899 CONCAT                           R19 R20 R24
    12900 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    12902 LOADK                            R20 K43 [""]
    12903 GETUPVAL                         R26 1
    12904 FASTCALL1                        TOSTRING R26 ; [+2]
    12905 GETIMPORT                        R25 K4 [tostring]
    12907 CALL                             R25 1 1
    12908 MOVE                             R21 R25
    12909 LOADK                            R22 K208 ["SupportedLanguages"]
    12910 GETTABLEKS                       R26 R2 K6 ["placeId"]
    12912 FASTCALL1                        TOSTRING R26 ; [+2]
    12913 GETIMPORT                        R25 K4 [tostring]
    12915 CALL                             R25 1 1
    12916 MOVE                             R23 R25
    12917 LOADK                            R24 K43 [""]
    12918 CONCAT                           R19 R20 R24
    12919 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    12921 RETURN                           R18 1
    12922 GETTABLEKS                       R18 R2 K17 ["eventType"]
    12924 JUMPIFNOTEQKN                    R18 K541 [115] ; [+121]
    12926 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    12927 GETTABLEKS                       R19 R2 K19 ["id"]
    12929 SETTABLEKS                       R19 R18 K19 ["id"]
    12931 LOADK                            R19 K30 ["Init"]
    12932 SETTABLEKS                       R19 R18 K17 ["eventType"]
    12934 LOADK                            R19 K205 ["Update"]
    12935 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    12937 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    12939 GETIMPORT                        R21 K34 [pcall]
    12941 NEWCLOSURE                       R22 P6
    12942 CAPTURE                          VAL R20
    12943 CAPTURE                          VAL R3
    12944 CALL                             R21 1 2
    12945 JUMPIFNOT                        R21 ; [+2]
    12946 MOVE                             R19 R22
    12947 JUMP                             ; [+1]
    12948 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    12949 SETTABLEKS                       R19 R18 K21 ["date"]
    12951 MOVE                             R19 R12
    12952 LOADK                            R20 K31 ["Unknown"]
    12953 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    12954 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12956 JUMPIFNOT                        R24 ; [+5]
    12957 GETTABLEKS                       R24 R2 K41 ["metaData"]
    12959 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    12961 JUMPIF                           R23 ; [+1]
    12962 LOADK                            R23 K43 [""]
    12963 LOADK                            R24 K43 [""]
    12964 FASTCALL1                        TOSTRING R23 ; [+3]
    12965 MOVE                             R28 R23
    12966 GETIMPORT                        R27 K4 [tostring]
    12968 CALL                             R27 1 1
    12969 MOVE                             R25 R27
    12970 LOADK                            R26 K43 [""]
    12971 CONCAT                           R22 R24 R26
    12972 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    12974 CALL                             R19 2 1
    12975 SETTABLEKS                       R19 R18 K22 ["translation"]
    12977 GETTABLEKS                       R19 R2 K14 ["userId"]
    12979 SETTABLEKS                       R19 R18 K23 ["actorId"]
    12981 MOVE                             R19 R0
    12982 GETTABLEKS                       R20 R2 K14 ["userId"]
    12984 CALL                             R19 1 1
    12985 SETTABLEKS                       R19 R18 K24 ["actorName"]
    12987 LOADK                            R19 K205 ["Update"]
    12988 SETTABLEKS                       R19 R18 K25 ["iconType"]
    12990 GETTABLEKS                       R20 R2 K6 ["placeId"]
    12992 ORK                              R19 R20 K18 [0]
    12993 SETTABLEKS                       R19 R18 K26 ["iconId"]
    12995 GETTABLEKS                       R19 R2 K2 ["universeId"]
    12997 SETTABLEKS                       R19 R18 K2 ["universeId"]
    12999 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13001 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13003 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13005 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13007 LOADK                            R20 K43 [""]
    13008 FASTCALL1                        TOSTRING R4 ; [+3]
    13009 MOVE                             R26 R4
    13010 GETIMPORT                        R25 K4 [tostring]
    13012 CALL                             R25 1 1
    13013 MOVE                             R21 R25
    13014 LOADK                            R22 K5 ["/places/"]
    13015 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13017 FASTCALL1                        TOSTRING R26 ; [+2]
    13018 GETIMPORT                        R25 K4 [tostring]
    13020 CALL                             R25 1 1
    13021 MOVE                             R23 R25
    13022 LOADK                            R24 K28 ["footerText"]
    13023 CONCAT                           R19 R20 R24
    13024 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13026 LOADK                            R20 K43 [""]
    13027 GETUPVAL                         R26 1
    13028 FASTCALL1                        TOSTRING R26 ; [+2]
    13029 GETIMPORT                        R25 K4 [tostring]
    13031 CALL                             R25 1 1
    13032 MOVE                             R21 R25
    13033 LOADK                            R22 K208 ["SupportedLanguages"]
    13034 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13036 FASTCALL1                        TOSTRING R26 ; [+2]
    13037 GETIMPORT                        R25 K4 [tostring]
    13039 CALL                             R25 1 1
    13040 MOVE                             R23 R25
    13041 LOADK                            R24 K43 [""]
    13042 CONCAT                           R19 R20 R24
    13043 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13045 RETURN                           R18 1
    13046 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13048 JUMPIFNOTEQKN                    R18 K544 [116] ; [+59]
    13050 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    13051 GETTABLEKS                       R19 R2 K19 ["id"]
    13053 SETTABLEKS                       R19 R18 K19 ["id"]
    13055 LOADK                            R19 K33 ["pcall"]
    13056 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13058 LOADK                            R19 K31 ["Unknown"]
    13059 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13061 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13063 GETIMPORT                        R21 K34 [pcall]
    13065 NEWCLOSURE                       R22 P6
    13066 CAPTURE                          VAL R20
    13067 CAPTURE                          VAL R3
    13068 CALL                             R21 1 2
    13069 JUMPIFNOT                        R21 ; [+2]
    13070 MOVE                             R19 R22
    13071 JUMP                             ; [+1]
    13072 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13073 SETTABLEKS                       R19 R18 K21 ["date"]
    13075 LOADK                            R19 K43 [""]
    13076 SETTABLEKS                       R19 R18 K22 ["translation"]
    13078 GETTABLEKS                       R19 R2 K14 ["userId"]
    13080 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13082 MOVE                             R19 R0
    13083 GETTABLEKS                       R20 R2 K14 ["userId"]
    13085 CALL                             R19 1 1
    13086 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13088 LOADK                            R19 K37 ["Universe"]
    13089 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13091 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13093 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13095 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13097 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13099 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13101 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13103 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13105 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13107 RETURN                           R18 1
    13108 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13110 JUMPIFNOTEQKN                    R18 K546 [117] ; [+121]
    13112 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13113 GETTABLEKS                       R19 R2 K19 ["id"]
    13115 SETTABLEKS                       R19 R18 K19 ["id"]
    13117 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13118 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13120 LOADK                            R19 K205 ["Update"]
    13121 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13123 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13125 GETIMPORT                        R21 K34 [pcall]
    13127 NEWCLOSURE                       R22 P6
    13128 CAPTURE                          VAL R20
    13129 CAPTURE                          VAL R3
    13130 CALL                             R21 1 2
    13131 JUMPIFNOT                        R21 ; [+2]
    13132 MOVE                             R19 R22
    13133 JUMP                             ; [+1]
    13134 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13135 SETTABLEKS                       R19 R18 K21 ["date"]
    13137 MOVE                             R19 R12
    13138 LOADK                            R20 K36 ["Description.Init"]
    13139 DUPTABLE                         R21 K539 [{"thumbnailName"}]
    13140 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13142 JUMPIFNOT                        R24 ; [+5]
    13143 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13145 GETTABLEKS                       R23 R24 K257 ["ThumbnailName"]
    13147 JUMPIF                           R23 ; [+1]
    13148 LOADK                            R23 K43 [""]
    13149 LOADK                            R24 K43 [""]
    13150 FASTCALL1                        TOSTRING R23 ; [+3]
    13151 MOVE                             R28 R23
    13152 GETIMPORT                        R27 K4 [tostring]
    13154 CALL                             R27 1 1
    13155 MOVE                             R25 R27
    13156 LOADK                            R26 K43 [""]
    13157 CONCAT                           R22 R24 R26
    13158 SETTABLEKS                       R22 R21 K255 ["thumbnailName"]
    13160 CALL                             R19 2 1
    13161 SETTABLEKS                       R19 R18 K22 ["translation"]
    13163 GETTABLEKS                       R19 R2 K14 ["userId"]
    13165 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13167 MOVE                             R19 R0
    13168 GETTABLEKS                       R20 R2 K14 ["userId"]
    13170 CALL                             R19 1 1
    13171 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13173 LOADK                            R19 K205 ["Update"]
    13174 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13176 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13178 ORK                              R19 R20 K18 [0]
    13179 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13181 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13183 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13185 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13187 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13189 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13191 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13193 LOADK                            R20 K43 [""]
    13194 FASTCALL1                        TOSTRING R4 ; [+3]
    13195 MOVE                             R26 R4
    13196 GETIMPORT                        R25 K4 [tostring]
    13198 CALL                             R25 1 1
    13199 MOVE                             R21 R25
    13200 LOADK                            R22 K5 ["/places/"]
    13201 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13203 FASTCALL1                        TOSTRING R26 ; [+2]
    13204 GETIMPORT                        R25 K4 [tostring]
    13206 CALL                             R25 1 1
    13207 MOVE                             R23 R25
    13208 LOADK                            R24 K28 ["footerText"]
    13209 CONCAT                           R19 R20 R24
    13210 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13212 LOADK                            R20 K43 [""]
    13213 GETUPVAL                         R26 1
    13214 FASTCALL1                        TOSTRING R26 ; [+2]
    13215 GETIMPORT                        R25 K4 [tostring]
    13217 CALL                             R25 1 1
    13218 MOVE                             R21 R25
    13219 LOADK                            R22 K208 ["SupportedLanguages"]
    13220 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13222 FASTCALL1                        TOSTRING R26 ; [+2]
    13223 GETIMPORT                        R25 K4 [tostring]
    13225 CALL                             R25 1 1
    13226 MOVE                             R23 R25
    13227 LOADK                            R24 K43 [""]
    13228 CONCAT                           R19 R20 R24
    13229 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13231 RETURN                           R18 1
    13232 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13234 JUMPIFNOTEQKN                    R18 K549 [118] ; [+113]
    13236 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13237 GETTABLEKS                       R19 R2 K19 ["id"]
    13239 SETTABLEKS                       R19 R18 K19 ["id"]
    13241 LOADK                            R19 K38 [1]
    13242 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13244 LOADK                            R19 K39 ["ArchivedExperience"]
    13245 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13247 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13249 GETIMPORT                        R21 K34 [pcall]
    13251 NEWCLOSURE                       R22 P6
    13252 CAPTURE                          VAL R20
    13253 CAPTURE                          VAL R3
    13254 CALL                             R21 1 2
    13255 JUMPIFNOT                        R21 ; [+2]
    13256 MOVE                             R19 R22
    13257 JUMP                             ; [+1]
    13258 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13259 SETTABLEKS                       R19 R18 K21 ["date"]
    13261 MOVE                             R19 R12
    13262 LOADK                            R20 K40 ["Experience"]
    13263 DUPTABLE                         R21 K499 [{"placeName"}]
    13264 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13266 JUMPIFNOT                        R24 ; [+5]
    13267 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13269 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13271 JUMPIF                           R23 ; [+1]
    13272 LOADK                            R23 K43 [""]
    13273 LOADK                            R24 K43 [""]
    13274 FASTCALL1                        TOSTRING R23 ; [+3]
    13275 MOVE                             R28 R23
    13276 GETIMPORT                        R27 K4 [tostring]
    13278 CALL                             R27 1 1
    13279 MOVE                             R25 R27
    13280 LOADK                            R26 K43 [""]
    13281 CONCAT                           R22 R24 R26
    13282 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13284 CALL                             R19 2 1
    13285 SETTABLEKS                       R19 R18 K22 ["translation"]
    13287 GETTABLEKS                       R19 R2 K14 ["userId"]
    13289 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13291 MOVE                             R19 R0
    13292 GETTABLEKS                       R20 R2 K14 ["userId"]
    13294 CALL                             R19 1 1
    13295 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13297 LOADK                            R19 K205 ["Update"]
    13298 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13300 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13302 ORK                              R19 R20 K18 [0]
    13303 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13305 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13307 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13309 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13311 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13313 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13315 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13317 LOADK                            R20 K43 [""]
    13318 FASTCALL1                        TOSTRING R4 ; [+3]
    13319 MOVE                             R24 R4
    13320 GETIMPORT                        R23 K4 [tostring]
    13322 CALL                             R23 1 1
    13323 MOVE                             R21 R23
    13324 LOADK                            R22 K41 ["metaData"]
    13325 CONCAT                           R19 R20 R22
    13326 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13328 LOADK                            R20 K43 [""]
    13329 GETUPVAL                         R26 1
    13330 FASTCALL1                        TOSTRING R26 ; [+2]
    13331 GETIMPORT                        R25 K4 [tostring]
    13333 CALL                             R25 1 1
    13334 MOVE                             R21 R25
    13335 LOADK                            R22 K208 ["SupportedLanguages"]
    13336 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13338 FASTCALL1                        TOSTRING R26 ; [+2]
    13339 GETIMPORT                        R25 K4 [tostring]
    13341 CALL                             R25 1 1
    13342 MOVE                             R23 R25
    13343 LOADK                            R24 K43 [""]
    13344 CONCAT                           R19 R20 R24
    13345 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13347 RETURN                           R18 1
    13348 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13350 JUMPIFNOTEQKN                    R18 K554 [119] ; [+113]
    13352 DUPTABLE                         R18 K234 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewOnRobloxLink"}]
    13353 GETTABLEKS                       R19 R2 K19 ["id"]
    13355 SETTABLEKS                       R19 R18 K19 ["id"]
    13357 LOADK                            R19 K43 [""]
    13358 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13360 LOADK                            R19 K39 ["ArchivedExperience"]
    13361 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13363 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13365 GETIMPORT                        R21 K34 [pcall]
    13367 NEWCLOSURE                       R22 P6
    13368 CAPTURE                          VAL R20
    13369 CAPTURE                          VAL R3
    13370 CALL                             R21 1 2
    13371 JUMPIFNOT                        R21 ; [+2]
    13372 MOVE                             R19 R22
    13373 JUMP                             ; [+1]
    13374 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13375 SETTABLEKS                       R19 R18 K21 ["date"]
    13377 MOVE                             R19 R12
    13378 LOADK                            R20 K44 ["string"]
    13379 DUPTABLE                         R21 K499 [{"placeName"}]
    13380 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13382 JUMPIFNOT                        R24 ; [+5]
    13383 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13385 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13387 JUMPIF                           R23 ; [+1]
    13388 LOADK                            R23 K43 [""]
    13389 LOADK                            R24 K43 [""]
    13390 FASTCALL1                        TOSTRING R23 ; [+3]
    13391 MOVE                             R28 R23
    13392 GETIMPORT                        R27 K4 [tostring]
    13394 CALL                             R27 1 1
    13395 MOVE                             R25 R27
    13396 LOADK                            R26 K43 [""]
    13397 CONCAT                           R22 R24 R26
    13398 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13400 CALL                             R19 2 1
    13401 SETTABLEKS                       R19 R18 K22 ["translation"]
    13403 GETTABLEKS                       R19 R2 K14 ["userId"]
    13405 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13407 MOVE                             R19 R0
    13408 GETTABLEKS                       R20 R2 K14 ["userId"]
    13410 CALL                             R19 1 1
    13411 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13413 LOADK                            R19 K205 ["Update"]
    13414 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13416 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13418 ORK                              R19 R20 K18 [0]
    13419 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13421 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13423 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13425 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13427 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13429 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13431 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13433 LOADK                            R20 K43 [""]
    13434 FASTCALL1                        TOSTRING R4 ; [+3]
    13435 MOVE                             R24 R4
    13436 GETIMPORT                        R23 K4 [tostring]
    13438 CALL                             R23 1 1
    13439 MOVE                             R21 R23
    13440 LOADK                            R22 K41 ["metaData"]
    13441 CONCAT                           R19 R20 R22
    13442 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13444 LOADK                            R20 K43 [""]
    13445 GETUPVAL                         R26 1
    13446 FASTCALL1                        TOSTRING R26 ; [+2]
    13447 GETIMPORT                        R25 K4 [tostring]
    13449 CALL                             R25 1 1
    13450 MOVE                             R21 R25
    13451 LOADK                            R22 K208 ["SupportedLanguages"]
    13452 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13454 FASTCALL1                        TOSTRING R26 ; [+2]
    13455 GETIMPORT                        R25 K4 [tostring]
    13457 CALL                             R25 1 1
    13458 MOVE                             R23 R25
    13459 LOADK                            R24 K43 [""]
    13460 CONCAT                           R19 R20 R24
    13461 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13463 RETURN                           R18 1
    13464 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13466 JUMPIFNOTEQKN                    R18 K557 [120] ; [+117]
    13468 DUPTABLE                         R18 K369 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewOnRobloxLink"}]
    13469 GETTABLEKS                       R19 R2 K19 ["id"]
    13471 SETTABLEKS                       R19 R18 K19 ["id"]
    13473 LOADK                            R19 K46 [string.lower]
    13474 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13476 LOADK                            R19 K39 ["ArchivedExperience"]
    13477 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13479 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13481 GETIMPORT                        R21 K34 [pcall]
    13483 NEWCLOSURE                       R22 P6
    13484 CAPTURE                          VAL R20
    13485 CAPTURE                          VAL R3
    13486 CALL                             R21 1 2
    13487 JUMPIFNOT                        R21 ; [+2]
    13488 MOVE                             R19 R22
    13489 JUMP                             ; [+1]
    13490 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13491 SETTABLEKS                       R19 R18 K21 ["date"]
    13493 MOVE                             R19 R12
    13494 LOADK                            R20 K47 ["true"]
    13495 DUPTABLE                         R21 K560 [{"placeName", "newVersion"}]
    13496 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13498 JUMPIFNOT                        R24 ; [+5]
    13499 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13501 GETTABLEKS                       R23 R24 K490 ["PlaceName"]
    13503 JUMPIF                           R23 ; [+1]
    13504 LOADK                            R23 K43 [""]
    13505 LOADK                            R24 K43 [""]
    13506 FASTCALL1                        TOSTRING R23 ; [+3]
    13507 MOVE                             R28 R23
    13508 GETIMPORT                        R27 K4 [tostring]
    13510 CALL                             R27 1 1
    13511 MOVE                             R25 R27
    13512 LOADK                            R26 K43 [""]
    13513 CONCAT                           R22 R24 R26
    13514 SETTABLEKS                       R22 R21 K488 ["placeName"]
    13516 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13518 JUMPIFNOT                        R24 ; [+5]
    13519 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13521 GETTABLEKS                       R23 R24 K528 ["NewVersion"]
    13523 JUMPIF                           R23 ; [+1]
    13524 LOADK                            R23 K43 [""]
    13525 FASTCALL1                        TOSTRING R23 ; [+2]
    13526 GETIMPORT                        R22 K4 [tostring]
    13528 CALL                             R22 1 1
    13529 SETTABLEKS                       R22 R21 K525 ["newVersion"]
    13531 CALL                             R19 2 1
    13532 SETTABLEKS                       R19 R18 K22 ["translation"]
    13534 GETTABLEKS                       R19 R2 K14 ["userId"]
    13536 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13538 MOVE                             R19 R0
    13539 GETTABLEKS                       R20 R2 K14 ["userId"]
    13541 CALL                             R19 1 1
    13542 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13544 LOADK                            R19 K205 ["Update"]
    13545 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13547 GETTABLEKS                       R20 R2 K6 ["placeId"]
    13549 ORK                              R19 R20 K18 [0]
    13550 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13552 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13554 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13556 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13558 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13560 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13562 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13564 LOADK                            R20 K43 [""]
    13565 GETUPVAL                         R26 1
    13566 FASTCALL1                        TOSTRING R26 ; [+2]
    13567 GETIMPORT                        R25 K4 [tostring]
    13569 CALL                             R25 1 1
    13570 MOVE                             R21 R25
    13571 LOADK                            R22 K208 ["SupportedLanguages"]
    13572 GETTABLEKS                       R26 R2 K6 ["placeId"]
    13574 FASTCALL1                        TOSTRING R26 ; [+2]
    13575 GETIMPORT                        R25 K4 [tostring]
    13577 CALL                             R25 1 1
    13578 MOVE                             R23 R25
    13579 LOADK                            R24 K43 [""]
    13580 CONCAT                           R19 R20 R24
    13581 SETTABLEKS                       R19 R18 K233 ["viewOnRobloxLink"]
    13583 RETURN                           R18 1
    13584 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13586 JUMPIFNOTEQKN                    R18 K561 [121] ; [+72]
    13588 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13589 GETTABLEKS                       R19 R2 K19 ["id"]
    13591 SETTABLEKS                       R19 R18 K19 ["id"]
    13593 LOADK                            R19 K50 [2]
    13594 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13596 LOADK                            R19 K40 ["Experience"]
    13597 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13599 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13601 GETIMPORT                        R21 K34 [pcall]
    13603 NEWCLOSURE                       R22 P6
    13604 CAPTURE                          VAL R20
    13605 CAPTURE                          VAL R3
    13606 CALL                             R21 1 2
    13607 JUMPIFNOT                        R21 ; [+2]
    13608 MOVE                             R19 R22
    13609 JUMP                             ; [+1]
    13610 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13611 SETTABLEKS                       R19 R18 K21 ["date"]
    13613 MOVE                             R19 R12
    13614 LOADK                            R20 K51 ["viewBasicSettingsLink"]
    13615 CALL                             R19 1 1
    13616 SETTABLEKS                       R19 R18 K22 ["translation"]
    13618 GETTABLEKS                       R19 R2 K14 ["userId"]
    13620 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13622 MOVE                             R19 R0
    13623 GETTABLEKS                       R20 R2 K14 ["userId"]
    13625 CALL                             R19 1 1
    13626 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13628 LOADK                            R19 K37 ["Universe"]
    13629 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13631 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13633 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13635 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13637 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13639 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13641 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13643 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13645 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13647 LOADK                            R20 K43 [""]
    13648 FASTCALL1                        TOSTRING R4 ; [+3]
    13649 MOVE                             R24 R4
    13650 GETIMPORT                        R23 K4 [tostring]
    13652 CALL                             R23 1 1
    13653 MOVE                             R21 R23
    13654 LOADK                            R22 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13655 CONCAT                           R19 R20 R22
    13656 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13658 RETURN                           R18 1
    13659 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13661 JUMPIFNOTEQKN                    R18 K565 [122] ; [+114]
    13663 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13664 GETTABLEKS                       R19 R2 K19 ["id"]
    13666 SETTABLEKS                       R19 R18 K19 ["id"]
    13668 LOADK                            R19 K54 ["Description.PlayabilityChanged"]
    13669 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13671 LOADK                            R19 K88 [8]
    13672 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13674 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13676 GETIMPORT                        R21 K34 [pcall]
    13678 NEWCLOSURE                       R22 P6
    13679 CAPTURE                          VAL R20
    13680 CAPTURE                          VAL R3
    13681 CALL                             R21 1 2
    13682 JUMPIFNOT                        R21 ; [+2]
    13683 MOVE                             R19 R22
    13684 JUMP                             ; [+1]
    13685 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13686 SETTABLEKS                       R19 R18 K21 ["date"]
    13688 MOVE                             R19 R12
    13689 LOADK                            R20 K55 ["playability"]
    13690 DUPTABLE                         R21 K139 [{"action"}]
    13691 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13693 JUMPIFNOT                        R26 ; [+5]
    13694 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13696 GETTABLEKS                       R25 R26 K42 ["Action"]
    13698 JUMPIF                           R25 ; [+1]
    13699 LOADK                            R25 K43 [""]
    13700 GETIMPORT                        R26 K46 [string.lower]
    13702 FASTCALL1                        TOSTRING R25 ; [+3]
    13703 MOVE                             R28 R25
    13704 GETIMPORT                        R27 K4 [tostring]
    13706 CALL                             R27 1 1
    13707 CALL                             R26 1 1
    13708 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    13710 LOADB                            R24 1
    13711 JUMP                             ; [+1]
    13712 LOADB                            R24 0
    13713 JUMPIFNOT                        R24 ; [+4]
    13714 MOVE                             R23 R12
    13715 LOADK                            R24 K140 ["Description.ActionEnabled"]
    13716 CALL                             R23 1 1
    13717 JUMPIF                           R23 ; [+3]
    13718 MOVE                             R23 R12
    13719 LOADK                            R24 K141 ["Description.ActionDisabled"]
    13720 CALL                             R23 1 1
    13721 LOADK                            R24 K43 [""]
    13722 FASTCALL1                        TOSTRING R23 ; [+3]
    13723 MOVE                             R28 R23
    13724 GETIMPORT                        R27 K4 [tostring]
    13726 CALL                             R27 1 1
    13727 MOVE                             R25 R27
    13728 LOADK                            R26 K43 [""]
    13729 CONCAT                           R22 R24 R26
    13730 SETTABLEKS                       R22 R21 K138 ["action"]
    13732 CALL                             R19 2 1
    13733 SETTABLEKS                       R19 R18 K22 ["translation"]
    13735 GETTABLEKS                       R19 R2 K14 ["userId"]
    13737 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13739 MOVE                             R19 R0
    13740 GETTABLEKS                       R20 R2 K14 ["userId"]
    13742 CALL                             R19 1 1
    13743 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13745 LOADK                            R19 K37 ["Universe"]
    13746 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13748 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13750 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13752 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13754 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13756 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13758 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13760 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13762 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13764 LOADK                            R20 K43 [""]
    13765 FASTCALL1                        TOSTRING R4 ; [+3]
    13766 MOVE                             R24 R4
    13767 GETIMPORT                        R23 K4 [tostring]
    13769 CALL                             R23 1 1
    13770 MOVE                             R21 R23
    13771 LOADK                            R22 K94 [9]
    13772 CONCAT                           R19 R20 R22
    13773 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13775 RETURN                           R18 1
    13776 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13778 JUMPIFNOTEQKN                    R18 K568 [123] ; [+114]
    13780 DUPTABLE                         R18 K52 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink"}]
    13781 GETTABLEKS                       R19 R2 K19 ["id"]
    13783 SETTABLEKS                       R19 R18 K19 ["id"]
    13785 LOADK                            R19 K57 ["Playability"]
    13786 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13788 LOADK                            R19 K40 ["Experience"]
    13789 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13791 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13793 GETIMPORT                        R21 K34 [pcall]
    13795 NEWCLOSURE                       R22 P6
    13796 CAPTURE                          VAL R20
    13797 CAPTURE                          VAL R3
    13798 CALL                             R21 1 2
    13799 JUMPIFNOT                        R21 ; [+2]
    13800 MOVE                             R19 R22
    13801 JUMP                             ; [+1]
    13802 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13803 SETTABLEKS                       R19 R18 K21 ["date"]
    13805 MOVE                             R19 R12
    13806 LOADK                            R20 K58 ["Public"]
    13807 DUPTABLE                         R21 K139 [{"action"}]
    13808 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13810 JUMPIFNOT                        R26 ; [+5]
    13811 GETTABLEKS                       R26 R2 K41 ["metaData"]
    13813 GETTABLEKS                       R25 R26 K42 ["Action"]
    13815 JUMPIF                           R25 ; [+1]
    13816 LOADK                            R25 K43 [""]
    13817 GETIMPORT                        R26 K46 [string.lower]
    13819 FASTCALL1                        TOSTRING R25 ; [+3]
    13820 MOVE                             R28 R25
    13821 GETIMPORT                        R27 K4 [tostring]
    13823 CALL                             R27 1 1
    13824 CALL                             R26 1 1
    13825 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    13827 LOADB                            R24 1
    13828 JUMP                             ; [+1]
    13829 LOADB                            R24 0
    13830 JUMPIFNOT                        R24 ; [+4]
    13831 MOVE                             R23 R12
    13832 LOADK                            R24 K140 ["Description.ActionEnabled"]
    13833 CALL                             R23 1 1
    13834 JUMPIF                           R23 ; [+3]
    13835 MOVE                             R23 R12
    13836 LOADK                            R24 K141 ["Description.ActionDisabled"]
    13837 CALL                             R23 1 1
    13838 LOADK                            R24 K43 [""]
    13839 FASTCALL1                        TOSTRING R23 ; [+3]
    13840 MOVE                             R28 R23
    13841 GETIMPORT                        R27 K4 [tostring]
    13843 CALL                             R27 1 1
    13844 MOVE                             R25 R27
    13845 LOADK                            R26 K43 [""]
    13846 CONCAT                           R22 R24 R26
    13847 SETTABLEKS                       R22 R21 K138 ["action"]
    13849 CALL                             R19 2 1
    13850 SETTABLEKS                       R19 R18 K22 ["translation"]
    13852 GETTABLEKS                       R19 R2 K14 ["userId"]
    13854 SETTABLEKS                       R19 R18 K23 ["actorId"]
    13856 MOVE                             R19 R0
    13857 GETTABLEKS                       R20 R2 K14 ["userId"]
    13859 CALL                             R19 1 1
    13860 SETTABLEKS                       R19 R18 K24 ["actorName"]
    13862 LOADK                            R19 K37 ["Universe"]
    13863 SETTABLEKS                       R19 R18 K25 ["iconType"]
    13865 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13867 SETTABLEKS                       R19 R18 K26 ["iconId"]
    13869 GETTABLEKS                       R19 R2 K2 ["universeId"]
    13871 SETTABLEKS                       R19 R18 K2 ["universeId"]
    13873 GETTABLEKS                       R19 R2 K27 ["headerText"]
    13875 SETTABLEKS                       R19 R18 K27 ["headerText"]
    13877 GETTABLEKS                       R19 R2 K28 ["footerText"]
    13879 SETTABLEKS                       R19 R18 K28 ["footerText"]
    13881 LOADK                            R20 K43 [""]
    13882 FASTCALL1                        TOSTRING R4 ; [+3]
    13883 MOVE                             R24 R4
    13884 GETIMPORT                        R23 K4 [tostring]
    13886 CALL                             R23 1 1
    13887 MOVE                             R21 R23
    13888 LOADK                            R22 K11 ["/configure"]
    13889 CONCAT                           R19 R20 R22
    13890 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    13892 RETURN                           R18 1
    13893 GETTABLEKS                       R18 R2 K17 ["eventType"]
    13895 JUMPIFNOTEQKN                    R18 K571 [124] ; [+162]
    13897 DUPTABLE                         R18 K573 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText"}]
    13898 GETTABLEKS                       R19 R2 K19 ["id"]
    13900 SETTABLEKS                       R19 R18 K19 ["id"]
    13902 LOADK                            R19 K62 ["Description.ActionFriends"]
    13903 SETTABLEKS                       R19 R18 K17 ["eventType"]
    13905 LOADK                            R19 K63 [3]
    13906 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    13908 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    13910 GETIMPORT                        R21 K34 [pcall]
    13912 NEWCLOSURE                       R22 P6
    13913 CAPTURE                          VAL R20
    13914 CAPTURE                          VAL R3
    13915 CALL                             R21 1 2
    13916 JUMPIFNOT                        R21 ; [+2]
    13917 MOVE                             R19 R22
    13918 JUMP                             ; [+1]
    13919 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    13920 SETTABLEKS                       R19 R18 K21 ["date"]
    13922 MOVE                             R19 R12
    13923 LOADK                            R20 K64 ["NotificationStringCreated"]
    13924 DUPTABLE                         R21 K581 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    13925 GETTABLEKS                       R25 R2 K41 ["metaData"]
    13927 JUMPIFNOT                        R25 ; [+5]
    13928 GETTABLEKS                       R25 R2 K41 ["metaData"]
    13930 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    13932 JUMPIF                           R24 ; [+1]
    13933 LOADK                            R24 K43 [""]
    13934 LOADK                            R25 K43 [""]
    13935 FASTCALL1                        TOSTRING R24 ; [+3]
    13936 MOVE                             R29 R24
    13937 GETIMPORT                        R28 K4 [tostring]
    13939 CALL                             R28 1 1
    13940 MOVE                             R26 R28
    13941 LOADK                            R27 K43 [""]
    13942 CONCAT                           R23 R25 R27
    13943 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    13945 GETGLOBAL                        R25 K583 ["getLink"]
    13947 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    13948 MOVE                             R27 R24
    13949 CALL                             R25 2 1
    13950 JUMPIFNOTEQKNIL                  R25 ; [+3]
    13952 MOVE                             R22 R23
    13953 JUMP                             ; [+7]
    13954 LOADK                            R26 K73 [5]
    13955 MOVE                             R27 R23
    13956 LOADK                            R28 K74 ["NotificationStringUpdated"]
    13957 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    13958 MOVE                             R30 R25
    13959 LOADK                            R31 K76 [6]
    13960 CONCAT                           R22 R26 R31
    13961 SETTABLEKS                       R22 R21 K577 ["packageName"]
    13963 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13965 JUMPIFNOT                        R24 ; [+5]
    13966 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13968 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    13970 JUMPIF                           R23 ; [+1]
    13971 LOADK                            R23 K43 [""]
    13972 MOVE                             R26 R23
    13973 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    13975 CALL                             R24 2 1
    13976 MOVE                             R22 R24
    13977 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    13979 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13981 JUMPIFNOT                        R24 ; [+5]
    13982 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13984 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    13986 JUMPIF                           R23 ; [+1]
    13987 LOADK                            R23 K43 [""]
    13988 MOVE                             R26 R23
    13989 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    13991 CALL                             R24 2 1
    13992 MOVE                             R22 R24
    13993 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    13995 GETTABLEKS                       R24 R2 K41 ["metaData"]
    13997 JUMPIFNOT                        R24 ; [+5]
    13998 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14000 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14002 JUMPIF                           R23 ; [+1]
    14003 LOADK                            R23 K43 [""]
    14004 MOVE                             R26 R23
    14005 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14007 CALL                             R24 2 1
    14008 MOVE                             R22 R24
    14009 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14011 CALL                             R19 2 1
    14012 SETTABLEKS                       R19 R18 K22 ["translation"]
    14014 GETTABLEKS                       R19 R2 K14 ["userId"]
    14016 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14018 MOVE                             R19 R0
    14019 GETTABLEKS                       R20 R2 K14 ["userId"]
    14021 CALL                             R19 1 1
    14022 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14024 LOADK                            R19 K63 [3]
    14025 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14027 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14029 ORK                              R19 R20 K18 [0]
    14030 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14032 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14034 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14036 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14038 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14040 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14042 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14044 GETGLOBAL                        R19 K583 ["getLink"]
    14046 LOADK                            R20 K81 ["AvatarType"]
    14047 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14049 CALL                             R19 2 1
    14050 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14052 MOVE                             R19 R12
    14053 LOADK                            R20 K82 [7]
    14054 CALL                             R19 1 1
    14055 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14057 RETURN                           R18 1
    14058 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14060 JUMPIFNOTEQKN                    R18 K595 [125] ; [+172]
    14062 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14063 GETTABLEKS                       R19 R2 K19 ["id"]
    14065 SETTABLEKS                       R19 R18 K19 ["id"]
    14067 LOADK                            R19 K87 ["Animation"]
    14068 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14070 LOADK                            R19 K63 [3]
    14071 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14073 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14075 GETIMPORT                        R21 K34 [pcall]
    14077 NEWCLOSURE                       R22 P6
    14078 CAPTURE                          VAL R20
    14079 CAPTURE                          VAL R3
    14080 CALL                             R21 1 2
    14081 JUMPIFNOT                        R21 ; [+2]
    14082 MOVE                             R19 R22
    14083 JUMP                             ; [+1]
    14084 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14085 SETTABLEKS                       R19 R18 K21 ["date"]
    14087 MOVE                             R19 R12
    14088 LOADK                            R20 K88 [8]
    14089 DUPTABLE                         R21 K581 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages"}]
    14090 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14092 JUMPIFNOT                        R25 ; [+5]
    14093 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14095 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14097 JUMPIF                           R24 ; [+1]
    14098 LOADK                            R24 K43 [""]
    14099 LOADK                            R25 K43 [""]
    14100 FASTCALL1                        TOSTRING R24 ; [+3]
    14101 MOVE                             R29 R24
    14102 GETIMPORT                        R28 K4 [tostring]
    14104 CALL                             R28 1 1
    14105 MOVE                             R26 R28
    14106 LOADK                            R27 K43 [""]
    14107 CONCAT                           R23 R25 R27
    14108 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14110 GETGLOBAL                        R25 K583 ["getLink"]
    14112 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14113 MOVE                             R27 R24
    14114 CALL                             R25 2 1
    14115 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14117 MOVE                             R22 R23
    14118 JUMP                             ; [+7]
    14119 LOADK                            R26 K73 [5]
    14120 MOVE                             R27 R23
    14121 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14122 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14123 MOVE                             R30 R25
    14124 LOADK                            R31 K76 [6]
    14125 CONCAT                           R22 R26 R31
    14126 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14128 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14130 JUMPIFNOT                        R24 ; [+5]
    14131 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14133 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14135 JUMPIF                           R23 ; [+1]
    14136 LOADK                            R23 K43 [""]
    14137 MOVE                             R26 R23
    14138 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14140 CALL                             R24 2 1
    14141 MOVE                             R22 R24
    14142 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14144 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14146 JUMPIFNOT                        R24 ; [+5]
    14147 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14149 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14151 JUMPIF                           R23 ; [+1]
    14152 LOADK                            R23 K43 [""]
    14153 MOVE                             R26 R23
    14154 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14156 CALL                             R24 2 1
    14157 MOVE                             R22 R24
    14158 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14160 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14162 JUMPIFNOT                        R24 ; [+5]
    14163 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14165 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14167 JUMPIF                           R23 ; [+1]
    14168 LOADK                            R23 K43 [""]
    14169 MOVE                             R26 R23
    14170 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14172 CALL                             R24 2 1
    14173 MOVE                             R22 R24
    14174 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14176 CALL                             R19 2 1
    14177 SETTABLEKS                       R19 R18 K22 ["translation"]
    14179 GETTABLEKS                       R19 R2 K14 ["userId"]
    14181 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14183 MOVE                             R19 R0
    14184 GETTABLEKS                       R20 R2 K14 ["userId"]
    14186 CALL                             R19 1 1
    14187 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14189 LOADK                            R19 K63 [3]
    14190 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14192 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14194 ORK                              R19 R20 K18 [0]
    14195 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14197 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14199 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14201 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14203 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14205 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14207 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14209 GETGLOBAL                        R19 K583 ["getLink"]
    14211 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14212 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14214 CALL                             R19 2 1
    14215 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14217 MOVE                             R19 R12
    14218 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14219 CALL                             R19 1 1
    14220 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14222 MOVE                             R19 R12
    14223 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14224 CALL                             R19 1 1
    14225 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14227 MOVE                             R19 R12
    14228 LOADK                            R20 K91 ["collision"]
    14229 CALL                             R19 1 1
    14230 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14232 RETURN                           R18 1
    14233 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14235 JUMPIFNOTEQKN                    R18 K604 [126] ; [+188]
    14237 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14238 GETTABLEKS                       R19 R2 K19 ["id"]
    14240 SETTABLEKS                       R19 R18 K19 ["id"]
    14242 LOADK                            R19 K93 ["Collision"]
    14243 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14245 LOADK                            R19 K63 [3]
    14246 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14248 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14250 GETIMPORT                        R21 K34 [pcall]
    14252 NEWCLOSURE                       R22 P6
    14253 CAPTURE                          VAL R20
    14254 CAPTURE                          VAL R3
    14255 CALL                             R21 1 2
    14256 JUMPIFNOT                        R21 ; [+2]
    14257 MOVE                             R19 R22
    14258 JUMP                             ; [+1]
    14259 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14260 SETTABLEKS                       R19 R18 K21 ["date"]
    14262 MOVE                             R19 R12
    14263 LOADK                            R20 K94 [9]
    14264 DUPTABLE                         R21 K608 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "failedPackages"}]
    14265 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14267 JUMPIFNOT                        R25 ; [+5]
    14268 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14270 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14272 JUMPIF                           R24 ; [+1]
    14273 LOADK                            R24 K43 [""]
    14274 LOADK                            R25 K43 [""]
    14275 FASTCALL1                        TOSTRING R24 ; [+3]
    14276 MOVE                             R29 R24
    14277 GETIMPORT                        R28 K4 [tostring]
    14279 CALL                             R28 1 1
    14280 MOVE                             R26 R28
    14281 LOADK                            R27 K43 [""]
    14282 CONCAT                           R23 R25 R27
    14283 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14285 GETGLOBAL                        R25 K583 ["getLink"]
    14287 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14288 MOVE                             R27 R24
    14289 CALL                             R25 2 1
    14290 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14292 MOVE                             R22 R23
    14293 JUMP                             ; [+7]
    14294 LOADK                            R26 K73 [5]
    14295 MOVE                             R27 R23
    14296 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14297 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14298 MOVE                             R30 R25
    14299 LOADK                            R31 K76 [6]
    14300 CONCAT                           R22 R26 R31
    14301 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14303 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14305 JUMPIFNOT                        R24 ; [+5]
    14306 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14308 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14310 JUMPIF                           R23 ; [+1]
    14311 LOADK                            R23 K43 [""]
    14312 MOVE                             R26 R23
    14313 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14315 CALL                             R24 2 1
    14316 MOVE                             R22 R24
    14317 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14319 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14321 JUMPIFNOT                        R24 ; [+5]
    14322 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14324 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14326 JUMPIF                           R23 ; [+1]
    14327 LOADK                            R23 K43 [""]
    14328 MOVE                             R26 R23
    14329 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14331 CALL                             R24 2 1
    14332 MOVE                             R22 R24
    14333 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14335 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14337 JUMPIFNOT                        R24 ; [+5]
    14338 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14340 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14342 JUMPIF                           R23 ; [+1]
    14343 LOADK                            R23 K43 [""]
    14344 MOVE                             R26 R23
    14345 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14347 CALL                             R24 2 1
    14348 MOVE                             R22 R24
    14349 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14351 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14353 JUMPIFNOT                        R24 ; [+5]
    14354 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14356 GETTABLEKS                       R23 R24 K609 ["FailedPackages"]
    14358 JUMPIF                           R23 ; [+1]
    14359 LOADK                            R23 K43 [""]
    14360 MOVE                             R26 R23
    14361 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14363 CALL                             R24 2 1
    14364 MOVE                             R22 R24
    14365 SETTABLEKS                       R22 R21 K607 ["failedPackages"]
    14367 CALL                             R19 2 1
    14368 SETTABLEKS                       R19 R18 K22 ["translation"]
    14370 GETTABLEKS                       R19 R2 K14 ["userId"]
    14372 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14374 MOVE                             R19 R0
    14375 GETTABLEKS                       R20 R2 K14 ["userId"]
    14377 CALL                             R19 1 1
    14378 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14380 LOADK                            R19 K63 [3]
    14381 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14383 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14385 ORK                              R19 R20 K18 [0]
    14386 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14388 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14390 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14392 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14394 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14396 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14398 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14400 GETGLOBAL                        R19 K583 ["getLink"]
    14402 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14403 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14405 CALL                             R19 2 1
    14406 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14408 MOVE                             R19 R12
    14409 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14410 CALL                             R19 1 1
    14411 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14413 MOVE                             R19 R12
    14414 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14415 CALL                             R19 1 1
    14416 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14418 MOVE                             R19 R12
    14419 LOADK                            R20 K91 ["collision"]
    14420 CALL                             R19 1 1
    14421 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14423 RETURN                           R18 1
    14424 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14426 JUMPIFNOTEQKN                    R18 K610 [127] ; [+213]
    14428 DUPTABLE                         R18 K598 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "viewBasicSettingsLink", "viewBasicSettingsLinkText", "linkErrorHeader", "linkErrorBody"}]
    14429 GETTABLEKS                       R19 R2 K19 ["id"]
    14431 SETTABLEKS                       R19 R18 K19 ["id"]
    14433 LOADK                            R19 K99 ["Scale"]
    14434 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14436 LOADK                            R19 K63 [3]
    14437 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14439 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14441 GETIMPORT                        R21 K34 [pcall]
    14443 NEWCLOSURE                       R22 P6
    14444 CAPTURE                          VAL R20
    14445 CAPTURE                          VAL R3
    14446 CALL                             R21 1 2
    14447 JUMPIFNOT                        R21 ; [+2]
    14448 MOVE                             R19 R22
    14449 JUMP                             ; [+1]
    14450 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14451 SETTABLEKS                       R19 R18 K21 ["date"]
    14453 MOVE                             R19 R12
    14454 LOADK                            R20 K100 [10]
    14455 DUPTABLE                         R21 K613 [{"packageName", "versionNumber", "numberOfPackages", "totalPackages", "action"}]
    14456 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14458 JUMPIFNOT                        R25 ; [+5]
    14459 GETTABLEKS                       R25 R2 K41 ["metaData"]
    14461 GETTABLEKS                       R24 R25 K582 ["PackageName"]
    14463 JUMPIF                           R24 ; [+1]
    14464 LOADK                            R24 K43 [""]
    14465 LOADK                            R25 K43 [""]
    14466 FASTCALL1                        TOSTRING R24 ; [+3]
    14467 MOVE                             R29 R24
    14468 GETIMPORT                        R28 K4 [tostring]
    14470 CALL                             R28 1 1
    14471 MOVE                             R26 R28
    14472 LOADK                            R27 K43 [""]
    14473 CONCAT                           R23 R25 R27
    14474 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    14476 GETGLOBAL                        R25 K583 ["getLink"]
    14478 LOADK                            R26 K72 ["Description.NotificationStringDeleted"]
    14479 MOVE                             R27 R24
    14480 CALL                             R25 2 1
    14481 JUMPIFNOTEQKNIL                  R25 ; [+3]
    14483 MOVE                             R22 R23
    14484 JUMP                             ; [+7]
    14485 LOADK                            R26 K73 [5]
    14486 MOVE                             R27 R23
    14487 LOADK                            R28 K74 ["NotificationStringUpdated"]
    14488 LOADK                            R29 K75 ["Description.NotificationStringUpdated"]
    14489 MOVE                             R30 R25
    14490 LOADK                            R31 K76 [6]
    14491 CONCAT                           R22 R26 R31
    14492 SETTABLEKS                       R22 R21 K577 ["packageName"]
    14494 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14496 JUMPIFNOT                        R24 ; [+5]
    14497 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14499 GETTABLEKS                       R23 R24 K589 ["VersionNumber"]
    14501 JUMPIF                           R23 ; [+1]
    14502 LOADK                            R23 K43 [""]
    14503 MOVE                             R26 R23
    14504 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14506 CALL                             R24 2 1
    14507 MOVE                             R22 R24
    14508 SETTABLEKS                       R22 R21 K578 ["versionNumber"]
    14510 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14512 JUMPIFNOT                        R24 ; [+5]
    14513 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14515 GETTABLEKS                       R23 R24 K591 ["NumberOfPackages"]
    14517 JUMPIF                           R23 ; [+1]
    14518 LOADK                            R23 K43 [""]
    14519 MOVE                             R26 R23
    14520 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14522 CALL                             R24 2 1
    14523 MOVE                             R22 R24
    14524 SETTABLEKS                       R22 R21 K579 ["numberOfPackages"]
    14526 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14528 JUMPIFNOT                        R24 ; [+5]
    14529 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14531 GETTABLEKS                       R23 R24 K592 ["TotalPackages"]
    14533 JUMPIF                           R23 ; [+1]
    14534 LOADK                            R23 K43 [""]
    14535 MOVE                             R26 R23
    14536 NAMECALL                         R24 R1 K590 ["localizeNumber"]
    14538 CALL                             R24 2 1
    14539 MOVE                             R22 R24
    14540 SETTABLEKS                       R22 R21 K580 ["totalPackages"]
    14542 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14544 JUMPIFNOT                        R26 ; [+5]
    14545 GETTABLEKS                       R26 R2 K41 ["metaData"]
    14547 GETTABLEKS                       R25 R26 K614 ["AutoUpdate"]
    14549 JUMPIF                           R25 ; [+1]
    14550 LOADK                            R25 K43 [""]
    14551 GETIMPORT                        R26 K46 [string.lower]
    14553 FASTCALL1                        TOSTRING R25 ; [+3]
    14554 MOVE                             R28 R25
    14555 GETIMPORT                        R27 K4 [tostring]
    14557 CALL                             R27 1 1
    14558 CALL                             R26 1 1
    14559 JUMPIFNOTEQKS                    R26 K47 ["true"] ; [+3]
    14561 LOADB                            R24 1
    14562 JUMP                             ; [+1]
    14563 LOADB                            R24 0
    14564 JUMPIFNOT                        R24 ; [+4]
    14565 MOVE                             R23 R12
    14566 LOADK                            R24 K140 ["Description.ActionEnabled"]
    14567 CALL                             R23 1 1
    14568 JUMPIF                           R23 ; [+3]
    14569 MOVE                             R23 R12
    14570 LOADK                            R24 K141 ["Description.ActionDisabled"]
    14571 CALL                             R23 1 1
    14572 LOADK                            R24 K43 [""]
    14573 FASTCALL1                        TOSTRING R23 ; [+3]
    14574 MOVE                             R28 R23
    14575 GETIMPORT                        R27 K4 [tostring]
    14577 CALL                             R27 1 1
    14578 MOVE                             R25 R27
    14579 LOADK                            R26 K43 [""]
    14580 CONCAT                           R22 R24 R26
    14581 SETTABLEKS                       R22 R21 K138 ["action"]
    14583 CALL                             R19 2 1
    14584 SETTABLEKS                       R19 R18 K22 ["translation"]
    14586 GETTABLEKS                       R19 R2 K14 ["userId"]
    14588 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14590 MOVE                             R19 R0
    14591 GETTABLEKS                       R20 R2 K14 ["userId"]
    14593 CALL                             R19 1 1
    14594 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14596 LOADK                            R19 K63 [3]
    14597 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14599 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14601 ORK                              R19 R20 K18 [0]
    14602 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14604 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14606 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14608 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14610 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14612 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14614 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14616 GETGLOBAL                        R19 K583 ["getLink"]
    14618 LOADK                            R20 K72 ["Description.NotificationStringDeleted"]
    14619 GETTABLEKS                       R21 R2 K8 ["resourceId"]
    14621 CALL                             R19 2 1
    14622 SETTABLEKS                       R19 R18 K51 ["viewBasicSettingsLink"]
    14624 MOVE                             R19 R12
    14625 LOADK                            R20 K89 ["AvatarSettingsCollision"]
    14626 CALL                             R19 1 1
    14627 SETTABLEKS                       R19 R18 K572 ["viewBasicSettingsLinkText"]
    14629 MOVE                             R19 R12
    14630 LOADK                            R20 K90 ["Description.AvatarSettingsCollision"]
    14631 CALL                             R19 1 1
    14632 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    14634 MOVE                             R19 R12
    14635 LOADK                            R20 K91 ["collision"]
    14636 CALL                             R19 1 1
    14637 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    14639 RETURN                           R18 1
    14640 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14642 JUMPIFNOTEQKN                    R18 K615 [128] ; [+83]
    14644 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14645 GETTABLEKS                       R19 R2 K19 ["id"]
    14647 SETTABLEKS                       R19 R18 K19 ["id"]
    14649 LOADK                            R19 K104 ["AvatarSettingsScaleHead"]
    14650 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14652 LOADK                            R19 K31 ["Unknown"]
    14653 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14655 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14657 GETIMPORT                        R21 K34 [pcall]
    14659 NEWCLOSURE                       R22 P6
    14660 CAPTURE                          VAL R20
    14661 CAPTURE                          VAL R3
    14662 CALL                             R21 1 2
    14663 JUMPIFNOT                        R21 ; [+2]
    14664 MOVE                             R19 R22
    14665 JUMP                             ; [+1]
    14666 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14667 SETTABLEKS                       R19 R18 K21 ["date"]
    14669 MOVE                             R19 R12
    14670 LOADK                            R20 K105 ["Description.AvatarSettingsScaleHead"]
    14671 DUPTABLE                         R21 K619 [{"roleName"}]
    14672 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14674 JUMPIFNOT                        R24 ; [+5]
    14675 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14677 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    14679 JUMPIF                           R23 ; [+1]
    14680 LOADK                            R23 K43 [""]
    14681 LOADK                            R24 K43 [""]
    14682 FASTCALL1                        TOSTRING R23 ; [+3]
    14683 MOVE                             R28 R23
    14684 GETIMPORT                        R27 K4 [tostring]
    14686 CALL                             R27 1 1
    14687 MOVE                             R25 R27
    14688 LOADK                            R26 K43 [""]
    14689 CONCAT                           R22 R24 R26
    14690 SETTABLEKS                       R22 R21 K618 ["roleName"]
    14692 CALL                             R19 2 1
    14693 SETTABLEKS                       R19 R18 K22 ["translation"]
    14695 GETTABLEKS                       R19 R2 K14 ["userId"]
    14697 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14699 MOVE                             R19 R0
    14700 GETTABLEKS                       R20 R2 K14 ["userId"]
    14702 CALL                             R19 1 1
    14703 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14705 LOADK                            R19 K85 ["animation"]
    14706 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14708 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14710 ORK                              R19 R20 K18 [0]
    14711 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14713 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14715 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14717 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14719 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14721 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14723 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14725 RETURN                           R18 1
    14726 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14728 JUMPIFNOTEQKN                    R18 K621 [129] ; [+83]
    14730 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14731 GETTABLEKS                       R19 R2 K19 ["id"]
    14733 SETTABLEKS                       R19 R18 K19 ["id"]
    14735 LOADK                            R19 K110 ["AvatarSettingsScaleProportions"]
    14736 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14738 LOADK                            R19 K31 ["Unknown"]
    14739 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14741 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14743 GETIMPORT                        R21 K34 [pcall]
    14745 NEWCLOSURE                       R22 P6
    14746 CAPTURE                          VAL R20
    14747 CAPTURE                          VAL R3
    14748 CALL                             R21 1 2
    14749 JUMPIFNOT                        R21 ; [+2]
    14750 MOVE                             R19 R22
    14751 JUMP                             ; [+1]
    14752 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14753 SETTABLEKS                       R19 R18 K21 ["date"]
    14755 MOVE                             R19 R12
    14756 LOADK                            R20 K111 ["Description.AvatarSettingsScaleProportions"]
    14757 DUPTABLE                         R21 K619 [{"roleName"}]
    14758 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14760 JUMPIFNOT                        R24 ; [+5]
    14761 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14763 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    14765 JUMPIF                           R23 ; [+1]
    14766 LOADK                            R23 K43 [""]
    14767 LOADK                            R24 K43 [""]
    14768 FASTCALL1                        TOSTRING R23 ; [+3]
    14769 MOVE                             R28 R23
    14770 GETIMPORT                        R27 K4 [tostring]
    14772 CALL                             R27 1 1
    14773 MOVE                             R25 R27
    14774 LOADK                            R26 K43 [""]
    14775 CONCAT                           R22 R24 R26
    14776 SETTABLEKS                       R22 R21 K618 ["roleName"]
    14778 CALL                             R19 2 1
    14779 SETTABLEKS                       R19 R18 K22 ["translation"]
    14781 GETTABLEKS                       R19 R2 K14 ["userId"]
    14783 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14785 MOVE                             R19 R0
    14786 GETTABLEKS                       R20 R2 K14 ["userId"]
    14788 CALL                             R19 1 1
    14789 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14791 LOADK                            R19 K85 ["animation"]
    14792 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14794 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14796 ORK                              R19 R20 K18 [0]
    14797 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14799 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14801 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14803 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14805 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14807 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14809 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14811 RETURN                           R18 1
    14812 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14814 JUMPIFNOTEQKN                    R18 K624 [130] ; [+83]
    14816 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14817 GETTABLEKS                       R19 R2 K19 ["id"]
    14819 SETTABLEKS                       R19 R18 K19 ["id"]
    14821 LOADK                            R19 K113 ["AvatarSettingsBodyParts"]
    14822 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14824 LOADK                            R19 K31 ["Unknown"]
    14825 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14827 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14829 GETIMPORT                        R21 K34 [pcall]
    14831 NEWCLOSURE                       R22 P6
    14832 CAPTURE                          VAL R20
    14833 CAPTURE                          VAL R3
    14834 CALL                             R21 1 2
    14835 JUMPIFNOT                        R21 ; [+2]
    14836 MOVE                             R19 R22
    14837 JUMP                             ; [+1]
    14838 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14839 SETTABLEKS                       R19 R18 K21 ["date"]
    14841 MOVE                             R19 R12
    14842 LOADK                            R20 K114 ["Description.AvatarSettingsBodyParts"]
    14843 DUPTABLE                         R21 K619 [{"roleName"}]
    14844 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14846 JUMPIFNOT                        R24 ; [+5]
    14847 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14849 GETTABLEKS                       R23 R24 K620 ["RoleName"]
    14851 JUMPIF                           R23 ; [+1]
    14852 LOADK                            R23 K43 [""]
    14853 LOADK                            R24 K43 [""]
    14854 FASTCALL1                        TOSTRING R23 ; [+3]
    14855 MOVE                             R28 R23
    14856 GETIMPORT                        R27 K4 [tostring]
    14858 CALL                             R27 1 1
    14859 MOVE                             R25 R27
    14860 LOADK                            R26 K43 [""]
    14861 CONCAT                           R22 R24 R26
    14862 SETTABLEKS                       R22 R21 K618 ["roleName"]
    14864 CALL                             R19 2 1
    14865 SETTABLEKS                       R19 R18 K22 ["translation"]
    14867 GETTABLEKS                       R19 R2 K14 ["userId"]
    14869 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14871 MOVE                             R19 R0
    14872 GETTABLEKS                       R20 R2 K14 ["userId"]
    14874 CALL                             R19 1 1
    14875 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14877 LOADK                            R19 K85 ["animation"]
    14878 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14880 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14882 ORK                              R19 R20 K18 [0]
    14883 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14885 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14887 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14889 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14891 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14893 GETTABLEKS                       R19 R2 K28 ["footerText"]
    14895 SETTABLEKS                       R19 R18 K28 ["footerText"]
    14897 RETURN                           R18 1
    14898 GETTABLEKS                       R18 R2 K17 ["eventType"]
    14900 JUMPIFNOTEQKN                    R18 K627 [131] ; [+103]
    14902 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    14903 GETTABLEKS                       R19 R2 K19 ["id"]
    14905 SETTABLEKS                       R19 R18 K19 ["id"]
    14907 LOADK                            R19 K116 ["AvatarSettingsClothing"]
    14908 SETTABLEKS                       R19 R18 K17 ["eventType"]
    14910 LOADK                            R19 K31 ["Unknown"]
    14911 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    14913 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    14915 GETIMPORT                        R21 K34 [pcall]
    14917 NEWCLOSURE                       R22 P6
    14918 CAPTURE                          VAL R20
    14919 CAPTURE                          VAL R3
    14920 CALL                             R21 1 2
    14921 JUMPIFNOT                        R21 ; [+2]
    14922 MOVE                             R19 R22
    14923 JUMP                             ; [+1]
    14924 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    14925 SETTABLEKS                       R19 R18 K21 ["date"]
    14927 MOVE                             R19 R12
    14928 LOADK                            R20 K117 ["Description.AvatarSettingsClothing"]
    14929 DUPTABLE                         R21 K632 [{"oldRoleName", "newRoleName"}]
    14930 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14932 JUMPIFNOT                        R24 ; [+5]
    14933 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14935 GETTABLEKS                       R23 R24 K633 ["OldRoleName"]
    14937 JUMPIF                           R23 ; [+1]
    14938 LOADK                            R23 K43 [""]
    14939 LOADK                            R24 K43 [""]
    14940 FASTCALL1                        TOSTRING R23 ; [+3]
    14941 MOVE                             R28 R23
    14942 GETIMPORT                        R27 K4 [tostring]
    14944 CALL                             R27 1 1
    14945 MOVE                             R25 R27
    14946 LOADK                            R26 K43 [""]
    14947 CONCAT                           R22 R24 R26
    14948 SETTABLEKS                       R22 R21 K630 ["oldRoleName"]
    14950 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14952 JUMPIFNOT                        R24 ; [+5]
    14953 GETTABLEKS                       R24 R2 K41 ["metaData"]
    14955 GETTABLEKS                       R23 R24 K634 ["NewRoleName"]
    14957 JUMPIF                           R23 ; [+1]
    14958 LOADK                            R23 K43 [""]
    14959 LOADK                            R24 K43 [""]
    14960 FASTCALL1                        TOSTRING R23 ; [+3]
    14961 MOVE                             R28 R23
    14962 GETIMPORT                        R27 K4 [tostring]
    14964 CALL                             R27 1 1
    14965 MOVE                             R25 R27
    14966 LOADK                            R26 K43 [""]
    14967 CONCAT                           R22 R24 R26
    14968 SETTABLEKS                       R22 R21 K631 ["newRoleName"]
    14970 CALL                             R19 2 1
    14971 SETTABLEKS                       R19 R18 K22 ["translation"]
    14973 GETTABLEKS                       R19 R2 K14 ["userId"]
    14975 SETTABLEKS                       R19 R18 K23 ["actorId"]
    14977 MOVE                             R19 R0
    14978 GETTABLEKS                       R20 R2 K14 ["userId"]
    14980 CALL                             R19 1 1
    14981 SETTABLEKS                       R19 R18 K24 ["actorName"]
    14983 LOADK                            R19 K85 ["animation"]
    14984 SETTABLEKS                       R19 R18 K25 ["iconType"]
    14986 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    14988 ORK                              R19 R20 K18 [0]
    14989 SETTABLEKS                       R19 R18 K26 ["iconId"]
    14991 GETTABLEKS                       R19 R2 K2 ["universeId"]
    14993 SETTABLEKS                       R19 R18 K2 ["universeId"]
    14995 GETTABLEKS                       R19 R2 K27 ["headerText"]
    14997 SETTABLEKS                       R19 R18 K27 ["headerText"]
    14999 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15001 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15003 RETURN                           R18 1
    15004 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15006 JUMPIFNOTEQKN                    R18 K635 [132] ; [+78]
    15008 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15009 GETTABLEKS                       R19 R2 K19 ["id"]
    15011 SETTABLEKS                       R19 R18 K19 ["id"]
    15013 LOADK                            R19 K124 ["NewName"]
    15014 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15016 LOADK                            R19 K31 ["Unknown"]
    15017 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15019 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15021 GETIMPORT                        R21 K34 [pcall]
    15023 NEWCLOSURE                       R22 P6
    15024 CAPTURE                          VAL R20
    15025 CAPTURE                          VAL R3
    15026 CALL                             R21 1 2
    15027 JUMPIFNOT                        R21 ; [+2]
    15028 MOVE                             R19 R22
    15029 JUMP                             ; [+1]
    15030 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15031 SETTABLEKS                       R19 R18 K21 ["date"]
    15033 MOVE                             R19 R12
    15034 LOADK                            R20 K125 ["OldName"]
    15035 DUPTABLE                         R21 K333 [{"userName"}]
    15036 MOVE                             R23 R0
    15037 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15039 CALL                             R23 1 1
    15040 LOADK                            R24 K43 [""]
    15041 FASTCALL1                        TOSTRING R23 ; [+3]
    15042 MOVE                             R28 R23
    15043 GETIMPORT                        R27 K4 [tostring]
    15045 CALL                             R27 1 1
    15046 MOVE                             R25 R27
    15047 LOADK                            R26 K43 [""]
    15048 CONCAT                           R22 R24 R26
    15049 SETTABLEKS                       R22 R21 K332 ["userName"]
    15051 CALL                             R19 2 1
    15052 SETTABLEKS                       R19 R18 K22 ["translation"]
    15054 GETTABLEKS                       R19 R2 K14 ["userId"]
    15056 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15058 MOVE                             R19 R0
    15059 GETTABLEKS                       R20 R2 K14 ["userId"]
    15061 CALL                             R19 1 1
    15062 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15064 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15065 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15067 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15069 ORK                              R19 R20 K18 [0]
    15070 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15072 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15074 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15076 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15078 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15080 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15082 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15084 RETURN                           R18 1
    15085 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15087 JUMPIFNOTEQKN                    R18 K638 [133] ; [+78]
    15089 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15090 GETTABLEKS                       R19 R2 K19 ["id"]
    15092 SETTABLEKS                       R19 R18 K19 ["id"]
    15094 LOADK                            R19 K127 ["ExperienceDescription"]
    15095 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15097 LOADK                            R19 K31 ["Unknown"]
    15098 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15100 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15102 GETIMPORT                        R21 K34 [pcall]
    15104 NEWCLOSURE                       R22 P6
    15105 CAPTURE                          VAL R20
    15106 CAPTURE                          VAL R3
    15107 CALL                             R21 1 2
    15108 JUMPIFNOT                        R21 ; [+2]
    15109 MOVE                             R19 R22
    15110 JUMP                             ; [+1]
    15111 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15112 SETTABLEKS                       R19 R18 K21 ["date"]
    15114 MOVE                             R19 R12
    15115 LOADK                            R20 K128 ["Description.ExperienceDescription"]
    15116 DUPTABLE                         R21 K333 [{"userName"}]
    15117 MOVE                             R23 R0
    15118 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15120 CALL                             R23 1 1
    15121 LOADK                            R24 K43 [""]
    15122 FASTCALL1                        TOSTRING R23 ; [+3]
    15123 MOVE                             R28 R23
    15124 GETIMPORT                        R27 K4 [tostring]
    15126 CALL                             R27 1 1
    15127 MOVE                             R25 R27
    15128 LOADK                            R26 K43 [""]
    15129 CONCAT                           R22 R24 R26
    15130 SETTABLEKS                       R22 R21 K332 ["userName"]
    15132 CALL                             R19 2 1
    15133 SETTABLEKS                       R19 R18 K22 ["translation"]
    15135 GETTABLEKS                       R19 R2 K14 ["userId"]
    15137 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15139 MOVE                             R19 R0
    15140 GETTABLEKS                       R20 R2 K14 ["userId"]
    15142 CALL                             R19 1 1
    15143 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15145 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15146 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15148 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15150 ORK                              R19 R20 K18 [0]
    15151 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15153 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15155 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15157 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15159 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15161 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15163 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15165 RETURN                           R18 1
    15166 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15168 JUMPIFNOTEQKN                    R18 K641 [134] ; [+78]
    15170 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15171 GETTABLEKS                       R19 R2 K19 ["id"]
    15173 SETTABLEKS                       R19 R18 K19 ["id"]
    15175 LOADK                            R19 K130 ["ExperienceGenre"]
    15176 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15178 LOADK                            R19 K31 ["Unknown"]
    15179 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15181 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15183 GETIMPORT                        R21 K34 [pcall]
    15185 NEWCLOSURE                       R22 P6
    15186 CAPTURE                          VAL R20
    15187 CAPTURE                          VAL R3
    15188 CALL                             R21 1 2
    15189 JUMPIFNOT                        R21 ; [+2]
    15190 MOVE                             R19 R22
    15191 JUMP                             ; [+1]
    15192 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15193 SETTABLEKS                       R19 R18 K21 ["date"]
    15195 MOVE                             R19 R12
    15196 LOADK                            R20 K131 ["Description.ExperienceGenre"]
    15197 DUPTABLE                         R21 K333 [{"userName"}]
    15198 MOVE                             R23 R0
    15199 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15201 CALL                             R23 1 1
    15202 LOADK                            R24 K43 [""]
    15203 FASTCALL1                        TOSTRING R23 ; [+3]
    15204 MOVE                             R28 R23
    15205 GETIMPORT                        R27 K4 [tostring]
    15207 CALL                             R27 1 1
    15208 MOVE                             R25 R27
    15209 LOADK                            R26 K43 [""]
    15210 CONCAT                           R22 R24 R26
    15211 SETTABLEKS                       R22 R21 K332 ["userName"]
    15213 CALL                             R19 2 1
    15214 SETTABLEKS                       R19 R18 K22 ["translation"]
    15216 GETTABLEKS                       R19 R2 K14 ["userId"]
    15218 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15220 MOVE                             R19 R0
    15221 GETTABLEKS                       R20 R2 K14 ["userId"]
    15223 CALL                             R19 1 1
    15224 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15226 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15227 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15229 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15231 ORK                              R19 R20 K18 [0]
    15232 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15234 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15236 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15238 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15240 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15242 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15244 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15246 RETURN                           R18 1
    15247 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15249 JUMPIFNOTEQKN                    R18 K644 [135] ; [+78]
    15251 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15252 GETTABLEKS                       R19 R2 K19 ["id"]
    15254 SETTABLEKS                       R19 R18 K19 ["id"]
    15256 LOADK                            R19 K133 [{"genre"}]
    15257 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15259 LOADK                            R19 K31 ["Unknown"]
    15260 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15262 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15264 GETIMPORT                        R21 K34 [pcall]
    15266 NEWCLOSURE                       R22 P6
    15267 CAPTURE                          VAL R20
    15268 CAPTURE                          VAL R3
    15269 CALL                             R21 1 2
    15270 JUMPIFNOT                        R21 ; [+2]
    15271 MOVE                             R19 R22
    15272 JUMP                             ; [+1]
    15273 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15274 SETTABLEKS                       R19 R18 K21 ["date"]
    15276 MOVE                             R19 R12
    15277 LOADK                            R20 K134 ["Genre"]
    15278 DUPTABLE                         R21 K333 [{"userName"}]
    15279 MOVE                             R23 R0
    15280 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15282 CALL                             R23 1 1
    15283 LOADK                            R24 K43 [""]
    15284 FASTCALL1                        TOSTRING R23 ; [+3]
    15285 MOVE                             R28 R23
    15286 GETIMPORT                        R27 K4 [tostring]
    15288 CALL                             R27 1 1
    15289 MOVE                             R25 R27
    15290 LOADK                            R26 K43 [""]
    15291 CONCAT                           R22 R24 R26
    15292 SETTABLEKS                       R22 R21 K332 ["userName"]
    15294 CALL                             R19 2 1
    15295 SETTABLEKS                       R19 R18 K22 ["translation"]
    15297 GETTABLEKS                       R19 R2 K14 ["userId"]
    15299 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15301 MOVE                             R19 R0
    15302 GETTABLEKS                       R20 R2 K14 ["userId"]
    15304 CALL                             R19 1 1
    15305 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15307 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15308 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15310 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15312 ORK                              R19 R20 K18 [0]
    15313 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15315 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15317 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15319 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15321 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15323 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15325 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15327 RETURN                           R18 1
    15328 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15330 JUMPIFNOTEQKN                    R18 K647 [136] ; [+98]
    15332 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15333 GETTABLEKS                       R19 R2 K19 ["id"]
    15335 SETTABLEKS                       R19 R18 K19 ["id"]
    15337 LOADK                            R19 K136 ["SecuritySettingsHTTPRequests"]
    15338 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15340 LOADK                            R19 K31 ["Unknown"]
    15341 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15343 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15345 GETIMPORT                        R21 K34 [pcall]
    15347 NEWCLOSURE                       R22 P6
    15348 CAPTURE                          VAL R20
    15349 CAPTURE                          VAL R3
    15350 CALL                             R21 1 2
    15351 JUMPIFNOT                        R21 ; [+2]
    15352 MOVE                             R19 R22
    15353 JUMP                             ; [+1]
    15354 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15355 SETTABLEKS                       R19 R18 K21 ["date"]
    15357 MOVE                             R19 R12
    15358 LOADK                            R20 K137 ["Description.SecuritySettingsHTTPRequests"]
    15359 DUPTABLE                         R21 K650 [{"userName", "roleName"}]
    15360 MOVE                             R23 R0
    15361 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15363 CALL                             R23 1 1
    15364 LOADK                            R24 K43 [""]
    15365 FASTCALL1                        TOSTRING R23 ; [+3]
    15366 MOVE                             R28 R23
    15367 GETIMPORT                        R27 K4 [tostring]
    15369 CALL                             R27 1 1
    15370 MOVE                             R25 R27
    15371 LOADK                            R26 K43 [""]
    15372 CONCAT                           R22 R24 R26
    15373 SETTABLEKS                       R22 R21 K332 ["userName"]
    15375 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15377 JUMPIFNOT                        R24 ; [+5]
    15378 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15380 GETTABLEKS                       R23 R24 K618 ["roleName"]
    15382 JUMPIF                           R23 ; [+1]
    15383 LOADK                            R23 K43 [""]
    15384 LOADK                            R24 K43 [""]
    15385 FASTCALL1                        TOSTRING R23 ; [+3]
    15386 MOVE                             R28 R23
    15387 GETIMPORT                        R27 K4 [tostring]
    15389 CALL                             R27 1 1
    15390 MOVE                             R25 R27
    15391 LOADK                            R26 K43 [""]
    15392 CONCAT                           R22 R24 R26
    15393 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15395 CALL                             R19 2 1
    15396 SETTABLEKS                       R19 R18 K22 ["translation"]
    15398 GETTABLEKS                       R19 R2 K14 ["userId"]
    15400 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15402 MOVE                             R19 R0
    15403 GETTABLEKS                       R20 R2 K14 ["userId"]
    15405 CALL                             R19 1 1
    15406 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15408 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15409 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15411 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15413 ORK                              R19 R20 K18 [0]
    15414 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15416 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15418 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15420 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15422 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15424 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15426 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15428 RETURN                           R18 1
    15429 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15431 JUMPIFNOTEQKN                    R18 K651 [137] ; [+98]
    15433 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15434 GETTABLEKS                       R19 R2 K19 ["id"]
    15436 SETTABLEKS                       R19 R18 K19 ["id"]
    15438 LOADK                            R19 K140 ["Description.ActionEnabled"]
    15439 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15441 LOADK                            R19 K31 ["Unknown"]
    15442 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15444 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15446 GETIMPORT                        R21 K34 [pcall]
    15448 NEWCLOSURE                       R22 P6
    15449 CAPTURE                          VAL R20
    15450 CAPTURE                          VAL R3
    15451 CALL                             R21 1 2
    15452 JUMPIFNOT                        R21 ; [+2]
    15453 MOVE                             R19 R22
    15454 JUMP                             ; [+1]
    15455 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15456 SETTABLEKS                       R19 R18 K21 ["date"]
    15458 MOVE                             R19 R12
    15459 LOADK                            R20 K141 ["Description.ActionDisabled"]
    15460 DUPTABLE                         R21 K650 [{"userName", "roleName"}]
    15461 MOVE                             R23 R0
    15462 GETTABLEKS                       R24 R2 K8 ["resourceId"]
    15464 CALL                             R23 1 1
    15465 LOADK                            R24 K43 [""]
    15466 FASTCALL1                        TOSTRING R23 ; [+3]
    15467 MOVE                             R28 R23
    15468 GETIMPORT                        R27 K4 [tostring]
    15470 CALL                             R27 1 1
    15471 MOVE                             R25 R27
    15472 LOADK                            R26 K43 [""]
    15473 CONCAT                           R22 R24 R26
    15474 SETTABLEKS                       R22 R21 K332 ["userName"]
    15476 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15478 JUMPIFNOT                        R24 ; [+5]
    15479 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15481 GETTABLEKS                       R23 R24 K618 ["roleName"]
    15483 JUMPIF                           R23 ; [+1]
    15484 LOADK                            R23 K43 [""]
    15485 LOADK                            R24 K43 [""]
    15486 FASTCALL1                        TOSTRING R23 ; [+3]
    15487 MOVE                             R28 R23
    15488 GETIMPORT                        R27 K4 [tostring]
    15490 CALL                             R27 1 1
    15491 MOVE                             R25 R27
    15492 LOADK                            R26 K43 [""]
    15493 CONCAT                           R22 R24 R26
    15494 SETTABLEKS                       R22 R21 K618 ["roleName"]
    15496 CALL                             R19 2 1
    15497 SETTABLEKS                       R19 R18 K22 ["translation"]
    15499 GETTABLEKS                       R19 R2 K14 ["userId"]
    15501 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15503 MOVE                             R19 R0
    15504 GETTABLEKS                       R20 R2 K14 ["userId"]
    15506 CALL                             R19 1 1
    15507 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15509 LOADK                            R19 K78 ["Description.AvatarSettingsAvatarType"]
    15510 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15512 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15514 ORK                              R19 R20 K18 [0]
    15515 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15517 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15519 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15521 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15523 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15525 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15527 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15529 RETURN                           R18 1
    15530 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15532 JUMPIFNOTEQKN                    R18 K654 [138] ; [+83]
    15534 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15535 GETTABLEKS                       R19 R2 K19 ["id"]
    15537 SETTABLEKS                       R19 R18 K19 ["id"]
    15539 LOADK                            R19 K143 ["SecuritySettingsStudioAccessToAPI"]
    15540 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15542 LOADK                            R19 K31 ["Unknown"]
    15543 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15545 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15547 GETIMPORT                        R21 K34 [pcall]
    15549 NEWCLOSURE                       R22 P6
    15550 CAPTURE                          VAL R20
    15551 CAPTURE                          VAL R3
    15552 CALL                             R21 1 2
    15553 JUMPIFNOT                        R21 ; [+2]
    15554 MOVE                             R19 R22
    15555 JUMP                             ; [+1]
    15556 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15557 SETTABLEKS                       R19 R18 K21 ["date"]
    15559 MOVE                             R19 R12
    15560 LOADK                            R20 K144 ["Description.SecuritySettingsStudioAccessToAPI"]
    15561 DUPTABLE                         R21 K658 [{"groupSettings"}]
    15562 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15564 JUMPIFNOT                        R24 ; [+5]
    15565 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15567 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15569 JUMPIF                           R23 ; [+1]
    15570 LOADK                            R23 K43 [""]
    15571 LOADK                            R24 K43 [""]
    15572 FASTCALL1                        TOSTRING R23 ; [+3]
    15573 MOVE                             R28 R23
    15574 GETIMPORT                        R27 K4 [tostring]
    15576 CALL                             R27 1 1
    15577 MOVE                             R25 R27
    15578 LOADK                            R26 K43 [""]
    15579 CONCAT                           R22 R24 R26
    15580 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15582 CALL                             R19 2 1
    15583 SETTABLEKS                       R19 R18 K22 ["translation"]
    15585 GETTABLEKS                       R19 R2 K14 ["userId"]
    15587 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15589 MOVE                             R19 R0
    15590 GETTABLEKS                       R20 R2 K14 ["userId"]
    15592 CALL                             R19 1 1
    15593 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15595 LOADK                            R19 K85 ["animation"]
    15596 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15598 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15600 ORK                              R19 R20 K18 [0]
    15601 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15603 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15605 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15607 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15609 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15611 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15613 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15615 RETURN                           R18 1
    15616 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15618 JUMPIFNOTEQKN                    R18 K659 [139] ; [+103]
    15620 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15621 GETTABLEKS                       R19 R2 K19 ["id"]
    15623 SETTABLEKS                       R19 R18 K19 ["id"]
    15625 LOADK                            R19 K148 [22]
    15626 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15628 LOADK                            R19 K31 ["Unknown"]
    15629 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15631 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15633 GETIMPORT                        R21 K34 [pcall]
    15635 NEWCLOSURE                       R22 P6
    15636 CAPTURE                          VAL R20
    15637 CAPTURE                          VAL R3
    15638 CALL                             R21 1 2
    15639 JUMPIFNOT                        R21 ; [+2]
    15640 MOVE                             R19 R22
    15641 JUMP                             ; [+1]
    15642 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15643 SETTABLEKS                       R19 R18 K21 ["date"]
    15645 MOVE                             R19 R12
    15646 LOADK                            R20 K149 ["SecuritySettingsThirdPartyTeleports"]
    15647 DUPTABLE                         R21 K663 [{"groupSettings", "newGroupName"}]
    15648 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15650 JUMPIFNOT                        R24 ; [+5]
    15651 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15653 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15655 JUMPIF                           R23 ; [+1]
    15656 LOADK                            R23 K43 [""]
    15657 LOADK                            R24 K43 [""]
    15658 FASTCALL1                        TOSTRING R23 ; [+3]
    15659 MOVE                             R28 R23
    15660 GETIMPORT                        R27 K4 [tostring]
    15662 CALL                             R27 1 1
    15663 MOVE                             R25 R27
    15664 LOADK                            R26 K43 [""]
    15665 CONCAT                           R22 R24 R26
    15666 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15668 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15670 JUMPIFNOT                        R24 ; [+5]
    15671 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15673 GETTABLEKS                       R23 R24 K662 ["newGroupName"]
    15675 JUMPIF                           R23 ; [+1]
    15676 LOADK                            R23 K43 [""]
    15677 LOADK                            R24 K43 [""]
    15678 FASTCALL1                        TOSTRING R23 ; [+3]
    15679 MOVE                             R28 R23
    15680 GETIMPORT                        R27 K4 [tostring]
    15682 CALL                             R27 1 1
    15683 MOVE                             R25 R27
    15684 LOADK                            R26 K43 [""]
    15685 CONCAT                           R22 R24 R26
    15686 SETTABLEKS                       R22 R21 K662 ["newGroupName"]
    15688 CALL                             R19 2 1
    15689 SETTABLEKS                       R19 R18 K22 ["translation"]
    15691 GETTABLEKS                       R19 R2 K14 ["userId"]
    15693 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15695 MOVE                             R19 R0
    15696 GETTABLEKS                       R20 R2 K14 ["userId"]
    15698 CALL                             R19 1 1
    15699 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15701 LOADK                            R19 K85 ["animation"]
    15702 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15704 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15706 ORK                              R19 R20 K18 [0]
    15707 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15709 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15711 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15713 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15715 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15717 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15719 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15721 RETURN                           R18 1
    15722 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15724 JUMPIFNOTEQKN                    R18 K664 [140] ; [+83]
    15726 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15727 GETTABLEKS                       R19 R2 K19 ["id"]
    15729 SETTABLEKS                       R19 R18 K19 ["id"]
    15731 LOADK                            R19 K153 ["Description.ExperienceShutDown"]
    15732 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15734 LOADK                            R19 K31 ["Unknown"]
    15735 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15737 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15739 GETIMPORT                        R21 K34 [pcall]
    15741 NEWCLOSURE                       R22 P6
    15742 CAPTURE                          VAL R20
    15743 CAPTURE                          VAL R3
    15744 CALL                             R21 1 2
    15745 JUMPIFNOT                        R21 ; [+2]
    15746 MOVE                             R19 R22
    15747 JUMP                             ; [+1]
    15748 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15749 SETTABLEKS                       R19 R18 K21 ["date"]
    15751 MOVE                             R19 R12
    15752 LOADK                            R20 K154 [24]
    15753 DUPTABLE                         R21 K658 [{"groupSettings"}]
    15754 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15756 JUMPIFNOT                        R24 ; [+5]
    15757 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15759 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15761 JUMPIF                           R23 ; [+1]
    15762 LOADK                            R23 K43 [""]
    15763 LOADK                            R24 K43 [""]
    15764 FASTCALL1                        TOSTRING R23 ; [+3]
    15765 MOVE                             R28 R23
    15766 GETIMPORT                        R27 K4 [tostring]
    15768 CALL                             R27 1 1
    15769 MOVE                             R25 R27
    15770 LOADK                            R26 K43 [""]
    15771 CONCAT                           R22 R24 R26
    15772 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15774 CALL                             R19 2 1
    15775 SETTABLEKS                       R19 R18 K22 ["translation"]
    15777 GETTABLEKS                       R19 R2 K14 ["userId"]
    15779 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15781 MOVE                             R19 R0
    15782 GETTABLEKS                       R20 R2 K14 ["userId"]
    15784 CALL                             R19 1 1
    15785 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15787 LOADK                            R19 K85 ["animation"]
    15788 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15790 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15792 ORK                              R19 R20 K18 [0]
    15793 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15795 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15797 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15799 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15801 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15803 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15805 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15807 RETURN                           R18 1
    15808 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15810 JUMPIFNOTEQKN                    R18 K667 [141] ; [+83]
    15812 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15813 GETTABLEKS                       R19 R2 K19 ["id"]
    15815 SETTABLEKS                       R19 R18 K19 ["id"]
    15817 LOADK                            R19 K156 ["Description.SocialLinksAdded"]
    15818 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15820 LOADK                            R19 K31 ["Unknown"]
    15821 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15823 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15825 GETIMPORT                        R21 K34 [pcall]
    15827 NEWCLOSURE                       R22 P6
    15828 CAPTURE                          VAL R20
    15829 CAPTURE                          VAL R3
    15830 CALL                             R21 1 2
    15831 JUMPIFNOT                        R21 ; [+2]
    15832 MOVE                             R19 R22
    15833 JUMP                             ; [+1]
    15834 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15835 SETTABLEKS                       R19 R18 K21 ["date"]
    15837 MOVE                             R19 R12
    15838 LOADK                            R20 K157 ["channel"]
    15839 DUPTABLE                         R21 K658 [{"groupSettings"}]
    15840 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15842 JUMPIFNOT                        R24 ; [+5]
    15843 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15845 GETTABLEKS                       R23 R24 K657 ["groupSettings"]
    15847 JUMPIF                           R23 ; [+1]
    15848 LOADK                            R23 K43 [""]
    15849 LOADK                            R24 K43 [""]
    15850 FASTCALL1                        TOSTRING R23 ; [+3]
    15851 MOVE                             R28 R23
    15852 GETIMPORT                        R27 K4 [tostring]
    15854 CALL                             R27 1 1
    15855 MOVE                             R25 R27
    15856 LOADK                            R26 K43 [""]
    15857 CONCAT                           R22 R24 R26
    15858 SETTABLEKS                       R22 R21 K657 ["groupSettings"]
    15860 CALL                             R19 2 1
    15861 SETTABLEKS                       R19 R18 K22 ["translation"]
    15863 GETTABLEKS                       R19 R2 K14 ["userId"]
    15865 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15867 MOVE                             R19 R0
    15868 GETTABLEKS                       R20 R2 K14 ["userId"]
    15870 CALL                             R19 1 1
    15871 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15873 LOADK                            R19 K85 ["animation"]
    15874 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15876 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15878 ORK                              R19 R20 K18 [0]
    15879 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15881 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15883 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15885 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15887 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15889 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15891 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15893 RETURN                           R18 1
    15894 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15896 JUMPIFNOTEQKN                    R18 K670 [142] ; [+83]
    15898 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15899 GETTABLEKS                       R19 R2 K19 ["id"]
    15901 SETTABLEKS                       R19 R18 K19 ["id"]
    15903 LOADK                            R19 K159 ["Channel"]
    15904 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15906 LOADK                            R19 K31 ["Unknown"]
    15907 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15909 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15911 GETIMPORT                        R21 K34 [pcall]
    15913 NEWCLOSURE                       R22 P6
    15914 CAPTURE                          VAL R20
    15915 CAPTURE                          VAL R3
    15916 CALL                             R21 1 2
    15917 JUMPIFNOT                        R21 ; [+2]
    15918 MOVE                             R19 R22
    15919 JUMP                             ; [+1]
    15920 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    15921 SETTABLEKS                       R19 R18 K21 ["date"]
    15923 MOVE                             R19 R12
    15924 LOADK                            R20 K160 ["/social-links"]
    15925 DUPTABLE                         R21 K333 [{"userName"}]
    15926 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15928 JUMPIFNOT                        R24 ; [+5]
    15929 GETTABLEKS                       R24 R2 K41 ["metaData"]
    15931 GETTABLEKS                       R23 R24 K332 ["userName"]
    15933 JUMPIF                           R23 ; [+1]
    15934 LOADK                            R23 K43 [""]
    15935 LOADK                            R24 K43 [""]
    15936 FASTCALL1                        TOSTRING R23 ; [+3]
    15937 MOVE                             R28 R23
    15938 GETIMPORT                        R27 K4 [tostring]
    15940 CALL                             R27 1 1
    15941 MOVE                             R25 R27
    15942 LOADK                            R26 K43 [""]
    15943 CONCAT                           R22 R24 R26
    15944 SETTABLEKS                       R22 R21 K332 ["userName"]
    15946 CALL                             R19 2 1
    15947 SETTABLEKS                       R19 R18 K22 ["translation"]
    15949 GETTABLEKS                       R19 R2 K14 ["userId"]
    15951 SETTABLEKS                       R19 R18 K23 ["actorId"]
    15953 MOVE                             R19 R0
    15954 GETTABLEKS                       R20 R2 K14 ["userId"]
    15956 CALL                             R19 1 1
    15957 SETTABLEKS                       R19 R18 K24 ["actorName"]
    15959 LOADK                            R19 K85 ["animation"]
    15960 SETTABLEKS                       R19 R18 K25 ["iconType"]
    15962 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    15964 ORK                              R19 R20 K18 [0]
    15965 SETTABLEKS                       R19 R18 K26 ["iconId"]
    15967 GETTABLEKS                       R19 R2 K2 ["universeId"]
    15969 SETTABLEKS                       R19 R18 K2 ["universeId"]
    15971 GETTABLEKS                       R19 R2 K27 ["headerText"]
    15973 SETTABLEKS                       R19 R18 K27 ["headerText"]
    15975 GETTABLEKS                       R19 R2 K28 ["footerText"]
    15977 SETTABLEKS                       R19 R18 K28 ["footerText"]
    15979 RETURN                           R18 1
    15980 GETTABLEKS                       R18 R2 K17 ["eventType"]
    15982 JUMPIFNOTEQKN                    R18 K673 [143] ; [+83]
    15984 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    15985 GETTABLEKS                       R19 R2 K19 ["id"]
    15987 SETTABLEKS                       R19 R18 K19 ["id"]
    15989 LOADK                            R19 K162 ["SocialLinksRemoved"]
    15990 SETTABLEKS                       R19 R18 K17 ["eventType"]
    15992 LOADK                            R19 K31 ["Unknown"]
    15993 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    15995 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    15997 GETIMPORT                        R21 K34 [pcall]
    15999 NEWCLOSURE                       R22 P6
    16000 CAPTURE                          VAL R20
    16001 CAPTURE                          VAL R3
    16002 CALL                             R21 1 2
    16003 JUMPIFNOT                        R21 ; [+2]
    16004 MOVE                             R19 R22
    16005 JUMP                             ; [+1]
    16006 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16007 SETTABLEKS                       R19 R18 K21 ["date"]
    16009 MOVE                             R19 R12
    16010 LOADK                            R20 K163 ["Description.SocialLinksRemoved"]
    16011 DUPTABLE                         R21 K333 [{"userName"}]
    16012 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16014 JUMPIFNOT                        R24 ; [+5]
    16015 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16017 GETTABLEKS                       R23 R24 K332 ["userName"]
    16019 JUMPIF                           R23 ; [+1]
    16020 LOADK                            R23 K43 [""]
    16021 LOADK                            R24 K43 [""]
    16022 FASTCALL1                        TOSTRING R23 ; [+3]
    16023 MOVE                             R28 R23
    16024 GETIMPORT                        R27 K4 [tostring]
    16026 CALL                             R27 1 1
    16027 MOVE                             R25 R27
    16028 LOADK                            R26 K43 [""]
    16029 CONCAT                           R22 R24 R26
    16030 SETTABLEKS                       R22 R21 K332 ["userName"]
    16032 CALL                             R19 2 1
    16033 SETTABLEKS                       R19 R18 K22 ["translation"]
    16035 GETTABLEKS                       R19 R2 K14 ["userId"]
    16037 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16039 MOVE                             R19 R0
    16040 GETTABLEKS                       R20 R2 K14 ["userId"]
    16042 CALL                             R19 1 1
    16043 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16045 LOADK                            R19 K85 ["animation"]
    16046 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16048 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16050 ORK                              R19 R20 K18 [0]
    16051 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16053 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16055 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16057 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16059 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16061 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16063 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16065 RETURN                           R18 1
    16066 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16068 JUMPIFNOTEQKN                    R18 K676 [144] ; [+83]
    16070 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16071 GETTABLEKS                       R19 R2 K19 ["id"]
    16073 SETTABLEKS                       R19 R18 K19 ["id"]
    16075 LOADK                            R19 K165 ["SocialLinksUpdated"]
    16076 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16078 LOADK                            R19 K31 ["Unknown"]
    16079 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16081 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16083 GETIMPORT                        R21 K34 [pcall]
    16085 NEWCLOSURE                       R22 P6
    16086 CAPTURE                          VAL R20
    16087 CAPTURE                          VAL R3
    16088 CALL                             R21 1 2
    16089 JUMPIFNOT                        R21 ; [+2]
    16090 MOVE                             R19 R22
    16091 JUMP                             ; [+1]
    16092 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16093 SETTABLEKS                       R19 R18 K21 ["date"]
    16095 MOVE                             R19 R12
    16096 LOADK                            R20 K166 ["Description.SocialLinksUpdated"]
    16097 DUPTABLE                         R21 K339 [{"groupName"}]
    16098 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16100 JUMPIFNOT                        R24 ; [+5]
    16101 GETTABLEKS                       R24 R2 K41 ["metaData"]
    16103 GETTABLEKS                       R23 R24 K338 ["groupName"]
    16105 JUMPIF                           R23 ; [+1]
    16106 LOADK                            R23 K43 [""]
    16107 LOADK                            R24 K43 [""]
    16108 FASTCALL1                        TOSTRING R23 ; [+3]
    16109 MOVE                             R28 R23
    16110 GETIMPORT                        R27 K4 [tostring]
    16112 CALL                             R27 1 1
    16113 MOVE                             R25 R27
    16114 LOADK                            R26 K43 [""]
    16115 CONCAT                           R22 R24 R26
    16116 SETTABLEKS                       R22 R21 K338 ["groupName"]
    16118 CALL                             R19 2 1
    16119 SETTABLEKS                       R19 R18 K22 ["translation"]
    16121 GETTABLEKS                       R19 R2 K14 ["userId"]
    16123 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16125 MOVE                             R19 R0
    16126 GETTABLEKS                       R20 R2 K14 ["userId"]
    16128 CALL                             R19 1 1
    16129 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16131 LOADK                            R19 K85 ["animation"]
    16132 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16134 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16136 ORK                              R19 R20 K18 [0]
    16137 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16139 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16141 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16143 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16145 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16147 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16149 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16151 RETURN                           R18 1
    16152 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16154 JUMPIFNOTEQKN                    R18 K679 [145] ; [+75]
    16156 DUPTABLE                         R18 K681 [{"id", "eventType", "eventCategory", "date", "translation", "translationFunc", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText", "linkErrorHeader", "linkErrorBody"}]
    16157 GETTABLEKS                       R19 R2 K19 ["id"]
    16159 SETTABLEKS                       R19 R18 K19 ["id"]
    16161 LOADK                            R19 K170 [28]
    16162 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16164 LOADK                            R19 K171 ["WorldSettingsWorkSpaceGravity"]
    16165 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16167 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16169 GETIMPORT                        R21 K34 [pcall]
    16171 NEWCLOSURE                       R22 P6
    16172 CAPTURE                          VAL R20
    16173 CAPTURE                          VAL R3
    16174 CALL                             R21 1 2
    16175 JUMPIFNOT                        R21 ; [+2]
    16176 MOVE                             R19 R22
    16177 JUMP                             ; [+1]
    16178 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16179 SETTABLEKS                       R19 R18 K21 ["date"]
    16181 LOADK                            R19 K43 [""]
    16182 SETTABLEKS                       R19 R18 K22 ["translation"]
    16184 NEWCLOSURE                       R19 P8
    16185 CAPTURE                          VAL R16
    16186 CAPTURE                          VAL R2
    16187 SETTABLEKS                       R19 R18 K680 ["translationFunc"]
    16189 GETTABLEKS                       R19 R2 K14 ["userId"]
    16191 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16193 MOVE                             R19 R0
    16194 GETTABLEKS                       R20 R2 K14 ["userId"]
    16196 CALL                             R19 1 1
    16197 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16199 LOADK                            R19 K172 ["Description.WorldSettingsWorkSpaceGravity"]
    16200 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16202 GETTABLEKS                       R20 R2 K8 ["resourceId"]
    16204 ORK                              R19 R20 K18 [0]
    16205 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16207 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16209 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16211 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16213 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16215 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16217 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16219 MOVE                             R19 R12
    16220 LOADK                            R20 K173 ["gravity"]
    16221 CALL                             R19 1 1
    16222 SETTABLEKS                       R19 R18 K596 ["linkErrorHeader"]
    16224 MOVE                             R19 R12
    16225 LOADK                            R20 K174 [{"gravity"}]
    16226 CALL                             R19 1 1
    16227 SETTABLEKS                       R19 R18 K597 ["linkErrorBody"]
    16229 RETURN                           R18 1
    16230 GETTABLEKS                       R18 R2 K17 ["eventType"]
    16232 JUMPIFNOTEQKN                    R18 K687 [146] ; [+64]
    16234 DUPTABLE                         R18 K29 [{"id", "eventType", "eventCategory", "date", "translation", "actorId", "actorName", "iconType", "iconId", "universeId", "headerText", "footerText"}]
    16235 GETTABLEKS                       R19 R2 K19 ["id"]
    16237 SETTABLEKS                       R19 R18 K19 ["id"]
    16239 LOADK                            R19 K176 [29]
    16240 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16242 LOADK                            R19 K166 ["Description.SocialLinksUpdated"]
    16243 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16245 GETTABLEKS                       R20 R2 K32 ["createdUnixTimeMs"]
    16247 GETIMPORT                        R21 K34 [pcall]
    16249 NEWCLOSURE                       R22 P6
    16250 CAPTURE                          VAL R20
    16251 CAPTURE                          VAL R3
    16252 CALL                             R21 1 2
    16253 JUMPIFNOT                        R21 ; [+2]
    16254 MOVE                             R19 R22
    16255 JUMP                             ; [+1]
    16256 LOADK                            R19 K35 ["🤷🏻‍♀️"]
    16257 SETTABLEKS                       R19 R18 K21 ["date"]
    16259 MOVE                             R19 R17
    16260 GETTABLEKS                       R20 R2 K41 ["metaData"]
    16262 LOADK                            R21 K177 ["WorldSettingsJumpHeight"]
    16263 LOADK                            R22 K178 ["Description.WorldSettingsJumpHeight"]
    16264 CALL                             R19 3 1
    16265 SETTABLEKS                       R19 R18 K22 ["translation"]
    16267 GETTABLEKS                       R19 R2 K14 ["userId"]
    16269 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16271 MOVE                             R19 R0
    16272 GETTABLEKS                       R20 R2 K14 ["userId"]
    16274 CALL                             R19 1 1
    16275 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16277 LOADK                            R19 K37 ["Universe"]
    16278 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16280 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16282 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16284 GETTABLEKS                       R19 R2 K2 ["universeId"]
    16286 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16288 GETTABLEKS                       R19 R2 K27 ["headerText"]
    16290 SETTABLEKS                       R19 R18 K27 ["headerText"]
    16292 GETTABLEKS                       R19 R2 K28 ["footerText"]
    16294 SETTABLEKS                       R19 R18 K28 ["footerText"]
    16296 RETURN                           R18 1
    16297 DUPTABLE                         R18 K691 [{"id", "universeId", "eventType", "date", "translation", "actorId", "actorName", "iconId", "iconType", "eventCategory"}]
    16298 GETIMPORT                        R20 K694 [math.random]
    16300 CALL                             R20 0 -1
    16301 FASTCALL                         TOSTRING ; [+2]
    16302 GETIMPORT                        R19 K4 [tostring]
    16304 CALL                             R19 -1 1
    16305 SETTABLEKS                       R19 R18 K19 ["id"]
    16307 LOADN                            R19 0
    16308 SETTABLEKS                       R19 R18 K2 ["universeId"]
    16310 LOADK                            R19 K31 ["Unknown"]
    16311 SETTABLEKS                       R19 R18 K17 ["eventType"]
    16313 LOADK                            R19 K43 [""]
    16314 SETTABLEKS                       R19 R18 K21 ["date"]
    16316 LOADK                            R19 K183 ["WorldSettingsJumpPower"]
    16317 SETTABLEKS                       R19 R18 K22 ["translation"]
    16319 LOADN                            R19 0
    16320 SETTABLEKS                       R19 R18 K23 ["actorId"]
    16322 LOADK                            R19 K184 ["Description.WorldSettingsJumpPower"]
    16323 SETTABLEKS                       R19 R18 K24 ["actorName"]
    16325 LOADN                            R19 0
    16326 SETTABLEKS                       R19 R18 K26 ["iconId"]
    16328 LOADK                            R19 K31 ["Unknown"]
    16329 SETTABLEKS                       R19 R18 K25 ["iconType"]
    16331 LOADK                            R19 K43 [""]
    16332 SETTABLEKS                       R19 R18 K20 ["eventCategory"]
    16334 RETURN                           R18 1

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
