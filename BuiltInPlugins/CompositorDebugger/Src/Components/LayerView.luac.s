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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SetExpandedSections"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K2 ["ExpandedSections"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["hasChildren"]
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["getItemId"]
        6 GETTABLEKS                       R2 R0 K2 ["item"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["onToggle"]
       12 NEWTABLE                         R3 1 0
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K4 ["props"]
       17 GETTABLEKS                       R6 R7 K5 ["ExpandedSections"]
       19 GETTABLE                         R5 R6 R1
       20 JUMPIFEQKB                       R5 FALSE ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 SETTABLE                         R4 R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["SetOverride"]
        5 GETTABLEKS                       R3 R1 K2 ["id"]
        7 GETTABLEKS                       R4 R1 K3 ["field"]
        9 MOVE                             R5 R0
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["LAYERVIEW_ACTIONS"]
        3 GETTABLEKS                       R2 R3 K1 ["Clear"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+13]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["SetOverride"]
       12 GETTABLEKS                       R3 R1 K4 ["id"]
       14 GETTABLEKS                       R4 R1 K5 ["field"]
       16 LOADNIL                          R5
       17 CALL                             R2 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["LAYERVIEW_ACTIONS"]
       22 GETTABLEKS                       R2 R3 K6 ["History"]
       24 JUMPIFNOTEQ                      R0 R2 ; [+13]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K2 ["props"]
       29 GETTABLEKS                       R2 R3 K7 ["SetHistoryField"]
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
       24 DUPTABLE                         R3 K9 [{"LayerData"}]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K8 ["LayerData"]
       28 NAMECALL                         R1 R0 K10 ["setState"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

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
       50 JUMPIFNOT                        R8 ; [+36]
       51 JUMPIFNOT                        R4 ; [+35]
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
       64 JUMPIFEQKNIL                     R19 ; [+22]
       66 MOVE                             R16 R19
       67 DUPTABLE                         R22 K13 [{"Id", "Icon", "Tooltip"}]
       68 GETUPVAL                         R25 3
       69 GETTABLEKS                       R24 R25 K14 ["LAYERVIEW_ACTIONS"]
       71 GETTABLEKS                       R23 R24 K15 ["Clear"]
       73 SETTABLEKS                       R23 R22 K10 ["Id"]
       75 LOADK                            R23 K16 ["rbxasset://textures/CompositorDebugger/clear.png"]
       76 SETTABLEKS                       R23 R22 K11 ["Icon"]
       78 LOADK                            R23 K17 ["ClearOverride"]
       79 SETTABLEKS                       R23 R22 K12 ["Tooltip"]
       81 FASTCALL2                        TABLE_INSERT R17 R22 ; [+4]
       83 MOVE                             R21 R17
       84 GETIMPORT                        R20 K9 [table.insert]
       86 CALL                             R20 2 0
       87 DUPTABLE                         R19 K21 [{"name", "id", "path"}]
       88 SETTABLEKS                       R15 R19 K18 ["name"]
       90 MOVE                             R21 R2
       91 LOADK                            R22 K22 ["|"]
       92 GETIMPORT                        R23 K24 [table.concat]
       94 MOVE                             R24 R18
       95 LOADK                            R25 K22 ["|"]
       96 CALL                             R23 2 1
       97 CONCAT                           R20 R21 R23
       98 SETTABLEKS                       R20 R19 K19 ["id"]
      100 DUPTABLE                         R20 K27 [{"id", "section", "field"}]
      101 SETTABLEKS                       R1 R20 K19 ["id"]
      103 SETTABLEKS                       R2 R20 K25 ["section"]
      105 SETTABLEKS                       R18 R20 K26 ["field"]
      107 SETTABLEKS                       R20 R19 K20 ["path"]
      109 FASTCALL1                        TYPEOF R16 ; [+3]
      110 MOVE                             R21 R16
      111 GETIMPORT                        R20 K29 [typeof]
      113 CALL                             R20 1 1
      114 JUMPIFNOTEQKS                    R20 K5 ["table"] ; [+23]
      116 DUPTABLE                         R21 K32 [{"Value", "Actions"}]
      117 LOADK                            R22 K33 [""]
      118 SETTABLEKS                       R22 R21 K30 ["Value"]
      120 SETTABLEKS                       R17 R21 K31 ["Actions"]
      122 SETTABLEKS                       R21 R19 K34 ["value"]
      124 NEWTABLE                         R21 0 0
      126 SETTABLEKS                       R21 R19 K35 ["children"]
      128 GETUPVAL                         R21 4
      129 GETTABLEKS                       R22 R19 K35 ["children"]
      131 MOVE                             R23 R1
      132 MOVE                             R24 R2
      133 MOVE                             R25 R16
      134 MOVE                             R26 R4
      135 MOVE                             R27 R18
      136 CALL                             R21 6 0
      137 JUMP                             ; [+80]
      138 GETUPVAL                         R22 5
      139 GETTABLE                         R21 R22 R20
      140 JUMPIF                           R21 ; [+7]
      141 LOADK                            R22 K36 ["["]
      142 MOVE                             R23 R20
      143 LOADK                            R24 K37 ["]"]
      144 CONCAT                           R21 R22 R24
      145 SETTABLEKS                       R21 R19 K34 ["value"]
      147 JUMP                             ; [+70]
      148 JUMPIFNOT                        R9 ; [+26]
      149 GETUPVAL                         R23 5
      150 GETTABLE                         R22 R23 R20
      151 GETTABLEKS                       R21 R22 K4 ["History"]
      153 JUMPIFNOT                        R21 ; [+21]
      154 DUPTABLE                         R23 K13 [{"Id", "Icon", "Tooltip"}]
      155 GETUPVAL                         R26 3
      156 GETTABLEKS                       R25 R26 K14 ["LAYERVIEW_ACTIONS"]
      158 GETTABLEKS                       R24 R25 K4 ["History"]
      160 SETTABLEKS                       R24 R23 K10 ["Id"]
      162 LOADK                            R24 K38 ["rbxasset://textures/CompositorDebugger/history.png"]
      163 SETTABLEKS                       R24 R23 K11 ["Icon"]
      165 LOADK                            R24 K39 ["ViewHistory"]
      166 SETTABLEKS                       R24 R23 K12 ["Tooltip"]
      168 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      170 MOVE                             R22 R17
      171 GETIMPORT                        R21 K9 [table.insert]
      173 CALL                             R21 2 0
      174 JUMP                             ; [+14]
      175 DUPTABLE                         R23 K40 [{"Id"}]
      176 GETUPVAL                         R26 3
      177 GETTABLEKS                       R25 R26 K14 ["LAYERVIEW_ACTIONS"]
      179 GETTABLEKS                       R24 R25 K41 ["NoOp"]
      181 SETTABLEKS                       R24 R23 K10 ["Id"]
      183 FASTCALL2                        TABLE_INSERT R17 R23 ; [+4]
      185 MOVE                             R22 R17
      186 GETIMPORT                        R21 K9 [table.insert]
      188 CALL                             R21 2 0
      189 MOVE                             R21 R16
      190 JUMPIFNOT                        R6 ; [+13]
      191 GETTABLEKS                       R22 R6 K42 ["Formatters"]
      193 JUMPIFNOT                        R22 ; [+10]
      194 GETTABLEKS                       R23 R6 K42 ["Formatters"]
      196 GETTABLE                         R22 R23 R15
      197 JUMPIFNOT                        R22 ; [+6]
      198 GETTABLEKS                       R23 R6 K42 ["Formatters"]
      200 GETTABLE                         R22 R23 R15
      201 MOVE                             R23 R16
      202 CALL                             R22 1 1
      203 MOVE                             R21 R22
      204 DUPTABLE                         R22 K45 [{"Value", "Disabled", "Schema", "Actions"}]
      205 SETTABLEKS                       R21 R22 K30 ["Value"]
      207 NOT                              R23 R7
      208 SETTABLEKS                       R23 R22 K43 ["Disabled"]
      210 GETUPVAL                         R24 5
      211 GETTABLE                         R23 R24 R20
      212 SETTABLEKS                       R23 R22 K44 ["Schema"]
      214 SETTABLEKS                       R17 R22 K31 ["Actions"]
      216 SETTABLEKS                       R22 R19 K34 ["value"]
      218 FASTCALL2                        TABLE_INSERT R0 R19 ; [+5]
      220 MOVE                             R22 R0
      221 MOVE                             R23 R19
      222 GETIMPORT                        R21 K9 [table.insert]
      224 CALL                             R21 2 0
      225 FORGLOOP                         R11 2 ; [-189]
      227 GETIMPORT                        R11 K7 [table.sort]
      229 MOVE                             R12 R0
      230 DUPCLOSURE                       R13 K46 [PROTO_13]
      231 CALL                             R11 2 0
      232 RETURN                           R0 0

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
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["ShowLayerID"]
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
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["None"]
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
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K5 ["Src"]
       13 GETTABLEKS                       R7 R8 K6 ["Util"]
       15 GETTABLEKS                       R6 R7 K7 ["Debug"]
       17 GETTABLEKS                       R5 R6 K8 ["dumpTable"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R2 K9 ["LayerData"]
       22 JUMPIFNOT                        R5 ; [+32]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R6 R2 K9 ["LayerData"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K10 ["ShowRawDataChildren"]
       30 JUMPIF                           R6 ; [+10]
       31 GETTABLEKS                       R7 R5 K11 ["children"]
       33 JUMPIFNOT                        R7 ; [+4]
       34 GETTABLEKS                       R7 R5 K11 ["children"]
       36 LENGTH                           R6 R7
       37 JUMP                             ; [+1]
       38 LOADN                            R6 0
       39 SETTABLEKS                       R6 R5 K11 ["children"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K12 ["ShowLayerID"]
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
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R5 R6 K15 ["createElement"]
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
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R8 R9 K24 ["Tag"]
       84 GETUPVAL                         R11 3
       85 GETTABLEKS                       R10 R11 K24 ["Tag"]
       87 GETTABLE                         R9 R2 R10
       88 SETTABLE                         R9 R7 R8
       89 CALL                             R5 2 -1
       90 CLOSEUPVALS                      R3
       91 RETURN                           R5 -1
       92 CLOSEUPVALS                      R3
       93 GETTABLEKS                       R3 R1 K9 ["LayerData"]
       95 JUMPIFNOT                        R3 ; [+91]
       96 GETUPVAL                         R4 3
       97 GETTABLEKS                       R3 R4 K15 ["createElement"]
       99 GETUPVAL                         R4 5
      100 NEWTABLE                         R5 32 0
      102 GETTABLEKS                       R6 R2 K20 ["LayoutOrder"]
      104 SETTABLEKS                       R6 R5 K20 ["LayoutOrder"]
      106 NEWTABLE                         R6 0 2
      108 DUPTABLE                         R7 K27 [{"Name", "Key"}]
      109 LOADK                            R8 K25 ["Name"]
      110 SETTABLEKS                       R8 R7 K25 ["Name"]
      112 LOADK                            R8 K28 ["name"]
      113 SETTABLEKS                       R8 R7 K26 ["Key"]
      115 DUPTABLE                         R8 K27 [{"Name", "Key"}]
      116 LOADK                            R9 K29 ["Value"]
      117 SETTABLEKS                       R9 R8 K25 ["Name"]
      119 LOADK                            R9 K30 ["value"]
      120 SETTABLEKS                       R9 R8 K26 ["Key"]
      122 SETLIST                          R6 R7 2 [1]
      124 SETTABLEKS                       R6 R5 K31 ["Columns"]
      126 GETTABLEKS                       R6 R2 K32 ["ExpandedSections"]
      128 SETTABLEKS                       R6 R5 K33 ["Expansion"]
      130 NEWTABLE                         R6 0 0
      132 SETTABLEKS                       R6 R5 K34 ["Selection"]
      134 GETTABLEKS                       R6 R1 K9 ["LayerData"]
      136 SETTABLEKS                       R6 R5 K35 ["RootItems"]
      138 LOADB                            R6 0
      139 SETTABLEKS                       R6 R5 K36 ["ShowHeader"]
      141 GETTABLEKS                       R6 R0 K37 ["getChildren"]
      143 SETTABLEKS                       R6 R5 K38 ["GetChildren"]
      145 GETTABLEKS                       R6 R0 K39 ["getItemId"]
      147 SETTABLEKS                       R6 R5 K40 ["GetItemId"]
      149 LOADB                            R6 1
      150 SETTABLEKS                       R6 R5 K41 ["FullSpan"]
      152 LOADB                            R6 1
      153 SETTABLEKS                       R6 R5 K42 ["FullSpanEmphasis"]
      155 LOADB                            R6 1
      156 SETTABLEKS                       R6 R5 K43 ["Scroll"]
      158 GETUPVAL                         R6 6
      159 SETTABLEKS                       R6 R5 K44 ["CellComponent"]
      161 GETTABLEKS                       R6 R0 K45 ["onToggle"]
      163 SETTABLEKS                       R6 R5 K46 ["OnExpansionChange"]
      165 GETTABLEKS                       R6 R0 K47 ["onDoubleClick"]
      167 SETTABLEKS                       R6 R5 K48 ["OnDoubleClick"]
      169 GETTABLEKS                       R6 R0 K49 ["onCellEdited"]
      171 SETTABLEKS                       R6 R5 K50 ["OnCellEdited"]
      173 GETTABLEKS                       R6 R0 K51 ["onCellAction"]
      175 SETTABLEKS                       R6 R5 K52 ["OnCellAction"]
      177 GETUPVAL                         R7 3
      178 GETTABLEKS                       R6 R7 K24 ["Tag"]
      180 GETUPVAL                         R9 3
      181 GETTABLEKS                       R8 R9 K24 ["Tag"]
      183 GETTABLE                         R7 R2 R8
      184 SETTABLE                         R7 R5 R6
      185 CALL                             R3 2 -1
      186 RETURN                           R3 -1
      187 GETUPVAL                         R4 3
      188 GETTABLEKS                       R3 R4 K15 ["createElement"]
      190 GETUPVAL                         R4 7
      191 NEWTABLE                         R5 2 0
      193 GETTABLEKS                       R6 R2 K20 ["LayoutOrder"]
      195 SETTABLEKS                       R6 R5 K20 ["LayoutOrder"]
      197 GETUPVAL                         R7 3
      198 GETTABLEKS                       R6 R7 K24 ["Tag"]
      200 GETUPVAL                         R9 3
      201 GETTABLEKS                       R8 R9 K24 ["Tag"]
      203 GETTABLE                         R7 R2 R8
      204 SETTABLE                         R7 R5 R6
      205 CALL                             R3 2 -1
      206 RETURN                           R3 -1

PROTO_21:
        0 DUPTABLE                         R2 K2 [{"ExpandedSections", "HistoryField"}]
        1 GETTABLEKS                       R4 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["ExpandedSections"]
        5 SETTABLEKS                       R3 R2 K0 ["ExpandedSections"]
        7 GETTABLEKS                       R4 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["HistoryField"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["copy"]
       44 GETTABLEKS                       R7 R2 K13 ["join"]
       46 GETTABLEKS                       R8 R2 K14 ["keys"]
       48 GETTABLEKS                       R9 R3 K15 ["ContextServices"]
       50 GETTABLEKS                       R10 R9 K16 ["withContext"]
       52 GETTABLEKS                       R11 R9 K17 ["Analytics"]
       54 GETTABLEKS                       R12 R9 K18 ["Localization"]
       56 GETTABLEKS                       R13 R3 K19 ["UI"]
       58 GETTABLEKS                       R14 R13 K20 ["Pane"]
       60 GETTABLEKS                       R15 R13 K21 ["TextInput"]
       62 GETTABLEKS                       R16 R13 K22 ["TreeTable"]
       64 GETTABLEKS                       R18 R0 K23 ["Src"]
       66 GETTABLEKS                       R17 R18 K24 ["Actions"]
       68 GETIMPORT                        R18 K5 [require]
       70 GETTABLEKS                       R19 R17 K25 ["SetExpandedSections"]
       72 CALL                             R18 1 1
       73 GETIMPORT                        R19 K5 [require]
       75 GETTABLEKS                       R20 R17 K26 ["SetHistoryField"]
       77 CALL                             R19 1 1
       78 GETTABLEKS                       R21 R0 K23 ["Src"]
       80 GETTABLEKS                       R20 R21 K27 ["Components"]
       82 GETIMPORT                        R21 K5 [require]
       84 GETTABLEKS                       R22 R20 K28 ["LayerViewCell"]
       86 CALL                             R21 1 1
       87 GETTABLEKS                       R23 R0 K23 ["Src"]
       89 GETTABLEKS                       R22 R23 K29 ["Thunks"]
       91 GETIMPORT                        R23 K5 [require]
       93 GETTABLEKS                       R24 R22 K30 ["SetOverride"]
       95 CALL                             R23 1 1
       96 GETTABLEKS                       R25 R0 K23 ["Src"]
       98 GETTABLEKS                       R24 R25 K31 ["Util"]
      100 GETIMPORT                        R25 K5 [require]
      102 GETTABLEKS                       R26 R24 K32 ["debugFlags"]
      104 CALL                             R25 1 1
      105 GETIMPORT                        R26 K5 [require]
      107 GETTABLEKS                       R28 R0 K23 ["Src"]
      109 GETTABLEKS                       R27 R28 K33 ["Types"]
      111 CALL                             R26 1 1
      112 GETTABLEKS                       R27 R1 K34 ["Constants"]
      114 DUPCLOSURE                       R28 K35 [PROTO_0]
      115 DUPTABLE                         R29 K40 [{"layerDetails", "props", "state", "watches"}]
      116 DUPTABLE                         R30 K42 [{"Formatters"}]
      117 DUPTABLE                         R31 K44 [{"weight"}]
      118 SETTABLEKS                       R28 R31 K43 ["weight"]
      120 SETTABLEKS                       R31 R30 K41 ["Formatters"]
      122 SETTABLEKS                       R30 R29 K36 ["layerDetails"]
      124 DUPTABLE                         R30 K48 [{"Editable", "Overrides", "History"}]
      125 LOADB                            R31 1
      126 SETTABLEKS                       R31 R30 K45 ["Editable"]
      128 LOADB                            R31 1
      129 SETTABLEKS                       R31 R30 K46 ["Overrides"]
      131 LOADB                            R31 1
      132 SETTABLEKS                       R31 R30 K47 ["History"]
      134 SETTABLEKS                       R30 R29 K37 ["props"]
      136 DUPTABLE                         R30 K49 [{"History"}]
      137 LOADB                            R31 1
      138 SETTABLEKS                       R31 R30 K47 ["History"]
      140 SETTABLEKS                       R30 R29 K38 ["state"]
      142 DUPTABLE                         R30 K49 [{"History"}]
      143 LOADB                            R31 1
      144 SETTABLEKS                       R31 R30 K47 ["History"]
      146 SETTABLEKS                       R30 R29 K39 ["watches"]
      148 DUPTABLE                         R30 K55 [{"number", "string", "boolean", "Vector2", "Vector3"}]
      149 DUPTABLE                         R31 K57 [{"Type", "History"}]
      150 LOADK                            R32 K58 ["Number"]
      151 SETTABLEKS                       R32 R31 K56 ["Type"]
      153 LOADB                            R32 1
      154 SETTABLEKS                       R32 R31 K47 ["History"]
      156 SETTABLEKS                       R31 R30 K50 ["number"]
      158 DUPTABLE                         R31 K59 [{"Type"}]
      159 LOADK                            R32 K60 ["Text"]
      160 SETTABLEKS                       R32 R31 K56 ["Type"]
      162 SETTABLEKS                       R31 R30 K51 ["string"]
      164 DUPTABLE                         R31 K59 [{"Type"}]
      165 LOADK                            R32 K61 ["Checkbox"]
      166 SETTABLEKS                       R32 R31 K56 ["Type"]
      168 SETTABLEKS                       R31 R30 K52 ["boolean"]
      170 DUPTABLE                         R31 K64 [{"Type", "Components", "GetValue", "GetComponents", "History"}]
      171 LOADK                            R32 K65 ["Vector"]
      172 SETTABLEKS                       R32 R31 K56 ["Type"]
      174 NEWTABLE                         R32 0 2
      176 LOADK                            R33 K66 ["X"]
      177 LOADK                            R34 K67 ["Y"]
      178 SETLIST                          R32 R33 2 [1]
      180 SETTABLEKS                       R32 R31 K27 ["Components"]
      182 DUPCLOSURE                       R32 K68 [PROTO_1]
      183 SETTABLEKS                       R32 R31 K62 ["GetValue"]
      185 DUPCLOSURE                       R32 K69 [PROTO_2]
      186 SETTABLEKS                       R32 R31 K63 ["GetComponents"]
      188 LOADB                            R32 1
      189 SETTABLEKS                       R32 R31 K47 ["History"]
      191 SETTABLEKS                       R31 R30 K53 ["Vector2"]
      193 DUPTABLE                         R31 K64 [{"Type", "Components", "GetValue", "GetComponents", "History"}]
      194 LOADK                            R32 K65 ["Vector"]
      195 SETTABLEKS                       R32 R31 K56 ["Type"]
      197 NEWTABLE                         R32 0 3
      199 LOADK                            R33 K66 ["X"]
      200 LOADK                            R34 K67 ["Y"]
      201 LOADK                            R35 K70 ["Z"]
      202 SETLIST                          R32 R33 3 [1]
      204 SETTABLEKS                       R32 R31 K27 ["Components"]
      206 DUPCLOSURE                       R32 K71 [PROTO_3]
      207 SETTABLEKS                       R32 R31 K62 ["GetValue"]
      209 DUPCLOSURE                       R32 K72 [PROTO_4]
      210 SETTABLEKS                       R32 R31 K63 ["GetComponents"]
      212 LOADB                            R32 1
      213 SETTABLEKS                       R32 R31 K47 ["History"]
      215 SETTABLEKS                       R31 R30 K54 ["Vector3"]
      217 GETTABLEKS                       R31 R4 K73 ["PureComponent"]
      219 LOADK                            R33 K74 ["LayerView"]
      220 NAMECALL                         R31 R31 K75 ["extend"]
      222 CALL                             R31 2 1
      223 DUPCLOSURE                       R32 K76 [PROTO_11]
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R27
      226 SETTABLEKS                       R32 R31 K77 ["init"]
      228 DUPCLOSURE                       R32 K78 [PROTO_12]
      229 DUPCLOSURE                       R33 K79 [PROTO_14]
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R27
      234 CAPTURE                          VAL R33
      235 CAPTURE                          VAL R30
      236 DUPCLOSURE                       R34 K80 [PROTO_16]
      237 CAPTURE                          VAL R33
      238 DUPCLOSURE                       R35 K81 [PROTO_17]
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R33
      241 DUPCLOSURE                       R36 K82 [PROTO_18]
      242 CAPTURE                          VAL R35
      243 CAPTURE                          VAL R4
      244 SETTABLEKS                       R36 R31 K83 ["getDerivedStateFromProps"]
      246 DUPCLOSURE                       R36 K84 [PROTO_20]
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R14
      255 SETTABLEKS                       R36 R31 K85 ["render"]
      257 MOVE                             R36 R10
      258 DUPTABLE                         R37 K86 [{"Analytics", "Localization"}]
      259 SETTABLEKS                       R11 R37 K17 ["Analytics"]
      261 SETTABLEKS                       R12 R37 K18 ["Localization"]
      263 CALL                             R36 1 1
      264 MOVE                             R37 R31
      265 CALL                             R36 1 1
      266 MOVE                             R31 R36
      267 DUPCLOSURE                       R36 K87 [PROTO_21]
      268 DUPCLOSURE                       R37 K88 [PROTO_25]
      269 CAPTURE                          VAL R18
      270 CAPTURE                          VAL R23
      271 CAPTURE                          VAL R19
      272 GETTABLEKS                       R38 R5 K89 ["connect"]
      274 MOVE                             R39 R36
      275 MOVE                             R40 R37
      276 CALL                             R38 2 1
      277 MOVE                             R39 R31
      278 CALL                             R38 1 1
      279 MOVE                             R31 R38
      280 RETURN                           R31 1
