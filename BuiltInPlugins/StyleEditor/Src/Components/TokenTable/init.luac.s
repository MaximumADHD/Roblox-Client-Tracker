PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetAttribute"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["getAttributeSchema"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["buildTree"]
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K3 ["ThemeSelected"]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K4 ["OnClick"]
       20 MOVE                             R7 R2
       21 CALL                             R3 4 1
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R4 R4 K5 ["createItemId"]
       25 GETUPVAL                         R5 0
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R0 K6 ["table"]
       29 GETTABLEKS                       R5 R5 K7 ["Expansion"]
       31 LOADB                            R6 1
       32 SETTABLE                         R6 R5 R4
       33 DUPTABLE                         R6 K8 [{"table"}]
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R8 R0 K6 ["table"]
       37 DUPTABLE                         R9 K10 [{"Expansion", "Items"}]
       38 SETTABLEKS                       R5 R9 K7 ["Expansion"]
       40 SETTABLEKS                       R3 R9 K9 ["Items"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K6 ["table"]
       45 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 NAMECALL                         R1 R1 K0 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["RootInstance"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["disconnect"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["connections"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R3 K5 [{"styleSheet"}]
       17 GETTABLEKS                       R4 R1 K6 ["AttributeChanged"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 NAMECALL                         R4 R4 K7 ["Connect"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K4 ["styleSheet"]
       32 SETTABLEKS                       R3 R2 K3 ["connections"]
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R1 K1 ["getChild"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K3 [{"Schema"}]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R1 K4 ["Name"]
       14 GETTABLEKS                       R4 R4 K2 ["Schema"]
       16 DUPTABLE                         R5 K7 [{["Editing"] = True}]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["Schema"]
       20 GETUPVAL                         R3 0
       21 MOVE                             R5 R0
       22 MOVE                             R6 R2
       23 GETUPVAL                         R7 1
       24 LOADN                            R8 1
       25 NAMECALL                         R3 R3 K8 ["updateCell"]
       27 CALL                             R3 5 -1
       28 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["selectRow"]
        5 GETTABLEKS                       R3 R1 K2 ["Id"]
        7 LOADB                            R4 0
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R3 R1 K3 ["Value"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["showRowContextMenu"]
       19 GETTABLEKS                       R4 R1 K5 ["Path"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDoubleClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["state"]
        7 GETTABLEKS                       R4 R4 K2 ["table"]
        9 GETTABLEKS                       R4 R4 K3 ["Items"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K4 ["getChild"]
       14 CALL                             R2 3 1
       15 GETTABLEKS                       R4 R2 K5 ["Value"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R3 R2 K5 ["Value"]
       20 GETTABLEKS                       R3 R3 K6 ["Schema"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R0
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K7 ["EmptySchema"]
       30 JUMPIFEQ                         R3 R5 ; [+6]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K8 ["SelectTokenSchema"]
       35 JUMPIFNOTEQ                      R3 R5 ; [+9]
       37 GETTABLEKS                       R5 R1 K9 ["dispatch"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R7 R1 K10 ["RootInstance"]
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R5 R2 K11 ["Name"]
       47 GETTABLEKS                       R5 R5 K12 ["FullSpan"]
       49 JUMPIFNOT                        R5 ; [+9]
       50 GETTABLEKS                       R5 R1 K9 ["dispatch"]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R7 R1 K10 ["RootInstance"]
       55 MOVE                             R8 R4
       56 CALL                             R6 2 -1
       57 CALL                             R5 -1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R5 R1 K9 ["dispatch"]
       61 GETUPVAL                         R6 5
       62 GETTABLEKS                       R7 R1 K10 ["RootInstance"]
       64 GETTABLEKS                       R8 R2 K11 ["Name"]
       66 GETTABLEKS                       R8 R8 K5 ["Value"]
       68 CALL                             R6 2 -1
       69 CALL                             R5 -1 0
       70 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Expansion"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETTABLEKS                       R3 R0 K1 ["Selection"]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOTEQKB                    R2 TRUE ; [+15]
       10 GETTABLEKS                       R4 R0 K0 ["Expansion"]
       12 GETUPVAL                         R5 1
       13 GETTABLE                         R3 R4 R5
       14 NOT                              R2 R3
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K0 ["Expansion"]
       18 NEWTABLE                         R5 1 0
       20 GETUPVAL                         R6 1
       21 SETTABLE                         R2 R5 R6
       22 CALL                             R3 2 1
       23 MOVE                             R1 R3
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R0
       26 DUPTABLE                         R4 K2 [{"Selection", "Expansion"}]
       27 NEWTABLE                         R5 1 0
       29 GETUPVAL                         R6 1
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R5 R6
       32 SETTABLEKS                       R5 R4 K1 ["Selection"]
       34 SETTABLEKS                       R1 R4 K0 ["Expansion"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOneSelectedItem"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["selectRow"]
        9 MOVE                             R3 R1
       10 LOADB                            R4 1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Menu"] ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["showRowContextMenu"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        6 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["GetDefaultValue"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K1 ["SetAttribute"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETIMPORT                        R2 K5 [Enum.FinishRecordingOperation.Commit]
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["Value"]
        5 GETTABLEKS                       R3 R3 K0 ["Value"]
        7 NAMECALL                         R0 R0 K1 ["SetAttribute"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Name"]
       14 GETTABLEKS                       R2 R2 K0 ["Value"]
       16 LOADNIL                          R3
       17 NAMECALL                         R0 R0 K1 ["SetAttribute"]
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETIMPORT                        R2 K5 [Enum.FinishRecordingOperation.Commit]
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetAttribute"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["dispatch"]
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 DUPTABLE                         R5 K7 [{"eventType", "path", "data"}]
       15 GETUPVAL                         R6 6
       16 GETTABLEKS                       R6 R6 K8 ["TokenEdited"]
       18 GETTABLEKS                       R6 R6 K9 ["rawValue"]
       20 CALL                             R6 0 1
       21 SETTABLEKS                       R6 R5 K4 ["eventType"]
       23 LOADK                            R7 K10 ["TokensTable/%*"]
       24 GETUPVAL                         R9 0
       25 LOADK                            R11 K11 ["StyleCategory"]
       26 NAMECALL                         R9 R9 K12 ["GetAttribute"]
       28 CALL                             R9 2 1
       29 NAMECALL                         R7 R7 K13 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 SETTABLEKS                       R6 R5 K5 ["path"]
       35 GETUPVAL                         R7 2
       36 FASTCALL1                        TYPEOF R7 ; [+2]
       37 GETIMPORT                        R6 K15 [typeof]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K6 ["data"]
       42 CALL                             R4 1 -1
       43 CALL                             R3 -1 -1
       44 CALL                             R2 -1 0
       45 JUMPIFNOT                        R0 ; [+3]
       46 GETIMPORT                        R2 K19 [Enum.FinishRecordingOperation.Commit]
       48 RETURN                           R2 1
       49 LOADNIL                          R2
       50 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R1 K1 ["getChild"]
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["RootInstance"]
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 DUPTABLE                         R3 K5 [{"Value"}]
       15 GETUPVAL                         R4 3
       16 SETTABLEKS                       R4 R3 K4 ["Value"]
       18 GETTABLEKS                       R5 R1 K4 ["Value"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R4 R1 K4 ["Value"]
       23 GETTABLEKS                       R4 R4 K6 ["Schema"]
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R4 R1 K7 ["Name"]
       28 GETTABLEKS                       R4 R4 K6 ["Schema"]
       30 GETUPVAL                         R5 4
       31 JUMPIFNOTEQKN                    R5 K8 [1] ; [+94]
       33 GETTABLEKS                       R5 R1 K7 ["Name"]
       35 GETTABLEKS                       R5 R5 K9 ["FullSpan"]
       37 JUMPIFNOT                        R5 ; [+24]
       38 GETUPVAL                         R5 5
       39 MOVE                             R6 R4
       40 DUPTABLE                         R7 K12 [{["Editing"] = False}]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R3 K6 ["Schema"]
       44 GETTABLEKS                       R6 R4 K13 ["Type"]
       46 JUMPIFNOTEQKS                    R6 K14 ["Theme"] ; [+3]
       48 MOVE                             R5 R2
       49 JUMP                             ; [+1]
       50 GETUPVAL                         R5 3
       51 SETTABLEKS                       R5 R3 K4 ["Value"]
       53 GETUPVAL                         R5 6
       54 DUPTABLE                         R6 K19 [{["Name"] = "StyleEditor.RenameStyleSheet", ["DisplayName"] = "Style Editor - Rename StyleSheet", ["DoChange"]}]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U3
       58 SETTABLEKS                       R7 R6 K18 ["DoChange"]
       60 CALL                             R5 1 0
       61 JUMP                             ; [+146]
       62 JUMPIFNOT                        R2 ; [+13]
       63 GETUPVAL                         R7 3
       64 NAMECALL                         R5 R2 K20 ["GetAttribute"]
       66 CALL                             R5 2 1
       67 JUMPIFEQKNIL                     R5 ; [+8]
       69 GETTABLEKS                       R5 R1 K7 ["Name"]
       71 GETTABLEKS                       R5 R5 K4 ["Value"]
       73 SETTABLEKS                       R5 R3 K4 ["Value"]
       75 JUMP                             ; [+132]
       76 GETTABLEKS                       R5 R1 K7 ["Name"]
       78 GETTABLEKS                       R5 R5 K4 ["Value"]
       80 JUMPIFNOTEQKS                    R5 K21 [""] ; [+35]
       82 GETUPVAL                         R5 7
       83 GETTABLEKS                       R5 R5 K22 ["TextSchema"]
       85 SETTABLEKS                       R5 R3 K6 ["Schema"]
       87 GETUPVAL                         R5 7
       88 GETTABLEKS                       R5 R5 K23 ["SelectTokenSchema"]
       90 JUMPIFNOTEQ                      R4 R5 ; [+10]
       92 GETTABLEKS                       R5 R1 K4 ["Value"]
       94 GETTABLEKS                       R5 R5 K4 ["Value"]
       96 JUMPIFNOT                        R5 ; [+4]
       97 GETTABLEKS                       R5 R1 K4 ["Value"]
       99 GETTABLEKS                       R4 R5 K4 ["Value"]
      101 GETUPVAL                         R5 7
      102 GETTABLEKS                       R5 R5 K23 ["SelectTokenSchema"]
      104 JUMPIFEQ                         R4 R5 ; [+103]
      106 GETUPVAL                         R5 6
      107 DUPTABLE                         R6 K26 [{["Name"] = "StyleEditor.AddToken", ["DisplayName"] = "Style Editor - Add Token", ["DoChange"]}]
      108 NEWCLOSURE                       R7 P1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          REF R4
      112 SETTABLEKS                       R7 R6 K18 ["DoChange"]
      114 CALL                             R5 1 0
      115 JUMP                             ; [+92]
      116 GETUPVAL                         R5 6
      117 DUPTABLE                         R6 K29 [{["Name"] = "StyleEditor.EditToken", ["DisplayName"] = "Style Editor - Edit Token", ["DoChange"]}]
      118 NEWCLOSURE                       R7 P2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R7 R6 K18 ["DoChange"]
      124 CALL                             R5 1 0
      125 JUMP                             ; [+82]
      126 GETUPVAL                         R5 4
      127 JUMPIFNOTEQKN                    R5 K30 [2] ; [+80]
      129 GETTABLEKS                       R5 R1 K7 ["Name"]
      131 GETTABLEKS                       R5 R5 K4 ["Value"]
      133 GETUPVAL                         R6 7
      134 GETTABLEKS                       R6 R6 K23 ["SelectTokenSchema"]
      136 JUMPIFNOTEQ                      R4 R6 ; [+24]
      138 GETUPVAL                         R6 2
      139 DUPTABLE                         R8 K32 [{"selectSchema"}]
      140 GETUPVAL                         R9 3
      141 SETTABLEKS                       R9 R8 K31 ["selectSchema"]
      143 NAMECALL                         R6 R6 K33 ["setState"]
      145 CALL                             R6 2 0
      146 JUMPIFNOT                        R5 ; [+44]
      147 JUMPIFEQKS                       R5 K21 [""] ; [+43]
      149 GETUPVAL                         R6 3
      150 SETTABLEKS                       R6 R3 K6 ["Schema"]
      152 GETUPVAL                         R6 3
      153 GETTABLEKS                       R6 R6 K34 ["GetDefaultValue"]
      155 CALL                             R6 0 1
      156 SETUPVAL                         R6 3
      157 GETUPVAL                         R6 3
      158 SETTABLEKS                       R6 R3 K4 ["Value"]
      160 JUMP                             ; [+30]
      161 GETTABLEKS                       R6 R1 K7 ["Name"]
      163 GETTABLEKS                       R6 R6 K6 ["Schema"]
      165 GETUPVAL                         R7 7
      166 GETTABLEKS                       R7 R7 K35 ["ChildComponentSchema"]
      168 JUMPIFNOTEQ                      R6 R7 ; [+22]
      170 GETUPVAL                         R6 0
      171 GETTABLEKS                       R8 R0 K0 ["Items"]
      173 MOVE                             R9 R1
      174 NAMECALL                         R6 R6 K36 ["getParent"]
      176 CALL                             R6 3 1
      177 GETTABLEKS                       R7 R6 K7 ["Name"]
      179 GETTABLEKS                       R5 R7 K4 ["Value"]
      181 GETTABLEKS                       R8 R1 K37 ["SetParentValue"]
      183 JUMPIFNOT                        R8 ; [+5]
      184 GETTABLEKS                       R7 R1 K37 ["SetParentValue"]
      186 GETUPVAL                         R8 3
      187 CALL                             R7 1 1
      188 JUMP                             ; [+1]
      189 GETUPVAL                         R7 3
      190 SETUPVAL                         R7 3
      191 JUMPIFNOT                        R5 ; [+15]
      192 JUMPIFEQKS                       R5 K21 [""] ; [+14]
      194 GETUPVAL                         R6 6
      195 DUPTABLE                         R7 K29 [{["Name"] = "StyleEditor.EditToken", ["DisplayName"] = "Style Editor - Edit Token", ["DoChange"]}]
      196 NEWCLOSURE                       R8 P3
      197 CAPTURE                          VAL R2
      198 CAPTURE                          REF R5
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          UPVAL U2
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          UPVAL U9
      203 CAPTURE                          UPVAL U10
      204 SETTABLEKS                       R8 R7 K18 ["DoChange"]
      206 CALL                             R6 1 0
      207 CLOSEUPVALS                      R5
      208 GETUPVAL                         R5 0
      209 MOVE                             R7 R0
      210 MOVE                             R8 R3
      211 GETUPVAL                         R9 1
      212 GETUPVAL                         R10 4
      213 NAMECALL                         R5 R5 K38 ["updateCell"]
      215 CALL                             R5 5 -1
      216 CLOSEUPVALS                      R4
      217 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          REF R0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CALL                             R3 1 0
       14 CLOSEUPVALS                      R0
       15 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K2 [{"selectSchema", "table"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["None"]
        4 SETTABLEKS                       R2 R1 K0 ["selectSchema"]
        6 DUPTABLE                         R2 K8 [{"Columns", "Expansion", "Selection", "Items"}]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K4 ["Columns"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K4 ["Columns"]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K5 ["Expansion"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K6 ["Selection"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K7 ["Items"]
       26 SETTABLEKS                       R2 R1 K1 ["table"]
       28 SETTABLEKS                       R1 R0 K9 ["state"]
       30 GETUPVAL                         R1 3
       31 MOVE                             R3 R0
       32 LOADK                            R4 K1 ["table"]
       33 NAMECALL                         R1 R1 K10 ["getStateAdaptor"]
       35 CALL                             R1 3 1
       36 GETUPVAL                         R2 3
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K11 ["getCallbacks"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
       43 NEWCLOSURE                       R2 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 SETTABLEKS                       R2 R0 K13 ["setConnections"]
       52 NEWCLOSURE                       R2 P1
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U7
       56 SETTABLEKS                       R2 R0 K14 ["onDoubleClick"]
       58 NEWCLOSURE                       R2 P2
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K15 ["onRightClickRow"]
       62 NEWCLOSURE                       R2 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 SETTABLEKS                       R2 R0 K16 ["showRowContextMenu"]
       71 NEWCLOSURE                       R2 P4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U7
       74 SETTABLEKS                       R2 R0 K17 ["selectRow"]
       76 GETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
       78 NEWCLOSURE                       R3 P5
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R3 R2 K18 ["OnSelectionChange"]
       83 NEWCLOSURE                       R2 P6
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R2 R0 K19 ["onCellAction"]
       87 NEWCLOSURE                       R2 P7
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U11
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          UPVAL U12
       95 CAPTURE                          UPVAL U13
       96 CAPTURE                          UPVAL U14
       97 SETTABLEKS                       R2 R0 K20 ["onTokenEdited"]
       99 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["setConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["RootInstance"]
        4 GETTABLEKS                       R4 R1 K1 ["RootInstance"]
        6 JUMPIFNOTEQ                      R4 R3 ; [+4]
        8 GETTABLEKS                       R4 R0 K2 ["connections"]
       10 JUMPIF                           R4 ; [+3]
       11 GETTABLEKS                       R4 R0 K3 ["setConnections"]
       13 CALL                             R4 0 0
       14 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["RootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["styleSheet"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETTABLEKS                       R3 R0 K2 ["ThemeSelected"]
        8 GETTABLEKS                       R4 R1 K2 ["ThemeSelected"]
       10 JUMPIFEQ                         R3 R4 ; [+70]
       12 GETTABLEKS                       R3 R1 K3 ["selectSchema"]
       14 GETTABLEKS                       R4 R1 K1 ["styleSheet"]
       16 JUMPIFEQ                         R2 R4 ; [+15]
       18 NAMECALL                         R4 R2 K4 ["GetDerives"]
       20 CALL                             R4 1 1
       21 LENGTH                           R5 R4
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R5 ; [+5]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R3 R5 K5 ["TokenReferenceSchema"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R3 R5 K6 ["None"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K7 ["buildTree"]
       35 MOVE                             R5 R2
       36 GETTABLEKS                       R6 R0 K2 ["ThemeSelected"]
       38 GETTABLEKS                       R7 R0 K8 ["OnClick"]
       40 MOVE                             R8 R3
       41 CALL                             R4 4 1
       42 GETTABLEKS                       R5 R1 K9 ["table"]
       44 GETTABLEKS                       R5 R5 K10 ["Expansion"]
       46 GETTABLEKS                       R6 R0 K2 ["ThemeSelected"]
       48 JUMPIFNOTEQKNIL                  R6 ; [+8]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K11 ["createItemId"]
       53 MOVE                             R7 R2
       54 CALL                             R6 1 1
       55 LOADB                            R7 1
       56 SETTABLE                         R7 R5 R6
       57 GETUPVAL                         R6 4
       58 MOVE                             R7 R1
       59 DUPTABLE                         R8 K13 [{"selctSchema", "ThemeSelected", "styleSheet", "table"}]
       60 SETTABLEKS                       R3 R8 K12 ["selctSchema"]
       62 GETTABLEKS                       R9 R0 K2 ["ThemeSelected"]
       64 SETTABLEKS                       R9 R8 K2 ["ThemeSelected"]
       66 SETTABLEKS                       R2 R8 K1 ["styleSheet"]
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R10 R1 K9 ["table"]
       71 DUPTABLE                         R11 K15 [{"Expansion", "Items"}]
       72 SETTABLEKS                       R5 R11 K10 ["Expansion"]
       74 SETTABLEKS                       R4 R11 K14 ["Items"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K9 ["table"]
       79 CALL                             R6 2 -1
       80 RETURN                           R6 -1
       81 RETURN                           R1 1

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETIMPORT                        R1 K1 [pairs]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 JUMPIFNOT                        R5 ; [+3]
        7 NAMECALL                         R6 R5 K2 ["Disconnect"]
        9 CALL                             R6 1 0
       10 LOADNIL                          R6
       11 SETTABLE                         R6 R0 R4
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disconnect"]
        3 GETTABLEKS                       R2 R0 K1 ["connections"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 NEWTABLE                         R5 32 0
        9 GETIMPORT                        R6 K5 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       13 GETTABLEKS                       R6 R1 K6 ["table"]
       15 GETTABLEKS                       R6 R6 K7 ["Columns"]
       17 SETTABLEKS                       R6 R5 K7 ["Columns"]
       19 GETTABLEKS                       R6 R1 K6 ["table"]
       21 GETTABLEKS                       R6 R6 K8 ["Expansion"]
       23 SETTABLEKS                       R6 R5 K8 ["Expansion"]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K9 ["FullSpanEmphasis"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K10 ["getItemChildren"]
       31 SETTABLEKS                       R6 R5 K11 ["GetChildren"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K12 ["getItemId"]
       36 SETTABLEKS                       R6 R5 K13 ["GetItemId"]
       38 GETTABLEKS                       R6 R0 K14 ["props"]
       40 GETTABLEKS                       R6 R6 K15 ["LayoutOrder"]
       42 SETTABLEKS                       R6 R5 K15 ["LayoutOrder"]
       44 GETTABLEKS                       R6 R0 K16 ["onCellAction"]
       46 SETTABLEKS                       R6 R5 K17 ["OnCellAction"]
       48 GETTABLEKS                       R6 R0 K18 ["onDoubleClick"]
       50 SETTABLEKS                       R6 R5 K19 ["OnCellDoubleClick"]
       52 GETTABLEKS                       R6 R0 K20 ["onTokenEdited"]
       54 SETTABLEKS                       R6 R5 K21 ["OnCellEdited"]
       56 GETTABLEKS                       R6 R0 K22 ["onPropertyPressed"]
       58 SETTABLEKS                       R6 R5 K23 ["OnCellPressed"]
       60 GETTABLEKS                       R6 R0 K24 ["onRightClickRow"]
       62 SETTABLEKS                       R6 R5 K25 ["RightClick"]
       64 GETTABLEKS                       R6 R1 K6 ["table"]
       66 GETTABLEKS                       R6 R6 K26 ["Items"]
       68 SETTABLEKS                       R6 R5 K27 ["RootItems"]
       70 GETUPVAL                         R6 4
       71 SETTABLEKS                       R6 R5 K28 ["Renderers"]
       73 GETUPVAL                         R6 5
       74 SETTABLEKS                       R6 R5 K29 ["RowHeight"]
       76 LOADB                            R6 0
       77 SETTABLEKS                       R6 R5 K30 ["ShowHeader"]
       79 GETTABLEKS                       R6 R1 K6 ["table"]
       81 GETTABLEKS                       R6 R6 K31 ["Selection"]
       83 SETTABLEKS                       R6 R5 K31 ["Selection"]
       85 LOADB                            R6 1
       86 SETTABLEKS                       R6 R5 K32 ["UseScale"]
       88 LOADK                            R6 K33 ["compact"]
       89 SETTABLEKS                       R6 R5 K34 ["Variant"]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K35 ["Tag"]
       94 LOADK                            R7 K33 ["compact"]
       95 SETTABLE                         R7 R5 R6
       96 GETTABLEKS                       R6 R0 K36 ["tableCallbacks"]
       98 CALL                             R4 2 -1
       99 CALL                             R2 -1 -1
      100 RETURN                           R2 -1

PROTO_28:
        0 DUPTABLE                         R1 K1 [{"ClipboardAttribute"}]
        1 GETTABLEKS                       R2 R0 K2 ["Clipboard"]
        3 GETTABLEKS                       R2 R2 K3 ["Attribute"]
        5 SETTABLEKS                       R2 R1 K0 ["ClipboardAttribute"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Dash"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["copy"]
       38 GETTABLEKS                       R6 R4 K14 ["join"]
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R8 R1 K9 ["Packages"]
       44 GETTABLEKS                       R8 R8 K15 ["Framework"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       49 GETTABLEKS                       R9 R8 K17 ["withContext"]
       51 GETTABLEKS                       R10 R8 K18 ["Localization"]
       53 GETTABLEKS                       R11 R7 K19 ["UI"]
       55 GETTABLEKS                       R12 R11 K20 ["TreeTable"]
       57 GETIMPORT                        R13 K8 [require]
       59 GETTABLEKS                       R14 R1 K21 ["Src"]
       61 GETTABLEKS                       R14 R14 K22 ["Util"]
       63 GETTABLEKS                       R14 R14 K23 ["recordChange"]
       65 CALL                             R13 1 1
       66 MOVE                             R14 R0
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K8 [require]
       70 GETTABLEKS                       R15 R1 K21 ["Src"]
       72 GETTABLEKS                       R15 R15 K22 ["Util"]
       74 GETTABLEKS                       R15 R15 K24 ["StyleSchema"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K8 [require]
       79 GETTABLEKS                       R16 R1 K21 ["Src"]
       81 GETTABLEKS                       R16 R16 K25 ["Resources"]
       83 GETTABLEKS                       R16 R16 K26 ["PluginStyles"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K8 [require]
       88 GETTABLEKS                       R17 R1 K21 ["Src"]
       90 GETTABLEKS                       R17 R17 K27 ["Renderers"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K8 [require]
       95 GETTABLEKS                       R18 R1 K21 ["Src"]
       97 GETTABLEKS                       R18 R18 K22 ["Util"]
       99 GETTABLEKS                       R18 R18 K28 ["TreeTableHelpers"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K8 [require]
      104 GETTABLEKS                       R19 R1 K21 ["Src"]
      106 GETTABLEKS                       R19 R19 K22 ["Util"]
      108 GETTABLEKS                       R19 R19 K29 ["mapDispatchToProps"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K8 [require]
      113 GETTABLEKS                       R20 R1 K21 ["Src"]
      115 GETTABLEKS                       R20 R20 K30 ["Types"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K8 [require]
      120 GETTABLEKS                       R21 R1 K21 ["Src"]
      122 GETTABLEKS                       R21 R21 K31 ["Reducers"]
      124 GETTABLEKS                       R21 R21 K32 ["Clipboard"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K8 [require]
      129 GETTABLEKS                       R22 R1 K21 ["Src"]
      131 GETTABLEKS                       R22 R22 K31 ["Reducers"]
      133 GETTABLEKS                       R22 R22 K33 ["RootReducer"]
      135 CALL                             R21 1 1
      136 GETTABLEKS                       R22 R1 K21 ["Src"]
      138 GETTABLEKS                       R22 R22 K34 ["Thunks"]
      140 GETIMPORT                        R23 K8 [require]
      142 GETTABLEKS                       R24 R22 K35 ["ContextMenu"]
      144 GETTABLEKS                       R24 R24 K36 ["ShowStyleSheetMenu"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K8 [require]
      149 GETTABLEKS                       R25 R22 K35 ["ContextMenu"]
      151 GETTABLEKS                       R25 R25 K37 ["ShowTokenMenu"]
      153 CALL                             R24 1 1
      154 GETIMPORT                        R25 K8 [require]
      156 GETTABLEKS                       R26 R22 K35 ["ContextMenu"]
      158 GETTABLEKS                       R26 R26 K38 ["ShowEmptyTokenMenu"]
      160 CALL                             R25 1 1
      161 GETIMPORT                        R26 K8 [require]
      163 GETTABLEKS                       R27 R1 K21 ["Src"]
      165 GETTABLEKS                       R27 R27 K25 ["Resources"]
      167 GETTABLEKS                       R27 R27 K39 ["Telemetry"]
      169 GETTABLEKS                       R27 R27 K40 ["ActionClickedEvent"]
      171 CALL                             R26 1 1
      172 GETIMPORT                        R27 K8 [require]
      174 GETTABLEKS                       R28 R1 K21 ["Src"]
      176 GETTABLEKS                       R28 R28 K41 ["Enums"]
      178 GETTABLEKS                       R28 R28 K42 ["ActionClickedEventType"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K8 [require]
      183 GETTABLEKS                       R29 R1 K21 ["Src"]
      185 GETTABLEKS                       R29 R29 K34 ["Thunks"]
      187 GETTABLEKS                       R29 R29 K39 ["Telemetry"]
      189 GETTABLEKS                       R29 R29 K43 ["SendTelemetryEvent"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K8 [require]
      194 GETIMPORT                        R30 K5 [script]
      196 GETTABLEKS                       R30 R30 K44 ["Tree"]
      198 CALL                             R29 1 1
      199 GETTABLEKS                       R30 R29 K45 ["EditTree"]
      201 LOADK                            R33 K46 ["RowHeight"]
      202 NAMECALL                         R31 R15 K47 ["GetAttribute"]
      204 CALL                             R31 2 1
      205 GETTABLEKS                       R32 R2 K48 ["PureComponent"]
      207 LOADK                            R34 K49 ["TokenTable"]
      208 NAMECALL                         R32 R32 K50 ["extend"]
      210 CALL                             R32 2 1
      211 NEWCLOSURE                       R33 P0
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R29
      215 CAPTURE                          VAL R30
      216 CAPTURE                          REF R32
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R27
      227 SETTABLEKS                       R33 R32 K51 ["init"]
      229 DUPCLOSURE                       R33 K52 [PROTO_22]
      230 SETTABLEKS                       R33 R32 K53 ["didMount"]
      232 DUPCLOSURE                       R33 K54 [PROTO_23]
      233 SETTABLEKS                       R33 R32 K55 ["didUpdate"]
      235 DUPCLOSURE                       R33 K56 [PROTO_24]
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R6
      241 SETTABLEKS                       R33 R32 K57 ["getDerivedStateFromProps"]
      243 DUPCLOSURE                       R33 K58 [PROTO_25]
      244 SETTABLEKS                       R33 R32 K59 ["disconnect"]
      246 NEWCLOSURE                       R33 P5
      247 CAPTURE                          REF R32
      248 SETTABLEKS                       R33 R32 K60 ["willUnmount"]
      250 DUPCLOSURE                       R33 K61 [PROTO_27]
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R31
      257 SETTABLEKS                       R33 R32 K62 ["render"]
      259 MOVE                             R33 R9
      260 DUPTABLE                         R34 K64 [{"Localization", "Plugin"}]
      261 SETTABLEKS                       R10 R34 K18 ["Localization"]
      263 GETTABLEKS                       R35 R8 K63 ["Plugin"]
      265 SETTABLEKS                       R35 R34 K63 ["Plugin"]
      267 CALL                             R33 1 1
      268 MOVE                             R34 R32
      269 CALL                             R33 1 1
      270 MOVE                             R32 R33
      271 GETTABLEKS                       R33 R3 K65 ["connect"]
      273 DUPCLOSURE                       R34 K66 [PROTO_28]
      274 MOVE                             R35 R18
      275 CALL                             R33 2 1
      276 MOVE                             R34 R32
      277 CALL                             R33 1 -1
      278 CLOSEUPVALS                      R32
      279 RETURN                           R33 -1
