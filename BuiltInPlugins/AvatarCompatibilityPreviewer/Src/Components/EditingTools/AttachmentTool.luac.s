PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PrimaryPart"]
        3 GETTABLEKS                       R0 R1 K1 ["CFrame"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["WorldCFrame"]
        8 NAMECALL                         R0 R0 K3 ["ToObjectSpace"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["PrimaryPart"]
        4 GETTABLEKS                       R2 R3 K1 ["CFrame"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K2 ["ToWorldSpace"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K3 ["WorldCFrame"]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K4 ["ORIGINAL_POSITION_VALUE"]
       16 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+59]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K6 ["Position"]
       25 GETUPVAL                         R3 1
       26 LOADK                            R5 K7 ["Humanoid"]
       27 NAMECALL                         R3 R3 K8 ["FindFirstChildWhichIsA"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K9 ["Parent"]
       33 JUMPIFEQKNIL                     R3 ; [+37]
       35 JUMPIFEQKNIL                     R4 ; [+35]
       37 LOADK                            R7 K10 ["BasePart"]
       38 NAMECALL                         R5 R4 K11 ["IsA"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+29]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K9 ["Parent"]
       45 NAMECALL                         R5 R3 K12 ["ComputeOriginalSizeForPart"]
       47 CALL                             R5 2 1
       48 GETTABLEKS                       R6 R4 K13 ["Size"]
       50 JUMPIFEQKNIL                     R5 ; [+16]
       52 GETTABLEKS                       R7 R6 K14 ["X"]
       54 JUMPIFEQKN                       R7 K15 [0] ; [+12]
       56 GETTABLEKS                       R7 R6 K16 ["Y"]
       58 JUMPIFEQKN                       R7 K15 [0] ; [+8]
       60 GETTABLEKS                       R7 R6 K17 ["Z"]
       62 JUMPIFEQKN                       R7 K15 [0] ; [+4]
       64 DIV                              R7 R5 R6
       65 MUL                              R2 R7 R2
       66 JUMP                             ; [+4]
       67 GETIMPORT                        R7 K19 [warn]
       69 LOADK                            R8 K20 ["Original size is nil or part size is 0"]
       70 CALL                             R7 1 0
       71 JUMPIFEQKNIL                     R1 ; [+21]
       73 LOADK                            R7 K21 ["Vector3Value"]
       74 NAMECALL                         R5 R1 K11 ["IsA"]
       76 CALL                             R5 2 1
       77 JUMPIFNOT                        R5 ; [+15]
       78 SETTABLEKS                       R2 R1 K22 ["Value"]
       80 JUMP                             ; [+12]
       81 JUMPIFEQKNIL                     R1 ; [+11]
       83 LOADK                            R4 K21 ["Vector3Value"]
       84 NAMECALL                         R2 R1 K11 ["IsA"]
       86 CALL                             R2 2 1
       87 JUMPIFNOT                        R2 ; [+5]
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R2 R3 K6 ["Position"]
       91 SETTABLEKS                       R2 R1 K22 ["Value"]
       93 GETUPVAL                         R3 4
       94 GETTABLEKS                       R2 R3 K23 ["update"]
       96 GETUPVAL                         R3 0
       97 CALL                             R2 1 0
       98 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["Name"]
        8 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K5 [table.insert]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["openPalette"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K2 ["setFocusedAttachments"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["Name"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
       17 FASTCALL2                        ASSERT R3 R4 ; [+3]
       19 GETIMPORT                        R2 K6 [assert]
       21 CALL                             R2 2 0
       22 GETIMPORT                        R2 K8 [table.clone]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 GETIMPORT                        R2 K10 [table.remove]
       29 MOVE                             R3 R0
       30 MOVE                             R4 R1
       31 CALL                             R2 2 0
       32 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFocusedAttachments"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["CFrame"]
        2 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R9 R6
        6 NAMECALL                         R7 R1 K0 ["FindFirstChild"]
        8 CALL                             R7 2 1
        9 MOVE                             R1 R7
       10 JUMPIFNOTEQKNIL                  R1 ; [+4]
       12 LOADNIL                          R7
       13 CLOSEUPVALS                      R1
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-11]
       17 LOADK                            R4 K1 ["Attachment"]
       18 NAMECALL                         R2 R1 K2 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+3]
       22 LOADNIL                          R2
       23 CLOSEUPVALS                      R1
       24 RETURN                           R2 1
       25 LOADK                            R5 K1 ["Attachment"]
       26 NAMECALL                         R3 R1 K2 ["IsA"]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K3 ["LUAU_ANALYZE_ERROR"]
       32 FASTCALL2                        ASSERT R3 R4 ; [+3]
       34 GETIMPORT                        R2 K5 [assert]
       36 CALL                             R2 2 0
       37 DUPTABLE                         R2 K13 [{"name", "limb", "getCFrame", "onChange", "onSelect", "onUnselect", "connectChanged"}]
       38 GETTABLEKS                       R3 R1 K14 ["Name"]
       40 SETTABLEKS                       R3 R2 K6 ["name"]
       42 GETTABLEKS                       R3 R1 K15 ["Parent"]
       44 SETTABLEKS                       R3 R2 K7 ["limb"]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          REF R1
       49 SETTABLEKS                       R3 R2 K8 ["getCFrame"]
       51 NEWCLOSURE                       R3 P1
       52 CAPTURE                          REF R1
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 SETTABLEKS                       R3 R2 K9 ["onChange"]
       59 NEWCLOSURE                       R3 P2
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          REF R1
       62 CAPTURE                          UPVAL U5
       63 SETTABLEKS                       R3 R2 K10 ["onSelect"]
       65 NEWCLOSURE                       R3 P3
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          REF R1
       68 CAPTURE                          UPVAL U1
       69 SETTABLEKS                       R3 R2 K11 ["onUnselect"]
       71 NEWCLOSURE                       R3 P4
       72 CAPTURE                          REF R1
       73 SETTABLEKS                       R3 R2 K12 ["connectChanged"]
       75 CLOSEUPVALS                      R1
       76 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["LUAU_ANALYZE_ERROR"]
       13 FASTCALL2                        ASSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K2 [assert]
       17 CALL                             R3 2 0
       18 JUMPIFEQKNIL                     R1 ; [+21]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 JUMPIFEQKNIL                     R3 ; [+16]
       25 GETTABLEKS                       R4 R2 K3 ["name"]
       27 SETTABLEKS                       R4 R3 K4 ["symmetricalPartner"]
       29 GETUPVAL                         R5 2
       30 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       32 MOVE                             R6 R3
       33 GETIMPORT                        R4 K7 [table.insert]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R3 K3 ["name"]
       38 SETTABLEKS                       R4 R2 K4 ["symmetricalPartner"]
       40 GETUPVAL                         R4 2
       41 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       43 MOVE                             R5 R2
       44 GETIMPORT                        R3 K7 [table.insert]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["useRef"]
       15 NEWTABLE                         R5 0 0
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R7 R4 K3 ["current"]
       20 JUMPIFNOTEQKNIL                  R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K4 ["LUAU_ANALYZE_ERROR"]
       27 FASTCALL2                        ASSERT R6 R7 ; [+3]
       29 GETIMPORT                        R5 K6 [assert]
       31 CALL                             R5 2 0
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R7 0 2
       45 LOADK                            R8 K7 ["Head"]
       46 LOADK                            R9 K8 ["HatAttachment"]
       47 SETLIST                          R7 R8 2 [1]
       49 MOVE                             R8 R5
       50 MOVE                             R9 R7
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQKNIL                  R8 ; [+2]
       54 JUMP                             ; [+19]
       55 JUMPIFNOTEQKNIL                  R8 ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
       62 FASTCALL2                        ASSERT R10 R11 ; [+3]
       64 GETIMPORT                        R9 K6 [assert]
       66 CALL                             R9 2 0
       67 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       69 MOVE                             R10 R3
       70 MOVE                             R11 R8
       71 GETIMPORT                        R9 K11 [table.insert]
       73 CALL                             R9 2 0
       74 NEWTABLE                         R7 0 2
       76 LOADK                            R8 K7 ["Head"]
       77 LOADK                            R9 K12 ["HairAttachment"]
       78 SETLIST                          R7 R8 2 [1]
       80 MOVE                             R8 R5
       81 MOVE                             R9 R7
       82 CALL                             R8 1 1
       83 JUMPIFNOTEQKNIL                  R8 ; [+2]
       85 JUMP                             ; [+19]
       86 JUMPIFNOTEQKNIL                  R8 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
       93 FASTCALL2                        ASSERT R10 R11 ; [+3]
       95 GETIMPORT                        R9 K6 [assert]
       97 CALL                             R9 2 0
       98 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      100 MOVE                             R10 R3
      101 MOVE                             R11 R8
      102 GETIMPORT                        R9 K11 [table.insert]
      104 CALL                             R9 2 0
      105 NEWTABLE                         R7 0 2
      107 LOADK                            R8 K7 ["Head"]
      108 LOADK                            R9 K13 ["FaceCenterAttachment"]
      109 SETLIST                          R7 R8 2 [1]
      111 MOVE                             R8 R5
      112 MOVE                             R9 R7
      113 CALL                             R8 1 1
      114 JUMPIFNOTEQKNIL                  R8 ; [+2]
      116 JUMP                             ; [+19]
      117 JUMPIFNOTEQKNIL                  R8 ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 GETUPVAL                         R12 3
      122 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      124 FASTCALL2                        ASSERT R10 R11 ; [+3]
      126 GETIMPORT                        R9 K6 [assert]
      128 CALL                             R9 2 0
      129 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      131 MOVE                             R10 R3
      132 MOVE                             R11 R8
      133 GETIMPORT                        R9 K11 [table.insert]
      135 CALL                             R9 2 0
      136 NEWTABLE                         R7 0 2
      138 LOADK                            R8 K7 ["Head"]
      139 LOADK                            R9 K14 ["FaceFrontAttachment"]
      140 SETLIST                          R7 R8 2 [1]
      142 MOVE                             R8 R5
      143 MOVE                             R9 R7
      144 CALL                             R8 1 1
      145 JUMPIFNOTEQKNIL                  R8 ; [+2]
      147 JUMP                             ; [+19]
      148 JUMPIFNOTEQKNIL                  R8 ; [+2]
      150 LOADB                            R10 0 +1
      151 LOADB                            R10 1
      152 GETUPVAL                         R12 3
      153 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      155 FASTCALL2                        ASSERT R10 R11 ; [+3]
      157 GETIMPORT                        R9 K6 [assert]
      159 CALL                             R9 2 0
      160 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      162 MOVE                             R10 R3
      163 MOVE                             R11 R8
      164 GETIMPORT                        R9 K11 [table.insert]
      166 CALL                             R9 2 0
      167 NEWTABLE                         R7 0 2
      169 LOADK                            R8 K15 ["UpperTorso"]
      170 LOADK                            R9 K16 ["BodyFrontAttachment"]
      171 SETLIST                          R7 R8 2 [1]
      173 MOVE                             R8 R5
      174 MOVE                             R9 R7
      175 CALL                             R8 1 1
      176 JUMPIFNOTEQKNIL                  R8 ; [+2]
      178 JUMP                             ; [+19]
      179 JUMPIFNOTEQKNIL                  R8 ; [+2]
      181 LOADB                            R10 0 +1
      182 LOADB                            R10 1
      183 GETUPVAL                         R12 3
      184 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      186 FASTCALL2                        ASSERT R10 R11 ; [+3]
      188 GETIMPORT                        R9 K6 [assert]
      190 CALL                             R9 2 0
      191 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      193 MOVE                             R10 R3
      194 MOVE                             R11 R8
      195 GETIMPORT                        R9 K11 [table.insert]
      197 CALL                             R9 2 0
      198 NEWTABLE                         R7 0 2
      200 LOADK                            R8 K15 ["UpperTorso"]
      201 LOADK                            R9 K17 ["BodyBackAttachment"]
      202 SETLIST                          R7 R8 2 [1]
      204 MOVE                             R8 R5
      205 MOVE                             R9 R7
      206 CALL                             R8 1 1
      207 JUMPIFNOTEQKNIL                  R8 ; [+2]
      209 JUMP                             ; [+19]
      210 JUMPIFNOTEQKNIL                  R8 ; [+2]
      212 LOADB                            R10 0 +1
      213 LOADB                            R10 1
      214 GETUPVAL                         R12 3
      215 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      217 FASTCALL2                        ASSERT R10 R11 ; [+3]
      219 GETIMPORT                        R9 K6 [assert]
      221 CALL                             R9 2 0
      222 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      224 MOVE                             R10 R3
      225 MOVE                             R11 R8
      226 GETIMPORT                        R9 K11 [table.insert]
      228 CALL                             R9 2 0
      229 NEWTABLE                         R7 0 2
      231 LOADK                            R8 K15 ["UpperTorso"]
      232 LOADK                            R9 K18 ["NeckAttachment"]
      233 SETLIST                          R7 R8 2 [1]
      235 MOVE                             R8 R5
      236 MOVE                             R9 R7
      237 CALL                             R8 1 1
      238 JUMPIFNOTEQKNIL                  R8 ; [+2]
      240 JUMP                             ; [+19]
      241 JUMPIFNOTEQKNIL                  R8 ; [+2]
      243 LOADB                            R10 0 +1
      244 LOADB                            R10 1
      245 GETUPVAL                         R12 3
      246 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      248 FASTCALL2                        ASSERT R10 R11 ; [+3]
      250 GETIMPORT                        R9 K6 [assert]
      252 CALL                             R9 2 0
      253 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      255 MOVE                             R10 R3
      256 MOVE                             R11 R8
      257 GETIMPORT                        R9 K11 [table.insert]
      259 CALL                             R9 2 0
      260 NEWTABLE                         R7 0 2
      262 LOADK                            R8 K15 ["UpperTorso"]
      263 LOADK                            R9 K19 ["WristRigAttachment"]
      264 SETLIST                          R7 R8 2 [1]
      266 MOVE                             R8 R5
      267 MOVE                             R9 R7
      268 CALL                             R8 1 1
      269 JUMPIFNOTEQKNIL                  R8 ; [+2]
      271 JUMP                             ; [+19]
      272 JUMPIFNOTEQKNIL                  R8 ; [+2]
      274 LOADB                            R10 0 +1
      275 LOADB                            R10 1
      276 GETUPVAL                         R12 3
      277 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      279 FASTCALL2                        ASSERT R10 R11 ; [+3]
      281 GETIMPORT                        R9 K6 [assert]
      283 CALL                             R9 2 0
      284 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      286 MOVE                             R10 R3
      287 MOVE                             R11 R8
      288 GETIMPORT                        R9 K11 [table.insert]
      290 CALL                             R9 2 0
      291 NEWTABLE                         R7 0 2
      293 LOADK                            R8 K20 ["LowerTorso"]
      294 LOADK                            R9 K21 ["WaistBackAttachment"]
      295 SETLIST                          R7 R8 2 [1]
      297 MOVE                             R8 R5
      298 MOVE                             R9 R7
      299 CALL                             R8 1 1
      300 JUMPIFNOTEQKNIL                  R8 ; [+2]
      302 JUMP                             ; [+19]
      303 JUMPIFNOTEQKNIL                  R8 ; [+2]
      305 LOADB                            R10 0 +1
      306 LOADB                            R10 1
      307 GETUPVAL                         R12 3
      308 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      310 FASTCALL2                        ASSERT R10 R11 ; [+3]
      312 GETIMPORT                        R9 K6 [assert]
      314 CALL                             R9 2 0
      315 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      317 MOVE                             R10 R3
      318 MOVE                             R11 R8
      319 GETIMPORT                        R9 K11 [table.insert]
      321 CALL                             R9 2 0
      322 NEWTABLE                         R7 0 2
      324 LOADK                            R8 K20 ["LowerTorso"]
      325 LOADK                            R9 K22 ["WaistCenterAttachment"]
      326 SETLIST                          R7 R8 2 [1]
      328 MOVE                             R8 R5
      329 MOVE                             R9 R7
      330 CALL                             R8 1 1
      331 JUMPIFNOTEQKNIL                  R8 ; [+2]
      333 JUMP                             ; [+19]
      334 JUMPIFNOTEQKNIL                  R8 ; [+2]
      336 LOADB                            R10 0 +1
      337 LOADB                            R10 1
      338 GETUPVAL                         R12 3
      339 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      341 FASTCALL2                        ASSERT R10 R11 ; [+3]
      343 GETIMPORT                        R9 K6 [assert]
      345 CALL                             R9 2 0
      346 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      348 MOVE                             R10 R3
      349 MOVE                             R11 R8
      350 GETIMPORT                        R9 K11 [table.insert]
      352 CALL                             R9 2 0
      353 NEWTABLE                         R7 0 2
      355 LOADK                            R8 K20 ["LowerTorso"]
      356 LOADK                            R9 K23 ["WaistFrontAttachment"]
      357 SETLIST                          R7 R8 2 [1]
      359 MOVE                             R8 R5
      360 MOVE                             R9 R7
      361 CALL                             R8 1 1
      362 JUMPIFNOTEQKNIL                  R8 ; [+2]
      364 JUMP                             ; [+19]
      365 JUMPIFNOTEQKNIL                  R8 ; [+2]
      367 LOADB                            R10 0 +1
      368 LOADB                            R10 1
      369 GETUPVAL                         R12 3
      370 GETTABLEKS                       R11 R12 K4 ["LUAU_ANALYZE_ERROR"]
      372 FASTCALL2                        ASSERT R10 R11 ; [+3]
      374 GETIMPORT                        R9 K6 [assert]
      376 CALL                             R9 2 0
      377 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      379 MOVE                             R10 R3
      380 MOVE                             R11 R8
      381 GETIMPORT                        R9 K11 [table.insert]
      383 CALL                             R9 2 0
      384 NEWTABLE                         R7 0 2
      386 LOADK                            R8 K15 ["UpperTorso"]
      387 LOADK                            R9 K24 ["LeftCollarAttachment"]
      388 SETLIST                          R7 R8 2 [1]
      390 NEWTABLE                         R8 0 2
      392 LOADK                            R9 K15 ["UpperTorso"]
      393 LOADK                            R10 K25 ["RightCollarAttachment"]
      394 SETLIST                          R8 R9 2 [1]
      396 MOVE                             R9 R5
      397 MOVE                             R10 R7
      398 CALL                             R9 1 1
      399 JUMPIFNOTEQKNIL                  R9 ; [+2]
      401 JUMP                             ; [+41]
      402 JUMPIFNOTEQKNIL                  R9 ; [+2]
      404 LOADB                            R11 0 +1
      405 LOADB                            R11 1
      406 GETUPVAL                         R13 3
      407 GETTABLEKS                       R12 R13 K4 ["LUAU_ANALYZE_ERROR"]
      409 FASTCALL2                        ASSERT R11 R12 ; [+3]
      411 GETIMPORT                        R10 K6 [assert]
      413 CALL                             R10 2 0
      414 JUMPIFEQKNIL                     R8 ; [+21]
      416 MOVE                             R10 R5
      417 MOVE                             R11 R8
      418 CALL                             R10 1 1
      419 JUMPIFEQKNIL                     R10 ; [+16]
      421 GETTABLEKS                       R11 R9 K26 ["name"]
      423 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      425 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      427 MOVE                             R12 R3
      428 MOVE                             R13 R10
      429 GETIMPORT                        R11 K11 [table.insert]
      431 CALL                             R11 2 0
      432 GETTABLEKS                       R11 R10 K26 ["name"]
      434 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      436 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      438 MOVE                             R11 R3
      439 MOVE                             R12 R9
      440 GETIMPORT                        R10 K11 [table.insert]
      442 CALL                             R10 2 0
      443 NEWTABLE                         R7 0 2
      445 LOADK                            R8 K28 ["LeftUpperArm"]
      446 LOADK                            R9 K29 ["LeftShoulderAttachment"]
      447 SETLIST                          R7 R8 2 [1]
      449 NEWTABLE                         R8 0 2
      451 LOADK                            R9 K30 ["RightUpperArm"]
      452 LOADK                            R10 K31 ["RightShoulderAttachment"]
      453 SETLIST                          R8 R9 2 [1]
      455 MOVE                             R9 R5
      456 MOVE                             R10 R7
      457 CALL                             R9 1 1
      458 JUMPIFNOTEQKNIL                  R9 ; [+2]
      460 JUMP                             ; [+41]
      461 JUMPIFNOTEQKNIL                  R9 ; [+2]
      463 LOADB                            R11 0 +1
      464 LOADB                            R11 1
      465 GETUPVAL                         R13 3
      466 GETTABLEKS                       R12 R13 K4 ["LUAU_ANALYZE_ERROR"]
      468 FASTCALL2                        ASSERT R11 R12 ; [+3]
      470 GETIMPORT                        R10 K6 [assert]
      472 CALL                             R10 2 0
      473 JUMPIFEQKNIL                     R8 ; [+21]
      475 MOVE                             R10 R5
      476 MOVE                             R11 R8
      477 CALL                             R10 1 1
      478 JUMPIFEQKNIL                     R10 ; [+16]
      480 GETTABLEKS                       R11 R9 K26 ["name"]
      482 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      484 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      486 MOVE                             R12 R3
      487 MOVE                             R13 R10
      488 GETIMPORT                        R11 K11 [table.insert]
      490 CALL                             R11 2 0
      491 GETTABLEKS                       R11 R10 K26 ["name"]
      493 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      495 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      497 MOVE                             R11 R3
      498 MOVE                             R12 R9
      499 GETIMPORT                        R10 K11 [table.insert]
      501 CALL                             R10 2 0
      502 NEWTABLE                         R7 0 2
      504 LOADK                            R8 K32 ["LeftHand"]
      505 LOADK                            R9 K33 ["LeftGripAttachment"]
      506 SETLIST                          R7 R8 2 [1]
      508 NEWTABLE                         R8 0 2
      510 LOADK                            R9 K34 ["RightHand"]
      511 LOADK                            R10 K35 ["RightGripAttachment"]
      512 SETLIST                          R8 R9 2 [1]
      514 MOVE                             R9 R5
      515 MOVE                             R10 R7
      516 CALL                             R9 1 1
      517 JUMPIFNOTEQKNIL                  R9 ; [+2]
      519 JUMP                             ; [+41]
      520 JUMPIFNOTEQKNIL                  R9 ; [+2]
      522 LOADB                            R11 0 +1
      523 LOADB                            R11 1
      524 GETUPVAL                         R13 3
      525 GETTABLEKS                       R12 R13 K4 ["LUAU_ANALYZE_ERROR"]
      527 FASTCALL2                        ASSERT R11 R12 ; [+3]
      529 GETIMPORT                        R10 K6 [assert]
      531 CALL                             R10 2 0
      532 JUMPIFEQKNIL                     R8 ; [+21]
      534 MOVE                             R10 R5
      535 MOVE                             R11 R8
      536 CALL                             R10 1 1
      537 JUMPIFEQKNIL                     R10 ; [+16]
      539 GETTABLEKS                       R11 R9 K26 ["name"]
      541 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      543 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      545 MOVE                             R12 R3
      546 MOVE                             R13 R10
      547 GETIMPORT                        R11 K11 [table.insert]
      549 CALL                             R11 2 0
      550 GETTABLEKS                       R11 R10 K26 ["name"]
      552 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      554 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      556 MOVE                             R11 R3
      557 MOVE                             R12 R9
      558 GETIMPORT                        R10 K11 [table.insert]
      560 CALL                             R10 2 0
      561 NEWTABLE                         R7 0 2
      563 LOADK                            R8 K36 ["LeftFoot"]
      564 LOADK                            R9 K37 ["LeftFootAttachment"]
      565 SETLIST                          R7 R8 2 [1]
      567 NEWTABLE                         R8 0 2
      569 LOADK                            R9 K38 ["RightFoot"]
      570 LOADK                            R10 K39 ["RightFootAttachment"]
      571 SETLIST                          R8 R9 2 [1]
      573 MOVE                             R9 R5
      574 MOVE                             R10 R7
      575 CALL                             R9 1 1
      576 JUMPIFNOTEQKNIL                  R9 ; [+2]
      578 RETURN                           R3 1
      579 JUMPIFNOTEQKNIL                  R9 ; [+2]
      581 LOADB                            R11 0 +1
      582 LOADB                            R11 1
      583 GETUPVAL                         R13 3
      584 GETTABLEKS                       R12 R13 K4 ["LUAU_ANALYZE_ERROR"]
      586 FASTCALL2                        ASSERT R11 R12 ; [+3]
      588 GETIMPORT                        R10 K6 [assert]
      590 CALL                             R10 2 0
      591 JUMPIFEQKNIL                     R8 ; [+21]
      593 MOVE                             R10 R5
      594 MOVE                             R11 R8
      595 CALL                             R10 1 1
      596 JUMPIFEQKNIL                     R10 ; [+16]
      598 GETTABLEKS                       R11 R9 K26 ["name"]
      600 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      602 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      604 MOVE                             R12 R3
      605 MOVE                             R13 R10
      606 GETIMPORT                        R11 K11 [table.insert]
      608 CALL                             R11 2 0
      609 GETTABLEKS                       R11 R10 K26 ["name"]
      611 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      613 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      615 MOVE                             R11 R3
      616 MOVE                             R12 R9
      617 GETIMPORT                        R10 K11 [table.insert]
      619 CALL                             R10 2 0
      620 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerEnableAttachmentTool is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K3 ["worldModel"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K4 ["createElement"]
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K9 [{"name", "worldModel", "points", "generallyEquivalentPointNames", "additionalToolbarItems"}]
       17 LOADK                            R5 K10 ["AttachmentTool"]
       18 SETTABLEKS                       R5 R4 K5 ["name"]
       20 GETTABLEKS                       R5 R0 K3 ["worldModel"]
       22 SETTABLEKS                       R5 R4 K3 ["worldModel"]
       24 SETTABLEKS                       R1 R4 K6 ["points"]
       26 NEWTABLE                         R5 0 1
       28 NEWTABLE                         R6 0 2
       30 LOADK                            R7 K11 ["HairAttachment"]
       31 LOADK                            R8 K12 ["HatAttachment"]
       32 SETLIST                          R6 R7 2 [1]
       34 SETLIST                          R5 R6 1 [1]
       36 SETTABLEKS                       R5 R4 K7 ["generallyEquivalentPointNames"]
       38 GETTABLEKS                       R5 R0 K8 ["additionalToolbarItems"]
       40 SETTABLEKS                       R5 R4 K8 ["additionalToolbarItems"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ViewportToolingFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Components"]
       27 GETTABLEKS                       R4 R5 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K9 ["Src"]
       34 GETTABLEKS                       R7 R8 K10 ["Components"]
       36 GETTABLEKS                       R6 R7 K12 ["EditingTools"]
       38 GETTABLEKS                       R5 R6 K13 ["BodyPointsTool"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R10 R0 K9 ["Src"]
       45 GETTABLEKS                       R9 R10 K10 ["Components"]
       47 GETTABLEKS                       R8 R9 K12 ["EditingTools"]
       49 GETTABLEKS                       R7 R8 K13 ["BodyPointsTool"]
       51 GETTABLEKS                       R6 R7 K14 ["Types"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R8 R9 K15 ["Util"]
       60 GETTABLEKS                       R7 R8 K16 ["Constants"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R9 R0 K9 ["Src"]
       67 GETTABLEKS                       R8 R9 K14 ["Types"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Src"]
       74 GETTABLEKS                       R11 R12 K10 ["Components"]
       76 GETTABLEKS                       R10 R11 K12 ["EditingTools"]
       78 GETTABLEKS                       R9 R10 K17 ["findPaletteKeyForAttachmentName"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R12 R0 K9 ["Src"]
       85 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       87 GETTABLEKS                       R10 R11 K19 ["useMoveAccessoriesAlongsideAttachments"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R13 R0 K9 ["Src"]
       94 GETTABLEKS                       R12 R13 K20 ["Flags"]
       96 GETTABLEKS                       R11 R12 K21 ["getFFlagEnableComputeOriginalSizeForPart"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R14 R0 K9 ["Src"]
      103 GETTABLEKS                       R13 R14 K20 ["Flags"]
      105 GETTABLEKS                       R12 R13 K22 ["getFFlagAvatarPreviewerEnableAttachmentTool"]
      107 CALL                             R11 1 1
      108 DUPCLOSURE                       R12 K23 [PROTO_10]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 DUPCLOSURE                       R13 K24 [PROTO_11]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R4
      120 RETURN                           R13 1
