PROTO_0:
        0 MULK                             R7 R0 K1 [100]
        1 ADDK                             R6 R7 K0 [0.5]
        2 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        3 GETIMPORT                        R5 K4 [math.floor]
        5 CALL                             R5 1 1
        6 FASTCALL1                        TOSTRING R5 ; [+2]
        7 GETIMPORT                        R4 K6 [tostring]
        9 CALL                             R4 1 1
       10 MOVE                             R2 R4
       11 LOADK                            R3 K7 ["%"]
       12 CONCAT                           R1 R2 R3
       13 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_3:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 GETTABLEN                        R4 R0 3
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K2 [Vector3.new]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetExpandedSections"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["ExpandedSections"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["hasChildren"]
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["getItemId"]
        6 GETTABLEKS                       R2 R0 K2 ["item"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["onToggle"]
       12 NEWTABLE                         R3 1 0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K4 ["props"]
       17 GETTABLEKS                       R6 R6 K5 ["ExpandedSections"]
       19 GETTABLE                         R5 R6 R1
       20 JUMPIFEQKB                       R5 FALSE ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 SETTABLE                         R4 R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["SetOverride"]
        5 GETTABLEKS                       R3 R1 K2 ["id"]
        7 GETTABLEKS                       R4 R1 K3 ["field"]
        9 MOVE                             R5 R0
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LAYERVIEW_ACTIONS"]
        3 GETTABLEKS                       R2 R2 K1 ["Clear"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+13]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["SetOverride"]
       12 GETTABLEKS                       R3 R1 K4 ["id"]
       14 GETTABLEKS                       R4 R1 K5 ["field"]
       16 LOADNIL                          R5
       17 CALL                             R2 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["LAYERVIEW_ACTIONS"]
       22 GETTABLEKS                       R2 R2 K6 ["History"]
       24 JUMPIFNOTEQ                      R0 R2 ; [+13]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K2 ["props"]
       29 GETTABLEKS                       R2 R2 K7 ["SetHistoryField"]
       31 GETTABLEKS                       R3 R1 K4 ["id"]
       33 GETTABLEKS                       R4 R1 K8 ["section"]
       35 GETTABLEKS                       R5 R1 K5 ["field"]
       37 CALL                             R2 3 0
       38 RETURN                           R0 0

PROTO_11:
        0 DUPCLOSURE                       R1 K0 [PROTO_5]
        1 SETTABLEKS                       R1 R0 K1 ["getChildren"]
        3 DUPCLOSURE                       R1 K2 [PROTO_6]
        4 SETTABLEKS                       R1 R0 K3 ["getItemId"]
        6 NEWCLOSURE                       R1 P2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K4 ["onToggle"]
       11 NEWCLOSURE                       R1 P3
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K5 ["onDoubleClick"]
       15 NEWCLOSURE                       R1 P4
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["onCellEdited"]
       19 NEWCLOSURE                       R1 P5
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onCellAction"]
       24 DUPTABLE                         R3 K10 [{["LayerData"] = }]
       25 NAMECALL                         R1 R0 K11 ["setState"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 MOVE                             R8 R2
        6 JUMPIFNOT                        R8 ; [+1]
        7 GETTABLE                         R8 R2 R7
        8 MOVE                             R2 R8
        9 FORGLOOP                         R3 2 ; [-5]
       11 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R1 K0 ["name"]
        8 FASTCALL1                        TYPEOF R4 ; [+2]
        9 GETIMPORT                        R3 K2 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQ                      R2 R3 ; [+10]
       14 GETTABLEKS                       R3 R0 K0 ["name"]
       16 GETTABLEKS                       R4 R1 K0 ["name"]
       18 JUMPIFLT                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R4 R0 K0 ["name"]
       25 FASTCALL1                        TYPEOF R4 ; [+2]
       26 GETIMPORT                        R3 K2 [typeof]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R5 R1 K0 ["name"]
       31 FASTCALL1                        TYPEOF R5 ; [+2]
       32 GETIMPORT                        R4 K2 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFLT                         R3 R4 ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 RETURN                           R2 1

PROTO_14:
        0 JUMPIF                           R3 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        ASSERT R3 ; [+3]
        3 MOVE                             R7 R3
        4 GETIMPORT                        R6 K1 [assert]
        6 CALL                             R6 1 0
        7 GETUPVAL                         R7 0
        8 GETTABLE                         R6 R7 R2
        9 MOVE                             R7 R6
       10 JUMPIFNOT                        R7 ; [+2]
       11 GETTABLEKS                       R7 R6 K2 ["Editable"]
       13 MOVE                             R8 R6
       14 JUMPIFNOT                        R8 ; [+2]
       15 GETTABLEKS                       R8 R6 K3 ["Overrides"]
       17 MOVE                             R9 R6
       18 JUMPIFNOT                        R9 ; [+2]
       19 GETTABLEKS                       R9 R6 K4 ["History"]
       21 MOVE                             R10 R5
       22 JUMPIF                           R10 ; [+2]
       23 NEWTABLE                         R10 0 0
       25 MOVE                             R5 R10
       26 GETUPVAL                         R10 1
       27 MOVE                             R11 R3
       28 CALL                             R10 1 1
       29 GETIMPORT                        R11 K7 [table.sort]
       31 MOVE                             R12 R10
       32 CALL                             R11 1 0
       33 MOVE                             R11 R10
       34 LOADNIL                          R12
       35 LOADNIL                          R13
       36 FORGPREP                         R11
       37 GETTABLE                         R16 R3 R15
       38 NEWTABLE                         R17 0 0
       40 GETUPVAL                         R18 2
       41 MOVE                             R19 R5
       42 CALL                             R18 1 1
       43 FASTCALL2                        TABLE_INSERT R18 R15 ; [+5]
       45 MOVE                             R20 R18
       46 MOVE                             R21 R15
       47 GETIMPORT                        R19 K9 [table.insert]
       49 CALL                             R19 2 0
       50 JUMPIFNOT                        R8 ; [+30]
       51 JUMPIFNOT                        R4 ; [+29]
       52 MOVE                             R20 R4
       53 MOVE                             R21 R18
       54 LOADNIL                          R22
       55 LOADNIL                          R23
       56 FORGPREP                         R21
       57 MOVE                             R26 R20
       58 JUMPIFNOT                        R26 ; [+1]
       59 GETTABLE                         R26 R20 R25
       60 MOVE                             R20 R26
       61 FORGLOOP                         R21 2 ; [-5]
       63 MOVE                             R19 R20
       64 JUMPIFEQKNIL                     R19 ; [+16]
       66 MOVE                             R16 R19
       67 DUPTABLE                         R22 K15 [{["Id"], ["Icon"] = "rbxasset://textures/CompositorDebugger/clear.png", ["Tooltip"] = "ClearOverride"}]
       68 GETUPVAL                         R23 3
       69 GETTABLEKS                       R23 R23 K16 ["LAYERVIEW_ACTIONS"]
       71 GETTABLEKS                       R23 R23 K17 ["Clear"]
       73 SETTABLEKS                       R23 R22 K10 ["Id"]
       75 FASTCALL2                        TABLE_INSERT R17 R22 ; [+4]
       77 MOVE                             R21 R17
       78 GETIMPORT                        R20 K9 [table.insert]
       80 CALL                             R20 2 0
       81 DUPTABLE                         R19 K21 [{"name", "id", "path"}]
       82 SETTABLEKS                       R15 R19 K18 ["name"]
       84 MOVE                             R21 R2
       85 LOADK                            R22 K22 ["|"]
       86 GETIMPORT                        R23 K24 [table.concat]
       88 MOVE                             R24 R18
       89 LOADK                            R25 K22 ["|"]
       90 CALL                             R23 2 1
       91 CONCAT                           R20 R21 R23
       92 SETTABLEKS                       R20 R19 K19 ["id"]
       94 DUPTABLE                         R20 K27 [{"id", "section", "field"}]
       95 SETTABLEKS                       R1 R20 K19 ["id"]
       97 SETTABLEKS                       R2 R20 K25 ["section"]
       99 SETTABLEKS                       R18 R20 K26 ["field"]
      101 SETTABLEKS                       R20 R19 K20 ["path"]
      103 FASTCALL1                        TYPEOF R16 ; [+3]
      104 MOVE                             R21 R16
      105 GETIMPORT                        R20 K29 [typeof]
      107 CALL                             R20 1 1
      108 JUMPIFNOTEQKS                    R20 K5 ["table"] ; [+20]
      110 DUPTABLE                         R21 K33 [{["Value"] = "", ["Actions"]}]
      111 SETTABLEKS                       R17 R21 K32 ["Actions"]
      113 SETTABLEKS                       R21 R19 K34 ["value"]
      115 NEWTABLE                         R21 0 0
      117 SETTABLEKS                       R21 R19 K35 ["children"]
      119 GETUPVAL                         R21 4
      120 GETTABLEKS                       R22 R19 K35 ["children"]
      122 MOVE                             R23 R1
      123 MOVE                             R24 R2
      124 MOVE                             R25 R16
      125 MOVE                             R26 R4
      126 MOVE                             R27 R18
      127 CALL                             R21 6 0
      128 JUMP                             ; [+74]
      129 GETUPVAL                         R22 5
      130 GETTABLE                         R21 R22 R20
      131 JUMPIF                           R21 ; [+7]
      132 LOADK                            R22 K36 ["["]
      133 MOVE                             R23 R20
      134 LOADK                            R24 K37 ["]"]
      135 CONCAT                           R21 R22 R24
      136 SETTABLEKS                       R21 R19 K34 ["value"]
      138 JUMP                             ; [+64]
      139 JUMPIFNOT                        R9 ; [+20]
      140 GETUPVAL                         R22 5
      141 GETTABLE                         R21 R22 R20
      142 GETTABLEKS                       R21 R21 K4 ["History"]
      144 JUMPIFNOT                        R21 ; [+15]
      145 DUPTABLE                         R23 K40 [{["Id"], ["Icon"] = "rbxasset://textures/CompositorDebugger/history.png", ["Tooltip"] = "ViewHistory"}]
      146 GETUPVAL                         R24 3
      147 GETTABLEKS                       R24 R24 K16 ["LAYERVIEW_ACTIONS"]
      149 GETTABLEKS                       R24 R24 K4 ["History"]
      151 SETTABLEKS                       R24 R23 K10 ["Id"]
      153 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      155 MOVE                             R22 R17
      156 GETIMPORT                        R21 K9 [table.insert]
      158 CALL                             R21 2 0
      159 JUMP                             ; [+14]
      160 DUPTABLE                         R23 K41 [{"Id"}]
      161 GETUPVAL                         R24 3
      162 GETTABLEKS                       R24 R24 K16 ["LAYERVIEW_ACTIONS"]
      164 GETTABLEKS                       R24 R24 K42 ["NoOp"]
      166 SETTABLEKS                       R24 R23 K10 ["Id"]
      168 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      170 MOVE                             R22 R17
      171 GETIMPORT                        R21 K9 [table.insert]
      173 CALL                             R21 2 0
      174 MOVE                             R21 R16
      175 JUMPIFNOT                        R6 ; [+13]
      176 GETTABLEKS                       R22 R6 K43 ["Formatters"]
      178 JUMPIFNOT                        R22 ; [+10]
      179 GETTABLEKS                       R23 R6 K43 ["Formatters"]
      181 GETTABLE                         R22 R23 R15
      182 JUMPIFNOT                        R22 ; [+6]
      183 GETTABLEKS                       R23 R6 K43 ["Formatters"]
      185 GETTABLE                         R22 R23 R15
      186 MOVE                             R23 R16
      187 CALL                             R22 1 1
      188 MOVE                             R21 R22
      189 DUPTABLE                         R22 K46 [{"Value", "Disabled", "Schema", "Actions"}]
      190 SETTABLEKS                       R21 R22 K30 ["Value"]
      192 NOT                              R23 R7
      193 SETTABLEKS                       R23 R22 K44 ["Disabled"]
      195 GETUPVAL                         R24 5
      196 GETTABLE                         R23 R24 R20
      197 SETTABLEKS                       R23 R22 K45 ["Schema"]
      199 SETTABLEKS                       R17 R22 K32 ["Actions"]
      201 SETTABLEKS                       R22 R19 K34 ["value"]
      203 FASTCALL2                        TABLE_INSERT R0 R19 ; [+5]
      205 MOVE                             R22 R0
      206 MOVE                             R23 R19
      207 GETIMPORT                        R21 K9 [table.insert]
      209 CALL                             R21 2 0
      210 FORGLOOP                         R11 2 ; [-174]
      212 GETIMPORT                        R11 K7 [table.sort]
      214 MOVE                             R12 R0
      215 DUPCLOSURE                       R13 K47 [PROTO_13]
      216 CALL                             R11 2 0
      217 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R1 ; [+35]
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+30]
        6 DUPTABLE                         R2 K5 [{"name", "children", "id"}]
        7 GETUPVAL                         R3 0
        8 LOADK                            R5 K6 ["LayerView"]
        9 MOVE                             R6 R0
       10 NAMECALL                         R3 R3 K7 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K2 ["name"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["children"]
       19 SETTABLEKS                       R0 R2 K4 ["id"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R4 R2 K3 ["children"]
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R0
       26 MOVE                             R7 R1
       27 GETUPVAL                         R8 3
       28 CALL                             R3 5 0
       29 GETUPVAL                         R4 4
       30 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       32 MOVE                             R5 R2
       33 GETIMPORT                        R3 K10 [table.insert]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 RETURN                           R4 1

PROTO_17:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["ShowLayerID"]
        8 JUMPIFNOT                        R4 ; [+20]
        9 DUPTABLE                         R6 K4 [{"name", "children", "id"}]
       10 GETTABLEKS                       R7 R0 K3 ["id"]
       12 SETTABLEKS                       R7 R6 K1 ["name"]
       14 NEWTABLE                         R7 0 0
       16 SETTABLEKS                       R7 R6 K2 ["children"]
       18 GETTABLEKS                       R8 R0 K3 ["id"]
       20 ORK                              R7 R8 K5 ["uuid"]
       21 SETTABLEKS                       R7 R6 K3 ["id"]
       23 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K8 [table.insert]
       28 CALL                             R4 2 0
       29 GETTABLEKS                       R5 R0 K3 ["id"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 MOVE                             R5 R4
       38 LOADK                            R6 K9 ["layerDetails"]
       39 DUPTABLE                         R7 K13 [{"name", "lod", "class", "children", "weight"}]
       40 GETTABLEKS                       R9 R0 K1 ["name"]
       42 ORK                              R8 R9 K14 [""]
       43 SETTABLEKS                       R8 R7 K1 ["name"]
       45 GETTABLEKS                       R8 R0 K10 ["lod"]
       47 SETTABLEKS                       R8 R7 K10 ["lod"]
       49 GETTABLEKS                       R8 R0 K15 ["className"]
       51 SETTABLEKS                       R8 R7 K11 ["class"]
       53 GETTABLEKS                       R9 R0 K2 ["children"]
       55 JUMPIFNOT                        R9 ; [+4]
       56 GETTABLEKS                       R9 R0 K2 ["children"]
       58 LENGTH                           R8 R9
       59 JUMPIF                           R8 ; [+1]
       60 LOADN                            R8 0
       61 SETTABLEKS                       R8 R7 K2 ["children"]
       63 GETTABLEKS                       R8 R0 K12 ["weight"]
       65 SETTABLEKS                       R8 R7 K12 ["weight"]
       67 CALL                             R5 2 0
       68 MOVE                             R5 R4
       69 LOADK                            R6 K16 ["linkData"]
       70 GETTABLEKS                       R7 R0 K16 ["linkData"]
       72 CALL                             R5 2 0
       73 MOVE                             R5 R4
       74 LOADK                            R6 K17 ["props"]
       75 GETTABLEKS                       R7 R0 K17 ["props"]
       77 CALL                             R5 2 0
       78 MOVE                             R5 R4
       79 LOADK                            R6 K18 ["state"]
       80 GETTABLEKS                       R7 R0 K18 ["state"]
       82 CALL                             R5 2 0
       83 MOVE                             R5 R4
       84 LOADK                            R6 K19 ["watches"]
       85 GETTABLEKS                       R7 R0 K19 ["watches"]
       87 CALL                             R5 2 0
       88 RETURN                           R3 1

PROTO_18:
        0 DUPTABLE                         R2 K1 [{"LayerData"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K0 ["LayerData"]
        4 GETTABLEKS                       R5 R0 K2 ["Overrides"]
        6 GETTABLEKS                       R6 R0 K3 ["Localization"]
        8 CALL                             R3 3 1
        9 JUMPIF                           R3 ; [+3]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["None"]
       13 SETTABLEKS                       R3 R2 K0 ["LayerData"]
       15 RETURN                           R2 1

PROTO_19:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["RawMode"]
        6 JUMPIFNOT                        R3 ; [+86]
        7 LOADNIL                          R3
        8 GETIMPORT                        R4 K4 [require]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K5 ["Src"]
       13 GETTABLEKS                       R5 R5 K6 ["Util"]
       15 GETTABLEKS                       R5 R5 K7 ["Debug"]
       17 GETTABLEKS                       R5 R5 K8 ["dumpTable"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R2 K9 ["LayerData"]
       22 JUMPIFNOT                        R5 ; [+32]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R6 R2 K9 ["LayerData"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K10 ["ShowRawDataChildren"]
       30 JUMPIF                           R6 ; [+10]
       31 GETTABLEKS                       R7 R5 K11 ["children"]
       33 JUMPIFNOT                        R7 ; [+4]
       34 GETTABLEKS                       R7 R5 K11 ["children"]
       36 LENGTH                           R6 R7
       37 JUMP                             ; [+1]
       38 LOADN                            R6 0
       39 SETTABLEKS                       R6 R5 K11 ["children"]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K12 ["ShowLayerID"]
       44 JUMPIF                           R6 ; [+3]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K13 ["id"]
       48 MOVE                             R6 R4
       49 MOVE                             R7 R5
       50 LOADNIL                          R8
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          REF R3
       53 CALL                             R6 3 0
       54 JUMP                             ; [+1]
       55 LOADK                            R3 K14 ["{}"]
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K15 ["createElement"]
       59 GETUPVAL                         R6 4
       60 NEWTABLE                         R7 8 0
       62 GETIMPORT                        R8 K18 [UDim2.fromScale]
       64 LOADN                            R9 1
       65 LOADN                            R10 1
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K19 ["Size"]
       69 GETTABLEKS                       R8 R2 K20 ["LayoutOrder"]
       71 SETTABLEKS                       R8 R7 K20 ["LayoutOrder"]
       73 LOADB                            R8 1
       74 SETTABLEKS                       R8 R7 K21 ["MultiLine"]
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K22 ["Disabled"]
       79 SETTABLEKS                       R3 R7 K23 ["Text"]
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R8 R8 K24 ["Tag"]
       84 GETUPVAL                         R10 3
       85 GETTABLEKS                       R10 R10 K24 ["Tag"]
       87 GETTABLE                         R9 R2 R10
       88 SETTABLE                         R9 R7 R8
       89 CALL                             R5 2 -1
       90 CLOSEUPVALS                      R3
       91 RETURN                           R5 -1
       92 CLOSEUPVALS                      R3
       93 GETTABLEKS                       R3 R1 K9 ["LayerData"]
       95 JUMPIFNOT                        R3 ; [+79]
       96 GETUPVAL                         R3 3
       97 GETTABLEKS                       R3 R3 K15 ["createElement"]
       99 GETUPVAL                         R4 5
      100 NEWTABLE                         R5 32 0
      102 GETTABLEKS                       R6 R2 K20 ["LayoutOrder"]
      104 SETTABLEKS                       R6 R5 K20 ["LayoutOrder"]
      106 NEWTABLE                         R6 0 2
      108 DUPTABLE                         R7 K28 [{["Name"] = "Name", ["Key"] = "name"}]
      109 DUPTABLE                         R8 K31 [{["Name"] = "Value", ["Key"] = "value"}]
      110 SETLIST                          R6 R7 2 [1]
      112 SETTABLEKS                       R6 R5 K32 ["Columns"]
      114 GETTABLEKS                       R6 R2 K33 ["ExpandedSections"]
      116 SETTABLEKS                       R6 R5 K34 ["Expansion"]
      118 NEWTABLE                         R6 0 0
      120 SETTABLEKS                       R6 R5 K35 ["Selection"]
      122 GETTABLEKS                       R6 R1 K9 ["LayerData"]
      124 SETTABLEKS                       R6 R5 K36 ["RootItems"]
      126 LOADB                            R6 0
      127 SETTABLEKS                       R6 R5 K37 ["ShowHeader"]
      129 GETTABLEKS                       R6 R0 K38 ["getChildren"]
      131 SETTABLEKS                       R6 R5 K39 ["GetChildren"]
      133 GETTABLEKS                       R6 R0 K40 ["getItemId"]
      135 SETTABLEKS                       R6 R5 K41 ["GetItemId"]
      137 LOADB                            R6 1
      138 SETTABLEKS                       R6 R5 K42 ["FullSpan"]
      140 LOADB                            R6 1
      141 SETTABLEKS                       R6 R5 K43 ["FullSpanEmphasis"]
      143 LOADB                            R6 1
      144 SETTABLEKS                       R6 R5 K44 ["Scroll"]
      146 GETUPVAL                         R6 6
      147 SETTABLEKS                       R6 R5 K45 ["CellComponent"]
      149 GETTABLEKS                       R6 R0 K46 ["onToggle"]
      151 SETTABLEKS                       R6 R5 K47 ["OnExpansionChange"]
      153 GETTABLEKS                       R6 R0 K48 ["onDoubleClick"]
      155 SETTABLEKS                       R6 R5 K49 ["OnDoubleClick"]
      157 GETTABLEKS                       R6 R0 K50 ["onCellEdited"]
      159 SETTABLEKS                       R6 R5 K51 ["OnCellEdited"]
      161 GETTABLEKS                       R6 R0 K52 ["onCellAction"]
      163 SETTABLEKS                       R6 R5 K53 ["OnCellAction"]
      165 GETUPVAL                         R6 3
      166 GETTABLEKS                       R6 R6 K24 ["Tag"]
      168 GETUPVAL                         R8 3
      169 GETTABLEKS                       R8 R8 K24 ["Tag"]
      171 GETTABLE                         R7 R2 R8
      172 SETTABLE                         R7 R5 R6
      173 CALL                             R3 2 -1
      174 RETURN                           R3 -1
      175 GETUPVAL                         R3 3
      176 GETTABLEKS                       R3 R3 K15 ["createElement"]
      178 GETUPVAL                         R4 7
      179 NEWTABLE                         R5 2 0
      181 GETTABLEKS                       R6 R2 K20 ["LayoutOrder"]
      183 SETTABLEKS                       R6 R5 K20 ["LayoutOrder"]
      185 GETUPVAL                         R6 3
      186 GETTABLEKS                       R6 R6 K24 ["Tag"]
      188 GETUPVAL                         R8 3
      189 GETTABLEKS                       R8 R8 K24 ["Tag"]
      191 GETTABLE                         R7 R2 R8
      192 SETTABLE                         R7 R5 R6
      193 CALL                             R3 2 -1
      194 RETURN                           R3 -1

PROTO_21:
        0 DUPTABLE                         R2 K2 [{"ExpandedSections", "HistoryField"}]
        1 GETTABLEKS                       R3 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["ExpandedSections"]
        5 SETTABLEKS                       R3 R2 K0 ["ExpandedSections"]
        7 GETTABLEKS                       R3 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R3 K1 ["HistoryField"]
       11 SETTABLEKS                       R3 R2 K1 ["HistoryField"]
       13 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K3 [{"SetExpandedSections", "SetOverride", "SetHistoryField"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetExpandedSections"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetOverride"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetHistoryField"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["copy"]
       37 GETTABLEKS                       R6 R1 K12 ["join"]
       39 GETTABLEKS                       R7 R1 K13 ["keys"]
       41 GETTABLEKS                       R8 R2 K14 ["ContextServices"]
       43 GETTABLEKS                       R9 R8 K15 ["withContext"]
       45 GETTABLEKS                       R10 R8 K16 ["Analytics"]
       47 GETTABLEKS                       R11 R8 K17 ["Localization"]
       49 GETTABLEKS                       R12 R2 K18 ["UI"]
       51 GETTABLEKS                       R13 R12 K19 ["Pane"]
       53 GETTABLEKS                       R14 R12 K20 ["TextInput"]
       55 GETTABLEKS                       R15 R12 K21 ["TreeTable"]
       57 GETTABLEKS                       R16 R0 K22 ["Src"]
       59 GETTABLEKS                       R16 R16 K23 ["Actions"]
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R18 R16 K24 ["SetExpandedSections"]
       65 CALL                             R17 1 1
       66 GETIMPORT                        R18 K5 [require]
       68 GETTABLEKS                       R19 R16 K25 ["SetHistoryField"]
       70 CALL                             R18 1 1
       71 GETTABLEKS                       R19 R0 K22 ["Src"]
       73 GETTABLEKS                       R19 R19 K26 ["Components"]
       75 GETIMPORT                        R20 K5 [require]
       77 GETTABLEKS                       R21 R19 K27 ["LayerViewCell"]
       79 CALL                             R20 1 1
       80 GETTABLEKS                       R21 R0 K22 ["Src"]
       82 GETTABLEKS                       R21 R21 K28 ["Thunks"]
       84 GETIMPORT                        R22 K5 [require]
       86 GETTABLEKS                       R23 R21 K29 ["SetOverride"]
       88 CALL                             R22 1 1
       89 GETTABLEKS                       R23 R0 K22 ["Src"]
       91 GETTABLEKS                       R23 R23 K30 ["Util"]
       93 GETIMPORT                        R24 K5 [require]
       95 GETTABLEKS                       R25 R23 K31 ["Constants"]
       97 CALL                             R24 1 1
       98 GETIMPORT                        R25 K5 [require]
      100 GETTABLEKS                       R26 R23 K32 ["debugFlags"]
      102 CALL                             R25 1 1
      103 GETIMPORT                        R26 K5 [require]
      105 GETTABLEKS                       R27 R0 K22 ["Src"]
      107 GETTABLEKS                       R27 R27 K33 ["Types"]
      109 CALL                             R26 1 1
      110 DUPCLOSURE                       R27 K34 [PROTO_0]
      111 DUPTABLE                         R28 K39 [{"layerDetails", "props", "state", "watches"}]
      112 DUPTABLE                         R29 K41 [{"Formatters"}]
      113 DUPTABLE                         R30 K43 [{"weight"}]
      114 SETTABLEKS                       R27 R30 K42 ["weight"]
      116 SETTABLEKS                       R30 R29 K40 ["Formatters"]
      118 SETTABLEKS                       R29 R28 K35 ["layerDetails"]
      120 DUPTABLE                         R29 K48 [{["Editable"] = True, ["Overrides"] = True, ["History"] = True}]
      121 SETTABLEKS                       R29 R28 K36 ["props"]
      123 DUPTABLE                         R29 K49 [{["History"] = True}]
      124 SETTABLEKS                       R29 R28 K37 ["state"]
      126 DUPTABLE                         R29 K49 [{["History"] = True}]
      127 SETTABLEKS                       R29 R28 K38 ["watches"]
      129 DUPTABLE                         R29 K55 [{"number", "string", "boolean", "Vector2", "Vector3"}]
      130 DUPTABLE                         R30 K58 [{["Type"] = "Number", ["History"] = True}]
      131 SETTABLEKS                       R30 R29 K50 ["number"]
      133 DUPTABLE                         R30 K60 [{["Type"] = "Text"}]
      134 SETTABLEKS                       R30 R29 K51 ["string"]
      136 DUPTABLE                         R30 K62 [{["Type"] = "Checkbox"}]
      137 SETTABLEKS                       R30 R29 K52 ["boolean"]
      139 DUPTABLE                         R30 K66 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"], ["History"] = True}]
      140 NEWTABLE                         R31 0 2
      142 LOADK                            R32 K67 ["X"]
      143 LOADK                            R33 K68 ["Y"]
      144 SETLIST                          R31 R32 2 [1]
      146 SETTABLEKS                       R31 R30 K26 ["Components"]
      148 DUPCLOSURE                       R31 K69 [PROTO_1]
      149 SETTABLEKS                       R31 R30 K64 ["GetValue"]
      151 DUPCLOSURE                       R31 K70 [PROTO_2]
      152 SETTABLEKS                       R31 R30 K65 ["GetComponents"]
      154 SETTABLEKS                       R30 R29 K53 ["Vector2"]
      156 DUPTABLE                         R30 K66 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"], ["History"] = True}]
      157 NEWTABLE                         R31 0 3
      159 LOADK                            R32 K67 ["X"]
      160 LOADK                            R33 K68 ["Y"]
      161 LOADK                            R34 K71 ["Z"]
      162 SETLIST                          R31 R32 3 [1]
      164 SETTABLEKS                       R31 R30 K26 ["Components"]
      166 DUPCLOSURE                       R31 K72 [PROTO_3]
      167 SETTABLEKS                       R31 R30 K64 ["GetValue"]
      169 DUPCLOSURE                       R31 K73 [PROTO_4]
      170 SETTABLEKS                       R31 R30 K65 ["GetComponents"]
      172 SETTABLEKS                       R30 R29 K54 ["Vector3"]
      174 GETTABLEKS                       R30 R3 K74 ["PureComponent"]
      176 LOADK                            R32 K75 ["LayerView"]
      177 NAMECALL                         R30 R30 K76 ["extend"]
      179 CALL                             R30 2 1
      180 DUPCLOSURE                       R31 K77 [PROTO_11]
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R24
      183 SETTABLEKS                       R31 R30 K78 ["init"]
      185 DUPCLOSURE                       R31 K79 [PROTO_12]
      186 DUPCLOSURE                       R32 K80 [PROTO_14]
      187 CAPTURE                          VAL R28
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R32
      192 CAPTURE                          VAL R29
      193 DUPCLOSURE                       R33 K81 [PROTO_16]
      194 CAPTURE                          VAL R32
      195 DUPCLOSURE                       R34 K82 [PROTO_17]
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R32
      198 DUPCLOSURE                       R35 K83 [PROTO_18]
      199 CAPTURE                          VAL R34
      200 CAPTURE                          VAL R3
      201 SETTABLEKS                       R35 R30 K84 ["getDerivedStateFromProps"]
      203 DUPCLOSURE                       R35 K85 [PROTO_20]
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R13
      212 SETTABLEKS                       R35 R30 K86 ["render"]
      214 MOVE                             R35 R9
      215 DUPTABLE                         R36 K87 [{"Analytics", "Localization"}]
      216 SETTABLEKS                       R10 R36 K16 ["Analytics"]
      218 SETTABLEKS                       R11 R36 K17 ["Localization"]
      220 CALL                             R35 1 1
      221 MOVE                             R36 R30
      222 CALL                             R35 1 1
      223 MOVE                             R30 R35
      224 DUPCLOSURE                       R35 K88 [PROTO_21]
      225 DUPCLOSURE                       R36 K89 [PROTO_25]
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R18
      229 GETTABLEKS                       R37 R4 K90 ["connect"]
      231 MOVE                             R38 R35
      232 MOVE                             R39 R36
      233 CALL                             R37 2 1
      234 MOVE                             R38 R30
      235 CALL                             R37 1 1
      236 MOVE                             R30 R37
      237 RETURN                           R30 1
