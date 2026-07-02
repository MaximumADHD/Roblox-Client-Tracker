PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PrimaryPart"]
        3 GETTABLEKS                       R0 R0 K1 ["CFrame"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["WorldCFrame"]
        8 NAMECALL                         R0 R0 K3 ["ToObjectSpace"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PrimaryPart"]
        4 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K2 ["ToWorldSpace"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K3 ["WorldCFrame"]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["ORIGINAL_POSITION_VALUE"]
       16 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+6]
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 0
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K6 ["Position"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K6 ["Position"]
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K7 ["Humanoid"]
       33 NAMECALL                         R3 R3 K8 ["FindFirstChildWhichIsA"]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 3
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+6]
       39 GETUPVAL                         R4 0
       40 LOADK                            R6 K9 ["BasePart"]
       41 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       43 CALL                             R4 2 1
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K11 ["Parent"]
       48 JUMPIFEQKNIL                     R3 ; [+35]
       50 JUMPIFEQKNIL                     R4 ; [+33]
       52 LOADK                            R7 K9 ["BasePart"]
       53 NAMECALL                         R5 R4 K12 ["IsA"]
       55 CALL                             R5 2 1
       56 JUMPIFNOT                        R5 ; [+27]
       57 MOVE                             R7 R4
       58 NAMECALL                         R5 R3 K13 ["ComputeOriginalSizeForPart"]
       60 CALL                             R5 2 1
       61 GETTABLEKS                       R6 R4 K14 ["Size"]
       63 JUMPIFEQKNIL                     R5 ; [+16]
       65 GETTABLEKS                       R7 R6 K15 ["X"]
       67 JUMPIFEQKN                       R7 K16 [0] ; [+12]
       69 GETTABLEKS                       R7 R6 K17 ["Y"]
       71 JUMPIFEQKN                       R7 K16 [0] ; [+8]
       73 GETTABLEKS                       R7 R6 K18 ["Z"]
       75 JUMPIFEQKN                       R7 K16 [0] ; [+4]
       77 DIV                              R7 R5 R6
       78 MUL                              R2 R7 R2
       79 JUMP                             ; [+4]
       80 GETIMPORT                        R7 K20 [warn]
       82 LOADK                            R8 K21 ["Original size is nil or part size is 0"]
       83 CALL                             R7 1 0
       84 JUMPIFEQKNIL                     R1 ; [+8]
       86 LOADK                            R7 K22 ["Vector3Value"]
       87 NAMECALL                         R5 R1 K12 ["IsA"]
       89 CALL                             R5 2 1
       90 JUMPIFNOT                        R5 ; [+2]
       91 SETTABLEKS                       R2 R1 K23 ["Value"]
       93 GETUPVAL                         R5 5
       94 GETTABLEKS                       R5 R5 K24 ["update"]
       96 GETUPVAL                         R6 0
       97 CALL                             R5 1 0
       98 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["Name"]
        8 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K5 [table.insert]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["openPalette"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["setFocusedAttachments"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["Name"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["LUAU_ANALYZE_ERROR"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFocusedAttachments"]
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
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 MOVE                             R10 R7
        8 MOVE                             R11 R1
        9 NAMECALL                         R8 R2 K0 ["FindFirstChild"]
       11 CALL                             R8 3 1
       12 MOVE                             R2 R8
       13 JUMPIFNOTEQKNIL                  R2 ; [+4]
       15 LOADNIL                          R8
       16 CLOSEUPVALS                      R2
       17 RETURN                           R8 1
       18 FORGLOOP                         R3 2 ; [-12]
       20 LOADK                            R5 K1 ["Attachment"]
       21 NAMECALL                         R3 R2 K2 ["IsA"]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+3]
       25 LOADNIL                          R3
       26 CLOSEUPVALS                      R2
       27 RETURN                           R3 1
       28 LOADNIL                          R3
       29 GETUPVAL                         R4 0
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+11]
       32 LOADK                            R6 K3 ["BasePart"]
       33 NAMECALL                         R4 R2 K4 ["FindFirstAncestorWhichIsA"]
       35 CALL                             R4 2 1
       36 MOVE                             R3 R4
       37 JUMPIFNOTEQKNIL                  R3 ; [+7]
       39 LOADNIL                          R4
       40 CLOSEUPVALS                      R2
       41 RETURN                           R4 1
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R3 R2 K5 ["Parent"]
       45 DUPTABLE                         R4 K13 [{"name", "limb", "getCFrame", "onChange", "onSelect", "onUnselect", "connectChanged"}]
       46 GETTABLEKS                       R5 R2 K14 ["Name"]
       48 SETTABLEKS                       R5 R4 K6 ["name"]
       50 SETTABLEKS                       R3 R4 K7 ["limb"]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          REF R2
       55 SETTABLEKS                       R5 R4 K8 ["getCFrame"]
       57 NEWCLOSURE                       R5 P1
       58 CAPTURE                          REF R2
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R5 R4 K9 ["onChange"]
       66 NEWCLOSURE                       R5 P2
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          REF R2
       69 CAPTURE                          UPVAL U6
       70 SETTABLEKS                       R5 R4 K10 ["onSelect"]
       72 NEWCLOSURE                       R5 P3
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          REF R2
       75 CAPTURE                          UPVAL U2
       76 SETTABLEKS                       R5 R4 K11 ["onUnselect"]
       78 NEWCLOSURE                       R5 P4
       79 CAPTURE                          REF R2
       80 SETTABLEKS                       R5 R4 K12 ["connectChanged"]
       82 CLOSEUPVALS                      R2
       83 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["LUAU_ANALYZE_ERROR"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useRef"]
       15 NEWTABLE                         R5 0 0
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R7 R4 K3 ["current"]
       20 JUMPIFNOTEQKNIL                  R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K4 ["LUAU_ANALYZE_ERROR"]
       27 FASTCALL2                        ASSERT R6 R7 ; [+3]
       29 GETIMPORT                        R5 K6 [assert]
       31 CALL                             R5 2 0
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R7 0 2
       46 LOADK                            R8 K7 ["Head"]
       47 LOADK                            R9 K8 ["HatAttachment"]
       48 SETLIST                          R7 R8 2 [1]
       50 MOVE                             R8 R5
       51 MOVE                             R9 R7
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKNIL                  R8 ; [+2]
       55 JUMP                             ; [+19]
       56 JUMPIFNOTEQKNIL                  R8 ; [+2]
       58 LOADB                            R10 0 +1
       59 LOADB                            R10 1
       60 GETUPVAL                         R11 3
       61 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
       63 FASTCALL2                        ASSERT R10 R11 ; [+3]
       65 GETIMPORT                        R9 K6 [assert]
       67 CALL                             R9 2 0
       68 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       70 MOVE                             R10 R3
       71 MOVE                             R11 R8
       72 GETIMPORT                        R9 K11 [table.insert]
       74 CALL                             R9 2 0
       75 NEWTABLE                         R7 0 2
       77 LOADK                            R8 K7 ["Head"]
       78 LOADK                            R9 K12 ["HairAttachment"]
       79 SETLIST                          R7 R8 2 [1]
       81 MOVE                             R8 R5
       82 MOVE                             R9 R7
       83 CALL                             R8 1 1
       84 JUMPIFNOTEQKNIL                  R8 ; [+2]
       86 JUMP                             ; [+19]
       87 JUMPIFNOTEQKNIL                  R8 ; [+2]
       89 LOADB                            R10 0 +1
       90 LOADB                            R10 1
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
       94 FASTCALL2                        ASSERT R10 R11 ; [+3]
       96 GETIMPORT                        R9 K6 [assert]
       98 CALL                             R9 2 0
       99 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      101 MOVE                             R10 R3
      102 MOVE                             R11 R8
      103 GETIMPORT                        R9 K11 [table.insert]
      105 CALL                             R9 2 0
      106 NEWTABLE                         R7 0 2
      108 LOADK                            R8 K7 ["Head"]
      109 LOADK                            R9 K13 ["FaceCenterAttachment"]
      110 SETLIST                          R7 R8 2 [1]
      112 MOVE                             R8 R5
      113 MOVE                             R9 R7
      114 CALL                             R8 1 1
      115 JUMPIFNOTEQKNIL                  R8 ; [+2]
      117 JUMP                             ; [+19]
      118 JUMPIFNOTEQKNIL                  R8 ; [+2]
      120 LOADB                            R10 0 +1
      121 LOADB                            R10 1
      122 GETUPVAL                         R11 3
      123 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      125 FASTCALL2                        ASSERT R10 R11 ; [+3]
      127 GETIMPORT                        R9 K6 [assert]
      129 CALL                             R9 2 0
      130 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      132 MOVE                             R10 R3
      133 MOVE                             R11 R8
      134 GETIMPORT                        R9 K11 [table.insert]
      136 CALL                             R9 2 0
      137 NEWTABLE                         R7 0 2
      139 LOADK                            R8 K7 ["Head"]
      140 LOADK                            R9 K14 ["FaceFrontAttachment"]
      141 SETLIST                          R7 R8 2 [1]
      143 MOVE                             R8 R5
      144 MOVE                             R9 R7
      145 CALL                             R8 1 1
      146 JUMPIFNOTEQKNIL                  R8 ; [+2]
      148 JUMP                             ; [+19]
      149 JUMPIFNOTEQKNIL                  R8 ; [+2]
      151 LOADB                            R10 0 +1
      152 LOADB                            R10 1
      153 GETUPVAL                         R11 3
      154 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      156 FASTCALL2                        ASSERT R10 R11 ; [+3]
      158 GETIMPORT                        R9 K6 [assert]
      160 CALL                             R9 2 0
      161 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      163 MOVE                             R10 R3
      164 MOVE                             R11 R8
      165 GETIMPORT                        R9 K11 [table.insert]
      167 CALL                             R9 2 0
      168 NEWTABLE                         R7 0 2
      170 LOADK                            R8 K15 ["UpperTorso"]
      171 LOADK                            R9 K16 ["BodyFrontAttachment"]
      172 SETLIST                          R7 R8 2 [1]
      174 MOVE                             R8 R5
      175 MOVE                             R9 R7
      176 CALL                             R8 1 1
      177 JUMPIFNOTEQKNIL                  R8 ; [+2]
      179 JUMP                             ; [+19]
      180 JUMPIFNOTEQKNIL                  R8 ; [+2]
      182 LOADB                            R10 0 +1
      183 LOADB                            R10 1
      184 GETUPVAL                         R11 3
      185 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      187 FASTCALL2                        ASSERT R10 R11 ; [+3]
      189 GETIMPORT                        R9 K6 [assert]
      191 CALL                             R9 2 0
      192 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      194 MOVE                             R10 R3
      195 MOVE                             R11 R8
      196 GETIMPORT                        R9 K11 [table.insert]
      198 CALL                             R9 2 0
      199 NEWTABLE                         R7 0 2
      201 LOADK                            R8 K15 ["UpperTorso"]
      202 LOADK                            R9 K17 ["BodyBackAttachment"]
      203 SETLIST                          R7 R8 2 [1]
      205 MOVE                             R8 R5
      206 MOVE                             R9 R7
      207 CALL                             R8 1 1
      208 JUMPIFNOTEQKNIL                  R8 ; [+2]
      210 JUMP                             ; [+19]
      211 JUMPIFNOTEQKNIL                  R8 ; [+2]
      213 LOADB                            R10 0 +1
      214 LOADB                            R10 1
      215 GETUPVAL                         R11 3
      216 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      218 FASTCALL2                        ASSERT R10 R11 ; [+3]
      220 GETIMPORT                        R9 K6 [assert]
      222 CALL                             R9 2 0
      223 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      225 MOVE                             R10 R3
      226 MOVE                             R11 R8
      227 GETIMPORT                        R9 K11 [table.insert]
      229 CALL                             R9 2 0
      230 NEWTABLE                         R7 0 2
      232 LOADK                            R8 K15 ["UpperTorso"]
      233 LOADK                            R9 K18 ["NeckAttachment"]
      234 SETLIST                          R7 R8 2 [1]
      236 MOVE                             R8 R5
      237 MOVE                             R9 R7
      238 CALL                             R8 1 1
      239 JUMPIFNOTEQKNIL                  R8 ; [+2]
      241 JUMP                             ; [+19]
      242 JUMPIFNOTEQKNIL                  R8 ; [+2]
      244 LOADB                            R10 0 +1
      245 LOADB                            R10 1
      246 GETUPVAL                         R11 3
      247 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      249 FASTCALL2                        ASSERT R10 R11 ; [+3]
      251 GETIMPORT                        R9 K6 [assert]
      253 CALL                             R9 2 0
      254 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      256 MOVE                             R10 R3
      257 MOVE                             R11 R8
      258 GETIMPORT                        R9 K11 [table.insert]
      260 CALL                             R9 2 0
      261 NEWTABLE                         R7 0 2
      263 LOADK                            R8 K15 ["UpperTorso"]
      264 LOADK                            R9 K19 ["WristRigAttachment"]
      265 SETLIST                          R7 R8 2 [1]
      267 MOVE                             R8 R5
      268 MOVE                             R9 R7
      269 CALL                             R8 1 1
      270 JUMPIFNOTEQKNIL                  R8 ; [+2]
      272 JUMP                             ; [+19]
      273 JUMPIFNOTEQKNIL                  R8 ; [+2]
      275 LOADB                            R10 0 +1
      276 LOADB                            R10 1
      277 GETUPVAL                         R11 3
      278 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      280 FASTCALL2                        ASSERT R10 R11 ; [+3]
      282 GETIMPORT                        R9 K6 [assert]
      284 CALL                             R9 2 0
      285 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      287 MOVE                             R10 R3
      288 MOVE                             R11 R8
      289 GETIMPORT                        R9 K11 [table.insert]
      291 CALL                             R9 2 0
      292 NEWTABLE                         R7 0 2
      294 LOADK                            R8 K20 ["LowerTorso"]
      295 LOADK                            R9 K21 ["WaistBackAttachment"]
      296 SETLIST                          R7 R8 2 [1]
      298 MOVE                             R8 R5
      299 MOVE                             R9 R7
      300 CALL                             R8 1 1
      301 JUMPIFNOTEQKNIL                  R8 ; [+2]
      303 JUMP                             ; [+19]
      304 JUMPIFNOTEQKNIL                  R8 ; [+2]
      306 LOADB                            R10 0 +1
      307 LOADB                            R10 1
      308 GETUPVAL                         R11 3
      309 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      311 FASTCALL2                        ASSERT R10 R11 ; [+3]
      313 GETIMPORT                        R9 K6 [assert]
      315 CALL                             R9 2 0
      316 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      318 MOVE                             R10 R3
      319 MOVE                             R11 R8
      320 GETIMPORT                        R9 K11 [table.insert]
      322 CALL                             R9 2 0
      323 NEWTABLE                         R7 0 2
      325 LOADK                            R8 K20 ["LowerTorso"]
      326 LOADK                            R9 K22 ["WaistCenterAttachment"]
      327 SETLIST                          R7 R8 2 [1]
      329 MOVE                             R8 R5
      330 MOVE                             R9 R7
      331 CALL                             R8 1 1
      332 JUMPIFNOTEQKNIL                  R8 ; [+2]
      334 JUMP                             ; [+19]
      335 JUMPIFNOTEQKNIL                  R8 ; [+2]
      337 LOADB                            R10 0 +1
      338 LOADB                            R10 1
      339 GETUPVAL                         R11 3
      340 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      342 FASTCALL2                        ASSERT R10 R11 ; [+3]
      344 GETIMPORT                        R9 K6 [assert]
      346 CALL                             R9 2 0
      347 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      349 MOVE                             R10 R3
      350 MOVE                             R11 R8
      351 GETIMPORT                        R9 K11 [table.insert]
      353 CALL                             R9 2 0
      354 NEWTABLE                         R7 0 2
      356 LOADK                            R8 K20 ["LowerTorso"]
      357 LOADK                            R9 K23 ["WaistFrontAttachment"]
      358 SETLIST                          R7 R8 2 [1]
      360 MOVE                             R8 R5
      361 MOVE                             R9 R7
      362 CALL                             R8 1 1
      363 JUMPIFNOTEQKNIL                  R8 ; [+2]
      365 JUMP                             ; [+19]
      366 JUMPIFNOTEQKNIL                  R8 ; [+2]
      368 LOADB                            R10 0 +1
      369 LOADB                            R10 1
      370 GETUPVAL                         R11 3
      371 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      373 FASTCALL2                        ASSERT R10 R11 ; [+3]
      375 GETIMPORT                        R9 K6 [assert]
      377 CALL                             R9 2 0
      378 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      380 MOVE                             R10 R3
      381 MOVE                             R11 R8
      382 GETIMPORT                        R9 K11 [table.insert]
      384 CALL                             R9 2 0
      385 NEWTABLE                         R7 0 2
      387 LOADK                            R8 K15 ["UpperTorso"]
      388 LOADK                            R9 K24 ["LeftCollarAttachment"]
      389 SETLIST                          R7 R8 2 [1]
      391 NEWTABLE                         R8 0 2
      393 LOADK                            R9 K15 ["UpperTorso"]
      394 LOADK                            R10 K25 ["RightCollarAttachment"]
      395 SETLIST                          R8 R9 2 [1]
      397 MOVE                             R9 R5
      398 MOVE                             R10 R7
      399 CALL                             R9 1 1
      400 JUMPIFNOTEQKNIL                  R9 ; [+2]
      402 JUMP                             ; [+41]
      403 JUMPIFNOTEQKNIL                  R9 ; [+2]
      405 LOADB                            R11 0 +1
      406 LOADB                            R11 1
      407 GETUPVAL                         R12 3
      408 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      410 FASTCALL2                        ASSERT R11 R12 ; [+3]
      412 GETIMPORT                        R10 K6 [assert]
      414 CALL                             R10 2 0
      415 JUMPIFEQKNIL                     R8 ; [+21]
      417 MOVE                             R10 R5
      418 MOVE                             R11 R8
      419 CALL                             R10 1 1
      420 JUMPIFEQKNIL                     R10 ; [+16]
      422 GETTABLEKS                       R11 R9 K26 ["name"]
      424 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      426 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      428 MOVE                             R12 R3
      429 MOVE                             R13 R10
      430 GETIMPORT                        R11 K11 [table.insert]
      432 CALL                             R11 2 0
      433 GETTABLEKS                       R11 R10 K26 ["name"]
      435 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      437 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      439 MOVE                             R11 R3
      440 MOVE                             R12 R9
      441 GETIMPORT                        R10 K11 [table.insert]
      443 CALL                             R10 2 0
      444 NEWTABLE                         R7 0 2
      446 LOADK                            R8 K28 ["LeftUpperArm"]
      447 LOADK                            R9 K29 ["LeftShoulderAttachment"]
      448 SETLIST                          R7 R8 2 [1]
      450 NEWTABLE                         R8 0 2
      452 LOADK                            R9 K30 ["RightUpperArm"]
      453 LOADK                            R10 K31 ["RightShoulderAttachment"]
      454 SETLIST                          R8 R9 2 [1]
      456 MOVE                             R9 R5
      457 MOVE                             R10 R7
      458 CALL                             R9 1 1
      459 JUMPIFNOTEQKNIL                  R9 ; [+2]
      461 JUMP                             ; [+41]
      462 JUMPIFNOTEQKNIL                  R9 ; [+2]
      464 LOADB                            R11 0 +1
      465 LOADB                            R11 1
      466 GETUPVAL                         R12 3
      467 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      469 FASTCALL2                        ASSERT R11 R12 ; [+3]
      471 GETIMPORT                        R10 K6 [assert]
      473 CALL                             R10 2 0
      474 JUMPIFEQKNIL                     R8 ; [+21]
      476 MOVE                             R10 R5
      477 MOVE                             R11 R8
      478 CALL                             R10 1 1
      479 JUMPIFEQKNIL                     R10 ; [+16]
      481 GETTABLEKS                       R11 R9 K26 ["name"]
      483 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      485 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      487 MOVE                             R12 R3
      488 MOVE                             R13 R10
      489 GETIMPORT                        R11 K11 [table.insert]
      491 CALL                             R11 2 0
      492 GETTABLEKS                       R11 R10 K26 ["name"]
      494 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      496 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      498 MOVE                             R11 R3
      499 MOVE                             R12 R9
      500 GETIMPORT                        R10 K11 [table.insert]
      502 CALL                             R10 2 0
      503 NEWTABLE                         R7 0 2
      505 LOADK                            R8 K32 ["LeftHand"]
      506 LOADK                            R9 K33 ["LeftGripAttachment"]
      507 SETLIST                          R7 R8 2 [1]
      509 NEWTABLE                         R8 0 2
      511 LOADK                            R9 K34 ["RightHand"]
      512 LOADK                            R10 K35 ["RightGripAttachment"]
      513 SETLIST                          R8 R9 2 [1]
      515 MOVE                             R9 R5
      516 MOVE                             R10 R7
      517 CALL                             R9 1 1
      518 JUMPIFNOTEQKNIL                  R9 ; [+2]
      520 JUMP                             ; [+41]
      521 JUMPIFNOTEQKNIL                  R9 ; [+2]
      523 LOADB                            R11 0 +1
      524 LOADB                            R11 1
      525 GETUPVAL                         R12 3
      526 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      528 FASTCALL2                        ASSERT R11 R12 ; [+3]
      530 GETIMPORT                        R10 K6 [assert]
      532 CALL                             R10 2 0
      533 JUMPIFEQKNIL                     R8 ; [+21]
      535 MOVE                             R10 R5
      536 MOVE                             R11 R8
      537 CALL                             R10 1 1
      538 JUMPIFEQKNIL                     R10 ; [+16]
      540 GETTABLEKS                       R11 R9 K26 ["name"]
      542 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      544 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      546 MOVE                             R12 R3
      547 MOVE                             R13 R10
      548 GETIMPORT                        R11 K11 [table.insert]
      550 CALL                             R11 2 0
      551 GETTABLEKS                       R11 R10 K26 ["name"]
      553 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      555 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      557 MOVE                             R11 R3
      558 MOVE                             R12 R9
      559 GETIMPORT                        R10 K11 [table.insert]
      561 CALL                             R10 2 0
      562 NEWTABLE                         R7 0 2
      564 LOADK                            R8 K36 ["LeftFoot"]
      565 LOADK                            R9 K37 ["LeftFootAttachment"]
      566 SETLIST                          R7 R8 2 [1]
      568 NEWTABLE                         R8 0 2
      570 LOADK                            R9 K38 ["RightFoot"]
      571 LOADK                            R10 K39 ["RightFootAttachment"]
      572 SETLIST                          R8 R9 2 [1]
      574 MOVE                             R9 R5
      575 MOVE                             R10 R7
      576 CALL                             R9 1 1
      577 JUMPIFNOTEQKNIL                  R9 ; [+2]
      579 RETURN                           R3 1
      580 JUMPIFNOTEQKNIL                  R9 ; [+2]
      582 LOADB                            R11 0 +1
      583 LOADB                            R11 1
      584 GETUPVAL                         R12 3
      585 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      587 FASTCALL2                        ASSERT R11 R12 ; [+3]
      589 GETIMPORT                        R10 K6 [assert]
      591 CALL                             R10 2 0
      592 JUMPIFEQKNIL                     R8 ; [+21]
      594 MOVE                             R10 R5
      595 MOVE                             R11 R8
      596 CALL                             R10 1 1
      597 JUMPIFEQKNIL                     R10 ; [+16]
      599 GETTABLEKS                       R11 R9 K26 ["name"]
      601 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      603 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      605 MOVE                             R12 R3
      606 MOVE                             R13 R10
      607 GETIMPORT                        R11 K11 [table.insert]
      609 CALL                             R11 2 0
      610 GETTABLEKS                       R11 R10 K26 ["name"]
      612 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      614 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      616 MOVE                             R11 R3
      617 MOVE                             R12 R9
      618 GETIMPORT                        R10 K11 [table.insert]
      620 CALL                             R10 2 0
      621 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["worldModel"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K7 [{["name"] = "AttachmentTool", [2], ["points"], ["generallyEquivalentPointNames"], ["additionalToolbarItems"]}]
        9 GETTABLEKS                       R5 R0 K0 ["worldModel"]
       11 SETTABLEKS                       R5 R4 K0 ["worldModel"]
       13 SETTABLEKS                       R1 R4 K4 ["points"]
       15 NEWTABLE                         R5 0 1
       17 NEWTABLE                         R6 0 2
       19 LOADK                            R7 K8 ["HairAttachment"]
       20 LOADK                            R8 K9 ["HatAttachment"]
       21 SETLIST                          R6 R7 2 [1]
       23 SETLIST                          R5 R6 1 [1]
       25 SETTABLEKS                       R5 R4 K5 ["generallyEquivalentPointNames"]
       27 GETTABLEKS                       R5 R0 K6 ["additionalToolbarItems"]
       29 SETTABLEKS                       R5 R4 K6 ["additionalToolbarItems"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ViewportToolingFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["EditingTools"]
       38 GETTABLEKS                       R5 R5 K13 ["BodyPointsTool"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Components"]
       47 GETTABLEKS                       R6 R6 K12 ["EditingTools"]
       49 GETTABLEKS                       R6 R6 K13 ["BodyPointsTool"]
       51 GETTABLEKS                       R6 R6 K14 ["Types"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K15 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["Constants"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K9 ["Src"]
       67 GETTABLEKS                       R8 R8 K14 ["Types"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K9 ["Src"]
       74 GETTABLEKS                       R9 R9 K10 ["Components"]
       76 GETTABLEKS                       R9 R9 K12 ["EditingTools"]
       78 GETTABLEKS                       R9 R9 K17 ["findPaletteKeyForAttachmentName"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K9 ["Src"]
       85 GETTABLEKS                       R10 R10 K15 ["Util"]
       87 GETTABLEKS                       R10 R10 K18 ["getCFrameRelativeToBasePart"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K9 ["Src"]
       94 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       96 GETTABLEKS                       R11 R11 K20 ["useMoveAccessoriesAlongsideAttachments"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K9 ["Src"]
      103 GETTABLEKS                       R12 R12 K21 ["Flags"]
      105 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
      107 CALL                             R11 1 1
      108 DUPCLOSURE                       R12 K23 [PROTO_10]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 DUPCLOSURE                       R13 K24 [PROTO_11]
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R4
      120 RETURN                           R13 1
