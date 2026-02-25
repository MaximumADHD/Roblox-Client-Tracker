PROTO_0:
        0 SUB                              R5 R1 R0
        1 MUL                              R4 R5 R2
        2 ADD                              R3 R4 R0
        3 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R1 K0 [2166136261]
        1 LOADN                            R4 1
        2 LENGTH                           R2 R0
        3 LOADN                            R3 1
        4 FORNPREP                         R2
        5 MULK                             R5 R1 K2 [16777619]
        6 MODK                             R1 R5 K1 [4294967296]
        7 MOVE                             R8 R4
        8 NAMECALL                         R6 R0 K3 ["byte"]
       10 CALL                             R6 2 1
       11 ADD                              R5 R1 R6
       12 MODK                             R1 R5 K1 [4294967296]
       13 FORNLOOP                         R2
       14 DIVK                             R4 R1 K6 [65536]
       15 MODK                             R3 R4 K5 [256]
       16 DIVK                             R2 R3 K4 [255]
       17 DIVK                             R5 R1 K5 [256]
       18 MODK                             R4 R5 K5 [256]
       19 DIVK                             R3 R4 K4 [255]
       20 DIVK                             R6 R1 K7 [1]
       21 MODK                             R5 R6 K5 [256]
       22 DIVK                             R4 R5 K4 [255]
       23 MOVE                             R5 R4
       24 MULK                             R6 R5 K9 [0.7]
       25 ADDK                             R4 R6 K8 [0.3]
       26 MOVE                             R5 R3
       27 MULK                             R6 R5 K10 [0.5]
       28 ADDK                             R3 R6 K10 [0.5]
       29 GETIMPORT                        R5 K13 [Color3.fromHSV]
       31 MOVE                             R6 R2
       32 MOVE                             R7 R3
       33 MOVE                             R8 R4
       34 CALL                             R5 3 -1
       35 RETURN                           R5 -1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 NAMECALL                         R1 R0 K0 ["GetChildren"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 LOADK                            R8 K1 ["Folder"]
        8 NAMECALL                         R6 R5 K2 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADB                            R6 1
       13 RETURN                           R6 1
       14 FORGLOOP                         R1 2 ; [-8]
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagList"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["TagEditorTagContainer"]
        8 NAMECALL                         R1 R1 K3 ["GetTagged"]
       10 CALL                             R1 2 1
       11 GETTABLEN                        R0 R1 1
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["_updateStore"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 NAMECALL                         R0 R0 K2 ["_updateUnknownTags"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_watchFolder"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_defaultTagsFolder"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K0 ["_defaultTagsFolder"]
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["_stopWatchingFolder"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R3 K10 [{"store", "analytics", "updateTriggered", "enabled", "tags", "onUpdate", "_tagFolderSet", "_defaultTagsFolder", "_maid", "_gaveDuplicateWarningsFor"}]
        1 SETTABLEKS                       R0 R3 K0 ["store"]
        3 SETTABLEKS                       R1 R3 K1 ["analytics"]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K2 ["updateTriggered"]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K3 ["enabled"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["tags"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K5 ["onUpdate"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K6 ["_tagFolderSet"]
       23 GETUPVAL                         R4 0
       24 LOADK                            R6 K11 ["TagList"]
       25 NAMECALL                         R4 R4 K12 ["FindFirstChild"]
       27 CALL                             R4 2 1
       28 JUMPIF                           R4 ; [+6]
       29 GETUPVAL                         R5 1
       30 LOADK                            R7 K13 ["TagEditorTagContainer"]
       31 NAMECALL                         R5 R5 K14 ["GetTagged"]
       33 CALL                             R5 2 1
       34 GETTABLEN                        R4 R5 1
       35 SETTABLEKS                       R4 R3 K7 ["_defaultTagsFolder"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K15 ["new"]
       40 CALL                             R4 0 1
       41 SETTABLEKS                       R4 R3 K8 ["_maid"]
       43 NEWTABLE                         R4 0 0
       45 SETTABLEKS                       R4 R3 K9 ["_gaveDuplicateWarningsFor"]
       47 GETUPVAL                         R4 3
       48 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       50 GETIMPORT                        R2 K17 [setmetatable]
       52 CALL                             R2 2 1
       53 GETUPVAL                         R3 3
       54 SETTABLEKS                       R2 R3 K18 ["_global"]
       56 GETTABLEKS                       R4 R2 K7 ["_defaultTagsFolder"]
       58 JUMPIF                           R4 ; [+2]
       59 LOADB                            R3 0
       60 JUMP                             ; [+14]
       61 NAMECALL                         R5 R4 K19 ["GetChildren"]
       63 CALL                             R5 1 3
       64 FORGPREP                         R5
       65 LOADK                            R12 K20 ["Folder"]
       66 NAMECALL                         R10 R9 K21 ["IsA"]
       68 CALL                             R10 2 1
       69 JUMPIFNOT                        R10 ; [+2]
       70 LOADB                            R3 1
       71 JUMP                             ; [+3]
       72 FORGLOOP                         R5 2 ; [-8]
       74 LOADB                            R3 0
       75 JUMPIFNOT                        R3 ; [+102]
       76 GETUPVAL                         R3 4
       77 LOADK                            R5 K22 ["Migrating tags folder"]
       78 NAMECALL                         R3 R3 K23 ["SetWaypoint"]
       80 CALL                             R3 2 0
       81 LOADN                            R3 0
       82 GETIMPORT                        R4 K25 [pairs]
       84 GETTABLEKS                       R5 R2 K7 ["_defaultTagsFolder"]
       86 NAMECALL                         R5 R5 K19 ["GetChildren"]
       88 CALL                             R5 1 -1
       89 CALL                             R4 -1 3
       90 FORGPREP_NEXT                    R4
       91 LOADK                            R11 K20 ["Folder"]
       92 NAMECALL                         R9 R8 K21 ["IsA"]
       94 CALL                             R9 2 1
       95 JUMPIFNOT                        R9 ; [+57]
       96 GETIMPORT                        R9 K27 [Instance.new]
       98 LOADK                            R10 K28 ["Configuration"]
       99 CALL                             R9 1 1
      100 GETTABLEKS                       R10 R8 K29 ["Name"]
      102 SETTABLEKS                       R10 R9 K29 ["Name"]
      104 NEWTABLE                         R10 0 0
      106 GETIMPORT                        R11 K25 [pairs]
      108 NAMECALL                         R12 R8 K19 ["GetChildren"]
      110 CALL                             R12 1 -1
      111 CALL                             R11 -1 3
      112 FORGPREP_NEXT                    R11
      113 LOADK                            R18 K30 ["ValueBase"]
      114 NAMECALL                         R16 R15 K21 ["IsA"]
      116 CALL                             R16 2 1
      117 JUMPIFNOT                        R16 ; [+11]
      118 GETTABLEKS                       R18 R15 K29 ["Name"]
      120 GETTABLEKS                       R19 R15 K31 ["Value"]
      122 NAMECALL                         R16 R9 K32 ["SetAttribute"]
      124 CALL                             R16 3 0
      125 GETTABLEKS                       R16 R15 K29 ["Name"]
      127 LOADB                            R17 1
      128 SETTABLE                         R17 R10 R16
      129 FORGLOOP                         R11 2 ; [-17]
      131 GETIMPORT                        R11 K25 [pairs]
      133 GETUPVAL                         R12 5
      134 CALL                             R11 1 3
      135 FORGPREP_NEXT                    R11
      136 GETTABLE                         R16 R10 R14
      137 JUMPIF                           R16 ; [+5]
      138 MOVE                             R18 R14
      139 MOVE                             R19 R15
      140 NAMECALL                         R16 R9 K32 ["SetAttribute"]
      142 CALL                             R16 3 0
      143 FORGLOOP                         R11 2 ; [-8]
      145 GETTABLEKS                       R11 R2 K7 ["_defaultTagsFolder"]
      147 SETTABLEKS                       R11 R9 K33 ["Parent"]
      149 LOADNIL                          R11
      150 SETTABLEKS                       R11 R8 K33 ["Parent"]
      152 ADDK                             R3 R3 K34 [1]
      153 FORGLOOP                         R4 2 ; [-63]
      155 LOADN                            R4 0
      156 JUMPIFNOTLT                      R4 R3 ; [+9]
      158 GETIMPORT                        R4 K36 [print]
      160 GETIMPORT                        R5 K39 [string.format]
      162 LOADK                            R6 K40 ["TagEditor: Converted %d tags to attribute-based format."]
      163 MOVE                             R7 R3
      164 CALL                             R5 2 -1
      165 CALL                             R4 -1 0
      166 GETUPVAL                         R4 6
      167 GETTABLEKS                       R6 R2 K7 ["_defaultTagsFolder"]
      169 LOADK                            R7 K13 ["TagEditorTagContainer"]
      170 NAMECALL                         R4 R4 K41 ["AddTag"]
      172 CALL                             R4 3 0
      173 GETUPVAL                         R4 4
      174 LOADK                            R6 K42 ["Migrated tags folder"]
      175 NAMECALL                         R4 R4 K23 ["SetWaypoint"]
      177 CALL                             R4 2 0
      178 NAMECALL                         R3 R2 K43 ["_updateStore"]
      180 CALL                             R3 1 0
      181 GETTABLEKS                       R3 R2 K8 ["_maid"]
      183 GETUPVAL                         R6 7
      184 GETTABLEKS                       R5 R6 K44 ["SelectionChanged"]
      186 NEWCLOSURE                       R7 P0
      187 CAPTURE                          VAL R2
      188 NAMECALL                         R5 R5 K45 ["Connect"]
      190 CALL                             R5 2 -1
      191 NAMECALL                         R3 R3 K46 ["give"]
      193 CALL                             R3 -1 0
      194 GETTABLEKS                       R3 R2 K7 ["_defaultTagsFolder"]
      196 JUMPIFNOT                        R3 ; [+5]
      197 GETTABLEKS                       R5 R2 K7 ["_defaultTagsFolder"]
      199 NAMECALL                         R3 R2 K47 ["_watchFolder"]
      201 CALL                             R3 2 0
      202 GETTABLEKS                       R3 R2 K8 ["_maid"]
      204 GETUPVAL                         R5 6
      205 LOADK                            R7 K13 ["TagEditorTagContainer"]
      206 NAMECALL                         R5 R5 K48 ["GetInstanceAddedSignal"]
      208 CALL                             R5 2 1
      209 NEWCLOSURE                       R7 P1
      210 CAPTURE                          VAL R2
      211 NAMECALL                         R5 R5 K45 ["Connect"]
      213 CALL                             R5 2 -1
      214 NAMECALL                         R3 R3 K46 ["give"]
      216 CALL                             R3 -1 0
      217 GETTABLEKS                       R3 R2 K8 ["_maid"]
      219 GETUPVAL                         R5 6
      220 LOADK                            R7 K13 ["TagEditorTagContainer"]
      221 NAMECALL                         R5 R5 K49 ["GetInstanceRemovedSignal"]
      223 CALL                             R5 2 1
      224 NEWCLOSURE                       R7 P2
      225 CAPTURE                          VAL R2
      226 NAMECALL                         R5 R5 K45 ["Connect"]
      228 CALL                             R5 2 -1
      229 NAMECALL                         R3 R3 K46 ["give"]
      231 CALL                             R3 -1 0
      232 GETIMPORT                        R3 K25 [pairs]
      234 GETUPVAL                         R4 6
      235 LOADK                            R6 K13 ["TagEditorTagContainer"]
      236 NAMECALL                         R4 R4 K14 ["GetTagged"]
      238 CALL                             R4 2 -1
      239 CALL                             R3 -1 3
      240 FORGPREP_NEXT                    R3
      241 MOVE                             R10 R7
      242 NAMECALL                         R8 R2 K47 ["_watchFolder"]
      244 CALL                             R8 2 0
      245 FORGLOOP                         R3 2 ; [-5]
      247 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_global"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["tags"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onUpdate"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"Disconnect"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        5 GETTABLEKS                       R3 R0 K2 ["onUpdate"]
        7 SETTABLE                         R1 R3 R2
        8 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_maid"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K0 ["_maid"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 LOADB                            R4 1
        9 NAMECALL                         R2 R0 K1 ["_updateStore"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_tagFolderSet"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R3 K0 ["Configuration"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K2 ["_watchChild"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R1 R0
       12 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R3 K0 ["Configuration"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K2 ["_updateStore"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_maid"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["new"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K2 ["_tagFolderSet"]
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R3 R1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R3 R2 K3 ["give"]
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K5 [pairs]
       21 NAMECALL                         R4 R1 K6 ["GetChildren"]
       23 CALL                             R4 1 -1
       24 CALL                             R3 -1 3
       25 FORGPREP_NEXT                    R3
       26 LOADK                            R10 K7 ["Configuration"]
       27 NAMECALL                         R8 R7 K8 ["IsA"]
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+5]
       31 MOVE                             R10 R7
       32 NAMECALL                         R8 R0 K9 ["_watchChild"]
       34 CALL                             R8 2 1
       35 SETTABLE                         R8 R2 R7
       36 FORGLOOP                         R3 2 ; [-11]
       38 GETTABLEKS                       R5 R1 K10 ["ChildAdded"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R5 R5 K11 ["Connect"]
       45 CALL                             R5 2 -1
       46 NAMECALL                         R3 R2 K3 ["give"]
       48 CALL                             R3 -1 0
       49 GETTABLEKS                       R5 R1 K12 ["ChildRemoved"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R5 R5 K11 ["Connect"]
       56 CALL                             R5 2 -1
       57 NAMECALL                         R3 R2 K3 ["give"]
       59 CALL                             R3 -1 0
       60 GETTABLEKS                       R3 R0 K0 ["_maid"]
       62 SETTABLE                         R2 R3 R1
       63 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_updateStore"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_updateStore"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["Name"]
        8 NAMECALL                         R3 R3 K2 ["GetInstanceAddedSignal"]
       10 CALL                             R3 2 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R3 R3 K3 ["Connect"]
       15 CALL                             R3 2 -1
       16 NAMECALL                         R1 R0 K4 ["give"]
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K1 ["Name"]
       23 NAMECALL                         R3 R3 K5 ["GetInstanceRemovedSignal"]
       25 CALL                             R3 2 1
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R3 R3 K3 ["Connect"]
       30 CALL                             R3 2 -1
       31 NAMECALL                         R1 R0 K4 ["give"]
       33 CALL                             R1 -1 0
       34 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_updateStore"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 1
        2 NAMECALL                         R1 R1 K0 ["_updateStore"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R1 2
        8 NAMECALL                         R1 R1 K1 ["destroy"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 CALL                             R1 0 1
       13 SETUPVAL                         R1 2
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADB                            R5 1
        5 NAMECALL                         R3 R0 K1 ["_updateStore"]
        7 CALL                             R3 2 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 GETTABLEKS                       R6 R1 K2 ["AttributeChanged"]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R6 R6 K3 ["Connect"]
       19 CALL                             R6 2 -1
       20 NAMECALL                         R4 R2 K4 ["give"]
       22 CALL                             R4 -1 0
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 2
       25 JUMPIFNOT                        R5 ; [+3]
       26 MOVE                             R5 R3
       27 CALL                             R5 0 1
       28 MOVE                             R4 R5
       29 LOADK                            R9 K5 ["Name"]
       30 NAMECALL                         R7 R1 K6 ["GetPropertyChangedSignal"]
       32 CALL                             R7 2 1
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R3
       38 NAMECALL                         R7 R7 K3 ["Connect"]
       40 CALL                             R7 2 -1
       41 NAMECALL                         R5 R2 K4 ["give"]
       43 CALL                             R5 -1 0
       44 GETUPVAL                         R5 2
       45 JUMPIFNOT                        R5 ; [+5]
       46 NEWCLOSURE                       R7 P3
       47 CAPTURE                          REF R4
       48 NAMECALL                         R5 R2 K4 ["give"]
       50 CALL                             R5 2 0
       51 CLOSEUPVALS                      R4
       52 RETURN                           R2 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K4 ["_defaultTagsFolder"]
        6 GETTABLEKS                       R1 R0 K4 ["_defaultTagsFolder"]
        8 LOADK                            R2 K5 ["TagList"]
        9 SETTABLEKS                       R2 R1 K6 ["Name"]
       11 GETTABLEKS                       R1 R0 K4 ["_defaultTagsFolder"]
       13 GETUPVAL                         R2 0
       14 SETTABLEKS                       R2 R1 K7 ["Parent"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R3 R0 K4 ["_defaultTagsFolder"]
       19 LOADK                            R4 K8 ["TagEditorTagContainer"]
       20 NAMECALL                         R1 R1 K9 ["AddTag"]
       22 CALL                             R1 3 0
       23 GETTABLEKS                       R3 R0 K4 ["_defaultTagsFolder"]
       25 NAMECALL                         R1 R0 K10 ["_watchFolder"]
       27 CALL                             R1 2 0
       28 GETTABLEKS                       R1 R0 K4 ["_defaultTagsFolder"]
       30 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_defaultTagsFolder"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K1 ["TagList"]
        8 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K3 ["TagEditorTagContainer"]
       14 NAMECALL                         R3 R3 K4 ["GetTagged"]
       16 CALL                             R3 2 1
       17 GETTABLEN                        R2 R3 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETTABLEKS                       R5 R0 K0 ["_defaultTagsFolder"]
       25 GETTABLEKS                       R4 R5 K5 ["Parent"]
       27 JUMPIFEQKNIL                     R4 ; [+4]
       29 GETTABLEKS                       R4 R0 K0 ["_defaultTagsFolder"]
       31 RETURN                           R4 1
       32 JUMPIF                           R1 ; [+6]
       33 JUMPIFNOT                        R3 ; [+5]
       34 SETTABLEKS                       R2 R0 K0 ["_defaultTagsFolder"]
       36 GETTABLEKS                       R4 R0 K0 ["_defaultTagsFolder"]
       38 RETURN                           R4 1
       39 NAMECALL                         R4 R0 K6 ["_createTagFolder"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_doUpdateStore"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K1 ["_updateUnknownTags"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["updateTriggered"]
        2 JUMPIF                           R2 ; [+9]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R0 K0 ["updateTriggered"]
        6 GETIMPORT                        R2 K3 [task.spawn]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_29:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 NAMECALL                         R3 R0 K2 ["GetChildren"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 LOADK                            R9 K3 ["Configuration"]
       10 NAMECALL                         R7 R6 K4 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+176]
       14 GETTABLEKS                       R8 R6 K5 ["Name"]
       16 GETTABLE                         R7 R1 R8
       17 JUMPIFNOT                        R7 ; [+27]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K6 ["_gaveDuplicateWarningsFor"]
       21 GETTABLEKS                       R9 R6 K5 ["Name"]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIF                           R7 ; [+165]
       25 GETIMPORT                        R7 K8 [warn]
       27 GETIMPORT                        R8 K11 [string.format]
       29 LOADK                            R9 K12 ["Multiple tags in %s are named %q, consider removing the duplicates."]
       30 NAMECALL                         R10 R0 K13 ["GetFullName"]
       32 CALL                             R10 1 1
       33 GETTABLEKS                       R11 R6 K5 ["Name"]
       35 CALL                             R8 3 -1
       36 CALL                             R7 -1 0
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["_gaveDuplicateWarningsFor"]
       40 GETTABLEKS                       R8 R6 K5 ["Name"]
       42 LOADB                            R9 1
       43 SETTABLE                         R9 R7 R8
       44 JUMP                             ; [+145]
       45 GETTABLEKS                       R7 R6 K5 ["Name"]
       47 LOADB                            R8 1
       48 SETTABLE                         R8 R1 R7
       49 LOADB                            R7 0
       50 LOADB                            R8 0
       51 DUPTABLE                         R9 K23 [{"Name", "Icon", "Visible", "DrawType", "ShowText", "AlwaysOnTop", "Group", "Color", "HasAll", "HasSome"}]
       52 GETTABLEKS                       R10 R6 K5 ["Name"]
       54 SETTABLEKS                       R10 R9 K5 ["Name"]
       56 LOADK                            R12 K14 ["Icon"]
       57 NAMECALL                         R10 R6 K24 ["GetAttribute"]
       59 CALL                             R10 2 1
       60 JUMPIF                           R10 ; [+3]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K14 ["Icon"]
       64 SETTABLEKS                       R10 R9 K14 ["Icon"]
       66 LOADK                            R13 K15 ["Visible"]
       67 NAMECALL                         R11 R6 K24 ["GetAttribute"]
       69 CALL                             R11 2 1
       70 ORK                              R10 R11 K25 [False]
       71 SETTABLEKS                       R10 R9 K15 ["Visible"]
       73 LOADK                            R12 K16 ["DrawType"]
       74 NAMECALL                         R10 R6 K24 ["GetAttribute"]
       76 CALL                             R10 2 1
       77 JUMPIF                           R10 ; [+3]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R10 R11 K16 ["DrawType"]
       81 SETTABLEKS                       R10 R9 K16 ["DrawType"]
       83 GETUPVAL                         R11 2
       84 JUMPIFNOT                        R11 ; [+9]
       85 LOADK                            R12 K17 ["ShowText"]
       86 NAMECALL                         R10 R6 K24 ["GetAttribute"]
       88 CALL                             R10 2 1
       89 JUMPIF                           R10 ; [+5]
       90 GETUPVAL                         R11 1
       91 GETTABLEKS                       R10 R11 K17 ["ShowText"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R10
       95 SETTABLEKS                       R10 R9 K17 ["ShowText"]
       97 LOADK                            R12 K18 ["AlwaysOnTop"]
       98 NAMECALL                         R10 R6 K24 ["GetAttribute"]
      100 CALL                             R10 2 1
      101 JUMPIF                           R10 ; [+3]
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R10 R11 K18 ["AlwaysOnTop"]
      105 SETTABLEKS                       R10 R9 K18 ["AlwaysOnTop"]
      107 LOADK                            R12 K19 ["Group"]
      108 NAMECALL                         R10 R6 K24 ["GetAttribute"]
      110 CALL                             R10 2 1
      111 JUMPIF                           R10 ; [+3]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R10 R11 K19 ["Group"]
      115 SETTABLEKS                       R10 R9 K19 ["Group"]
      117 LOADK                            R12 K20 ["Color"]
      118 NAMECALL                         R10 R6 K24 ["GetAttribute"]
      120 CALL                             R10 2 1
      121 JUMPIF                           R10 ; [+4]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R11 R6 K5 ["Name"]
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K20 ["Color"]
      128 LOADB                            R10 0
      129 SETTABLEKS                       R10 R9 K21 ["HasAll"]
      131 LOADB                            R10 0
      132 SETTABLEKS                       R10 R9 K22 ["HasSome"]
      134 GETTABLEKS                       R10 R9 K19 ["Group"]
      136 JUMPIFNOTEQKS                    R10 K26 [""] ; [+4]
      138 LOADNIL                          R10
      139 SETTABLEKS                       R10 R9 K19 ["Group"]
      141 GETTABLEKS                       R10 R9 K14 ["Icon"]
      143 JUMPIFNOTEQKS                    R10 K26 [""] ; [+6]
      145 GETUPVAL                         R11 1
      146 GETTABLEKS                       R10 R11 K14 ["Icon"]
      148 SETTABLEKS                       R10 R9 K14 ["Icon"]
      150 LOADN                            R12 1
      151 GETUPVAL                         R13 4
      152 LENGTH                           R10 R13
      153 LOADN                            R11 1
      154 FORNPREP                         R10
      155 GETUPVAL                         R14 4
      156 GETTABLE                         R13 R14 R12
      157 GETUPVAL                         R14 5
      158 MOVE                             R16 R13
      159 GETTABLEKS                       R17 R9 K5 ["Name"]
      161 NAMECALL                         R14 R14 K27 ["HasTag"]
      163 CALL                             R14 3 1
      164 JUMPIFNOT                        R14 ; [+2]
      165 LOADB                            R7 1
      166 JUMP                             ; [+1]
      167 LOADB                            R8 1
      168 FORNLOOP                         R10
      169 MOVE                             R10 R7
      170 JUMPIFNOT                        R10 ; [+1]
      171 NOT                              R10 R8
      172 SETTABLEKS                       R10 R9 K21 ["HasAll"]
      174 AND                              R10 R7 R8
      175 SETTABLEKS                       R10 R9 K22 ["HasSome"]
      177 GETUPVAL                         R10 6
      178 GETUPVAL                         R13 6
      179 LENGTH                           R12 R13
      180 ADDK                             R11 R12 K28 [1]
      181 SETTABLE                         R9 R10 R11
      182 GETTABLEKS                       R10 R9 K19 ["Group"]
      184 JUMPIFNOT                        R10 ; [+5]
      185 GETUPVAL                         R10 7
      186 GETTABLEKS                       R11 R9 K19 ["Group"]
      188 LOADB                            R12 1
      189 SETTABLE                         R12 R10 R11
      190 FORGLOOP                         R2 2 ; [-182]
      192 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_31:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["updateTriggered"]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R3 R3 K1 ["Get"]
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 GETTABLEKS                       R5 R0 K2 ["_defaultTagsFolder"]
       22 JUMPIFNOT                        R5 ; [+4]
       23 MOVE                             R5 R4
       24 GETTABLEKS                       R6 R0 K2 ["_defaultTagsFolder"]
       26 CALL                             R5 1 0
       27 GETIMPORT                        R5 K4 [pairs]
       29 GETTABLEKS                       R6 R0 K5 ["_tagFolderSet"]
       31 CALL                             R5 1 3
       32 FORGPREP_NEXT                    R5
       33 GETTABLEKS                       R10 R0 K2 ["_defaultTagsFolder"]
       35 JUMPIFEQ                         R8 R10 ; [+4]
       37 MOVE                             R10 R4
       38 MOVE                             R11 R8
       39 CALL                             R10 1 0
       40 FORGLOOP                         R5 2 ; [-8]
       42 GETIMPORT                        R5 K8 [table.sort]
       44 MOVE                             R6 R1
       45 DUPCLOSURE                       R7 K9 [PROTO_30]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R0 K10 ["tags"]
       49 SETTABLEKS                       R1 R0 K10 ["tags"]
       51 GETTABLEKS                       R6 R0 K11 ["store"]
       53 GETUPVAL                         R9 5
       54 GETTABLEKS                       R8 R9 K12 ["SetTagData"]
       56 MOVE                             R9 R1
       57 CALL                             R8 1 -1
       58 NAMECALL                         R6 R6 K13 ["dispatch"]
       60 CALL                             R6 -1 0
       61 NEWTABLE                         R6 0 0
       63 GETIMPORT                        R7 K4 [pairs]
       65 MOVE                             R8 R2
       66 CALL                             R7 1 3
       67 FORGPREP_NEXT                    R7
       68 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       70 MOVE                             R13 R6
       71 MOVE                             R14 R10
       72 GETIMPORT                        R12 K15 [table.insert]
       74 CALL                             R12 2 0
       75 FORGLOOP                         R7 2 ; [-8]
       77 GETIMPORT                        R7 K8 [table.sort]
       79 MOVE                             R8 R6
       80 CALL                             R7 1 0
       81 SETTABLEKS                       R2 R0 K16 ["groups"]
       83 GETTABLEKS                       R7 R0 K11 ["store"]
       85 GETUPVAL                         R10 5
       86 GETTABLEKS                       R9 R10 K17 ["SetGroupData"]
       88 MOVE                             R10 R6
       89 CALL                             R9 1 -1
       90 NAMECALL                         R7 R7 K13 ["dispatch"]
       92 CALL                             R7 -1 0
       93 GETIMPORT                        R7 K4 [pairs]
       95 GETTABLEKS                       R8 R0 K18 ["onUpdate"]
       97 CALL                             R7 1 3
       98 FORGPREP_NEXT                    R7
       99 MOVE                             R12 R11
      100 MOVE                             R13 R1
      101 MOVE                             R14 R5
      102 CALL                             R12 2 0
      103 FORGLOOP                         R7 2 ; [-5]
      105 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFEQKN                       R2 K1 [0] ; [+77]
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETTABLEKS                       R4 R0 K4 ["tags"]
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETTABLEKS                       R8 R7 K5 ["Name"]
       17 LOADB                            R9 1
       18 SETTABLE                         R9 R2 R8
       19 FORGLOOP                         R3 2 ; [-5]
       21 NEWTABLE                         R3 0 0
       23 GETIMPORT                        R4 K3 [pairs]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 GETUPVAL                         R9 1
       29 MOVE                             R11 R8
       30 NAMECALL                         R9 R9 K6 ["GetTags"]
       32 CALL                             R9 2 1
       33 GETIMPORT                        R10 K3 [pairs]
       35 MOVE                             R11 R9
       36 CALL                             R10 1 3
       37 FORGPREP_NEXT                    R10
       38 GETTABLE                         R15 R2 R14
       39 JUMPIF                           R15 ; [+9]
       40 LOADN                            R17 1
       41 LOADN                            R18 1
       42 NAMECALL                         R15 R14 K7 ["sub"]
       44 CALL                             R15 3 1
       45 JUMPIFEQKS                       R15 K8 ["."] ; [+3]
       47 LOADB                            R15 1
       48 SETTABLE                         R15 R3 R14
       49 FORGLOOP                         R10 2 ; [-12]
       51 FORGLOOP                         R4 2 ; [-24]
       53 NEWTABLE                         R4 0 0
       55 GETIMPORT                        R5 K3 [pairs]
       57 MOVE                             R6 R3
       58 CALL                             R5 1 3
       59 FORGPREP_NEXT                    R5
       60 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       62 MOVE                             R11 R4
       63 MOVE                             R12 R8
       64 GETIMPORT                        R10 K11 [table.insert]
       66 CALL                             R10 2 0
       67 FORGLOOP                         R5 2 ; [-8]
       69 GETIMPORT                        R5 K13 [table.sort]
       71 MOVE                             R6 R4
       72 CALL                             R5 1 0
       73 GETTABLEKS                       R5 R0 K14 ["store"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R7 R8 K15 ["SetUnknownTags"]
       78 MOVE                             R8 R4
       79 CALL                             R7 1 -1
       80 NAMECALL                         R5 R5 K16 ["dispatch"]
       82 CALL                             R5 -1 0
       83 RETURN                           R0 0

PROTO_33:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["_findTagInst"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+14]
        5 GETIMPORT                        R5 K2 [warn]
        7 LOADK                            R7 K3 ["Setting property of non-existent tag `"]
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R11 R1
       10 GETIMPORT                        R10 K5 [tostring]
       12 CALL                             R10 1 1
       13 MOVE                             R8 R10
       14 LOADK                            R9 K6 ["`"]
       15 CONCAT                           R6 R7 R9
       16 CALL                             R5 1 0
       17 LOADB                            R5 0
       18 RETURN                           R5 1
       19 MOVE                             R7 R2
       20 NAMECALL                         R5 R4 K7 ["GetAttribute"]
       22 CALL                             R5 2 1
       23 JUMPIFNOTEQ                      R5 R3 ; [+3]
       25 LOADB                            R5 0
       26 RETURN                           R5 1
       27 GETUPVAL                         R5 0
       28 GETIMPORT                        R7 K10 [string.format]
       30 LOADK                            R8 K11 ["Setting property %q of tag %q"]
       31 MOVE                             R9 R2
       32 MOVE                             R10 R1
       33 CALL                             R7 3 -1
       34 NAMECALL                         R5 R5 K12 ["SetWaypoint"]
       36 CALL                             R5 -1 0
       37 MOVE                             R7 R2
       38 MOVE                             R8 R3
       39 NAMECALL                         R5 R4 K13 ["SetAttribute"]
       41 CALL                             R5 3 0
       42 GETUPVAL                         R5 0
       43 GETIMPORT                        R7 K10 [string.format]
       45 LOADK                            R8 K14 ["Set property %q of tag %q"]
       46 MOVE                             R9 R2
       47 MOVE                             R10 R1
       48 CALL                             R7 3 -1
       49 NAMECALL                         R5 R5 K12 ["SetWaypoint"]
       51 CALL                             R5 -1 0
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_34:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_findTagInst"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R3 K1 ["GetAttribute"]
       10 CALL                             R4 2 -1
       11 RETURN                           R4 -1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["_defaultTagsFolder"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["_defaultTagsFolder"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R2 1
       11 GETIMPORT                        R2 K3 [pairs]
       13 GETTABLEKS                       R3 R0 K4 ["_tagFolderSet"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 MOVE                             R9 R1
       18 NAMECALL                         R7 R5 K1 ["FindFirstChild"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R2 2 ; [-7]
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_36:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_findTagInst"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETIMPORT                        R4 K3 [string.format]
        9 LOADK                            R5 K4 ["Creating tag %q"]
       10 MOVE                             R6 R1
       11 CALL                             R4 2 -1
       12 NAMECALL                         R2 R2 K5 ["SetWaypoint"]
       14 CALL                             R2 -1 0
       15 NAMECALL                         R2 R0 K6 ["_ensureDefaultFolder"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [Instance.new]
       20 LOADK                            R4 K10 ["Configuration"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R1 R3 K11 ["Name"]
       24 LOADK                            R6 K12 ["Icon"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K12 ["Icon"]
       28 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       30 CALL                             R4 3 0
       31 LOADK                            R6 K14 ["Visible"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K14 ["Visible"]
       35 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 LOADK                            R6 K15 ["DrawType"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K15 ["DrawType"]
       42 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       44 CALL                             R4 3 0
       45 GETUPVAL                         R4 2
       46 JUMPIFNOT                        R4 ; [+7]
       47 LOADK                            R6 K16 ["ShowText"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K16 ["ShowText"]
       51 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       53 CALL                             R4 3 0
       54 LOADK                            R6 K17 ["AlwaysOnTop"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R7 R8 K17 ["AlwaysOnTop"]
       58 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       60 CALL                             R4 3 0
       61 LOADK                            R6 K18 ["Group"]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R7 R8 K18 ["Group"]
       65 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       67 CALL                             R4 3 0
       68 LOADK                            R6 K19 ["Color"]
       69 GETUPVAL                         R7 3
       70 MOVE                             R8 R1
       71 CALL                             R7 1 -1
       72 NAMECALL                         R4 R3 K13 ["SetAttribute"]
       74 CALL                             R4 -1 0
       75 SETTABLEKS                       R2 R3 K20 ["Parent"]
       77 GETTABLEKS                       R4 R0 K21 ["analytics"]
       79 LOADK                            R6 K22 ["tagCreated"]
       80 NAMECALL                         R4 R4 K23 ["report"]
       82 CALL                             R4 2 0
       83 GETUPVAL                         R4 0
       84 GETIMPORT                        R6 K3 [string.format]
       86 LOADK                            R7 K24 ["Created tag %q"]
       87 MOVE                             R8 R1
       88 CALL                             R6 2 -1
       89 NAMECALL                         R4 R4 K5 ["SetWaypoint"]
       91 CALL                             R4 -1 0
       92 RETURN                           R0 0

PROTO_37:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_findTagInst"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 0
        7 GETIMPORT                        R6 K3 [string.format]
        9 LOADK                            R7 K4 ["Renaming tag %q to %q"]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R2
       12 CALL                             R6 3 -1
       13 NAMECALL                         R4 R4 K5 ["SetWaypoint"]
       15 CALL                             R4 -1 0
       16 SETTABLEKS                       R2 R3 K6 ["Name"]
       18 GETIMPORT                        R4 K8 [pairs]
       20 GETUPVAL                         R5 1
       21 MOVE                             R7 R1
       22 NAMECALL                         R5 R5 K9 ["GetTagged"]
       24 CALL                             R5 2 -1
       25 CALL                             R4 -1 3
       26 FORGPREP_NEXT                    R4
       27 GETUPVAL                         R9 1
       28 MOVE                             R11 R8
       29 MOVE                             R12 R1
       30 NAMECALL                         R9 R9 K10 ["RemoveTag"]
       32 CALL                             R9 3 0
       33 GETUPVAL                         R9 1
       34 MOVE                             R11 R8
       35 MOVE                             R12 R2
       36 NAMECALL                         R9 R9 K11 ["AddTag"]
       38 CALL                             R9 3 0
       39 FORGLOOP                         R4 2 ; [-13]
       41 NAMECALL                         R4 R0 K12 ["_updateStore"]
       43 CALL                             R4 1 0
       44 NAMECALL                         R4 R0 K13 ["_updateUnknownTags"]
       46 CALL                             R4 1 0
       47 GETUPVAL                         R4 0
       48 GETIMPORT                        R6 K3 [string.format]
       50 LOADK                            R7 K14 ["Renamed tag %q to %q"]
       51 MOVE                             R8 R1
       52 MOVE                             R9 R2
       53 CALL                             R6 3 -1
       54 NAMECALL                         R4 R4 K5 ["SetWaypoint"]
       56 CALL                             R4 -1 0
       57 RETURN                           R0 0

PROTO_38:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 GETIMPORT                        R4 K1 [pairs]
        5 GETTABLEKS                       R5 R0 K2 ["tags"]
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 GETTABLEKS                       R9 R8 K3 ["Group"]
       11 JUMPIFNOTEQ                      R9 R1 ; [+28]
       13 JUMPIF                           R3 ; [+19]
       14 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       16 MOVE                             R10 R2
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K6 [table.insert]
       20 CALL                             R9 2 0
       21 GETTABLEKS                       R9 R8 K7 ["Visible"]
       23 JUMPIF                           R9 ; [+16]
       24 LOADB                            R3 1
       25 GETTABLEKS                       R11 R8 K8 ["Name"]
       27 LOADK                            R12 K7 ["Visible"]
       28 LOADB                            R13 1
       29 NAMECALL                         R9 R0 K9 ["_setProp"]
       31 CALL                             R9 4 0
       32 JUMP                             ; [+7]
       33 GETTABLEKS                       R11 R8 K8 ["Name"]
       35 LOADK                            R12 K7 ["Visible"]
       36 LOADB                            R13 1
       37 NAMECALL                         R9 R0 K9 ["_setProp"]
       39 CALL                             R9 4 0
       40 FORGLOOP                         R4 2 ; [-32]
       42 JUMPIF                           R3 ; [+14]
       43 GETIMPORT                        R4 K1 [pairs]
       45 MOVE                             R5 R2
       46 CALL                             R4 1 3
       47 FORGPREP_NEXT                    R4
       48 GETTABLEKS                       R11 R8 K8 ["Name"]
       50 LOADK                            R12 K7 ["Visible"]
       51 LOADB                            R13 0
       52 NAMECALL                         R9 R0 K9 ["_setProp"]
       54 CALL                             R9 4 0
       55 FORGLOOP                         R4 2 ; [-8]
       57 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["groups"]
        2 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [string.format]
        3 LOADK                            R6 K3 ["Renaming Group %q to %q"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R5 3 -1
        7 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
        9 CALL                             R3 -1 0
       10 GETIMPORT                        R3 K6 [pairs]
       12 GETTABLEKS                       R4 R0 K7 ["tags"]
       14 CALL                             R3 1 3
       15 FORGPREP_NEXT                    R3
       16 GETTABLEKS                       R8 R7 K8 ["Group"]
       18 JUMPIFNOTEQ                      R8 R1 ; [+8]
       20 GETTABLEKS                       R10 R7 K9 ["Name"]
       22 LOADK                            R11 K8 ["Group"]
       23 ORK                              R12 R2 K10 [""]
       24 NAMECALL                         R8 R0 K11 ["_setProp"]
       26 CALL                             R8 4 0
       27 FORGLOOP                         R3 2 ; [-12]
       29 GETUPVAL                         R3 0
       30 GETIMPORT                        R5 K2 [string.format]
       32 LOADK                            R6 K12 ["Renamed Group %q to %q"]
       33 MOVE                             R7 R1
       34 MOVE                             R8 R2
       35 CALL                             R5 3 -1
       36 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       38 CALL                             R3 -1 0
       39 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K2 [string.format]
        3 LOADK                            R5 K3 ["Deleteing Group %q"]
        4 MOVE                             R6 R1
        5 CALL                             R4 2 -1
        6 NAMECALL                         R2 R2 K4 ["SetWaypoint"]
        8 CALL                             R2 -1 0
        9 GETIMPORT                        R2 K6 [pairs]
       11 GETTABLEKS                       R3 R0 K7 ["tags"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 GETTABLEKS                       R7 R6 K8 ["Group"]
       17 JUMPIFNOTEQ                      R7 R1 ; [+8]
       19 GETTABLEKS                       R9 R6 K9 ["Name"]
       21 LOADK                            R10 K8 ["Group"]
       22 LOADK                            R11 K10 [""]
       23 NAMECALL                         R7 R0 K11 ["_setProp"]
       25 CALL                             R7 4 0
       26 FORGLOOP                         R2 2 ; [-12]
       28 GETUPVAL                         R2 0
       29 GETIMPORT                        R4 K2 [string.format]
       31 LOADK                            R5 K12 ["Deleted Group %q"]
       32 MOVE                             R6 R1
       33 CALL                             R4 2 -1
       34 NAMECALL                         R2 R2 K4 ["SetWaypoint"]
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R6 R1
        3 NAMECALL                         R4 R4 K0 ["GetTagged"]
        5 CALL                             R4 2 -1
        6 NAMECALL                         R2 R2 K1 ["Set"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Icon"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Icon"]
        9 RETURN                           R2 1

PROTO_44:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Visible"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Visible"]
        9 RETURN                           R2 1

PROTO_45:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["DrawType"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["DrawType"]
        9 RETURN                           R2 1

PROTO_46:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Color"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Color"]
        9 RETURN                           R2 1

PROTO_47:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["ShowText"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["ShowText"]
        9 RETURN                           R2 1

PROTO_48:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["AlwaysOnTop"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["AlwaysOnTop"]
        9 RETURN                           R2 1

PROTO_49:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Group"]
        2 NAMECALL                         R2 R0 K1 ["_getProp"]
        4 CALL                             R2 3 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Group"]
        9 RETURN                           R2 1

PROTO_50:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["Icon"]
        2 ORK                              R7 R2 K1 [""]
        3 NAMECALL                         R3 R0 K2 ["_setProp"]
        5 CALL                             R3 4 0
        6 GETTABLEKS                       R3 R0 K3 ["analytics"]
        8 LOADK                            R5 K4 ["iconChanged"]
        9 NAMECALL                         R3 R3 K5 ["report"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_51:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["Visible"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["_setProp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_52:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["DrawType"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["_setProp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_53:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["Color"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["_setProp"]
        5 CALL                             R3 4 0
        6 GETTABLEKS                       R3 R0 K2 ["analytics"]
        8 LOADK                            R5 K3 ["colorChanged"]
        9 NAMECALL                         R3 R3 K4 ["report"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_54:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["ShowText"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["_setProp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_55:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["AlwaysOnTop"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["_setProp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_56:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["Group"]
        2 ORK                              R7 R2 K1 [""]
        3 NAMECALL                         R3 R0 K2 ["_setProp"]
        5 CALL                             R3 4 0
        6 RETURN                           R0 0

PROTO_57:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_findTagInst"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETIMPORT                        R5 K3 [string.format]
        9 LOADK                            R6 K4 ["Deleting tag %q"]
       10 MOVE                             R7 R1
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R3 K5 ["SetWaypoint"]
       14 CALL                             R3 -1 0
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K6 ["Parent"]
       18 GETIMPORT                        R3 K8 [pairs]
       20 GETUPVAL                         R4 1
       21 MOVE                             R6 R1
       22 NAMECALL                         R4 R4 K9 ["GetTagged"]
       24 CALL                             R4 2 -1
       25 CALL                             R3 -1 3
       26 FORGPREP_NEXT                    R3
       27 GETUPVAL                         R8 1
       28 MOVE                             R10 R7
       29 MOVE                             R11 R1
       30 NAMECALL                         R8 R8 K10 ["RemoveTag"]
       32 CALL                             R8 3 0
       33 FORGLOOP                         R3 2 ; [-7]
       35 GETUPVAL                         R3 0
       36 GETIMPORT                        R5 K3 [string.format]
       38 LOADK                            R6 K11 ["Deleted tag %q"]
       39 MOVE                             R7 R1
       40 CALL                             R5 2 -1
       41 NAMECALL                         R3 R3 K5 ["SetWaypoint"]
       43 CALL                             R3 -1 0
       44 RETURN                           R0 0

PROTO_58:
        0 JUMPIFNOT                        R2 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETIMPORT                        R5 K2 [string.format]
        4 LOADK                            R6 K3 ["Applying tag %q to selection"]
        5 MOVE                             R7 R1
        6 CALL                             R5 2 -1
        7 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
        9 CALL                             R3 -1 0
       10 JUMP                             ; [+9]
       11 GETUPVAL                         R3 0
       12 GETIMPORT                        R5 K2 [string.format]
       14 LOADK                            R6 K5 ["Removing tag %q from selection"]
       15 MOVE                             R7 R1
       16 CALL                             R5 2 -1
       17 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       19 CALL                             R3 -1 0
       20 GETUPVAL                         R3 1
       21 NAMECALL                         R3 R3 K6 ["Get"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [pairs]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 3
       28 FORGPREP_NEXT                    R4
       29 JUMPIFNOT                        R2 ; [+7]
       30 GETUPVAL                         R9 2
       31 MOVE                             R11 R8
       32 MOVE                             R12 R1
       33 NAMECALL                         R9 R9 K9 ["AddTag"]
       35 CALL                             R9 3 0
       36 JUMP                             ; [+6]
       37 GETUPVAL                         R9 2
       38 MOVE                             R11 R8
       39 MOVE                             R12 R1
       40 NAMECALL                         R9 R9 K10 ["RemoveTag"]
       42 CALL                             R9 3 0
       43 FORGLOOP                         R4 2 ; [-15]
       45 NAMECALL                         R4 R0 K11 ["_updateStore"]
       47 CALL                             R4 1 0
       48 JUMPIFNOT                        R2 ; [+16]
       49 GETUPVAL                         R4 0
       50 GETIMPORT                        R6 K2 [string.format]
       52 LOADK                            R7 K12 ["Applied tag %q to selection"]
       53 MOVE                             R8 R1
       54 CALL                             R6 2 -1
       55 NAMECALL                         R4 R4 K4 ["SetWaypoint"]
       57 CALL                             R4 -1 0
       58 GETTABLEKS                       R4 R0 K13 ["analytics"]
       60 LOADK                            R6 K14 ["objectTagged"]
       61 NAMECALL                         R4 R4 K15 ["report"]
       63 CALL                             R4 2 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 0
       66 GETIMPORT                        R6 K2 [string.format]
       68 LOADK                            R7 K16 ["Removed tag %q from selection"]
       69 MOVE                             R8 R1
       70 CALL                             R6 2 -1
       71 NAMECALL                         R4 R4 K4 ["SetWaypoint"]
       73 CALL                             R4 -1 0
       74 RETURN                           R0 0

PROTO_59:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["enabled"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 NAMECALL                         R2 R0 K1 ["_updateStore"]
       10 CALL                             R2 1 0
       11 NAMECALL                         R2 R0 K2 ["_updateUnknownTags"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K2 ["CollectionService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETIMPORT                        R7 K9 [script]
       29 GETTABLEKS                       R6 R7 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K11 ["Actions"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K7 [require]
       36 GETIMPORT                        R8 K9 [script]
       38 GETTABLEKS                       R7 R8 K10 ["Parent"]
       40 GETTABLEKS                       R6 R7 K12 ["Maid"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K7 [require]
       45 GETIMPORT                        R9 K9 [script]
       47 GETTABLEKS                       R8 R9 K10 ["Parent"]
       49 GETTABLEKS                       R7 R8 K13 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K1 [game]
       54 LOADK                            R9 K14 ["ServerStorage"]
       55 NAMECALL                         R7 R7 K3 ["GetService"]
       57 CALL                             R7 2 1
       58 GETIMPORT                        R8 K1 [game]
       60 LOADK                            R10 K15 ["TagEditorShowTextSeparately"]
       61 NAMECALL                         R8 R8 K16 ["GetFastFlag"]
       63 CALL                             R8 2 1
       64 GETIMPORT                        R9 K1 [game]
       66 LOADK                            R11 K17 ["TagEditorExternalUpdate"]
       67 NAMECALL                         R9 R9 K16 ["GetFastFlag"]
       69 CALL                             R9 2 1
       70 NEWTABLE                         R10 64 0
       72 SETTABLEKS                       R10 R10 K18 ["__index"]
       74 DUPTABLE                         R11 K25 [{"Icon", "Visible", "DrawType", "ShowText", "AlwaysOnTop", "Group"}]
       75 LOADK                            R12 K26 ["rbxasset://textures/TagEditor/Tag.png"]
       76 SETTABLEKS                       R12 R11 K19 ["Icon"]
       78 LOADB                            R12 1
       79 SETTABLEKS                       R12 R11 K20 ["Visible"]
       81 LOADK                            R12 K27 ["Box"]
       82 SETTABLEKS                       R12 R11 K21 ["DrawType"]
       84 JUMPIFNOT                        R8 ; [+2]
       85 LOADB                            R12 0
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 SETTABLEKS                       R12 R11 K22 ["ShowText"]
       90 LOADB                            R12 0
       91 SETTABLEKS                       R12 R11 K23 ["AlwaysOnTop"]
       93 LOADK                            R12 K28 [""]
       94 SETTABLEKS                       R12 R11 K24 ["Group"]
       96 LOADNIL                          R12
       97 SETTABLEKS                       R12 R10 K29 ["_global"]
       99 DUPCLOSURE                       R12 K30 [PROTO_0]
      100 DUPCLOSURE                       R13 K31 [PROTO_1]
      101 DUPCLOSURE                       R14 K32 [PROTO_2]
      102 DUPCLOSURE                       R15 K33 [PROTO_3]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R3
      105 DUPCLOSURE                       R16 K34 [PROTO_7]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R16 R10 K35 ["new"]
      116 DUPCLOSURE                       R16 K36 [PROTO_8]
      117 SETTABLEKS                       R16 R10 K37 ["Destroy"]
      119 DUPCLOSURE                       R16 K38 [PROTO_9]
      120 CAPTURE                          VAL R10
      121 SETTABLEKS                       R16 R10 K39 ["Get"]
      123 DUPCLOSURE                       R16 K40 [PROTO_10]
      124 SETTABLEKS                       R16 R10 K41 ["GetTags"]
      126 DUPCLOSURE                       R16 K42 [PROTO_12]
      127 SETTABLEKS                       R16 R10 K43 ["OnTagsUpdated"]
      129 DUPCLOSURE                       R16 K44 [PROTO_13]
      130 SETTABLEKS                       R16 R10 K45 ["_stopWatchingFolder"]
      132 DUPCLOSURE                       R16 K46 [PROTO_17]
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R16 R10 K47 ["_watchFolder"]
      136 DUPCLOSURE                       R16 K48 [PROTO_24]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R16 R10 K49 ["_watchChild"]
      142 DUPCLOSURE                       R16 K50 [PROTO_25]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R16 R10 K51 ["_createTagFolder"]
      147 DUPCLOSURE                       R16 K52 [PROTO_26]
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R3
      150 SETTABLEKS                       R16 R10 K53 ["_ensureDefaultFolder"]
      152 DUPCLOSURE                       R16 K54 [PROTO_28]
      153 SETTABLEKS                       R16 R10 K55 ["_updateStore"]
      155 DUPCLOSURE                       R16 K56 [PROTO_31]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R16 R10 K57 ["_doUpdateStore"]
      164 DUPCLOSURE                       R16 K58 [PROTO_32]
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R16 R10 K59 ["_updateUnknownTags"]
      170 DUPCLOSURE                       R16 K60 [PROTO_33]
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R16 R10 K61 ["_setProp"]
      174 DUPCLOSURE                       R16 K62 [PROTO_34]
      175 SETTABLEKS                       R16 R10 K63 ["_getProp"]
      177 DUPCLOSURE                       R16 K64 [PROTO_35]
      178 SETTABLEKS                       R16 R10 K65 ["_findTagInst"]
      180 DUPCLOSURE                       R16 K66 [PROTO_36]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R13
      185 SETTABLEKS                       R16 R10 K67 ["AddTag"]
      187 DUPCLOSURE                       R16 K68 [PROTO_37]
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R16 R10 K69 ["Rename"]
      192 DUPCLOSURE                       R16 K70 [PROTO_38]
      193 SETTABLEKS                       R16 R10 K71 ["ToggleGroupVisibility"]
      195 DUPCLOSURE                       R16 K72 [PROTO_39]
      196 SETTABLEKS                       R16 R10 K73 ["GetGroups"]
      198 DUPCLOSURE                       R16 K74 [PROTO_40]
      199 CAPTURE                          VAL R2
      200 SETTABLEKS                       R16 R10 K75 ["RenameGroup"]
      202 DUPCLOSURE                       R16 K76 [PROTO_41]
      203 CAPTURE                          VAL R2
      204 SETTABLEKS                       R16 R10 K77 ["DeleteGroup"]
      206 DUPCLOSURE                       R16 K78 [PROTO_42]
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R16 R10 K79 ["SelectAll"]
      211 DUPCLOSURE                       R16 K80 [PROTO_43]
      212 CAPTURE                          VAL R11
      213 SETTABLEKS                       R16 R10 K81 ["GetIcon"]
      215 DUPCLOSURE                       R16 K82 [PROTO_44]
      216 CAPTURE                          VAL R11
      217 SETTABLEKS                       R16 R10 K83 ["GetVisible"]
      219 DUPCLOSURE                       R16 K84 [PROTO_45]
      220 CAPTURE                          VAL R11
      221 SETTABLEKS                       R16 R10 K85 ["GetDrawType"]
      223 DUPCLOSURE                       R16 K86 [PROTO_46]
      224 CAPTURE                          VAL R11
      225 SETTABLEKS                       R16 R10 K87 ["GetColor"]
      227 JUMPIFNOT                        R8 ; [+4]
      228 DUPCLOSURE                       R16 K88 [PROTO_47]
      229 CAPTURE                          VAL R11
      230 SETTABLEKS                       R16 R10 K89 ["GetShowText"]
      232 DUPCLOSURE                       R16 K90 [PROTO_48]
      233 CAPTURE                          VAL R11
      234 SETTABLEKS                       R16 R10 K91 ["GetAlwaysOnTop"]
      236 DUPCLOSURE                       R16 K92 [PROTO_49]
      237 CAPTURE                          VAL R11
      238 SETTABLEKS                       R16 R10 K93 ["GetGroup"]
      240 DUPCLOSURE                       R16 K94 [PROTO_50]
      241 SETTABLEKS                       R16 R10 K95 ["SetIcon"]
      243 DUPCLOSURE                       R16 K96 [PROTO_51]
      244 SETTABLEKS                       R16 R10 K97 ["SetVisible"]
      246 DUPCLOSURE                       R16 K98 [PROTO_52]
      247 SETTABLEKS                       R16 R10 K99 ["SetDrawType"]
      249 DUPCLOSURE                       R16 K100 [PROTO_53]
      250 SETTABLEKS                       R16 R10 K101 ["SetColor"]
      252 JUMPIFNOT                        R8 ; [+3]
      253 DUPCLOSURE                       R16 K102 [PROTO_54]
      254 SETTABLEKS                       R16 R10 K103 ["SetShowText"]
      256 DUPCLOSURE                       R16 K104 [PROTO_55]
      257 SETTABLEKS                       R16 R10 K105 ["SetAlwaysOnTop"]
      259 DUPCLOSURE                       R16 K106 [PROTO_56]
      260 SETTABLEKS                       R16 R10 K107 ["SetGroup"]
      262 DUPCLOSURE                       R16 K108 [PROTO_57]
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R0
      265 SETTABLEKS                       R16 R10 K109 ["DelTag"]
      267 DUPCLOSURE                       R16 K110 [PROTO_58]
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R1
      270 CAPTURE                          VAL R0
      271 SETTABLEKS                       R16 R10 K111 ["SetTag"]
      273 DUPCLOSURE                       R16 K112 [PROTO_59]
      274 SETTABLEKS                       R16 R10 K113 ["SetEnabled"]
      276 RETURN                           R10 1
