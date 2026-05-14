PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 LOADK                            R5 K1 ["Collaborator"]
        6 LOADK                            R6 K2 ["Idle"]
        7 NAMECALL                         R3 R2 K3 ["getText"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 JUMPIF                           R1 ; [+6]
       12 LOADK                            R5 K1 ["Collaborator"]
       13 LOADK                            R6 K4 ["Workspace"]
       14 NAMECALL                         R3 R2 K3 ["getText"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1
       18 GETIMPORT                        R3 K7 [string.format]
       20 LOADK                            R6 K1 ["Collaborator"]
       21 LOADK                            R7 K8 ["Editing"]
       22 NAMECALL                         R4 R2 K3 ["getText"]
       24 CALL                             R4 3 1
       25 MOVE                             R5 R1
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Status"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Scripting"]
        7 JUMPIFEQ                         R1 R2 ; [+9]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["Status"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["PrivateScripting"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+34]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["CurDocGUID"]
       21 NAMECALL                         R1 R1 K4 ["GetSourceContainerByScriptGuid"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+16]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R3 R1 K5 ["Name"]
       28 CALL                             R2 1 0
       29 LOADK                            R4 K5 ["Name"]
       30 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       32 CALL                             R2 2 1
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 NAMECALL                         R2 R2 K7 ["Connect"]
       38 CALL                             R2 2 1
       39 MOVE                             R0 R2
       40 JUMP                             ; [+37]
       41 GETUPVAL                         R2 3
       42 GETUPVAL                         R3 4
       43 LOADK                            R5 K8 ["Collaborator"]
       44 LOADK                            R6 K9 ["DeletedScript"]
       45 NAMECALL                         R3 R3 K10 ["getText"]
       47 CALL                             R3 3 -1
       48 CALL                             R2 -1 0
       49 JUMP                             ; [+28]
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K0 ["Status"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K11 ["Editing3D"]
       56 JUMPIFEQ                         R1 R2 ; [+9]
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K0 ["Status"]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K12 ["None"]
       64 JUMPIFNOTEQ                      R1 R2 ; [+5]
       66 GETUPVAL                         R1 3
       67 LOADNIL                          R2
       68 CALL                             R1 1 0
       69 JUMP                             ; [+8]
       70 GETIMPORT                        R1 K14 [error]
       72 LOADK                            R3 K15 ["Unsupported collaborator status: "]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K0 ["Status"]
       76 CONCAT                           R2 R3 R4
       77 CALL                             R1 1 0
       78 NEWCLOSURE                       R1 P1
       79 CAPTURE                          REF R0
       80 CLOSEUPVALS                      R0
       81 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+24]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 GETIMPORT                        R3 K3 [TweenInfo.new]
        8 LOADK                            R4 K4 [0.2]
        9 GETIMPORT                        R5 K8 [Enum.EasingStyle.Cubic]
       11 CALL                             R3 2 1
       12 DUPTABLE                         R4 K10 [{"Size"}]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K11 ["collaboratorItem"]
       16 GETTABLEKS                       R5 R5 K12 ["size"]
       18 SETTABLEKS                       R5 R4 K9 ["Size"]
       20 NAMECALL                         R0 R0 K13 ["Create"]
       22 CALL                             R0 4 1
       23 NAMECALL                         R1 R0 K14 ["Play"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+28]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K1 ["ClipsDescendants"]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["current"]
       15 GETIMPORT                        R3 K4 [TweenInfo.new]
       17 LOADK                            R4 K5 [0.2]
       18 CALL                             R3 1 1
       19 DUPTABLE                         R4 K7 [{"Size"}]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K8 ["collaboratorItem"]
       23 GETTABLEKS                       R5 R5 K9 ["expandedSize"]
       25 SETTABLEKS                       R5 R4 K6 ["Size"]
       27 NAMECALL                         R0 R0 K10 ["Create"]
       29 CALL                             R0 4 1
       30 NAMECALL                         R1 R0 K11 ["Play"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 GETIMPORT                        R3 K3 [TweenInfo.new]
        9 LOADK                            R4 K4 [0.2]
       10 GETIMPORT                        R5 K8 [Enum.EasingStyle.Cubic]
       12 CALL                             R3 2 1
       13 DUPTABLE                         R4 K10 [{"Size"}]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K11 ["collaboratorItem"]
       17 GETTABLEKS                       R5 R5 K12 ["size"]
       19 SETTABLEKS                       R5 R4 K9 ["Size"]
       21 NAMECALL                         R0 R0 K13 ["Create"]
       23 CALL                             R0 4 1
       24 NAMECALL                         R1 R0 K14 ["Play"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R5 R5 K1 ["use"]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["use"]
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K2 ["useRef"]
       21 LOADNIL                          R8
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R6
       32 NEWTABLE                         R10 0 2
       34 GETTABLEKS                       R11 R0 K4 ["Status"]
       36 GETTABLEKS                       R12 R0 K5 ["CurDocGUID"]
       38 SETLIST                          R10 R11 2 [1]
       40 CALL                             R8 2 0
       41 GETTABLEKS                       R9 R0 K6 ["IsIdle"]
       43 NOT                              R8 R9
       44 JUMPIFNOT                        R8 ; [+25]
       45 GETTABLEKS                       R9 R0 K4 ["Status"]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R10 R10 K7 ["Editing3D"]
       50 JUMPIFEQ                         R9 R10 ; [+9]
       52 LOADB                            R8 0
       53 GETTABLEKS                       R9 R0 K4 ["Status"]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K8 ["Scripting"]
       58 JUMPIFNOTEQ                      R9 R10 ; [+11]
       60 GETTABLEKS                       R8 R0 K9 ["CanJumpBack"]
       62 JUMPIF                           R8 ; [+7]
       63 GETTABLEKS                       R9 R0 K10 ["Id"]
       65 GETUPVAL                         R10 5
       66 JUMPIFNOTEQ                      R9 R10 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K3 ["useEffect"]
       73 NEWCLOSURE                       R10 P1
       74 CAPTURE                          VAL R8
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R11 0 1
       80 MOVE                             R12 R8
       81 SETLIST                          R11 R12 1 [1]
       83 CALL                             R9 2 0
       84 DUPTABLE                         R9 K14 [{"Icon", "UsernameLabel", "EditingLabel"}]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K15 ["createElement"]
       88 GETUPVAL                         R11 7
       89 DUPTABLE                         R12 K18 [{"Size", "Id", "RingColor", "IsIdle"}]
       90 GETTABLEKS                       R13 R5 K19 ["collaboratorItem"]
       92 GETTABLEKS                       R13 R13 K20 ["thumbnailSize"]
       94 SETTABLEKS                       R13 R12 K16 ["Size"]
       96 GETTABLEKS                       R13 R0 K10 ["Id"]
       98 SETTABLEKS                       R13 R12 K10 ["Id"]
      100 GETTABLEKS                       R13 R0 K21 ["Color"]
      102 SETTABLEKS                       R13 R12 K17 ["RingColor"]
      104 GETTABLEKS                       R13 R0 K6 ["IsIdle"]
      106 SETTABLEKS                       R13 R12 K6 ["IsIdle"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K11 ["Icon"]
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R10 R10 K15 ["createElement"]
      114 GETUPVAL                         R11 8
      115 DUPTABLE                         R12 K27 [{"Text", "TextSize", "TextXAlignment", "TextYAlignment", "Position"}]
      116 GETTABLEKS                       R13 R0 K28 ["Username"]
      118 SETTABLEKS                       R13 R12 K22 ["Text"]
      120 LOADN                            R13 18
      121 SETTABLEKS                       R13 R12 K23 ["TextSize"]
      123 GETIMPORT                        R13 K31 [Enum.TextXAlignment.Left]
      125 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
      127 GETIMPORT                        R13 K33 [Enum.TextYAlignment.Top]
      129 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
      131 GETTABLEKS                       R13 R5 K19 ["collaboratorItem"]
      133 GETTABLEKS                       R13 R13 K34 ["usernamePosition"]
      135 SETTABLEKS                       R13 R12 K26 ["Position"]
      137 CALL                             R10 2 1
      138 SETTABLEKS                       R10 R9 K12 ["UsernameLabel"]
      140 GETUPVAL                         R10 0
      141 GETTABLEKS                       R10 R10 K15 ["createElement"]
      143 GETUPVAL                         R11 8
      144 DUPTABLE                         R12 K37 [{"RichText", "Style", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "Position"}]
      145 LOADB                            R13 1
      146 SETTABLEKS                       R13 R12 K35 ["RichText"]
      148 LOADK                            R13 K38 ["SubText"]
      149 SETTABLEKS                       R13 R12 K36 ["Style"]
      151 GETUPVAL                         R13 9
      152 GETTABLEKS                       R14 R0 K6 ["IsIdle"]
      154 MOVE                             R15 R3
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K22 ["Text"]
      158 LOADN                            R13 14
      159 SETTABLEKS                       R13 R12 K23 ["TextSize"]
      161 GETIMPORT                        R13 K31 [Enum.TextXAlignment.Left]
      163 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
      165 GETIMPORT                        R13 K33 [Enum.TextYAlignment.Top]
      167 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
      169 GETTABLEKS                       R13 R5 K19 ["collaboratorItem"]
      171 GETTABLEKS                       R13 R13 K39 ["subtitlePosition"]
      173 SETTABLEKS                       R13 R12 K26 ["Position"]
      175 CALL                             R10 2 1
      176 SETTABLEKS                       R10 R9 K13 ["EditingLabel"]
      178 JUMPIFNOT                        R1 ; [+17]
      179 JUMPIFNOT                        R8 ; [+16]
      180 GETUPVAL                         R10 0
      181 GETTABLEKS                       R10 R10 K15 ["createElement"]
      183 GETUPVAL                         R11 10
      184 DUPTABLE                         R12 K41 [{"Id", "OnJump"}]
      185 GETTABLEKS                       R13 R0 K10 ["Id"]
      187 SETTABLEKS                       R13 R12 K10 ["Id"]
      189 GETTABLEKS                       R13 R0 K40 ["OnJump"]
      191 SETTABLEKS                       R13 R12 K40 ["OnJump"]
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K42 ["JumpTo"]
      196 GETUPVAL                         R10 0
      197 GETTABLEKS                       R10 R10 K15 ["createElement"]
      199 GETUPVAL                         R11 11
      200 NEWTABLE                         R12 8 0
      202 LOADK                            R13 K43 ["RoundBox"]
      203 SETTABLEKS                       R13 R12 K36 ["Style"]
      205 GETTABLEKS                       R13 R5 K19 ["collaboratorItem"]
      207 GETTABLEKS                       R13 R13 K44 ["size"]
      209 SETTABLEKS                       R13 R12 K16 ["Size"]
      211 LOADN                            R13 8
      212 SETTABLEKS                       R13 R12 K45 ["Padding"]
      214 JUMPIFNOT                        R1 ; [+5]
      215 GETTABLEKS                       R13 R5 K19 ["collaboratorItem"]
      217 GETTABLEKS                       R13 R13 K46 ["hoveredBackground"]
      219 JUMPIF                           R13 ; [+1]
      220 LOADNIL                          R13
      221 SETTABLEKS                       R13 R12 K47 ["BackgroundColor3"]
      223 SETTABLEKS                       R7 R12 K48 ["ForwardRef"]
      225 GETUPVAL                         R13 0
      226 GETTABLEKS                       R13 R13 K49 ["Event"]
      228 GETTABLEKS                       R13 R13 K50 ["MouseEnter"]
      230 NEWCLOSURE                       R14 P2
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R7
      234 CAPTURE                          UPVAL U6
      235 CAPTURE                          VAL R5
      236 SETTABLE                         R14 R12 R13
      237 GETUPVAL                         R13 0
      238 GETTABLEKS                       R13 R13 K49 ["Event"]
      240 GETTABLEKS                       R13 R13 K51 ["MouseLeave"]
      242 NEWCLOSURE                       R14 P3
      243 CAPTURE                          VAL R2
      244 CAPTURE                          UPVAL U6
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R5
      247 SETTABLE                         R14 R12 R13
      248 MOVE                             R13 R9
      249 CALL                             R10 3 -1
      250 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R2 K10 ["Style"]
       29 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       31 GETTABLEKS                       R6 R2 K12 ["UI"]
       33 GETTABLEKS                       R7 R6 K13 ["Pane"]
       35 GETTABLEKS                       R8 R6 K14 ["TextLabel"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETTABLEKS                       R10 R0 K15 ["Src"]
       41 GETTABLEKS                       R10 R10 K16 ["Components"]
       43 GETTABLEKS                       R10 R10 K17 ["Thumbnails"]
       45 GETTABLEKS                       R10 R10 K18 ["CollaboratorActivityThumbnail"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETTABLEKS                       R11 R0 K15 ["Src"]
       52 GETTABLEKS                       R11 R11 K16 ["Components"]
       54 GETTABLEKS                       R11 R11 K19 ["JumpToButton"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETTABLEKS                       R12 R0 K15 ["Src"]
       61 GETTABLEKS                       R12 R12 K16 ["Components"]
       63 GETTABLEKS                       R12 R12 K20 ["CollaboratorStatus"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K22 [game]
       68 LOADK                            R14 K23 ["StudioService"]
       69 NAMECALL                         R12 R12 K24 ["GetService"]
       71 CALL                             R12 2 1
       72 GETIMPORT                        R13 K22 [game]
       74 LOADK                            R15 K25 ["TweenService"]
       75 NAMECALL                         R13 R13 K24 ["GetService"]
       77 CALL                             R13 2 1
       78 GETIMPORT                        R14 K22 [game]
       80 LOADK                            R16 K26 ["ScriptRegistrationService"]
       81 NAMECALL                         R14 R14 K24 ["GetService"]
       83 CALL                             R14 2 1
       84 NAMECALL                         R15 R12 K27 ["GetUserId"]
       86 CALL                             R15 1 1
       87 DUPCLOSURE                       R16 K28 [PROTO_0]
       88 CAPTURE                          VAL R4
       89 DUPCLOSURE                       R17 K29 [PROTO_7]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R7
      102 RETURN                           R17 1
