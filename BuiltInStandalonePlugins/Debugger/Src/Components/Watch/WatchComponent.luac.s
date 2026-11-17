PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["calculateVisibleComponents"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["calculateVisibleComponents"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Analytics"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["WatchAdded"]
        8 LOADK                            R4 K3 ["WatchWindow"]
        9 NAMECALL                         R1 R1 K4 ["report"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["props"]
       15 GETTABLEKS                       R1 R1 K5 ["OnAddExpression"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["props"]
       22 GETTABLEKS                       R1 R1 K6 ["OnSetTab"]
       24 LOADK                            R2 K7 ["Watches"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["props"]
       29 GETTABLEKS                       R2 R1 K8 ["CurrentStepStateBundle"]
       31 JUMPIFEQKNIL                     R2 ; [+29]
       33 GETTABLEKS                       R3 R2 K9 ["debuggerStateToken"]
       35 JUMPIFEQKNIL                     R3 ; [+25]
       37 GETIMPORT                        R4 K11 [game]
       39 LOADK                            R6 K12 ["DebuggerConnectionManager"]
       40 NAMECALL                         R4 R4 K13 ["GetService"]
       42 CALL                             R4 2 1
       43 GETTABLEKS                       R7 R3 K14 ["debuggerConnectionId"]
       45 NAMECALL                         R5 R4 K15 ["GetConnectionById"]
       47 CALL                             R5 2 1
       48 JUMPIFEQKNIL                     R5 ; [+12]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K0 ["props"]
       53 GETTABLEKS                       R6 R6 K16 ["OnExecuteExpressionForAllFrames"]
       55 MOVE                             R7 R0
       56 MOVE                             R8 R5
       57 MOVE                             R9 R3
       58 GETTABLEKS                       R10 R2 K17 ["threadId"]
       60 CALL                             R6 4 0
       61 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K5 [{[1] = False, ["shouldShowDropdownIcon"] = True, ["shouldShowSearchBar"] = False}]
        1 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K5 [{[1] = False, ["shouldShowDropdownIcon"] = True, ["shouldShowSearchBar"] = True}]
        1 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K5 [{[1] = True, ["shouldShowDropdownIcon"] = False, ["shouldShowSearchBar"] = True}]
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["componentRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K3 ["x"]
        9 JUMPIFNOTEQKNIL                  R0 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["state"]
       15 GETTABLEKS                       R2 R2 K5 ["shouldShowDropdown"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["state"]
       20 GETTABLEKS                       R3 R3 K6 ["shouldShowDropdownIcon"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["state"]
       25 GETTABLEKS                       R4 R4 K7 ["shouldShowSearchBar"]
       27 LOADN                            R5 420
       28 JUMPIFNOTLT                      R1 R5 ; [+10]
       30 JUMPIFNOT                        R3 ; [+2]
       31 JUMPIF                           R2 ; [+1]
       32 JUMPIFNOT                        R4 ; [+26]
       33 GETUPVAL                         R5 0
       34 DUPCLOSURE                       R7 K8 [PROTO_3]
       35 NAMECALL                         R5 R5 K9 ["setState"]
       37 CALL                             R5 2 0
       38 RETURN                           R0 0
       39 LOADN                            R5 527
       40 JUMPIFNOTLT                      R1 R5 ; [+10]
       42 JUMPIF                           R2 ; [+2]
       43 JUMPIFNOT                        R3 ; [+1]
       44 JUMPIF                           R4 ; [+14]
       45 GETUPVAL                         R5 0
       46 DUPCLOSURE                       R7 K10 [PROTO_4]
       47 NAMECALL                         R5 R5 K9 ["setState"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0
       51 JUMPIFNOT                        R2 ; [+2]
       52 JUMPIF                           R3 ; [+1]
       53 JUMPIF                           R4 ; [+5]
       54 GETUPVAL                         R5 0
       55 DUPCLOSURE                       R7 K11 [PROTO_5]
       56 NAMECALL                         R5 R5 K9 ["setState"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["DebuggerUIService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R1 K4 ["ExpressionAdded"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R2 R2 K5 ["Connect"]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K6 ["createRef"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R0 K7 ["componentRef"]
       20 DUPTABLE                         R2 K13 [{["shouldShowDropdown"] = True, ["shouldShowDropdownIcon"] = False, ["shouldShowSearchBar"] = True}]
       21 SETTABLEKS                       R2 R0 K14 ["state"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K15 ["calculateVisibleComponents"]
       27 DUPCLOSURE                       R2 K16 [PROTO_7]
       28 SETTABLEKS                       R2 R0 K17 ["getTreeChildren"]
       30 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 DUPTABLE                         R4 K5 [{"Variables", "Watches"}]
        7 LOADK                            R7 K6 ["Watch"]
        8 LOADK                            R8 K7 ["VariablesTab"]
        9 NAMECALL                         R5 R2 K8 ["getText"]
       11 CALL                             R5 3 1
       12 SETTABLEKS                       R5 R4 K3 ["Variables"]
       14 LOADK                            R7 K6 ["Watch"]
       15 LOADK                            R8 K9 ["WatchesTab"]
       16 NAMECALL                         R5 R2 K8 ["getText"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K4 ["Watches"]
       21 NEWTABLE                         R5 0 2
       23 DUPTABLE                         R6 K12 [{["Label"], ["Key"] = "Variables"}]
       24 GETTABLEKS                       R7 R4 K3 ["Variables"]
       26 SETTABLEKS                       R7 R6 K10 ["Label"]
       28 DUPTABLE                         R7 K13 [{["Label"], ["Key"] = "Watches"}]
       29 GETTABLEKS                       R8 R4 K4 ["Watches"]
       31 SETTABLEKS                       R8 R7 K10 ["Label"]
       33 SETLIST                          R5 R6 2 [1]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K14 ["HEADER_HEIGHT"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K16 ["BUTTON_PADDING"]
       41 MULK                             R8 R9 K15 [2]
       42 ADD                              R6 R7 R8
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K17 ["createElement"]
       46 GETUPVAL                         R8 2
       47 NEWTABLE                         R9 8 0
       49 GETIMPORT                        R10 K20 [UDim2.fromScale]
       51 LOADN                            R11 1
       52 LOADN                            R12 1
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K21 ["Size"]
       56 LOADK                            R10 K22 ["Box"]
       57 SETTABLEKS                       R10 R9 K23 ["Style"]
       59 GETIMPORT                        R10 K27 [Enum.FillDirection.Vertical]
       61 SETTABLEKS                       R10 R9 K28 ["Layout"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K29 ["Ref"]
       66 GETTABLEKS                       R11 R0 K30 ["componentRef"]
       68 SETTABLE                         R11 R9 R10
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K31 ["Change"]
       72 GETTABLEKS                       R10 R10 K32 ["AbsoluteSize"]
       74 GETTABLEKS                       R11 R0 K33 ["calculateVisibleComponents"]
       76 SETTABLE                         R11 R9 R10
       77 DUPTABLE                         R10 K36 [{"HeaderView", "BodyView"}]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K17 ["createElement"]
       81 GETUPVAL                         R12 2
       82 DUPTABLE                         R13 K41 [{["LayoutOrder"] = 1, ["Size"], ["Style"] = "Box", ["Spacing"], ["Padding"]}]
       83 GETIMPORT                        R14 K43 [UDim2.new]
       85 LOADN                            R15 1
       86 LOADN                            R16 0
       87 LOADN                            R17 0
       88 MOVE                             R18 R6
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K21 ["Size"]
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K16 ["BUTTON_PADDING"]
       95 SETTABLEKS                       R14 R13 K39 ["Spacing"]
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K16 ["BUTTON_PADDING"]
      100 SETTABLEKS                       R14 R13 K40 ["Padding"]
      102 DUPTABLE                         R14 K46 [{"TabView", "RightView"}]
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R15 R15 K17 ["createElement"]
      106 GETUPVAL                         R16 3
      107 DUPTABLE                         R17 K48 [{["LayoutOrder"] = 1, ["Tabs"], ["Size"]}]
      108 SETTABLEKS                       R5 R17 K47 ["Tabs"]
      110 GETIMPORT                        R18 K43 [UDim2.new]
      112 LOADK                            R19 K49 [0.4]
      113 LOADN                            R20 0
      114 LOADN                            R21 1
      115 LOADN                            R22 0
      116 CALL                             R18 4 1
      117 SETTABLEKS                       R18 R17 K21 ["Size"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K44 ["TabView"]
      122 GETUPVAL                         R15 1
      123 GETTABLEKS                       R15 R15 K17 ["createElement"]
      125 GETUPVAL                         R16 2
      126 DUPTABLE                         R17 K54 [{["AnchorPoint"], ["Position"], ["Size"], ["LayoutOrder"] = 2, ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 10}]
      127 GETIMPORT                        R18 K56 [Vector2.new]
      129 LOADN                            R19 1
      130 LOADN                            R20 0
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K50 ["AnchorPoint"]
      134 GETIMPORT                        R18 K43 [UDim2.new]
      136 LOADN                            R19 1
      137 LOADN                            R20 0
      138 LOADN                            R21 0
      139 LOADN                            R22 0
      140 CALL                             R18 4 1
      141 SETTABLEKS                       R18 R17 K51 ["Position"]
      143 GETIMPORT                        R18 K43 [UDim2.new]
      145 LOADK                            R19 K57 [0.6]
      146 LOADN                            R20 0
      147 LOADN                            R21 1
      148 LOADN                            R22 0
      149 CALL                             R18 4 1
      150 SETTABLEKS                       R18 R17 K21 ["Size"]
      152 GETIMPORT                        R18 K59 [Enum.HorizontalAlignment.Right]
      154 SETTABLEKS                       R18 R17 K52 ["HorizontalAlignment"]
      156 GETIMPORT                        R18 K61 [Enum.FillDirection.Horizontal]
      158 SETTABLEKS                       R18 R17 K28 ["Layout"]
      160 DUPTABLE                         R18 K65 [{"ScopeDropdownView", "SearchBarView", "ColumnsDropdownView"}]
      161 GETTABLEKS                       R19 R1 K66 ["IsVariablesTab"]
      163 JUMPIFNOT                        R19 ; [+31]
      164 GETTABLEKS                       R20 R0 K67 ["state"]
      166 GETTABLEKS                       R20 R20 K68 ["shouldShowDropdown"]
      168 JUMPIF                           R20 ; [+5]
      169 GETTABLEKS                       R19 R0 K67 ["state"]
      171 GETTABLEKS                       R19 R19 K69 ["shouldShowDropdownIcon"]
      173 JUMPIFNOT                        R19 ; [+21]
      174 GETUPVAL                         R19 1
      175 GETTABLEKS                       R19 R19 K17 ["createElement"]
      177 GETUPVAL                         R20 4
      178 DUPTABLE                         R21 K71 [{["LayoutOrder"] = 1, ["Size"], ["ShouldShowDropdownIcon"]}]
      179 GETIMPORT                        R22 K43 [UDim2.new]
      181 LOADK                            R23 K49 [0.4]
      182 LOADN                            R24 0
      183 LOADN                            R25 1
      184 LOADN                            R26 0
      185 CALL                             R22 4 1
      186 SETTABLEKS                       R22 R21 K21 ["Size"]
      188 GETTABLEKS                       R22 R0 K67 ["state"]
      190 GETTABLEKS                       R22 R22 K69 ["shouldShowDropdownIcon"]
      192 SETTABLEKS                       R22 R21 K70 ["ShouldShowDropdownIcon"]
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K62 ["ScopeDropdownView"]
      197 GETTABLEKS                       R19 R0 K67 ["state"]
      199 GETTABLEKS                       R19 R19 K72 ["shouldShowSearchBar"]
      201 JUMPIFNOT                        R19 ; [+15]
      202 GETUPVAL                         R19 1
      203 GETTABLEKS                       R19 R19 K17 ["createElement"]
      205 GETUPVAL                         R20 5
      206 DUPTABLE                         R21 K73 [{["LayoutOrder"] = 2, ["Size"]}]
      207 GETIMPORT                        R22 K43 [UDim2.new]
      209 LOADK                            R23 K57 [0.6]
      210 LOADN                            R24 0
      211 LOADN                            R25 1
      212 LOADN                            R26 0
      213 CALL                             R22 4 1
      214 SETTABLEKS                       R22 R21 K21 ["Size"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K63 ["SearchBarView"]
      219 GETTABLEKS                       R20 R1 K66 ["IsVariablesTab"]
      221 JUMPIFNOT                        R20 ; [+11]
      222 GETUPVAL                         R19 1
      223 GETTABLEKS                       R19 R19 K17 ["createElement"]
      225 GETUPVAL                         R20 6
      226 DUPTABLE                         R21 K76 [{["LayoutOrder"] = 3, ["AutomaticSize"]}]
      227 GETIMPORT                        R22 K78 [Enum.AutomaticSize.X]
      229 SETTABLEKS                       R22 R21 K75 ["AutomaticSize"]
      231 CALL                             R19 2 1
      232 JUMP                             ; [+10]
      233 GETUPVAL                         R19 1
      234 GETTABLEKS                       R19 R19 K17 ["createElement"]
      236 GETUPVAL                         R20 7
      237 DUPTABLE                         R21 K76 [{["LayoutOrder"] = 3, ["AutomaticSize"]}]
      238 GETIMPORT                        R22 K78 [Enum.AutomaticSize.X]
      240 SETTABLEKS                       R22 R21 K75 ["AutomaticSize"]
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K64 ["ColumnsDropdownView"]
      245 CALL                             R15 3 1
      246 SETTABLEKS                       R15 R14 K45 ["RightView"]
      248 CALL                             R11 3 1
      249 SETTABLEKS                       R11 R10 K34 ["HeaderView"]
      251 GETUPVAL                         R11 1
      252 GETTABLEKS                       R11 R11 K17 ["createElement"]
      254 GETUPVAL                         R12 2
      255 DUPTABLE                         R13 K79 [{["LayoutOrder"] = 2, ["Size"], ["Style"] = "Box"}]
      256 GETIMPORT                        R14 K43 [UDim2.new]
      258 LOADN                            R15 1
      259 LOADN                            R16 0
      260 LOADN                            R17 1
      261 MINUS                            R18 R6
      262 CALL                             R14 4 1
      263 SETTABLEKS                       R14 R13 K21 ["Size"]
      265 DUPTABLE                         R14 K81 [{"DisplayTableView"}]
      266 GETUPVAL                         R15 1
      267 GETTABLEKS                       R15 R15 K17 ["createElement"]
      269 GETUPVAL                         R16 8
      270 DUPTABLE                         R17 K82 [{"Stylizer"}]
      271 SETTABLEKS                       R3 R17 K2 ["Stylizer"]
      273 CALL                             R15 2 1
      274 SETTABLEKS                       R15 R14 K80 ["DisplayTableView"]
      276 CALL                             R11 3 1
      277 SETTABLEKS                       R11 R10 K35 ["BodyView"]
      279 CALL                             R7 3 -1
      280 RETURN                           R7 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R4 R2 K1 ["debuggerConnectionIdToDST"]
        4 GETTABLEKS                       R5 R2 K2 ["currentDebuggerConnectionId"]
        6 GETTABLE                         R3 R4 R5
        7 GETTABLEKS                       R5 R2 K3 ["debuggerConnectionIdToCurrentThreadId"]
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETTABLEKS                       R5 R2 K3 ["debuggerConnectionIdToCurrentThreadId"]
       12 GETTABLEKS                       R6 R2 K2 ["currentDebuggerConnectionId"]
       14 GETTABLE                         R4 R5 R6
       15 JUMPIF                           R4 ; [+1]
       16 LOADNIL                          R4
       17 JUMPIFNOT                        R4 ; [+19]
       18 GETTABLEKS                       R6 R2 K4 ["currentFrameMap"]
       20 JUMPIFNOT                        R6 ; [+16]
       21 GETTABLEKS                       R6 R2 K2 ["currentDebuggerConnectionId"]
       23 JUMPIFNOT                        R6 ; [+13]
       24 GETTABLEKS                       R7 R2 K4 ["currentFrameMap"]
       26 GETTABLEKS                       R8 R2 K2 ["currentDebuggerConnectionId"]
       28 GETTABLE                         R6 R7 R8
       29 JUMPIFNOT                        R6 ; [+7]
       30 GETTABLEKS                       R7 R2 K4 ["currentFrameMap"]
       32 GETTABLEKS                       R8 R2 K2 ["currentDebuggerConnectionId"]
       34 GETTABLE                         R6 R7 R8
       35 GETTABLE                         R5 R6 R4
       36 JUMPIF                           R5 ; [+1]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 JUMPIFEQKNIL                     R3 ; [+13]
       41 JUMPIFEQKNIL                     R4 ; [+11]
       43 JUMPIFEQKNIL                     R5 ; [+9]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K5 ["ctor"]
       48 MOVE                             R8 R3
       49 MOVE                             R9 R4
       50 MOVE                             R10 R5
       51 CALL                             R7 3 1
       52 MOVE                             R6 R7
       53 DUPTABLE                         R7 K8 [{"IsVariablesTab", "CurrentStepStateBundle"}]
       54 GETTABLEKS                       R9 R0 K9 ["Watch"]
       56 GETTABLEKS                       R9 R9 K10 ["currentTab"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K11 ["Variables"]
       61 JUMPIFEQ                         R9 R10 ; [+2]
       63 LOADB                            R8 0 +1
       64 LOADB                            R8 1
       65 SETTABLEKS                       R8 R7 K6 ["IsVariablesTab"]
       67 SETTABLEKS                       R6 R7 K7 ["CurrentStepStateBundle"]
       69 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_14:
        0 DUPTABLE                         R1 K3 [{"OnAddExpression", "OnSetTab", "OnExecuteExpressionForAllFrames"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnAddExpression"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["OnSetTab"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["OnExecuteExpressionForAllFrames"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R6 R4 K11 ["Analytics"]
       38 GETTABLEKS                       R7 R4 K12 ["Localization"]
       40 GETTABLEKS                       R8 R3 K13 ["Style"]
       42 GETTABLEKS                       R8 R8 K14 ["Stylizer"]
       44 GETTABLEKS                       R9 R3 K15 ["UI"]
       46 GETTABLEKS                       R10 R9 K16 ["Pane"]
       48 GETIMPORT                        R11 K4 [require]
       50 GETIMPORT                        R12 K1 [script]
       52 GETTABLEKS                       R12 R12 K2 ["Parent"]
       54 GETTABLEKS                       R12 R12 K17 ["DisplayTable"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETIMPORT                        R13 K1 [script]
       61 GETTABLEKS                       R13 R13 K2 ["Parent"]
       63 GETTABLEKS                       R13 R13 K18 ["ControlledTabs"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K4 [require]
       68 GETIMPORT                        R14 K1 [script]
       70 GETTABLEKS                       R14 R14 K2 ["Parent"]
       72 GETTABLEKS                       R14 R14 K19 ["ScopeDropdownField"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K4 [require]
       77 GETIMPORT                        R15 K1 [script]
       79 GETTABLEKS                       R15 R15 K2 ["Parent"]
       81 GETTABLEKS                       R15 R15 K20 ["VariablesDropdownField"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETIMPORT                        R16 K1 [script]
       88 GETTABLEKS                       R16 R16 K2 ["Parent"]
       90 GETTABLEKS                       R16 R16 K21 ["MyWatchesDropdownField"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETIMPORT                        R17 K1 [script]
       97 GETTABLEKS                       R17 R17 K2 ["Parent"]
       99 GETTABLEKS                       R17 R17 K22 ["SearchBarField"]
      101 CALL                             R16 1 1
      102 GETTABLEKS                       R17 R0 K23 ["Src"]
      104 GETTABLEKS                       R18 R17 K24 ["Models"]
      106 GETIMPORT                        R19 K4 [require]
      108 GETTABLEKS                       R20 R18 K25 ["Watch"]
      110 GETTABLEKS                       R20 R20 K26 ["TableTab"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K4 [require]
      115 GETTABLEKS                       R21 R18 K27 ["StepStateBundle"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K4 [require]
      120 GETTABLEKS                       R22 R17 K28 ["Util"]
      122 GETTABLEKS                       R22 R22 K29 ["Constants"]
      124 CALL                             R21 1 1
      125 GETIMPORT                        R22 K4 [require]
      127 GETTABLEKS                       R23 R17 K30 ["Actions"]
      129 GETTABLEKS                       R23 R23 K25 ["Watch"]
      131 GETTABLEKS                       R23 R23 K31 ["AddExpression"]
      133 CALL                             R22 1 1
      134 GETIMPORT                        R23 K4 [require]
      136 GETTABLEKS                       R24 R17 K30 ["Actions"]
      138 GETTABLEKS                       R24 R24 K25 ["Watch"]
      140 GETTABLEKS                       R24 R24 K32 ["SetTab"]
      142 CALL                             R23 1 1
      143 GETIMPORT                        R24 K4 [require]
      145 GETTABLEKS                       R25 R17 K33 ["Thunks"]
      147 GETTABLEKS                       R25 R25 K25 ["Watch"]
      149 GETTABLEKS                       R25 R25 K34 ["ExecuteExpressionForAllFrames"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K4 [require]
      154 GETTABLEKS                       R26 R17 K35 ["Resources"]
      156 GETTABLEKS                       R26 R26 K36 ["AnalyticsEventNames"]
      158 CALL                             R25 1 1
      159 GETTABLEKS                       R26 R1 K37 ["PureComponent"]
      161 LOADK                            R28 K38 ["WatchComponent"]
      162 NAMECALL                         R26 R26 K39 ["extend"]
      164 CALL                             R26 2 1
      165 DUPCLOSURE                       R27 K40 [PROTO_0]
      166 SETTABLEKS                       R27 R26 K41 ["didMount"]
      168 DUPCLOSURE                       R27 K42 [PROTO_1]
      169 SETTABLEKS                       R27 R26 K43 ["didUpdate"]
      171 DUPCLOSURE                       R27 K44 [PROTO_8]
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R27 R26 K45 ["init"]
      176 DUPCLOSURE                       R27 K46 [PROTO_9]
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R11
      186 SETTABLEKS                       R27 R26 K47 ["render"]
      188 MOVE                             R27 R5
      189 DUPTABLE                         R28 K48 [{"Analytics", "Localization", "Stylizer"}]
      190 SETTABLEKS                       R6 R28 K11 ["Analytics"]
      192 SETTABLEKS                       R7 R28 K12 ["Localization"]
      194 SETTABLEKS                       R8 R28 K14 ["Stylizer"]
      196 CALL                             R27 1 1
      197 MOVE                             R28 R26
      198 CALL                             R27 1 1
      199 MOVE                             R26 R27
      200 GETTABLEKS                       R27 R2 K49 ["connect"]
      202 DUPCLOSURE                       R28 K50 [PROTO_10]
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R19
      205 DUPCLOSURE                       R29 K51 [PROTO_14]
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R24
      209 CALL                             R27 2 1
      210 MOVE                             R28 R26
      211 CALL                             R27 1 1
      212 MOVE                             R26 R27
      213 RETURN                           R26 1
