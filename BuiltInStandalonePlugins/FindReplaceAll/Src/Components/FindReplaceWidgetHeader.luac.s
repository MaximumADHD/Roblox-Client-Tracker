PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findActivationData"]
        3 JUMPIFNOT                        R0 ; [+28]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+9]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["findActivationData"]
       11 GETTABLEKS                       R1 R1 K2 ["searchText"]
       13 CALL                             R0 1 0
       14 JUMP                             ; [+14]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["findActivationData"]
       18 GETTABLEKS                       R0 R0 K2 ["searchText"]
       20 JUMPIFEQKS                       R0 K1 [""] ; [+8]
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K0 ["findActivationData"]
       26 GETTABLEKS                       R1 R1 K2 ["searchText"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 3
       30 LOADB                            R1 0
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{[1] = "X-Fill FindReplaceAll-Icon FindBarSearchIcon data-testid=FindBarSearchIcon"}]
        1 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K7 [{[1] = "MatchCase", ["onClick"], ["enabled"], ["tooltipText"], ["tags"] = "data-testid=CaseSensitiveButton MatchCaseIcon"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["enabled"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K8 ["disable"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K9 ["enable"]
       14 SETTABLEKS                       R2 R1 K2 ["onClick"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["enabled"]
       19 SETTABLEKS                       R2 R1 K3 ["enabled"]
       21 GETUPVAL                         R2 1
       22 LOADK                            R4 K10 ["WidgetHeader"]
       23 LOADK                            R5 K11 ["MatchCaseTooltip"]
       24 NAMECALL                         R2 R2 K12 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K4 ["tooltipText"]
       29 DUPTABLE                         R2 K15 [{[1] = "MatchWholeWord", ["onClick"], ["enabled"], ["tooltipText"], ["tags"] = "data-testid=MatchCaseButton MatchWholeWordIcon"}]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K3 ["enabled"]
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K8 ["disable"]
       37 JUMP                             ; [+3]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K9 ["enable"]
       41 SETTABLEKS                       R3 R2 K2 ["onClick"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K3 ["enabled"]
       46 SETTABLEKS                       R3 R2 K3 ["enabled"]
       48 GETUPVAL                         R3 1
       49 LOADK                            R5 K10 ["WidgetHeader"]
       50 LOADK                            R6 K16 ["MatchWholeWordTooltip"]
       51 NAMECALL                         R3 R3 K12 ["getText"]
       53 CALL                             R3 3 1
       54 SETTABLEKS                       R3 R2 K4 ["tooltipText"]
       56 DUPTABLE                         R3 K19 [{[1] = "RegularExpression", ["onClick"], ["enabled"], ["tooltipText"], ["tags"] = "data-testid=RegexButton RegularExpressionIcon"}]
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R5 R5 K3 ["enabled"]
       60 JUMPIFNOT                        R5 ; [+4]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K8 ["disable"]
       64 JUMP                             ; [+3]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K9 ["enable"]
       68 SETTABLEKS                       R4 R3 K2 ["onClick"]
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R4 R4 K3 ["enabled"]
       73 SETTABLEKS                       R4 R3 K3 ["enabled"]
       75 GETUPVAL                         R4 1
       76 LOADK                            R6 K10 ["WidgetHeader"]
       77 LOADK                            R7 K20 ["RegExTooltip"]
       78 NAMECALL                         R4 R4 K12 ["getText"]
       80 CALL                             R4 3 1
       81 SETTABLEKS                       R4 R3 K4 ["tooltipText"]
       83 SETLIST                          R0 R1 3 [1]
       85 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K5 [{[1], ["text"] = "showFilter", ["icon"], ["keepIconColor"]}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["SearchSettingsDropdown"]
        5 LOADK                            R5 K7 ["Filter"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K0 ["displayText"]
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 LOADK                            R2 K9 ["CheckboxOnIcon"]
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K10 ["CheckboxOffIcon"]
       16 SETTABLEKS                       R2 R1 K3 ["icon"]
       18 GETUPVAL                         R3 1
       19 ORK                              R2 R3 K11 []
       20 SETTABLEKS                       R2 R1 K4 ["keepIconColor"]
       22 DUPTABLE                         R2 K13 [{[1], ["text"] = "showReplace", ["icon"], ["keepIconColor"]}]
       23 GETUPVAL                         R3 0
       24 LOADK                            R5 K6 ["SearchSettingsDropdown"]
       25 LOADK                            R6 K14 ["Replace"]
       26 NAMECALL                         R3 R3 K8 ["getText"]
       28 CALL                             R3 3 1
       29 SETTABLEKS                       R3 R2 K0 ["displayText"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K12 ["showReplace"]
       34 JUMPIFNOT                        R4 ; [+2]
       35 LOADK                            R3 K9 ["CheckboxOnIcon"]
       36 JUMP                             ; [+1]
       37 LOADK                            R3 K10 ["CheckboxOffIcon"]
       38 SETTABLEKS                       R3 R2 K3 ["icon"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K12 ["showReplace"]
       43 ORK                              R3 R4 K11 []
       44 SETTABLEKS                       R3 R2 K4 ["keepIconColor"]
       46 SETLIST                          R0 R1 2 [1]
       48 RETURN                           R0 1

PROTO_5:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["showFilter"] ; [+5]
        2 GETUPVAL                         R1 0
        3 DUPCLOSURE                       R2 K1 [PROTO_5]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K2 ["showReplace"] ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["setShowReplace"]
       11 DUPCLOSURE                       R2 K4 [PROTO_6]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K7 [{"Search", "CaseSensitive", "MatchWholeWords", "Regex", "Replace", "MaxResults", "IncludeFilter"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Search"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K8 ["enabled"]
        7 SETTABLEKS                       R1 R0 K1 ["CaseSensitive"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K8 ["enabled"]
       12 SETTABLEKS                       R1 R0 K2 ["MatchWholeWords"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K8 ["enabled"]
       17 SETTABLEKS                       R1 R0 K3 ["Regex"]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K9 ["showReplace"]
       22 JUMPIFNOT                        R2 ; [+2]
       23 GETUPVAL                         R1 5
       24 JUMP                             ; [+1]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K4 ["Replace"]
       28 GETUPVAL                         R1 6
       29 CALL                             R1 0 1
       30 SETTABLEKS                       R1 R0 K5 ["MaxResults"]
       32 GETUPVAL                         R2 7
       33 JUMPIFNOT                        R2 ; [+2]
       34 GETUPVAL                         R1 8
       35 JUMP                             ; [+1]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K6 ["IncludeFilter"]
       39 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateQuery"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R1 ; [+21]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["enabled"]
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETTABLEKS                       R2 R1 K2 ["isRegexError"]
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R2 3
       15 LOADB                            R3 1
       16 CALL                             R2 1 0
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R2 3
       19 LOADB                            R3 0
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K3 ["resultManager"]
       24 GETTABLEKS                       R2 R2 K4 ["clearResultsState"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 3
       29 LOADB                            R3 0
       30 CALL                             R2 1 0
       31 JUMPIFNOT                        R0 ; [+8]
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K3 ["resultManager"]
       35 GETTABLEKS                       R2 R2 K5 ["setQueryId"]
       37 MOVE                             R3 R0
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K3 ["resultManager"]
       43 GETTABLEKS                       R2 R2 K4 ["clearResultsState"]
       45 CALL                             R2 0 0
       46 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resultManager"]
        3 GETTABLEKS                       R0 R0 K1 ["expandAllFiles"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["disableConfirmationDialog"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disableConfirmationDialog"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["resultManager"]
       11 GETTABLEKS                       R0 R0 K2 ["expandAllFiles"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 2
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["disableConfirmationDialog"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["disableConfirmationDialog"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resultManager"]
        3 GETTABLEKS                       R0 R0 K1 ["expandAllFiles"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["disableConfirmationDialog"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R5 R5 K1 ["useState"]
       13 LOADK                            R6 K2 [""]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R7 R7 K1 ["useState"]
       18 LOADK                            R8 K2 [""]
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R9 R9 K1 ["useState"]
       23 LOADK                            R10 K2 [""]
       24 CALL                             R9 1 2
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R11 R11 K3 ["useToggleState"]
       28 LOADB                            R12 0
       29 CALL                             R11 1 1
       30 GETUPVAL                         R12 5
       31 GETTABLEKS                       R12 R12 K3 ["useToggleState"]
       33 LOADB                            R13 0
       34 CALL                             R12 1 1
       35 GETUPVAL                         R13 5
       36 GETTABLEKS                       R13 R13 K3 ["useToggleState"]
       38 LOADB                            R14 0
       39 CALL                             R13 1 1
       40 GETUPVAL                         R14 4
       41 GETTABLEKS                       R14 R14 K1 ["useState"]
       43 LOADB                            R15 0
       44 CALL                             R14 1 2
       45 GETUPVAL                         R16 4
       46 GETTABLEKS                       R16 R16 K1 ["useState"]
       48 LOADB                            R17 0
       49 CALL                             R16 1 2
       50 GETUPVAL                         R18 4
       51 GETTABLEKS                       R18 R18 K4 ["useEffect"]
       53 NEWCLOSURE                       R19 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R17
       58 NEWTABLE                         R20 0 1
       60 GETTABLEKS                       R21 R0 K5 ["findActivationData"]
       62 SETLIST                          R20 R21 1 [1]
       64 CALL                             R18 2 0
       65 GETUPVAL                         R18 4
       66 GETTABLEKS                       R18 R18 K4 ["useEffect"]
       68 NEWCLOSURE                       R19 P1
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R17
       71 NEWTABLE                         R20 0 1
       73 GETTABLEKS                       R21 R13 K6 ["enabled"]
       75 SETLIST                          R20 R21 1 [1]
       77 CALL                             R18 2 0
       78 GETUPVAL                         R18 4
       79 GETTABLEKS                       R18 R18 K7 ["useMemo"]
       81 DUPCLOSURE                       R19 K8 [PROTO_2]
       82 NEWTABLE                         R20 0 0
       84 CALL                             R18 2 1
       85 GETUPVAL                         R19 4
       86 GETTABLEKS                       R19 R19 K7 ["useMemo"]
       88 NEWCLOSURE                       R20 P3
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R13
       93 NEWTABLE                         R21 0 3
       95 GETTABLEKS                       R22 R11 K6 ["enabled"]
       97 GETTABLEKS                       R23 R12 K6 ["enabled"]
       99 GETTABLEKS                       R24 R13 K6 ["enabled"]
      101 SETLIST                          R21 R22 3 [1]
      103 CALL                             R19 2 1
      104 GETUPVAL                         R20 4
      105 GETTABLEKS                       R20 R20 K7 ["useMemo"]
      107 NEWCLOSURE                       R21 P4
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R22 0 2
      113 MOVE                             R23 R14
      114 GETTABLEKS                       R24 R0 K9 ["showReplace"]
      116 SETLIST                          R22 R23 2 [1]
      118 CALL                             R20 2 1
      119 GETUPVAL                         R21 4
      120 GETTABLEKS                       R21 R21 K10 ["useCallback"]
      122 NEWCLOSURE                       R22 P5
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R0
      125 NEWTABLE                         R23 0 0
      127 CALL                             R21 2 1
      128 NEWCLOSURE                       R22 P6
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R9
      138 GETUPVAL                         R23 6
      139 GETUPVAL                         R24 7
      140 GETTABLEKS                       R24 R24 K11 ["SEARCH_QUERY_DELAY_SECONDS"]
      142 LOADNIL                          R25
      143 NEWCLOSURE                       R26 P7
      144 CAPTURE                          UPVAL U8
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R0
      149 CALL                             R23 3 1
      150 GETUPVAL                         R24 4
      151 GETTABLEKS                       R24 R24 K4 ["useEffect"]
      153 NEWCLOSURE                       R25 P8
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R23
      156 NEWTABLE                         R26 0 5
      158 MOVE                             R27 R9
      159 GETTABLEKS                       R28 R11 K6 ["enabled"]
      161 GETTABLEKS                       R29 R12 K6 ["enabled"]
      163 GETTABLEKS                       R30 R13 K6 ["enabled"]
      165 MOVE                             R31 R14
      166 SETLIST                          R26 R27 5 [1]
      168 CALL                             R24 2 0
      169 GETUPVAL                         R24 4
      170 GETTABLEKS                       R24 R24 K4 ["useEffect"]
      172 NEWCLOSURE                       R25 P9
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R23
      176 NEWTABLE                         R26 0 1
      178 MOVE                             R27 R5
      179 SETLIST                          R26 R27 1 [1]
      181 CALL                             R24 2 0
      182 GETUPVAL                         R24 4
      183 GETTABLEKS                       R24 R24 K4 ["useEffect"]
      185 NEWCLOSURE                       R25 P10
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R0
      188 NEWTABLE                         R26 0 2
      190 MOVE                             R27 R7
      191 GETTABLEKS                       R28 R0 K9 ["showReplace"]
      193 SETLIST                          R26 R27 2 [1]
      195 CALL                             R24 2 0
      196 GETUPVAL                         R24 4
      197 GETTABLEKS                       R24 R24 K10 ["useCallback"]
      199 NEWCLOSURE                       R25 P11
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R23
      202 NEWTABLE                         R26 0 1
      204 MOVE                             R27 R23
      205 SETLIST                          R26 R27 1 [1]
      207 CALL                             R24 2 1
      208 GETUPVAL                         R25 4
      209 GETTABLEKS                       R25 R25 K4 ["useEffect"]
      211 NEWCLOSURE                       R26 P12
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R23
      214 NEWTABLE                         R27 0 1
      216 GETTABLEKS                       R28 R0 K6 ["enabled"]
      218 SETLIST                          R27 R28 1 [1]
      220 CALL                             R25 2 0
      221 GETUPVAL                         R25 9
      222 LOADK                            R26 K12 ["Frame"]
      223 NEWTABLE                         R27 4 0
      225 GETTABLEKS                       R28 R0 K13 ["ZIndex"]
      227 SETTABLEKS                       R28 R27 K13 ["ZIndex"]
      229 LOADN                            R28 1
      230 SETTABLEKS                       R28 R27 K14 ["BackgroundTransparency"]
      232 GETUPVAL                         R28 4
      233 GETTABLEKS                       R28 R28 K15 ["Change"]
      235 GETTABLEKS                       R28 R28 K16 ["AbsoluteSize"]
      237 GETTABLEKS                       R29 R0 K17 ["onSearchHeaderSizeChange"]
      239 SETTABLE                         R29 R27 R28
      240 GETUPVAL                         R28 4
      241 GETTABLEKS                       R28 R28 K18 ["Tag"]
      243 LOADK                            R29 K19 ["FindReplaceAll-SidePadM X-FitY X-Column X-Top data-testid=WidgetHeaderFrame"]
      244 SETTABLE                         R29 R27 R28
      245 DUPTABLE                         R28 K23 [{"SearchHeader", "IncludeFilterHeader", "ReplaceHeader"}]
      246 GETUPVAL                         R29 9
      247 GETUPVAL                         R30 10
      248 DUPTABLE                         R31 K38 [{["LayoutOrder"], ["searchBarLeftIcon"], ["onSearchbarTextChanged"], ["searchBarPlaceholderText"], ["searchBarToggleOptions"], ["settingsDropdownItemData"], ["onSettingsDropdownItemClicked"], ["Visible"] = True, ["dropdownOverlay"], ["hasError"], ["searchText"], ["textBoxRef"], ["onSearchRequested"]}]
      249 MOVE                             R32 R2
      250 CALL                             R32 0 1
      251 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      253 SETTABLEKS                       R18 R31 K25 ["searchBarLeftIcon"]
      255 SETTABLEKS                       R6 R31 K26 ["onSearchbarTextChanged"]
      257 LOADK                            R34 K39 ["SearchSection"]
      258 LOADK                            R35 K40 ["PlaceholderText"]
      259 NAMECALL                         R32 R1 K41 ["getText"]
      261 CALL                             R32 3 1
      262 SETTABLEKS                       R32 R31 K27 ["searchBarPlaceholderText"]
      264 SETTABLEKS                       R19 R31 K28 ["searchBarToggleOptions"]
      266 SETTABLEKS                       R20 R31 K29 ["settingsDropdownItemData"]
      268 SETTABLEKS                       R21 R31 K30 ["onSettingsDropdownItemClicked"]
      270 GETTABLEKS                       R32 R0 K33 ["dropdownOverlay"]
      272 SETTABLEKS                       R32 R31 K33 ["dropdownOverlay"]
      274 SETTABLEKS                       R16 R31 K34 ["hasError"]
      276 GETTABLEKS                       R33 R0 K5 ["findActivationData"]
      278 JUMPIFNOT                        R33 ; [+5]
      279 GETTABLEKS                       R32 R0 K5 ["findActivationData"]
      281 GETTABLEKS                       R32 R32 K35 ["searchText"]
      283 JUMPIF                           R32 ; [+1]
      284 LOADNIL                          R32
      285 SETTABLEKS                       R32 R31 K35 ["searchText"]
      287 GETTABLEKS                       R32 R0 K36 ["textBoxRef"]
      289 SETTABLEKS                       R32 R31 K36 ["textBoxRef"]
      291 SETTABLEKS                       R24 R31 K37 ["onSearchRequested"]
      293 CALL                             R29 2 1
      294 SETTABLEKS                       R29 R28 K20 ["SearchHeader"]
      296 GETUPVAL                         R29 9
      297 GETUPVAL                         R30 10
      298 DUPTABLE                         R31 K42 [{"LayoutOrder", "onSearchbarTextChanged", "searchBarPlaceholderText", "Visible", "dropdownOverlay"}]
      299 MOVE                             R32 R2
      300 CALL                             R32 0 1
      301 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      303 SETTABLEKS                       R10 R31 K26 ["onSearchbarTextChanged"]
      305 LOADK                            R34 K43 ["FilterSection"]
      306 LOADK                            R35 K40 ["PlaceholderText"]
      307 NAMECALL                         R32 R1 K41 ["getText"]
      309 CALL                             R32 3 1
      310 SETTABLEKS                       R32 R31 K27 ["searchBarPlaceholderText"]
      312 SETTABLEKS                       R14 R31 K31 ["Visible"]
      314 GETTABLEKS                       R32 R0 K33 ["dropdownOverlay"]
      316 SETTABLEKS                       R32 R31 K33 ["dropdownOverlay"]
      318 CALL                             R29 2 1
      319 SETTABLEKS                       R29 R28 K21 ["IncludeFilterHeader"]
      321 GETUPVAL                         R29 9
      322 GETUPVAL                         R30 10
      323 DUPTABLE                         R31 K42 [{"LayoutOrder", "onSearchbarTextChanged", "searchBarPlaceholderText", "Visible", "dropdownOverlay"}]
      324 MOVE                             R32 R2
      325 CALL                             R32 0 1
      326 SETTABLEKS                       R32 R31 K24 ["LayoutOrder"]
      328 SETTABLEKS                       R8 R31 K26 ["onSearchbarTextChanged"]
      330 LOADK                            R34 K44 ["SearchSettingsDropdown"]
      331 LOADK                            R35 K45 ["Replace"]
      332 NAMECALL                         R32 R1 K41 ["getText"]
      334 CALL                             R32 3 1
      335 SETTABLEKS                       R32 R31 K27 ["searchBarPlaceholderText"]
      337 GETTABLEKS                       R32 R0 K9 ["showReplace"]
      339 SETTABLEKS                       R32 R31 K31 ["Visible"]
      341 GETTABLEKS                       R32 R0 K33 ["dropdownOverlay"]
      343 SETTABLEKS                       R32 R31 K33 ["dropdownOverlay"]
      345 CALL                             R29 2 1
      346 SETTABLEKS                       R29 R28 K22 ["ReplaceHeader"]
      348 CALL                             R25 3 -1
      349 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Commands"]
       13 GETTABLEKS                       R2 R2 K8 ["FindReplace"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R5 K14 ["Localization"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Packages"]
       45 GETTABLEKS                       R7 R7 K11 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R6 R6 K15 ["createNextOrder"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Packages"]
       54 GETTABLEKS                       R8 R8 K11 ["ReactUtils"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R7 R7 K16 ["useDelayedActionHandler"]
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Components"]
       65 GETTABLEKS                       R9 R9 K18 ["SearchBox"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K6 ["Src"]
       72 GETTABLEKS                       R10 R10 K19 ["Util"]
       74 GETTABLEKS                       R10 R10 K20 ["Constants"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K6 ["Src"]
       81 GETTABLEKS                       R11 R11 K21 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K22 ["useMaxResultsSetting"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K6 ["Src"]
       90 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       92 GETTABLEKS                       R12 R12 K23 ["useLiveSearchingSetting"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K6 ["Src"]
       99 GETTABLEKS                       R13 R13 K24 ["Types"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R2 K25 ["createElement"]
      104 DUPCLOSURE                       R14 K26 [PROTO_15]
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R8
      116 RETURN                           R14 1
