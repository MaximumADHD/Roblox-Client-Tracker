PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K5 [{"Open", "Duplicate", "SourceRoblox", "SourceLocal", "Empty"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["Skills"]
        3 LOADK                            R4 K0 ["Open"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Open"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["Skills"]
       11 LOADK                            R4 K1 ["Duplicate"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Duplicate"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["Skills"]
       19 LOADK                            R4 K8 ["SourceRobloxBadge"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["SourceRoblox"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["Skills"]
       27 LOADK                            R4 K9 ["SourceLocalBadge"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["SourceLocal"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["Skills"]
       35 LOADK                            R4 K10 ["DetailPaneEmpty"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Empty"]
       41 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["rawContent"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["parse"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+3]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["serialize"]
       19 DUPTABLE                         R4 K6 [{"frontmatter", "extras", "body"}]
       20 GETTABLEKS                       R5 R2 K3 ["frontmatter"]
       22 SETTABLEKS                       R5 R4 K3 ["frontmatter"]
       24 GETTABLEKS                       R5 R2 K4 ["extras"]
       26 SETTABLEKS                       R5 R4 K4 ["extras"]
       28 SETTABLEKS                       R0 R4 K5 ["body"]
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["userSkills"]
        6 GETTABLEKS                       R0 R0 K2 ["writeFileAsync"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["relativePath"]
       11 GETUPVAL                         R2 2
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K4 ["rawContent"]
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 3
       19 SETTABLEKS                       R1 R0 K5 ["content"]
       21 GETUPVAL                         R0 4
       22 GETTABLEKS                       R0 R0 K6 ["current"]
       24 JUMPIFNOT                        R0 ; [+4]
       25 LOADB                            R3 1
       26 NAMECALL                         R1 R0 K7 ["setIsActionDisabled"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K8 ["dismiss"]
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["saveAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 CALL                             R0 4 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["rawContent"]
       14 GETUPVAL                         R1 3
       15 JUMPIFNOTEQ                      R0 R1 ; [+17]
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K3 ["content"]
       21 GETUPVAL                         R0 6
       22 GETTABLEKS                       R0 R0 K4 ["current"]
       24 JUMPIFNOT                        R0 ; [+4]
       25 LOADB                            R3 1
       26 NAMECALL                         R1 R0 K5 ["setIsActionDisabled"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 7
       30 GETTABLEKS                       R1 R1 K6 ["dismiss"]
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+12]
        3 GETIMPORT                        R0 K2 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R1 R0 K3 ["rawContent"]
       18 NEWCLOSURE                       R0 P1
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U4
       21 GETIMPORT                        R1 K2 [task.spawn]
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADK                            R0 K0 [""]
        5 JUMP                             ; [+11]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["parse"]
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 1
       11 JUMPIFEQKNIL                     R1 ; [+4]
       13 GETTABLEKS                       R0 R1 K2 ["body"]
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["current"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 MOVE                             R4 R0
       22 NAMECALL                         R2 R1 K4 ["setMarkdown"]
       24 CALL                             R2 2 0
       25 LOADB                            R4 1
       26 NAMECALL                         R2 R1 K5 ["setIsActionDisabled"]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R3 0
       31 SETTABLEKS                       R3 R2 K6 ["rawContent"]
       33 GETUPVAL                         R2 3
       34 SETTABLEKS                       R0 R2 K7 ["content"]
       36 GETUPVAL                         R2 4
       37 SETTABLEKS                       R0 R2 K3 ["current"]
       39 GETUPVAL                         R2 5
       40 GETTABLEKS                       R2 R2 K8 ["dismiss"]
       42 CALL                             R2 0 0
       43 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U3
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K0 ["present"]
       20 DUPTABLE                         R6 K4 [{"skillName", "onOverwrite", "onReload"}]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K5 ["name"]
       24 SETTABLEKS                       R7 R6 K1 ["skillName"]
       26 SETTABLEKS                       R3 R6 K2 ["onOverwrite"]
       28 SETTABLEKS                       R4 R6 K3 ["onReload"]
       30 CALL                             R5 1 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["saveAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 CALL                             R0 4 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["rawContent"]
       14 GETUPVAL                         R1 3
       15 JUMPIFNOTEQ                      R0 R1 ; [+13]
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K3 ["content"]
       21 GETUPVAL                         R0 6
       22 GETTABLEKS                       R0 R0 K4 ["current"]
       24 JUMPIFNOT                        R0 ; [+4]
       25 LOADB                            R3 1
       26 NAMECALL                         R1 R0 K5 ["setIsActionDisabled"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 GETIMPORT                        R3 K3 [task.spawn]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U6
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 NOT                              R4 R0
        5 NAMECALL                         R2 R1 K1 ["setIsActionDisabled"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["source"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["User"]
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["open"]
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R3 K6 [{"onMarkdownChanged", "onDirtyChanged", "onSave"}]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 SETTABLEKS                       R4 R3 K3 ["onMarkdownChanged"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U4
       21 SETTABLEKS                       R4 R3 K4 ["onDirtyChanged"]
       23 JUMPIFNOT                        R0 ; [+2]
       24 GETUPVAL                         R4 5
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K5 ["onSave"]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 4
       31 SETTABLEKS                       R1 R2 K7 ["current"]
       33 GETUPVAL                         R2 3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K8 ["content"]
       37 SETTABLEKS                       R3 R2 K7 ["current"]
       39 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["skill"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 DUPCLOSURE                       R3 K2 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKNIL                  R1 ; [+45]
       27 GETUPVAL                         R5 2
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K8 [{"tag", "testId", "LayoutOrder"}]
       30 LOADK                            R8 K9 ["col size-full-0 auto-y gap-small padding-medium align-x-center align-y-center"]
       31 SETTABLEKS                       R8 R7 K5 ["tag"]
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R8 R8 K10 ["Skills"]
       36 GETTABLEKS                       R8 R8 K11 ["DetailPane"]
       38 GETTABLEKS                       R8 R8 K12 ["Container"]
       40 SETTABLEKS                       R8 R7 K6 ["testId"]
       42 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       46 DUPTABLE                         R8 K14 [{"Empty"}]
       47 GETUPVAL                         R9 2
       48 GETUPVAL                         R10 5
       49 DUPTABLE                         R11 K16 [{"tag", "Text", "testId"}]
       50 LOADK                            R12 K17 ["auto-xy text-body-small content-muted text-wrap text-align-x-center"]
       51 SETTABLEKS                       R12 R11 K5 ["tag"]
       53 GETTABLEKS                       R12 R2 K13 ["Empty"]
       55 SETTABLEKS                       R12 R11 K15 ["Text"]
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K10 ["Skills"]
       60 GETTABLEKS                       R12 R12 K11 ["DetailPane"]
       62 GETTABLEKS                       R12 R12 K13 ["Empty"]
       64 SETTABLEKS                       R12 R11 K6 ["testId"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K13 ["Empty"]
       69 CALL                             R5 3 -1
       70 RETURN                           R5 -1
       71 JUMPIFNOTEQKNIL                  R1 ; [+2]
       73 LOADB                            R6 0 +1
       74 LOADB                            R6 1
       75 FASTCALL2K                       ASSERT R6 K18 ; [+4]
       77 LOADK                            R7 K18 ["skill must be non-nil after the early-return guard above"]
       78 GETIMPORT                        R5 K20 [assert]
       80 CALL                             R5 2 0
       81 GETTABLEKS                       R6 R1 K21 ["source"]
       83 GETUPVAL                         R7 6
       84 GETTABLEKS                       R7 R7 K22 ["User"]
       86 JUMPIFNOTEQ                      R6 R7 ; [+4]
       88 GETTABLEKS                       R5 R2 K23 ["SourceLocal"]
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R5 R2 K24 ["SourceRoblox"]
       93 GETUPVAL                         R6 7
       94 GETTABLEKS                       R6 R6 K25 ["uriForSkill"]
       96 MOVE                             R7 R1
       97 CALL                             R6 1 1
       98 GETUPVAL                         R7 8
       99 CALL                             R7 0 1
      100 GETUPVAL                         R8 8
      101 CALL                             R8 0 1
      102 GETUPVAL                         R9 8
      103 CALL                             R9 0 1
      104 NEWCLOSURE                       R10 P1
      105 CAPTURE                          VAL R1
      106 CAPTURE                          UPVAL U9
      107 NEWCLOSURE                       R11 P2
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          VAL R11
      113 CAPTURE                          UPVAL U12
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          VAL R3
      116 NEWCLOSURE                       R12 P3
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R11
      120 CAPTURE                          UPVAL U12
      121 CAPTURE                          UPVAL U10
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R4
      124 NEWCLOSURE                       R13 P4
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U6
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R12
      131 GETUPVAL                         R14 2
      132 GETUPVAL                         R15 3
      133 DUPTABLE                         R16 K8 [{"tag", "testId", "LayoutOrder"}]
      134 LOADK                            R17 K26 ["col size-full-0 auto-y gap-small padding-medium"]
      135 SETTABLEKS                       R17 R16 K5 ["tag"]
      137 GETUPVAL                         R17 4
      138 GETTABLEKS                       R17 R17 K10 ["Skills"]
      140 GETTABLEKS                       R17 R17 K11 ["DetailPane"]
      142 GETTABLEKS                       R17 R17 K12 ["Container"]
      144 SETTABLEKS                       R17 R16 K6 ["testId"]
      146 GETTABLEKS                       R17 R0 K7 ["LayoutOrder"]
      148 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      150 DUPTABLE                         R17 K31 [{"Header", "SourceUri", "Description", "Buttons"}]
      151 GETUPVAL                         R18 2
      152 GETUPVAL                         R19 3
      153 DUPTABLE                         R20 K32 [{"tag", "LayoutOrder"}]
      154 LOADK                            R21 K33 ["row size-full-0 auto-y gap-small align-y-center"]
      155 SETTABLEKS                       R21 R20 K5 ["tag"]
      157 MOVE                             R21 R7
      158 CALL                             R21 0 1
      159 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      161 DUPTABLE                         R21 K37 [{"Name", "Spacer", "SourceBadge"}]
      162 GETUPVAL                         R22 2
      163 GETUPVAL                         R23 5
      164 DUPTABLE                         R24 K38 [{"tag", "Text", "LayoutOrder"}]
      165 LOADK                            R25 K39 ["auto-xy text-title-small bold text-align-x-left"]
      166 SETTABLEKS                       R25 R24 K5 ["tag"]
      168 GETTABLEKS                       R25 R1 K40 ["name"]
      170 SETTABLEKS                       R25 R24 K15 ["Text"]
      172 MOVE                             R25 R8
      173 CALL                             R25 0 1
      174 SETTABLEKS                       R25 R24 K7 ["LayoutOrder"]
      176 CALL                             R22 2 1
      177 SETTABLEKS                       R22 R21 K34 ["Name"]
      179 GETUPVAL                         R22 2
      180 GETUPVAL                         R23 3
      181 DUPTABLE                         R24 K32 [{"tag", "LayoutOrder"}]
      182 LOADK                            R25 K41 ["fill"]
      183 SETTABLEKS                       R25 R24 K5 ["tag"]
      185 MOVE                             R25 R8
      186 CALL                             R25 0 1
      187 SETTABLEKS                       R25 R24 K7 ["LayoutOrder"]
      189 CALL                             R22 2 1
      190 SETTABLEKS                       R22 R21 K35 ["Spacer"]
      192 GETUPVAL                         R22 2
      193 GETUPVAL                         R23 5
      194 DUPTABLE                         R24 K38 [{"tag", "Text", "LayoutOrder"}]
      195 LOADK                            R25 K42 ["auto-xy text-caption-small content-muted text-align-x-right"]
      196 SETTABLEKS                       R25 R24 K5 ["tag"]
      198 SETTABLEKS                       R5 R24 K15 ["Text"]
      200 MOVE                             R25 R8
      201 CALL                             R25 0 1
      202 SETTABLEKS                       R25 R24 K7 ["LayoutOrder"]
      204 CALL                             R22 2 1
      205 SETTABLEKS                       R22 R21 K36 ["SourceBadge"]
      207 CALL                             R18 3 1
      208 SETTABLEKS                       R18 R17 K27 ["Header"]
      210 GETUPVAL                         R18 2
      211 GETUPVAL                         R19 5
      212 DUPTABLE                         R20 K43 [{"tag", "Text", "testId", "LayoutOrder"}]
      213 LOADK                            R21 K44 ["auto-xy text-caption-small content-muted text-wrap text-align-x-left"]
      214 SETTABLEKS                       R21 R20 K5 ["tag"]
      216 SETTABLEKS                       R6 R20 K15 ["Text"]
      218 GETUPVAL                         R21 4
      219 GETTABLEKS                       R21 R21 K10 ["Skills"]
      221 GETTABLEKS                       R21 R21 K11 ["DetailPane"]
      223 GETTABLEKS                       R21 R21 K28 ["SourceUri"]
      225 SETTABLEKS                       R21 R20 K6 ["testId"]
      227 MOVE                             R21 R7
      228 CALL                             R21 0 1
      229 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      231 CALL                             R18 2 1
      232 SETTABLEKS                       R18 R17 K28 ["SourceUri"]
      234 GETUPVAL                         R18 2
      235 GETUPVAL                         R19 5
      236 DUPTABLE                         R20 K38 [{"tag", "Text", "LayoutOrder"}]
      237 LOADK                            R21 K45 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
      238 SETTABLEKS                       R21 R20 K5 ["tag"]
      240 GETTABLEKS                       R21 R1 K46 ["description"]
      242 SETTABLEKS                       R21 R20 K15 ["Text"]
      244 MOVE                             R21 R7
      245 CALL                             R21 0 1
      246 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K29 ["Description"]
      251 GETUPVAL                         R18 2
      252 GETUPVAL                         R19 3
      253 DUPTABLE                         R20 K32 [{"tag", "LayoutOrder"}]
      254 LOADK                            R21 K33 ["row size-full-0 auto-y gap-small align-y-center"]
      255 SETTABLEKS                       R21 R20 K5 ["tag"]
      257 MOVE                             R21 R7
      258 CALL                             R21 0 1
      259 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      261 DUPTABLE                         R21 K49 [{"OpenButton", "DuplicateButton"}]
      262 GETUPVAL                         R22 2
      263 GETUPVAL                         R23 13
      264 DUPTABLE                         R24 K54 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      265 GETTABLEKS                       R25 R2 K55 ["Open"]
      267 SETTABLEKS                       R25 R24 K50 ["text"]
      269 GETUPVAL                         R25 14
      270 GETTABLEKS                       R25 R25 K56 ["Small"]
      272 SETTABLEKS                       R25 R24 K51 ["size"]
      274 GETUPVAL                         R25 15
      275 GETTABLEKS                       R25 R25 K57 ["Standard"]
      277 SETTABLEKS                       R25 R24 K52 ["variant"]
      279 SETTABLEKS                       R13 R24 K53 ["onActivated"]
      281 GETUPVAL                         R25 4
      282 GETTABLEKS                       R25 R25 K10 ["Skills"]
      284 GETTABLEKS                       R25 R25 K11 ["DetailPane"]
      286 GETTABLEKS                       R25 R25 K47 ["OpenButton"]
      288 SETTABLEKS                       R25 R24 K6 ["testId"]
      290 MOVE                             R25 R9
      291 CALL                             R25 0 1
      292 SETTABLEKS                       R25 R24 K7 ["LayoutOrder"]
      294 CALL                             R22 2 1
      295 SETTABLEKS                       R22 R21 K47 ["OpenButton"]
      297 GETUPVAL                         R22 2
      298 GETUPVAL                         R23 13
      299 DUPTABLE                         R24 K59 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      300 GETTABLEKS                       R25 R2 K60 ["Duplicate"]
      302 SETTABLEKS                       R25 R24 K50 ["text"]
      304 GETUPVAL                         R25 14
      305 GETTABLEKS                       R25 R25 K56 ["Small"]
      307 SETTABLEKS                       R25 R24 K51 ["size"]
      309 GETUPVAL                         R25 15
      310 GETTABLEKS                       R25 R25 K15 ["Text"]
      312 SETTABLEKS                       R25 R24 K52 ["variant"]
      314 LOADB                            R25 1
      315 SETTABLEKS                       R25 R24 K58 ["isDisabled"]
      317 GETUPVAL                         R25 16
      318 SETTABLEKS                       R25 R24 K53 ["onActivated"]
      320 GETUPVAL                         R25 4
      321 GETTABLEKS                       R25 R25 K10 ["Skills"]
      323 GETTABLEKS                       R25 R25 K11 ["DetailPane"]
      325 GETTABLEKS                       R25 R25 K48 ["DuplicateButton"]
      327 SETTABLEKS                       R25 R24 K6 ["testId"]
      329 MOVE                             R25 R9
      330 CALL                             R25 0 1
      331 SETTABLEKS                       R25 R24 K7 ["LayoutOrder"]
      333 CALL                             R22 2 1
      334 SETTABLEKS                       R22 R21 K48 ["DuplicateButton"]
      336 CALL                             R18 3 1
      337 SETTABLEKS                       R18 R17 K30 ["Buttons"]
      339 CALL                             R14 3 -1
      340 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ConflictResolutionBus"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Skills"]
       34 GETTABLEKS                       R5 R5 K12 ["Frontmatter"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Skills"]
       55 GETTABLEKS                       R8 R8 K15 ["SkillDefinition"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Resources"]
       69 GETTABLEKS                       R10 R10 K19 ["Localization"]
       71 GETTABLEKS                       R10 R10 K20 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETIMPORT                        R11 K1 [script]
       78 GETTABLEKS                       R11 R11 K6 ["Parent"]
       80 GETTABLEKS                       R11 R11 K21 ["openSkillInMarkdownEditor"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K11 ["Skills"]
       87 GETTABLEKS                       R12 R12 K22 ["saveUserSkillSafely"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R3 K23 ["Button"]
       92 GETTABLEKS                       R13 R3 K24 ["Text"]
       94 GETTABLEKS                       R14 R3 K25 ["View"]
       96 GETTABLEKS                       R15 R3 K26 ["Enums"]
       98 GETTABLEKS                       R15 R15 K27 ["ButtonSize"]
      100 GETTABLEKS                       R16 R3 K26 ["Enums"]
      102 GETTABLEKS                       R16 R16 K28 ["ButtonVariant"]
      104 GETTABLEKS                       R17 R7 K29 ["Sources"]
      106 GETTABLEKS                       R18 R6 K30 ["createNextOrder"]
      108 GETTABLEKS                       R19 R5 K31 ["createElement"]
      110 DUPCLOSURE                       R20 K32 [PROTO_0]
      111 DUPCLOSURE                       R21 K33 [PROTO_15]
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R20
      129 RETURN                           R21 1
