PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Annotation"]
        4 GETTABLEKS                       R3 R3 K1 ["Name"]
        6 JUMPIFEQ                         R0 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["Annotation"]
       14 GETTABLEKS                       R1 R1 K1 ["Name"]
       16 JUMPIFEQ                         R0 R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["RequestInfo"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Annotation"]
        6 GETTABLEKS                       R2 R2 K2 ["Name"]
        8 JUMPIFNOTEQ                      R0 R2 ; [+7]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R3 R1 K0 ["RequestInfo"]
       13 GETTABLEKS                       R3 R3 K3 ["Status"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SelectionChanged"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["Annotation"]
       12 LOADK                            R3 K3 ["Resolved"]
       13 NAMECALL                         R1 R1 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 4
       17 NAMECALL                         R1 R1 K5 ["Connect"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K2 ["Annotation"]
       23 LOADK                            R4 K6 ["Contents"]
       24 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 4
       28 NAMECALL                         R2 R2 K5 ["Connect"]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K2 ["Annotation"]
       34 LOADK                            R5 K7 ["ReplyCount"]
       35 NAMECALL                         R3 R3 K4 ["GetPropertyChangedSignal"]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R5 4
       39 NAMECALL                         R3 R3 K5 ["Connect"]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K2 ["Annotation"]
       45 LOADK                            R6 K8 ["TaggedUsersInThread"]
       46 NAMECALL                         R4 R4 K9 ["GetAttributeChangedSignal"]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R6 4
       50 NAMECALL                         R4 R4 K5 ["Connect"]
       52 CALL                             R4 2 1
       53 GETUPVAL                         R5 0
       54 LOADK                            R7 K10 ["SyncStandaloneAnnotation"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R5 R5 K1 ["OnInvoke"]
       60 CALL                             R5 3 1
       61 NEWCLOSURE                       R6 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+58]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 LOADK                            R1 K1 ["Frame"]
        8 DUPTABLE                         R2 K9 [{["LayoutOrder"] = -1, ["ZIndex"] = 100, ["Size"], ["BackgroundTransparency"] = 1}]
        9 GETIMPORT                        R3 K12 [UDim2.fromScale]
       11 LOADN                            R4 1
       12 LOADN                            R5 0
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K6 ["Size"]
       16 DUPTABLE                         R3 K14 [{"Alert"}]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K0 ["createElement"]
       20 GETUPVAL                         R5 3
       21 DUPTABLE                         R6 K21 [{["Message"], ["AnchorPoint"], ["Position"], ["Size"], ["IsPopup"] = True, ["OnClose"]}]
       22 GETUPVAL                         R7 4
       23 GETUPVAL                         R8 1
       24 GETUPVAL                         R9 5
       25 GETTABLEKS                       R9 R9 K22 ["Annotation"]
       27 GETUPVAL                         R10 6
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K15 ["Message"]
       31 GETIMPORT                        R7 K25 [Vector2.new]
       33 LOADK                            R8 K26 [0.5]
       34 LOADN                            R9 0
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K16 ["AnchorPoint"]
       38 GETIMPORT                        R7 K12 [UDim2.fromScale]
       40 LOADK                            R8 K26 [0.5]
       41 LOADN                            R9 0
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K17 ["Position"]
       45 GETIMPORT                        R7 K12 [UDim2.fromScale]
       47 LOADK                            R8 K27 [0.75]
       48 LOADN                            R9 0
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K6 ["Size"]
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 SETTABLEKS                       R7 R6 K20 ["OnClose"]
       57 CALL                             R4 2 1
       58 SETTABLEKS                       R4 R3 K13 ["Alert"]
       60 CALL                             R0 3 1
       61 RETURN                           R0 1
       62 LOADNIL                          R0
       63 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagCOLLAB8964DoubleClickZoomTo"]
        3 JUMPIFNOT                        R0 ; [+40]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["GetFocusedElement"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 3
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 JUMPIFNOT                        R0 ; [+9]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K2 ["zoomTo"]
       17 GETUPVAL                         R2 5
       18 GETUPVAL                         R3 6
       19 GETTABLEKS                       R3 R3 K3 ["Annotation"]
       21 CALL                             R1 2 0
       22 JUMP                             ; [+8]
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K4 ["selectAnnotation"]
       26 GETUPVAL                         R2 5
       27 GETUPVAL                         R3 6
       28 GETTABLEKS                       R3 R3 K3 ["Annotation"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K5 ["syncEditAnnotation"]
       34 GETUPVAL                         R2 5
       35 GETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R3 K3 ["Annotation"]
       38 DUPTABLE                         R4 K7 [{"SingleClick"}]
       39 NOT                              R5 R0
       40 SETTABLEKS                       R5 R4 K6 ["SingleClick"]
       42 CALL                             R1 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R0 2
       45 NAMECALL                         R0 R0 K1 ["GetFocusedElement"]
       47 CALL                             R0 1 1
       48 JUMPIF                           R0 ; [+43]
       49 GETUPVAL                         R0 3
       50 LOADB                            R1 1
       51 CALL                             R0 1 0
       52 GETUPVAL                         R0 7
       53 NAMECALL                         R0 R0 K8 ["isDoubleClick"]
       55 CALL                             R0 1 1
       56 JUMPIFNOT                        R0 ; [+18]
       57 GETUPVAL                         R0 4
       58 GETTABLEKS                       R0 R0 K2 ["zoomTo"]
       60 GETUPVAL                         R1 5
       61 GETUPVAL                         R2 6
       62 GETTABLEKS                       R2 R2 K3 ["Annotation"]
       64 CALL                             R0 2 0
       65 GETUPVAL                         R0 4
       66 GETTABLEKS                       R0 R0 K5 ["syncEditAnnotation"]
       68 GETUPVAL                         R1 5
       69 GETUPVAL                         R2 6
       70 GETTABLEKS                       R2 R2 K3 ["Annotation"]
       72 DUPTABLE                         R3 K10 [{["SingleClick"] = False}]
       73 CALL                             R0 3 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R0 4
       76 GETTABLEKS                       R0 R0 K4 ["selectAnnotation"]
       78 GETUPVAL                         R1 5
       79 GETUPVAL                         R2 6
       80 GETTABLEKS                       R2 R2 K3 ["Annotation"]
       82 CALL                             R0 2 0
       83 GETUPVAL                         R0 4
       84 GETTABLEKS                       R0 R0 K5 ["syncEditAnnotation"]
       86 GETUPVAL                         R1 5
       87 GETUPVAL                         R2 6
       88 GETTABLEKS                       R2 R2 K3 ["Annotation"]
       90 DUPTABLE                         R3 K12 [{["SingleClick"] = True}]
       91 CALL                             R0 3 0
       92 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFocusedElement"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Dropdown"]
        2 LOADK                            R4 K1 ["ZoomTo"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+18]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["zoomTo"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["Annotation"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["syncEditAnnotation"]
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["Annotation"]
       23 DUPTABLE                         R4 K8 [{["SingleClick"] = False}]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setAnnotationResolved"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Annotation"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Annotation"]
       10 GETTABLEKS                       R4 R4 K2 ["Resolved"]
       12 NOT                              R3 R4
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["deleteAnnotation"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["Annotation"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R3 R3 K0 ["use"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K2 ["useState"]
       20 LOADB                            R6 0
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K2 ["useState"]
       25 LOADB                            R8 0
       26 CALL                             R7 1 2
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K2 ["useState"]
       30 GETUPVAL                         R10 5
       31 GETTABLEKS                       R10 R10 K3 ["None"]
       33 CALL                             R9 1 2
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K4 ["useReducer"]
       37 GETUPVAL                         R12 6
       38 LOADN                            R13 0
       39 CALL                             R11 2 2
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K2 ["useState"]
       43 GETUPVAL                         R14 7
       44 GETTABLEKS                       R14 R14 K5 ["new"]
       46 CALL                             R14 0 -1
       47 CALL                             R13 -1 1
       48 GETUPVAL                         R14 4
       49 GETTABLEKS                       R14 R14 K2 ["useState"]
       51 LOADB                            R15 0
       52 CALL                             R14 1 2
       53 GETUPVAL                         R16 4
       54 GETTABLEKS                       R16 R16 K6 ["useEffect"]
       56 NEWCLOSURE                       R17 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R10
       63 NEWTABLE                         R18 0 1
       65 GETTABLEKS                       R19 R0 K7 ["Annotation"]
       67 SETLIST                          R18 R19 1 [1]
       69 CALL                             R16 2 0
       70 GETUPVAL                         R16 4
       71 GETTABLEKS                       R16 R16 K8 ["useMemo"]
       73 NEWCLOSURE                       R17 P1
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R10
       82 CAPTURE                          UPVAL U5
       83 NEWTABLE                         R18 0 2
       85 MOVE                             R19 R9
       86 GETTABLEKS                       R20 R0 K7 ["Annotation"]
       88 SETLIST                          R18 R19 2 [1]
       90 CALL                             R16 2 1
       91 GETUPVAL                         R17 4
       92 GETTABLEKS                       R17 R17 K9 ["createElement"]
       94 LOADK                            R18 K10 ["Frame"]
       95 NEWTABLE                         R19 2 0
       97 GETTABLEKS                       R20 R0 K11 ["Position"]
       99 SETTABLEKS                       R20 R19 K11 ["Position"]
      101 GETUPVAL                         R20 4
      102 GETTABLEKS                       R20 R20 K12 ["Tag"]
      104 GETUPVAL                         R21 11
      105 LOADK                            R22 K13 ["Component-AnnotationListCard"]
      106 JUMPIFNOT                        R7 ; [+2]
      107 LOADK                            R23 K14 ["Selected"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R23
      110 CALL                             R21 2 1
      111 SETTABLE                         R21 R19 R20
      112 DUPTABLE                         R20 K17 [{"BackgroundFrame", "Popup"}]
      113 GETUPVAL                         R21 4
      114 GETTABLEKS                       R21 R21 K9 ["createElement"]
      116 LOADK                            R22 K10 ["Frame"]
      117 DUPTABLE                         R23 K19 [{"BackgroundColor3"}]
      118 GETTABLEKS                       R24 R4 K20 ["Color"]
      120 GETTABLEKS                       R24 R24 K21 ["Surface"]
      122 GETTABLEKS                       R24 R24 K22 ["Surface_100"]
      124 GETTABLEKS                       R24 R24 K23 ["Color3"]
      126 SETTABLEKS                       R24 R23 K18 ["BackgroundColor3"]
      128 DUPTABLE                         R24 K25 [{"Card"}]
      129 GETUPVAL                         R25 4
      130 GETTABLEKS                       R25 R25 K9 ["createElement"]
      132 LOADK                            R26 K26 ["TextButton"]
      133 NEWTABLE                         R27 8 0
      135 GETTABLEKS                       R28 R0 K27 ["LayoutOrder"]
      137 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      139 LOADK                            R28 K28 [""]
      140 SETTABLEKS                       R28 R27 K29 ["Text"]
      142 GETUPVAL                         R28 4
      143 GETTABLEKS                       R28 R28 K30 ["Event"]
      145 GETTABLEKS                       R28 R28 K31 ["MouseButton1Click"]
      147 NEWCLOSURE                       R29 P2
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R8
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R13
      156 SETTABLE                         R29 R27 R28
      157 GETUPVAL                         R28 4
      158 GETTABLEKS                       R28 R28 K30 ["Event"]
      160 GETTABLEKS                       R28 R28 K32 ["MouseEnter"]
      162 NEWCLOSURE                       R29 P3
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R6
      165 SETTABLE                         R29 R27 R28
      166 GETUPVAL                         R28 4
      167 GETTABLEKS                       R28 R28 K30 ["Event"]
      169 GETTABLEKS                       R28 R28 K33 ["MouseLeave"]
      171 NEWCLOSURE                       R29 P4
      172 CAPTURE                          VAL R6
      173 SETTABLE                         R29 R27 R28
      174 GETUPVAL                         R28 4
      175 GETTABLEKS                       R28 R28 K12 ["Tag"]
      177 GETUPVAL                         R29 11
      178 LOADK                            R30 K34 ["X-Center X-Column"]
      179 JUMPIFNOT                        R5 ; [+2]
      180 LOADK                            R31 K35 ["Hovered"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R31
      183 JUMPIFNOT                        R7 ; [+2]
      184 LOADK                            R32 K14 ["Selected"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R32
      187 CALL                             R29 3 1
      188 SETTABLE                         R29 R27 R28
      189 DUPTABLE                         R28 K40 [{"ErrorBanner", "Header", "Comment", "ReplyCount"}]
      190 SETTABLEKS                       R16 R28 K36 ["ErrorBanner"]
      192 GETUPVAL                         R29 4
      193 GETTABLEKS                       R29 R29 K9 ["createElement"]
      195 GETUPVAL                         R30 14
      196 DUPTABLE                         R31 K43 [{["Annotation"], ["DataModel"] = "Standalone"}]
      197 GETTABLEKS                       R32 R0 K7 ["Annotation"]
      199 SETTABLEKS                       R32 R31 K7 ["Annotation"]
      201 DUPTABLE                         R32 K46 [{"MoreIcon", "ResolveButton"}]
      202 GETUPVAL                         R33 4
      203 GETTABLEKS                       R33 R33 K9 ["createElement"]
      205 GETUPVAL                         R34 15
      206 DUPTABLE                         R35 K50 [{"DropdownItems", "OnSelect", "Disabled"}]
      207 DUPTABLE                         R36 K53 [{"ZoomTo", "Delete"}]
      208 LOADK                            R39 K54 ["Dropdown"]
      209 LOADK                            R40 K51 ["ZoomTo"]
      210 NAMECALL                         R37 R2 K55 ["getText"]
      212 CALL                             R37 3 1
      213 SETTABLEKS                       R37 R36 K51 ["ZoomTo"]
      215 GETTABLEKS                       R38 R0 K7 ["Annotation"]
      217 GETTABLEKS                       R38 R38 K56 ["AuthorId"]
      219 GETUPVAL                         R39 16
      220 NAMECALL                         R39 R39 K57 ["GetUserId"]
      222 CALL                             R39 1 1
      223 JUMPIFNOTEQ                      R38 R39 ; [+29]
      225 GETUPVAL                         R37 4
      226 GETTABLEKS                       R37 R37 K9 ["createElement"]
      228 LOADK                            R38 K26 ["TextButton"]
      229 NEWTABLE                         R39 4 0
      231 LOADK                            R42 K54 ["Dropdown"]
      232 LOADK                            R43 K58 ["DeleteThread"]
      233 NAMECALL                         R40 R2 K55 ["getText"]
      235 CALL                             R40 3 1
      236 SETTABLEKS                       R40 R39 K29 ["Text"]
      238 GETUPVAL                         R40 4
      239 GETTABLEKS                       R40 R40 K30 ["Event"]
      241 GETTABLEKS                       R40 R40 K59 ["Activated"]
      243 NEWCLOSURE                       R41 P5
      244 CAPTURE                          VAL R15
      245 SETTABLE                         R41 R39 R40
      246 GETUPVAL                         R40 4
      247 GETTABLEKS                       R40 R40 K12 ["Tag"]
      249 LOADK                            R41 K60 ["Component-DropdownItem Delete"]
      250 SETTABLE                         R41 R39 R40
      251 CALL                             R37 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R37
      254 SETTABLEKS                       R37 R36 K52 ["Delete"]
      256 SETTABLEKS                       R36 R35 K47 ["DropdownItems"]
      258 NEWCLOSURE                       R36 P6
      259 CAPTURE                          VAL R2
      260 CAPTURE                          UPVAL U13
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R36 R35 K48 ["OnSelect"]
      265 GETUPVAL                         R37 5
      266 GETTABLEKS                       R37 R37 K61 ["InProgress"]
      268 JUMPIFEQ                         R9 R37 ; [+2]
      270 LOADB                            R36 0 +1
      271 LOADB                            R36 1
      272 SETTABLEKS                       R36 R35 K49 ["Disabled"]
      274 CALL                             R33 2 1
      275 SETTABLEKS                       R33 R32 K44 ["MoreIcon"]
      277 GETUPVAL                         R33 4
      278 GETTABLEKS                       R33 R33 K9 ["createElement"]
      280 GETUPVAL                         R34 17
      281 DUPTABLE                         R35 K64 [{"Resolved", "OnClick", "Disabled"}]
      282 GETTABLEKS                       R36 R0 K7 ["Annotation"]
      284 GETTABLEKS                       R36 R36 K62 ["Resolved"]
      286 SETTABLEKS                       R36 R35 K62 ["Resolved"]
      288 NEWCLOSURE                       R36 P7
      289 CAPTURE                          UPVAL U13
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R0
      292 SETTABLEKS                       R36 R35 K63 ["OnClick"]
      294 GETUPVAL                         R37 5
      295 GETTABLEKS                       R37 R37 K61 ["InProgress"]
      297 JUMPIFEQ                         R9 R37 ; [+2]
      299 LOADB                            R36 0 +1
      300 LOADB                            R36 1
      301 SETTABLEKS                       R36 R35 K49 ["Disabled"]
      303 CALL                             R33 2 1
      304 SETTABLEKS                       R33 R32 K45 ["ResolveButton"]
      306 CALL                             R29 3 1
      307 SETTABLEKS                       R29 R28 K37 ["Header"]
      309 GETUPVAL                         R29 4
      310 GETTABLEKS                       R29 R29 K9 ["createElement"]
      312 GETUPVAL                         R30 18
      313 DUPTABLE                         R31 K67 [{["LayoutOrder"] = 0, ["Annotation"], ["OnContentChanged"]}]
      314 GETTABLEKS                       R32 R0 K7 ["Annotation"]
      316 SETTABLEKS                       R32 R31 K7 ["Annotation"]
      318 GETTABLEKS                       R32 R0 K66 ["OnContentChanged"]
      320 SETTABLEKS                       R32 R31 K66 ["OnContentChanged"]
      322 CALL                             R29 2 1
      323 SETTABLEKS                       R29 R28 K38 ["Comment"]
      325 GETTABLEKS                       R30 R0 K7 ["Annotation"]
      327 GETTABLEKS                       R30 R30 K39 ["ReplyCount"]
      329 JUMPIFEQKN                       R30 K65 [0] ; [+47]
      331 GETUPVAL                         R29 4
      332 GETTABLEKS                       R29 R29 K9 ["createElement"]
      334 LOADK                            R30 K68 ["TextLabel"]
      335 DUPTABLE                         R31 K70 [{["Text"], ["LayoutOrder"] = 2}]
      336 GETTABLEKS                       R33 R0 K7 ["Annotation"]
      338 GETTABLEKS                       R33 R33 K39 ["ReplyCount"]
      340 JUMPIFNOTEQKN                    R33 K71 [1] ; [+7]
      342 LOADK                            R34 K24 ["Card"]
      343 LOADK                            R35 K72 ["SingleReply"]
      344 NAMECALL                         R32 R2 K55 ["getText"]
      346 CALL                             R32 3 1
      347 JUMP                             ; [+25]
      348 LOADK                            R34 K24 ["Card"]
      349 LOADK                            R35 K73 ["ManyReplies"]
      350 DUPTABLE                         R36 K75 [{"replyCount"}]
      351 GETTABLEKS                       R38 R0 K7 ["Annotation"]
      353 GETTABLEKS                       R38 R38 K39 ["ReplyCount"]
      355 LOADN                            R39 100
      356 JUMPIFNOTLT                      R38 R39 ; [+10]
      358 GETIMPORT                        R37 K78 [string.format]
      360 LOADK                            R38 K79 ["%d"]
      361 GETTABLEKS                       R39 R0 K7 ["Annotation"]
      363 GETTABLEKS                       R39 R39 K39 ["ReplyCount"]
      365 CALL                             R37 2 1
      366 JUMP                             ; [+1]
      367 LOADK                            R37 K80 ["99+"]
      368 SETTABLEKS                       R37 R36 K74 ["replyCount"]
      370 NAMECALL                         R32 R2 K55 ["getText"]
      372 CALL                             R32 4 1
      373 SETTABLEKS                       R32 R31 K29 ["Text"]
      375 CALL                             R29 2 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R29
      378 SETTABLEKS                       R29 R28 K39 ["ReplyCount"]
      380 CALL                             R25 3 1
      381 SETTABLEKS                       R25 R24 K24 ["Card"]
      383 CALL                             R21 3 1
      384 SETTABLEKS                       R21 R20 K15 ["BackgroundFrame"]
      386 MOVE                             R21 R14
      387 JUMPIFNOT                        R21 ; [+24]
      388 GETUPVAL                         R21 4
      389 GETTABLEKS                       R21 R21 K9 ["createElement"]
      391 GETUPVAL                         R22 19
      392 DUPTABLE                         R23 K83 [{"Text", "OnCancel", "OnDelete"}]
      393 LOADK                            R26 K84 ["ConfirmDeleteDialog"]
      394 LOADK                            R27 K58 ["DeleteThread"]
      395 NAMECALL                         R24 R2 K55 ["getText"]
      397 CALL                             R24 3 1
      398 SETTABLEKS                       R24 R23 K29 ["Text"]
      400 NEWCLOSURE                       R24 P8
      401 CAPTURE                          VAL R15
      402 SETTABLEKS                       R24 R23 K81 ["OnCancel"]
      404 NEWCLOSURE                       R24 P9
      405 CAPTURE                          VAL R15
      406 CAPTURE                          UPVAL U13
      407 CAPTURE                          VAL R1
      408 CAPTURE                          VAL R0
      409 SETTABLEKS                       R24 R23 K82 ["OnDelete"]
      411 CALL                             R21 2 1
      412 SETTABLEKS                       R21 R20 K16 ["Popup"]
      414 CALL                             R17 3 -1
      415 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["CrossDMCommunication"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K12 ["Standalone"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Bin"]
       36 GETTABLEKS                       R5 R5 K14 ["Common"]
       38 GETTABLEKS                       R5 R5 K15 ["defineLuaFlags"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K16 ["Types"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K17 ["ContextServices"]
       50 GETTABLEKS                       R7 R2 K18 ["Styling"]
       52 GETTABLEKS                       R7 R7 K19 ["joinTags"]
       54 GETTABLEKS                       R8 R6 K20 ["Plugin"]
       56 GETTABLEKS                       R9 R6 K21 ["Localization"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Packages"]
       62 GETTABLEKS                       R11 R11 K22 ["Foundation"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K23 ["Hooks"]
       67 GETTABLEKS                       R11 R11 K24 ["useTokens"]
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K9 ["Src"]
       73 GETTABLEKS                       R13 R13 K25 ["Components"]
       75 GETTABLEKS                       R13 R13 K26 ["AnnotationHeader"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K9 ["Src"]
       82 GETTABLEKS                       R14 R14 K25 ["Components"]
       84 GETTABLEKS                       R14 R14 K27 ["AnnotationContents"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R0 K9 ["Src"]
       91 GETTABLEKS                       R15 R15 K25 ["Components"]
       93 GETTABLEKS                       R15 R15 K28 ["ResolveButton"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Src"]
      100 GETTABLEKS                       R16 R16 K25 ["Components"]
      102 GETTABLEKS                       R16 R16 K29 ["DropdownButton"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K9 ["Src"]
      109 GETTABLEKS                       R17 R17 K30 ["Contexts"]
      111 GETTABLEKS                       R17 R17 K31 ["InputListenerContext"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K9 ["Src"]
      118 GETTABLEKS                       R18 R18 K10 ["Util"]
      120 GETTABLEKS                       R18 R18 K32 ["rerenderReducer"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K9 ["Src"]
      127 GETTABLEKS                       R19 R19 K33 ["Enums"]
      129 GETTABLEKS                       R19 R19 K34 ["UIRequestStatus"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K9 ["Src"]
      136 GETTABLEKS                       R20 R20 K10 ["Util"]
      138 GETTABLEKS                       R20 R20 K35 ["AnnotationRequestUtils"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R0 K9 ["Src"]
      145 GETTABLEKS                       R21 R21 K25 ["Components"]
      147 GETTABLEKS                       R21 R21 K36 ["ErrorAlert"]
      149 CALL                             R20 1 1
      150 GETTABLEKS                       R21 R19 K37 ["IsErrorStatus"]
      152 GETTABLEKS                       R22 R19 K38 ["GetErrorMessage"]
      154 GETTABLEKS                       R23 R2 K10 ["Util"]
      156 GETTABLEKS                       R23 R23 K39 ["DoubleClickDetector"]
      158 GETIMPORT                        R24 K5 [require]
      160 GETTABLEKS                       R25 R0 K9 ["Src"]
      162 GETTABLEKS                       R25 R25 K25 ["Components"]
      164 GETTABLEKS                       R25 R25 K40 ["CancelDeleteDialog"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K42 [game]
      169 LOADK                            R27 K43 ["StudioService"]
      170 NAMECALL                         R25 R25 K44 ["GetService"]
      172 CALL                             R25 2 1
      173 DUPCLOSURE                       R26 K45 [PROTO_14]
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R24
      194 GETTABLEKS                       R27 R1 K46 ["memo"]
      196 MOVE                             R28 R26
      197 CALL                             R27 1 -1
      198 RETURN                           R27 -1
