PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["expanded"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["getPreview"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["StyleRule"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["canApplyVariant"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["StyleRule"]
       12 MOVE                             R3 R0
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K4 ["instancesHaveVariant"]
       17 MOVE                             R3 R0
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K2 ["props"]
       21 GETTABLEKS                       R4 R5 K3 ["StyleRule"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tagConnections"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R0 R3 K0 ["tagConnections"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["onSelectionChanged"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectorChain"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["StyleRule"]
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
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K3 ["tagConnections"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["selection"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K1 ["Class"]
        9 JUMPIFEQKS                       R5 K2 [""] ; [+14]
       11 GETTABLEKS                       R5 R4 K3 ["ClassName"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K1 ["Class"]
       16 JUMPIFEQ                         R5 R6 ; [+7]
       18 GETIMPORT                        R5 K5 [print]
       20 LOADK                            R6 K6 ["Error: Selector class does not match ClassName on"]
       21 MOVE                             R7 R4
       22 CALL                             R5 2 0
       23 JUMP                             ; [+114]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K7 ["hasVariant"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K8 ["All"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+8]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K9 ["removeVariant"]
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
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R6 R7 K12 ["addStyleLinkToRoot"]
       50 MOVE                             R7 R4
       51 MOVE                             R8 R5
       52 CALL                             R6 2 0
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R5 R6 K12 ["addStyleLinkToRoot"]
       57 MOVE                             R6 R4
       58 GETUPVAL                         R7 4
       59 CALL                             R5 2 0
       60 GETIMPORT                        R5 K14 [pcall]
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 2
       66 JUMPIFNOT                        R5 ; [+71]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R7 R8 K1 ["Class"]
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
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R12 R13 K9 ["removeVariant"]
       91 GETTABLEKS                       R13 R11 K17 ["Instance"]
       93 MOVE                             R14 R4
       94 CALL                             R12 2 0
       95 FORGLOOP                         R7 2 ; [-20]
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R7 R8 K18 ["applyVariant"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R0 K2 ["hasVariant"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["Mixed"]
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
       49 DUPTABLE                         R6 K16 [{"eventType", "path"}]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R8 R9 K17 ["ButtonPressed"]
       53 GETTABLEKS                       R7 R8 K18 ["rawValue"]
       55 CALL                             R7 0 1
       56 SETTABLEKS                       R7 R6 K14 ["eventType"]
       58 LOADK                            R7 K19 ["StyleRuleView/ApplyTag"]
       59 SETTABLEKS                       R7 R6 K15 ["path"]
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 -1
       63 CALL                             R3 -1 0
       64 GETUPVAL                         R4 5
       65 GETTABLEKS                       R3 R4 K20 ["getSelectorChain"]
       67 MOVE                             R4 R2
       68 CALL                             R3 1 1
       69 GETUPVAL                         R4 6
       70 DUPTABLE                         R5 K24 [{"Name", "DisplayName", "DoChange"}]
       71 LOADK                            R6 K25 ["StyleEditor.ApplyTags"]
       72 SETTABLEKS                       R6 R5 K21 ["Name"]
       74 LOADK                            R6 K26 ["StyleEditor - Apply Tag(s)"]
       75 SETTABLEKS                       R6 R5 K22 ["DisplayName"]
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U8
       85 SETTABLEKS                       R6 R5 K23 ["DoChange"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 0
       89 DUPTABLE                         R6 K27 [{"hasVariant"}]
       90 GETTABLEKS                       R8 R0 K2 ["hasVariant"]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R9 R10 K28 ["All"]
       95 JUMPIFNOTEQ                      R8 R9 ; [+5]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R7 R8 K29 ["None"]
      100 JUMP                             ; [+3]
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R7 R8 K28 ["All"]
      104 SETTABLEKS                       R7 R6 K2 ["hasVariant"]
      106 NAMECALL                         R4 R4 K30 ["setState"]
      108 CALL                             R4 2 0
      109 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["state"]
       10 GETTABLEKS                       R1 R2 K3 ["instance"]
       12 JUMPIFEQ                         R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 LOADNIL                          R0
       16 GETUPVAL                         R1 1
       17 LOADK                            R3 K4 ["DataModel"]
       18 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       20 CALL                             R1 2 1
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K6 ["Parent"]
       26 LOADB                            R3 0
       27 JUMPIFEQKNIL                     R1 ; [+5]
       29 LOADK                            R5 K7 ["GuiObject"]
       30 NAMECALL                         R3 R1 K8 ["IsA"]
       32 CALL                             R3 2 1
       33 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       35 LOADK                            R4 K9 ["Preview hierarchy should be parented to ImageLabel background"]
       36 GETIMPORT                        R2 K11 [assert]
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R4 R1 K12 ["AbsoluteSize"]
       41 GETTABLEKS                       R3 R4 K13 ["X"]
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
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R5 R6 K15 ["getStyledPropertyValue"]
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
       79 GETTABLEKS                       R10 R0 K13 ["X"]
       81 GETTABLEKS                       R9 R10 K20 ["Scale"]
       83 GETTABLEKS                       R12 R3 K6 ["Parent"]
       85 GETTABLEKS                       R11 R12 K12 ["AbsoluteSize"]
       87 GETTABLEKS                       R10 R11 K13 ["X"]
       89 MUL                              R8 R9 R10
       90 GETTABLEKS                       R10 R0 K13 ["X"]
       92 GETTABLEKS                       R9 R10 K21 ["Offset"]
       94 ADD                              R7 R8 R9
       95 FASTCALL2                        MATH_MIN R2 R7 ; [+4]
       97 MOVE                             R6 R2
       98 GETIMPORT                        R5 K24 [math.min]
      100 CALL                             R5 2 1
      101 GETUPVAL                         R7 1
      102 JUMPIFNOTEQ                      R3 R7 ; [+3]
      104 LOADN                            R6 200
      105 JUMP                             ; [+6]
      106 GETTABLEKS                       R8 R3 K6 ["Parent"]
      108 GETTABLEKS                       R7 R8 K12 ["AbsoluteSize"]
      110 GETTABLEKS                       R6 R7 K25 ["Y"]
      112 LOADN                            R8 44
      113 GETTABLEKS                       R12 R0 K25 ["Y"]
      115 GETTABLEKS                       R11 R12 K20 ["Scale"]
      117 MUL                              R10 R11 R6
      118 GETTABLEKS                       R12 R0 K25 ["Y"]
      120 GETTABLEKS                       R11 R12 K21 ["Offset"]
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
      146 GETTABLEKS                       R9 R4 K25 ["Y"]
      148 GETTABLEKS                       R8 R9 K20 ["Scale"]
      150 GETTABLEKS                       R11 R4 K25 ["Y"]
      152 GETTABLEKS                       R10 R11 K21 ["Offset"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["styleRulePropertyChangedConnection"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["styleRulePropertyChangedConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+14]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K2 ["styleRuleChangedConnection"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K2 ["styleRuleChangedConnection"]
       19 NAMECALL                         R0 R0 K1 ["Disconnect"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["styleRuleChangedConnection"]
       26 GETUPVAL                         R0 0
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K0 ["styleRulePropertyChangedConnection"]
       30 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["instance"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["updatePreviewSize"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["state"]
       12 GETTABLEKS                       R1 R2 K1 ["instance"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 DUPTABLE                         R2 K5 [{"StyleRule", "hasVariant", "canApplyVariant", "instance"}]
        4 GETTABLEKS                       R3 R1 K1 ["StyleRule"]
        6 SETTABLEKS                       R3 R2 K1 ["StyleRule"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K6 ["instancesHaveVariant"]
       11 GETTABLEKS                       R4 R0 K7 ["selection"]
       13 GETTABLEKS                       R5 R1 K1 ["StyleRule"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K2 ["hasVariant"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K3 ["canApplyVariant"]
       21 GETTABLEKS                       R4 R1 K1 ["StyleRule"]
       23 GETTABLEKS                       R5 R0 K7 ["selection"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K3 ["canApplyVariant"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K8 ["getPreview"]
       31 GETTABLEKS                       R4 R1 K1 ["StyleRule"]
       33 CALL                             R3 1 1
       34 JUMPIF                           R3 ; [+3]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R3 R4 K9 ["None"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeStyleRuleConnection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["props"]
        7 GETTABLEKS                       R0 R1 K2 ["StyleRule"]
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["props"]
       15 GETTABLEKS                       R2 R3 K2 ["StyleRule"]
       17 GETTABLEKS                       R1 R2 K3 ["StyleRulePropertyChanged"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R1 R1 K4 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K5 ["styleRulePropertyChangedConnection"]
       26 GETUPVAL                         R0 1
       27 JUMPIFNOT                        R0 ; [+18]
       28 GETUPVAL                         R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K1 ["props"]
       32 GETTABLEKS                       R2 R3 K2 ["StyleRule"]
       34 GETTABLEKS                       R1 R2 K6 ["Changed"]
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 NAMECALL                         R1 R1 K4 ["Connect"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K7 ["styleRuleChangedConnection"]
       46 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K3 [{"expanded", "instance", "selection"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["expanded"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["instance"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["selection"]
       11 SETTABLEKS                       R1 R0 K4 ["state"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K5 ["createRef"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K6 ["containerRef"]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R1 R0 K7 ["expandedChanged"]
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K8 ["onSelectionChanged"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K9 ["removeTagConnections"]
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R1 R0 K10 ["createTagConnections"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U12
       51 SETTABLEKS                       R1 R0 K11 ["onApplyStyle"]
       53 NEWCLOSURE                       R1 P5
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U13
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          UPVAL U15
       59 SETTABLEKS                       R1 R0 K12 ["updatePreviewSize"]
       61 NEWCLOSURE                       R1 P6
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U16
       64 SETTABLEKS                       R1 R0 K13 ["removeStyleRuleConnection"]
       66 NEWCLOSURE                       R1 P7
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U16
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U0
       72 SETTABLEKS                       R1 R0 K14 ["createStyleRuleConnection"]
       74 RETURN                           R0 0

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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["None"]
       10 RETURN                           R1 1
       11 GETIMPORT                        R1 K3 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 2
       17 JUMPIF                           R1 ; [+4]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K1 ["None"]
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
       33 GETTABLEKS                       R13 R12 K5 ["Class"]
       35 JUMPIFNOTEQKS                    R13 K6 [""] ; [+2]
       37 LOADB                            R7 0
       38 GETUPVAL                         R14 2
       39 GETTABLEKS                       R13 R14 K7 ["createPreviewInstanceFromSelectorLink"]
       41 MOVE                             R14 R12
       42 CALL                             R13 1 1
       43 MOVE                             R5 R13
       44 JUMPIFNOT                        R5 ; [+74]
       45 GETTABLEKS                       R13 R12 K5 ["Class"]
       47 JUMPIFNOT                        R13 ; [+13]
       48 LOADB                            R13 0
       49 GETTABLEKS                       R15 R12 K5 ["Class"]
       51 LENGTH                           R14 R15
       52 LOADN                            R15 0
       53 JUMPIFNOTLT                      R15 R14 ; [+7]
       55 GETTABLEKS                       R14 R12 K8 ["Combinator"]
       57 JUMPIFNOTEQKS                    R14 K9 ["Pseudo"] ; [+2]
       59 LOADB                            R13 0 +1
       60 LOADB                            R13 1
       61 JUMPIFNOT                        R4 ; [+4]
       62 JUMPIFNOT                        R13 ; [+4]
       63 SETTABLEKS                       R4 R5 K10 ["Parent"]
       65 JUMP                             ; [+1]
       66 MOVE                             R6 R5
       67 GETTABLEKS                       R14 R12 K8 ["Combinator"]
       69 JUMPIFEQKS                       R14 K9 ["Pseudo"] ; [+48]
       71 LOADK                            R16 K11 ["GuiObject"]
       72 NAMECALL                         R14 R5 K12 ["IsA"]
       74 CALL                             R14 2 1
       75 JUMPIFNOT                        R14 ; [+42]
       76 GETIMPORT                        R14 K15 [UDim2.fromScale]
       78 LOADK                            R15 K16 [0.5]
       79 LOADK                            R16 K16 [0.5]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R5 K17 ["Position"]
       83 GETIMPORT                        R14 K20 [Vector2.new]
       85 LOADK                            R15 K16 [0.5]
       86 LOADK                            R16 K16 [0.5]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R5 K21 ["AnchorPoint"]
       90 LENGTH                           R16 R3
       91 GETTABLE                         R15 R3 R16
       92 LENGTH                           R14 R15
       93 JUMPIFEQ                         R11 R14 ; [+23]
       95 GETUPVAL                         R15 2
       96 GETTABLEKS                       R14 R15 K7 ["createPreviewInstanceFromSelectorLink"]
       98 LENGTH                           R17 R3
       99 GETTABLE                         R16 R3 R17
      100 ADDK                             R17 R11 K22 [1]
      101 GETTABLE                         R15 R16 R17
      102 CALL                             R14 1 1
      103 JUMPIFNOT                        R14 ; [+13]
      104 LOADK                            R17 K23 ["UIComponent"]
      105 NAMECALL                         R15 R14 K12 ["IsA"]
      107 CALL                             R15 2 1
      108 JUMPIF                           R15 ; [+8]
      109 LOADN                            R15 1
      110 SETTABLEKS                       R15 R5 K24 ["BackgroundTransparency"]
      112 GETIMPORT                        R15 K3 [pcall]
      114 NEWCLOSURE                       R16 P1
      115 CAPTURE                          REF R5
      116 CALL                             R15 1 1
      117 MOVE                             R4 R5
      118 OR                               R7 R7 R13
      119 FORGLOOP                         R8 2 ; [-87]
      121 JUMPIFNOT                        R6 ; [+19]
      122 MOVE                             R8 R7
      123 JUMPIFNOT                        R8 ; [+11]
      124 MOVE                             R8 R5
      125 JUMPIFNOT                        R8 ; [+9]
      126 LOADK                            R10 K11 ["GuiObject"]
      127 NAMECALL                         R8 R5 K12 ["IsA"]
      129 CALL                             R8 2 1
      130 JUMPIF                           R8 ; [+4]
      131 LOADK                            R10 K23 ["UIComponent"]
      132 NAMECALL                         R8 R5 K12 ["IsA"]
      134 CALL                             R8 2 1
      135 JUMPIFNOT                        R8 ; [+2]
      136 CLOSEUPVALS                      R5
      137 RETURN                           R6 1
      138 NAMECALL                         R9 R6 K25 ["Remove"]
      140 CALL                             R9 1 0
      141 GETUPVAL                         R9 0
      142 GETTABLEKS                       R8 R9 K1 ["None"]
      144 CLOSEUPVALS                      R5
      145 RETURN                           R8 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+2]
        2 LOADB                            R2 0
        3 JUMP                             ; [+7]
        4 GETTABLEKS                       R3 R0 K0 ["IsDirty"]
        6 LOADN                            R4 0
        7 JUMPIFLT                         R4 R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETTABLEKS                       R3 R0 K1 ["StyleRule"]
       13 GETTABLEKS                       R4 R1 K1 ["StyleRule"]
       15 JUMPIFNOTEQ                      R3 R4 ; [+2]
       17 JUMPIFNOT                        R2 ; [+38]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K2 ["getPreview"]
       21 GETTABLEKS                       R4 R0 K1 ["StyleRule"]
       23 CALL                             R3 1 1
       24 JUMPIF                           R3 ; [+3]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K3 ["None"]
       28 DUPTABLE                         R4 K7 [{"StyleRule", "hasVariant", "canApplyVariant", "instance"}]
       29 GETTABLEKS                       R5 R0 K1 ["StyleRule"]
       31 SETTABLEKS                       R5 R4 K1 ["StyleRule"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K8 ["instancesHaveVariant"]
       36 GETTABLEKS                       R6 R1 K9 ["selection"]
       38 GETTABLEKS                       R7 R0 K1 ["StyleRule"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K4 ["hasVariant"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R5 R6 K5 ["canApplyVariant"]
       46 GETTABLEKS                       R6 R0 K1 ["StyleRule"]
       48 GETTABLEKS                       R7 R1 K9 ["selection"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K5 ["canApplyVariant"]
       53 SETTABLEKS                       R3 R4 K6 ["instance"]
       55 RETURN                           R4 1
       56 GETUPVAL                         R3 0
       57 JUMPIFNOT                        R3 ; [+2]
       58 LOADNIL                          R3
       59 RETURN                           R3 1
       60 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R3 R1 K0 ["StyleRule"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["StyleRule"]
        6 JUMPIFEQ                         R3 R4 ; [+10]
        8 GETTABLEKS                       R3 R0 K2 ["removeTagConnections"]
       10 CALL                             R3 0 0
       11 GETTABLEKS                       R3 R0 K3 ["createTagConnections"]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R0 K4 ["createStyleRuleConnection"]
       16 CALL                             R3 0 0
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SelectionChanged"]
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
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["None"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+3]
       11 LOADK                            R3 K4 ["Apply"]
       12 JUMP                             ; [+10]
       13 GETTABLEKS                       R4 R2 K2 ["hasVariant"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K5 ["Mixed"]
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
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K5 ["Mixed"]
       37 JUMPIFEQ                         R7 R8 ; [+4]
       39 GETTABLEKS                       R7 R2 K10 ["canApplyVariant"]
       41 NOT                              R6 R7
       42 GETTABLEKS                       R7 R1 K11 ["Localization"]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K12 ["createElement"]
       47 GETUPVAL                         R9 2
       48 NEWTABLE                         R10 1 0
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K8 ["Tag"]
       53 LOADK                            R12 K13 ["X-ColumnS X-FitY X-Right"]
       54 SETTABLE                         R12 R10 R11
       55 DUPTABLE                         R11 K16 [{"Container", "ScrollingView"}]
       56 GETUPVAL                         R13 1
       57 GETTABLEKS                       R12 R13 K12 ["createElement"]
       59 GETUPVAL                         R13 2
       60 NEWTABLE                         R14 2 0
       62 LOADN                            R15 1
       63 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K8 ["Tag"]
       68 LOADK                            R16 K18 ["X-FitY"]
       69 SETTABLE                         R16 R14 R15
       70 DUPTABLE                         R15 K21 [{"ApplyStyleButton", "Preview"}]
       71 GETUPVAL                         R18 3
       72 GETTABLEKS                       R17 R18 K22 ["ruleHasTags"]
       74 GETTABLEKS                       R18 R1 K23 ["StyleRule"]
       76 CALL                             R17 1 1
       77 JUMPIFNOT                        R17 ; [+37]
       78 GETUPVAL                         R17 1
       79 GETTABLEKS                       R16 R17 K12 ["createElement"]
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
      102 GETUPVAL                         R20 1
      103 GETTABLEKS                       R19 R20 K8 ["Tag"]
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
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R16 R17 K12 ["createElement"]
      121 GETUPVAL                         R17 6
      122 DUPTABLE                         R18 K38 [{"Expanded", "MaxSize", "OnExpandedChanged", "PreviewInstance", "StyleRule", "OnPreviewInstanceChanged"}]
      123 GETTABLEKS                       R19 R2 K39 ["expanded"]
      125 SETTABLEKS                       R19 R18 K33 ["Expanded"]
      127 GETIMPORT                        R19 K42 [Vector2.new]
      129 LOADK                            R20 K43 [∞]
      130 LOADN                            R21 44
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
      156 GETUPVAL                         R13 1
      157 GETTABLEKS                       R12 R13 K12 ["createElement"]
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
      174 GETUPVAL                         R16 1
      175 GETTABLEKS                       R15 R16 K8 ["Tag"]
      177 LOADK                            R16 K50 ["FlexFill"]
      178 SETTABLE                         R16 R14 R15
      179 DUPTABLE                         R15 K51 [{"StyleRule"}]
      180 GETUPVAL                         R17 1
      181 GETTABLEKS                       R16 R17 K12 ["createElement"]
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
        0 DUPTABLE                         R1 K1 [{"IsDirty"}]
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADNIL                          R2
        4 JUMP                             ; [+4]
        5 GETTABLEKS                       R3 R0 K2 ["Window"]
        7 GETTABLEKS                       R2 R3 K0 ["IsDirty"]
        9 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
       11 RETURN                           R1 1

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
       31 GETIMPORT                        R8 K9 [script]
       33 GETTABLEKS                       R7 R8 K10 ["Parent"]
       35 GETTABLEKS                       R6 R7 K10 ["Parent"]
       37 GETTABLEKS                       R5 R6 K10 ["Parent"]
       39 GETIMPORT                        R6 K12 [require]
       41 GETTABLEKS                       R8 R5 K13 ["Packages"]
       43 GETTABLEKS                       R7 R8 K14 ["React"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K12 [require]
       48 GETTABLEKS                       R9 R5 K13 ["Packages"]
       50 GETTABLEKS                       R8 R9 K15 ["RoactRodux"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K12 [require]
       55 GETTABLEKS                       R10 R5 K13 ["Packages"]
       57 GETTABLEKS                       R9 R10 K16 ["Framework"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R8 K17 ["ContextServices"]
       62 GETTABLEKS                       R10 R9 K18 ["withContext"]
       64 GETTABLEKS                       R11 R9 K19 ["Localization"]
       66 GETTABLEKS                       R12 R8 K20 ["UI"]
       68 GETTABLEKS                       R13 R12 K21 ["IconButton"]
       70 GETTABLEKS                       R14 R12 K22 ["Pane"]
       72 GETTABLEKS                       R16 R8 K23 ["Styling"]
       74 GETTABLEKS                       R15 R16 K24 ["joinTags"]
       76 GETIMPORT                        R16 K12 [require]
       78 GETTABLEKS                       R18 R5 K25 ["Src"]
       80 GETTABLEKS                       R17 R18 K26 ["Types"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K12 [require]
       85 GETTABLEKS                       R20 R5 K25 ["Src"]
       87 GETTABLEKS                       R19 R20 K27 ["Reducers"]
       89 GETTABLEKS                       R18 R19 K28 ["RootReducer"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K12 [require]
       94 GETTABLEKS                       R22 R5 K25 ["Src"]
       96 GETTABLEKS                       R21 R22 K29 ["Resources"]
       98 GETTABLEKS                       R20 R21 K30 ["Telemetry"]
      100 GETTABLEKS                       R19 R20 K31 ["ActionClickedEvent"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K12 [require]
      105 GETTABLEKS                       R23 R5 K25 ["Src"]
      107 GETTABLEKS                       R22 R23 K32 ["Thunks"]
      109 GETTABLEKS                       R21 R22 K30 ["Telemetry"]
      111 GETTABLEKS                       R20 R21 K33 ["SendTelemetryEvent"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K12 [require]
      116 GETTABLEKS                       R23 R5 K25 ["Src"]
      118 GETTABLEKS                       R22 R23 K34 ["Flags"]
      120 GETTABLEKS                       R21 R22 K35 ["getFFlagStyleEditorStyleLinkInsertWhenNil"]
      122 CALL                             R20 1 1
      123 CALL                             R20 0 1
      124 GETIMPORT                        R21 K12 [require]
      126 GETTABLEKS                       R24 R5 K25 ["Src"]
      128 GETTABLEKS                       R23 R24 K34 ["Flags"]
      130 GETTABLEKS                       R22 R23 K36 ["getFFlagStyleEditorNewRuleRenameFix"]
      132 CALL                             R21 1 1
      133 CALL                             R21 0 1
      134 GETIMPORT                        R22 K12 [require]
      136 GETTABLEKS                       R25 R5 K25 ["Src"]
      138 GETTABLEKS                       R24 R25 K37 ["Enums"]
      140 GETTABLEKS                       R23 R24 K38 ["ActionClickedEventType"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K12 [require]
      145 GETTABLEKS                       R26 R5 K25 ["Src"]
      147 GETTABLEKS                       R25 R26 K37 ["Enums"]
      149 GETTABLEKS                       R24 R25 K39 ["InstancesHaveVariant"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K12 [require]
      154 GETTABLEKS                       R27 R5 K25 ["Src"]
      156 GETTABLEKS                       R26 R27 K40 ["Util"]
      158 GETTABLEKS                       R25 R26 K41 ["mapDispatchToProps"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K12 [require]
      163 GETTABLEKS                       R28 R5 K25 ["Src"]
      165 GETTABLEKS                       R27 R28 K29 ["Resources"]
      167 GETTABLEKS                       R26 R27 K42 ["PluginStyles"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K12 [require]
      172 GETTABLEKS                       R29 R5 K25 ["Src"]
      174 GETTABLEKS                       R28 R29 K40 ["Util"]
      176 GETTABLEKS                       R27 R28 K43 ["recordChange"]
      178 CALL                             R26 1 1
      179 MOVE                             R27 R0
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K12 [require]
      183 GETTABLEKS                       R30 R5 K25 ["Src"]
      185 GETTABLEKS                       R29 R30 K40 ["Util"]
      187 GETTABLEKS                       R28 R29 K44 ["SelectorHelpers"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K12 [require]
      192 GETTABLEKS                       R31 R5 K25 ["Src"]
      194 GETTABLEKS                       R30 R31 K40 ["Util"]
      196 GETTABLEKS                       R29 R30 K23 ["Styling"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K12 [require]
      201 GETTABLEKS                       R32 R5 K25 ["Src"]
      203 GETTABLEKS                       R31 R32 K45 ["Components"]
      205 GETTABLEKS                       R30 R31 K46 ["SelectorPropertyTable"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K12 [require]
      210 GETTABLEKS                       R33 R5 K25 ["Src"]
      212 GETTABLEKS                       R32 R33 K45 ["Components"]
      214 GETTABLEKS                       R31 R32 K47 ["StyleRulePreview"]
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
      249 CAPTURE                          VAL R21
      250 SETTABLEKS                       R34 R33 K56 ["init"]
      252 DUPCLOSURE                       R34 K57 [PROTO_19]
      253 SETTABLEKS                       R34 R33 K58 ["createPreviewInstanceFromSelectorLink"]
      255 NEWCLOSURE                       R34 P2
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R4
      258 CAPTURE                          REF R33
      259 SETTABLEKS                       R34 R33 K59 ["getPreview"]
      261 NEWCLOSURE                       R34 P3
      262 CAPTURE                          VAL R21
      263 CAPTURE                          REF R33
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R27
      266 SETTABLEKS                       R34 R33 K60 ["getDerivedStateFromProps"]
      268 DUPCLOSURE                       R34 K61 [PROTO_24]
      269 SETTABLEKS                       R34 R33 K62 ["didUpdate"]
      271 DUPCLOSURE                       R34 K63 [PROTO_25]
      272 CAPTURE                          VAL R3
      273 SETTABLEKS                       R34 R33 K64 ["didMount"]
      275 DUPCLOSURE                       R34 K65 [PROTO_26]
      276 SETTABLEKS                       R34 R33 K66 ["willUnmount"]
      278 DUPCLOSURE                       R34 K67 [PROTO_27]
      279 CAPTURE                          VAL R23
      280 CAPTURE                          VAL R6
      281 CAPTURE                          VAL R14
      282 CAPTURE                          VAL R27
      283 CAPTURE                          VAL R13
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R30
      286 CAPTURE                          VAL R29
      287 SETTABLEKS                       R34 R33 K68 ["render"]
      289 MOVE                             R34 R10
      290 DUPTABLE                         R35 K69 [{"Localization"}]
      291 SETTABLEKS                       R11 R35 K19 ["Localization"]
      293 CALL                             R34 1 1
      294 MOVE                             R35 R33
      295 CALL                             R34 1 1
      296 MOVE                             R33 R34
      297 GETTABLEKS                       R34 R7 K70 ["connect"]
      299 DUPCLOSURE                       R35 K71 [PROTO_28]
      300 CAPTURE                          VAL R21
      301 MOVE                             R36 R24
      302 CALL                             R34 2 1
      303 MOVE                             R35 R33
      304 CALL                             R34 1 -1
      305 CLOSEUPVALS                      R33
      306 RETURN                           R34 -1
