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
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+75]
       22 GETUPVAL                         R3 4
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R2 5
       26 GETUPVAL                         R3 0
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R2 R2 K6 ["Position"]
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["Position"]
       34 GETUPVAL                         R3 1
       35 LOADK                            R5 K7 ["Humanoid"]
       36 NAMECALL                         R3 R3 K8 ["FindFirstChildWhichIsA"]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R5 4
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+6]
       42 GETUPVAL                         R4 0
       43 LOADK                            R6 K9 ["BasePart"]
       44 NAMECALL                         R4 R4 K10 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R4 2 1
       47 JUMP                             ; [+3]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K11 ["Parent"]
       51 JUMPIFEQKNIL                     R3 ; [+35]
       53 JUMPIFEQKNIL                     R4 ; [+33]
       55 LOADK                            R7 K9 ["BasePart"]
       56 NAMECALL                         R5 R4 K12 ["IsA"]
       58 CALL                             R5 2 1
       59 JUMPIFNOT                        R5 ; [+27]
       60 MOVE                             R7 R4
       61 NAMECALL                         R5 R3 K13 ["ComputeOriginalSizeForPart"]
       63 CALL                             R5 2 1
       64 GETTABLEKS                       R6 R4 K14 ["Size"]
       66 JUMPIFEQKNIL                     R5 ; [+16]
       68 GETTABLEKS                       R7 R6 K15 ["X"]
       70 JUMPIFEQKN                       R7 K16 [0] ; [+12]
       72 GETTABLEKS                       R7 R6 K17 ["Y"]
       74 JUMPIFEQKN                       R7 K16 [0] ; [+8]
       76 GETTABLEKS                       R7 R6 K18 ["Z"]
       78 JUMPIFEQKN                       R7 K16 [0] ; [+4]
       80 DIV                              R7 R5 R6
       81 MUL                              R2 R7 R2
       82 JUMP                             ; [+4]
       83 GETIMPORT                        R7 K20 [warn]
       85 LOADK                            R8 K21 ["Original size is nil or part size is 0"]
       86 CALL                             R7 1 0
       87 JUMPIFEQKNIL                     R1 ; [+30]
       89 LOADK                            R7 K22 ["Vector3Value"]
       90 NAMECALL                         R5 R1 K12 ["IsA"]
       92 CALL                             R5 2 1
       93 JUMPIFNOT                        R5 ; [+24]
       94 SETTABLEKS                       R2 R1 K23 ["Value"]
       96 JUMP                             ; [+21]
       97 JUMPIFEQKNIL                     R1 ; [+20]
       99 LOADK                            R4 K22 ["Vector3Value"]
      100 NAMECALL                         R2 R1 K12 ["IsA"]
      102 CALL                             R2 2 1
      103 JUMPIFNOT                        R2 ; [+14]
      104 GETUPVAL                         R3 4
      105 CALL                             R3 0 1
      106 JUMPIFNOT                        R3 ; [+6]
      107 GETUPVAL                         R2 5
      108 GETUPVAL                         R3 0
      109 CALL                             R2 1 1
      110 GETTABLEKS                       R2 R2 K6 ["Position"]
      112 JUMP                             ; [+3]
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R2 R2 K6 ["Position"]
      116 SETTABLEKS                       R2 R1 K23 ["Value"]
      118 GETUPVAL                         R2 6
      119 GETTABLEKS                       R2 R2 K24 ["update"]
      121 GETUPVAL                         R3 0
      122 CALL                             R2 1 0
      123 RETURN                           R0 0

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
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 SETTABLEKS                       R5 R4 K9 ["onChange"]
       67 NEWCLOSURE                       R5 P2
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          REF R2
       70 CAPTURE                          UPVAL U7
       71 SETTABLEKS                       R5 R4 K10 ["onSelect"]
       73 NEWCLOSURE                       R5 P3
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          REF R2
       76 CAPTURE                          UPVAL U2
       77 SETTABLEKS                       R5 R4 K11 ["onUnselect"]
       79 NEWCLOSURE                       R5 P4
       80 CAPTURE                          REF R2
       81 SETTABLEKS                       R5 R4 K12 ["connectChanged"]
       83 CLOSEUPVALS                      R2
       84 RETURN                           R4 1

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
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R1
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R7 0 2
       47 LOADK                            R8 K7 ["Head"]
       48 LOADK                            R9 K8 ["HatAttachment"]
       49 SETLIST                          R7 R8 2 [1]
       51 MOVE                             R8 R5
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 JUMPIFNOTEQKNIL                  R8 ; [+2]
       56 JUMP                             ; [+19]
       57 JUMPIFNOTEQKNIL                  R8 ; [+2]
       59 LOADB                            R10 0 +1
       60 LOADB                            R10 1
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
       64 FASTCALL2                        ASSERT R10 R11 ; [+3]
       66 GETIMPORT                        R9 K6 [assert]
       68 CALL                             R9 2 0
       69 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       71 MOVE                             R10 R3
       72 MOVE                             R11 R8
       73 GETIMPORT                        R9 K11 [table.insert]
       75 CALL                             R9 2 0
       76 NEWTABLE                         R7 0 2
       78 LOADK                            R8 K7 ["Head"]
       79 LOADK                            R9 K12 ["HairAttachment"]
       80 SETLIST                          R7 R8 2 [1]
       82 MOVE                             R8 R5
       83 MOVE                             R9 R7
       84 CALL                             R8 1 1
       85 JUMPIFNOTEQKNIL                  R8 ; [+2]
       87 JUMP                             ; [+19]
       88 JUMPIFNOTEQKNIL                  R8 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
       95 FASTCALL2                        ASSERT R10 R11 ; [+3]
       97 GETIMPORT                        R9 K6 [assert]
       99 CALL                             R9 2 0
      100 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      102 MOVE                             R10 R3
      103 MOVE                             R11 R8
      104 GETIMPORT                        R9 K11 [table.insert]
      106 CALL                             R9 2 0
      107 NEWTABLE                         R7 0 2
      109 LOADK                            R8 K7 ["Head"]
      110 LOADK                            R9 K13 ["FaceCenterAttachment"]
      111 SETLIST                          R7 R8 2 [1]
      113 MOVE                             R8 R5
      114 MOVE                             R9 R7
      115 CALL                             R8 1 1
      116 JUMPIFNOTEQKNIL                  R8 ; [+2]
      118 JUMP                             ; [+19]
      119 JUMPIFNOTEQKNIL                  R8 ; [+2]
      121 LOADB                            R10 0 +1
      122 LOADB                            R10 1
      123 GETUPVAL                         R11 3
      124 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      126 FASTCALL2                        ASSERT R10 R11 ; [+3]
      128 GETIMPORT                        R9 K6 [assert]
      130 CALL                             R9 2 0
      131 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      133 MOVE                             R10 R3
      134 MOVE                             R11 R8
      135 GETIMPORT                        R9 K11 [table.insert]
      137 CALL                             R9 2 0
      138 NEWTABLE                         R7 0 2
      140 LOADK                            R8 K7 ["Head"]
      141 LOADK                            R9 K14 ["FaceFrontAttachment"]
      142 SETLIST                          R7 R8 2 [1]
      144 MOVE                             R8 R5
      145 MOVE                             R9 R7
      146 CALL                             R8 1 1
      147 JUMPIFNOTEQKNIL                  R8 ; [+2]
      149 JUMP                             ; [+19]
      150 JUMPIFNOTEQKNIL                  R8 ; [+2]
      152 LOADB                            R10 0 +1
      153 LOADB                            R10 1
      154 GETUPVAL                         R11 3
      155 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      157 FASTCALL2                        ASSERT R10 R11 ; [+3]
      159 GETIMPORT                        R9 K6 [assert]
      161 CALL                             R9 2 0
      162 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      164 MOVE                             R10 R3
      165 MOVE                             R11 R8
      166 GETIMPORT                        R9 K11 [table.insert]
      168 CALL                             R9 2 0
      169 NEWTABLE                         R7 0 2
      171 LOADK                            R8 K15 ["UpperTorso"]
      172 LOADK                            R9 K16 ["BodyFrontAttachment"]
      173 SETLIST                          R7 R8 2 [1]
      175 MOVE                             R8 R5
      176 MOVE                             R9 R7
      177 CALL                             R8 1 1
      178 JUMPIFNOTEQKNIL                  R8 ; [+2]
      180 JUMP                             ; [+19]
      181 JUMPIFNOTEQKNIL                  R8 ; [+2]
      183 LOADB                            R10 0 +1
      184 LOADB                            R10 1
      185 GETUPVAL                         R11 3
      186 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      188 FASTCALL2                        ASSERT R10 R11 ; [+3]
      190 GETIMPORT                        R9 K6 [assert]
      192 CALL                             R9 2 0
      193 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      195 MOVE                             R10 R3
      196 MOVE                             R11 R8
      197 GETIMPORT                        R9 K11 [table.insert]
      199 CALL                             R9 2 0
      200 NEWTABLE                         R7 0 2
      202 LOADK                            R8 K15 ["UpperTorso"]
      203 LOADK                            R9 K17 ["BodyBackAttachment"]
      204 SETLIST                          R7 R8 2 [1]
      206 MOVE                             R8 R5
      207 MOVE                             R9 R7
      208 CALL                             R8 1 1
      209 JUMPIFNOTEQKNIL                  R8 ; [+2]
      211 JUMP                             ; [+19]
      212 JUMPIFNOTEQKNIL                  R8 ; [+2]
      214 LOADB                            R10 0 +1
      215 LOADB                            R10 1
      216 GETUPVAL                         R11 3
      217 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      219 FASTCALL2                        ASSERT R10 R11 ; [+3]
      221 GETIMPORT                        R9 K6 [assert]
      223 CALL                             R9 2 0
      224 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      226 MOVE                             R10 R3
      227 MOVE                             R11 R8
      228 GETIMPORT                        R9 K11 [table.insert]
      230 CALL                             R9 2 0
      231 NEWTABLE                         R7 0 2
      233 LOADK                            R8 K15 ["UpperTorso"]
      234 LOADK                            R9 K18 ["NeckAttachment"]
      235 SETLIST                          R7 R8 2 [1]
      237 MOVE                             R8 R5
      238 MOVE                             R9 R7
      239 CALL                             R8 1 1
      240 JUMPIFNOTEQKNIL                  R8 ; [+2]
      242 JUMP                             ; [+19]
      243 JUMPIFNOTEQKNIL                  R8 ; [+2]
      245 LOADB                            R10 0 +1
      246 LOADB                            R10 1
      247 GETUPVAL                         R11 3
      248 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      250 FASTCALL2                        ASSERT R10 R11 ; [+3]
      252 GETIMPORT                        R9 K6 [assert]
      254 CALL                             R9 2 0
      255 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      257 MOVE                             R10 R3
      258 MOVE                             R11 R8
      259 GETIMPORT                        R9 K11 [table.insert]
      261 CALL                             R9 2 0
      262 NEWTABLE                         R7 0 2
      264 LOADK                            R8 K15 ["UpperTorso"]
      265 LOADK                            R9 K19 ["WristRigAttachment"]
      266 SETLIST                          R7 R8 2 [1]
      268 MOVE                             R8 R5
      269 MOVE                             R9 R7
      270 CALL                             R8 1 1
      271 JUMPIFNOTEQKNIL                  R8 ; [+2]
      273 JUMP                             ; [+19]
      274 JUMPIFNOTEQKNIL                  R8 ; [+2]
      276 LOADB                            R10 0 +1
      277 LOADB                            R10 1
      278 GETUPVAL                         R11 3
      279 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      281 FASTCALL2                        ASSERT R10 R11 ; [+3]
      283 GETIMPORT                        R9 K6 [assert]
      285 CALL                             R9 2 0
      286 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      288 MOVE                             R10 R3
      289 MOVE                             R11 R8
      290 GETIMPORT                        R9 K11 [table.insert]
      292 CALL                             R9 2 0
      293 NEWTABLE                         R7 0 2
      295 LOADK                            R8 K20 ["LowerTorso"]
      296 LOADK                            R9 K21 ["WaistBackAttachment"]
      297 SETLIST                          R7 R8 2 [1]
      299 MOVE                             R8 R5
      300 MOVE                             R9 R7
      301 CALL                             R8 1 1
      302 JUMPIFNOTEQKNIL                  R8 ; [+2]
      304 JUMP                             ; [+19]
      305 JUMPIFNOTEQKNIL                  R8 ; [+2]
      307 LOADB                            R10 0 +1
      308 LOADB                            R10 1
      309 GETUPVAL                         R11 3
      310 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      312 FASTCALL2                        ASSERT R10 R11 ; [+3]
      314 GETIMPORT                        R9 K6 [assert]
      316 CALL                             R9 2 0
      317 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      319 MOVE                             R10 R3
      320 MOVE                             R11 R8
      321 GETIMPORT                        R9 K11 [table.insert]
      323 CALL                             R9 2 0
      324 NEWTABLE                         R7 0 2
      326 LOADK                            R8 K20 ["LowerTorso"]
      327 LOADK                            R9 K22 ["WaistCenterAttachment"]
      328 SETLIST                          R7 R8 2 [1]
      330 MOVE                             R8 R5
      331 MOVE                             R9 R7
      332 CALL                             R8 1 1
      333 JUMPIFNOTEQKNIL                  R8 ; [+2]
      335 JUMP                             ; [+19]
      336 JUMPIFNOTEQKNIL                  R8 ; [+2]
      338 LOADB                            R10 0 +1
      339 LOADB                            R10 1
      340 GETUPVAL                         R11 3
      341 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      343 FASTCALL2                        ASSERT R10 R11 ; [+3]
      345 GETIMPORT                        R9 K6 [assert]
      347 CALL                             R9 2 0
      348 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      350 MOVE                             R10 R3
      351 MOVE                             R11 R8
      352 GETIMPORT                        R9 K11 [table.insert]
      354 CALL                             R9 2 0
      355 NEWTABLE                         R7 0 2
      357 LOADK                            R8 K20 ["LowerTorso"]
      358 LOADK                            R9 K23 ["WaistFrontAttachment"]
      359 SETLIST                          R7 R8 2 [1]
      361 MOVE                             R8 R5
      362 MOVE                             R9 R7
      363 CALL                             R8 1 1
      364 JUMPIFNOTEQKNIL                  R8 ; [+2]
      366 JUMP                             ; [+19]
      367 JUMPIFNOTEQKNIL                  R8 ; [+2]
      369 LOADB                            R10 0 +1
      370 LOADB                            R10 1
      371 GETUPVAL                         R11 3
      372 GETTABLEKS                       R11 R11 K4 ["LUAU_ANALYZE_ERROR"]
      374 FASTCALL2                        ASSERT R10 R11 ; [+3]
      376 GETIMPORT                        R9 K6 [assert]
      378 CALL                             R9 2 0
      379 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      381 MOVE                             R10 R3
      382 MOVE                             R11 R8
      383 GETIMPORT                        R9 K11 [table.insert]
      385 CALL                             R9 2 0
      386 NEWTABLE                         R7 0 2
      388 LOADK                            R8 K15 ["UpperTorso"]
      389 LOADK                            R9 K24 ["LeftCollarAttachment"]
      390 SETLIST                          R7 R8 2 [1]
      392 NEWTABLE                         R8 0 2
      394 LOADK                            R9 K15 ["UpperTorso"]
      395 LOADK                            R10 K25 ["RightCollarAttachment"]
      396 SETLIST                          R8 R9 2 [1]
      398 MOVE                             R9 R5
      399 MOVE                             R10 R7
      400 CALL                             R9 1 1
      401 JUMPIFNOTEQKNIL                  R9 ; [+2]
      403 JUMP                             ; [+41]
      404 JUMPIFNOTEQKNIL                  R9 ; [+2]
      406 LOADB                            R11 0 +1
      407 LOADB                            R11 1
      408 GETUPVAL                         R12 3
      409 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      411 FASTCALL2                        ASSERT R11 R12 ; [+3]
      413 GETIMPORT                        R10 K6 [assert]
      415 CALL                             R10 2 0
      416 JUMPIFEQKNIL                     R8 ; [+21]
      418 MOVE                             R10 R5
      419 MOVE                             R11 R8
      420 CALL                             R10 1 1
      421 JUMPIFEQKNIL                     R10 ; [+16]
      423 GETTABLEKS                       R11 R9 K26 ["name"]
      425 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      427 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      429 MOVE                             R12 R3
      430 MOVE                             R13 R10
      431 GETIMPORT                        R11 K11 [table.insert]
      433 CALL                             R11 2 0
      434 GETTABLEKS                       R11 R10 K26 ["name"]
      436 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      438 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      440 MOVE                             R11 R3
      441 MOVE                             R12 R9
      442 GETIMPORT                        R10 K11 [table.insert]
      444 CALL                             R10 2 0
      445 NEWTABLE                         R7 0 2
      447 LOADK                            R8 K28 ["LeftUpperArm"]
      448 LOADK                            R9 K29 ["LeftShoulderAttachment"]
      449 SETLIST                          R7 R8 2 [1]
      451 NEWTABLE                         R8 0 2
      453 LOADK                            R9 K30 ["RightUpperArm"]
      454 LOADK                            R10 K31 ["RightShoulderAttachment"]
      455 SETLIST                          R8 R9 2 [1]
      457 MOVE                             R9 R5
      458 MOVE                             R10 R7
      459 CALL                             R9 1 1
      460 JUMPIFNOTEQKNIL                  R9 ; [+2]
      462 JUMP                             ; [+41]
      463 JUMPIFNOTEQKNIL                  R9 ; [+2]
      465 LOADB                            R11 0 +1
      466 LOADB                            R11 1
      467 GETUPVAL                         R12 3
      468 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      470 FASTCALL2                        ASSERT R11 R12 ; [+3]
      472 GETIMPORT                        R10 K6 [assert]
      474 CALL                             R10 2 0
      475 JUMPIFEQKNIL                     R8 ; [+21]
      477 MOVE                             R10 R5
      478 MOVE                             R11 R8
      479 CALL                             R10 1 1
      480 JUMPIFEQKNIL                     R10 ; [+16]
      482 GETTABLEKS                       R11 R9 K26 ["name"]
      484 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      486 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      488 MOVE                             R12 R3
      489 MOVE                             R13 R10
      490 GETIMPORT                        R11 K11 [table.insert]
      492 CALL                             R11 2 0
      493 GETTABLEKS                       R11 R10 K26 ["name"]
      495 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      497 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      499 MOVE                             R11 R3
      500 MOVE                             R12 R9
      501 GETIMPORT                        R10 K11 [table.insert]
      503 CALL                             R10 2 0
      504 NEWTABLE                         R7 0 2
      506 LOADK                            R8 K32 ["LeftHand"]
      507 LOADK                            R9 K33 ["LeftGripAttachment"]
      508 SETLIST                          R7 R8 2 [1]
      510 NEWTABLE                         R8 0 2
      512 LOADK                            R9 K34 ["RightHand"]
      513 LOADK                            R10 K35 ["RightGripAttachment"]
      514 SETLIST                          R8 R9 2 [1]
      516 MOVE                             R9 R5
      517 MOVE                             R10 R7
      518 CALL                             R9 1 1
      519 JUMPIFNOTEQKNIL                  R9 ; [+2]
      521 JUMP                             ; [+41]
      522 JUMPIFNOTEQKNIL                  R9 ; [+2]
      524 LOADB                            R11 0 +1
      525 LOADB                            R11 1
      526 GETUPVAL                         R12 3
      527 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      529 FASTCALL2                        ASSERT R11 R12 ; [+3]
      531 GETIMPORT                        R10 K6 [assert]
      533 CALL                             R10 2 0
      534 JUMPIFEQKNIL                     R8 ; [+21]
      536 MOVE                             R10 R5
      537 MOVE                             R11 R8
      538 CALL                             R10 1 1
      539 JUMPIFEQKNIL                     R10 ; [+16]
      541 GETTABLEKS                       R11 R9 K26 ["name"]
      543 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      545 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      547 MOVE                             R12 R3
      548 MOVE                             R13 R10
      549 GETIMPORT                        R11 K11 [table.insert]
      551 CALL                             R11 2 0
      552 GETTABLEKS                       R11 R10 K26 ["name"]
      554 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      556 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      558 MOVE                             R11 R3
      559 MOVE                             R12 R9
      560 GETIMPORT                        R10 K11 [table.insert]
      562 CALL                             R10 2 0
      563 NEWTABLE                         R7 0 2
      565 LOADK                            R8 K36 ["LeftFoot"]
      566 LOADK                            R9 K37 ["LeftFootAttachment"]
      567 SETLIST                          R7 R8 2 [1]
      569 NEWTABLE                         R8 0 2
      571 LOADK                            R9 K38 ["RightFoot"]
      572 LOADK                            R10 K39 ["RightFootAttachment"]
      573 SETLIST                          R8 R9 2 [1]
      575 MOVE                             R9 R5
      576 MOVE                             R10 R7
      577 CALL                             R9 1 1
      578 JUMPIFNOTEQKNIL                  R9 ; [+2]
      580 RETURN                           R3 1
      581 JUMPIFNOTEQKNIL                  R9 ; [+2]
      583 LOADB                            R11 0 +1
      584 LOADB                            R11 1
      585 GETUPVAL                         R12 3
      586 GETTABLEKS                       R12 R12 K4 ["LUAU_ANALYZE_ERROR"]
      588 FASTCALL2                        ASSERT R11 R12 ; [+3]
      590 GETIMPORT                        R10 K6 [assert]
      592 CALL                             R10 2 0
      593 JUMPIFEQKNIL                     R8 ; [+21]
      595 MOVE                             R10 R5
      596 MOVE                             R11 R8
      597 CALL                             R10 1 1
      598 JUMPIFEQKNIL                     R10 ; [+16]
      600 GETTABLEKS                       R11 R9 K26 ["name"]
      602 SETTABLEKS                       R11 R10 K27 ["symmetricalPartner"]
      604 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      606 MOVE                             R12 R3
      607 MOVE                             R13 R10
      608 GETIMPORT                        R11 K11 [table.insert]
      610 CALL                             R11 2 0
      611 GETTABLEKS                       R11 R10 K26 ["name"]
      613 SETTABLEKS                       R11 R9 K27 ["symmetricalPartner"]
      615 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      617 MOVE                             R11 R3
      618 MOVE                             R12 R9
      619 GETIMPORT                        R10 K11 [table.insert]
      621 CALL                             R10 2 0
      622 RETURN                           R3 1

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
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["createElement"]
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
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K9 ["Src"]
      112 GETTABLEKS                       R13 R13 K21 ["Flags"]
      114 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarPreviewerEnableAttachmentTool"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K9 ["Src"]
      121 GETTABLEKS                       R14 R14 K21 ["Flags"]
      123 GETTABLEKS                       R14 R14 K24 ["getFFlagEnableComputeOriginalSizeForPart"]
      125 CALL                             R13 1 1
      126 DUPCLOSURE                       R14 K25 [PROTO_10]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R8
      135 DUPCLOSURE                       R15 K26 [PROTO_11]
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R4
      140 RETURN                           R15 1
