PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["expanded"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["getPreview"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["StyleRule"]
       12 CALL                             R2 1 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R2 R0 K4 ["instance"]
       16 DUPTABLE                         R3 K5 [{"expanded", "instance"}]
       17 SETTABLEKS                       R1 R3 K0 ["expanded"]
       19 SETTABLEKS                       R2 R3 K4 ["instance"]
       21 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["canApplyVariant"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["StyleRule"]
       12 MOVE                             R3 R0
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["instancesHaveVariant"]
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K2 ["props"]
       21 GETTABLEKS                       R4 R4 K3 ["StyleRule"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 2
       25 DUPTABLE                         R5 K7 [{"selection", "hasVariant", "canApplyVariant"}]
       26 SETTABLEKS                       R0 R5 K5 ["selection"]
       28 SETTABLEKS                       R2 R5 K6 ["hasVariant"]
       30 SETTABLEKS                       R1 R5 K1 ["canApplyVariant"]
       32 NAMECALL                         R3 R3 K8 ["setState"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tagConnections"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["tagConnections"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 MOVE                             R5 R4
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 NAMECALL                         R10 R9 K1 ["Disconnect"]
       16 CALL                             R10 1 0
       17 FORGLOOP                         R5 2 ; [-4]
       19 FORGLOOP                         R0 2 ; [-10]
       21 GETUPVAL                         R0 0
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K0 ["tagConnections"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["onSelectionChanged"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectorChain"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["StyleRule"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 GETUPVAL                         R2 1
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["tagConnections"]
       19 GETTABLEKS                       R2 R0 K4 ["Tags"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K3 ["tagConnections"]
       27 DUPTABLE                         R8 K7 [{"Added", "Removed"}]
       28 GETUPVAL                         R9 3
       29 MOVE                             R11 R6
       30 NAMECALL                         R9 R9 K8 ["GetInstanceAddedSignal"]
       32 CALL                             R9 2 1
       33 MOVE                             R11 R1
       34 NAMECALL                         R9 R9 K9 ["Connect"]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K5 ["Added"]
       39 GETUPVAL                         R9 3
       40 MOVE                             R11 R6
       41 NAMECALL                         R9 R9 K10 ["GetInstanceRemovedSignal"]
       43 CALL                             R9 2 1
       44 MOVE                             R11 R1
       45 NAMECALL                         R9 R9 K9 ["Connect"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K6 ["Removed"]
       50 SETTABLE                         R8 R7 R6
       51 FORGLOOP                         R2 2 ; [-28]
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAppliedStyles"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["IsPropertyModified"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K1 ["ResetPropertyToDefault"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selection"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["Class"]
        9 JUMPIFEQKS                       R5 K2 [""] ; [+14]
       11 GETTABLEKS                       R5 R4 K3 ["ClassName"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K1 ["Class"]
       16 JUMPIFEQ                         R5 R6 ; [+7]
       18 GETIMPORT                        R5 K5 [print]
       20 LOADK                            R6 K6 ["Error: Selector class does not match ClassName on"]
       21 MOVE                             R7 R4
       22 CALL                             R5 2 0
       23 JUMP                             ; [+114]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["hasVariant"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K8 ["All"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+8]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K9 ["removeVariant"]
       35 GETUPVAL                         R6 4
       36 MOVE                             R7 R4
       37 CALL                             R5 2 0
       38 JUMP                             ; [+99]
       39 GETUPVAL                         R5 5
       40 JUMPIFNOT                        R5 ; [+13]
       41 GETUPVAL                         R5 4
       42 LOADK                            R7 K10 ["StyleSheet"]
       43 NAMECALL                         R5 R5 K11 ["FindFirstAncestorWhichIsA"]
       45 CALL                             R5 2 1
       46 JUMPIFNOT                        R5 ; [+13]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K12 ["addStyleLinkToRoot"]
       50 MOVE                             R7 R4
       51 MOVE                             R8 R5
       52 CALL                             R6 2 0
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K12 ["addStyleLinkToRoot"]
       57 MOVE                             R6 R4
       58 GETUPVAL                         R7 4
       59 CALL                             R5 2 0
       60 GETIMPORT                        R5 K14 [pcall]
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 2
       66 JUMPIFNOT                        R5 ; [+71]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K1 ["Class"]
       70 JUMPIFEQKS                       R7 K2 [""] ; [+26]
       72 MOVE                             R7 R6
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R13 R11 K15 ["PossibleClasses"]
       78 LENGTH                           R12 R13
       79 JUMPIFNOTEQKN                    R12 K16 [1] ; [+15]
       81 GETTABLEKS                       R13 R11 K15 ["PossibleClasses"]
       83 GETTABLEN                        R12 R13 1
       84 GETTABLEKS                       R13 R4 K3 ["ClassName"]
       86 JUMPIFNOTEQ                      R12 R13 ; [+8]
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R12 R12 K9 ["removeVariant"]
       91 GETTABLEKS                       R13 R11 K17 ["Instance"]
       93 MOVE                             R14 R4
       94 CALL                             R12 2 0
       95 FORGLOOP                         R7 2 ; [-20]
       97 GETUPVAL                         R7 3
       98 GETTABLEKS                       R7 R7 K18 ["applyVariant"]
      100 GETUPVAL                         R8 4
      101 MOVE                             R9 R4
      102 CALL                             R7 2 0
      103 GETUPVAL                         R7 4
      104 JUMPIFNOT                        R7 ; [+33]
      105 LOADK                            R10 K19 ["StyleRule"]
      106 NAMECALL                         R8 R7 K20 ["IsA"]
      108 CALL                             R8 2 1
      109 JUMPIFNOT                        R8 ; [+28]
      110 NAMECALL                         R8 R7 K21 ["GetProperties"]
      112 CALL                             R8 1 3
      113 FORGPREP                         R8
      114 GETIMPORT                        R13 K14 [pcall]
      116 NEWCLOSURE                       R14 P1
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R11
      119 CALL                             R13 1 2
      120 MOVE                             R5 R13
      121 MOVE                             R12 R14
      122 JUMPIF                           R5 ; [+10]
      123 GETIMPORT                        R13 K23 [warn]
      125 LOADK                            R15 K24 ["Style Editor could not reset %* on %*"]
      126 MOVE                             R17 R11
      127 MOVE                             R18 R4
      128 NAMECALL                         R15 R15 K25 ["format"]
      130 CALL                             R15 3 1
      131 MOVE                             R14 R15
      132 CALL                             R13 1 0
      133 FORGLOOP                         R8 2 ; [-20]
      135 GETTABLEKS                       R7 R7 K26 ["Parent"]
      137 JUMPBACK                         ; [-34]
      138 FORGLOOP                         R0 2 ; [-133]
      140 GETIMPORT                        R0 K30 [Enum.FinishRecordingOperation.Commit]
      142 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R2 R0 K2 ["hasVariant"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Mixed"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+6]
       13 GETIMPORT                        R2 K5 [print]
       15 LOADK                            R3 K6 ["Error: Variant action cannot be performed on all selected instances"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K7 ["canApplyVariant"]
       20 JUMPIF                           R2 ; [+5]
       21 GETIMPORT                        R2 K5 [print]
       23 LOADK                            R3 K8 ["Error: Variant cannot be applied to all selected instances"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R1 K9 ["StyleRule"]
       28 JUMPIF                           R2 ; [+5]
       29 GETIMPORT                        R3 K5 [print]
       31 LOADK                            R4 K10 ["Error: No StyleRule to apply"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R4 R0 K11 ["selection"]
       36 LENGTH                           R3 R4
       37 LOADN                            R4 1
       38 JUMPIFNOTLT                      R3 R4 ; [+6]
       40 GETIMPORT                        R3 K5 [print]
       42 LOADK                            R4 K12 ["Error: No instance selected in Explorer"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R3 R1 K13 ["dispatch"]
       47 GETUPVAL                         R4 2
       48 GETUPVAL                         R5 3
       49 DUPTABLE                         R6 K17 [{["eventType"], ["path"] = "StyleRuleView/ApplyTag"}]
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R7 R7 K18 ["ButtonPressed"]
       53 GETTABLEKS                       R7 R7 K19 ["rawValue"]
       55 CALL                             R7 0 1
       56 SETTABLEKS                       R7 R6 K14 ["eventType"]
       58 CALL                             R5 1 -1
       59 CALL                             R4 -1 -1
       60 CALL                             R3 -1 0
       61 GETUPVAL                         R3 5
       62 GETTABLEKS                       R3 R3 K20 ["getSelectorChain"]
       64 MOVE                             R4 R2
       65 CALL                             R3 1 1
       66 GETUPVAL                         R4 6
       67 DUPTABLE                         R5 K26 [{["Name"] = "StyleEditor.ApplyTags", ["DisplayName"] = "StyleEditor - Apply Tag(s)", ["DoChange"]}]
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U8
       76 SETTABLEKS                       R6 R5 K25 ["DoChange"]
       78 CALL                             R4 1 0
       79 GETUPVAL                         R4 0
       80 DUPTABLE                         R6 K27 [{"hasVariant"}]
       81 GETTABLEKS                       R8 R0 K2 ["hasVariant"]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K28 ["All"]
       86 JUMPIFNOTEQ                      R8 R9 ; [+5]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K29 ["None"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K28 ["All"]
       95 SETTABLEKS                       R7 R6 K2 ["hasVariant"]
       97 NAMECALL                         R4 R4 K30 ["setState"]
       99 CALL                             R4 2 0
      100 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["instance"]
       12 JUMPIFEQ                         R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 LOADNIL                          R0
       16 GETUPVAL                         R1 1
       17 LOADK                            R3 K4 ["DataModel"]
       18 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K6 ["Parent"]
       26 LOADB                            R3 0
       27 JUMPIFEQKNIL                     R1 ; [+5]
       29 LOADK                            R5 K7 ["GuiObject"]
       30 NAMECALL                         R3 R1 K8 ["IsA"]
       32 CALL                             R3 2 1
       33 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       35 LOADK                            R4 K9 ["Preview hierarchy should be parented to ImageLabel background"]
       36 GETIMPORT                        R2 K11 [assert]
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R3 R1 K12 ["AbsoluteSize"]
       41 GETTABLEKS                       R3 R3 K13 ["X"]
       43 LOADN                            R5 2
       44 GETUPVAL                         R6 3
       45 MUL                              R4 R5 R6
       46 SUB                              R2 R3 R4
       47 GETUPVAL                         R3 1
       48 LOADNIL                          R4
       49 JUMPIFNOT                        R3 ; [+92]
       50 GETTABLEKS                       R6 R3 K6 ["Parent"]
       52 LOADK                            R8 K7 ["GuiObject"]
       53 NAMECALL                         R6 R6 K8 ["IsA"]
       55 CALL                             R6 2 1
       56 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       58 LOADK                            R7 K14 ["Preview instance parent should be a GuiObject"]
       59 GETIMPORT                        R5 K11 [assert]
       61 CALL                             R5 2 0
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K15 ["getStyledPropertyValue"]
       65 MOVE                             R6 R3
       66 LOADK                            R7 K16 ["Size"]
       67 CALL                             R5 2 1
       68 MOVE                             R0 R5
       69 JUMPIFEQKNIL                     R0 ; [+8]
       71 FASTCALL1                        TYPEOF R0 ; [+3]
       72 MOVE                             R6 R0
       73 GETIMPORT                        R5 K18 [typeof]
       75 CALL                             R5 1 1
       76 JUMPIFEQKS                       R5 K19 ["UDim2"] ; [+2]
       78 GETUPVAL                         R0 5
       79 GETTABLEKS                       R9 R0 K13 ["X"]
       81 GETTABLEKS                       R9 R9 K20 ["Scale"]
       83 GETTABLEKS                       R10 R3 K6 ["Parent"]
       85 GETTABLEKS                       R10 R10 K12 ["AbsoluteSize"]
       87 GETTABLEKS                       R10 R10 K13 ["X"]
       89 MUL                              R8 R9 R10
       90 GETTABLEKS                       R9 R0 K13 ["X"]
       92 GETTABLEKS                       R9 R9 K21 ["Offset"]
       94 ADD                              R7 R8 R9
       95 FASTCALL2                        MATH_MIN R2 R7 ; [+4]
       97 MOVE                             R6 R2
       98 GETIMPORT                        R5 K24 [math.min]
      100 CALL                             R5 2 1
      101 GETUPVAL                         R7 1
      102 JUMPIFNOTEQ                      R3 R7 ; [+3]
      104 LOADN                            R6 200
      105 JUMP                             ; [+6]
      106 GETTABLEKS                       R6 R3 K6 ["Parent"]
      108 GETTABLEKS                       R6 R6 K12 ["AbsoluteSize"]
      110 GETTABLEKS                       R6 R6 K25 ["Y"]
      112 LOADN                            R8 300
      113 GETTABLEKS                       R11 R0 K25 ["Y"]
      115 GETTABLEKS                       R11 R11 K20 ["Scale"]
      117 MUL                              R10 R11 R6
      118 GETTABLEKS                       R11 R0 K25 ["Y"]
      120 GETTABLEKS                       R11 R11 K21 ["Offset"]
      122 ADD                              R9 R10 R11
      123 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
      125 GETIMPORT                        R7 K24 [math.min]
      127 CALL                             R7 2 1
      128 GETIMPORT                        R8 K27 [UDim2.fromOffset]
      130 MOVE                             R9 R5
      131 MOVE                             R10 R7
      132 CALL                             R8 2 1
      133 MOVE                             R4 R8
      134 SETTABLEKS                       R4 R3 K16 ["Size"]
      136 LOADK                            R10 K7 ["GuiObject"]
      137 NAMECALL                         R8 R3 K28 ["FindFirstChildWhichIsA"]
      139 CALL                             R8 2 1
      140 MOVE                             R3 R8
      141 JUMPBACK                         ; [-93]
      142 GETIMPORT                        R5 K30 [UDim2.new]
      144 LOADN                            R6 1
      145 LOADN                            R7 0
      146 GETTABLEKS                       R8 R4 K25 ["Y"]
      148 GETTABLEKS                       R8 R8 K20 ["Scale"]
      150 GETTABLEKS                       R10 R4 K25 ["Y"]
      152 GETTABLEKS                       R10 R10 K21 ["Offset"]
      154 LOADN                            R12 2
      155 GETUPVAL                         R13 3
      156 MUL                              R11 R12 R13
      157 ADD                              R9 R10 R11
      158 CALL                             R5 4 1
      159 SETTABLEKS                       R5 R1 K16 ["Size"]
      161 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["styleRulePropertyChangedConnection"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["styleRulePropertyChangedConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["styleRuleChangedConnection"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["styleRuleChangedConnection"]
       17 NAMECALL                         R0 R0 K1 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["styleRuleChangedConnection"]
       24 GETUPVAL                         R0 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["styleRulePropertyChangedConnection"]
       28 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["instance"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["updatePreviewSize"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["state"]
       12 GETTABLEKS                       R1 R1 K1 ["instance"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 DUPTABLE                         R2 K5 [{"StyleRule", "hasVariant", "canApplyVariant", "instance"}]
        4 GETTABLEKS                       R3 R1 K1 ["StyleRule"]
        6 SETTABLEKS                       R3 R2 K1 ["StyleRule"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K6 ["instancesHaveVariant"]
       11 GETTABLEKS                       R4 R0 K7 ["selection"]
       13 GETTABLEKS                       R5 R1 K1 ["StyleRule"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K2 ["hasVariant"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["canApplyVariant"]
       21 GETTABLEKS                       R4 R1 K1 ["StyleRule"]
       23 GETTABLEKS                       R5 R0 K7 ["selection"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K3 ["canApplyVariant"]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K8 ["getPreview"]
       31 GETTABLEKS                       R4 R1 K1 ["StyleRule"]
       33 CALL                             R3 1 1
       34 JUMPIF                           R3 ; [+3]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K9 ["None"]
       38 SETTABLEKS                       R3 R2 K4 ["instance"]
       40 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NAMECALL                         R0 R0 K0 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeStyleRuleConnection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["StyleRule"]
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["props"]
       15 GETTABLEKS                       R1 R1 K2 ["StyleRule"]
       17 GETTABLEKS                       R1 R1 K3 ["StyleRulePropertyChanged"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R1 R1 K4 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K5 ["styleRulePropertyChangedConnection"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K1 ["props"]
       30 GETTABLEKS                       R1 R1 K2 ["StyleRule"]
       32 GETTABLEKS                       R1 R1 K6 ["Changed"]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 NAMECALL                         R1 R1 K4 ["Connect"]
       41 CALL                             R1 2 1
       42 SETTABLEKS                       R1 R0 K7 ["styleRuleChangedConnection"]
       44 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K5 [{[1] = True, ["instance"] = , ["selection"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K4 ["selection"]
        5 SETTABLEKS                       R1 R0 K6 ["state"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K7 ["createRef"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K8 ["containerRef"]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R1 R0 K9 ["expandedChanged"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K10 ["onSelectionChanged"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K11 ["removeTagConnections"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 SETTABLEKS                       R1 R0 K12 ["createTagConnections"]
       35 NEWCLOSURE                       R1 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 SETTABLEKS                       R1 R0 K13 ["onApplyStyle"]
       47 NEWCLOSURE                       R1 P5
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U13
       51 CAPTURE                          UPVAL U14
       52 CAPTURE                          UPVAL U15
       53 SETTABLEKS                       R1 R0 K14 ["updatePreviewSize"]
       55 NEWCLOSURE                       R1 P6
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R1 R0 K15 ["removeStyleRuleConnection"]
       59 NEWCLOSURE                       R1 P7
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          UPVAL U0
       64 SETTABLEKS                       R1 R0 K16 ["createStyleRuleConnection"]
       66 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["Class"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R3 R0 K0 ["Class"]
        5 LENGTH                           R2 R3
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+4]
        9 GETTABLEKS                       R1 R0 K0 ["Class"]
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K1 ["Frame"]
       13 GETIMPORT                        R2 K3 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 2
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R0 K4 ["Name"]
       22 JUMPIFNOT                        R4 ; [+10]
       23 GETTABLEKS                       R5 R0 K4 ["Name"]
       25 LENGTH                           R4 R5
       26 LOADN                            R5 0
       27 JUMPIFNOTLT                      R5 R4 ; [+5]
       29 GETTABLEKS                       R4 R0 K4 ["Name"]
       31 SETTABLEKS                       R4 R3 K4 ["Name"]
       33 GETTABLEKS                       R4 R0 K5 ["Tags"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 MOVE                             R11 R8
       39 NAMECALL                         R9 R3 K6 ["AddTag"]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-5]
       44 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleInfo"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["TextTransparency"]
        4 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETTABLEKS                       R2 R0 K0 ["SelectorError"]
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["None"]
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K3 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 2
       17 JUMPIF                           R1 ; [+4]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["None"]
       21 RETURN                           R3 1
       22 GETTABLEKS                       R3 R2 K4 ["SelectorChains"]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 LOADB                            R7 0
       28 LENGTH                           R11 R3
       29 GETTABLE                         R8 R3 R11
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 GETUPVAL                         R13 2
       34 JUMPIFNOT                        R13 ; [+11]
       35 GETTABLEKS                       R14 R12 K5 ["Queries"]
       37 LENGTH                           R13 R14
       38 LOADN                            R14 0
       39 JUMPIFNOTLT                      R14 R13 ; [+6]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K1 ["None"]
       44 CLOSEUPVALS                      R5
       45 RETURN                           R13 1
       46 GETTABLEKS                       R13 R12 K6 ["Class"]
       48 JUMPIFNOTEQKS                    R13 K7 [""] ; [+2]
       50 LOADB                            R7 0
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R13 R13 K8 ["createPreviewInstanceFromSelectorLink"]
       54 MOVE                             R14 R12
       55 CALL                             R13 1 1
       56 MOVE                             R5 R13
       57 JUMPIFNOT                        R5 ; [+74]
       58 GETTABLEKS                       R13 R12 K6 ["Class"]
       60 JUMPIFNOT                        R13 ; [+13]
       61 LOADB                            R13 0
       62 GETTABLEKS                       R15 R12 K6 ["Class"]
       64 LENGTH                           R14 R15
       65 LOADN                            R15 0
       66 JUMPIFNOTLT                      R15 R14 ; [+7]
       68 GETTABLEKS                       R14 R12 K9 ["Combinator"]
       70 JUMPIFNOTEQKS                    R14 K10 ["Pseudo"] ; [+2]
       72 LOADB                            R13 0 +1
       73 LOADB                            R13 1
       74 JUMPIFNOT                        R4 ; [+4]
       75 JUMPIFNOT                        R13 ; [+4]
       76 SETTABLEKS                       R4 R5 K11 ["Parent"]
       78 JUMP                             ; [+1]
       79 MOVE                             R6 R5
       80 GETTABLEKS                       R14 R12 K9 ["Combinator"]
       82 JUMPIFEQKS                       R14 K10 ["Pseudo"] ; [+48]
       84 LOADK                            R16 K12 ["GuiObject"]
       85 NAMECALL                         R14 R5 K13 ["IsA"]
       87 CALL                             R14 2 1
       88 JUMPIFNOT                        R14 ; [+42]
       89 GETIMPORT                        R14 K16 [UDim2.fromScale]
       91 LOADK                            R15 K17 [0.5]
       92 LOADK                            R16 K17 [0.5]
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R5 K18 ["Position"]
       96 GETIMPORT                        R14 K21 [Vector2.new]
       98 LOADK                            R15 K17 [0.5]
       99 LOADK                            R16 K17 [0.5]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R5 K22 ["AnchorPoint"]
      103 LENGTH                           R16 R3
      104 GETTABLE                         R15 R3 R16
      105 LENGTH                           R14 R15
      106 JUMPIFEQ                         R11 R14 ; [+23]
      108 GETUPVAL                         R14 3
      109 GETTABLEKS                       R14 R14 K8 ["createPreviewInstanceFromSelectorLink"]
      111 LENGTH                           R17 R3
      112 GETTABLE                         R16 R3 R17
      113 ADDK                             R17 R11 K23 [1]
      114 GETTABLE                         R15 R16 R17
      115 CALL                             R14 1 1
      116 JUMPIFNOT                        R14 ; [+13]
      117 LOADK                            R17 K24 ["UIComponent"]
      118 NAMECALL                         R15 R14 K13 ["IsA"]
      120 CALL                             R15 2 1
      121 JUMPIF                           R15 ; [+8]
      122 LOADN                            R15 1
      123 SETTABLEKS                       R15 R5 K25 ["BackgroundTransparency"]
      125 GETIMPORT                        R15 K3 [pcall]
      127 NEWCLOSURE                       R16 P1
      128 CAPTURE                          REF R5
      129 CALL                             R15 1 1
      130 MOVE                             R4 R5
      131 OR                               R7 R7 R13
      132 FORGLOOP                         R8 2 ; [-100]
      134 JUMPIFNOT                        R6 ; [+24]
      135 MOVE                             R8 R7
      136 JUMPIFNOT                        R8 ; [+16]
      137 MOVE                             R8 R5
      138 JUMPIFNOT                        R8 ; [+14]
      139 LOADK                            R11 K12 ["GuiObject"]
      140 NAMECALL                         R9 R5 K13 ["IsA"]
      142 CALL                             R9 2 1
      143 JUMPIF                           R9 ; [+5]
      144 LOADK                            R10 K24 ["UIComponent"]
      145 NAMECALL                         R8 R5 K13 ["IsA"]
      147 CALL                             R8 2 1
      148 JUMPIFNOT                        R8 ; [+4]
      149 LOADK                            R10 K12 ["GuiObject"]
      150 NAMECALL                         R8 R6 K13 ["IsA"]
      152 CALL                             R8 2 1
      153 JUMPIFNOT                        R8 ; [+2]
      154 CLOSEUPVALS                      R5
      155 RETURN                           R6 1
      156 NAMECALL                         R9 R6 K26 ["Remove"]
      158 CALL                             R9 1 0
      159 GETUPVAL                         R8 0
      160 GETTABLEKS                       R8 R8 K1 ["None"]
      162 CLOSEUPVALS                      R5
      163 RETURN                           R8 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["StyleRule"]
        2 GETTABLEKS                       R3 R1 K0 ["StyleRule"]
        4 JUMPIFEQ                         R2 R3 ; [+39]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getPreview"]
        9 GETTABLEKS                       R3 R0 K0 ["StyleRule"]
       11 CALL                             R2 1 1
       12 JUMPIF                           R2 ; [+3]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["None"]
       16 DUPTABLE                         R3 K6 [{"StyleRule", "hasVariant", "canApplyVariant", "instance"}]
       17 GETTABLEKS                       R4 R0 K0 ["StyleRule"]
       19 SETTABLEKS                       R4 R3 K0 ["StyleRule"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["instancesHaveVariant"]
       24 GETTABLEKS                       R5 R1 K8 ["selection"]
       26 GETTABLEKS                       R6 R0 K0 ["StyleRule"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K3 ["hasVariant"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K4 ["canApplyVariant"]
       34 GETTABLEKS                       R5 R0 K0 ["StyleRule"]
       36 GETTABLEKS                       R6 R1 K8 ["selection"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K4 ["canApplyVariant"]
       41 SETTABLEKS                       R2 R3 K5 ["instance"]
       43 RETURN                           R3 1
       44 LOADNIL                          R2
       45 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R3 R1 K0 ["StyleRule"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["StyleRule"]
        6 JUMPIFEQ                         R3 R4 ; [+10]
        8 GETTABLEKS                       R3 R0 K2 ["removeTagConnections"]
       10 CALL                             R3 0 0
       11 GETTABLEKS                       R3 R0 K3 ["createTagConnections"]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R0 K4 ["createStyleRuleConnection"]
       16 CALL                             R3 0 0
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        3 GETTABLEKS                       R3 R0 K1 ["onSelectionChanged"]
        5 NAMECALL                         R1 R1 K2 ["Connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K3 ["selectionChangedConnection"]
       10 GETTABLEKS                       R1 R0 K1 ["onSelectionChanged"]
       12 CALL                             R1 0 0
       13 GETTABLEKS                       R1 R0 K4 ["createStyleRuleConnection"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["removeTagConnections"]
        2 CALL                             R1 0 0
        3 GETTABLEKS                       R1 R0 K1 ["selectionChangedConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["selectionChangedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["selectionChangedConnection"]
       14 GETTABLEKS                       R1 R0 K3 ["removeStyleRuleConnection"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["hasVariant"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+3]
       11 LOADK                            R3 K4 ["Apply"]
       12 JUMP                             ; [+10]
       13 GETTABLEKS                       R4 R2 K2 ["hasVariant"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["Mixed"]
       18 JUMPIFNOTEQ                      R4 R5 ; [+3]
       20 LOADK                            R3 K5 ["Mixed"]
       21 JUMP                             ; [+1]
       22 LOADK                            R3 K6 ["Remove"]
       23 LOADK                            R5 K7 ["ApplyBtn.Text"]
       24 MOVE                             R6 R3
       25 LOADK                            R7 K8 ["Tag"]
       26 CONCAT                           R4 R5 R7
       27 LOADK                            R6 K9 ["ApplyBtn.Tooltip"]
       28 MOVE                             R7 R3
       29 LOADK                            R8 K8 ["Tag"]
       30 CONCAT                           R5 R6 R8
       31 LOADB                            R6 1
       32 GETTABLEKS                       R7 R2 K2 ["hasVariant"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["Mixed"]
       37 JUMPIFEQ                         R7 R8 ; [+4]
       39 GETTABLEKS                       R7 R2 K10 ["canApplyVariant"]
       41 NOT                              R6 R7
       42 GETTABLEKS                       R7 R1 K11 ["Localization"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K12 ["createElement"]
       47 GETUPVAL                         R9 2
       48 NEWTABLE                         R10 1 0
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K8 ["Tag"]
       53 LOADK                            R12 K13 ["X-ColumnS X-FitY X-Right"]
       54 SETTABLE                         R12 R10 R11
       55 DUPTABLE                         R11 K16 [{"Container", "ScrollingView"}]
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R12 R12 K12 ["createElement"]
       59 GETUPVAL                         R13 2
       60 NEWTABLE                         R14 2 0
       62 LOADN                            R15 1
       63 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K8 ["Tag"]
       68 LOADK                            R16 K18 ["X-FitY"]
       69 SETTABLE                         R16 R14 R15
       70 DUPTABLE                         R15 K21 [{"ApplyStyleButton", "Preview"}]
       71 GETUPVAL                         R17 3
       72 GETTABLEKS                       R17 R17 K22 ["ruleHasTags"]
       74 GETTABLEKS                       R18 R1 K23 ["StyleRule"]
       76 CALL                             R17 1 1
       77 JUMPIFNOT                        R17 ; [+37]
       78 GETUPVAL                         R16 1
       79 GETTABLEKS                       R16 R16 K12 ["createElement"]
       81 GETUPVAL                         R17 4
       82 NEWTABLE                         R18 4 0
       84 GETTABLEKS                       R19 R0 K24 ["onApplyStyle"]
       86 SETTABLEKS                       R19 R18 K25 ["OnClick"]
       88 LOADK                            R21 K26 ["Control"]
       89 MOVE                             R22 R4
       90 NAMECALL                         R19 R7 K27 ["getText"]
       92 CALL                             R19 3 1
       93 SETTABLEKS                       R19 R18 K28 ["Text"]
       95 LOADK                            R21 K26 ["Control"]
       96 MOVE                             R22 R5
       97 NAMECALL                         R19 R7 K27 ["getText"]
       99 CALL                             R19 3 1
      100 SETTABLEKS                       R19 R18 K29 ["TooltipText"]
      102 GETUPVAL                         R19 1
      103 GETTABLEKS                       R19 R19 K8 ["Tag"]
      105 GETUPVAL                         R20 5
      106 LOADK                            R21 K30 ["PositionRight"]
      107 JUMPIFNOT                        R6 ; [+2]
      108 LOADK                            R22 K31 ["Disabled"]
      109 JUMP                             ; [+1]
      110 LOADK                            R22 K32 [""]
      111 CALL                             R20 2 1
      112 SETTABLE                         R20 R18 R19
      113 CALL                             R16 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R16
      116 SETTABLEKS                       R16 R15 K19 ["ApplyStyleButton"]
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R16 R16 K12 ["createElement"]
      121 GETUPVAL                         R17 6
      122 DUPTABLE                         R18 K38 [{"Expanded", "MaxSize", "OnExpandedChanged", "PreviewInstance", "StyleRule", "OnPreviewInstanceChanged"}]
      123 GETTABLEKS                       R19 R2 K39 ["expanded"]
      125 SETTABLEKS                       R19 R18 K33 ["Expanded"]
      127 GETIMPORT                        R19 K42 [Vector2.new]
      129 LOADK                            R20 K43 [∞]
      130 LOADN                            R21 300
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K34 ["MaxSize"]
      134 GETTABLEKS                       R19 R0 K44 ["expandedChanged"]
      136 SETTABLEKS                       R19 R18 K35 ["OnExpandedChanged"]
      138 GETTABLEKS                       R19 R2 K45 ["instance"]
      140 SETTABLEKS                       R19 R18 K36 ["PreviewInstance"]
      142 GETTABLEKS                       R19 R1 K23 ["StyleRule"]
      144 SETTABLEKS                       R19 R18 K23 ["StyleRule"]
      146 GETTABLEKS                       R19 R0 K46 ["updatePreviewSize"]
      148 SETTABLEKS                       R19 R18 K37 ["OnPreviewInstanceChanged"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K20 ["Preview"]
      153 CALL                             R12 3 1
      154 SETTABLEKS                       R12 R11 K14 ["Container"]
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R12 R12 K12 ["createElement"]
      159 GETUPVAL                         R13 2
      160 NEWTABLE                         R14 4 0
      162 LOADN                            R15 2
      163 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      165 GETIMPORT                        R15 K48 [UDim2.new]
      167 LOADN                            R16 1
      168 LOADN                            R17 0
      169 LOADN                            R18 1
      170 LOADN                            R19 0
      171 CALL                             R15 4 1
      172 SETTABLEKS                       R15 R14 K49 ["Size"]
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K8 ["Tag"]
      177 LOADK                            R16 K50 ["FlexFill"]
      178 SETTABLE                         R16 R14 R15
      179 DUPTABLE                         R15 K51 [{"StyleRule"}]
      180 GETUPVAL                         R16 1
      181 GETTABLEKS                       R16 R16 K12 ["createElement"]
      183 GETUPVAL                         R17 7
      184 DUPTABLE                         R18 K53 [{"RootInstance"}]
      185 GETTABLEKS                       R19 R2 K23 ["StyleRule"]
      187 SETTABLEKS                       R19 R18 K52 ["RootInstance"]
      189 CALL                             R16 2 1
      190 SETTABLEKS                       R16 R15 K23 ["StyleRule"]
      192 CALL                             R12 3 1
      193 SETTABLEKS                       R12 R11 K15 ["ScrollingView"]
      195 CALL                             R8 3 -1
      196 RETURN                           R8 -1

PROTO_28:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CollectionService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Selection"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["StylingService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K9 [script]
       33 GETTABLEKS                       R5 R5 K10 ["Parent"]
       35 GETTABLEKS                       R5 R5 K10 ["Parent"]
       37 GETTABLEKS                       R5 R5 K10 ["Parent"]
       39 GETIMPORT                        R6 K12 [require]
       41 GETTABLEKS                       R7 R5 K13 ["Packages"]
       43 GETTABLEKS                       R7 R7 K14 ["React"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K12 [require]
       48 GETTABLEKS                       R8 R5 K13 ["Packages"]
       50 GETTABLEKS                       R8 R8 K15 ["RoactRodux"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K12 [require]
       55 GETTABLEKS                       R9 R5 K13 ["Packages"]
       57 GETTABLEKS                       R9 R9 K16 ["Framework"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R8 K17 ["ContextServices"]
       62 GETTABLEKS                       R10 R9 K18 ["withContext"]
       64 GETTABLEKS                       R11 R9 K19 ["Localization"]
       66 GETTABLEKS                       R12 R8 K20 ["UI"]
       68 GETTABLEKS                       R13 R12 K21 ["IconButton"]
       70 GETTABLEKS                       R14 R12 K22 ["Pane"]
       72 GETTABLEKS                       R15 R8 K23 ["Styling"]
       74 GETTABLEKS                       R15 R15 K24 ["joinTags"]
       76 GETIMPORT                        R16 K12 [require]
       78 GETTABLEKS                       R17 R5 K25 ["Src"]
       80 GETTABLEKS                       R17 R17 K26 ["Types"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K12 [require]
       85 GETTABLEKS                       R18 R5 K25 ["Src"]
       87 GETTABLEKS                       R18 R18 K27 ["Reducers"]
       89 GETTABLEKS                       R18 R18 K28 ["RootReducer"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K12 [require]
       94 GETTABLEKS                       R19 R5 K25 ["Src"]
       96 GETTABLEKS                       R19 R19 K29 ["Resources"]
       98 GETTABLEKS                       R19 R19 K30 ["Telemetry"]
      100 GETTABLEKS                       R19 R19 K31 ["ActionClickedEvent"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K12 [require]
      105 GETTABLEKS                       R20 R5 K25 ["Src"]
      107 GETTABLEKS                       R20 R20 K32 ["Thunks"]
      109 GETTABLEKS                       R20 R20 K30 ["Telemetry"]
      111 GETTABLEKS                       R20 R20 K33 ["SendTelemetryEvent"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K12 [require]
      116 GETTABLEKS                       R21 R5 K25 ["Src"]
      118 GETTABLEKS                       R21 R21 K34 ["Flags"]
      120 GETTABLEKS                       R21 R21 K35 ["getFFlagStyleEditorStyleLinkInsertWhenNil"]
      122 CALL                             R20 1 1
      123 CALL                             R20 0 1
      124 GETIMPORT                        R21 K12 [require]
      126 GETTABLEKS                       R22 R5 K25 ["Src"]
      128 GETTABLEKS                       R22 R22 K34 ["Flags"]
      130 GETTABLEKS                       R22 R22 K36 ["getFFlagStyleQuery"]
      132 CALL                             R21 1 1
      133 CALL                             R21 0 1
      134 GETIMPORT                        R22 K12 [require]
      136 GETTABLEKS                       R23 R5 K25 ["Src"]
      138 GETTABLEKS                       R23 R23 K37 ["Enums"]
      140 GETTABLEKS                       R23 R23 K38 ["ActionClickedEventType"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K12 [require]
      145 GETTABLEKS                       R24 R5 K25 ["Src"]
      147 GETTABLEKS                       R24 R24 K37 ["Enums"]
      149 GETTABLEKS                       R24 R24 K39 ["InstancesHaveVariant"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K12 [require]
      154 GETTABLEKS                       R25 R5 K25 ["Src"]
      156 GETTABLEKS                       R25 R25 K40 ["Util"]
      158 GETTABLEKS                       R25 R25 K41 ["mapDispatchToProps"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K12 [require]
      163 GETTABLEKS                       R26 R5 K25 ["Src"]
      165 GETTABLEKS                       R26 R26 K29 ["Resources"]
      167 GETTABLEKS                       R26 R26 K42 ["PluginStyles"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K12 [require]
      172 GETTABLEKS                       R27 R5 K25 ["Src"]
      174 GETTABLEKS                       R27 R27 K40 ["Util"]
      176 GETTABLEKS                       R27 R27 K43 ["recordChange"]
      178 CALL                             R26 1 1
      179 MOVE                             R27 R0
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K12 [require]
      183 GETTABLEKS                       R28 R5 K25 ["Src"]
      185 GETTABLEKS                       R28 R28 K40 ["Util"]
      187 GETTABLEKS                       R28 R28 K44 ["SelectorHelpers"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K12 [require]
      192 GETTABLEKS                       R29 R5 K25 ["Src"]
      194 GETTABLEKS                       R29 R29 K40 ["Util"]
      196 GETTABLEKS                       R29 R29 K23 ["Styling"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K12 [require]
      201 GETTABLEKS                       R30 R5 K25 ["Src"]
      203 GETTABLEKS                       R30 R30 K45 ["Components"]
      205 GETTABLEKS                       R30 R30 K46 ["SelectorPropertyTable"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K12 [require]
      210 GETTABLEKS                       R31 R5 K25 ["Src"]
      212 GETTABLEKS                       R31 R31 K45 ["Components"]
      214 GETTABLEKS                       R31 R31 K47 ["StyleRulePreview"]
      216 CALL                             R30 1 1
      217 GETIMPORT                        R31 K50 [UDim2.fromOffset]
      219 LOADN                            R32 200
      220 LOADN                            R33 100
      221 CALL                             R31 2 1
      222 LOADK                            R34 K51 ["Padding"]
      223 NAMECALL                         R32 R25 K52 ["GetAttribute"]
      225 CALL                             R32 2 1
      226 GETTABLEKS                       R33 R6 K53 ["PureComponent"]
      228 LOADK                            R35 K54 ["StyleRuleView"]
      229 NAMECALL                         R33 R33 K55 ["extend"]
      231 CALL                             R33 2 1
      232 NEWCLOSURE                       R34 P0
      233 CAPTURE                          VAL R6
      234 CAPTURE                          REF R33
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R22
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R31
      249 SETTABLEKS                       R34 R33 K56 ["init"]
      251 DUPCLOSURE                       R34 K57 [PROTO_19]
      252 SETTABLEKS                       R34 R33 K58 ["createPreviewInstanceFromSelectorLink"]
      254 NEWCLOSURE                       R34 P2
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R21
      258 CAPTURE                          REF R33
      259 SETTABLEKS                       R34 R33 K59 ["getPreview"]
      261 NEWCLOSURE                       R34 P3
      262 CAPTURE                          REF R33
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R27
      265 SETTABLEKS                       R34 R33 K60 ["getDerivedStateFromProps"]
      267 DUPCLOSURE                       R34 K61 [PROTO_24]
      268 SETTABLEKS                       R34 R33 K62 ["didUpdate"]
      270 DUPCLOSURE                       R34 K63 [PROTO_25]
      271 CAPTURE                          VAL R3
      272 SETTABLEKS                       R34 R33 K64 ["didMount"]
      274 DUPCLOSURE                       R34 K65 [PROTO_26]
      275 SETTABLEKS                       R34 R33 K66 ["willUnmount"]
      277 DUPCLOSURE                       R34 K67 [PROTO_27]
      278 CAPTURE                          VAL R23
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R13
      283 CAPTURE                          VAL R15
      284 CAPTURE                          VAL R30
      285 CAPTURE                          VAL R29
      286 SETTABLEKS                       R34 R33 K68 ["render"]
      288 MOVE                             R34 R10
      289 DUPTABLE                         R35 K69 [{"Localization"}]
      290 SETTABLEKS                       R11 R35 K19 ["Localization"]
      292 CALL                             R34 1 1
      293 MOVE                             R35 R33
      294 CALL                             R34 1 1
      295 MOVE                             R33 R34
      296 GETTABLEKS                       R34 R7 K70 ["connect"]
      298 DUPCLOSURE                       R35 K71 [PROTO_28]
      299 MOVE                             R36 R24
      300 CALL                             R34 2 1
      301 MOVE                             R35 R33
      302 CALL                             R34 1 -1
      303 CLOSEUPVALS                      R33
      304 RETURN                           R34 -1
